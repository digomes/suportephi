<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 */
class UsersController extends AppController {

    /**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Users';
    
/**
 * index method
 *
 * @return void
 */
	public function index() {
            $this->userId = $this->Session->read('Auth.User.id');
            
            $this->paginate = array(
                'conditions' => array(
                    'OR' => array(
                        'User.user_id =' => $this->userId ,
                        //'Category.id =' => $this->Post->Category->id,
                        )
                    ),
               'limit' => 4
             );
                $users = $this->paginate('User');
                $this->set(compact('users'));         

	} 
        
	public function admin_index() {
		$this->User->recursive = 0;
		$this->set('users', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->set('user', $this->User->read(null, $id));
	}
        
        /**
 * add method
 *
 * @return void
 */
	public function add() {
            $this->UserId = $this->Session->read('Auth.User.id');
            $this->WorkShopId = $this->Session->read('Auth.User.Workshop.id');
		if ($this->request->is('post')) {
			$this->User->create();
                        $this->request->data['User']['user_id'] = $this->Auth->user('id');
                        $this->request->data['User']['workshop_id'] = $this->Session->read('Auth.User.Workshop.id');
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}
        
        /**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->set('user', $this->User->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->User->create();
                        $this->request->data['User']['user_id'] = $this->Auth->user('id');
			if ($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
		$groups = $this->User->Group->find('list');
                $workshops = $this->User->Workshop->find('list');
		$this->set(compact('groups', 'workshops'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid User'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            
             if(empty($this->request->data['User']['password'])){
                unset($this->request->data['User']['password']);
             }
             $this->request->data['User']['user_id'] = $this->Auth->user('id');
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The User has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The User could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
        }
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}
        
        /**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
        $this->User->id = $id;
        if (!$this->User->exists()) {
            throw new NotFoundException(__('Invalid User'));
        }
        if ($this->request->is('post') || $this->request->is('put')) {
            
             if(empty($this->request->data['User']['password'])){
                unset($this->request->data['User']['password']);
             }
             $this->request->data['User']['user_id'] = $this->Auth->user('id');
            if ($this->User->save($this->request->data)) {
                $this->Session->setFlash(__('The User has been saved'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The User could not be saved. Please, try again.'));
            }
        } else {
            $this->request->data = $this->User->read(null, $id);
        }
		$groups = $this->User->Group->find('list');
                $workshops = $this->User->Workshop->find('list');
		$this->set(compact('groups', 'workshops'));
	}

/**
 * delete method
 *
 * @throws MethodNotAllowedException
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this->User->delete()) {
			$this->Session->setFlash(__('User deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('User was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
        
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this->User->delete()) {
			$this->Session->setFlash(__('User deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('User was not deleted'));
		$this->redirect(array('action' => 'index'));
	}        
        
        
        
        public function login() {
            if ($this->request->is('post')) {
                if ($this->Auth->login()) {
                $this->redirect($this->Auth->redirect());
            } else {
                $this->Session->setFlash(__('Your username or password was incorrect.'));
                }
            }
        }
        
       public function admin_login() {
            if ($this->request->is('post')) {
                if ($this->Auth->login()) {
                $this->redirect($this->Auth->redirect());
            } else {
                $this->Session->setFlash(__('Your username or password was incorrect.'));
                }
            }
        }

        public function logout() {
            $this->Session->setFlash(__('Thank you for using our site!'));
            $this->redirect($this->Auth->logout());
        }
        
       public function admin_logout() {
            $this->Session->setFlash(__('Thank you for using our site!'));
            $this->redirect($this->Auth->logout());
        }
        

        
        public function forgetpwd(){
        //$this->layout="signup";
        $this->User->recursive=-1;
        if(!empty($this->data))
        {
            if(empty($this->data['User']['email']))
            {
                $this->Session->setFlash(__('Please Provide Your Email Adress that You used to Register with Us'));
            }
            else
            {
                $email=$this->data['User']['email'];
                $fu=$this->User->find('first',array('conditions'=>array('User.email'=>$email)));
                if($fu)
                {
                    //debug($fu);
                    if($fu['User']['active'])
                    {
                        $key = Security::hash(String::uuid(),'sha512',true);
                        $hash=sha1($fu['User']['username'].rand(0,100));
                        $url = Router::url( array('controller'=>'users','action'=>'reset'), true ).'/'.$key.'#'.$hash;
                        $ms=$url;
                        $ms=wordwrap($ms,1000);
                        //debug($url);
                        $fu['User']['tokenhash']=$key;
                        $this->User->id=$fu['User']['id'];
                        if($this->User->saveField('tokenhash',$fu['User']['tokenhash'])){
 
                            //============Email================//
                            /* SMTP Options */
                            $this->Email->smtpOptions = array(
                                'port'=>'25',
                                'timeout'=>'30',
                                'host' => 'mail.diegogomes.net',
                                'username'=>'diego@diegogomes.net',
                                'password'=>'di210190'
                                  );
                              $this->Email->template = 'resetpw';
                              $this->Email->from    = 'Recuperar Senha <diego@diegogomes.net>';
                              $this->Email->to      = $fu['User']['name'].'<'.$fu['User']['email'].'>';
                              $this->Email->subject = 'Reset Your Password';
                              $this->Email->sendAs = 'both';
 
                                $this->Email->delivery = 'smtp';
                                $this->set('ms', $ms);
                                $this->Email->send();
                                $this->set('smtp_errors', $this->Email->smtpError);
                            $this->Session->setFlash(__('Check Your Email To Reset your password', true));
 
                            //============EndEmail=============//
                        }else{
                            $this->Session->setFlash(__('Error Generating Reset link'));
                        }
                    }else{
                        $this->Session->setFlash(__('This account is not active, Please contact the site administrator'));
                    }
                }else{
                    $this->Session->setFlash(__('Email does Not Exist'));
                }
            }
        }
    }
    
    
        public function reset($token=null){
        //$this->layout="Login";
        $this->User->recursive=-1;
        if(!empty($token)){
            $u=$this->User->findBytokenhash($token);
            if($u){
                $this->User->id=$u['User']['id'];
                if(!empty($this->data)){
                    $this->User->data=$this->data;
                    $this->User->data['User']['username']=$u['User']['username'];
                    $new_hash=sha1($u['User']['username'].rand(0,100));//created token
                    $this->User->data['User']['tokenhash']=$new_hash;
                    if($this->User->validates(array('fieldList'=>array('password','password_confirm')))){
                        if($this->User->save($this->User->data))
                        {
                            $this->Session->setFlash(__('Password Has been Updated'));
                            $this->redirect(array('controller'=>'users','action'=>'login'));
                        }
 
                    }
                    else{
 
                        $this->set('errors',$this->User->invalidFields());
                    }
                }
            }
            else
            {
                $this->Session->setFlash(__('This Token has already been used'));
            }
        }
 
        else{
            $this->redirect('/');
        }
    }

    
}
