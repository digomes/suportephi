<?php
App::uses('AppController', 'Controller');
/**
 * CategoriesDowloads Controller
 *
 * @property CategoriesDowload $CategoriesDowload
 */
class CategoriesDowloadsController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->CategoriesDowload->recursive = 0;
		$this->set('categoriesDowloads', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->CategoriesDowload->id = $id;
		if (!$this->CategoriesDowload->exists()) {
			throw new NotFoundException(__('Invalid categories dowload'));
		}
		$this->set('categoriesDowload', $this->CategoriesDowload->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->CategoriesDowload->create();
			if ($this->CategoriesDowload->save($this->request->data)) {
				$this->Session->setFlash(__('The categories dowload has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The categories dowload could not be saved. Please, try again.'));
			}
		}
		$categories = $this->CategoriesDowload->Category->find('list');
		$downloads = $this->CategoriesDowload->Download->find('list');
		$this->set(compact('categories', 'downloads'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->CategoriesDowload->id = $id;
		if (!$this->CategoriesDowload->exists()) {
			throw new NotFoundException(__('Invalid categories dowload'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->CategoriesDowload->save($this->request->data)) {
				$this->Session->setFlash(__('The categories dowload has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The categories dowload could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->CategoriesDowload->read(null, $id);
		}
		$categories = $this->CategoriesDowload->Category->find('list');
		$downloads = $this->CategoriesDowload->Download->find('list');
		$this->set(compact('categories', 'downloads'));
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
		$this->CategoriesDowload->id = $id;
		if (!$this->CategoriesDowload->exists()) {
			throw new NotFoundException(__('Invalid categories dowload'));
		}
		if ($this->CategoriesDowload->delete()) {
			$this->Session->setFlash(__('Categories dowload deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Categories dowload was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
