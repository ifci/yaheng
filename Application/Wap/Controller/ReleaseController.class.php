<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:36
 */
namespace Wap\Controller;
use Think\Controller;
class ReleaseController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $P = M("Product");
        $map['status']=1;
        $map['is_recommend']=1;
        $list = $P -> where($map) -> order('id desc') -> limit(14) -> select();
        $this->assign("list", $list);


        $this->display();
    }

}