<script type="text/javascript">
    var ckEditor = CKEDITOR.replace( 'body' );
</script>
<div class="posts form">
    
<?php echo $this->Form->create('Post', array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Post'); ?></legend>
                
           <div class="grid-12-12">
               <?php echo $this->Form->input('title', array('label' => 'Titulo')); ?>
           </div>  
                
           <div class="grid-12-12">
               <?php echo $this->Form->input('body', array('id' => 'body', 'class' => 'ckeditor', 'label' => 'Digite a informação abaixo')); ?>
           </div>
                
           <div class="grid-12-12">
               <?php echo $this->Form->input('category_id', array('label' => 'Categoria', 'type' => 'text', 'id' => 'category-select2')); ?>
           </div>
        </fieldset>        
           <div class="grid-12-12">
               <?php echo $this->Form->end(__('Submit')); ?>
           </div>                

	
    
</div>
