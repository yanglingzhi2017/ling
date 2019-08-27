<?php 
header("Content-type:text/html;Charset=utf-8");
include("init.php");
include("function.php");

	$uname=$_POST["username"];
	$re=getOne("zc_manager","username='".$uname."'");
	if($re){
		
	echo 'has';
	}
	else{
		
		echo 'no';
	}



?>