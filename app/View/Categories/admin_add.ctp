<div class="categories form">
<?php echo $this->Form->create('Category'); ?>
	<fieldset>
		<legend><h2><?php echo __('Add Category'); ?></h2></legend>
	<?php
		echo $this->Form->input('name', array('label' => 'Nome da Categoria'));
                echo $this->Form->input('user_id', array('label' => 'Selecione o usuário que irá receber o email de notificação'));
                echo $this->Form->input('type_id', array('label' => 'Selecione o tipo da categoria'));
		echo $this->Form->input('Group.Group', array('type' => 'select', 'multiple' => 'checkbox', 'label' => 'Selecione o grupo que poderá visualizar essa categoria'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
