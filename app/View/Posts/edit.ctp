<div class="posts form">
<?php echo $this->Form->create('Post'); ?>
	<fieldset>
		<legend><?php echo __('Edit Post'); ?></legend>
	<?php
		echo $this->Form->input('id');
		//echo $this->Form->input('user_id');
		echo $this->Form->input('title', array('label' => 'Titulo'));
		echo $this->Form->input('body', array('id' => 'body', 'class' => 'ckeditor', 'label' => 'Digite a informação abaixo'));
                echo $this->Form->input('category_id', array('label' => 'Categoria'));
                //echo $this->Upload->edit('Post', $this->Form->fields['Post.id']);
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Post.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Post.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Posts'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>