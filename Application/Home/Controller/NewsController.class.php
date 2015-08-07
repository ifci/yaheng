<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:21
 */
namespace Home\Controller;
use Think\Controller;
class NewsController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $N = M("News");
        $C = M("Category");
        $cid=I('get.id');
        if($cid){
            $map['n.cid']=$cid;
        }else{
            $map['n.cid']=1;
        }
        $map['n.status']=1;
        $map['n.lang']=LANG_SET;
        $count = $N->table($N->getTableName().' n')
            ->join($C->getTableName().' c on c.cid=n.cid')
            ->field('n.id')
            ->where($map)->count();
        $page = new \Think\Page($count,C('LISTNUM.newslist'));
        $showPage = $page->show();
        $this->assign("page", $showPage);
        $list=$N->table($N->getTableName().' n')
            ->join($C->getTableName().' c on c.cid=n.cid')
            ->field('n.id,n.cid,n.title,n.summary,n.update_time,n.click,n.image_id,c.name as cname,n.published')
            ->where($map)->order('id desc')->limit("$page->firstRow, $page->listRows")->select();
        $this->assign("list", $list);
        $this->assign("ad_info", $this->getAd('bottom'));
        $this->assign("ad_info2", $this->getAd('news'));
        $this->assign('webtitle',L('T_NEWS'));

        $this->assign('total', ceil($N -> where('status=1 and cid =1') -> count()/C('LISTNUM.newslist')));

        $this->display();
    }
    /**
     * 详情页
     */
    public function read(){
        $this->assign('details', 1);
        $this->assign('webtitle',L('T_NEWS'));
        $this -> assign('b_url', 'News/index');
        $this->assign("ad_info2", $this->getAd('news'));
        $this->assign("ad_info", $this->getAd('bottom'));
        $id=I('get.id');
        $m_news=M('News');
        if(!$id){$this->_empty($id);}
        $map['id']=$id;
        if($info=$m_news->where($map)->find()){
            if($info['status']==0){
                $this->_empty($id);
            }
            $this->assign('info',$info);

            // 热门资讯
            $hot = $m_news -> where('status=1 and cid='.$info['cid']) -> order('click DESC') -> limit(10) -> select();
            $this -> assign('hot',$hot);

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

}