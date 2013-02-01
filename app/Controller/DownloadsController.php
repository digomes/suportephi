<?php
App::uses('AppController', 'Controller');
/**
 * Downloads Controller
 *
 * @property Download $Download
 */
class DownloadsController extends AppController {

    
    public $components = array('RequestHandler');
    
/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Download->recursive = 0;
		$this->set('downloads', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Download->id = $id;
		if (!$this->Download->exists()) {
			throw new NotFoundException(__('Invalid download'));
		}
		$this->set('download', $this->Download->read(null, $id));
	}
        
	public function admin_view($id = null) {
		$this->Download->id = $id;
		if (!$this->Download->exists()) {
			throw new NotFoundException(__('Invalid download'));
		}
		$this->set('download', $this->Download->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Download->create();
                        debug($this->data);
			if ($this->Download->save($this->request->data)) {
				$this->Session->setFlash(__('The download has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The download could not be saved. Please, try again.'));
			}
		}
                $categories = $this->Download->Category->find('list');
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
		$this->Download->id = $id;
		if (!$this->Download->exists()) {
			throw new NotFoundException(__('Invalid download'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Download->save($this->request->data)) {
				$this->Session->setFlash(__('The download has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The download could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Download->read(null, $id);
		}
                $categories = $this->Download->Category->find('list');
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
		$this->Download->id = $id;
		if (!$this->Download->exists()) {
			throw new NotFoundException(__('Invalid download'));
		}
		if ($this->Download->delete()) {
			$this->Session->setFlash(__('Download deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Download was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
        
        
        public function lista($id = null) {
                $this->Download->Category->id = $id;
                
                $this->Download->bindModel(
                        array(
                            'hasOne' => array(
                                    'DownloadsCategory' => array(
                                    ),
                        ),false
                            )
                        );
                $downloads = $this->Download->find('all',
                        array(
                            'conditions' => array(
                            'DownloadsCategory.category_id' => $this->Download->Category->id
                            )
                        )
                 );  
                
                if ($this->request->is('requested')) {
                    return $downloads;
                } else {
                    $this->set(compact('downloads'));
                
                }
                       
                
                
	}
        
        public function admin_baixar($id = null){
           $this->Download->id = $id;
           $baixar = $this->Download->read(null, $id); 
            
            
            //debug($baixar);
            //print_r();  

            $ext = explode('.', $baixar['Download']['filename']);

            $this->viewClass = 'Media';
            $params = array(
                'id' => $baixar['Download']['filename'],
                'name' => $ext['0'],
                'download' => true,
                'extension' => $ext['1'],
                'mimeType' => $baixar['Download']['mimetype'], 
                'path' => 'files'.DS.'download'.DS.'filename'.DS.$baixar['Download']['dir'].DS.''
            );
            $this->set($params); 
        }
        
        public function baixar($id = null){
           $this->Download->id = $id;
           $baixar = $this->Download->read(null, $id); 
            
            
            //debug($baixar);
            //print_r();  

            $ext = explode('.', $baixar['Download']['filename']);

            $this->viewClass = 'Media';
            $params = array(
                'id' => $baixar['Download']['filename'],
                'name' => $ext['0'],
                'download' => true,
                'extension' => $ext['1'],
                'mimeType' => $baixar['Download']['mimetype'], 
                'path' => 'files'.DS.'download'.DS.'filename'.DS.$baixar['Download']['dir'].DS.''
            );
            $this->set($params); 
        }        
}
