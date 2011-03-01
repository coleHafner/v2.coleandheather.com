<?
/**
 * Controls the home page content.
 * @since	20100425, halfNerd
 */

require_once( "cah_base/Controller.php" );
require_once( "cah_base/Article.php" );
require_once( "cah_base/File.php" );
require_once( "services/PicasaAlbum.php" );

class Gallery extends Controller{
	
	/**
	 * Constructs the Index controller object.
	 * @return 	Index
	 * @param	array			$controller_vars		array of variables for current layout.				
	 */
	public function __construct( $controller_vars )
	{
		parent::setControllerVars( $controller_vars );
		$this->m_valid_views = array( 'photo-grid' => "" );
		
	}//constructor
	
	/**
	 * @see classes/base/Controller#setContent()
	 */
	public function setContent() 
	{
		$this->m_controller_vars['sub'] = $this->validateCurrentView();
		$pics = $this->getHtml( $this->m_controller_vars['sub'] );
		
		//grab home article
		$this->m_content = '
		<div class="grid_10">
			<div class="content padder_10 gallery_content" id="gallery_container" >
				' . $pics['html'] . '		
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
	
	public function getPics()
	{
		$pa = new PicasaAlbum( "colehafner" );
		$album_feed = $pa->getAlbum( "title", "coleandheatherdotcom" );
		return $pa->getAlbumSummary( $album_feed, array( 'thumb_key' => "2" ) );
		
	}//getPics()
	
	public function getHtml( $cmd, $vars = array() ) 
	{
		switch( strtolower( trim( $cmd ) ) )
		{
			case "photo-grid":
				
				$pics = $this->getPics();
				
				$options = array (
					'records' => $pics,
					'is_static' => FALSE,
					'records_per_row' => 3,
					'active_controller' => &$this,
					'html_cmd' => "render-grid-item",
					'extra_classes' => 'class="gallery_pic_grid"',
					'empty_message' => "There are 0 pictures. Please check back later."
				);
				
				$return = $this->m_common->getHtml( 'display-grid', $options );
				break;
				
			case "render-grid-item":
				
				$active_record = $vars['active_record'];
				
				$return = array( 'html' => '
					<div>
						<a href="' . $active_record['url_full'] . '" class="gallery_click" >
							<img class="gallery_thumb" src="' . $active_record['url_thumb'] . '" />
						</a>
					</div>' 
				);
				break;
				
			default:
				throw new Exception( "Error: Invalid HTML command." );
				break;
		}
		
		return $return;
		
	}//getHtml()
		
}//class Gallery
?>
