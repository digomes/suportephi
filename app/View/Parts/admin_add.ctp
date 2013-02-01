<div class="parts form">
<?php echo $this->Form->create('Part', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo '<h2>Add Part</h2>'; ?></legend>
                
            <div class="grid-12-12">
              <?php echo $this->Form->input('category_id', array('type' => 'text', 'id' => 'category-select2')); ?>  
            </div>
                
            <div class="grid-12-12">
                <?php echo $this->Form->input('CsvFile', array('type' => 'file', 'label' => 'Selecione a lista de Peças')); ?>
            </div>                

	</fieldset>
            <div class="grid-12-12">
                <?php echo $this->Form->end(__('Submit')); ?>
            </div>

</div>
