
<div class="users form">
	<?php echo $this->Form->create('User', array('url' => array('controller' => 'users', 'action' => 'login')));?>
		<fieldset>
		<?php
			echo $this->Form->input('username', array('label' => 'Nome de Usuário'));
			echo $this->Form->input('password', array('label' => 'Senha'));
		?>
		</fieldset>
	<?php
		echo $this->Html->link(__('Forgot password?'), array(
			'admin' => false,
			'controller' => 'users',
			'action' => 'forgetpwd',
		), array(
			'class' => 'forgot',
		));
		echo $this->Form->end(__('Log In'));
	?>
</div>