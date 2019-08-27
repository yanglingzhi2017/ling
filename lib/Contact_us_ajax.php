<?php
header("Content-type:text/html;Charset=utf-8");
include("init.php");
include("function.php");
session_start();

	 if(empty($_POST["yzm"])){
		 
		 echo 'yzm';
		 exit;
	 }
	 if(empty($_POST["name"])|| empty($_POST["phone"])){
		 echo 'empty';
		 exit;
	 }
			 
	if(!empty($_POST)){		 
			 if($_POST["yzm"]!=$_SESSION["imgode"]){
				 
				 echo 'zm';
				 exit;
			 }
			$_POST["addtime"]=time();
	unset($_POST["yzm"]);
	$re=DBadd("contact_us",$_POST);
	
	if($re){
		
		echo 'yes';
			 exit;
	}else{
		
		echo 'no';
			 exit;
	}
	exit; 
		 }
		 
		 


?>