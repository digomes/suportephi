<?php

if (!isset($paginator->params['paging'])) {
   return;
}
if (!isset($model) || $paginator->params['paging'][$model]['pageCount'] < 2) {
   return;
}
if (!isset($options)) {
   $options = array();
}

$options['model'] = $model;
$options['url']['model'] = $model;
$paginator->__defaultModel = $model;

if (isset($community)) {
   $options['url'][] = $community['Category']['id'];
} elseif (isset($user)) {
   $options['url'][] = $user['User']['id'];
}
?>
 <div class="paging">
   <?php
   echo $paginator->prev('<< Previous', array_merge(array('escape' => false, 'class' => 'prev'), $options), null, array('class' => 'disabled'));
   echo $paginator->numbers(am($options, array('before' => false, 'after' => false, 'separator' => false)));
   echo $paginator->next('Next >>', array_merge(array('escape' => false, 'class' => 'next'), $options), null, array('class' => 'disabled'));
   ?>
 </div>