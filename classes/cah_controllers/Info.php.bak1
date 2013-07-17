<?
/**
 * Controls the home page content.
 * @since	20100425, halfNerd
 */

require_once( "cah_base/Controller.php" );

class Info extends Controller{
	
	/**
	 * Constructs the Index controller object.
	 * @return 	Index
	 * @param	array			$controller_vars		array of variables for current layout.				
	 */
	public function __construct( $controller_vars )
	{
		parent::setControllerVars( $controller_vars );
		
		$this->m_valid_views = array( 
			'gifts' => "Gift Registries", 
			'venue' => "Venue", 
			'get-directions' => "Get Directions",
			'hotels' => "Area Hotels" 
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
		$content_id = ( $this->m_controller_vars['sub'] == "hotels" ) ? 'id="info_hotels"' : '';
		
		//grab home article
		$this->m_content = '
		<div class="grid_10">
			<div class="content" id="info_content">
				
				<div class="side_bar">
					<div class="side_bar_inner">
						<div class="padder_10_top">
							' . $s_nav['html'] . '
						</div>
					</div>
				</div>
				
				<div class="main_bar" ' . $content_id . '>
					<div class="main_bar_inner">
						<div class="info_inner">
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
			case "secondary-nav":
				
				$return = Common::getHtml( 'secondary-nav', array( 
					'options' => $this->m_valid_views, 
					'selected_value' => $this->m_controller_vars['sub'], 
					'active_controller_name' => $this->m_linked_objects['view']->m_controller_name ) 
				);
				break;
				
			case "get-directions":
				$html = '
				<div class="directions_canvas">
					<div class="padder_10 header_text_sub color_brown">
						Directions
						<div id="full_screen_link"></div>
					</div>
							
					<div class="padder_10 padder_no_top" id="directions_canvas">
						
					</div>
				</div>
				
				<div  class="map_canvas" id="map_canvas">
				</div>
				
				<div class="clear"></div>
				
				<div class="info_map_controls color_white_bg border_solid_grey controls_visible" id="map_controls">
						
					<div class="padder_10_top">
						
						<div class="header_bar color_tan_bg border_solid_grey_top border_solid_grey_bottom" style="-moz-border-radius:0em;-webkit-border-radius:0em;height:px;">
							<div class="padder_10">
								
								<div class="header_text color_brown">
									Get Directions
								</div>
								
								<div class="color_sub padder_10 padder_5_left">
									Wondering how to actually get to the wedding?
								</div>
								
							</div>
						</div>
						
						<div class="results_div center" id="results_div">
						</div>
						
						<div class="padder_10 padder_no_top">
							
							<div class="info_address_container">
								<table class="info_address_table">
									<tr>
										<td colspan="2">
											<div class="padder_10 padder_no_bottom">
												<span class="text_input_tag color_black">
													Address:
												</span>
												<input id="address" type="text" class="text_input_short_height rounded_corners_small border_solid_grey text_input_all header_text_medium" />
											</div>
										</td>
									</tr>
									<tr>
										<td style="width:50%;">
											<div class="padder_10">
												<span class="text_input_tag color_black">
													City:
													<span class="color_red">*</span>
												</span>
												<input id="city" type="text" class="text_input_short_height rounded_corners_small border_solid_grey text_input_all header_text_medium" />
											</div>
										</td>
										<td style="width:50%;">
											<div class="padder_10">
												<span class="text_input_tag color_black">
													State:
													<span class="color_red">*</span>
												</span>
												<input id="state" type="text" class="text_input_short_height rounded_corners_small border_solid_grey text_input_all header_text_medium" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="padder_10_left color_red">
												* Required Field
											</div>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="info_button_container">
								<a href="#" class="button rounded_corners color_brown_bg center info" process="show-map" style="margin:auto;">
									<span class="header_text color_white">
										Go!
									</span>
								</a>
							</div>
							
							<div class="clear"></div>
						</div>
						
						<div class="info_map_controls_tab border_solid_grey center color_lime_bg">
							<div style="padding-top:5px;">
								<a href="#" class="info" process="toggle-map-controls" id="map_tab_link" style="font-weight:bold;color:#000;">Hide</a>
							</div>
						</div>
					</div>
				</div>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "venue":
				$html = '
				<div class="padder_10">
				
					<div class="padder_10 header_text color_brown" style="padding-left:0px;">
						Historic Deepwood Estate
					</div>
					
					<div class="color_tan_bg padder_10 info_photo border_solid_grey" >
						<img src="/images/info_estate.jpg" />
					</div>
					
					<div class="info_paragraph default_line_height">
						Deepwood Estate is an 1894 Queen Anne Victorian Home situated on approximately 4 acres of manicured 
						gardens and nature trails set in the heart of Salem near its downtown core. The home was placed on the National 
						Register of Historic Homes in 1973.
					</div>
					
					<div class="clear"></div>
					
					<p class="default_line_height">
						Set beside an 1894 white Queen Anne Victorian home and Carriage House, the estate features several gardens 
						connected by brick and gravel pathways bordered by charming wrought iron fencing and gates. Ivy covered arbor 
						and gazebo provide unparrelled wedding backdrops for exquisite photographs. Tiny white lights illuminate the trees 
						above your tables under candlelit glow.
					</p>
					
					<p class="default_line_height">
						The on-site gardens contain boxwood gardens, an English tea house garden, covered arches and gazebos, ornamental gates and 
						fences as well at The Rita Steiner Nature Trail weaving its way through the western border of the property towards Bush Park. 
						The design embodies a landscape made of a series of smaller gardens and paths, hidden places and open vistas. For more info see <a href="http://www.historicdeepwoodestate.org/" target="_blank">historicdeepwoodestate.org</a>.
					</p>
					
				</div>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "gifts":
				$html = '
				<div class="padder_10">
					
					<div class="padder_10 header_text color_brown">
						Wedding Gift Registries
					</div>
					
					<div class="padder_10">
						Click on the images below to see our registry.
					</div>
					
					<div class="info_registry_holder center">
						<a href="http://www.target.com/registry/wedding/AQK2WP8P579K" target="_blank">
							<img src="/images/logo_target.jpg" />
						</a>
					</div>
					
					<div class="info_registry_holder_lower center">
						<a href="http://www.amazon.com/gp/registry/registry.html?ie=UTF8&type=wedding&id=32ZSD3JJK7QW1" target="_blank">
							<img src="/images/logo_amazon.jpg" />
						</a>
					</div>
					
					<div class="center header_text color_brown">
						<div class="padder_10 padder_no_bottom">
							OR
						</div>
					</div>
					
					<div style="position:relative;margin-top:20px;">&nbsp;</div>
					
					<div class="color_tan_bg border_solid_grey">
						<div class="padder_10">
							<table style="position:relative;width:100%;">
								<tr>
									<td style="width:70%;" class="center default_line_height" valign="middle">
										Don\'t like buying presents?
										<br/>
										Weddings are expensive. Help us out with a donation.
									</td>
									<td style="width:30%;" class="center">
									
										<input type="image" src="https://www.paypal.com/en_US/i/btn/btn_donate_LG.gif" border="0" alt="PayPal - The safer, easier way to pay online!" onClick="document.getElementById( \'paypal_form\' ).submit();"/>
											
										<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank" id="paypal_form">
											<input type="hidden" name="bn" value="PP-DonationsBF:btn_donate_LG.gif:NonHostedGuest" />
											<input type="hidden" name="business" value="colehafner@gmail.com" />
											<input type="hidden" name="item_name" value="Cole and Heather\'s Wedding" />
											<input type="hidden" name="currency_code" value="USD" />
											<input type="hidden" name="cmd" value="_donations" />
											<input type="hidden" name="no_note" value="0" />
											<input type="hidden" name="lc" value="US" />
										</form>
										
									</td>
								</tr>
							</table>
						</div>
					</div>				
				</div>
				';
				$return = array( 'html' => $html );
				break;
				
			case "hotels":
				
				$hotels = array(
					1 => array(
						'name' => 'Ramada Inn', 
						'img' => 'hotels_ramadaInn.jpeg',
						'phone' => '(800) 311-5174',
						'address' => '200 Commercial Street Southeast^Salem, OR',
						'url' => 'http://ramada.com' ),
					
					2 => array(
						'name' => 'Shilo Inn', 
						'img' => 'hotels_shiloInn.jpg',
						'phone' => '(503) 581-4001',
						'address' => '3304 Market Street Northeast^Salem, OR',
						'url' => 'http://shiloinns.com' ),
					
					3 => array(
						'name' => 'Super 8 Hotel', 
						'img' => 'hotels_super8.jpeg',
						'phone' => '(503) 370-8888',
						'address' => '1288 Hawthorne Avenue Northeast^Salem, OR',
						'url' => 'http://super8.com' ),
					
					4 => array(				
						'name' => 'Red Lion Inn', 
						'img' => 'hotels_redLion.jpg',
						'phone' => '(503) 370-7888',
						'address' => '3301 Market Street NE^Salem, OR',
						'url' => 'http://redlion.rdln.com' ),
					
					5 => array(
						'name'=> 'Residence Inn', 
						'img' => 'hotels_residenceInn.jpg',
						'phone' => '(503) 585-6500',
						'address' => '640 Hawthorne Avenue SE^Salem, OR',
						'url' => 'http://marriott.com' ),
				
					6 => array(
						'name' => 'Travel Lodge Inn', 
						'img' => 'hotels_travelLodge.jpeg',
						'phone' => '(503) 581-2466',
						'address' => '1555 State Street^Salem, OR',
						'url' => 'http://travellodge.com' )
				);
				
				$options = array (
					'records' => $hotels,
					'is_static' => FALSE,
					'records_per_row' => 2,
					'active_controller' => &$this,
					'html_cmd' => "render-grid-item",
					'extra_classes' => 'class="hotel_grid"',
					'empty_message' => "There are 0 hotels. Please check back later."
				);
				
				$table = $this->m_common->getHtml( 'display-grid', $options );
				
				$html = '
				<div class="padder_10">
				
					<div class="padder_10 header_text color_brown">
						Hotels in the Area
					</div>
					<div class="padder_10_left padder_10_bottom">
						Coming from out of town? These are some great hotels in the Salem area.
					</div>
					' . $table['html'] . '
				</div>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "render-grid-item":
				
				$hotel = $vars['active_record'];
				$address_split = explode( "^", $hotel['address'] );
				$address = $address_split[0] . '<br/>' . $address_split[1];
				
				$return = array( 'html' => '
					<div class="color_tan_bg border_solid_grey" style="height:100%;margin:5px;">
						<div class="padder_10">
							<div>
								<div style="position:relative;width:70px;height:70px;overflow:hidden;float:left;margin-right:10px;">
									<img src="/images/' . $hotel['img'] . '" />
								</div>
								<div style="position:relative;float:left;">
									<div class="header_text_sub color_black">
										' . $hotel['name'] . '
									</div>
									<a href="' . $hotel['url'] . '" target="_blank">
										' . $hotel['url'] . '
									</a>
								</div>
								<div class="clear"></div>
							</div>
							
							<div style="padding-bottom:5px;padding-top:5px;">
								' . $address . '
							</div>
									
							<div style="padding:5px;padding-left:0px;">
								' . $hotel['phone'] . '
							</div>
							
						</div>
					</div>' 
				);
				break;
				
			default:
				throw new Exception( "Error: Invalid HTML command." );
				break;
		}
		
		return $return;
		
	}//getHtml()
		
}//class Info
?>