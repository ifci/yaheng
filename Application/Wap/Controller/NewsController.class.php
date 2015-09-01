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
        $cid=I('post.id');
        $map['pid'] = 1;
        $map['type'] = 'n';
        $ct = $C -> field('cid,name') -> where($map) -> order('cid DESC') -> select();
        $this -> assign('ct', $ct);
        $list = $N -> field('id,cid,title,summary,published,click,image_id') -> where('status=1') -> limit(C('LISTNUM.newslist')) -> order('id DESC') -> select();
        $this->assign("list", $list);
        $count = $N -> where('status=1') -> count();
        $this->assign("count", $count);
        $this->assign('total', ceil($N -> where('status=1 and cid =1') -> count()/C('LISTNUM.newslist')));
        $this->display();
    }

    public function ajax(){
        $page = I('get.page');
        $num = C('LISTNUM.newslist');
        $news = M('News');
        $map['cid'] = 1;
        $map['status'] = 1;
        $arr = $news -> where($map) -> limit($page*$num, $num) ->  order('id desc') -> select();
        $end = floor($news -> where($map) -> count()/$num);
//        echo $page == $end ? $arr[0]['clear'] = 1 : false;
        foreach($arr as $key => $val){
            $arr[$key]['src'] = get_default_img($arr[$key]['image_id']);
            $arr[$key]['published'] = date('Y/m/d', $arr[$key]['published']);
        }
        $this -> ajaxReturn($arr);

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