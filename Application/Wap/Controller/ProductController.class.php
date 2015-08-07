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
        $ct = $C -> field('cid,name,ename') -> where('type="p"') -> order('cid ASC') -> select();
        $this -> assign('ct', $ct);
        $list = $P -> field('id,cid,url,image_id') -> where('status=1') -> order('id DESC') -> select();
        $this->assign("list", $list);

        $this->assign('webtitle',L('T_PRODUCT'));
        $this->display();
    }
    /**
     * 详情页
     */
    public function read(){
        $id=I('get.id');
        $m_product=M('product');
        if(!$id){$this->_empty($id);}
        $map['id']=$id;
        if($info=$m_product->where($map)->find()){
            if($info['status']==0){
                $this->redirect('product/index');
            }
            $C = M("Category");
            $map2['cid']=$info['cid'];
            $info['cname']=$C->where($map2)->getField('name');
            $this->assign('info',$info);
            $this->assign('images',get_img_array($info['image_id']));
            $m_product->where($map)->setInc('click',1);
            $this->assign('webtitle',$info['title'].'-'.L('T_PRODUCT'));
            $this->assign("ad_info", $this->getAd('bottom'));
            $this->display();
        }else{
            $this->redirect('product/index');
        }
    }

}