<?
/**
 * Controls the content page.
 * @since	20100425, halfNerd
 */

require_once( "cah/Guest.php" );
require_once( "cah_base/View.php" );
require_once( "cah_base/User.php" );
require_once( "cah_base/Article.php" );
require_once( "cah_base/Section.php" );
require_once( "cah_base/Setting.php" );
require_once( "cah_base/Controller.php" );
require_once( "cah_base/Permission.php" );
require_once( "cah_base/Authentication.php" );

class Admin extends Controller{
	
	/**
	 * Constructs the Contact controller object.
	 * @return 	Contact
	 * @param	array			$controller_vars		array of variables for current layout.				
	 */
	public function __construct( $controller_vars )
	{
		parent::setControllerVars( $controller_vars );
		
		$this->m_valid_views = array(
			'greeting' => "",
			'manage-pages' => "Pages",
			'manage-permissions' => "Permissions",
			'manage-posts' => "Posts",
			'rsvp-stats' => "RSVP Stats",
			'guest-list' => "Guest List",
			'manage-settings' => "Settings", 
			'manage-users' => "Users"
		);
		
	}//constructor
	
	/**
	 * @see classes/base/Controller#setContent()
	 */
	public function setContent() 
	{
		$this->m_controller_vars['sub'] = $this->validateCurrentView();
		
		$content = $this->getHtml( $this->m_controller_vars['sub'] );
		$nav = $this->getHtml( "admin-nav" );
		
		$this->m_content = '
		
		<div class="grid_3">
			<div class="go_to_site_link">
				<a href="' . $this->m_common->makeLink( array( 'v' => "index" ) ) . '">
					&lt;&lt; Go To Site
				</a>
			</div>	
			' . $nav['html'] . '
		</div>
		
		<div class="grid_9">				
			<div class="title_bar header center padder_15 bg_gradient_linear color_orange">
				' . $content['title'] . ' 
				' . $content['title_button'] . '
			</div>
			' . $content['html'] . '
		</div>
		
		<div class="clear"></div>
		';
	}//setContent()
	
	/**
	 * Outputs the html nav.
	 * @since	20100726, hafner
	 * @return	string
	 */
	public function getHtml( $cmd, $vars = array() )
	{
	
		switch( strtolower( trim( $cmd ) ) )
		{
			case "greeting":
				
				$title = "Welcome To The Halfnerd Admin Section";
				$title_button = '';
				
				$html = '
				<p>
					This is the administration section. This is where you can control the bits of text, images, navigation, and 
					even control the user access. It\'s the controller center for the entire site. In other words: This is where 
					all the magic happens.
				</p>
				
				<p>
					It was designed with simplicity in mind. Just click on an option in the left hand menu and you\'re on your way.
				</p>
				
				<p>
					Go ahead, give it a try. You\'ll love it!
				</p>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "admin-nav":
			
				$title = "";
				$title_button = '';
				
				$html = '
				<div class="admin_menu_container rounded_corners padder bg_color_light_tan">
				
					<div class="bg_color_white center header padder rounded_corners color_orange">
						Admin Options
					</div>
					
					<div class="padder_15 padder_no_top padder_no_bottom">
						<ul class="main_nav_list">
						';
						
			foreach( $this->m_valid_views as $sub => $display )
			{
				if( $sub != "greeting" )
				{
					$selected = ( $this->m_controller_vars['sub'] == $sub ) ? 'class="selected"' : '';
					$pointer = ( $this->m_controller_vars['sub'] == $sub ) ? '&nbsp;&gt;&gt;' : '';
					
					$html .= '
							<li>
								<a ' . $selected . ' href="' . $this->m_common->makeLink( array( 'v' => "admin", 'sub' => $sub ) ) . '">
									' . $display . $pointer . '
								</a>
							</li>
							';
				}
			}
						
			$html .= '
						</ul>
					</div>
						
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "manage-posts":
			
				$title = 'Manage Posts';
				
				$title_button = '
				<div class="title_button_container">
					
					' . Common::getHtml( "get-button-round", array(
						'id' => "article",
						'process' => "show_add",
						'pk_name' => "article_id",
						'pk_value' => "0",
						'button_value' => "+",
						'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
						'link_style' => 'style="float:right;"' ) ) . '
						
					' . Common::getHtml( "get-button-round", array(
						'id' => "section",
						'process' => "show_manager",
						'pk_name' => "section_id",
						'pk_value' => "0",
						'button_value' => "Manage Sections",
						'inner_div_style' => 'style="padding-top:4px;padding-left:1px;"',
						'link_style' => 'style="float:right;width:100px;font-size:10px;"'
					) ) . '

				</div>
				';
				
				$articles = Article::getArticles( "active", "1" );
				$article_list = $this->getHtml( "get-post-list", array( 'records' => $articles ) );
				
				$html = '
				<div class="item_list_container" id="article_list_container">
					' . $article_list['html'] . '
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "get-post-list":
			
				$articles = $vars['records'];
				$add_form = Article::getHtml( "get-edit-form", array( 'active_record' => new Article( 0 ) ) );
				$section_manager = Section::getHtml( "get-section-manager", array() );
				
				$html = '
				<div id="section_manager" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
					' . $section_manager['html'] . '
				</div>
				
				<div id="article_canvas_add" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
					' . $add_form['html'] . '
				</div>
				
				<ul id="article_list">
				';
				
				if( count( $articles ) > 0 )
				{
					foreach( $articles as $i => $a )
					{
						$view_form = Article::getHtml( "get-view-form", array( 'active_record' => $a ) );
						$mod_form = Article::getHtml( "get-edit-form", array( 'active_record' => $a ) );
						$delete_form = Article::getHtml( "get-delete-form", array( 'active_record' => $a ) );

						$html .= '
					<li id="item_' . $a->m_article_id . '">
						<div class="item_container padder_10 rounded_corners bg_color_light_tan" hover_enabled="1">
						
							<div id="article_info_' . $a->m_article_id . '">						
								' . $view_form['html'] . '
							</div>
												
							<div id="article_canvas_mod_' . $a->m_article_id . '" style="display:none;">
								' . $mod_form['html'] . '
							</div>
							
							<div id="article_canvas_delete_' . $a->m_article_id . '" style="display:none;">
								' . $delete_form['html'] . '
							</div>
							
							<div class="title_button_container" id="item_control" style="display:none;">
								
								' . Common::getHtml( "get-button-round", array(
									'id' => "article",
									'process' => "show_mod",
									'pk_name' => "article_id",
									'pk_value' => $a->m_article_id,
									'button_value' => "m",
									'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
									'link_style' => 'style="float:right;"' ) ) . '
									
								' . Common::getHtml( "get-button-round", array(
									'id' => "article",
									'process' => "show_delete",
									'pk_name' => "article_id",
									'pk_value' => $a->m_article_id,
									'button_value' => "x",
									'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
									'link_style' => 'style="float:right;"' ) ) . '
									
									<div class="clear"></div>
							</div>

						</div>
					</li>
					';
					
					}
				
				}
				else
				{
					$html .= '
					<li id="0">
						<div class="article_container center" style="border-style:hidden;">
							There are 0 Articles, sucka!!!
						</div>
					</li>
					';
				}
				
				$html .= '
				</ul>
				';
				
				$return = array( 'html' => $html );
				break;
				
			case "manage-pages":
				$title = 'Manage Pages';
				
				$title_button = '
				<div class="title_button_container">
				
				' . Common::getHtml( "get-button-round", array(
					'id' => "view",
					'process' => "show_add",
					'pk_name' => "view_id",
					'pk_value' => "0",
					'button_value' => "+",
					'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
					'link_style' => 'style="float:right;"'
				 ) ) . '
				 
				' . Common::getHtml( "get-button-round", array(
					'id' => "view",
					'process' => "show_reorder",
					'pk_name' => "view_id",
					'pk_value' => "0",
					'button_value' => "Reorder Pages",
					'inner_div_style' => 'style="padding-top:4px;padding-left:1px;"',
					'link_style' => 'style="float:right;width:90px;font-size:10px;"'
				) ) . '

				</div>
				';
				
				$views = View::getViews( "active", "1" );
				$view_list = $this->getHtml( 'get-page-list', array( 'records' => $views, 'hover_enabled' => TRUE, 'list_type' => "normal" ) );
				
				$html = '
				<div class="item_list_container" id="view_list_container">			
					' . $view_list['html'] . '
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "get-page-list":
							
				$views = $vars['records'];
				$reorder_form = View::getHtml( "get-reorder-form", array() );
				$add_form = View::getHtml( "get-edit-form", array( 'active_record' => new View( 0 ) ) );
				$hover_enabled = ( array_key_exists( "hover_enabled", $vars ) && $vars['hover_enabled'] == TRUE ) ? "1" : "0";
				
				if( $vars['list_type'] == "normal" )
				{
					$html = '
				<div id="view_canvas_add" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
					' . $add_form['html'] . '
				</div>
				';
				}
				else if( $vars['list_type'] == "reorder" )
				{
					$html .= '
				<div id="view_canvas_reorder" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
					' . $reorder_form['html'] . '
				</div>
				';
				}
				
				$html .= '
				<ul id="view_list">
				';
				
				if( count( $views ) > 0 )
				{
					foreach( $views as $i => $v )
					{
						$view_form = View::getHtml( "get-view-form", array( 'active_record' => $v ) );
						$mod_form = View::getHtml( "get-edit-form", array( 'active_record' => $v ) );
						$delete_form = View::getHtml( "get-delete-form", array( 'active_record' => $v ) );
						
						$html .= '
						<li id="item_' . $v->m_view_id . '">
							<div class="item_container padder_10 rounded_corners bg_color_light_tan" hover_enabled="' . $hover_enabled . '">
							
								<div id="view_info_' . $v->m_view_id . '">						
									' . $view_form['html'] . '
								</div>
													
								<div id="view_canvas_mod_' . $v->m_view_id . '" style="display:none;">
									' . $mod_form['html'] . '
								</div>
								
								<div id="view_canvas_delete_' . $v->m_view_id . '" style="display:none;">
									' . $delete_form['html'] . '
								</div>
								
								<div class="title_button_container" id="item_control" style="display:none;">
								';
								
								$html .= '
									' . Common::getHtml( "get-button-round", array(
										'id' => "view",
										'process' => "show_mod",
										'pk_name' => "view_id",
										'pk_value' => $v->m_view_id,
										'button_value' => "m",
										'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
										'link_style' => 'style="float:right;"' ) ) . '
										';
										
								if( strtolower( $v->m_controller_name ) != "admin" &&
									strtolower( $v->m_controller_name ) != "index" )
								{
									$html .= '
									' . Common::getHtml( "get-button-round", array(
										'id' => "view",
										'process' => "show_delete",
										'pk_name' => "view_id",
										'pk_value' => $v->m_view_id,
										'button_value' => "x",
										'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
										'link_style' => 'style="float:right;"' ) ) . '
									';
								}
								
								$html .= '
										<div class="clear"></div>
									
								</div>
								';
								
								if( $vars['list_type'] == "reorder" )
								{
									$html .= Common::getHtml( "get-reorder-tab", array() );
								}
								
						$html .= '
	
							</div>
						</li>
						';
					
					}//end loop through views
					
				}//if there are any views
				else
				{
					$html .= '
						<li id="view_item_0">
							<div class="article_container center" style="border-style:hidden;">
								There are 0 Views, sucka!!!
							</div>
						</li>
					';
				}
				
				$html .= '
					</ul>
					';
				
				$return = array( 'html' => $html );
				break;
											
			case "manage-users":
				$title = "Manage Users";
				
				$title_button = '
				<div class="title_button_container" style="width:auto;">
				
				' . Common::getHtml( "get-button-round", array(
						'id' => "user",
						'process' => "show_add",
						'pk_name' => "user_id",
						'pk_value' => "0",
						'button_value' => "+",
						'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
						'link_style' => 'style="float:right;"') 
					) . '
					
					' . Common::getHtml( "get-button-round", array(
						'id' => "user_type",
						'process' => "show_manager",
						'pk_name' => "user_type_id",
						'pk_value' => "0",
						'button_value' => "Manage Types",
						'inner_div_style' => 'style="padding-top:4px;padding-left:1px;font-size:10px;"',
						'link_style' => 'style="float:right;width:90px;"') 
					) . '
				 
				 </div>
				';
				
				$user_type_manager = UserType::getHtml( "get-manager", array() );
				$user_list = $this->getHtml( "get-user-list", array( 'records' => User::getUsers( "active", "1" ) ) );
				$add_form = User::getHtml( "get-edit-form", array( 'active_record' => new User( 0 ) ) );
				
				$html = '
				<div class="item_list_container">
					
					<div id="user_type_manager" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
						' . $user_type_manager['html'] . '
					</div>
					
					<div id="permission_manager" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
						' . $user_type_manager['html'] . '
					</div>
					
					<div id="user_canvas_add" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
						' . $add_form['html'] . '
					</div>
	
					<div class="rounded_corners border_dark_grey margin_10_top" id="user_list_container">
						' . $user_list['html'] . '
					</div>
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "get-user-list":
				$return = User::getHtml( "get-user-grid", array(
					'records' => $vars['records'], 
					'container_class' => "item_container",
					'container_style' => 'style="margin-top:0px;"',
					'show_controls' => TRUE,
					'hover_enabled' => "1" ) 
				);
				break;
				
			case "manage-permissions":
				$title = "Manage User Permissions";
				
				$title_button = '
				<div class="title_button_container" style="width:auto;">
				
				' . Common::getHtml( "get-button-round", array(
						'id' => "permission",
						'process' => "show_add",
						'pk_name' => "permission_id",
						'pk_value' => "0",
						'button_value' => "+",
						'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
						'link_style' => 'style="float:right;"') 
					) . '
				 
				 </div>
				';
				
				
				$permission_list = $this->getHtml( "get-permission-list", array( 'records' => Permission::getPermissions( "active", "1" ) ) );
				$add_form = Permission::getHtml( "get-edit-form", array( 'active_record' => new Permission( 0 ) ) );
				
				$html = '
				<div class="item_list_container">
					
					<div id="permission_canvas_add" class="item_container padder_10 rounded_corners bg_color_light_tan" style="display:none;" hover_enabled="0">
						' . $add_form['html'] . '
					</div>
	
					<div class="user_container" id="permission_list_container">
						' . $permission_list['html'] . '
					</div>
					
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "get-permission-list":
				
				$records = $vars['records'];
				
				$html = '
				<ul id="permission_list">
				';
				
				if( count( $records ) > 0 )
				{
					foreach( $records as $i => $p )
					{
						$view_form = Permission::getHtml( "get-view-form", array( 'active_record' => &$p ) );
						$mod_form = Permission::getHtml( "get-edit-form", array( 'active_record' => &$p ) );
						$delete_form = Permission::getHtml( "get-delete-form", array( 'active_record' => &$p ) );
						
						$html .= '
						<li id="item_' . $p->m_permission_id . '">
							<div class="item_container padder_10 rounded_corners bg_color_light_tan" hover_enabled="1">
							
								<div id="permission_info_' . $p->m_permission_id . '">						
									' . $view_form['html'] . '
								</div>
													
								<div id="permission_canvas_mod_' . $p->m_permission_id . '" style="display:none;">
									' . $mod_form['html'] . '
								</div>
								
								<div id="permission_canvas_delete_' . $p->m_permission_id . '" style="display:none;">
									' . $delete_form['html'] . '
								</div>
								
								<div class="title_button_container" id="item_control" style="display:none;">
								';
										
								if( strtolower( $p->m_alias ) != "spr" )
								{
									$html .= '
									' . Common::getHtml( "get-button-round", array(
										'id' => "permission",
										'process' => "show_mod",
										'pk_name' => "permission_id",
										'pk_value' => $p->m_permission_id,
										'button_value' => "m",
										'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
										'link_style' => 'style="float:right;"' ) ) . '

									' . Common::getHtml( "get-button-round", array(
										'id' => "permission",
										'process' => "show_delete",
										'pk_name' => "permission_id",
										'pk_value' => $p->m_permission_id,
										'button_value' => "x",
										'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
										'link_style' => 'style="float:right;"' ) ) . '
									';
								}
								else 
								{
									$html .= '
									<div class="font_no padder" style="float:right;">
										Cannot Edit
									</div>
									';
								}
								
								$html .= '
										<div class="clear"></div>
									
								</div>
								
							</div>
						</li>
						';
					
					}//end loop through views
					
				}//if there are any views
				else
				{
					$html .= '
						<li id="view_item_0">
							<div class="article_container center" style="border-style:hidden;">
								There are 0 Views, sucka!!!
							</div>
						</li>
					';
				}
				
				$html .= '
					</ul>
					';
				
				$return = array( 'html' => $html );
				break;
				
			case "manage-settings":
				
				$title = 'Manage Settings';
				
				$title_button = '
				<div class="title_button_container">
					' . Common::getHtml( "get-button-round", array(
						'id' => "setting",
						'process' => "show_add",
						'pk_name' => "setting_id",
						'pk_value' => "0",
						'button_value' => "+",
						'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
						'link_style' => 'style="float:right;"'
					 ) ) . '
				</div>
				';
				
				$add_html = Setting::getHtml( 'get-add-form', array( 'active_record' => new Setting( 0 ) ) );
				$setting_list = $this->getHtml( 'get-setting-list', array( 'records' => Setting::getSettings( "active", "1" ) ) );
				
				$html = '
				<div id="setting_canvas_add" class="margin_10_top padder_10 rounded_corners bg_color_light_tan" style="display:none;">
					' . $add_html['html'] . '
				</div>
					
				<div class="item_list_container border_dark_grey rounded_corners margin_10_top" id="setting_list_container">
				
					<div id="setting_list_container">
						' . $setting_list['html'] . '
					</div>
						
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "get-setting-list":
				
				$items_per_row = 2;
				$records = $vars['records'];
				$num_items = count( $records );
				$num_rows = ceil( $num_items / $items_per_row );
				
				if( $num_items > 0 )
				{
					$html = '
				<table class="user_grid">
				';
				
					for( $i = 0; $i < $num_rows; $i++ )
					{
						$html .= '
					<tr>			
								';
							
						for( $j = 1; $j <= $items_per_row; $j++ )
						{
						
							$key = $j + ( $items_per_row * $i );
							
							if( $key > $num_items )
							{
								//add empty cell
								$html .= '
						<td>
							&nbsp;
						</td>
						';
								break;
							}
							
							$item = $records[$key];
							$form_vars = array( 'active_record' => $item );
							$view_form = Setting::getHtml( "get-view-form", $form_vars );
							$edit_form = Setting::getHtml( "get-edit-form", $form_vars );
							$delete_form = Setting::getHtml( "get-delete-form", $form_vars );
							
							$html .= '
						<td valign="top">
							<div class="item_container bg_color_light_tan border_dark_grey" style="margin-top:0px;" hover_enabled="1">
							
								<div id="setting_info_' . $item->m_setting_id . '">
									' . $view_form['html'] . '
								</div>
								
								<div id="setting_canvas_mod_' . $item->m_setting_id . '" style="display:none;">
									' . $edit_form['html'] . '
								</div>
								
								<div id="setting_canvas_delete_' . $item->m_setting_id . '" style="display:none;">
									' . $delete_form['html'] . '
								</div>
								
								<div class="title_button_container" id="item_control" style="display:none;width:100px;height:40px;">
									' . Common::getHtml( "get-button-round", array(
										'id' => "setting",
										'process' => "show_modify",
										'pk_name' => "setting_id",
										'pk_value' => $item->m_setting_id,
										'button_value' => "m",
										'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
										'link_style' => 'style="float:right;"') 
									) . '
									' . Common::getHtml( "get-button-round", array(
										'id' => "setting",
										'process' => "show_delete",
										'pk_name' => "setting_id",
										'pk_value' => $item->m_setting_id,
										'button_value' => "x",
										'inner_div_style' => 'style="padding-top:2px;padding-left:1px;"',
										'link_style' => 'style="float:right;"') 
									) . '
								</div>
								
							</div>
						</td>
						';
						
						}
						
						$html .= '
					</tr>
					';	
								
					}

					$html .= '
				</table>
				';
					
				}
				else
				{
					$html = '
					<div class="center padder_10">
						There are 0 settings...
					</div>
					';
				}
				
				$return = array( 'html' => $html );
				break;
				
			case "rsvp-stats":
				
				$title = "RSVP Stats";
				$stats = Guest::getStats();
				$lists = Guest::getGuestLists();
				
				$html = '
				<table class="rsvp_stats">
					<tr>
						<td>
							<div class="rsvp_stat rounded_corners border_tan center bg_color_light_tan">
								<div class="padder">
									<div class="bg_color_white center header padder rounded_corners color_orange">
										Attending
									</div>
									<div class="rsvp_num color_accent font_big">
										' . $stats['attending']. ' 
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="rsvp_stat rounded_corners border_tan center bg_color_light_tan">
								<div class="padder">
									<div class="bg_color_white center header padder rounded_corners color_orange">
										Not Attending
									</div>
									<div class="rsvp_num color_accent font_big">
										' . $stats['not_attending']. ' 
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="rsvp_stat rounded_corners border_tan center bg_color_light_tan">
								<div class="padder">
									<div class="bg_color_white center header padder rounded_corners color_orange">
										New Guests
									</div>
									<div class="rsvp_num color_accent font_big">
										' . $stats['new']. ' 
									</div>
								</div>
							</div>
						</td>
						<td>
							<div class="rsvp_stat rounded_corners border_tan center bg_color_light_tan">
								<div class="padder">
									<div class="bg_color_white center header padder rounded_corners color_orange">
										% Replied
									</div>
									<div class="rsvp_num color_accent font_big">
										' . substr( $stats['replied']/$stats['total'], 0, 4 ) * 100 . ' 
									</div>
								</div>
							</div>
						</td>
					</tr>
				</table>
				
				<div style="position:relative;margin:15px auto auto auto;width:650px;">
				
					<div class="guest_list_container border_tan" style="margin-right:22px;">
					
						<div class="font_med padder bg_color_light_tan">
							Not Attending
						</div>
						
						<div class="padder">
							<table class="guest_list font_med_II color_accent">
							';
				
				foreach( $lists['not_attending'] as $i => $g )
				{
					$html .= '
								<tr>
									<td>
										' . $g->m_last_name . ', ' . $g->m_first_name . '
									</td>
								</tr>
								';	
				}
				
				$html .= '
							</table>
						</div>
					</div>
							
					<div class="guest_list_container border_tan" style="margin-right:22px;">
					
						<div class="font_med padder bg_color_light_tan">
							Attending
						</div>
						
						<div class="padder">
							<table class="guest_list font_med_II color_accent">
							';
				
				foreach( $lists['attending'] as $i => $g )
				{
					$html .= '
								<tr>
									<td>
										' . $g->m_last_name . ', ' . $g->m_first_name . '
									</td>
								</tr>
								';
				}
				
				$html .= '
							</table>
						</div>
					</div>
							
					<div class="guest_list_container border_tan">
					
						<div class="font_med padder bg_color_light_tan">
							New
						</div>
						
						<div class="padder">
							<table class="guest_list font_med_II color_accent">
							';
				
				foreach( $lists['new'] as $i => $g )
				{
					$html .= '
								<tr>
									<td>
										' . $g->m_last_name . ', ' . $g->m_first_name . '
									</td>
								</tr>
								';
				}
				
				$html .= '
							</table>
						</div>
					</div>
					
					<div class="guest_list_container border_tan" style="margin-top:20px;">
					
						<div class="font_med padder bg_color_light_tan">
							Most Recent
						</div>
						
						<div class="padder">
							<table class="guest_list font_med_II color_accent">
							';
				
				foreach( $lists['most_recent'] as $i => $g )
				{
					$attending = ( $g->m_is_attending === TRUE ) ? "Y" : "N";
					
					$html .= '
								<tr>
									<td>
										' . $g->m_last_name . ', ' . $g->m_first_name . ' (' . $attending . ')
									</td>
								</tr>
								';
				}
				
				$html .= '
							</table>
						</div>
					</div>
					
					<div class="clear"></div>
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => "", 'html' => $html );
				break;
				
			case "guest-list":
				
				$title = "Complete Guest List";
				$guests = Guest::getGuestListComplete();
				$list_html = self::getHtml( "get-complete-guest-list", array( 'guests' => $guests ) );
				$filter_html = Guest::getHtml( 'get-list-filter', array() );
				
				$title_button = '
				<div class="title_button_container">
					' . Common::getHtml( "get-button-round", array(
						'id' => "guest_list",
						'process' => "show_filter",
						'pk_name' => "guest_list_id",
						'pk_value' => "0",
						'button_value' => "Filter List",
						'inner_div_style' => 'style="padding-top:4px;padding-left:1px;"',
						'link_style' => 'style="float:right;width:70px;font-size:10px;"'
					 ) ) . '
				</div>
				';
				
				$html = '
				<div id="guest_list_filter" class="margin_10_top padder_10 rounded_corners bg_color_light_tan" style="display:none;">
					' . $filter_html['html'] . '
				</div>
				
				<div style="position:relative;margin:15px auto auto auto;width:100%;">
				
					<div class="padder" id="guest_list_container">
						' . $list_html['html'] . '
					</div>	
				</div>
				';
				
				$return = array( 'title' => $title, 'title_button' => $title_button, 'html' => $html );
				break;
				
			case "get-complete-guest-list":
				
				$guests = $vars['guests'];
				
				$html = '
				<table class="guest_list font_med_II color_accent" style="width:100%;border-collapse:collapse;">
					<tr class="font_med bg_color_light_tan">
						<td class="padder" style="width:33%;">
							Guest Name
						</td>
						<td class="padder" style="width:33%;">
							Replied?
						</td>
						<td class="padder" style="width:33%;">
							Attending?
						</td>
					</tr>
					';
				
				foreach( $guests as $i => $g )
				{
					$is_attending = "-";
					$bg_class = ( $i%2 ) ? 'class="bg_color_light_tan"' : '';
					$has_replied = ( !is_null( $g->m_update_timestamp ) ) ? "Yes" : "No";
					if( $has_replied == "Yes" )$is_attending = ( $g->m_is_attending === TRUE ) ? "Yes" : "No";
					
					$html .= '
					<tr ' . $bg_class . '>
						<td class="padder">
							' . $g->m_last_name . ', ' . $g->m_first_name . '
						</td>
						<td class="padder">
							' . $has_replied . '
						</td>
						<td class="padder">
							' . $is_attending . '
						</td>
					</tr>
					';	
				}
				
				$html .= '
				</table>
				';
				
				$return = array( 'html' => $html ); 
				break;
			
			default:
				throw new Exception( "Error: HTML command '" . $cmd . "' is invalid." );
				break;
				
		}//end switch
		
		return $return;
		
	}//getHtml()
	
	/**
	 * @see classes/base/Controller#getContent()
	 */
	public function getContent() {
		return $this->m_content;
	}//getContent()
		
}//class Admin
?>