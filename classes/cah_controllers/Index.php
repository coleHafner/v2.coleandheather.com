<?
/**
 * Controls the home page content.
 * @since	20100425, halfNerd
 */

require_once( "cah_base/Controller.php" );
require_once( "cah_base/Article.php" );
require_once( "cah_base/File.php" );

class Index extends Controller{
	
	/**
	 * Constructs the Index controller object.
	 * @return 	Index
	 * @param	array			$controller_vars		array of variables for current layout.				
	 */
	public function __construct( $controller_vars )
	{
		parent::setControllerVars( $controller_vars );
		
		$this->m_valid_views = array( 
			'her-story' => "Her Story",
			'his-story' => "His Story", 
			'did-you-know' => "Did You Know" 
		);
		
	}//constructor
	
	/**
	 * @see classes/base/Controller#setContent()
	 */
	public function setContent() 
	{
		$this->m_controller_vars['sub'] = $this->validateCurrentView();
		
		$s_nav = $this->getHtml( 'secondary-nav', array() );
		$content = $this->getHtml( $this->m_controller_vars['sub'], array() );
		
		//grab home article
		$this->m_content = '
		<div class="grid_10">
			<div class="content">
				
				<div class="side_bar">
					<div class="side_bar_inner">
						<div class="padder_10_top">
							' . $s_nav['html'] . '
						</div>
					</div>
				</div>
				
				<div class="main_bar">
					<div class="main_bar_inner">
						<div class="padder_10">
							' . $content['html'] . '
						</div>
					</div>
				</div> 
				
				<div class="clear"></div>
				
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
			case "his-story":
				$articles = Article::getArticle( "index", "his-story" );
				$story = $articles[0];
				
				$html = '
				<div class="padder_10 header_text color_brown">
					' . $story->m_title . '
				</div>
				
				<div class="padder_10">
					' . $this->m_common->formatText( $story->m_body, "default_line_height" ) . '
				</div>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "her-story":
				$articles = Article::getArticle( "index", "her-story" );
				$story = $articles[0];
				
				$html = '
				<div class="padder_10 header_text color_brown" id="her_story">
					' . $story->m_title . '
				</div>
				
				<div class="padder_10">
					' . $this->m_common->formatText( $story->m_body, "default_line_height" ) . '
				</div>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "did-you-know":
				$facts = array(
					'In the winter of the 2012, Heather plans to persue her masters in special education at Pacific University in Forrest Grove, OR.',
					'Heather\'s engagement ring has sapphires and diamonds, the same stones are included in Cole\'s Mom\'s engagement ring.',
					'Heather and Cole grew up less than 20 minutes from each other, but did not meet until they attended college.',
					'In her senior year of college, Heather was editor-in-chief of the university newspaper "The Siskiyou".',
					'Heather graduated from Southern Oregon University in 2008 with a degree in Communication.',
					'Cole graduated from Southern Oregon University in 2008 with a degree in Computer Science.',
					'In his junior year of college, Cole spent a week scuba diving in Utila, Honduras.',
					'While attending SOU, Heather spent a month studying abroad in Greece.',
					'Heather works as a special education teacher in Medford, OR.',
					'Both Heather and Cole are die hard fans of "The Office".',
					'Heather and Cole are honeymooning in Cozumel, Mexico.',
					'Cole works as a web developer/designer in Ashland, OR.',
					'Heather and Cole have a lab/pitbull mix named Luna.',
					'Heather and Cole have been together for since 2004.',
					'Both Cole and Heather are certified scuba divers.',
					'Cole and Heather both have facebook accounts.',
					'Heather attended grades K - 6 in Las Vegas.',
					'Cole is actually a robot.'
				);
				
				$html = '
				<div class="padder_10 header_text color_brown">
					Random Facts
				</div>
				<div class="padder_10 padder_no_top">
					Get to know Cole and Heather.
				</div>
				<div class="padder_10">
					<div class="padder_10 border_dashed_brown center header_text_sub color_black default_line_height" style="height:100px;margin-bottom:20px;">
					';
				
				foreach( $facts as $i => $fact )
				{
					$html .= '
					<span id="fact_' .  ( $i + 1 ) . '" style="display:none;">' . $fact . '</span>
					';
				}
				
				$html .= '
						<input type="hidden" id="current_fact" value="0" />
						<input type="hidden" id="max_facts" value="' . count( $facts ) . '" />
					</div>
					<a href="#" class="button rounded_corners color_lime_bg center fact" process="new-fact" current_fact="0" style="margin:auto;width:200px;">
						<span class="header_text color_white">
							Get a Fact!
						</span>
					</a>
				</div>
				';
				$return = array( 'html' => $html );
				break;
				
			case "secondary-nav":
				
				$return = Common::getHtml( 'secondary-nav', array( 
					'options' => $this->m_valid_views, 
					'selected_value' => $this->m_controller_vars['sub'], 
					'active_controller_name' => $this->m_linked_objects['view']->m_controller_name ) 
				);
				break;
				
			default:
				$return = array( 'html' => "This is index default view." );
				break;
		}
		
		return $return;
		
	}//getHtml()
		
}//class Index
?>
