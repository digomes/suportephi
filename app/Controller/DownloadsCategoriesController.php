<?php
App::uses('AppController', 'Controller');
/**
 * DownloadsCategories Controller
 *
 * @property DownloadsCategory $DownloadsCategory
 */
class DownloadsCategoriesController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->DownloadsCategory->recursive = 0;
		$this->set('downloadsCategories', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->DownloadsCategory->id = $id;
		if (!$this->DownloadsCategory->exists()) {
			throw new NotFoundException(__('Invalid downloads category'));
		}
		$this->set('downloadsCategory', $this->DownloadsCategory->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->DownloadsCategory->create();
			if ($this->DownloadsCategory->save($this->request->data)) {
				$this->Session->setFlash(__('The downloads category has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The downloads category could not be saved. Please, try again.'));
			}
		}
		$downloads = $this->DownloadsCategory->Download->find('list');
		$categories = $this->DownloadsCategory->Category->find('list');
		$this->set(compact('downloads', 'categories'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		$this->DownloadsCategory->id = $id;
		if (!$this->DownloadsCategory->exists()) {
			throw new NotFoundException(__('Invalid downloads category'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->DownloadsCategory->save($this->request->data)) {
				$this->Session->setFlash(__('The downloads category has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The downloads category could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->DownloadsCategory->read(null, $id);
		}
		$downloads = $this->DownloadsCategory->Download->find('list');
		$categories = $this->DownloadsCategory->Category->find('list');
		$this->set(compact('downloads', 'categories'));
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
		$this->DownloadsCategory->id = $id;
		if (!$this->DownloadsCategory->exists()) {
			throw new NotFoundException(__('Invalid downloads category'));
		}
		if ($this->DownloadsCategory->delete()) {
			$this->Session->setFlash(__('Downloads category deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Downloads category was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
