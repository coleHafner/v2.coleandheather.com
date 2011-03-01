<?
require_once( "cah_base/Common.php" );
require_once( 'cah_base/Layout.php' );

$common = new Common();
$paths = $common->getPathInfo();
$layout = new Layout( array() );

/*

DELETE FROM cah_GuestToGuestType WHERE guest_id = ( SELECT guest_id FROM cah_Guests WHERE first_name = 'Jay' AND last_name = 'reynolds' ) AND guest_type_id = ( SELECT guest_type_id FROM cah_GuestTypes WHERE LOWER( title ) = 'groomsman' ) 

UPDATE cah_Guests SET first_name = 'Brandi' WHERE first_name = 'Brandy' AND last_name = 'Freres'

UPDATE cah_Guests SET first_name = 'Troy' WHERE first_name = 'Larry' AND last_name = 'Mechek'

INSERT INTO cah_Guests ( parent_guest_id, first_name, last_name, activation_code, initial_timestamp, update_timestamp, expected_count, actual_count, rsvp_through_site, is_attending, is_new, active, address_id )
VALUES( 0, 'Walter', 'Hafner', '687048ba8c', '1298867123', '1298867123', 1, 0, 0, 0, 0, 1, ( SELECT address_id FROM cah_Addresses WHERE LOWER( street_address ) = '123 main st.' ) );

INSERT INTO cah_GuestToGuestType( guest_id, guest_type_id ) VALUES ( ( SELECT guest_id FROM cah_Guests WHERE first_name = 'Walter' AND last_name ='Hafner' ), ( SELECT guest_type_id FROM cah_GuestTypes WHERE LOWER( title ) = 'groom family' ) );

INSERT INTO cah_GuestToGuestType( guest_id, guest_type_id ) VALUES ( ( SELECT guest_id FROM cah_Guests WHERE first_name = 'Walter' AND last_name ='Hafner' ), ( SELECT guest_type_id FROM cah_GuestTypes WHERE LOWER( title ) = 'guest of honor' ) )

echo strtotime( "now" );exit;
$is_unique = FALSE;
	
while( !$is_unique )
{
	$raw =  md5 ( "hafner" . date( "F d\, Y H:i:s" ) );
	$return = strtolower( substr( $raw, 0, 10 ) );
	
	$sql = "SELECT count(*) FROM cah_Guests WHERE LOWER( activation_code ) = '" . $return . "'";
	$result = $common->m_db->query( $sql, __FILE__, __LINE__ );
	$row = $common->m_db->fetchRow( $result );
	$is_unique = ( $row[0] == 0 ) ? TRUE : FALSE;
}

echo "activation code: " . $return;
exit;
*/

require_once(  $paths[$common->m_env]['classes_controllers'] . "/Rsvp.php" );

$rsvp = new Rsvp( array(), TRUE );
$content = $rsvp->getHtml( "activation-code-grid" );

echo $layout->getHtmlHeadSection();
echo '
	<body>
		<div class="container_12">
			<div class="grid_12">
				' . $content['html'] . '
			</div>
			
			<div class="clear"></div>
		</div>
	</body>
</html>
';
?>