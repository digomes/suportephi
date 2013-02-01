<?php
App::uses('AppController', 'Controller');
/**
 * Workshops Controller
 *
 * @property Workshop $Workshop
 */
class WorkshopsController extends AppController {

    
    public $components = array('RequestHandler');
/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Workshop->recursive = 0;
		$this->set('workshops', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->Workshop->id = $id;
		if (!$this->Workshop->exists()) {
			throw new NotFoundException(__('Invalid workshop'));
		}
		$this->set('workshop', $this->Workshop->read(null, $id));
	}
        
        public function view($id = null) {
		$this->Workshop->id = $id;
		if (!$this->Workshop->exists()) {
			throw new NotFoundException(__('Invalid workshop'));
		}
		$this->set('workshop', $this->Workshop->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Workshop->create();
			if ($this->Workshop->save($this->request->data)) {
				$this->Session->setFlash(__('The workshop has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The workshop could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		$this->Workshop->id = $id;
		if (!$this->Workshop->exists()) {
			throw new NotFoundException(__('Invalid workshop'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Workshop->save($this->request->data)) {
				$this->Session->setFlash(__('The workshop has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The workshop could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Workshop->read(null, $id);
		}
	}
        
        /**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->Workshop->id = $id;
		if (!$this->Workshop->exists()) {
			throw new NotFoundException(__('Invalid workshop'));
		}
                $this->Session->setFlash(__('Para editar os campos em vermelho entre em contato com seu consultor'));
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Workshop->save($this->request->data)) {
				$this->Session->setFlash(__('The workshop has been saved'));
				//$this->redirect(array('action' => ''));
			} else {
				$this->Session->setFlash(__('The workshop could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Workshop->read(null, $id);
		}
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
		$this->Workshop->id = $id;
		if (!$this->Workshop->exists()) {
			throw new NotFoundException(__('Invalid workshop'));
		}
		if ($this->Workshop->delete()) {
			$this->Session->setFlash(__('Workshop deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Workshop was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
        
        
           public function admin_search() {
            
            $this->roleId = $this->Session->read('Auth.User.group_id');
            
		if (!isset($this->request->data['Workshop']['q'])) {
			//$this->redirect('/');
		}

		App::uses('Sanitize', 'Utility');
		$q = Sanitize::clean($this->request->data['Workshop']['q'], array('encode' => false));
                
                $this->paginate = array(
                    'conditions' => array(
                        'AND' => array(
                                    array(
					'OR' => array(
						'Workshop.razaosocial LIKE' => '%' . $q . '%',
                                                'Workshop.codigo LIKE' => '%' . $q . '%',   
                                                'Workshop.email LIKE' => '%' . $q . '%',
                                                'Workshop.skype LIKE' => '%' . $q . '%',
					),
				),
			),

             ),
                    'limit' => 10
       );
                $workshops = $this->paginate('Workshop');
                $this->set(compact('q','workshops'));
		//$this->set('categories', $this->paginate());
                
		
                
		//$nodes = $this->paginate('Category');
		//$this->set('title_for_layout', __('Search Results: %s', $q));
		//$this->set(compact('q', 'nodes'));
	}
        
    public function autoComplete() {
        $this->autoRender = false;
        $workshops = $this->WorkShop->find('all', array(
            'conditions' => array(
            'Workshop.codigo LIKE' => '%' . $_GET['term'] . '%',
            )));
        echo json_encode($this->_encode($workshops));
    }
    
    private function _encode($postData) {
        $temp = array();
        foreach ($postData as $workshop) {
            array_push($temp, array(
            'id' => $workshop['Workshop']['id'],
            'label' => $workshop['Workshop']['codigo'],
            'value' => $workshop['Workshop']['id'],
            ));
        }
        return $temp;
    }

    public function select2() {
        $this->Workshop->recursive = 0;
        $this->set('workshops', $this->paginate());
    }
    
    public function search() {
        $term = $this->request->query['q'];
        $workshops = $this->Workshop->find('all',array(
            'conditions' => array(
                'Workshop.codigo LIKE' => '%'.$term.'%'
            )
        ));

        $result = array();
        foreach($workshops as $key => $workshop) {
            $result[$key]['id'] = (int) $workshop['Workshop']['id'];
            $result[$key]['text'] = $workshop['Workshop']['codigo'];
        }
        $workshops = $result;
        
        $this->set(compact('workshops'));
    }    
}
