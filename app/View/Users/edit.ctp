<div class="users form">
<?php echo $this->Form->create('User'); ?>
	<fieldset>
		<legend><?php echo __('Edit User'); ?></legend>
	<?php
		echo $this->Form->input('id', array('type' => 'hidden'));
                echo $this->Form->input('name');
		echo $this->Form->input('username');
		echo $this->Form->input('password');
		echo $this->Form->input('group_id', array('type' => 'hidden'));
                echo $this->Form->input('email');
                echo $this->Form->input('active', array('label' => 'Ativo ?'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Menu'); ?></h3>
        <?php echo $this->MenuBuilder->build('main-menu', array('class' => 'menu')); ?>
</div>
