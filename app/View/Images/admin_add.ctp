<div class="images form">
<?php echo $this->Form->create('Image', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Image'); ?></legend>
	<?php
		echo $this->Form->input('filename', array('type' => 'file'));
		echo $this->Form->input('dir', array('type' => 'hidden'));
		echo $this->Form->input('mimetype', array('type' => 'hidden'));
		echo $this->Form->input('filesize', array('type' => 'hidden'));
                echo $this->Form->input('category_id', array('label' => 'Models', 'empty' => '-- Select a Value --'));
		echo $this->Form->input('post_id', array('label' => 'Posts', 'empty' => '-- Pick a Model --'));
		echo $this->Form->input('descricao');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<?php
        $this->Js->get('#ImageCategoryId')->event('change', 
                $this->Js->request(array(
                        'controller'=>'posts',
                        'action'=>'getByCategory'
                        ), array(
                        'update'=>'#ImagePostId',
                        'async' => true,
                        'method' => 'get',
                        'dataExpression'=>true,
                        'data'=> $this->Js->serializeForm(array(
                                'isForm' => true,
                                'inline' => true
                                ))
                        ))
                );
?>
<?php
	if (class_exists('JsHelper') && method_exists($this->Js, 'writeBuffer')) echo $this->Js->writeBuffer();
	// Writes cached scripts
?>