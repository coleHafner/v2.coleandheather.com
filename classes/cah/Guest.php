<?
/**
 * A class to handle a File record.
 * @since	20110218, hafner
 */

require_once( "cah_base/Common.php" );
require_once( "cah/GuestType.php" );

class Guest
{
	/**
	 * Instance of the Common class.
	 * @var	Common
	 */
	protected $m_common;
	
	/**
	 * PK of the Guest Record.
	 * @var	int
	 */
	protected $m_guest_id;
	
	/**
	 * Id of this guest's parent
	 * @var	int
	 */
	protected $m_parent_guest_id;
	
	/**
	 * Id of address associated with this guest
	 * @var	int
	 */
	protected $m_address_id;
	
	/**
	 * First name of this guest.
	 * @var	string
	 */
	protected $m_first_name;
	
	/**
	 * 12 digit psuedo random alphanumeric registration code.
	 * @var	string
	 */
	protected $m_activation_code;
	
	/**
	 * Initial timestamp when the guest rsvped.
	 * @var	string
	 */
	protected $m_initial_timestamp;
	
	/**
	 * Last time the guest updated their rsvp status.
	 * @var	string
	 */
	protected $m_update_timestamp;
	
	/**
	 * Initial party count predicted for this guest ( current guest included ).
	 * @var	int
	 */
	protected $m_expected_count;
	
	/**
	 * Actual party count for this guest ( current guest included ).
	 * @var	int
	 */
	protected $m_actual_count;
	
	/**
	 * Whether or not this guest used the site to rsvp. Only sets on initial count.
	 * @var	boolean
	 */
	protected $m_rsvp_through_site;
	
	/**
	 * If the guest is attending.
	 * @var	boolean
	 */
	protected $m_is_attending;
	
	/**
	 * If the guest was in the initial guest list, this value will be FALSE, TRUE otherwise.
	 * @var	boolean
	 */
	protected $m_is_new;
	
	/**
	 * Active flag.
	 * @var	boolean
	 */
	protected $m_active;
	
	/**
	 * Array of linked objects.
	 * @var	array
	 */
	protected $m_linked_objects;
	
	/**
	 * Constructs the object.
	 * @since	20110218, hafner
	 * @return	State
	 * @param	int				$guest_id			id of the current record
	 */
	public function __construct( $guest_id, $objects = FALSE )
	{
		$this->m_common = new Common();
		$this->m_guest_id = ( $guest_id > 0 ) ? $guest_id : 0;
		$this->setMemberVars( $objects );
	}//constructor
	
	/**
	 * Sets the member variables for this class.
	 * Returns TRUE, always.
	 * @since	20110218, hafner
	 * @return	boolean
	 */
	public function setMemberVars( $objects )
	{
		//get member vars
		$sql = "
		SELECT 
			guest_id,
			parent_guest_id,
			address_id,
			first_name,
			last_name,
			activation_code,
			initial_timestamp,
			update_timestamp,
			expected_count,
			actual_count,
			rsvp_through_site,
			is_attending,
			is_new,
			active
		FROM 
			cah_Guests
		WHERE 
			guest_id = " . $this->m_guest_id;
		
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = ( $this->m_common->m_db->numRows( $result ) > 0 ) ? $this->m_common->m_db->fetchAssoc( $result ) : array();
		
		//set member vars
		$this->m_guest_id = $row['guest_id'];
		$this->m_parent_guest_id = $row['parent_guest_id'];
		$this->m_address_id = $row['address_id'];
		$this->m_first_name = stripcslashes( $row['first_name'] );
		$this->m_last_name = stripslashes( $row['last_name'] );
		$this->m_activation_code = $row['activation_code'];
		$this->m_initial_timestamp = $row['initial_timestamp'];
		$this->m_update_timestamp = $row['update_timestamp'];
		$this->m_expected_count = $row['expected_count'];
		$this->m_actual_count = $row['actual_count'];
		$this->m_rsvp_through_site = $this->m_common->m_db->fixBoolean( $row['rsvp_through_site'] );
		$this->m_is_attending = $this->m_common->m_db->fixBoolean( $row['is_attending'] );
		$this->m_is_new = $this->m_common->m_db->fixBoolean( $row['is_new'] );
		$this->m_active = $this->m_common->m_db->fixBoolean( $row['active'] );
		$this->m_linked_objects = ( $objects ) ? $this->setLinkedObjects() : array(); 
		
		return TRUE;
		
	}//setMemberVars()
	
	/**
	* Get an array of data suitable to use in modify
	* @since 	20110218, hafner
	* @return 	array
	* @param 	boolean 		$fix_clob		whether or not to file member variables of CLOB type
	*/
	public function getDataArray( $fix_clob = TRUE ) 
	{
		return array(
			'guest_id' => $this->m_guest_id,
			'parent_guest_id' => $this->m_parent_guest_id,
			'address_id' => $this->m_address_id,
			'first_name' => $this->m_first_name,
			'last_name' => $this->m_last_name,
			'activation_code' => $this->m_activation_code,
			'initial_timestamp' => $this->m_initial_timestamp,
			'update_timestamp' => $this->m_update_timestamp,
			'expected_count' => $this->m_expected_count,
			'actual_count' => $this->m_actual_count,
			'rsvp_through_site' => $this->m_rsvp_through_site,
			'is_attending' => $this->m_is_attending,
			'is_new' => $this->m_is_new,
			'active' => $this->m_active
		);
		
	}//getDataArray()
	
	/**
	* Save with the current values of the instance variables
	* This is a wrapper to modify() to ease some methods of coding
	* @since 	20110218, hafner
	* @return	mixed
	*/
	public function save()
	{
		$input = $this->getDataArray();
		return $this->modify( $input, FALSE );
	}//save()
	
	/**
	 * Adds a new record.
	 * Returns ( int ) Id of record if form data is valid, ( string ) form error otherwise.
	 * @since	20110218,hafner
	 * @return	mixed
	 * @param	array				$input				array of input data
	 */
	public function add( $input )
	{
		$form_result = $this->checkInput( $input, TRUE );
		
		if( !$form_result )
		{
			//only set upload_timestamp on add
			$req_fields = array( 
				'parent_guest_id' => 0,
				'address_id' => 0,
				'expected_count' => $input['expected_count']
			);
			
			$input['guest_id'] = $this->m_common->m_db->insertBlank( 'cah_Guests', 'guest_id', $req_fields );
				
			//update w/default values
			$sql = "
			UPDATE cah_Guests 
			SET initial_timestamp = '" . strtotime( "now" ) . "', 
				update_timestamp = '" . strtotime( "now" ) . "',
				activation_code = '" . $input['activation_code'] . "'
			WHERE guest_id = " . $input['guest_id'];
			
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			$this->m_guest_id = $input['guest_id'];
			
			$return = $this->m_guest_id;
			$this->modify( $input, TRUE );
		}
		else
		{
			$return = $form_result;
		}
		
		return $return;
		
	}//add()
	
	/**
	 * Modifies a record.
	 * Returns ( int ) Id of record if form data is valid, ( string ) form error otherwise. 
	 * @since	20110218, hafner
	 * @return	mixed
	 * @param	array				$input				array of input data
	 * @param	boolean				$from_add			if we are adding a new record, from_add = TRUE, FALSE otherwise.
	 */
	public function modify( $input, $from_add )
	{
		if( !$from_add )
		{
			$this->checkInput( $input, FALSE );
		}

		if( !$this->m_form->m_error )
		{
			$sql = "
			UPDATE 
				cah_Guests
			SET 
				address_id = " . $input['address_id'] . ",
				parent_guest_id = " . $input['parent_guest_id'] . ",
				first_name = '" . $this->m_common->m_db->escapeString( $input['first_name'] ) . "',
				last_name = '" .  $this->m_common->m_db->escapeString( $input['last_name'] ) . "',
				actual_count = " . $input['actual_count'] . ",
				rsvp_through_site = " .  $input['rsvp_through_site'] . ",
				is_attending = " . $input['is_attending'] . "
			WHERE 
				guest_id = " . $this->m_guest_id;
			
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			
			$return = $this->m_guest_id;
		}
		else
		{
			$return = $this->m_form->m_error;
		}
		
		return $return;
		
	}//modify()
	
	/**
	 * Modifies a record.
	 * Returns TRUE, always. 
	 * @since	20110218, hafner
	 * @return	mixed
	 * @param	array				$input				array of input data 
	 */
	public function delete( $deactivate = TRUE )
	{
		if( $deactivate )
		{
			$sql = "
			UPDATE cah_Guests
			SET active = 0,
				is_attending = 0
			WHERE guest_id = " . $this->m_guest_id;
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		}
		else
		{
			$query_string = "
			DELETE
			FROM cah_GuestToGuestType
			WHERE guest_id = " . $this->m_guest_id . "
			
			--end-sql--
			
			DELETE 
			FROM cah_Guests 
			WHERE guest_id = " . $this->m_guest_id;
			
			$sql_array = explode( "--end-sql--", $query_string );
			
			foreach( $sql_array as $sql )
			{
				$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			}	
		}
		
		return $this->m_guest_id;
		
	}//delete()
	
	/**
	 * Validates the form input for creating/modifying a new File record.
	 * Returns FALSE on success, error message string otherwise.
	 * @since	20110218, hafner
	 * @return	mixed
	 * @param	array			$input			array of data
	 * @param	boolean			$is_addition	if we are adding a new record, is_addition = TRUE, FALSE otherwise.			 
	 */
	public function checkInput( $input, $is_addition )
	{
		$return = FALSE;
		
		if( $is_addition )
		{
			if( !array_key_exists( "expected_count", $input ) ||
				strlen( $input['expected_count'] ) == 0 )
			{
				$return = "You must provide an expected count.";
			}
			
			if( !$return )
			{
				if( !array_key_exists( "activation_code", $input ) ||
				strlen( $input['activation_code'] ) == 0 )
				{
					$return = "You must provide an activation code.";
				}
			}
		}
		
		if( !$return )
		{
			if( !is_numeric( $input['parent_guest_id'] ) )
			{
				$return = "You must provide an parent guest id.";
			}	
		}
		
		if( !$return )
		{
			if( !is_numeric( $input['address_id'] ) )
			{
				$return = "You must provide an address id.";
			}	
		}
		
		if( !$return )
		{
			if( strlen( trim( $input['first_name'] ) ) == 0 )
			{
				$return = "You must provide a first name.";
			}	
		}
		
		if( !$return )
		{
			if( strlen( trim( $input['last_name'] ) ) == 0 )
			{
				$return = "You must provide a last name.";
			}	
		}
		
		if( !$return )
		{
			if( strlen( trim( $input['actual_count'] ) ) == 0 )
			{
				$return = "You must provide an actual count.";
			}	
		}
		
		if( !$return )
		{
			if( !array_key_exists( 'rsvp_through_site', $input ) )
			{
				$return = "You must provide RSVP through site.";
			}	
		}
		
		if( !$return )
		{
			if( !array_key_exists( 'is_attending', $input ) )
			{
				$return = "You must provide 'is attending'.";
			}	
		}
		
		return $return;
		
	}//checkInput()
	
	public function setLinkedObjects()
	{
		return array( 'guest_types' => $this->getGuestTypes(), 'sub_guests' => $this->getSubGuests() );
		
	}//setLinkedObjects()
	
	/**
	* Gets the guest types for this guest.
	* @author	20110220, Hafner
	* @return	array
	*/
	public function getGuestTypes()
	{
		$return = array();
		
		if( $this->m_guest_id > 0 )
		{
			$sql = "SELECT guest_type_id FROM cah_GuestToGuestType WHERE guest_id = " . $this->m_guest_id;
			$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			while( $row = $this->m_common->m_db->fetchRow( $result ) )
			{
				$return[] = new GuestType( $row[0], FALSE );
			}
		}

		return $return;
		
	}//getGuestTypes()
	
	/**
	* Gets the sub guests for this guest.
	* @author	20110220, Hafner
	* @return	array
	*/
	public function getSubGuests()
	{
		$return = array();
		
		if( $this->m_guest_id > 0 )
		{
			$sql = "SELECT guest_id FROM cah_Guests WHERE parent_guest_id = " . $this->m_guest_id . " AND active = 1";
			$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			while( $row = $this->m_common->m_db->fetchRow( $result ) )
			{
				$return[] = new Guest( $row[0], FALSE );
			}
		}

		return $return;
			
	}//getSubGuests()
	
	/**
	* Adds a guest type to this guest. always returns true.
	* @author	20110220, Hafner
	* @return	boolean
	* @param	array		$vars		array of variables for the html
	*/
	public function addGuestType( $guest_type_id )
	{
		//validate guest type id
		if( !is_numeric( $guest_type_id ) ||
			$guest_type_id == 0 )
		{
			throw new Exception( "Error: Guest type id must be numeric and > 0. Passed parameter of '" . $guest_type_id . "' is invalid." );
		}
		
		//check duplicate
		$sql = "SELECT count(*) FROM cah_GuestToGuestType WHERE guest_id = " . $this->m_guest_id . " AND guest_type_id = " . $guest_type_id;
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = $this->m_common->m_db->fetchRow( $result );
		
		//make relationship
		if( $row[0] == 0 )
		{
			$sql = "INSERT INTO cah_GuestToGuestType( guest_id, guest_type_id ) VALUES( " . $this->m_guest_id . ", " . $guest_type_id . " )";
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		}
		
		return TRUE;
		
	}//addGuestType()
	
	/**
	* Validates an activation code.
	* @author	20110220, Hafner
	* @return	mixed
	* @param	string		$activation_code		activation code
	*/
	public static function validateActivationCode( $activation_code )
	{
		$common = new Common();
		$return = "You must provide an activation code.";
		
		if( strlen( $activation_code ) > 0 )
		{
			$sql = "SELECT count(*) FROM cah_Guests WHERE LOWER( activation_code ) = '" . strtolower( $activation_code ) . "'";
			$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
			$row = $common->m_db->fetchRow( $result );
			$return = ( $row[0] == 0 ) ? "That activation code is not valid." : TRUE; 
		}
		
		return $return;
		
	}//validateActivationCode()
	
	public static function getGuestForActivationCode( $activation_code )
	{
		if( strlen( trim( $activation_code ) ) != 10 )
		{
			throw new Exception( "Error: Activation code '" . $activation_code . "' is invalid. It must be exactly 10 characters long." );
		}
		
		$common = new Common();
		
		$sql = "SELECT guest_id FROM cah_Guests WHERE LOWER( activation_code ) = '" . strtolower( $activation_code ) . "'";
		$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = $common->m_db->fetchRow( $result );
		
		return $row[0];
		
	}//getGuestForActivationCode()
	
	public static function reactivateGuest( $first_name, $last_name, $parent_guest_id )
	{
		$common = new Common();
		
		$sql = "
		UPDATE cah_Guests
		SET active = 1, 
			is_attending = 1,
			update_timestamp = '" . strtotime( "now" ) . "'
		WHERE LOWER( first_name ) = '" . strtolower( trim( $first_name ) ) . "' AND
		LOWER( last_name ) = '" . strtolower( trim( $last_name ) ) . "' AND
		parent_guest_id = " . $parent_guest_id;
		
		$common->m_db->query( $sql, __FILE__, __LINE__ );
		
		return TRUE;
		
	}//reactivateGuest()
	
	public static function getAllParents( $name_constraint )
	{
		$counter = 1;
		$constraint = "";
		$return = array();
		$common = new Common();
		
		//compile consraint
		if( is_array( $name_constraint ) &&
			count( $name_constraint ) > 0 )
		{
			$count = count( $name_constraint );
			$constraint .= " 
			AND ( 
			";
			
			foreach( $name_constraint as $i => $name )
			{
				$name_split = explode( " ", $name );
				$f_name = strtolower( trim( $name_split[0] ) );
				$l_name = strtolower( trim( $name_split[1] ) );
				$delim = ( $i == ( $count - 1 ) ) ? "" : " OR ";
				
				$constraint .= "
				LOWER( first_name ) = '" . $f_name . "' AND LOWER( last_name ) = '" . $l_name . "' " . $delim . "
				";
			}
			
			$constraint .= "
			)
			";
		}
		
		$sql = "
		SELECT first_name, last_name, activation_code
		FROM cah_Guests
		WHERE guest_id > 0 AND
		parent_guest_id = 0
		" . $constraint . "
		ORDER BY last_name, first_name ASC";
		
		$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
		
		while( $row = $common->m_db->fetchAssoc( $result ) )
		{
			$return[$counter] = $row;
			$counter++;
		}
		
		return $return;
		
	}//getAllParents()
	
	public static function getStats()
	{
		$return = array();
		$common = new Common();
		
		$queries = array(
			'new' => "SELECT count(*) FROM cah_Guests WHERE is_new = 1",
			'total' => "SELECT count(*) FROM cah_Guests WHERE guest_id > 0 AND is_new = 0",
			'replied' => "SELECT count(*) FROM cah_Guests WHERE guest_id > 0 AND update_timestamp IS NOT NULL AND is_new = 0",
			'attending' => "SELECT count(*) FROM cah_Guests WHERE guest_id > 0 AND is_attending = 1 AND update_timestamp IS NOT NULL",
			'not_attending' => "SELECT count(*) FROM cah_Guests WHERE guest_id > 0 AND is_attending = 0 AND update_timestamp IS NOT NULL"
		);
		
		foreach( $queries as $k => $sql )
		{
			$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
			$row = $common->m_db->fetchRow( $result );
			$return[$k] = $row[0];
		}
		
		return $return;
		
	}//getStats()
	
	public static function getGuestLists()
	{
		$return = array();
		$common = new Common();
		
		$queries = array(
			'new' => "SELECT guest_id FROM cah_Guests WHERE is_new = 1 ORDER BY last_name, first_name ASC",
			'replied' => "SELECT guest_id FROM cah_Guests WHERE guest_id > 0 AND update_timestamp IS NOT NULL  ORDER BY last_name, first_name ASC",
			'most_recent' => "SELECT guest_id FROM cah_Guests WHERE guest_id > 0 AND update_timestamp IS NOT NULL ORDER BY update_timestamp DESC LIMIT 10",
			'attending' => "SELECT guest_id FROM cah_Guests WHERE guest_id > 0 AND is_attending = 1 AND update_timestamp IS NOT NULL  ORDER BY last_name, first_name ASC",
			'not_attending' => "SELECT guest_id FROM cah_Guests WHERE guest_id > 0 AND is_attending = 0 AND update_timestamp IS NOT NULL  ORDER BY last_name, first_name ASC"
		);
		
		foreach( $queries as $k => $sql )
		{
			$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
			
			if( $common->m_db->numRows( $result ) > 0 )
			{
				while( $row = $common->m_db->fetchRow( $result ) )
				{
					$return[$k][] = new Guest( $row[0], FALSE );
				}
			}
			else 
			{
				$return[$k] = array();
			}
		}
		
		return $return;
		
	}//getStats()
	
	public function setIsNew( $is_new = TRUE )
	{
		$is_new = ( $is_new === TRUE ) ? "1" : "0";
		
		$sql = "
		UPDATE cah_Guests
		SET is_new = " . $is_new . "
		WHERE guest_id = " . $this->m_guest_id;
		
		$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		
		return TRUE;
		
	}//setIsNew()
	
	/**
	 * Updates a group of guests.
	 * @param 	string		 	$rsvp_answer			1 or 0 whether the user chose to RSVP
	 * @param 	string		 	$guest_list				array of guest ids
	 * @param 	string		 	$rsvp_through_site		1 or 0. If the RSVP was sent in the mail, the admin logs in a updates their status. RSVP through site = 0, if user updates his or herself through the interface RSVP through site = 1
	 */
	public function updateGroupRsvpStatus( $rsvp_answer, $guest_list = array(), $rsvp_through_site )
	{
		
		//set vars
		$update_timestamp = strtotime( "now" );
		$actual_count = ( $rsvp_answer == "1" ) ? count( $guest_list ) : 0;
		
		//update parent guest
		$is_attending = ( in_array( $this->m_guest_id, $guest_list) ) ? "1" : "0";
		$this->updateIndividualRsvpStatus( &$this, $is_attending, $update_timestamp, $actual_count, $rsvp_through_site );
		
		//update sub guests
		foreach( $this->m_linked_objects['sub_guests'] as $sub_g )
		{
			$is_attending = ( in_array( $sub_g->m_guest_id, $guest_list) ) ? "1" : "0";
			$this->updateIndividualRsvpStatus( &$sub_g, $is_attending, $update_timestamp, $actual_count, $rsvp_through_site );
		}
		
		return TRUE;
		
	}//updateRsvpStatus()
	
	public function updateIndividualRsvpStatus( &$guest, $is_attending, $update_timestamp, $actual_count, $rsvp_through_site )
	{
		
		if( $guest->m_parent_guest_id == 0 )
		{
			$actual_count_constraint = "
			actual_count = " . $actual_count . ",";
		}
		
		$sql = "
		UPDATE cah_Guests
		SET is_attending = " . $is_attending . ",
			update_timestamp = '" . $update_timestamp . "',
			" . $actual_count_constraint . "
			rsvp_through_site = " . $rsvp_through_site . "
		WHERE guest_id = " . $guest->m_guest_id;
		
		$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		return TRUE;
		
	}//updateIndividualRsvpStatus()
	
	/**
	* Determines if the guest is of of the types defined
	* @author	20110222, Hafner
	* @return	boolean
	* @param	array		$types		array of guest type titles
	*/
	public function guestHasAnyType( $types )
	{
		$return = FALSE;
		$num_types = count( $types );
		
		if( $num_types > 0 )
		{
			$guest_type_titles = Database::arrayToConstraintString( $types );
			
			$sql = "
			SELECT count(*) 
			FROM cah_GuestToGuestType g2gt
			JOIN cah_GuestTypes gt ON
				gt.guest_type_id = g2gt.guest_type_id AND
				LOWER( gt.title ) IN ( " . $guest_type_titles . " )  
			WHERE g2gt.guest_id = " . $this->m_guest_id;
			
			$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			$row = $this->m_common->m_db->fetchRow( $result );
			$return = ( $row[0] > 0 ) ? TRUE : FALSE;
		}
		
		return $return;
			
	}//guestHasAnyType()
	
	/**
	* Determines if the guest has a type that has been deemed 'special'
	* @author	20110223, Hafner
	* @return	boolean
	*/
	public function guestHasSpecialType( $guest_id = 0 )
	{
		$return = FALSE;
		$chosen_guest_id = ( $guest_id > 0 ) ? $guest_id : $this->m_guest_id;
		
		$sql = "
		SELECT count(*) 
		FROM cah_GuestToGuestType g2gt
		JOIN cah_GuestTypes gt ON
			gt.guest_type_id = g2gt.guest_type_id AND
			gt.is_special = 1  
		WHERE g2gt.guest_id = " . $chosen_guest_id;
		
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = $this->m_common->m_db->fetchRow( $result );
		$return = ( $row[0] > 0 ) ? TRUE : FALSE;
		
		return $return;
			
	}//guestHasSpecialType()
	
	/**
	* Determines badge type for this guest.
	* Returns a GuestType object.
	* @author	20110223, Hafner
	* @return	GuestType
	*/
	public function getBadgeType()
	{
		$return = FALSE;
		$found_types = FALSE;
		
		$sql = "
		SELECT 
			gt.guest_type_id as guest_type_id, 
			LOWER( gt.title ) as title
		FROM cah_GuestToGuestType g2gt
		JOIN cah_GuestTypes gt ON
			gt.guest_type_id = g2gt.guest_type_id AND
			gt.is_special = 1  
		WHERE g2gt.guest_id = " . $this->m_guest_id;
		
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		
		while( $row = $this->m_common->m_db->fetchAssoc( $result ) )
		{
			$found_types[$row['title']] = $row['guest_type_id'];
		}
		
		if( is_array( $found_types ) )
		{
			if( count( $found_types ) > 1 )
			{
				if( array_key_exists( "best man", $found_types ) )
				{
					$selected_id = $found_types['best man'];
				}	
				else if( array_key_exists( "maid of honor", $found_types ) )
				{
					$selected_id = $found_types['maid of honor'];	
				}
			}
			else 
			{
				reset( $found_types );
				$selected_id = current( $found_types );
			}
			
			$return = new GuestType( $selected_id );
			
		}//if any types were found
		
		return $return;
		
	}//getBadgeType()
	
	/**
	* Returns HTML
	* @author	20110220, Hafner
	* @return	array
	* @param	string		$cmd		determines which HTML snippet to return
	* @param	array		$vars		array of variables for the html
	*/
	public static function getHtml( $cmd, $vars = array() )
	{
		$common = new Common();
		
		switch( strtolower( $cmd ) )
		{
			case "get-view-form":
				break;
			
			case "get-add-form":
				
				$guest = $vars['active_record'];
				
				$html = '
				<div class="color_tan_bg border_solid_tan" style="width:100%;">
				
					<div class="padder_10">
						<div class="header_text_sub color_black">
							Add New Guest
						</div>
						
						<div class="results_div center" id="results_div"></div>
						
						<form id="guest_add_form">
							<div class="text_input_holder">
								<span class="text_input_tag color_black">
									First Name:
									<span class="color_red">*</span>
								</span>
								<input type="text" name="first_name" class="text_input rounded_corners_small border_solid_grey text_input_long  header_text_sub color_black" />
							</div>
							
							<div class="text_input_holder">
								<span class="text_input_tag color_black">
									Last Name:
									<span class="color_red">*</span>
								</span>
								<input type="text" name="last_name" class="text_input rounded_corners_small border_solid_grey text_input_long header_text_sub color_black" />
							</div>
							
							<input type="hidden" name="parent_guest_id" value="' . $guest->m_guest_id . '" />
							<input type="hidden" name="address_id" value="' . $guest->m_address_id . '" />
							<input type="hidden" name="rsvp_through_site" value="1" />
							<input type="hidden" name="activation_code" value="0" />
							<input type="hidden" name="expected_count" value="0" />
							<input type="hidden" name="is_attending" value="1" />
							<input type="hidden" name="actual_count" value="0" />
						</form>
						
						<div class="guest_button_holder">
							<table>
								<tr>
									<td style="text-align:left;">
										<a href="#" class="rsvp button rounded_corners color_brown_bg center" process="add-guest" guest_id="' . $guest->m_guest_id . '" >
											<span class="header_text_sub color_white">
												Add Guest
											</span>
										</a>
									</td>
									<td style="width:10px;">
										&nbsp;
									</td>
									<td style="vertical-align:middle;text-align:left;">
										<a href="#" class="rsvp" process="hide-add-guest" guest_id="' . $guest->m_guest_id . '">
											Cancel
										</a>
									</td>
								</tr>
							</table>
						</div>
						
						<div class="guest_required_holder color_red center">
							* Required Field
						</div>
						
						<div class="clear"></div>
					</div>
						
				</div>
				';					
				$return = array( 'html' => $html );
				break;
				
			case "get-delete-form":
				break;
							
			case "get-section-selector":
				break;
				
			default:
				throw new Exception( "Error: Command '" . $cmd . "' is invalid." );
				break;
		}
		
		return $return;
		
	}//getHtml()
	
	/**
	* Get a member variable's value
	* @author	Version 20110218, hafner
	* @return	mixed
	* @param	string		$var_name		Variable name to get
	*/
	public function __get( $var_name )
	{
		$exclusions = array();

		if( !in_array( $var_name, $exclusions ) )
		{
			return $this->$var_name;
		}
		else
		{
			throw new exception( "Error: Access to member variable '" . $var_name . "' for class '" . get_class( $this ) . "' is denied" );
		}
	}//__get()
	
	/**
	* Set a member variable's value
	* @since	20110218, hafner
	* @return	mixed
	* @param	string		$var_name		Variable name to set
	* @param	string		$var_value		Value to set
	*/
	public function __set( $var_name, $var_value )
	{
		$exclusions = array( 'm_guest_id' );

		if( !in_array( $var_name, $exclusions ) )
		{
			$this->$var_name = $var_value;
			return TRUE;
		}
		else
		{
			throw new exception( "Error: Access to member variable '" . $var_name . "' for class '" . get_class( $this ) . "' is denied" );
		}
	}//__set()
	
}//class Guest
?>