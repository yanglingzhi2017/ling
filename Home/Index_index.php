<?php


$lunbo=listAll("banner","*","title='轮播主图1'");






$newcompany=listAll("zc_news","*","newpig=49");   //公司新闻


$newhanye=getLimitAll("zc_news","*","newpig=50","id desc",200,1);     //行业新闻

$newhan=getLimitAll("zc_news","*","1=1","id desc",1);     //行业新闻

// var_dump($newhan);exit;




$productjia=getLimitAll("product","*","productpig=51","id desc",10);//家居装修

$productban=getLimitAll("product","*","productpig=52","id desc",10);//办公装修

$company=getOne("article","title='关于我们'","*");



?>