<?php
App::uses('AppModel', 'Model');
App::uses('AuthComponent', 'Controller/Component');
/**
 * User Model
 *
 * @property Group $Group
 * @property Post $Post
 */
class User extends AppModel {
    
    //Nome do campo que será exibido
    public $displayField = 'username';
    
    //nome do Model
    public $name = 'User';
    
    //Behaviors Utilizados
    public $actsAs = array('Acl' => array('type' => 'requester'));
    
/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'username' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Digite um login válido',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		/*'password' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Digite uma senha',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),*/
		'group_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
                'name' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Digite o nome do Usuário',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
                'email' => array(
			'email' => array(
				'rule' => array('email'),
				'message' => 'Digite um email válido',
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
		'Group' => array(
			'className' => 'Group',
			'foreignKey' => 'group_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Workshop' => array(
			'className' => 'Workshop',
			'foreignKey' => 'workshop_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)            
	);

/**
 * hasMany associations
 *
 * @var array
 */
	public $hasMany = array(
		'Post' => array(
			'className' => 'Post',
			'foreignKey' => 'user_id',
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
            
                'Category' => array(
                        'className' => 'Category',
                        'foreignKey' => 'user_id',
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
            
                'Highlight' => array(
                        'className' => 'Highlight',
                        'foreignKey' => 'user_id',
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
	);
        
        
    public function beforeSave($options = array()) {
        //$this->data['User']['password'] = AuthComponent::password($this->data['User']['password']);
        if (!empty($this->data['User']['password'])) {
            $this->data['User']['password'] = AuthComponent::password($this->data['User']['password']);
        }
        return true;
    }
    
    
    public function parentNode() {
        if (!$this->id && empty($this->data)) {
            return null;
        }
        if (isset($this->data['User']['group_id'])) {
            $groupId = $this->data['User']['group_id'];
        } else {
            $groupId = $this->field('group_id');
        }
        if (!$groupId) {
            return null;
        } else {
            return array('Group' => array('id' => $groupId));
        }
    }


    

}
