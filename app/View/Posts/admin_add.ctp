<script type="text/javascript">
    var ckEditor = CKEDITOR.replace( 'body' );
</script>
<div class="posts form">
<?php echo $this->Form->create('Post', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Post'); ?></legend>
	<?php

		echo $this->Form->input('title', array('label' => 'Titulo'));
		echo $this->Form->input('body', array('id' => 'body', 'class' => 'ckeditor', 'label' => 'Digite a informação abaixo'));
                echo $this->Form->input('category_id', array('label' => 'Categoria'));

                
                
                //echo $this->Upload->edit('Post', $this->Form->fields['Post.id']);
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
