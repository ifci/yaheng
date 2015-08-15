<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:36
 */
namespace Home\Controller;
use Think\Controller;
class ProductController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $P = M("Product");
        $C = M("Category");
        $cid=I('get.cid');
        if($cid){
            $map['cid']=$cid;
        }


        $map['status']=1;
        $map['lang']=LANG_SET;



        /*输出分类*/
        $cate = $C -> field('cid, pid, name') -> where("type='p' and pid='0'") -> order('cid asc') -> select();
        foreach($cate as $n => $val){
            $cate[$n]['voo'] = $C -> where('pid='.$val['cid']) -> select();
        }

        $this -> assign('cate_list', $cate);


        /*输出季节*/

        $season = $C -> where("type='s'") -> order('cid desc') -> select();

        $this -> assign('season', $season);

        /*输出默认产品*/
        $count = $P->table($P->getTableName().' p')
//            ->join($C->getTableName().' c on c.cid=p.cid')
            ->field('p.id')
            ->where($map)->count();
        $page = new \Think\Page($count,C('LISTNUM.prolist'));
        $showPage = $page->show();
        $this->assign("page", $showPage);
        /*$list=$P->table($P->getTableName().' p')
            ->join($C->getTableName().' c on c.cid=p.cid')
            ->field('p.id,p.cid,p.image_id,p.price,p.psize,p.title,p.ename,p.url,p.description,p.update_time,p.click,c.name as cname')
            ->where($map)->order('id desc')->limit("$page->firstRow, $page->listRows")->select();*/
        $list = $P -> where($map) -> limit("$page->firstRow, $page->listRows") -> order('id desc') -> select();
        $this->assign("list", $list);

        $this->assign("ad_info", $this->getAd('bottom'));
        $this->assign('webtitle',L('T_PRODUCT'));
        $this->display();
    }
    /**
     * 详情页
     */
    public function read(){
        $id = I('get.id');
        $P = M('product');
        !$id ? $this->_empty($id) : false;
        $map['id']=$id;
        if($info = $P ->where($map)->find()){
            if($info['status']==0){
                $this->redirect('product/index');
            }
            $C = M("Category");
            $map2['cid']=$info['cid'];
            $info['cname']=$C->where($map2)->getField('name');
            $this->assign('info',$info);
            $this->assign('images',get_img_array($info['image_id']));
            $P -> where($map)->setInc('click',1);
            $this->assign('webtitle',$info['title'].'-'.L('T_PRODUCT'));
            $this->assign("ad_info", $this->getAd('bottom'));
            $this->display();
        }else{
            $this->redirect('product/index');
        }
    }

}