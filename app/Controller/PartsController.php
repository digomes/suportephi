<?php
App::uses('AppController', 'Controller');
/**
 * Parts Controller
 *
 * @property Part $Part
 */
class PartsController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Part->recursive = 0;
		$this->set('parts', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Part->id = $id;
		if (!$this->Part->exists()) {
			throw new NotFoundException(__('Invalid part'));
		}
		$this->set('part', $this->Part->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
            
        $modelClass = 'Part';
            if ( $this->request->is('post') ) {
                $this->$modelClass->create();
                $idCategory = $this->request->data['Part']['category_id'];
                
                $fixed = array('Part' => array('category_id' => $idCategory));
                $records_count = $this->$modelClass->find( 'count' );
                try {
                    $this->$modelClass->importCSV( $this->request->data[$modelClass]['CsvFile']['tmp_name'], $fixed  );
                    
                } catch (Exception $e) {
                    $import_errors = $this->$modelClass->getImportErrors();
                    $this->set( 'import_errors', $import_errors );
                    $this->Session->setFlash( __('Error Importing') . ' ' . $this->request->data[$modelClass]['CsvFile']['name'] . ', ' . __('column name mismatch.')  );
                    $this->redirect( array('action'=>'add') );
                    
                }
         
                $new_records_count = $this->$modelClass->find( 'count' ) - $records_count;
                $this->Session->setFlash(__('Successfully imported') . ' ' . $new_records_count .  ' records from ' . $this->request->data[$modelClass]['CsvFile']['name'] );
                $this->redirect( array('action'=>'index') );
            }
            $this->set('modelClass', $modelClass );

                

		$categories = $this->Part->Category->find('list');
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
		$this->Part->id = $id;
		if (!$this->Part->exists()) {
			throw new NotFoundException(__('Invalid part'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Part->save($this->request->data)) {
				$this->Session->setFlash(__('The part has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The part could not be saved. Please, try again.'));
			}
		} else {
			$this->request->data = $this->Part->read(null, $id);
		}
		$categories = $this->Part->Category->find('list');
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
		$this->Part->id = $id;
		if (!$this->Part->exists()) {
			throw new NotFoundException(__('Invalid part'));
		}
		if ($this->Part->delete()) {
			$this->Session->setFlash(__('Part deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Part was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
