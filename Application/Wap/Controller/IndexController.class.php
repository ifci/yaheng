<?php
// 本类由系统自动生成，仅供测试用途
namespace Wap\Controller;
use Think\Controller;
class IndexController extends BaseController {

    public function index() {
        $this->assign("ad_banner", $this->getAd());
        $this -> ad_banner = M('Ad') -> field('id,ad_name,ad_link,ad_img') -> where('position="mobile"') -> order('sort DESC') -> select();
        $this->assign('webtitle',L('T_HOME'));
        $M = M("Video");
        $video_list = $M -> field('id,title,url,image_id') -> where('status=1') -> order('id desc') -> limit(3) -> select();
        $this->assign("video_list", $video_list);

        $P = M("Product");
        $pro_list = $P -> field('id,title,ename,url,image_id,description') -> where('status=1') -> order('id desc') -> limit(8) -> select();
        $this->assign("pro_list", $pro_list);
        $N = M("Nav");
        $action = $N -> field('id,nav_name,nav_rename,link,action') -> where('type="top"') -> order('sort desc') -> select();
        $this -> assign('nav', $action);
        $this->display();
    }

    /**
     * UC登录测试
     */
    function test(){
        $uc = new \Ucenter\Client\Client();
        $re = $uc->uc_user_login("zhangsan", "123456");//也可以$uc->ucUserLogin(),兼容驼峰式风格
        dump($re);
    }

}