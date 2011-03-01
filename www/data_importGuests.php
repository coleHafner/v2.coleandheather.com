<?
//#!/usr/local/bin/php -q
//ini_set( "include_path", "./:/usr/local/bin/php:/usr/local/www/coleandheather.com/classes" );

require_once ( 'cah_base/Common.php' );
require_once( 'cah/GuestType.php' );
require_once( 'cah/Address.php' );
require_once( 'cah/Guest.php' );

$counter = 0;
$input = array();
$common = new Common();
$paths = $common->getPathInfo();
$file = $paths['local']['absolute'] . "/data/guests.csv";
$fp = fopen( $file, "r" );

//loop through lines
while( !feof( $fp ) )
{
	$line = trim( fgets( $fp ) );
	if( strlen( $line ) > 0 )
	{
		$split = explode( "^", $line );
		$input[$counter]['first_name'] = $split[0];
		$input[$counter]['last_name'] = $split[1];
		$input[$counter]['expected_count'] = $split[2];
		$input[$counter]['street_address'] = $split[3];
		$input[$counter]['city'] = $split[4];
		$input[$counter]['state'] = $split[5];
		$input[$counter]['zip'] = $split[6];
		$input[$counter]['guest_types'] = explode( "|", $split[7] );
		$input[$counter]['sub_guests'] = ( array_key_exists( 8, $split ) ) ? array() : FALSE;
		
		if( is_array( $input[$counter]['sub_guests'] ) )
		{
			
			$sub_guests = explode( "|", $split[8] );
			foreach( $sub_guests as $i => $sub_guest )
			{
				$sub_split = explode( "&", $sub_guest );
				$name_split = explode( "--", $sub_split[0] );
				$type_split = explode( ">", $sub_split[1] );
				
				$input[$counter]['sub_guests'][$i]['name'] = array( 'first_name' => $name_split[0], 'last_name' => $name_split[1] );
				$input[$counter]['sub_guests'][$i]['types'] = array();
				
				foreach( $type_split as $j => $sub_type )
				{
					$input[$counter]['sub_guests'][$i]['types'][$j] = $sub_type;
					
				}//loop through sub types
				
			}//loop through sub guests
			
		}//if sub guests are found
		
		$counter++;
		
	}//if current line is valid
	
}//loop through csv lines

//print_r( $input );exit;

//insert data
if( is_array( $input ) &&
	count( $input ) > 0 )
{
	foreach( $input as $i => $data )
	{
		//insert address
		$a_input = array(
			'street_address' => $data['street_address'],
			'city' => $data['city'],
			'state' => $data['state'],
			'zip' => $data['zip']
		);
		
		$a = insertRecord( $a_input, "Address" );
		
		//insert guest
		$g_input = array(
			'parent_guest_id' => 0,
			'address_id' => $a->m_address_id, 
			'expected_count' => $data['expected_count'],
			'activation_code' => getActivationCode( $data['last_name'] ),
			'first_name' => $data['first_name'],
			'last_name' => $data['last_name'],
			'rsvp_through_site' => 0,
			'is_attending' => 0,
			'actual_count' => 0
		);
		
		$g = insertRecord( $g_input, "Guest" );
		
		//relate guest types to the current guest
		foreach( $data['guest_types'] as $gt_title )
		{
			$is_special = ( substr_count( $gt_title, "*" ) > 0 ) ? "1" : "0";
			$new_title = ( $is_special == "1" ) ? substr( $gt_title, 0, ( strlen( $gt_title ) - 1 ) ) : $gt_title;
			 
			$gt_input = array( 'title' => $new_title, 'is_special' => $is_special );
			$gt = insertRecord( $gt_input, "GuestType" );
			$g->addGuestType( $gt->m_guest_type_id );
		}
		
		//insert sub guests
		foreach( $data['sub_guests'] as $sg_data )
		{
			$sg_input = array(
				'parent_guest_id' => $g->m_guest_id,
				'address_id' => $a->m_address_id,
				'expected_count' => 0,
				'activation_code' => "0",
				'first_name' => $sg_data['name']['first_name'],
				'last_name' => $sg_data['name']['last_name'],
				'rsvp_through_site' => 0,
				'is_attending' => 0,
				'actual_count' => 0
			);
			
			$sg = insertRecord( $sg_input, "Guest" );
			
			foreach( $sg_data['types'] as $sg_title )
			{
				$is_special = ( substr_count( $sg_title, "*" ) > 0 ) ? "1" : "0";
				$new_sg_title = ( $is_special == "1" ) ? substr( $sg_title, 0, ( strlen( $sg_title ) - 1 ) ) : $sg_title;
				
				$sub_gt_input = array( 'title' => $new_sg_title, 'is_special' => $is_special );
				$sub_gt = insertRecord( $sub_gt_input, "GuestType" );
				$sg->addGuestType( $sub_gt->m_guest_type_id );
			}
		}
	}
}

/**
 * Grabs duplicate query.
 * @param	Array		$data				current data record
 * @param	String		$record_type		type of record to check
 */
function getDuplicateQuery( $data, $record_type )
{
	switch( $record_type )
	{
		case "Guest":
			$return = "
			SELECT guest_id
			FROM cah_Guests
			WHERE LOWER( first_name ) = '" . $data['first_name'] . "' AND
			LOWER( last_name ) = '" . $data['last_name'] . "'";
			break;
			
		case "Address":
			$return = "
			SELECT address_id
			FROM cah_Addresses
			WHERE LOWER( street_address ) = '" . strtolower( trim( $data['street_address'] ) ) . "' AND
			LOWER( city ) = '" . strtolower( trim ( $data['city'] ) ) . "' AND
			LOWER( state ) = '" . strtolower( trim( $data['state'] ) ) . "' AND
			LOWER( zip ) = '" . strtolower( trim( $data['zip'] ) ) . "'";
			break;
			
		case "GuestType":
			$return = "
			SELECT guest_type_id
			FROM cah_GuestTypes
			WHERE LOWER( title ) = '" . $data['title'] . "'";
			break;
	}
	
	return $return;
	
}//getDuplicateQuery()
 
/**
 * Checks duplicate record.
 * @param	String		$record_type		type of record to check
 * @param	Array		$data				current data record
 */
function checkDuplicate( $sql )
{
	global $common;
	
	$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
			
	if( $common->m_db->numRows( $result ) == 0 )
	{
		$return = 0;
	}
	else 
	{
		$row = $common->m_db->fetchRow( $result );
		$return = $row[0];	
	}
	
	return $return;
	
}//checkDuplicate()

/**
 * Inserts a record.
 * @param	Array		$data	current data record
 * @param	String		$record_type		type of record to check
 */
function insertRecord( $data, $record_type )
{
	$sql = getDuplicateQuery( $data, $record_type );
	$record_id = checkDuplicate( $sql );
	$class_name = $record_type;
		
	if( $record_id == 0 )
	{
		$return = new $class_name( 0 );
		$add_result = $return->add( $data );
		
		//check valid add
		if( !is_numeric( $add_result ) )
		{
			throw new exception( "Error: Add failed. Class '" . $class_name . "' said: '" . $add_result . "'" );	
		}
		
		$return->setMemberVars( TRUE );
		
	}
	else 
	{
		$return = new $class_name( $record_id, TRUE );	
	}
	
	return $return;
	
}//insertRecord()

function getActivationCode( $salt )
{
	global $common;
	$is_unique = FALSE;
	
	while( !$is_unique )
	{
		$raw =  md5 ( $salt . date( "F d\, Y H:i:s" ) );
		$return = strtolower( substr( $raw, 0, 10 ) );
		
		$sql = "SELECT count(*) FROM cah_Guests WHERE LOWER( activation_code ) = '" . $return . "'";
		$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = $common->m_db->fetchRow( $result );
		$is_unique = ( $row[0] == 0 ) ? TRUE : FALSE;
	}
	
	return $return;
	
}//getActivationCode()

?>