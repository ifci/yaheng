<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:21
 */
namespace Wap\Controller;
use Think\Controller;
class NewsController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $N = M("News");
        $C = M("Category");
        $cid=I('get.id');
        $map['pid'] = 1;
        $map['type'] = 'n';
        $ct = $C -> field('cid,name') -> where($map) -> order('cid DESC') -> select();
        $this -> assign('ct', $ct);
        $list = $N -> field('id,cid,title,summary,published,click,image_id') -> where('status=1') -> order('id DESC') -> select();
        $this->assign("list", $list);
        $this->display();
    }
    /**
     * 详情页
     */
    public function read(){
        $id=I('get.id');
        $m_news=M('News');
        $C=M('Category');
        if(!$id){$this->_empty($id);}
        $map['id']=$id;
        if($info=$m_news->where($map)->find()){
            if($info['status']==0){
                $this->_empty($id);
            }
            $this->assign('info',$info);

            $cat = $C -> where('cid='.$info['cid']) -> getField('name');
            $this -> assign('cat', $cat);

            // 下一页
            $next = M('News')->where('id > '.$this->info['id'].' AND cid = '.$this->info['cid'])->order('id asc')->field('id,title')->find();
            // 上一页
            $prev = M('News')->where('id < '.$this->info['id'].' AND cid = '.$this->info['cid'])->order('id desc')->field('id,title')->find();
            $this->assign('next',$next);
            $this->assign('prev',$prev);


            $C = M("Category");
            $map2['cid']=$info['cid'];
            $info['cname']=$C->where($map2)->getField('name');
            $this->assign('info',$info);
            $this->assign('auther',$this->getAuther($info['aid']));
            $m_news->where($map)->setInc('click',1);
            $this->assign('webtitle',L('T_NEWS'));

            $this->display();
        }else{
            $this->_empty($id);
        }
    }
    protected function getAuther($id){
        if(!$id){return '';}
        $admin=M('admin');
        $map['aid']=$id;
        return $admin->where($map)->getField('nickname');
    }

}