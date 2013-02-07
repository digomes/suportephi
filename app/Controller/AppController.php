<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('Controller', 'Controller');
App::import('Core', 'l10n');
/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {

       public $components = array(
        'Acl',
        'Auth' => array(
            'authorize' => array(
                'Actions' => array('actionPath' => 'controllers')
            )
        ),
        'Session',
        'Email',
        'Cookie',
        'Security',
        'RequestHandler',
        'Acl.AclManager'    
           
    );
       
    
    public $helpers = array(
        'Html' => array('className' => 'MyHtml'), 
        'Form', 
        'Session',
        'Paginator',
        'MenuBuilder.MenuBuilder' => array(
        'activeClass' => 'active', 
        'firstClass' => 'first-item', 
        'childrenClass' => 'has-children', 
        'evenOdd' => false, 
        //'itemFormat' => '<dd%s>%s%s</dd>',
        //'wrapperFormat' => '<dl%s>%s</dl>',
       //'noLinkFormat' => '<dd>%s</dd>',
        'menuVar' => 'menu',
        'authVar' => 'user',
        'authModel' => 'User',
        'authField' => 'group_id',
            )
        );

    public function beforeFilter() {
        $this->Auth->allow(array('forgetpwd', 'reset'));
        //$this->Auth->allow('*');
        $this->Auth->loginAction = array('controller' => 'users', 'action' => 'login');
        $this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'login');
        $this->Auth->loginRedirect = array('controller' => 'posts', 'action' => 'index');
           
        $this->AclManager->set_session_permissions();
        
        $this->_setLanguage();
        //$user = $this->Auth->user();
        $user = $this->Session->read('Auth');
        $this->set(compact('user'));
        
    $menu = array(
        'main-menu' => array(
            //Menu Inicio
            array(
                'title' => __('Home'),
                'url' => array('controller' => 'posts', 'action' => 'index'),
                'permissions' => array('1', '2', '3', '4', '5', '6', '7'),
            ),
           //menu usuarios 
            array(
                'title' => __('Users'),
                'url' => array('controller' => 'users', 'action' => 'index'),
                'permissions' => array('1', '2', '3', '4', '5', '6', '7'),
                'children' => array(
                    array(
                        'title' => __('List Users'),
                        'url' => array('controller' => 'users', 'action' => 'index'),
                        'permissions' => array('1', '2', '3', '4', '5', '6'),
                    ),
                    array(
                        'title' => __('Add Users'),
                        'url' => array('controller' => 'users', 'action' => 'add'),                     
                        'permissions' => array('1'),    
                    ),
                                        array(
                        'title' => __('Add Users'),
                        'url' => array('controller' => 'users', 'action' => 'add'),                     
                        'permissions' => array('2', '3', '4', '5', '6', '7'),    
                    ),
                    array(
                     'title' => __('Edit Profile'),
                     'url' => array('controller' => 'users', 'action' => 'edit', $this->Session->read('Auth.User.id')),
                     'permissions' => array('1'),
                     ),
                     array(
                     'title' => __('Edit Profile'),
                     'url' => array('controller' => 'users', 'action' => 'edit', $this->Session->read('Auth.User.id')),
                     'permissions' => array('2', '3', '4', '5', '6', '7'),
                     ),


                )
            ),
     //menu Grupo       
            array(
                'title' => __('Groups'),
                'url' => array('controller' => 'groups', 'action' => 'index'),
                'permissions' => array('1'),
                'children' => array(
                    array(
                        'title' => __('List Groups'),
                        'url' => array('controller' => 'groups', 'action' => 'index'),
                    ),                    
                    array(
                        'title' => __('Add Groups'),
                        'url' => array('controller' => 'groups', 'action' => 'add'),
                    )
                 ),                        
            ),
            
 // Menu Posts           
            array(
                'title' => __('Posts'),
                'url' => array('controller' => 'posts', 'action' => 'index'),
                'permissions' => array('1' ,'2', '3', '4', '5', '6', '7'),
                'children' => array(
                    array(
                        'title' => __('List Posts'),
                        'url' => array('controller' => 'posts', 'action' => 'index'),
                        //'permissions' => array('1'),
                    ),
                      array(
                        'title' => __('Add Posts'),
                        'url' => array('controller' => 'posts', 'action' => 'add'),
                        'permissions' => array('1'),
                      ),  
                )
            ), 
                    array(
                        'title' => __('Models'),
                        'url' => array('controller' => 'categories', 'action' => 'index'),
                        'permissions' => array('1' ,'2', '3', '4', '5', '6', '7'),
                        'children' => array(
                            array(
                                'title' => __('List Models'),
                                'url' => array('controller' => 'categories', 'action' => 'index'),
                                'permissions' => array('1', '2', '3', '4', '5', '6', '7'),
                            ),                                
                            array(
                                'title' => __('Add Models'),
                                'url' => array('controller' => 'categories', 'action' => 'add'),
                                'permissions' => array('1'),
                            ),
                        ),                        
                    ),
                    array(
                        'title' => __('Images'),
                        'url' => array('controller' => 'images', 'action' => 'index'),
                        'permissions' => array('1'),
                        'children' => array(
                            array(
                                'title' => __('List Images'),
                                'url' => array('controller' => 'images', 'action' => 'index'),
                            ),                            
                            array(
                                'title' => __('Add Images'),
                                'url' => array('controller' => 'images', 'action' => 'add'),
                            ),
                        ),                        
                    ),
                    array(
                        'title' => __('Types'),
                        'url' => array('controller' => 'types', 'action' => 'index'),
                        'permissions' => array('1'),
                        'children' => array(
                            array(
                                'title' => __('List Types'),
                                'url' => array('controller' => 'types', 'action' => 'index'),
                            ),
                            array(
                                'title' => __('Add Types'),
                                'url' => array('controller' => 'types', 'action' => 'add'),
                            ),                            
                        ),                        
                    ),
                    array(
                        'title' => __('Parts'),
                        'url' => array('controller' => 'parts', 'action' => 'search'),
                        'permissions' => array('1' ,'2', '3', '4', '5', '6', '7'),
                        'children' => array(
                            array(
                                'title' => __('List Parts'),
                                'url' => array('controller' => 'parts', 'action' => 'index'),
                                'permissions' => array('1'),
                            ),
                            array(
                                'title' => __('Add Parts'),
                                'url' => array('controller' => 'parts', 'action' => 'add'),
                                'permissions' => array('1'),
                            ),
                            array(
                                'title' => __('Where Used'),
                                'url' => array('controller' => 'parts', 'action' => 'search'),
                                'permissions' => array('1' ,'2', '3', '4', '5', '6', '7'),
                            ),                             
                        ),                        
                    ),
            
                    array(
                        'title' => __('Workshops'),
                        //'url' => array('controller' => 'workshops', 'action' => 'index'),
                        'permissions' => array('1' ,'2', '3', '4', '5', '6'),
                        'children' => array(
                            array(
                                'title' => __('List Workshops'),
                                'url' => array('controller' => 'workshops', 'action' => 'index'),
                                'permissions' => array('1'),
                            ),
                            array(
                                'title' => __('Add Workshops'),
                                'url' => array('controller' => 'workshops', 'action' => 'add'),
                                'permissions' => array('1'),
                            ),
                            array(
                                'title' => __('Edit Workshop'),
                                'url' => array('controller' => 'workshops', 'action' => 'edit', $this->Session->read('Auth.User.Workshop.id')),
                                'permissions' => array('1' ,'2', '3', '4', '5', '6'),
                            ),                                                        
                        ),                        
                    ), 
            
            array(
                'title' => __('Downloads'),
                'url' => array('controller' => 'downloads', 'action' => 'index'),
                'permissions' => array('1'),
                        'children' => array(
                            array(
                                'title' => __('Add Downloads'),
                                'url' => array('controller' => 'downloads', 'action' => 'add'),
                                'permissions' => array('1'),
                            ),                                                       
                        ),  

            ),
            array(
                'title' => __('Highlights'),
                'url' => array('controller' => 'highlights', 'action' => 'index'),
                'permissions' => array('1'),
                    'children' => array(
                        array(
                            'title' => __('Add Highlights'),
                            'url' => array('controller' => 'highlights', 'action' => 'add'),
                            'permissions' => array('1'),
                        )
                    )
            ),            
             //Menu Permissões ACL           
            array(
                'title' => __('Permissions'),
                'url' => array('controller' => 'acl', 'action' => 'acos'),
                'permissions' => array('1'),
            ),
            
            array(
                'title' => __('Logout'),
                'url' => array('controller' => 'users', 'action' => 'logout'),
                'permissions' => array('1' ,'2', '3', '4', '5', '6', '7'),
            ),             
        ),
    

    );        
    // For default settings name must be menu
    $this->set(compact('menu'));

    }
    
    public function _setLanguage(){
        if($this->Cookie->read('lang') && !$this->Session->check('Config.language')){
            $this->Session->write('Config.language', $this->Cookie->read('lang'));
        }else if(isset($this->params['language']) && $this->params['language'] != $this->Session->read('Config.language')){
            $this->Session->write('Config.language', $this->params['language']);
            $this->Cookie->write('lang', $this->params['language'], false, '20 days');
        }
    }
    
    public function redirect($url, $status = null, $exit = true) {

        if(!isset($url['language']) && $this->Session->check('Config.language')){
            $url['language'] = $this->Session->read('Config.language');
        }
        
        parent::redirect($url, $status, $exit);
    }
    
    function isAuthorized($user) {
         //return false;
        return $this->Auth->loggedIn();
        
         
    }

}
