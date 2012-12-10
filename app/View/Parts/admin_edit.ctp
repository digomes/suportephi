<div class="parts form">
<?php echo $this->Form->create('Part'); ?>
	<fieldset>
		<legend><?php echo __('Edit Part'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('category_id');
		echo $this->Form->input('posicao');
		echo $this->Form->input('seguranca');
		echo $this->Form->input('codigo');
		echo $this->Form->input('nome');
		echo $this->Form->input('exibe');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
