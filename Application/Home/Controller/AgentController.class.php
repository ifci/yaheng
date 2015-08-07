<?php
namespace Home\Controller;
use Think\Controller;
class AgentController extends BaseController {

    public function index() {
        $this->assign('webtitle',L('T_AGENT'));

        $this -> display();
    }

}