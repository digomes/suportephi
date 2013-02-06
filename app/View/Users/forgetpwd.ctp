<div class="users form">
<h2 class="hightitle"><?php echo __('Forgot Password'); ?></h2>
<?php echo $this->Form->create('User', array('action' => 'forgetpwd')); ?>
<div class="grid-12-12">
    <?php echo $this->Form->input('email', array('label' => __('Enter your email address'))); ?>
</div>
<div class="grid-12-12">
    <?php echo $this->Form->end(__('Submit'));  ?>
</div>
</div>