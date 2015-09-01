<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:36
 */
namespace Wap\Controller;
use Think\Controller;
class ProductController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $P = M("Product");
        $C = M("Category");

        /*输出分类*/
        $cate = $C -> field('cid, pid, name') -> where("type='p' and pid='0'") -> order('cid asc') -> select();
        foreach($cate as $n => $val){
            $cate[$n]['voo'] = $C -> where('pid='.$val['cid']) -> select();
        }
        $this -> assign('cate_list', $cate);
//        dump($cate[1]);

        $list = $P -> field('id,cid,url,image_id') -> where('status=1') -> order('id DESC') -> select();
        $this->assign("list", $list);

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

    public function catelist(){
        $C = M("Category");
        $P = M('Product');
        $cid = I('get.cid');
        $sid=I('get.sid') ? I('get.sid') : $C -> where("type='s'") -> order('cid desc') -> getField('cid');
        $this -> assign('sid', $sid);
        if(IS_POST){
            $page = I('post.page') + 1;
            $map['status'] = 1;
            $map['sid'] = $sid;
            $map['cid'] = $cid;
            $list = $P -> where($map) -> order('id desc') -> limit($page*4, 4) -> select();
            foreach($list as $n => $val){
                $list[$n]['savapath'] = get_default_img($val['image_id']);
            }
            $this -> ajaxReturn($list);
        }else{
            if($cid){
                $webtitle = $C -> where('cid='.$cid) -> getField('name');
                $this -> assign('webtitle', $webtitle);
                /*输出季节*/
                $season = $C -> where("type='s'") -> order('cid desc') -> select();
                $this -> assign('season', $season);
                /*输出默认产品*/
                $list = $P -> where('status=1 and sid='.$sid.' and cid='.$cid) -> limit(8) -> order('id desc') -> select();
                $this->assign("list", $list);

                $count = $P -> where('status=1 and sid='.$sid.' and cid='.$cid) -> count();
                $this -> assign('count', $count);


                $this->assign('total', ceil($P -> where('status=1 and sid='.$sid.' and cid='.$cid) -> count()/4));


                $this -> display();
            }else{
                $this->redirect('./product');
            }
        }

    }

}