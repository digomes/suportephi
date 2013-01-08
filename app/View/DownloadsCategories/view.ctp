<div class="downloadsCategories view">
<h2><?php  echo __('Downloads Category'); ?></h2>
	<dl>
		<dt><?php echo __('Download'); ?></dt>
		<dd>
			<?php echo $this->Html->link($downloadsCategory['Download']['id'], array('controller' => 'downloads', 'action' => 'view', $downloadsCategory['Download']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Category'); ?></dt>
		<dd>
			<?php echo $this->Html->link($downloadsCategory['Category']['name'], array('controller' => 'categories', 'action' => 'view', $downloadsCategory['Category']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Downloads Category'), array('action' => 'edit', $downloadsCategory['DownloadsCategory']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Downloads Category'), array('action' => 'delete', $downloadsCategory['DownloadsCategory']['id']), null, __('Are you sure you want to delete # %s?', $downloadsCategory['DownloadsCategory']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Downloads Categories'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Downloads Category'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Downloads'), array('controller' => 'downloads', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Download'), array('controller' => 'downloads', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category'), array('controller' => 'categories', 'action' => 'add')); ?> </li>
	</ul>
</div>
