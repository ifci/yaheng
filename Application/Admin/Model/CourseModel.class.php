<?php
namespace Admin\Model;
use Think\Model;
class CourseModel extends Model {

    public function listNews($firstRow = 0, $listRows = 20) {
        $M = M("Course");
        $list = $M->field("`id`,`title`,`teacher`,`address`,`time`,`content`,`status`,`published`")->order("`id` DESC")->limit("$firstRow , $listRows")->select();
        $statusArr = array("待审核", "已发布");
        $aidArr = M("Admin")->field("`aid`,`email`,`nickname`")->select();
        foreach ($aidArr as $k => $v) {
            $aids[$v['aid']] = $v;
        }
        unset($aidArr);
        $cidArr = M("Category")->field("`cid`,`name`")->select();
        foreach ($cidArr as $k => $v) {
            $cids[$v['cid']] = $v;
        }
        unset($cidArr);
        foreach ($list as $k => $v) {
            $list[$k]['aidName'] =$aids[$v['aid']]['nickname'] == '' ? $aids[$v['aid']]['email'] : $aids[$v['aid']]['nickname'];
            $list[$k]['status'] = $statusArr[$v['status']];
            $list[$k]['cidName'] = $cids[$v['cid']]['name'];
        }
        return $list;
    }

    public function addNews() {
        $M = M("Course");
        $data = $_POST['info'];
        $data['published'] = time();
        // $data['aid'] = $_SESSION['my_info']['aid'];
        if(empty($data['title'])){
            return array('status' => 0, 'info' => "请输入标题！",'url'=>__SELF__);
        }
        /*if(I('post.image')){
        $image = M("images");
        $img_data['savepath']=I('post.image');
        $img_data['savename']=end(explode('/',$img_data['savepath']));
        $img_data['create_time']=time();
        $img_data['catname']='video';
        $data['image_id']=$image->add($img_data);
        }*/

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
                        $img_data['catname']='news';
                        if($v)
                            $image_id[$k]=$M_image->add($img_data);
                    }
                    $data['image_id']=implode(',',$image_id);
                }
            }
            if($m_page->where('id='.$data['id'])->save($data)){
                echo json_encode(array("status" => 1, "info" => "修改单页成功",'url'=>U(CONTROLLER_NAME.'/index')));
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
                        $img_data['catname']='news';
                        if($v)
                            $image_id[$k]=$M_image->add($img_data);
                    }
                    $data['image_id']=implode(',',$image_id);
                }
            }
            if($m_page->add($data)){
                echo json_encode(array("status" => 1, "info" => "添加单页成功",'url'=>U(CONTROLLER_NAME.'/index')));
            }
        }

        /*if (empty($data['summary'])) {
            $data['summary'] = cutStr($data['content'], 200);
        }*/
        if ($M->add($data)) {
            return array('status' => 1, 'info' => "已经发布", 'url' => U('Video/index'));
        } else {
            return array('status' => 0, 'info' => "发布失败，请刷新页面尝试操作");
        }
    }

    public function edit() {
        $M = M("Course");
        $data = $_POST['info'];
        $data['update_time'] = time();
        if(empty($data['title'])){
            return array('status' => 0, 'info' => "请输入标题！",'url'=>__SELF__);
        }
        if(I('post.image_id')){
            $image = M("images");
            $img_data['savepath']=I('post.image_1');
            $img_data['savename']=end(explode('/',$img_data['savepath']));
            $img_data['create_time']=time();
            $img_data['catname']='video';
            $map['id']=I('post.image_id');
            $image->where($map)->save($img_data);
            $data['image_id']=$map['id'];
        }

        if ($M->save($data)) {
            return array('status' => 1, 'info' => "已经更新", 'url' => U('Course/index'));
        } else {
            return array('status' => 0, 'info' => "更新失败，请刷新页面尝试操作");
        }
    }

}

?>
