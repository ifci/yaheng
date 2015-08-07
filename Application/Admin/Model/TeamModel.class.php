<?php
namespace Admin\Model;
use Think\Model;
class TeamModel extends Model {

    public function listNews($firstRow = 0, $listRows = 20) {
        $M = M("Team");
        $list = $M->order("`id` DESC")->limit("$firstRow , $listRows")->select();
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
        $M = M("Video");
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


    public function category() {
        if (IS_POST) {
            $act = $_POST['act'];
            $data = $_POST['data'];
            $data['name'] = addslashes($data['name']);
            $data['type']='t';
            $M = M("Category");
            if ($act == "add") { //添加分类
                unset($data['cid']);
                if ($M->where($data)->count() == 0) {
                    return ($M->add($data)) ? array('status' => 1, 'info' => '分类 ' . $data['name'] . ' 已经成功添加到系统中', 'url' => U('Team/category', array('time' => time()))) : array('status' => 0, 'info' => '分类 ' . $data['name'] . ' 添加失败');
                } else {
                    return array('status' => 0, 'info' => '系统中已经存在分类' . $data['name']);
                }
            } else if ($act == "edit") { //修改分类
                if (empty($data['name'])) {
                    unset($data['name']);
                }
                if ($data['pid'] == $data['cid']) {
                    unset($data['pid']);
                }
                return ($M->save($data)) ? array('status' => 1, 'info' => '分类 ' . $data['name'] . ' 已经成功更新', 'url' => U('Team/category', array('time' => time()))) : array('status' => 0, 'info' => '分类 ' . $data['name'] . ' 更新失败');
            } else if ($act == "del") { //删除分类
                unset($data['pid'], $data['name']);
                return ($M->where($data)->delete()) ? array('status' => 1, 'info' => '分类 ' . $data['name'] . ' 已经成功删除', 'url' => U('Team/category', array('time' => time()))) : array('status' => 0, 'info' => '分类 ' . $data['name'] . ' 删除失败');
            }
        } else {
            //import("Category");
            $map['type']='t';
            $cat = new \Org\Util\Category('Category', array('cid', 'pid', 'name', 'fullname'),$map);
            return $cat->getList();               //获取分类结构
        }
    }

    public function edit() {
        $M = M("Video");
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
            return array('status' => 1, 'info' => "已经更新", 'url' => U('Video/index'));
        } else {
            return array('status' => 0, 'info' => "更新失败，请刷新页面尝试操作");
        }
    }

}

?>
