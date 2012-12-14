<div class="users form">
<h2 class="hightitle"><?php echo __('Forget Password'); ?></h2>
  
<?php 

echo $this->Form->create('User', array('action' => 'forgetpwd')); 
echo $this->Form->input('email', array('label' => 'Digite o seu email'));

echo $this->Form->end('Submit'); 

?>
</div>