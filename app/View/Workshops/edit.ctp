<div class="workshops form">
<?php echo $this->Form->create('Workshop'); ?>
	<fieldset>
		<legend><?php echo __('Edit Workshop'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('codigo');
		echo $this->Form->input('consultor');
		echo $this->Form->input('cnpj');
		echo $this->Form->input('ie');
		echo $this->Form->input('razaosocial');
		echo $this->Form->input('rua');
		echo $this->Form->input('numero');
		echo $this->Form->input('complemento');
		echo $this->Form->input('bairro');
		echo $this->Form->input('cidade');
		echo $this->Form->input('uf');
		echo $this->Form->input('cep');
		echo $this->Form->input('ddd');
		echo $this->Form->input('telefone');
		echo $this->Form->input('ddd2');
		echo $this->Form->input('telefone2');
		echo $this->Form->input('ddd3');
		echo $this->Form->input('telefone3');
		echo $this->Form->input('email');
		echo $this->Form->input('responsavel');
		echo $this->Form->input('proprietario');
		echo $this->Form->input('tecnico');
		echo $this->Form->input('skype');
		echo $this->Form->input('status');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Menu'); ?></h3>
        <?php echo $this->MenuBuilder->build('main-menu', array('class' => 'menu')); ?>
</div>
