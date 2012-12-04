<div class="workshops view">
<h2><?php  echo __('Workshop'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Codigo'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['codigo']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Consultor'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['consultor']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Cnpj'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['cnpj']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Ie'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['ie']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Razaosocial'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['razaosocial']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Rua'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['rua']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Numero'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['numero']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Complemento'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['complemento']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Bairro'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['bairro']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Cidade'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['cidade']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Uf'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['uf']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Cep'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['cep']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Ddd'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['ddd']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Telefone'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['telefone']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Ddd2'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['ddd2']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Telefone2'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['telefone2']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Ddd3'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['ddd3']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Telefone3'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['telefone3']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Email'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['email']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Responsavel'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['responsavel']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Proprietario'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['proprietario']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Tecnico'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['tecnico']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Skype'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['skype']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Status'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['status']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Created'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['created']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modified'); ?></dt>
		<dd>
			<?php echo h($workshop['Workshop']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Workshop'), array('action' => 'edit', $workshop['Workshop']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Workshop'), array('action' => 'delete', $workshop['Workshop']['id']), null, __('Are you sure you want to delete # %s?', $workshop['Workshop']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Workshops'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Workshop'), array('action' => 'add')); ?> </li>
	</ul>
</div>
