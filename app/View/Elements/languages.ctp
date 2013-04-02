<?php

/**
 * Descrição do arquivo languages
 *
 * @descrição
 * @versão 
 * @autor diego
 * @data 01/02/2013
 */
?>
<span><?php
$defaultLang = Configure::read('Languages.default');
$defaultUrl = $this->passedArgs;
if ($this->action !== 'index' && isset($slugs['en'])) {
	 $defaultUrl[1] = $slugs[$defaultLang]['Revision']['slug'];
}
foreach (Configure::read('Languages.all') as $lang) {
	if ($lang === $this->params['lang']) {
		continue;
	}
	$url = $defaultUrl;
	$options = array();
	if (isset($slugs)) {
		if (isset($slugs[$lang])) {
			if ($this->action !== 'index') {
				$url[1] = $slugs[$lang]['Revision']['slug'];
			}
			$options['title'] = $slugs[$lang]['Revision']['title'];
		} else {
			$options['class'] = 'lowlight';
			$options['title'] = sprintf(__('No %1$s translation yet for %2$s', true), $lang, $slugs[$defaultLang]['Revision']['title']);
		}
	}
	$url['lang'] = $lang;
	$languages[] = $html->link($lang, $url, $options);
}
echo sprintf(__('Also available in %1$s', true), implode (' &middot; ', $languages));
?></span>