<div class="parts form">
<?php echo $this->Form->create('Part', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Part'); ?></legend>
	<?php
                echo $this->Form->input('category_id');
                echo $this->Form->input('CsvFile', array('type' => 'file', 'label' => 'Selecione a lista de Peças'));
		/*echo $this->Form->input('dir', array('type' => 'hidden'));
                
		echo $this->Form->input('posicao');
		echo $this->Form->input('seguranca');
		echo $this->Form->input('codigo');
		echo $this->Form->input('nome');
		echo $this->Form->input('exibe');*/
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
