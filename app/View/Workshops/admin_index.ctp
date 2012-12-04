<div class="workshops index">
	<h2><?php echo __('Workshops'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id'); ?></th>
			<th><?php echo $this->Paginator->sort('codigo'); ?></th>
			<th><?php echo $this->Paginator->sort('consultor'); ?></th>
			<th><?php echo $this->Paginator->sort('cnpj'); ?></th>
			<th><?php echo $this->Paginator->sort('ie'); ?></th>
			<th><?php echo $this->Paginator->sort('razaosocial'); ?></th>
			<th><?php echo $this->Paginator->sort('rua'); ?></th>
			<th><?php echo $this->Paginator->sort('numero'); ?></th>
			<th><?php echo $this->Paginator->sort('complemento'); ?></th>
			<th><?php echo $this->Paginator->sort('bairro'); ?></th>
			<th><?php echo $this->Paginator->sort('cidade'); ?></th>
			<th><?php echo $this->Paginator->sort('uf'); ?></th>
			<th><?php echo $this->Paginator->sort('cep'); ?></th>
			<th><?php echo $this->Paginator->sort('ddd'); ?></th>
			<th><?php echo $this->Paginator->sort('telefone'); ?></th>
			<th><?php echo $this->Paginator->sort('ddd2'); ?></th>
			<th><?php echo $this->Paginator->sort('telefone2'); ?></th>
			<th><?php echo $this->Paginator->sort('ddd3'); ?></th>
			<th><?php echo $this->Paginator->sort('telefone3'); ?></th>
			<th><?php echo $this->Paginator->sort('email'); ?></th>
			<th><?php echo $this->Paginator->sort('responsavel'); ?></th>
			<th><?php echo $this->Paginator->sort('proprietario'); ?></th>
			<th><?php echo $this->Paginator->sort('tecnico'); ?></th>
			<th><?php echo $this->Paginator->sort('skype'); ?></th>
			<th><?php echo $this->Paginator->sort('status'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th><?php echo $this->Paginator->sort('modified'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($workshops as $workshop): ?>
	<tr>
		<td><?php echo h($workshop['Workshop']['id']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['codigo']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['consultor']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['cnpj']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['ie']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['razaosocial']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['rua']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['numero']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['complemento']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['bairro']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['cidade']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['uf']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['cep']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['ddd']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['telefone']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['ddd2']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['telefone2']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['ddd3']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['telefone3']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['email']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['responsavel']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['proprietario']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['tecnico']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['skype']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['status']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['created']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $workshop['Workshop']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $workshop['Workshop']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $workshop['Workshop']['id']), null, __('Are you sure you want to delete # %s?', $workshop['Workshop']['id'])); ?>
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
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Workshop'), array('action' => 'add')); ?></li>
	</ul>
</div>
