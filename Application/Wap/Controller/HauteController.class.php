<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:36
 */
namespace Wap\Controller;
use Think\Controller;
class HauteController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        /*案例展示*/
        $case = M("Case") -> where('status=1') -> order('sort asc') -> select();
        $this -> assign('case', $case);

        /*定制流程*/

        $map['unique_id'] = 'dzlc';
        $map['display'] = 1;

        $dz=M('page')->where($map)->select();
        $this -> assign('dz',$dz);
        $this->display();
    }


    public function enroll(){

        if(IS_POST){
            $data['uname']=I('post.uname');
            $data['tel']=I('post.tel');
            $data['email']=I('post.email');
            $data['address']=I('post.address');
            $data['text']=I('post.text');
            $data['addtime']=time();
            $message=M('message');
            if(!$_POST['uname']){
                $this -> ajaxReturn(array('tip' => 0, 'info' => '请填写姓名'));
            }else if(!usedExp($_POST['uname'], 'chineseExp')) {
                $this -> ajaxReturn(array('tip' => 0, 'info' => '姓名格式错误！'));
            }else if(!$_POST['tel']){
                $this -> ajaxReturn(array('tip' => 0, 'info' => '请填写电话号码'));
            }else if(!usedExp($_POST['tel'], 'phoneExp')) {
                $this -> ajaxReturn(array('tip' => 0, 'info' => '手机号码格式错误！'));
            }else if($message->add($data)){
                $this -> ajaxReturn(array('tip' => 1, 'info' => '留言成功，我们会尽快与您联系'));
            }else{
                $this -> ajaxReturn(array('tip' => 0, 'info' => '留言失败'));
            }/*else if($_POST['code']) {
                if($_POST['code'] == $_COOKIE['code']){
                    $this -> ajaxReturn(array('tip' => 2, 'info' => '请勿重复提交'));
                }else if($message->add($data)){
                    cookie('code', $_POST['code'], 600);
                    $this -> ajaxReturn(array('tip' => 2, 'info' => '留言成功'));
                }else{
                    $this -> ajaxReturn(array('tip' => 2, 'info' => '留言失败'));
                }
            }*/
        }else{
            $this -> display();
        }


    }

}