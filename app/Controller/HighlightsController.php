<?php
App::uses('AppController', 'Controller');
/**
 * Highlights Controller
 *
 * @property Highlight $Highlight
 */
class HighlightsController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Highlight->recursive = 0;
		$this->set('highlights', $this->paginate());
	}
        
    public function index() {
        $highlights = $this->paginate();
        if ($this->request->is('requested')) {
            return $highlights;
        } else {
            $this->set('highlights', $highlights);
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
		$this->Highlight->id = $id;              
		if (!$this->Highlight->exists()) {
			throw new NotFoundException(__('Invalid highlight'));
		}
		$this->set('highlight', $this->Highlight->read(null, $id));
	}
        
	public function admin_view($id = null) {
		$this->Highlight->id = $id;              
		if (!$this->Highlight->exists()) {
			throw new NotFoundException(__('Invalid highlight'));
		}
		$this->set('highlight', $this->Highlight->read(null, $id));
	}
        

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Highlight->create();
                        $this->request->data['Highlight']['user_id'] = $this->Auth->user('id');
			if ($this->Highlight->save($this->request->data)) {
				$this->Session->setFlash(__('The highlight has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The highlight could not be saved. Please, try again.'));
			}
		}
		$users = $this->Highlight->User->find('list');
		$this->set(compact('users'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		$this->Highlight->id = $id;
		if (!$this->Highlight->exists()) {
			throw new NotFoundException(__('Invalid highlight'));
		}
                $this->request->data['Highlight']['user_id'] = $this->Auth->user('id');
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Highlight->save($this->request->data)) {
				$this->Session->setFlash(__('The highlight has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The highlight could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Highlight->read(null, $id);
		}
		$users = $this->Highlight->User->find('list');
		$this->set(compact('users'));
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
		$this->Highlight->id = $id;
		if (!$this->Highlight->exists()) {
			throw new NotFoundException(__('Invalid highlight'));
		}
		if ($this->Highlight->delete()) {
			$this->Session->setFlash(__('Highlight deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Highlight was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
