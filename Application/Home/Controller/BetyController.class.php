<?php
namespace Home\Controller;
use Think\Controller;
class BetyController extends BaseController {

    public function index() {
        $this->assign('webtitle',L('T_BETY'));
        $P = M('page');
        /*品牌简介*/
        $this -> ppjj = $P -> where("unique_id = 'ppjj' and display = 1") -> getField('content');
        /*品牌文化*/
        $this -> ppwh = $P -> where("unique_id = 'ppwh' and display = 1") -> getField('content');
        /*品牌路线*/
        $this -> pplx = $P -> where("unique_id = 'pplx' and display = 1") -> getField('content');
        $this -> display();
    }

}