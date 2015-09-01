<?php
// 本类由系统自动生成，仅供测试用途
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {

    public function index() {
        $this->assign("ad_banner", $this->getAd('index'));
        $this->assign("ad_info", $this->getAd('bottom'));
        $this->assign('webtitle',L('T_HOME'));


        $N = M("News");
        $news_list = $N -> where('status=1') -> order('id desc') -> limit(8) -> select();
        $this -> assign("news_list", $news_list);


        $gif = M('Gif') -> where('id=1') -> getField('image_id');
        $this -> assign('gif', get_img_array($gif));



        $this -> display();
    }


}