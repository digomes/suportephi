<script type="text/javascript">
$(document).ready(
function () {
    $('#codigos').dataTable({"bSort": false});  
}
);
</script>
<div class="parts index">
	<h2><?php echo __('Parts'); ?></h2>
	<table cellpadding="0" cellspacing="0" id="codigos" >
         <thead>   
	<tr>
			<th><?php echo $this->Paginator->sort('posicao'); ?></th>
			<th><?php echo $this->Paginator->sort('Modelo'); ?></th>
			<th><?php echo $this->Paginator->sort('seguranca'); ?></th>
			<th><?php echo $this->Paginator->sort('codigo'); ?></th>
			<th><?php echo $this->Paginator->sort('nome'); ?></th>
	</tr>
        </thead>
        <tbody>
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
	</tr>
<?php endforeach; ?>
        <tbody>
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
		echo $this->Paginator->numbers(array('separator' => ' | '));
		echo $this->Paginator->next(__(' Next') . ' >>', array(), null, array('class' => 'next disabled'));
	?>
        </div>
</div>