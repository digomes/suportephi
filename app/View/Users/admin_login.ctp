
<div class="users form">
	<?php echo $this->Form->create('User', array('url' => array('controller' => 'users', 'action' => 'login')));?>
		<fieldset>
                    <div class="grid-12-12">
                        <?php echo $this->Form->input('username'); ?>
                    </div>
                    <div class="grid-12-12">
                        <?php echo $this->Form->input('password'); ?>
                    </div>
    
                <div class="grid-12-12">
                    	<?php echo $this->Form->end(__('Log In')); ?>
                </div>
              </fieldset>      
</div>