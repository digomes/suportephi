   <script type="text/javascript">
 
		$(document).ready(function(){
 
		$.jtabber({
			mainLinkTag: "#menu a", // much like a css selector, you must have a 'title' attribute that links to the div id name
			activeLinkClass: "selected", // class that is applied to the tab once it's clicked
			hiddenContentClass: "nodes-search", // the class of the content you are hiding until the tab is clicked
			showDefaultTab: 1, // 1 will open the first tab, 2 will open the second etc.  null will open nothing by default
			showErrors: true, // true/false - if you want errors to be alerted to you
			effect: 'slide', // null, 'slide' or 'fade' - do you want your content to fade in or slide in?
			effectSpeed: 'fast' // 'slow', 'medium' or 'fast' - the speed of the effect
		})
 
		})
 
</script>
<div id="menu" class="actions">
        <ul>
            <li><?php //echo $this->Html->link(__('Edit'), array('action' => 'edit', $category['Category']['id'])); ?></li>
            <li><?php //echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $category['Category']['id']), null, __('Are you sure you want to delete # %s?', $category['Category']['id'])); ?></li>
            <li><?php echo $this->Html->link(__('Informações Técnicas'), array('#', $category['Category']['id']), array('title' => 'info'))?></li>
            <li><?php echo $this->Html->link(__('Lista de Peças'), array('#', $category['Category']['id']), array('title' => 'lista'))?></li>
            <li><?php //echo $this->Form->postLink(__('Lista de Peças'), array('controller' => 'parts', 'action' => 'lista', $category['Category']['id']), array('target' => '_blank'))?></li>
        </ul>
</div>

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

<div id="info" class="nodes-search">
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
	?>
        </p>
	<div class="paging">
            	<?php
		echo $this->Paginator->prev('<< ' . __('Previous  '), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ' | '));
		echo $this->Paginator->next(__('  Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>
        <?php endif; ?>
</div>
        
<div id="lista" class="nodes-search">
<?php echo $this->element('parts', array('id' => $category['Category']['id'])); ?>
</div>