<?php
App::uses('AppController', 'Controller');
/**
 * Posts Controller
 *
 * @property Post $Post
 */
class PostsController extends AppController {

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
                        'Category.visibility_groups LIKE' => '%"' . $this->roleId . '"%'
                        )
                    ),
                'limit' => 10
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
                       $this->set(compact('post'));
                }
                
	}
        
        }
/**
 * add method
 *
 * @return void
 */
	public function add() {
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
	public function edit($id = null) {
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
	public function delete($id = null) {
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
}
