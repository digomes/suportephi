<?php
App::uses('Skype', 'Model');

/**
 * Skype Test Case
 *
 */
class SkypeTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.skype',
		'app.category',
		'app.user',
		'app.group',
		'app.workshop',
		'app.post',
		'app.image',
		'app.highlight',
		'app.type',
		'app.part',
		'app.downloads_category',
		'app.download'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Skype = ClassRegistry::init('Skype');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Skype);

		parent::tearDown();
	}

}
