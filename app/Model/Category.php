<?php
App::uses('AppModel', 'Model');
/**
 * Category Model
 *
 * @property User $User
 * @property Post $Post
 */
class Category extends AppModel {

    
        public $name = 'Category';

        /**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */   
        public $actsAs = array(
          'Upload.Upload' => array(
            'filename' => array(
                'fields' => array(
                    'dir' => 'dir',
                    'type' => 'mimetype',
                    'size' => 'filesize'
                ),
           'thumbnailSizes' => array(
                    'vga' => '640x480',
                    'thumb' => '80x80'
                ),
            'thumbnailMethod' => 'php'
            )
        ),
            'Encoder'
    );
        


/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'name' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'user_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'visibility_groups' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
            
                'Type' => array(
			'className' => 'Type',
			'foreignKey' => 'type_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
                'Skype' => array(
			'className' => 'Skype',
			'foreignKey' => 'skype_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
            
            
	);

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'Post' => array(
			'className' => 'Post',
			'foreignKey' => 'category_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),
            
                'Part' => array(
			'className' => 'Part',
			'foreignKey' => 'category_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		),

		'DownloadsCategory' => array(
			'className' => 'DownloadsCategory',
			'foreignKey' => 'category_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)

            
	);

        
        public $hasAndBelongsToMany = array(
		'Download' => array(
			'className' => 'Download',
			'joinTable' => 'downloads_categories',
			'foreignKey' => 'category_id',
			'associationForeignKey' => 'download_id',
			'unique' => 'keepExisting',
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		)
	);
}
