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
//        'product/:sid\d'    => 'product/index',
        'season'    => 'product/season',

        'leather'    => 'release/leather',

         /*单页*/
        'page/:name'    => 'page/index',


        'enroll' => 'haute/enroll',


    ),
);