<div class="highlights view">
<h2><?php  echo __('Highlight'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($highlight['Highlight']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('User'); ?></dt>
		<dd>
			<?php echo $this->Html->link($highlight['User']['username'], array('controller' => 'users', 'action' => 'view', $highlight['User']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Title'); ?></dt>
		<dd>
			<?php echo h($highlight['Highlight']['title']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Body'); ?></dt>
		<dd>
			<?php echo h($highlight['Highlight']['body']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($highlight['Highlight']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($highlight['Highlight']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Highlight'), array('action' => 'edit', $highlight['Highlight']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Highlight'), array('action' => 'delete', $highlight['Highlight']['id']), null, __('Are you sure you want to delete # %s?', $highlight['Highlight']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Highlights'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Highlight'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>
