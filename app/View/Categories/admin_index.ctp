<div class="grid-12-12">
     <div class="grid-11-12">
        <?php echo $this->element('highlights'); ?>
    </div>   
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
        <?php echo $this->Form->end(__('Search')); ?>
</div> 
</div>
<br />
<div class="nodes search">
 <?php //if(count($categories) == '0'){ echo __('<div id="flashMessage" class="message">There are no products registered</div>'); }?> 

	<?php
		foreach ($categories as $category) {
			
	?>
	
              <div id="node-1" class="node node-type-blog">      
		<h2><?php echo $this->Html->link($category['Category']['name'], array('action' => 'view', $category['Category']['id'])); ?></h2>
                <div class="node-info">
                    <span class="author">
                       
                    </span>
                    <span class="date">
                        <?php echo __('Posted in');?> : <?php echo $category['Category']['created']; ?>                         <?php 
                            if ($category['Category']['created'] != $category['Category']['modified']){
                            echo __(' | Modified : '). $category['Category']['modified'];  
                            }
                        ?> 
                    </span>
                    <div class="node-more-info">
 
                    </div>
                </div>
	</div>
	<?php
		}
	?>
    <div class="grid-12-12">
	<div class="paging">
            	<?php

		echo $this->Paginator->prev('<< ' . __('Previous '), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => '  '));
		echo $this->Paginator->next(__(' Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>
    </div>    
</div>
