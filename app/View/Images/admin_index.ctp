<div class="attachments index">
	<h2><?php echo __('Images'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr class="striped">
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('filename'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($images as $image): ?>
	<tr>
		<td><?php echo h($image['Image']['id']); ?>&nbsp;</td>
		<td><?php echo $this->Html->Image('/files/image/filename/'.$image['Image']['dir'].'/'.$image['Image']['filename'], array('alt' => $image['Image']['descricao'], 'title' => $image['Image']['descricao'], 'width' => '150px', 'height'=>'100px', 'class' => 'preview')) ?>&nbsp;</td>
		<td><?php echo h($image['Image']['created']); ?>&nbsp;</td>
		<td><?php echo h($image['Image']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $image['Image']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $image['Image']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $image['Image']['id']), null, __('Are you sure you want to delete # %s?', $image['Image']['id'])); ?>
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
