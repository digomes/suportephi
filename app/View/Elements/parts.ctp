<div class="parts index">
	<br />
	<table cellpadding="0" cellspacing="0" id="codigos">
            <thead>
	<tr>
			<th><?php echo __('posicao'); ?></th>
			<th><?php echo __('seguranca'); ?></th>
			<th><?php echo __('codigo'); ?></th>
			<th><?php _('nome'); ?></th>

	</tr>
        </thead>
        <tbody>
	<?php

        $parts = $this->requestAction('parts/lista');

	foreach ($category['Part'] as $part): ?>
	<tr>
		<td><?php echo h($part['posicao']); ?>&nbsp;</td>

		<td>
                <?php
                    if($part['seguranca'] == 1){
                        echo $this->Html->Image('seg.png', array('alt' => '', 'title' => '', 'width' => '20px'));
                    }else{
                        echo '';
                    }
                
                ?>
                </td>
		<td>
                <?php  
                if($part['exibe'] == 0){
                    echo '<span style="color: red">'.$part['codigo'].'</span>';
                }else{
                    echo h($part['codigo']);
                }
                ?>
                </td>
		<td><?php echo h($part['nome']); ?>&nbsp;</td>
	</tr>
<?php endforeach; ?>
        </tbody>
	</table>
</div>