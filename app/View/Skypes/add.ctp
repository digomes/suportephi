<div class="skypes form">
<?php echo $this->Form->create('Skype'); ?>
	<fieldset>
		<legend><?php echo __('Add Skype'); ?></legend>
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('skype');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Skypes'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category'), array('controller' => 'categories', 'action' => 'add')); ?> </li>
	</ul>
</div>
