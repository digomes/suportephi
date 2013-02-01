        <?php echo $this->Form->create('Workshop', array('action' => 'search')); ?>
	<fieldset>

	<?php
		echo $this->Form->input('q', array('label' => 'Digite o código do posto ou o nome para realizar a busca'));
	?>
	</fieldset>
        <?php echo $this->Form->end(__('Buscar')); ?>
<br />
<div class="workshops index">
	<h2><?php echo __('Workshops'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('Código'); ?></th>
			<th><?php echo $this->Paginator->sort('Região'); ?></th>
			<th><?php echo $this->Paginator->sort('Razao Social'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($workshops as $workshop): ?>
	<tr>
		<td><?php echo h($workshop['Workshop']['codigo']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['consultor']); ?>&nbsp;</td>
		<td><?php echo h($workshop['Workshop']['razaosocial']); ?>&nbsp;</td>

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
        <br />
        <table>
            <thead>
                <tr>
                    <th>Consultor</th>
                    <th>Regiao</th>

                </tr>    
            </thead>        
            <tbody>
                        <tr>
                            <td>Sabrina</td>
                            <td>Sul e Sudeste (MG, ES, RJ)</td>
                        </tr>
                        <tr>
                            <td>Natali</td>
                            <td>São Paulo</td>
                        </tr>
                        <tr>
                            <td>Luciano</td>
                            <td>Norte, Nordeste e Centro Oeste</td>
                        </tr>                        
            </tbody>
        </table>
</div>

