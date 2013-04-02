<?php

/**
 * Descrição do arquivo highlights
 *
 * @descrição
 * @versão 
 * @autor diego
 * @data 01/02/2013
 */


        $highlights = $this->requestAction('highlights/index/sort:crated/direction:asc/limit:1');
        
?>
<?php foreach ($highlights as $highlight):
    
?>
<div class="nodes">
<h2><?php echo h($highlight['Highlight']['title']); ?></h2>
<div class="node-info">
    Autor: <span class="author"><?php echo $this->Html->link($highlight['User']['username'], array('controller' => 'users', 'action' => 'view', $highlight['User']['id'])); ?></span> |
    Criado em: <span class="date"><?php echo h($highlight['Highlight']['created']); ?><?php 
if ($highlight['Highlight']['created'] != $highlight['Highlight']['modified']){echo ' | Modificado em: '. $highlight['Highlight']['modified']; }
?>   </span>

</div>

<div class="node-more-info">

</div>
<div class="node-body">
    <?php echo $highlight['Highlight']['body']; ?>
</div>
</div>

<?php endforeach; ?>