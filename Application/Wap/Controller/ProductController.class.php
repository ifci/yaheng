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
        $cid = I('get.cid');
        $sid = I('post.sid');
        $P = M('Product');
        $C = M("Category");
//        dump(get_default_img('221,222'));
        if(IS_POST){
            $map['status'] = 1;
            $map['sid'] = $sid;
            $list = $P -> where($map) -> limit(2) -> select();
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
                $list = $P -> where('status=1 and sid='.$season[0]['cid']) -> limit(8) -> order('id desc') -> select();
                $this->assign("list", $list);

                $this -> display();
            }else{
                $this->redirect('./product');
            }
        }

    }

}