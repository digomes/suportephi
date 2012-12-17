<div class="workshops form">
<?php echo $this->Form->create('Workshop'); ?>
	<fieldset>
		<legend><h2><?php echo __('Edit Workshop'); ?></h2></legend>
                
<div class="grid-3-12">
    <?php echo $this->Form->input('id', array('type' => 'hidden')); ?>
    <?php echo $this->Form->input('codigo', array('label' => 'Código')); ?>
</div>
<div class="grid-3-12">
<?php echo $this->Form->input('consultor', array('label' => 'Região')); ?>
</div>
<div class="grid-3-12">
<?php echo $this->Form->input('cnpj'); ?>
</div>
<div class="grid-3-12">
<?php echo $this->Form->input('ie', array('label' => 'Inscrição Estadual')); ?>
</div>
<div class="grid-12-12">
<?php echo $this->Form->input('razaosocial', array('type' => 'text', 'label' => 'Razão Social')); ?>
</div>
<div class="grid-9-12">
<?php echo $this->Form->input('rua', array('type' => 'text')); ?>
</div>                
<div class="grid-3-12">
<?php echo $this->Form->input('complemento'); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('bairro'); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('cidade'); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('uf'); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('cep');?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('ddd');?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('telefone');?>
</div>  
<div class="grid-12-12">
<?php echo $this->Form->input('email', array('type' => 'text', 'label' => 'E-Mail')); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('responsavel');?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('proprietario'); ?>
</div>                  
<div class="grid-3-12">
<?php echo $this->Form->input('tecnico'); ?>
</div> 
<div class="grid-3-12">
<?php echo $this->Form->input('skype'); ?>
</div> 
<div class="grid-12-12">
<?php echo $this->Form->input('status', array('label' => 'Ativo ?')); ?>
</div> 
<div class="grid-12-12">
    <?php echo $this->Form->end(__('Submit')); ?>
</div>              
	</fieldset>

</div>

