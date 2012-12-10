<div class="actions">
     <ul>
         <li><?php echo $this->Html->link(__('Edit'), array('controller' => 'posts', 'action' => 'edit', $post['Post']['id'])); ?></li>
         <li><?php echo $this->Form->postLink(__('Delete'), array('controller' => 'posts', 'action' => 'delete', $post['Post']['id']), null, __('Are you sure you want to delete # %s?')); ?></li>
     </ul>
</div>
<div class="node">
<h2><?php echo h($post['Post']['title']); ?></h2>
<div class="node-info">
    Autor: <span class="author"><?php echo $this->Html->link($post['User']['username'], array('controller' => 'users', 'action' => 'view', $post['User']['id'])); ?></span> |
    Criado em: <span class="date"><?php echo h($post['Post']['created']); ?></span>

</div>
<div class="node-body">
    <?php echo $post['Post']['body']; ?>
</div>
<div class="node-more-info">
    Postado na categoria: <?php echo $this->Html->link($post['Category']['name'], array('controller' => 'categories', 'action' => 'view', $post['Category']['id'])); ?>
<?php 
if ($post['Post']['created'] != $post['Post']['modified']){
  echo ' | Modificado em: '. $post['Post']['modified'];  
}
?>   
</div>

        <?php 
            if(count($post['Image']) == '0'){
                echo "";
            }else{
        ?>
	<h3><?php echo __('Imagens'); ?></h3>
	<?php if (!empty($post['Image'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Imagens'); ?></th>

	</tr>
	<?php
		$i = 0;
		foreach ($post['Image'] as $image): ?>
		<tr>    
                    
                    <?php
                    $nomeImg = $image['filename'];
                    ?>
                        <td><?php echo $this->Html->Image('/files/image/filename/'.$image['dir'].'/'.$image['filename'], array('alt' => $image['descricao'], 'title' => $image['descricao'],'width' => '250px', 'url' => array('controller' => 'images', 'action' => 'view', $image['id']))) ?></td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; }?>
</div>
