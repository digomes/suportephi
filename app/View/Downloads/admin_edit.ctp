<div class="downloads form">
<?php echo $this->Form->create('Download'); ?>
	<fieldset>
		<legend><?php echo __('Edit Download'); ?></legend>
	<?php
		echo $this->Form->input('id');
                echo $this->Form->input('filename', array('type' => 'file', 'label' => 'Arquivo'));
		echo $this->Form->input('dir', array('type' => 'hidden'));
		echo $this->Form->input('mimetype', array('type' => 'hidden'));
		echo $this->Form->input('filesize', array('type' => 'hidden'));
		echo $this->Form->input('descricao', array('label' => 'Descrição'));
                echo $this->Form->input('Category.Category', array('type' => 'select', 'multiple' => 'checkbox', 'label' => 'Categorias', 'class' => 'grid-3-12'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

