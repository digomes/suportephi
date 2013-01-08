<div class="categoriesDowloads view">
<h2><?php  echo __('Categories Dowload'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($categoriesDowload['CategoriesDowload']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Category'); ?></dt>
		<dd>
			<?php echo $this->Html->link($categoriesDowload['Category']['name'], array('controller' => 'categories', 'action' => 'view', $categoriesDowload['Category']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Download'); ?></dt>
		<dd>
			<?php echo $this->Html->link($categoriesDowload['Download']['id'], array('controller' => 'downloads', 'action' => 'view', $categoriesDowload['Download']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Categories Dowload'), array('action' => 'edit', $categoriesDowload['CategoriesDowload']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Categories Dowload'), array('action' => 'delete', $categoriesDowload['CategoriesDowload']['id']), null, __('Are you sure you want to delete # %s?', $categoriesDowload['CategoriesDowload']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories Dowloads'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Categories Dowload'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Category'), array('controller' => 'categories', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Downloads'), array('controller' => 'downloads', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Download'), array('controller' => 'downloads', 'action' => 'add')); ?> </li>
	</ul>
</div>
