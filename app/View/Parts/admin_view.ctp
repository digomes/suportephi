<div class="parts view">
<h2><?php  echo __('Part'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($part['Part']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Category'); ?></dt>
		<dd>
			<?php echo $this->Html->link($part['Category']['name'], array('controller' => 'categories', 'action' => 'view', $part['Category']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Posicao'); ?></dt>
		<dd>
			<?php echo h($part['Part']['posicao']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Seguranca'); ?></dt>
		<dd>
			<?php echo h($part['Part']['seguranca']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Codigo'); ?></dt>
		<dd>
			<?php echo h($part['Part']['codigo']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nome'); ?></dt>
		<dd>
			<?php echo h($part['Part']['nome']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Exibe'); ?></dt>
		<dd>
			<?php echo h($part['Part']['exibe']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($part['Part']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($part['Part']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>

