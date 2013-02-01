<div class="downloadsCategories form">
<?php echo $this->Form->create('DownloadsCategory'); ?>
	<fieldset>
		<legend><?php echo __('Edit Downloads Category'); ?></legend>
	<?php
		echo $this->Form->input('download_id');
		echo $this->Form->input('category_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('DownloadsCategory.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('DownloadsCategory.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Downloads Categories'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Downloads'), array('controller' => 'downloads', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Download'), array('controller' => 'downloads', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category'), array('controller' => 'categories', 'action' => 'add')); ?> </li>
	</ul>
</div>
