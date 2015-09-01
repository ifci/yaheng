<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:36
 */
namespace Home\Controller;
use Think\Controller;
class ReleaseController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $P = M("Product");
        $map['status']=1;
        $map['lang']=LANG_SET;
        $map['is_recommend']=1;


        $count = $P->table($P->getTableName().' p')
//            ->join($C->getTableName().' c on c.cid=p.cid')
            ->field('p.id')
            ->where($map)->count();
        $page = new \Think\Page($count,14);
        $showPage = $page->show();
        $this->assign("page", $showPage);

        $list = $P -> where($map) -> order('id desc') -> limit("$page->firstRow, $page->listRows") -> select();
        $this->assign("list", $list);

        $this->assign('total', ceil($P -> where('status=1 and is_recommend =1') -> count()/C('LISTNUM.prolist')));


        $this->assign("ad_info", $this->getAd('bottom'));
        $this->assign('webtitle',L('T_RELEASE'));
        $this->display();
    }

    public function leather(){

        $this->assign('webtitle',L('T_RELEASE'));
        $this -> display();
    }

}