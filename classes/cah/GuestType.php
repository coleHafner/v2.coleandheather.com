<?
/**
 * A class to handle a File record.
 * @since	20110218, hafner
 */

require_once( "cah_base/Common.php" );

class GuestType
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
	protected $m_guest_type_id;
	
	/**
	 * Title of the guest type.
	 * @var	String
	 */
	protected $m_title;
	
	/**
	 * If the guest type is special.
	 * @var	boolean
	 */
	protected $m_is_special;
	
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
	 * @param	int				$guest_type_id			id of the current record
	 */
	public function __construct( $guest_type_id, $objects = FALSE )
	{
		$this->m_common = new Common();
		$this->m_guest_type_id = ( $guest_type_id > 0 ) ? $guest_type_id : 0;
		$this->setMemberVars( $guest_type_id, $objects );
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
		SELECT guest_type_id, title, is_special, active
		FROM cah_GuestTypes
		WHERE guest_type_id = " . $this->m_guest_type_id;
		
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = ( $this->m_common->m_db->numRows( $result ) > 0 ) ? $this->m_common->m_db->fetchAssoc( $result ) : array();
		
		//set member vars
		$this->m_guest_type_id = $row['guest_type_id'];
		$this->m_title = stripslashes( $row['title'] );
		$this->m_is_special = $this->m_common->m_db->fixBoolean( $row['is_special'] );
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
			'guest_type_id' => $this->m_guest_type_id,
			'title' => $this->m_title,
			'is_special' => $this->m_is_special,
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
		$this->checkInput( $input, TRUE );
		
		if( !$this->m_form->m_error )
		{
			$input['guest_type_id'] = $this->m_common->m_db->insertBlank( 'cah_GuestTypes', 'guest_type_id' );
			$this->m_guest_type_id = $input['guest_type_id'];
			$return = $this->m_guest_type_id;
			$this->modify( $input, TRUE );
		}
		else
		{
			$return = $this->m_form->m_error;
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
			UPDATE cah_GuestTypes
			SET title = '" . addslashes( $input['title'] ) . "' ,
				is_special = " . $input['is_special'] . "
			WHERE guest_type_id = " . $this->m_guest_type_id;
				
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			$return = $this->m_guest_type_id;
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
			UPDATE cah_GuestTypes
			SET active = 0
			WHERE guest_type_id = " . $this->m_guest_type_id;
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		}
		else
		{
			$query_string = "
			DELETE
			FROM cah_GuestToGuestType
			WHERE guest_type_id = " . $this->m_guest_type_id . "
			
			--end-sql--
			
			DELETE 
			FROM cah_GuestTypes
			WHERE guest_type_id = " . $this->m_guest_type_id;
			
			$sql_array = explode( "--end-sql--", $query_string );
			
			foreach( $sql_array as $sql )
			{
				$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			}	
		}
		
		return $this->m_guest_type_id;
		
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
		
		if( !array_key_exists( 'title', $input ) ||
			strlen( trim( $input['title'] ) ) == 0 )
		{
			$return = "You must provide a title.";
		}
		
		if( !$return )
		{
			if( !array_key_exists( 'is_special', $input ) ||
				strlen( trim( $input['is_special'] ) ) == 0 )
			{
				$return = "You must provide define 'is special'.";
			}
		}
		
		return $return;
		
	}//checkInput()
	
	public function setLinkedObjects()
	{
		return array();
		
	}//setLinkedObjects()
	
	
	/**
	* Toggles the 'is_special' field.
	* @author	20110220, Hafner
	* @return	array
	* @param	string		$is_special	either 1 or 0
	*/
	public function toggleSpecial( $is_special )
	{
		if( !in_array( $is_special, array( "0", "1" ) ) )
		{
			throw new Exception( "Error: 'is_special' parameter must be either 1 or 0. The passed value of '" . $is_special . "' is invalid." );	
		} 
		
		$sql = "
		UPDATE common_GuestTypes
		SET is_special = " . $is_special . "
		WHERE guest_type_id = " . $this->m_guest_type_id;
		
		$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		
		return TRUE;
		
	}//toggleSpecial()
	
	/**
	* Returns HTML
	* @author	20100908, Hafner
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
			
			case "get-edit-form":
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
		$exclusions = array( 'm_guest_type_id' );

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
	
}//class GuestType
?>