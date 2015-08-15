<?php
// 本类由系统自动生成，仅供测试用途
namespace Wap\Controller;
use Think\Controller;
class IndexController extends BaseController {

    public function index() {
        $N = M("Nav");
        $action = $N -> field('id,nav_name,link,action') -> where('type="top"') -> order('sort desc') -> select();
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