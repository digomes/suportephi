<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       Cake.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

$cakeDescription = __d('cake_dev', 'Suporte PHI - Philips Television');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeDescription; ?>:
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');

		//echo $this->Html->css('cake.generic');
                echo $this->Html->css('reset');
                echo $this->Html->css('admin');
                //echo $this->Html->css('tickbox');
                echo $this->Html->css('960');
                echo $this->Html->css('post');
                echo $this->Html->css('datatables');

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
                
                echo $this->Html->script('ckeditor/ckeditor.js');
                echo $this->Html->script('ckfinder/ckfinder.js');
                echo $this->Html->script('jquery.js');
                echo $this->Html->script('jtabber.js');
                echo $this->Html->script('jquery.datatables.js');
                echo $this->Html->script('jquery.ui.js');                 
                

	?>
<script type="text/javascript">
$(document).ready(
function () {
    $('#codigos').dataTable({"bSort": false});  
}
);
</script> 
<script type="text/javascript">
$(document).ready(function(){
   $(".current").css({'background-color' : 'rgba(254,191,1,0.7)'});
 });
</script>
</head>
<body>
<div id="wrapper">
    <div id="header">
        			<?php echo $this->Html->link(
					$this->Html->Image('/img/logo.png', array('alt' => '', 'title' => '', 'width' => '140px', 'height' => '80px;')),
					array('controller' => 'posts', 'action' => 'index'),
					array('escape' => false)
				);
			?>
		
    </div>
        <div id="nav-container">
        <div class="container_16">
            <div id="nav">
                <?php echo $this->MenuBuilder->build('main-menu', array('class' => 'sf-menu sf-js-enabled')); ?>
            </div>    
        </div>
    </div>
        <div id="main" class="container_16">
            <div class="grid_16">
                <div id="content">
			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
                </div>
            </div>
            <div class="clear">&#32;</div>
        </div>      

 <div class="push"></div> 
</div>
    		<div id="footer">
			<?php /*echo $this->Html->link(
					$this->Html->image('cake.power.gif', array('alt' => $cakeDescription, 'border' => '0')),
					'http://www.cakephp.org/',
					array('target' => '_blank', 'escape' => false)
				);*/
			?>
		</div>
	<?php echo $this->element('sql_dump'); ?>
</body>
</html>
