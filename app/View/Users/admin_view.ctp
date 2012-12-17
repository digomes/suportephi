<div class="container"> 
<div class="grid-5-12">
    <label for=""><?php echo __('Username'); ?></label>
    <input type="text" value="<?php echo h($user['User']['username']); ?>" readonly="true"/>
</div>   
<div class="grid-12-12">
    <label for=""><?php echo __('Group'); ?></label>
<?php echo $this->Html->link($user['Group']['name'], array('controller' => 'groups', 'action' => 'view', $user['Group']['id'])); ?>
</div>   
<div class="grid-6-12">
    <label for=""><?php echo __('Created'); ?></label>
    <input type="text" value="<?php echo h($user['User']['created']); ?>" readonly="true"/>
</div>   
<div class="grid-6-12">
    <label for=""><?php echo __('Modified'); ?></label>
    <input type="text" value="<?php echo h($user['User']['modified']); ?>" readonly="true" />
</div>       
   
</div>

<div class="related">
	<h3></h3>
	<?php if (!empty($user['Post'])): ?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php echo __('Title'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($user['Post'] as $post): ?>
		<tr>
			<td><?php echo $this->Html->link(__($post['title']), array('controller' => 'posts', 'action' => 'view', $post['id'])); ?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('controller' => 'posts', 'action' => 'view', $post['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('controller' => 'posts', 'action' => 'edit', $post['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('controller' => 'posts', 'action' => 'delete', $post['id']), null, __('Are you sure you want to delete # %s?', $post['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>


</div>
