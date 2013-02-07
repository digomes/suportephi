<script type="text/javascript">
    var ckEditor = CKEDITOR.replace( 'body' );
</script>
<div class="categories form">
<?php echo $this->Form->create('Category', array('type' => 'file')); ?>
	<fieldset>
		<legend><h2><?php echo __('Add Models'); ?></h2></legend>
                
                <div class="grid-12-12">
                 <?php ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php echo $this->Form->input('name', array('label' => __('Name of Model'))); ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php echo $this->Form->input('filename', array('type' => 'file', 'label' => __('Image'))); ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php echo $this->Form->input('user_id', array('label' => __('Select the user you will receive email notification'))); ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php echo $this->Form->input('type_id', array('label' => __('Select the type of product'))); ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php 
                    echo $this->Form->input('dir', array('type' => 'hidden'));
                    echo $this->Form->input('mimetype', array('type' => 'hidden'));
                    echo $this->Form->input('filesize', array('type' => 'hidden'));
                 ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php  echo $this->Form->input('body', array('id' => 'body', 'class' => 'ckeditor', 'label' => __('Write a brief description (maximum size use font with 12px)'))); ?>   
                </div>
                
                <div class="grid-12-12">
                 <?php echo $this->Form->input('url', array('label' => __('Copy and Paste the URL of Manufacturer Site'))); ?>   
                </div>
                
                <div class="grid-12-12">
                    <?php echo $this->Form->input('Group.Group', array('type' => 'select', 'multiple' => 'checkbox', 'label' => __('Select the group you can view this product'))); ?>
                </div>

                
                <div class="grid-12-12">
                    <?php echo $this->Form->end(__('Submit')); ?> 
                </div>
	</fieldset>



</div>