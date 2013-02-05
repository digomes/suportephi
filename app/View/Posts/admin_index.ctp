<div class="grid-12-12">
     <div class="grid-11-12">
        <?php echo $this->element('highlights'); ?>
    </div>   
<div class="grid-6-12">       
 <?php echo $this->Form->create('Post', array('action' => 'search')); ?>
	<fieldset>

                <?php echo $this->Form->input('q', array('label' => __('Search for Technical Information'))); ?>

            
	</fieldset>
        <?php echo $this->Form->end(__('Search')); ?>

<br />
</div>
<div class="grid-6-12">
        <?php echo $this->Form->create('Category', array('action' => 'search')); ?>
	<fieldset>

                
                    <?php echo $this->Form->input('q', array('label' => __('Search by Model'))); ?>
                
	
	</fieldset>
        <?php echo $this->Form->end(__('Search')); ?>
</div> 
</div>
<br />



	<?php
		//$i = 0;
		foreach ($posts as $post):
			
	?>
	<div id="node-1" class="node node-type-blog">
		<h2><?php echo $this->Html->link($post['Post']['title'], array('controller' => 'posts', 'action' => 'view', $post['Post']['id'])); ?></h2>
                <div class="node-info">
                    <!-<span class="author">
                        Autor: <?php echo $post['User']['name']; ?> |
                    </span>
                    <span class="date">
                        Categoria : <?php echo $this->Html->link($post['Category']['name'], array('controller' => 'categories', 'action' => 'view', $post['Category']['id'])); ?> | 
                        Postado em : <?php echo $post['Post']['created']; ?>
                    </span>
                    <div class="node-more-info">
                        <?php 
                            if ($post['Post']['created'] != $post['Post']['modified']){
                            echo '  Modificado em: '. $post['Post']['modified'];  
                            }
                        ?>  
                    </div>

                </div>
	</div>
    
	<?php endforeach; ?>
        
        <?php
	//echo $this->Paginator->counter(array(
	//'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	//));
	?>
        <br />
	<div class="paging">
            	<?php
		echo $this->Paginator->prev('<< ' . __('Previous  '), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => '  '));
		echo $this->Paginator->next(__('  Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>