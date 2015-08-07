<?php
namespace Admin\Controller;
use Think\Controller;
class CourseController extends CommonController {

    public function index(){
           $M = M("Course");
            $count = $M->count();
            //import("ORG.Util.Page");       //载入分页类
            $page = new \Think\Page($count, 15);
            $showPage = $page->show();
            $this->assign("page", $showPage);
            $this->assign("list", D("Course")->listNews($page->firstRow, $page->listRows));
            $this->display();
        }

        public function add_page(){
            if(IS_POST){
                $m_page=M('Course');
                $data=$_POST['info'];
                $map1['title']=$data['title'];
                $data['published']=time();
                $ptime = $data['time'];
                $data['year']=date('Y', strtotime($ptime));
                $data['month']=date('n', strtotime($ptime));
                $data['day']=date('d', strtotime($ptime));
                if($data['lang'])$map2['lang']=$data['lang'];
                // $map2['unique_id']=$data['unique_id'];
                if($data['id']){
                    $map1['id']=$map2['id']=array('neq',$data['id']);
                }
                if(!$data['title']){
                    echo json_encode(array("status" => 0, "info" => "标题不能为空"));
                    exit;
                }
                if($m_page->where($map1)->count()>0){
                    echo json_encode(array("status" => 0, "info" => "标题已经存在，请修改"));
                    exit;
                }
                // if($m_page->where($map2)->count()>0){
                //     echo json_encode(array("status" => 0, "info" => "同一种语言别名已经存在，请修改"));
                //     exit;
                // }
                $image=I('post.image_1');
                if($data['id']){
                    if($image){
                        if(is_array($image)){
                            $M_image = M("images");
                            $image_id=array();
                            foreach($image as $k=>$v){
                                $img_data['savepath']=$v;
                                $img_data['savename']=end(explode('/',$v));
                                $img_data['create_time']=time();
                                $img_data['catname']='course';
                                if($v)
                                    $image_id[$k]=$M_image->add($img_data);
                            }
                            $data['image_id']=implode(',',$image_id);
                        }
                    }
                    if($m_page->where('id='.$data['id'])->save($data)){
                        echo json_encode(array("status" => 1, "info" => "修改成功",'url'=>U(CONTROLLER_NAME.'/index')));
                    }
                }else{
                    if($image){
                        if(is_array($image)){
                            $M_image = M("images");
                            $image_id=array();
                            foreach($image as $k=>$v){
                                $img_data['savepath']=$v;
                                $img_data['savename']=end(explode('/',$v));
                                $img_data['create_time']=time();
                                $img_data['catname']='video';
                                if($v)
                                    $image_id[$k]=$M_image->add($img_data);
                            }
                            $data['image_id']=implode(',',$image_id);
                        }
                    }
                    if($m_page->add($data)){
                        echo json_encode(array("status" => 1, "info" => "添加成功",'url'=>U(CONTROLLER_NAME.'/index')));
                    }
                }
            }else{
                $m_page=M('Course');
                $map['id']=I('get.id');
                $info=$m_page->where($map)->find();
                if($info['image_id']){
                    $image = M("images");
                    $map['id']= array('in',$info['image_id']);
                    $img_info = $image->where($map)->order('id asc')->select();
                    $this->assign("img_info", $img_info);
                }
                $pagelist = new \Org\Util\Category('Page', array('id', 'parent_id', 'page_name', 'fullname'));
                $this->assign("pagelist", $pagelist->getList());

                /*$data['year']=date('Y', strtotime(I('post.time')));
                $data['month']=date('n', strtotime(I('post.time')));
                $data['day']=date('d', strtotime(I('post.time')));*/

                $this->assign('time',time());
                $this->assign('info',$info);
                $this->display();
            }

        }

        public function del(){
            $id=I('get.id');
            if(!$id){
                return false;
            }
            $map['id']=$id;
            $M=M('Course');
            if($M->where('parent_id='.$id.' AND id!='.$id)->count()>0){
                echo json_encode(array("status" => 0, "info" =>'删除失败,存在下级单页'));
                exit;
            }
            if($M->where($map)->delete()){
                echo json_encode(array("status" => 1, "info" =>'删除成功'));
            }else{
                echo json_encode(array("status" => 0, "info" =>'删除失败，可能是不存在该ID的记录'));
            }
        }

        public function changeStatus(){
            $id=I('get.id');
            $m_news=M("Video");
            $map['id']=$id;
            $status=$m_news->where($map)->getField('status');
            $data['status']=abs($status-1);
            $statusArr = array("待审核", "已发布");
            if($m_news->where($map)->save($data)){
                echo json_encode(array("status" => 1, "info" => $statusArr[$data['status']]));
                //echo '<img src="../Public/Img/action_'.$data['is_recommend'].'.png" border="0">';
                exit;
            }
            return false;
        }
}