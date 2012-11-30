<h2 class="hightitle"><?php __('Forget Password'); ?></h2>


    
<?php echo $this->Form->create('User', array('action' => 'forgetpwd')); ?>

<?php echo $this->Form->input('email', array('label' => 'Digite o seu email'));?>
    


<?php echo $this->Form->end('Submit');?>
</div>