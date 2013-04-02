<?php
App::uses('AppController', 'Controller');
/**
 * Posts Controller
 *
 * @property Post $Post
 */
class PostsController extends AppController {

    public $helpers = array('Js');
    public $components = array('RequestHandler');  
    public $paginate = array('limit' => 5);
    
/**
 * index method
 *
 * @return void
 */
	public function index() {
            
            $this->roleId = $this->Session->read('Auth.User.group_id');

             if($this->roleId == '1'){
                $this->Post->recursive = 0;
		$this->set('posts', $this->paginate());
             }else{
                 

            $this->paginate = array(
                'conditions' => array(
                    'OR' => array(
                        'Category.visibility_groups' => '',
                        'Category.visibility_groups LIKE' => '%"' . $this->roleId . '"%',
                        //'Category.id =' => $this->Post->Category->id,
                        )
                    ),
               'limit' => 4,
               'order' => 'Post.acessos Desc'
             );
                $posts = $this->paginate('Post');
                $this->set(compact('posts'));
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
		$this->Post->id = $id;
                $this->roleId = $this->Session->read('Auth.User.group_id');
		//$this->set('post', $this->Post->find('first', $id));
                
                if($this->roleId == '1'){
                    $this->set('post', $this->Post->read(null, $id));
                }else{
                   $post = $this->Post->find('first', array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Post.id =' => $this->Post->id  ,
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
                   
               if($post == null){
                        $this->Session->setFlash(__('Você não tem acesso ao conteudo que tentou acessar'));
			$this->redirect('/posts');
                    
                
                }else{
                    $acessos = $this->Post->field('acessos');
                    $this->Post->saveField('acessos', $acessos + 1);
                       $this->set(compact('post'));
                }
                
	}
        
        }
        

        
        public function admin_index() {
           $this->Post->recursive = 0;
           
                $posts = $this->paginate('Post');
                $this->set(compact('posts'));


        }
        
                        /**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->Post->id = $id;
                $this->roleId = $this->Session->read('Auth.User.group_id');
		//$this->set('post', $this->Post->find('first', $id));
                
                    $this->set('post', $this->Post->read(null, $id));
                
        
        }


/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Post->create();
                        $this->request->data['Post']['user_id'] = $this->Auth->user('id');
			if ($this->Post->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		}
		$categories = $this->Post->Category->find('list');
		$this->set(compact('categories'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		$this->Post->id = $id;
		if (!$this->Post->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
                $this->request->data['Post']['user_id'] = $this->Auth->user('id');
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Post->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Post->read(null, $id);
		}
		$users = $this->Post->User->find('list');
		$this->set(compact('users'));
                $categories = $this->Post->Category->find('list');
		$this->set(compact('categories'));
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
		$this->Post->id = $id;
		if (!$this->Post->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
		if ($this->Post->delete()) {
			$this->Session->setFlash(__('Post deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Post was not deleted'));
		$this->redirect(array('action' => 'index'));
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
						'Post.title LIKE' => '%' . $q . '%',
                                                'Post.body LIKE' => '%' . $q . '%',
                                                'Post.created LIKE' => '%' . $q . '%',
                                            
					),
				),
			),

             ),
                    'limit' => 7
       );
                $posts = $this->paginate('Post');
                $this->set(compact('q','posts'));
		//$this->set('categories', $this->paginate());
                
		
                
		//$nodes = $this->paginate('Category');
		$this->set('title_for_layout', __('Search Results: %s', $q));
		//$this->set(compact('q', 'nodes'));
	}
        
        
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
						'Post.title LIKE' => '%' . $q . '%',
                                                'Post.body LIKE' => '%' . $q . '%',
                                                'Post.created LIKE' => '%' . $q . '%',
                                            
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
                    'limit' => 7
       );
                $posts = $this->paginate('Post');
                $this->set(compact('q','posts'));
		//$this->set('categories', $this->paginate());
                
		
                
		//$nodes = $this->paginate('Category');
		$this->set('title_for_layout', __('Search Results: %s', $q));
		//$this->set(compact('q', 'nodes'));
	}
        
	public function admin_duplicate($id = null) {
		$this->Post->id = $id;
		if (!$this->Post->exists()) {
			throw new NotFoundException(__('Invalid post'));
		}
                $this->request->data['Post']['user_id'] = $this->Auth->user('id');
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Post->save($this->request->data)) {
				$this->Session->setFlash(__('The post has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The post could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Post->read(null, $id);
		}
		$users = $this->Post->User->find('list');
		$this->set(compact('users'));
                $categories = $this->Post->Category->find('list');
		$this->set(compact('categories'));
	}
        
	public function admin_getByCategory() {
		$category_id = $_GET['data']['Image']['category_id'];
 
		$posts = $this->Post->find('list', array(
			'conditions' => array('Post.category_id' => $category_id),
			'recursive' => -1
			));
 
		$this->set('posts',$posts);
		$this->layout = 'ajax';
	}
}
