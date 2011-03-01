<?
/**
 * Controls the home page content.
 * @since	20100425, halfNerd
 */

require_once( "cah_base/Controller.php" );
require_once( "cah_base/Article.php" );
require_once( "cah_base/File.php" );

class PostWall extends Controller{
	
	/**
	 * Constructs the Index controller object.
	 * @return 	Index
	 * @param	array			$controller_vars		array of variables for current layout.				
	 */
	public function __construct( $controller_vars )
	{
		parent::setControllerVars( $controller_vars );
		$this->m_valid_views = array( 'all-posts' => "" );
		
	}//constructor
	
	/**
	 * @see classes/base/Controller#setContent()
	 */
	public function setContent() 
	{
		$this->m_controller_vars['sub'] = $this->validateCurrentView();
		$content = $this->getHtml( $this->m_controller_vars['sub'], array() );
		
		//grab home article
		$this->m_content = '
		<div class="grid_10">
			<div class="content" id="postwall_container">
				<div class="padder_10">
					<div class="header_text color_brown padder_10 padder_no_left">
						Leave us a comment
					</div>
					
					<div class="color_tan_bg border_solid_grey">
						<div style="position:relative;padding:10px 0px 10px 25px;">
							' . $content['html'] . '
						</div>
					</div> 
				</div>
			</div>
		</div>
		';
		
	}//setContent()
	
	/**
	 * @see classes/base/Controller#getContent()
	 */
	public function getContent() 
	{
		return $this->m_content;
		
	}//getContent()
	
	public function getHtml( $cmd, $vars = array() ) 
	{
		switch( strtolower( trim( $cmd ) ) )
		{
			case "all-posts":
				$html = '
				<div id="fb-root">
				</div>
				
				<script src="http://connect.facebook.net/en_US/all.js#appId=194461467240936&amp;xfbml=1"></script>
				<fb:comments xid="194461467240936" numposts="10" width="730" publish_feed="true"></fb:comments>
				';
				
				$return = array( 'html' => $html );
				break;
				
			default:
				$return = array( 'html' => "This is our post wall." );
				break;
		}
		
		return $return;
		
	}//getHtml()
		
}//class PostWall
?>