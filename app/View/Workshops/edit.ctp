<div class="workshops form">  
<?php echo $this->Form->create('Workshop'); ?>
	<fieldset>
		<legend><h2><?php echo __('Edit Workshop'); ?></h2></legend>
                
<div class="grid-3-12">
    <?php echo $this->Form->input('id', array('type' => 'hidden')); ?>
    <?php echo $this->Form->input('codigo', array('label' => 'Código', 'class' => 'inativo')); ?>
</div>
<div class="grid-3-12">
<?php echo $this->Form->input('consultor', array('label' => 'Região', 'class' => 'inativo')); ?>
</div>
<div class="grid-3-12">
<?php echo $this->Form->input('cnpj', array('class' => 'inativo')); ?>
</div>
<div class="grid-3-12">
<?php echo $this->Form->input('ie', array('label' => 'Inscrição Estadual', 'class' => 'inativo')); ?>
</div>
<div class="grid-12-12">
<?php echo $this->Form->input('razaosocial', array('type' => 'text', 'label' => 'Razão Social', 'class' => 'inativo')); ?>
</div>
<div class="grid-9-12">
<?php echo $this->Form->input('rua', array('type' => 'text', 'class' => 'inativo')); ?>
</div>                
<div class="grid-3-12">
<?php echo $this->Form->input('complemento', array('class' => 'inativo')); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('bairro', array('class' => 'inativo')); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('cidade', array('class' => 'inativo')); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('uf', array('class' => 'inativo')); ?>
</div>  
<div class="grid-3-12">
<?php echo $this->Form->input('cep', array('class' => 'inativo'));?>
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
<?php echo $this->Form->input('status', array('label' => 'Ativo ?', 'type' => 'hidden')); ?>
</div> 
<div class="grid-12-12">
    <?php echo $this->Form->end(__('Submit')); ?>
</div>              
	</fieldset>

</div>

