<?php
App::uses('AppController', 'Controller');
/**
 * Categories Controller
 *
 * @property Category $Category
 */
class CategoriesController extends AppController {
  
       public $helpers = array('Js');
       public $components = array('RequestHandler');  
       public $paginate = array(
        'limit' => 5
       );
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
                    'OR' => array(
                        'Category.visibility_groups' => '',
                        'Category.visibility_groups LIKE' => '%"' . $this->roleId . '"%'
                        )
                    ),
                'limit' => 5
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
                $this->roleId = $this->Session->read('Auth.User.group_id');
                
                if($this->roleId == '1'){
                    $this->set('category', $this->Category->read(null, $id));
                }else{
                
                $category = $this->Category->find('first', array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Category.id =' => $this->Category->id  ,
					),
				),
				array(
					'OR' => array(
						'Category.visibility_groups' => '',
						'Category.visibility_groups LIKE' => '%"' . $this->roleId . '"%',
					),
				),
			),

             )
                ));
                
             $options = array(
                 'conditions' => array('Post.category_id' => $this->Category->id),
                 'order' => array('Post.created' => 'DESC'),
                 'limit' => 4
             );
             
             $this->paginate = $options;
                
                if($category == null){
                        $this->Session->setFlash(__('Você não tem permissão para visualizar o conteudo que tentou acessar'));
			$this->redirect('/categories');
                    
                
                }else{
                      
             $posts = $this->paginate('Post');
             $this->set(compact('category', 'posts', $posts));
                }
                
                
                
		//$this->set('category', $this->Category->read(null, $id));
	}
        
        }
        
        /**
 * index method
 *
 * @return void
 */
	public function admin_index() {

                $this->Category->recursive = 0; 
                $this->set('categories', $this->paginate());
             
        }
        
        /**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
            
             $this->Category->id = $id;
                             $category = $this->Category->find('first', array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Category.id =' => $this->Category->id  ,
					),
				),
			),

             )
             ));
             
             $options = array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Category.id =' => $this->Category->id  ,
					),
				),
			),

             ),
                 'order' => array('Post.created' => 'DESC'),
                 'limit' => 4
             );
             $this->paginate = $options;
             
             $posts = $this->paginate('Post');
             //$parts = $this->paginate('Part');
             $this->set(compact('category', 'posts'));
    }
                
        
        

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
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
                $users = $this->Category->User->find('list', array('conditions' => array('User.group_id' => '1')));
                $groups = $this->Category->User->Group->find('list');
                $downloads = $this->Category->Download->find('list');
                $skypes = $this->Category->Skype->find('list');
                $this->set(compact('groups', 'users', 'types', 'downloads', 'skypes'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		$this->Category->id = $id;
		if (!$this->Category->exists()) {
			throw new NotFoundException(__('Invalid category'));
		}
                //$this->request->data['Category']['user_id'] = $this->Session->read('Auth.User.id');
                
		if ($this->request->is('post') || $this->request->is('put')) {
                    $this->request->data['Category']['visibility_groups'] = $this->Category->encodeData($this->request->data['Group']['Group']);
			if ($this->Category->save($this->request->data)) {
				$this->Session->setFlash(__('The category has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The category could not be saved. Please, try again.'));
			}
		} else {
			//$this->request->data = $this->Category->read(null, $id);
               if (empty($this->request->data)) {
			$data = $this->Category->read(null, $id);
			$data['Group']['Group'] = $this->Category->decodeData($data['Category']['visibility_groups']);
			$this->request->data = $data;
		}
                        
		}
                $types = $this->Category->Type->find('list');
                $users = $this->Category->User->find('list', array('conditions' => array('User.group_id' => '1')));
                $groups = $this->Category->User->Group->find('list');
                $skypes = $this->Category->Skype->find('list');
                $this->set(compact('groups', 'users', 'types', 'skypes'));
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
 * @param 
 * @return void
 * @access public
 */       
        
        
        public function search() {
            
            $this->roleId = $this->Session->read('Auth.User.group_id');
            
		if (!isset($this->request->query['q'])) {
			//$this->redirect('/');
		}

		App::uses('Sanitize', 'Utility');
		$q = Sanitize::clean($this->request->query['q'], array('encode' => false));
                
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
        
           public function admin_search() {
            
            $this->roleId = $this->Session->read('Auth.User.group_id');
            
		if (!isset($this->request->query['q'])) {
			//$this->redirect('/');
		}

		App::uses('Sanitize', 'Utility');
		$q = Sanitize::clean($this->request->query['q'], array('encode' => false));
                
                $this->paginate = array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Category.name LIKE' => '%' . $q . '%',
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
		$this->set('title_for_layout', __('Search Results: %s', $q));
		//$this->set(compact('q', 'nodes'));
	}
        
    public function autoComplete() {
        $this->autoRender = false;
        $categories = $this->Category->find('all', array(
            'conditions' => array(
            'Category.name LIKE' => '%' . $_GET['term'] . '%',
            )));
        echo json_encode($this->_encode($categories));
    }
    
    private function _encode($postData) {
        $temp = array();
        foreach ($postData as $category) {
            array_push($temp, array(
            'id' => $category['Category']['id'],
            'label' => $category['Category']['name'],
            'value' => $category['Category']['id'],
            ));
        }
        return $temp;
    }

    public function select2() {
        $this->Category->recursive = 0;
        $this->set('categories', $this->paginate());
    }
    
    public function busca() {
        $term = $this->request->query['q'];
        $categories = $this->Category->find('all',array(
            'conditions' => array(
                'Category.name LIKE' => '%'.$term.'%'
            )
        ));

        $result = array();
        foreach($categories as $key => $category) {
            $result[$key]['id'] = (int) $category['Category']['id'];
            $result[$key]['text'] = $category['Category']['name'];
        }
        $categories = $result;
        
        $this->set(compact('categories'));
    }          
}
