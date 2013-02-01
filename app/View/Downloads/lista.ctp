<div class="downloads index">
    <table>
        <thead>
            <tr>
                <th>Link</th>
                <th>Tamanho</th>
                <th>Ver em PDF</th>
            </tr>
        </thead>
        <tbody>
	<?php
		$i = 0;
		foreach ($downloads as $downloadsCategory): ?>
    
		<tr>
                        
                        
                        <td><?php echo $this->Html->link(__($downloadsCategory['Download']['filename']), array('action' => 'view', $downloadsCategory['Download']['id'])); ?></td>
                        <td><?php echo $this->Number->toReadableSize($downloadsCategory['Download']['filesize']); ?></td>
                        <td><?php echo $this->Html->link('View as PDF', array('controller' => 'downloads' ,'action'=>'view', 'ext'=>'pdf', $downloadsCategory['DownloadsCategory']['id']));?></td>
		</tr>
	<?php endforeach; ?>
                </tbody>
	</table>

</div>

