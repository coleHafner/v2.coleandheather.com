<?
require_once( "cah_base/Common.php" );
require_once( 'cah_base/Layout.php' );

$common = new Common();
$paths = $common->getPathInfo();
$layout = new Layout( array() );

//grab start address
$start = implode( " ", explode( "_", $_GET['start'] ) );

echo $layout->getHtmlHeadSection();
echo '
	<body onLoad="mapShowRoute( \'' . $start . '\' );">
		<div class="container_12">
			<div class="grid_12">
				<div id="map_canvas" style="position:relative;height:350px;background-color:#FFF;margin-top:10px;">
				</div>
			</div>
			
			<div class="clear"></div>
		</div>
		
		<div class="container_12">
			<div class="grid_12">
				<div class="content" style="margin-bottom:50px;">
					<div class="padder_10" id="directions_canvas"> 
					</div>
				</div>
			</div>
			
			<div class="clear"></div>
		</div>
	</body>
</html>
';
?>