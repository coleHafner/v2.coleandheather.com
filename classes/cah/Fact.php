<?
/**
 * A class to handle a File record.
 * @since	20110218, hafner
 */

require_once( "cah_base/Common.php" );
require_once( "cah_base/User.php" );

class Fact
{
	/**
	 * Instance of the Common class.
	 * @var	Common
	 */
	protected $m_common;
	
	/**
	 * PK of the current record.
	 * @var	int
	 */
	protected $m_fact_id;
	
	/**
	 * The user which this fact applies to. See common_Users table.
	 * @var	int
	 */
	protected $m_user_id;
	
	/**
	 * Body of the fact.
	 * @var	string
	 */
	protected $m_fact;
	
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
	 * @param	int				$fact_id			id of the current record
	 */
	public function __construct( $fact_id, $objects = FALSE )
	{
		$this->m_common = new Common();
		$this->m_fact_id = ( $fact_id > 0 ) ? $fact_id : 0;
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
			fact_id,
			user_id,
			fact,
			active
		FROM 
			cah_Facts
		WHERE 
			fact_id = " . $this->m_fact_id;
		
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = ( $this->m_common->m_db->numRows( $result ) > 0 ) ? $this->m_common->m_db->fetchAssoc( $result ) : array();
		
		//set member vars
		$this->m_fact_id = $row['fact_id'];
		$this->m_user_id = $row['user_id'];
		$this->m_fact = stripslashes( $row['fact'] );
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
			'fact_id' => $this->m_fact_id,
			'user_id' => $this->m_user_id,
			'fact' => $this->m_fact,
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
			$req_fields = array( 'user_id' => 0 );
			$input['fact_id'] = $this->m_common->m_db->insertBlank( 'cah_Facts', 'fact_id', $req_fields );
			
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			$this->m_fact_id = $input['fact_id'];
			
			$return = $this->m_fact_id;
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
			UPDATE cah_Facts
			SET user_id = " . $input['user_id'] . ",
				fact = '" . addslashes( $input['fact'] ) . "'
			WHERE fact_id = " . $this->m_fact_id;
			
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			$return = $this->m_fact_id;
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
			UPDATE cah_Facts
			SET active = 0
			WHERE fact_id = " . $this->m_fact_id;
			
			$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		}
		else
		{
			$query_string = "
			DELETE 
			FROM cah_Facts 
			WHERE fact_id = " . $this->m_fact_id;
			
			$sql_array = explode( "--end-sql--", $query_string );
			
			foreach( $sql_array as $sql )
			{
				$this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			}	
		}
		
		return $this->m_fact_id;
		
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
		
		//check fact
		if( !array_key_exists( "fact", $input ) ||
			strlen( trim( $input['fact'] ) ) == 0 )
		{
			$return = "You must provide a fact.";
		}
		
		//check user id exists
		if( !$return )
		{
			if( !array_key_exists( "user_id", $input ) ||
				!is_numeric( $input['user_id'] ) ||
				$input['user_id'] == 0 )
			{
				$return = "You must provide a user id.";
			}	
		}
		
		//check user id is valid
		if( !$return )
		{
			$sql = "SELECT count(*) FROM common_Users WHERE user_id = " . $input['user_id'];
			$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
			$row = $this->m_common->m_db->fetchRow( $result );

			if( $row[0] == 0 )
			{
				$return = "The user id you entered ( " . $input['user_id'] . " ) is invalid.";
			}
		}
			
		return $return;
		
	}//checkInput()
	
	public function setLinkedObjects()
	{
		return array( 'user' => new User( $this->m_user_id ) );
		
	}//setLinkedObjects()
	
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
		$exclusions = array( 'm_fact_id' );

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
	
}//class Fact
?>