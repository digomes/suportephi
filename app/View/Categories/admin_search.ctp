    <?php echo $this->Form->create('Category', array('action' => 'search', 'type' => 'get')); ?>
	<fieldset>

	<?php
		echo $this->Form->input('q', array('label' => 'Digite o modelo para realizar a busca'));
	?>
	</fieldset>
        <?php echo $this->Form->end(__('Buscar')); ?>
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
                        Autor: <?php echo $category['User']['username']; ?>
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
                <div class="actions">
                    <ul>
                        <li><?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $category['Category']['id'])); ?></li>
                        <li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $category['Category']['id']), null, __('Are you sure you want to delete # %s?', $category['Category']['id'])); ?></li>
                    </ul>
			
			
			
		</div>
                </div>
	</div>
	<?php
		}
	?>

	<div class="paging">
            	<?php
		echo $this->Paginator->prev('<< ' . __('Previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => '  '));
		echo $this->Paginator->next(__('Next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
        </div>
        <?php } ?>
</div>