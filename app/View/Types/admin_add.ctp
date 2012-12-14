<div class="nodes form">
<?php echo $this->Form->create('Type'); ?>
	<fieldset>
            <legend><h2><?php echo __('Add Type'); ?></h2></legend>
	<?php
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

