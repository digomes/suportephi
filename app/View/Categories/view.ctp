<div class="node">
<h2><?php echo $category['Category']['name']; ?></h2>
<div class="node-info">
    
    Criado em: <span class="date"><?php echo h($category['Category']['created']); ?></span>

</div>

<div class="node-more-info">  
<?php 
if ($category['Category']['created'] != $category['Category']['modified']){
  echo '  Modificado em: '. $category['Category']['modified'];  
}
?>   
</div>
</div>
<div class="nodes search">
<br />
<h3><?php echo __('Informações do Produto'); ?></h3>

            <?php if (!empty($category['Post'])): ?>

	<?php
		//$i = 0;
		foreach ($posts as $post):
			
	?>
	<div id="node-1" class="node node-type-blog">
		<h2><?php echo $this->Html->link($post['Post']['title'], array('controller' => 'posts', 'action' => 'view', $post['Post']['id'])); ?></h2>
                <div class="node-info">
                    <!--<span class="author">
                        Autor: 
                    </span>-->
                    <span class="date">
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
        <p>
        <?php
	//echo $this->Paginator->counter(array(
	//'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	//));
	?>	</p>
	<div class="paging">
            	<?php
		echo $this->Paginator->prev('<< ' . __('Previous  '), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ' | '));
		echo $this->Paginator->next(__('  Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>
        <?php endif; ?>

</div>
