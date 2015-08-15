<?php
namespace Home\Controller;
use Think\Controller;
class AgentController extends BaseController {

    public function index() {
        $this->assign('webtitle',L('T_AGENT'));
        $this->assign("ad_info2", $this->getAd('agent'));
        $P = M('page');
        /*品牌代理*/
        $this -> ppdl = $P -> where("unique_id = 'ppdl' and display = 1") -> getField('content');
        /*代理条件*/
        $this -> dltj = $P -> where("unique_id = 'dltj' and display = 1") -> getField('content');
        /*代理流程*/
        $this -> dllc = $P -> where("unique_id = 'dllc' and display = 1") -> getField('content');
        $this -> display();
    }

}