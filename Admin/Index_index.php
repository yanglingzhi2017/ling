<?php


//统计留言条数
$countword=DBcount("contact_us");
//var_dump($countword);exit;
$_SESSION["contact_word"]=$countword;