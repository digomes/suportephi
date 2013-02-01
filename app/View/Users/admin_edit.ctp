<div class="users form">
<?php echo $this->Form->create('User'); ?>
	<fieldset>
		<legend><?php echo __('Edit User'); ?></legend>
	<?php
		echo $this->Form->input('id', array('type' => 'hidden'));
                echo $this->Form->input('name');
		echo $this->Form->input('username');
		echo $this->Form->input('password', array('value' => ''));
		echo $this->Form->input('group_id');
                echo $this->Form->input('workshop_id');
                echo $this->Form->input('email');
                echo $this->Form->input('active', array('label' => 'Ativo ?'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

