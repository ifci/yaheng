<?php
/**
 * Created by PhpStorm.
 * User: cony
 * Date: 14-2-26
 * Time: 下午2:16
 */
return array(
    'URL_ROUTE_RULES'=>array(
    		/*新闻*/
        'news_r/:id\d'    => 'news/read',
        'news/'    => 'news/index',
        'news/:id\d'    => 'news/index',

        /*产品*/
        'product_r/:id\d'    => 'product/read',
        'product/'    => 'product/index',
        'product/:cid\d'    => 'product/index',


        /*团队*/
        'team/'    => 'team/index',
        'team_r/:id\d'    => 'team/read',


         /*单页*/
        'page/:name'    => 'page/index',


        /*科学孕育一站式*/
        'station' => 'station/index',

        /*科研合作*/
        'coope' => 'coope/index',


        /*联系我们*/
        'contact' => 'contact/index',

        /*关于昕朗*/
        'about' => 'about/index',

        /*课程设置*/
        'course' => 'course/index',

    ),
);