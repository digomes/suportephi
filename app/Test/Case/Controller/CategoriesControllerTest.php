<?php
App::uses('CategoriesController', 'Controller');

/**
 * CategoriesController Test Case
 *
 */
class CategoriesControllerTest extends ControllerTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.category',
		'app.post',
		'app.user',
		'app.group',
		'app.image'
	);

}
