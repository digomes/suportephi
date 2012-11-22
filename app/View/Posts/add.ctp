<div class="posts form">
<?php echo $this->Form->create('Post', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Post'); ?></legend>
	<?php
		
		echo $this->Form->input('title', array('label' => 'Titulo'));
		echo $this->Tinymce->input('Post.body', array('label' => 'Digite a informação abaixo'), array('laguage' => 'pt-Br'), 'full');
                echo $this->Form->input('category_id', array('label' => 'Categoria'));

                
                
                //echo $this->Upload->edit('Post', $this->Form->fields['Post.id']);
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Posts'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>
