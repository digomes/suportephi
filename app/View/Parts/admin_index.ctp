        <?php echo $this->Form->create('Part', array('action' => 'search')); ?>
	<fieldset>

	<?php
		echo $this->Form->input('q', array('label' => 'Digite o código da peça para realizar a busca'));
	?>
	</fieldset>
        <?php echo $this->Form->end(__('Buscar')); ?>
<br />

<div class="parts index">
	<h2><?php echo __('Parts'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('posicao'); ?></th>
			<th><?php echo $this->Paginator->sort('Modelo'); ?></th>
			<th><?php echo $this->Paginator->sort('seguranca'); ?></th>
			<th><?php echo $this->Paginator->sort('codigo'); ?></th>
			<th><?php echo $this->Paginator->sort('nome'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php
	foreach ($parts as $part): ?>
	<tr>
		<td><?php echo h($part['Part']['posicao']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($part['Category']['name'], array('controller' => 'categories', 'action' => 'view', $part['Category']['id'])); ?>
		</td>

		<td>
                <?php
                    if($part['Part']['seguranca'] == 1){
                        echo $this->Html->Image('seg.png', array('alt' => '', 'title' => '', 'width' => '20px'));
                    }else{
                        echo '';
                    }
                
                ?>
                </td>
		<td>
                <?php  
                if($part['Part']['exibe'] == 0){
                    echo '<span style="color: red">'.$part['Part']['codigo'].'</span>';
                }else{
                    echo h($part['Part']['codigo']);
                }
                ?>
                </td>
		<td><?php echo h($part['Part']['nome']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $part['Part']['id'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $part['Part']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $part['Part']['id']), null, __('Are you sure you want to delete # %s?', $part['Part']['id'])); ?>
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

		echo $this->Paginator->prev('<< ' . __('Previous '), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => '  '));
		echo $this->Paginator->next(__(' Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>
</div>

