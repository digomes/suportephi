<div class="users form">
<?php echo $this->Form->create('User'); ?>
	<fieldset>
		<legend><h2><?php echo __('Edit User'); ?></h2></legend>
	<?php
		echo $this->Form->input('id', array('type' => 'hidden'));
                echo $this->Form->input('name');
		echo $this->Form->input('username');
		echo $this->Form->input('password', array('value' => '', 'label' => 'Senha, caso queira alterar preencha este campo do contrário deixe em branco'));
		echo $this->Form->input('group_id', array('type' => 'hidden'));
		echo $this->Form->input('workshop_id', array('type' => 'hidden'));                
                echo $this->Form->input('email');
                echo $this->Form->input('active', array('type' => 'hidden', 'label' => 'Ativo ?'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

