<?php

header("Content-type:text/html;Charset=utf-8");
include("init.php");
include("function.php");

$oldmanager=listAll('zc_manager','username');//listAll查询管理员全部数据，返回：二维数组
$act=$_GET["act"];//ajax提交过来的act值保存到$act
if($act=="addm"){
	foreach($oldmanager as $k=>$r){ 
		if($_POST["username"]==$r["username"]){   //如果ajax post  过来的用户名有
			
			echo "noo";exit;//用户名以存在，输出noo，终止
		}
		
	}
	
	
	$_POST["addtime"]=time();
	$_POST["password"]=md5($_POST["password"]);
	$re=DBadd("zc_manager",$_POST);  //添加post过来的数据到管理员表            
	if($re){
		
		echo 'yes';
	}else{
		
		echo 'no';
	}
	exit;
}else{
	
	
}

?>