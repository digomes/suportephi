<div class="workshops view">
<h2><?php  echo __($workshop['Workshop']['codigo']); ?></h2>

    <div class="grid-3-12">
        <label for=""><?php echo __('Região'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['consultor']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('Cnpj'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['cnpj']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('Inscrição Estadual'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['ie']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('Status'); ?></label>
        <input type="text" value="<?php if($workshop['Workshop']['status'] == 1){ echo 'Ativo'; }else{ echo 'Inativo'; } ?>" class="<?php if($workshop['Workshop']['status'] == 1){ echo 'ativo'; }else{ echo 'inativo'; } ?>" readonly="true"/>
    </div>

    <div class="grid-12-12">
        <label for=""><?php echo __('Razão Social'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['razaosocial']); ?>" readonly="true"/>
    </div>


    <div class="grid-6-12">
        <label for=""><?php echo __('Rua'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['rua']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('Complemento'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['complemento']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('Bairro'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['bairro']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('Cidade'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['cidade']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('UF'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['uf']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('Cep'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['cep']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('DDD'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['ddd']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('Telefone'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['telefone']); ?>" readonly="true"/>
    </div>

    <div class="grid-9-12">
        <label for=""><?php echo __('E - mail'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['email']); ?>" readonly="true"/>
    </div>

    <div class="grid-3-12">
        <label for=""><?php echo __('Skype'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['skype']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('Responsável'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['responsavel']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('Proprietário'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['proprietario']); ?>" readonly="true"/>
    </div>

    <div class="grid-4-12">
        <label for=""><?php echo __('Técnico'); ?></label>
        <input type="text" value="<?php echo h($workshop['Workshop']['tecnico']); ?>" readonly="true"/>
    </div>

             
</div>

        <table>
            <thead>
                <tr>
                    <th>Consultor</th>
                    <th>Regiao</th>

                </tr>    
            </thead>        
            <tbody>
                        <tr>
                            <td>Sabrina</td>
                            <td>Sul e Sudeste (MG, ES, RJ)</td>
                        </tr>
                        <tr>
                            <td>Natali</td>
                            <td>São Paulo</td>
                        </tr>
                        <tr>
                            <td>Luciano</td>
                            <td>Norte, Nordeste e Centro Oeste</td>
                        </tr>                        
            </tbody>
        </table>