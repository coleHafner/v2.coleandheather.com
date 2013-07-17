#!/ramdisk/bin/php5 -q
<?

ini_set( "include_path", "./:/home8/colehafn/public_html/coleandheather.com/classes" );

require_once( "cah_base/Common.php" );
$common = new Common();

$sql = "SHOW TABLES";
$result = $common->m_db->query( $sql, __FILE__, __LINE__ );

//fix records
while( $row = $common->m_db->fetchRow( $result ) )
{
	//grab vars
	$table_name = $row[0];
	$pk_field = "";
	
	//grab table details
	$sql_1 = "DESC " . $table_name;
	$result_1 = $common->m_db->query( $sql_1, __FILE__, __LINE__ );
	
	//determine primary key
	while( $row_1 = $common->m_db->fetchAssoc( $result_1 ) )
	{
		$row_1 = array_change_key_case( $row_1, CASE_LOWER );
		
		if( strtolower( $row_1['extra'] ) == "auto_increment" &&
			strtolower( $row_1['key'] ) == "pri" )
		{ 
			$pk_field = $row_1['field']; 
			break;
		}
	}
	
	//update found records to 0
	if( strlen( $pk_field ) > 0 )
	{
		//check for duplicate record
		$sql_2 = "SELECT count(*) FROM " . $table_name . " WHERE " . $pk_field . " = 0";
		$result_2 = $common->m_db->query( $sql_2, __FILE__, __LINE__ );
		$row_2 = $common->m_db->fetchRow( $result_2 );
		
		//fix zero record
		if( $row_2[0] == 0 )
		{
			$sql_3 = "UPDATE " . $table_name . " SET " . $pk_field . " = 0 WHERE " . $pk_field . " = ( SELECT MAX( " . $pk_field . " ) FROM ( SELECT * FROM " . $table_name . " ) AS table_alias )";
			$common->m_db->query( $sql_3, __FILE__, __LINE__ );
			echo "Fixing table '" . $table_name . "'\n";
		}
		else 
		{
			echo "Table '" . $table_name . "' already has a 0 record. \n";
		}
	}
}//loop through tables
?>
