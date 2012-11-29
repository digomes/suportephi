<?php
App::uses('AppController', 'Controller');
/**
 * Categories Controller
 *
 * @property Category $Category
 */
class CategoriesController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		//$this->Category->recursive = 0;
             $this->roleId = $this->Session->read('Auth.User.group_id');
             
             
             if($this->roleId == '1'){
                $this->Category->recursive = 0; 
                $this->set('categories', $this->paginate());
             }else{
                 
             $this->paginate = array(
                'conditions' => array(
                    'OR' => array('Category.visibility_groups' => '',
                        'Category.visibility_groups LIKE' => '%"' . $this->roleId . '"%')
                    ),
                'limit' => 10
             );
                $categories = $this->paginate('Category');
                $this->set(compact('categories'));
		//$this->set('categories', $this->paginate());
   
            }
        
        }

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Category->id = $id;
		if (!$this->Category->exists()) {
			throw new NotFoundException(__('Invalid category'));
		}
		$this->set('category', $this->Category->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Category->create();
                        //$this->request->data['Category']['user_id'] = $this->Session->read('Auth.User.id');
                        $this->request->data['Category']['visibility_groups'] = $this->Category->encodeData($this->request->data['Group']['Group']);
			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash(__('The category has been saved'));
				$this->redirect(array('action' => 'index'));   
			} else {
				$this->Session->setFlash(__('The category could not be saved. Please, try again.'));
			}
		}
                $types = $this->Category->Type->find('list');
                $users = $this->Category->User->find('list');
                $groups = $this->Category->User->Group->find('list');
                $this->set(compact('groups', 'users', 'types'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->Category->id = $id;
		if (!$this->Category->exists()) {
			throw new NotFoundException(__('Invalid category'));
		}
                //$this->request->data['Category']['user_id'] = $this->Session->read('Auth.User.id');
                $this->request->data['Category']['visibility_groups'] = $this->Category->encodeData($this->request->data['Group']['Group']);
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash(__('The category has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The category could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Category->read(null, $id);
		}
                $types = $this->Category->Type->find('list');
                $users = $this->Category->User->find('list');
                $groups = $this->Category->User->Group->find('list');
                $this->set(compact('groups', 'users', 'types'));
	}

/**
 * delete method
 *
 * @throws MethodNotAllowedException
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Category->id = $id;
		if (!$this->Category->exists()) {
			throw new NotFoundException(__('Invalid category'));
		}
		if ($this->Category->delete()) {
			$this->Session->setFlash(__('Category deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Category was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
   
        
 /**
 * Search
 *
 * @param string $typeAlias
 * @return void
 * @access public
 */       
        
        
        public function search() {
            
            $this->roleId = $this->Session->read('Auth.User.group_id');
            
		if (!isset($this->request->data['Category']['q'])) {
			//$this->redirect('/');
		}

		App::uses('Sanitize', 'Utility');
		$q = Sanitize::clean($this->request->data['Category']['q']);
                
                $this->paginate = array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Category.name LIKE' => '%' . $q . '%',
					),
				),
				array(
					'OR' => array(
						'Category.visibility_groups' => '',
						'Category.visibility_groups LIKE' => '%"' . $this->roleId . '"%',
					),
				),
			),

             ),
                    'limit' => 10
       );
                $categories = $this->paginate('Category');
                $this->set(compact('q','categories'));
		//$this->set('categories', $this->paginate());
                
		
                
		//$nodes = $this->paginate('Category');
		//$this->set('title_for_layout', __('Search Results: %s', $q));
		//$this->set(compact('q', 'nodes'));
	}
}
