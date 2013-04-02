<?php

/**
 * Descrição do arquivo MyHtmlHelper
 *
 * @descrição
 * @versão 
 * @autor diego
 * @data 01/02/2013
 */
App::uses('HtmlHelper', 'View/Helper');

class MyHtmlHelper extends HtmlHelper{
    
    public function url($url = null, $full = false){
        if(!isset($url['language']) && isset($this->params['language'])){
            $url['language'] = $this->params['laguage'];
        }
        return parent::url($url, $full);
    }
}
?>
