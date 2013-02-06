<div class="users form">
<h2 class="hightitle"><?php echo __('Forgot Password'); ?></h2>

<?php //echo $this->Form->create('User', array('action' => 'reset')); ?>
 
<?php
if(isset($errors)){
echo '<div class="error">';
echo "<ul>";
foreach($errors as $error){
 echo"<li><div class='error-message'>$error</div></li>";
}
echo"</ul>";
echo'</div>';
}
?>
 
<form method="post">
<?php
echo $this->Form->input('password',array("type"=>"password","name"=>"data[User][password]"));
echo $this->Form->input('password_confirm',array("type"=>"password","name"=>"data[User][password_confirm]"));
?>

 
<?php echo $this->Form->end(__('Save'));?>
</form>
</div>