<?php
//$re=listAll("zc_news","*","newclass='新闻中心'");


if(!empty($_GET["act"])){
	$act=$_GET["act"];
	
	$prolist=getOne("product","id=".$act,"*");
	
	
	$ki=explode('|',$prolist["pics"],-1);
		
}




?>