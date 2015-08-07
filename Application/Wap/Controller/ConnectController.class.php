<?php
// 本类由系统自动生成，仅供测试用途
namespace Wap\Controller;
use Think\Controller;
class ConnectController extends BaseController {

    public function index() {
        $this->assign('webtitle',L('T_CONNECT'));
        $this->assign("ad_info", $this->getAd('bottom'));
        $this->display();
    }

}