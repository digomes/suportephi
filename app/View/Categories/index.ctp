<div class="grid-12-12">
<div class="grid-6-12">       
 <?php echo $this->Form->create('Post', array('action' => 'search', 'type' => 'get')); ?>
	<fieldset>

                <?php echo $this->Form->input('q', array('label' => __('Search for Technical Information'))); ?>

            
	</fieldset>
        <?php echo $this->Form->end(__('Search')); ?>

<br />
</div>
<div class="grid-6-12">
        <?php echo $this->Form->create('Category', array('action' => 'search', 'type' => 'get')); ?>
	<fieldset>

                
                    <?php echo $this->Form->input('q', array('label' => __('Search by Model'))); ?>
                
	
	</fieldset>
        <?php echo $this->Form->end(__('Buscar')); ?>
</div> 
</div>
<br />
<div class="nodes search">

	<?php
        //start if
            if(count($categories) == '0'){
                echo '<div id="flashMessage" class="message">Nenhuma categoria disponível para visualizar</div>';
            }else{


	?>

	<?php
		foreach ($categories as $category) {
			
	?>
	<div id="node-1" class="node node-type-blog">
		<h2><?php echo $this->Html->link($category['Category']['name'], array('action' => 'view', $category['Category']['id'])); ?></h2>
                <div class="node-info">
                    <span class="author">

                    </span>
                    <span class="date">
                        Postado em : <?php echo $category['Category']['created']; ?>
                    </span>
                    <div class="node-more-info">
                        <?php 
                            if ($category['Category']['created'] != $category['Category']['modified']){
                            echo '  Modificado em: '. $category['Category']['modified'];  
                            }
                        ?>  
                    </div>
                </div>
	</div>
	<?php
		}
	?>
    <br />
	<div class="paging">
            	<?php

		echo $this->Paginator->prev('<< ' . __('Previous '), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => '  '));
		echo $this->Paginator->next(__(' Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>
        <?php } ?>
</div>
