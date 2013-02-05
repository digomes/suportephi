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

$cakeDescription = __d('cake_dev', 'Site de Suporte Técnico à Rede Autorizada');
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
                echo $this->Html->css(array(
                        //'/bootstrap/css/bootstrap.min',
                       // 'jquery-ui-1.8.4.custom',
                        'select2/select2'
                        ));                

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
                echo $this->Html->script(array(
                    'http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js',
                    'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js',
                    'bootstrap.min',
                    'select2.min',
                    'cbunny',
                    'autoCategory',
                    'addCampo'
                    ));                      
                echo $this->Html->script('ckeditor/ckeditor.js');
                //echo $this->Html->script('jquery.js');
                echo $this->Html->script('jtabber.js');
                echo $this->Html->script('jquery.datatables.js');
                echo $this->Html->script('jquery.datatables.min.js');
                //echo $this->Html->script('jquery.ui.js');
                echo $this->Html->script('galeria.js');
     
                $cbunny = array(
                    'APP_PATH' => Router::url('/',true)
                );

                echo $this->Html->scriptBlock('var CbunnyObj = ' . $this->Javascript->object($cbunny) . ';');


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
   $(".inativo").attr("readonly", true);
 });
</script>
<script type="text/javascript">
$(document).ready(function(){
        tooltip();//active les tooltip simple
        imagePreview();//active les tooltip image preview
        screenshotPreview();//active les tooltip lien avec preview
});
</script>
</head>
<body>
<div id="wrapper">
<div class="language">
    <ul>
        <li>
<?php echo $this->Html->link(
					$this->Html->Image('/img/br.png', array('alt' => '', 'title' => '')),
					array('language'=>'bra'),
					array('escape' => false)
				);
?>                      
        </li>
        <li>
<?php echo $this->Html->link(
					$this->Html->Image('/img/en.png', array('alt' => '', 'title' => '')),
					array('language'=>'eng'),
					array('escape' => false)
				);
?>            
        </li>
        <li>
<?php echo $this->Html->link(
					$this->Html->Image('/img/es.png', array('alt' => '', 'title' => '')),
					array('language'=>'esp'),
					array('escape' => false)
				);
?>              
        </li>
    </ul>
</div>    
    <div id="header">
        			<?php echo $this->Html->link(
					$this->Html->Image('/img/logo.png', array('alt' => '', 'title' => '', 'width' => '140px', 'height' => '80px;')),
					array('controller' => 'posts', 'action' => 'index'),
					array('escape' => false)
				);
			?>
		
    </div>
        <div id="nav-container">
        <div class="container_18">
            <div id="nav">
                <?php echo _($this->MenuBuilder->build('main-menu', array('class' => 'sf-menu sf-js-enabled'))); ?>
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
