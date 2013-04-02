<?php
App::uses('AppController', 'Controller');
/**
 * Skypes Controller
 *
 * @property Skype $Skype
 */
class SkypesController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Skype->recursive = 0;
		$this->set('skypes', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->Skype->id = $id;
		if (!$this->Skype->exists()) {
			throw new NotFoundException(__('Invalid skype'));
		}
		$this->set('skype', $this->Skype->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Skype->create();
			if ($this->Skype->save($this->request->data)) {
				$this->Session->setFlash(__('The skype has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The skype could not be saved. Please, try again.'));
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
		$this->Skype->id = $id;
		if (!$this->Skype->exists()) {
			throw new NotFoundException(__('Invalid skype'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Skype->save($this->request->data)) {
				$this->Session->setFlash(__('The skype has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The skype could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Skype->read(null, $id);
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
		$this->Skype->id = $id;
		if (!$this->Skype->exists()) {
			throw new NotFoundException(__('Invalid skype'));
		}
		if ($this->Skype->delete()) {
			$this->Session->setFlash(__('Skype deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Skype was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
