<div class="downloads index">
    <table>
        <thead>
            <tr>
                <th>Nome do Arquivo</th>
                <th>Tamanho</th>
                <th>Download</th>
            </tr>
        </thead>
        <tbody>
	<?php
        
        $downloads = $this->requestAction('downloads/lista');
        
                $i = 0;
		foreach ($category['Download'] as $downloadsCategory): ?>
    
		<tr>
                        <td><?php echo $this->Html->link(__($downloadsCategory['filename']), array('controller' => 'downloads' ,'action' => 'baixar', $downloadsCategory['id'])); ?></td>
                        <td><?php echo $this->Number->toReadableSize($downloadsCategory['filesize']); ?></td>
                        <td><?php echo $this->Html->link(__('Download'), array('controller' => 'downloads' ,'action' => 'baixar', $downloadsCategory['id'])); ?>
		</tr>
	<?php endforeach; ?>
                </tbody>
	</table>

</div>

