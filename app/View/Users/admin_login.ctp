<?php

/**
 * Descrição do arquivo login
 *
 * @descrição
 * @versão 
 * @autor diego
 * @data 01/11/2012
 */
echo $this->Form->create('User', array('action' => 'login'));
echo $this->Form->inputs(array(
    'legend' => __('Login'),
    'username',
    'password'
));
echo $this->Form->end('Login');
?>
<?php echo $this->Html->link("Forget Password ?",array("controller"=>"users","action"=>"forgetpwd")); ?>