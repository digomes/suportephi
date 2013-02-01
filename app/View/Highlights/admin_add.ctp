<script type="text/javascript">
    var ckEditor = CKEDITOR.replace( 'body' );
</script>
<div class="highlights form">
<?php echo $this->Form->create('Highlight'); ?>
	<fieldset>
		<legend><?php echo '<h2>Add Highlight</h2>'; ?></legend>
                
               <div class="grid-12-12">
                   <?php echo $this->Form->input('title'); ?>
               </div>
               <div class="grid-12-12">
                   <?php echo $this->Form->input('body', array('id' => 'body', 'class' => 'ckeditor')); ?>
               </div>
	</fieldset>
    <div class="grid-12-12">
        <?php echo $this->Form->end(__('Submit')); ?>
    </div>

</div>
