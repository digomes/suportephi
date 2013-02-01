<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Add Highlight'), array('action' => 'add')); ?></li>
	</ul>
</div>
<div class="highlights index">
	<h2><?php echo __('Highlights'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('user_id'); ?></th>
			<th><?php echo $this->Paginator->sort('title'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($highlights as $highlight): ?>
	<tr>
		<td><?php echo h($highlight['Highlight']['id']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($highlight['User']['username'], array('controller' => 'users', 'action' => 'view', $highlight['User']['id'])); ?>
		</td>
		<td><?php echo h($highlight['Highlight']['title']); ?>&nbsp;</td>
		<td><?php echo h($highlight['Highlight']['created']); ?>&nbsp;</td>
		<td><?php echo h($highlight['Highlight']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $highlight['Highlight']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $highlight['Highlight']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $highlight['Highlight']['id']), null, __('Are you sure you want to delete # %s?', $highlight['Highlight']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>

	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>

