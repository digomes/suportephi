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
 
                //echo $this->Form->input('Category.Category', array('type' => 'select', 'multiple' => 'checkbox', 'label' => 'Categorias', 'class' => 'grid-3-12'));
                //echo '</div>';
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>

<!--
			<div class="form_row"> 
                <label>Component Part:</label>
                
                    <div class="addcomp">
                    <p class="campoaddcomp">
                    <input name="posicao[]" class="input required" style="width:50px;" />
                         <a href="#" class="removerCampo">Remover Campo</a>
						 
                    </p>
                   </div>
                    <p>
			<ul class="icons" class="ui-widget ui-helper-clearfix">
			<a href="#" class="adicionarCampo">
                            <li class="ui-state-default ui-corner-all" title="Adicionar campo">
                                <span class="ui-icon ui-icon-plusthick"/>Adicionar Campo</span>
                            </li>
                        </a>
			</ul>
		    </p>

			</div>

-->