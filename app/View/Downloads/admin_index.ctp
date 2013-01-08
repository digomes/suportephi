<div class="downloads index">
	<h2><?php echo __('Downloads'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('filename'); ?></th>
			<th><?php echo $this->Paginator->sort('dir'); ?></th>
			<th><?php echo $this->Paginator->sort('mimetype'); ?></th>
			<th><?php echo $this->Paginator->sort('filesize'); ?></th>
			<th><?php echo $this->Paginator->sort('description'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($downloads as $download): ?>
	<tr>
		<td><?php echo h($download['Download']['filename']); ?>&nbsp;</td>
		<td><?php echo h($download['Download']['dir']); ?>&nbsp;</td>
		<td><?php echo h($download['Download']['mimetype']); ?>&nbsp;</td>
		<td><?php echo $this->Number->toReadableSize($download['Download']['filesize']) ?>&nbsp;</td>
		<td><?php echo h($download['Download']['descricao']); ?>&nbsp;</td>
		<td><?php echo h($download['Download']['created']); ?>&nbsp;</td>
		<td><?php echo h($download['Download']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $download['Download']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $download['Download']['id']), null, __('Are you sure you want to delete # %s?', $download['Download']['id'])); ?>
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

