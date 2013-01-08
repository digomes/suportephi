<div class="downloads form">
<?php echo $this->Form->create('Download', array('type' => 'file')); ?>
	<fieldset>
		<legend><h2>Adicionar Download</h2></legend>
	<?php
        
                echo $this->Form->input('filename', array('type' => 'file', 'label' => 'Arquivo'));
		echo $this->Form->input('dir', array('type' => 'hidden'));
		echo $this->Form->input('mimetype', array('type' => 'hidden'));
		echo $this->Form->input('filesize', array('type' => 'hidden'));
		echo $this->Form->input('descricao', array('label' => 'Descrição'));
               // echo '<div class="">';
                echo $this->Form->input('Category.Category', array('type' => 'select', 'multiple' => 'checkbox', 'label' => 'Categorias', 'class' => 'grid-3-12'));
                //echo '</div>';
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

