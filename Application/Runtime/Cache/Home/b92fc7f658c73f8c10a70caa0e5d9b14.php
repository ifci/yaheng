<?php if (!defined('THINK_PATH')) exit();?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>404 NOT FOUND</title>
    <style>
        *{
            margin: 0;
            padding: 0;}
        .four{
            text-align: center;
            margin: 80px 0 0;
        }
        .error{
            margin: 30px auto 15px;
            color: #06a2ed;
            width: 514px;
            font-family: Microsoft YaHei, Verdana, Geneva, sans-serif;
        }
        .error p {
            font-size: 24px;
            margin-bottom: 10px;
        }
        .error_a a{
            color: #06a2ed;
            font-size: 14px;
            text-decoration: none;
        }
        .error_a a:hover{
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="four">
    <img src="/yaheng/Public/IMG/404.png" alt=""/>
</div>
<div class="error">
    <p>
        对不起，您想要进入的页面已经去火星了！
    </p>
    <div class="error_a">
        <a href="/yaheng/">返回地球</a>
    </div>
</div>
</body>
</html>