<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午3:21
 */
namespace Home\Controller;
use Think\Controller;
class VideoController extends BaseController {
    /**
     * 列表页
     */
    public function index(){
        $N = M("Video");

        /*$list = $V -> where('status=1')
        -> field('id,title,url,content,status,image_id,published')
        -> order('id desc')
        -> limit(7)
        -> select();
        $this -> assign('list', $list);*/

        $map['n.status']=1;
//        $map['n.lang']=LANG_SET;
        $count = $N->table($N->getTableName().' n')
//            ->join($C->getTableName().' c on c.cid=n.cid')
            ->field('n.id')
            ->where($map)->count();
        $page = new \Think\Page($count,C('LISTNUM.newslist'));
        $showPage = $page->show();
        $this->assign("page", $showPage);
        $list=$N->table($N->getTableName().' n')
//            ->join($C->getTableName().' c on c.cid=n.cid')
            ->field('n.id,n.title,n.url,n.content,n.update_time,n.image_id,n.published')
            ->where($map)->order('id desc')->limit("$page->firstRow, $page->listRows")->select();
        $this->assign("list", $list);
        $this->assign("ad_info", $this->getAd('bottom'));
        $this->assign('webtitle',L('T_VIDEO'));
        $this->display();
    }
    /**
     * 详情页
     */
    public function read(){
        $id=I('get.id');
        $m_video=M('Video');
        $this->assign("ad_info", $this->getAd());
        $this->assign('details', 1);

        if(!$id){$this->_empty($id);}
        $map['id']=$id;
        if($info=$m_video->where($map)->find()){
            if($info['status']==0){
                $this->_empty($id);
            }
            /*$C = M("Category");
            $map2['cid']=$info['cid'];
            $info['cname']=$C->where($map2)->getField('name');*/
            $this->assign('info',$info);
            // $this->assign('auther',$this->getAuther($info['aid']));
            // $m_video->where($map)->setInc('click',1);
            $this->assign('webtitle',L('T_VIDEO'));
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