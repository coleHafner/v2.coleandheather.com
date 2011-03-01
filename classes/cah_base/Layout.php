<?
/**
 * A class to handle the layout common to every page on the site.
 * @since	20100425, hafner
 */

require_once( 'cah_base/Common.php' );
require_once( 'cah_base/View.php' );

class Layout
{
	/**
	 * Instance of the Common class.
	 * @var	Common
	 */
	protected $m_common;
	
	/**
	 * Name of the current view.
	 * @var	int
	 */
	protected $m_active_controller_name;
	
	/**
	 * Constructs the Layout object.
	 * @return Layout
	 * @since	20100307, hafner
	 * @mod		20100502, hafner
	 * @param	string			$view			name of the controller	
	 */
	public function __construct( $get )
	{
		$this->m_common = new Common();
		$this->m_active_controller_name = ucfirst( strtolower( $get['v'] ) );
		
	}//Layout()
	
	/**
	 * Gets the details for this page. 
	 * @return	array
	 * @since	20100307, hafner
	 * @mod		20100307, hafner
	 */
	public function getPageDetails()
	{
		$v = new View(0);
		return $v->getAllRecords( FALSE );
		
	}//getPageDetails()
	
	/**
	 * Outputs the 'head' section of the HTML document.
	 * @return	string
	 * @since	20100323, hafner
	 * @mod		20100323, hafner
	 */
	public function getHtmlHeadSection()
	{
		$paths = $this->m_common->getPathInfo();
		$file_paths = $paths[$this->m_common->m_env];
		
		$sql = "SELECT alias FROM common_Views WHERE LOWER( controller_name ) = '" . strtolower( $this->m_active_controller_name ) . "'";
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = $this->m_common->m_db->fetchRow( $result );
		$alias = $row[0];
		
		$sql = "SELECT value FROM common_Settings WHERE LOWER( title ) = 'site-name'";
		$result = $this->m_common->m_db->query( $sql, __FILE__, __LINE__ );
		$row = $this->m_common->m_db->fetchRow( $result );
		$site = $row[0];
		
		$fb_xmls = ( strtolower( $this->m_active_controller_name ) == "postwall" ) ? 'xmlns:fb="http://www.facebook.com/2008/fbml"' : '';
		
		return '
		<!DOCTYPE html>
		<html xmlns="http://www.w3.org/1999/xhtml" ' . $fb_xmls . '>
		
		<head>
			<meta name="viewport" content="width=device-width; user-scalable=1;" >
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
			
			<title>' . $alias . ' - ' . $site . '</title>

			<link rel="stylesheet" href="' . $file_paths['css_ex'] . '/960_grid.css" type="text/css" />
			<link rel="stylesheet" href="' . $file_paths['css_ex'] . '/jquery-ui-1.8.1.custom.css" type="text/css" />
			<link rel="stylesheet" href="' . $file_paths['css_ex'] . '/imgbox.css" type="text/css" />
			<link rel="stylesheet" href="' . $file_paths['css'] . '/common.css" type="text/css" />
			
			<script type="text/javascript" src="' . $file_paths['js_ex'] . '/jquery-1.4.2.js"></script>
			<script type="text/javascript" src="' . $file_paths['js_ex'] . '/jquery-ui-1.8.1.custom.min.js"></script>
			<script type="text/javascript" src="' . $file_paths['js_ex'] . '/jquery.imgbox.js"></script>
			<script type="text/javascript" src="' . $file_paths['js'] . '/jquery.common.js"></script>
			<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
			<!--[if lt IE 7 ]> <script type="text/javascript" src="' . $file_paths['js'] . '/jquery.ie6.js"></script><![endif]-->
			
		</head>
		';
		
	}//getHtmlHeadSection()
	
	/**
	 * Outputs the section directly above the unique content for each page.
	 * @return	string
	 * @since	20100323, hafner
	 * @mod		20100323, hafner
	 */
	public function getHtmlBodySection( $login_string )
	{  
		$login = ( strlen( $login_string ) > 0 ) ? $login_string : '';
		
		//select ( psuedo ) random header image
		$header_class = "header" . rand( 1, 4 );
		
		$return .= '
		<body>
			<!--page-->
			<div class="page">
			
				<!--header-->
				<div class="container_12">
					<div class="grid_1">
						&nbsp;
					</div>
					
					<div class="grid_10">
						<div class="header ' . $header_class . '">
							<div style="position:absolute;bottom:10px;left:20px;">
								<img src="/images/logo_small.gif" />
							</div>
						</div>
					</div>
					
					<div class="grid_1">
						&nbsp;
					</div>
					
					<div class="clear"></div>
				</div>
				<!--/header-->
				
				<!--primary nav-->
				<div class="container_12">
					
					<div class="grid_1">
						&nbsp;
					</div>
					
					<div class="grid_10">
						<div class="primary_nav color_cyan_bg">
							' . $this->getHtmlNav() . '
							<div style="position:absolute;top:0px;left:-14px;">
								<img src="/images/ribbon_end_left2.gif"/>
							</div>
							<div style="position:absolute;top:0px;right:-14px;">
								<img src="/images/ribbon_end_right2.gif"/>
							</div>
						</div>
					</div>
					
					<div class="grid_1">
						&nbsp;
					</div>
					
					<div class="clear"></div>
				</div>
				<!--/primary nav-->
				
				<!--content-->
				<div class="container_12">
					<div class="grid_1">
						&nbsp;
					</div>	
				';
				
		return $return;
		
	}//getHtmlBodySection()
	
	/**
	 * Closes the main HTML tags.
	 * @return	string
	 * @since	20100323, hafner
	 * @mod		20100323, hafner
	 */
	public function getHtmlFooterSection()
	{
		$return = '
					<div class="grid_1">
						&nbsp;
					</div>
					
					<div class="clear"></div>
					
				</div>
				<!--/content-->
				
				<!--footer-->
				<div class="container_12">
					<div class="grid_1">
						&nbsp;
					</div>
					
					<div class="grid_10">
						<div class="footer">
							' . strtoupper( '&copy;Cole and Heather 2011 <span style="color:#00FFFF;font-weight:bold;">|</span> Lovingly handcrafted by Halfnerd' ) . '
						</div>
					</div>
					
					<div class="grid_1">
						&nbsp;
					</div>
					<div class="clear"></div>
				</div>
				<!--/footer-->
				
			</div>
			<!--/page-->
			';
		
		if( strtolower( $this->m_active_controller_name ) == "postwall" )
		{
			$return .= '
			<!--
			<div id="fb-root"></div>
			
			<script>
				window.fbAsyncInit = function() {
					FB.init( {appId: \'194461467240936\', status: true, cookie: true, xfbml: true} );
				};
			      
				( function() {
					var e = document.createElement( \'script\' );
					e.type = \'text/javascript\';
					e.src = document.location.protocol + \'//connect.facebook.net/en_US/all.js\';
					e.async = true;
					document.getElementById(\'fb-root\').appendChild(e);
				}());
			</script>
			-->
		    ';
		}
		
		return $return;
		
	}//getHtmlFooterSection()
	
	public function getClosingTags()
	{
		return '
		</body>
		
		</html>
		';
	}//getClosingTags()
	
	/**
	 * Outputs the primary navigation.
	 * @return	string
	 * @since	20100323, hafner
	 * @mod		20100403, hafner
	 */
	public function getHtmlNav()
	{
		$views = View::getNavViews();
		
		$return = '
		<table class="primary_nav_table">
			<tr>
			';
		foreach( $views as $i => $view ) 
		{
			//determine active selector
			$link_style = ( strlen( $view->m_external_link ) > 0 ) ? 'target="_blank"' : "";
			$selected = ( strtolower( $view->m_controller_name ) == strtolower( $this->m_active_controller_name ) ) ? 'class="selected"' : '';
			
			//grab link
			$link = ( strlen( $view->m_external_link ) > 0 ) ? $view->m_external_link : $link = $this->m_common->makeLink( array( 'v' => $view->m_controller_name ) ); 
			
			//compile html
			$return .= '
				<td ' . $selected . ' >
					<a href="' . $link . '" ' . $link_style . '>
						' . $view->m_alias . '
					</a>
				</td>
				';
		}//loop through views
		
		$return .= '
			</tr>
		</table>
		';
		
		return $return;
		
	}//getHtmlNav()
	
	/**
	* Get a member variable's value
	* @return	mixed
	* @param	string		$var_name		Variable name to get
	* @since 	20100403, hafner
	* @mod		20100403, hafner
	*/
	public function __get( $var_name )
	{
		$exclusions = array( 'm_common' );
		if( !in_array( $var_name, $exclusions ) ) {
			$return = $this->$var_name;
		}else {
			if( $this->m_common->m_in_production ) {
				echo "<h3>Access to get member " . get_class( $this ) . "::" . $var_name . " denied.</h3><br/>\n";
				$return = FALSE;
			}else {
				$return = FALSE;
			}
		}
		return $return;
	}//__get()
	
}//class Layout
?>