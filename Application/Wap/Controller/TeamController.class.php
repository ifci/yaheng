<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:21
 */
namespace Wap\Controller;
use Think\Controller;
class TeamController extends BaseController {
    /**
     * 列表页
     */
    public function index(){

        $this->assign('webtitle',L('T_TEAM'));
        //团队名称
        $T = M('Team');
        $team = $T -> field('id,title,etit,etxt,tit,txt,image_id') -> where('status=1') -> order('id ASC') -> select();
        $this -> assign('team', $team);
        $this->display();


    }
}