<?
/**
 * Controls the home page content.
 * @since	20100425, halfNerd
 */

require_once( "cah_base/Controller.php" );
require_once( "cah_base/Article.php" );
require_once( "cah_base/File.php" );
require_once( "cah/Guest.php" );

class Rsvp extends Controller{
	
	/**
	 * Constructs the Index controller object.
	 * @return 	Index
	 * @param	array			$controller_vars		array of variables for current layout.				
	 */
	public function __construct( $controller_vars )
	{
		parent::setControllerVars( $controller_vars );
		$this->m_valid_views = array( 'rsvp-content' => "" );
		
	}//constructor
	
	/**
	 * @see classes/base/Controller#setContent()
	 */
	public function setContent() 
	{
		$step =  "step-1";
		
		if( array_key_exists( 'sub', $this->m_controller_vars ) && 
			Guest::validateActivationCode( $this->m_controller_vars['sub'] ) === TRUE )
		{
			$step = "step-2";
			
		}
		
		$vars = $this->getHtml( $step );
		$html_content = $this->getHtml( 'rsvp-content', $vars );
		
		//grab home article
		$this->m_content = '
		<div class="grid_10">
			<div class="content" id="rsvp_container">
				<div class="padder_10">	
					' . $html_content['html'] . '
				</div>
			</div>
			
			<div style="position:absolute;top:10px;right:10px;font-size:12px;">
				Having trouble with your RSVP? <a href="mailto:colehafner@gmail.com?subject=RSVP Trouble - coleandheather.com">Get help.</a>
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
			case "rsvp-content":
				
				$badge = "";
				$guest = FALSE;
				$absolute = ( array_key_exists( "absolute", $vars ) ) ? $vars['absolute'] : "";
				
				//grab badge html
				if( is_object( $vars['active_record'] ) )
				{
					$guest = $vars['active_record'];
					$badgeworthy_steps = array( "step-2", "step-3-0", "step-3-1", "step-4" );
					
					if( in_array( trim( strtolower( $vars['step_num'] ) ), $badgeworthy_steps ) )
					{
						if( $guest->guestHasSpecialType() )
						{
							$gt = $guest->getBadgeType();
							
							$badge = '
							<div class="rsvp_badge">
								<div class="rsvp_badge_title color_white center">
									<table>
										<tr>
											<td style="vertical-align:middle;">
												' . $gt->m_title . '
											</td>
										</tr>
									</table>
								</div>
							</div>
							';
						}
					}
				}
				
				//grab result html
				if( array_key_exists( "show_results", $vars ) &&
					$vars['show_results'] == 1 )
				{
					$result = '
					<div class="results_div center" id="results_div"></div>
					';
				}
				else
				{
					$result = '
					<div class="padder_10_top" >
						
						<div class="padder_10" id="rsvp_form" style="display:none;">
							' . $vars['results_replacement'] . '
						</div>
					</div>
					';
				}
				
				$html = '
				<div style="position:relative;width:100%;height:60px;">&nbsp;</div>
				<div class="rsvp_activation_form rounded_corners border_solid_grey">
					<div class="header_bar color_tan_bg" id="rsvp_header_bar">
						<div class="padder_10">
							<div class="header_text color_brown">
								' . $vars['title'] . '
							</div>
							
							<div class="color_sub padder_10 padder_5_left">
								' . $vars['message'] . '
							</div>
						</div>
					</div>
					
					' . $result . '
					
					<div id="rsvp_inner">
						' . $vars['form'] . '
					</div>
					
					' . $absolute . '
					' . $badge . '
					
				</div>
				';
				
				$return = array( 'html' => $html );
				break;
			
			case "step-1":
				
				$return = array(
					'step_num' => $cmd, 
					'show_results' => "1",
					'title' => 'RSVP',
					'message' => 'Enter your activation code.',
					'form' => '	
					<input type="text" class="text_input rounded_corners_small center border_solid_grey color_black header_text text_input_long" maxlength="10" id="activation_code" value="" />
					
					<div class="rsvp_inner">
						<div class="padder_10">
							<a href="#" class="rsvp button rounded_corners color_lime_bg center" process="validate-activation-code">
								<span class="header_text color_white">
									Go!
								</span>
							</a>
						</div>
					</div>
					'
				);
				break;
				
			case "step-2":
				
				$guest_id = Guest::getGuestForActivationCode( $this->m_controller_vars['sub'] );
				$guest = new Guest( $guest_id );
				
				$return = array(
					'active_record' => &$guest,
					'step_num' => $cmd,
					'absolute' => $absolute,
					'show_results' => "1",
					'title' => $guest->m_first_name . " " . $guest->m_last_name,
					'message' => 'The moment of truth...',
					'form' => '	
					<div class="padder_10 center" style="padding-top:0px;">
						<span class="header_text color_black">
							Will you be attending?
						</span>
					</div>
					
					<div class="rsvp_inner">
						<div class="padder_10">
							<table style="position:relative;margin:auto;">
								<tr>
									<td>
										<a href="#" class="rsvp button rounded_corners color_lime_bg center" process="update-rsvp" guest_id="' . $guest->m_guest_id . '" value="1">
											<span class="header_text color_white">
												Yes
											</span>
										</a>
									</td>
									<td>
										<div class="padder_10">&nbsp;</div>
									</td>
									<td>
							
										<a href="#" class="rsvp button rounded_corners color_brown_bg center" process="update-rsvp" guest_id="' . $guest->m_guest_id . '" value="0">
											<span class="header_text color_white">
												No
											</span>
										</a>
									</td>
								</tr>
							</table>
						</div>
						
					</div>
					'
				);
				break;
				
			case "step-3-0":
				
				$guest = new Guest( $vars['guest_id'] );
				$bookmark = $this->getHtml( "bookmark-button", array() );
				
				$options = array(
					'active_record' => &$guest,
					'step_num' => $cmd,
					'show_results' => "1",
					'title' => $guest->m_first_name . " " . $guest->m_last_name,
					'message' => "Don't worry, we won't take it personally.",
					'form' => '
					<div class="padder_10 center" style="padding-top:0px;">
						<span class="header_text color_black">
							We\'re sorry to hear that. 
						</span> 
					</div>
					
					<div class="rsvp_inner rsvp_message center">	
						If you happen to change your mind, just come on back.<br/> 
						You can update your RSVP status at any time.<br/>
						We just ask that you do so by <span style="font-weight:bold;">May 2nd</span>.
						
						' . $bookmark['html'] . '
						
					</div>
					'
				);
				
				$return = $this->getHtml( 'rsvp-content', $options );
				break;
				
			case "step-3-1":
				
				$guest = new Guest( $vars['guest_id'], TRUE );
				$guest_add_form = Guest::getHtml( "get-add-form", array( 'active_record' => $guest ) );
				$button_class = ( $guest->guestHasSpecialType() === TRUE ) ? "title_button_w_badge" : "title_button";
				
				$absolute = '
				<div class="' . $button_class . '">
					<a href="#" class="rsvp" process="show-add-guest" guest_id="' . $guest->m_guest_id . '">
						+ Add Guest
					</a>
				</div>
				';
				
				$init_li_vars = ( count( $guest->m_linked_objects['sub_guests'] ) == 0 ) ? array( 'active_record' => $guest, 'extra_class' => 'class="rsvp_guest_list_last"' ) : array( 'active_record' => $guest ); 
				$li = $this->getHtml( 'guest-list-item', $init_li_vars );
				
				$form = '
				<div class="padder_10 padder_no_top">
					<form id="rsvp_final_step">
						<ul class="rsvp_guest_list">
							' . $li['html'];
				
				$count = count( $guest->m_linked_objects['sub_guests'] );
				
				foreach( $guest->m_linked_objects['sub_guests'] as $i => $sub_g )
				{
					$li_vars = ( $i == ( $count - 1 ) ) ? array( 'active_record' => $sub_g, 'extra_class' => 'class="rsvp_guest_list_last"' ) : array( 'active_record' => $sub_g );
					$li = $this->getHtml( 'guest-list-item', $li_vars );
					$form .= 
								$li['html'];
				}
				
				$form .= '
						</ul>
						
						<input type="hidden" name="parent_guest_id" value="' . $guest->m_guest_id . '" />
						<input type="hidden" name="is_attending" value="1" />
						
					</form>
				</div>
					
				<div class="rsvp_inner">
					<div class="padder_10">	
						<a href="#" class="rsvp button rounded_corners color_lime_bg center" process="finalize-rsvp" guest_id="' . $guest->m_guest_id . '" >
							<span class="header_text color_white">
								RSVP
							</span>
						</a>
					</div>
				</div>
				';
				
				$options = array(
					'active_record' => &$guest,
					'step_num' => $cmd,
					'show_results' => "0",
					'results_replacement' => $guest_add_form['html'],
					'title' => $guest->m_first_name . " " . $guest->m_last_name,
					'message' => "Just a new more details...",
					'form' => $form,
					'absolute' => $absolute
				
				);
				
				$return = $this->getHtml( 'rsvp-content', $options );
				break;
				
			case "step-4":
				
				$guest = new Guest( $vars['guest_id'], TRUE );
				$bookmark = $this->getHtml( "bookmark-button", array() );
				
				$form = '
				<div class="padder_10 center" style="padding-top:0px;">
					<span class="header_text color_black">
						We\'ll see you on 07/17/2011!   
					</span> 
				</div>
				
				<div class="rsvp_inner rsvp_message center">
					For directions or gift registry info see the <a href="' . $this->m_common->makeLink( array( 'v' => "info" ) ) . '">\'Wedding Info\'</a> section.<br/> 
					Remember, you can update your RSVP status at any time.<br/>
					We just ask that you do so by <span style="font-weight:bold;">May 2nd</span>.
					
					' . $bookmark['html'] . '
					
				</div>
				';
				
				$options = array(
					'active_record' => &$guest,
					'step_num' => $cmd,
					'show_results' => TRUE,
					'title' => $guest->m_first_name . " " . $guest->m_last_name,
					'message' => "Thank you for rsvping.",
					'form' => $form,
				
				);
				
				$return = $this->getHtml( 'rsvp-content', $options );
				break;
				
			case "guest-list-item":
				
				$guest = $vars['active_record'];
				$checked = ( $guest->m_is_attending === TRUE ) ? 'checked="checked"' : '';
				$extra_class = array_key_exists( 'extra_class', $vars ) ? $vars['extra_class'] : "";
				 
				$html = '	
				<li id="guest_li_' . $guest->m_guest_id . '" ' . $extra_class . '>
					<table style="postion:relative;height:30px;">
						<tr>
							<td valign="middle" style="width:14px;text-align:center;">
								<input type="checkbox" ' . $checked . ' name="guests[]" value="' . $guest->m_guest_id . '">
							</td>
							<td valign="middle">
								<span class="header_text_sub color_black">
									' . $guest->m_first_name . ' ' . $guest->m_last_name . '
								</span>
							</td>
					';
				
				//badge type
				if( $guest->m_parent_guest_id != 0 )
				{
					if( $guest->guestHasSpecialType() === TRUE )
					{
						$type = $guest->getBadgeType();
						
						$html .= '
							<td style="width:5px;">&nbsp;</td>
							<td valign="middle">
								<div class="rounded_corners_small color_black border_solid_grey color_cyan_bg sub_badge">			
									' . $type->m_title . '
								</div>
							</td>
							';
					}
				}
				
				$html .= '
						</tr>
					</table>
					';
				
				//remove option
				if( $guest->m_parent_guest_id != 0 )
				{
					$html .= '
					<div class="rsvp_guest_list_remove">
						<a href="#" class="rsvp" process="remove-guest" guest_id="' . $guest->m_guest_id . '"> Remove</a>
					</div>
					';
				}
				
				$html .= '
				</li>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "bookmark-button":
				$return = array( 'html' => '
					<div style="margin-top:25px;">
						<a href="#" class="rsvp button rounded_corners color_lime_bg center" style="width:200px;">
							<span class="header_text color_white">
								+ Bookmark
							</span>
						</a>
					</div>' 
				);
				
				//disabled
				$return = array( 'html' => '' );
				break;
				
			case "activation-code-grid":
				
				$name_constraint = array(
					'walter hafner',
					'lillian black',
					'eric campbell',
					'krista cavanaugh',
					'lisa clarke',
					'al graves',
					'dan hafner',
					'jerry hafner',
					'john hafner',
					'troy mechek',
					'chris newkirk',
					'tim odonnell',
					'chris ostmo',
					'jay reynolds',
					'tony robison',
					'bob scott',
					'prateek sharma',
					'brandi freres'
				);
				
				$name_constraint = array(
					'tim odonnell',
					'chris ostmo',
					'jay reynolds',
					'tony robison'
				);
				
				$name_constraint = array(
					'jay reynolds'
				);
				
				$records = Guest::getAllParents( $name_constraint );
				
				$options = array (
					'records_per_row' => 4,
					'records' => $records,
					'active_controller' => &$this,
					'html_cmd' => "render-grid-item",
					'table_style' => 'style="position:relative;width:100%;background-color:#FFF;border-spacing:10px;"',
					'empty_message' => "There are 0 guests. Please check back later."
				);
				
				$return = $this->m_common->getHtml( 'display-grid', $options );
				break;
			
			case "render-grid-item":
				
				$record = $vars['active_record'];
				
				$return = array( 'html' => '
							<div style="padding:5px;">' . $record['first_name'] . ' ' . $record['last_name'] . '</div>
							<div style="position:relative;width:220px;height:100%;" class="default_line_height border_dashed_brown">
								<div class="padder_10">
								
									Pssssst, ' . $record['first_name'] . '. Want to save a stamp? RSVP online at 
									<span class="header_text_medium">coleandheather.com.</span>
									
									<div style="padding-bottom:7px;padding-top:7px;">
										Activation Code: <span style="font-weight:bold;">' . $record['activation_code'] . '</span>
									</div>
									
									While you\'re there check out gift registry information and pictures of the happy couple.
								</div>
							</div>
							'
				);
				break;
				
			default:
				throw new Exception( "Error: Invalid HTML command." );
				break;
		}
		
		return $return;
		
	}//getHtml()
		
}//class Rsvp
?>