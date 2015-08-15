<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-3-7
 * Time: 下午2:04
 */
namespace Wap\Controller;
use Think\Controller;
class BaseController extends Controller{

    public function _initialize(){

        if(!isMobile()){
            header("Location: ".__ROOT__);
        }


        $this->assign("site", C('SITE_INFO'));
        $this->assign("area", M('company')->select());
        if(I('get.'.C('VAR_LANGUAGE'))){
            delDirAndFile(WEB_CACHE_PATH . "Cache/Home/");
        }
//        头部导航
        $N = M("Nav");
        $action = $N -> field('id,nav_name,link,action') -> where('type="top"') -> order('sort desc') -> select();
        $this -> assign('nav', $action);

        $webtitle = $N -> where("action='".CONTROLLER_NAME."'")->getField('nav_name');
        $this->assign('webtitle',$webtitle);

    }

    public function _empty($name){
        //把所有城市的操作解析到city方法
        $this->display('Base:empty');
        exit;
    }

    public function getAd($pname=''){
        $m_ad=M('ad');
        $mname=strtolower(CONTROLLER_NAME);
        $aname=strtolower(ACTION_NAME);
        $map['lang']=LANG_SET;
        if($mname=='index' && $aname=='index'){
            $map['position']='index';
        }/*else{
            switch($pname){
                case 'news':
                    $map['position']=array(array('eq','news'),array('eq','all'),'or');
                    break;
                case 'product':
                    $map['position']=array(array('eq','product'),array('eq','all'),'or');
                    break;
                case 'message':
                    $map['position']=array(array('eq','message'),array('eq','all'),'or');
                    break;
                case 'page':
                    if($pname)
                        $map['position']=array(array('eq',$pname),array('eq','all'),'or');
                    break;
                default:
                    $map['position']='all';
                    break;
            }
        }*/
        if($pname == 'mobile'){
            $map['position']='mobile';
        }
        $info=$m_ad->where($map)->order('sort DESC')->select();
        return $info;
    }

    public function verify_code(){
        ob_end_clean();
        $Verify = new \Think\Verify();
        $Verify->fontSize = 17;
        $Verify->length   = 4;
        $Verify->codeSet = '0123456789';
        $Verify->entry();
    }


}