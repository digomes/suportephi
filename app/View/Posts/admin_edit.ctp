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
