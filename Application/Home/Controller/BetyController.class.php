<?php
namespace Home\Controller;
use Think\Controller;
class BetyController extends BaseController {

    public function index() {
        $this->assign('webtitle',L('T_BETY'));

        $this -> display();
    }

}