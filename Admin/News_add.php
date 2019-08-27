<?php

if(!empty($_POST)){
	if(empty($_POST['newpig'])){
		echo "<script>alert('请选择分类!');history.go(-1);</script>";exit;
		
	}
     	//缩略图
//print_r($_FILES);exit;
		$photoxijie="";
	  if($_FILES["photo"]["error"]==0){
		 
		  
		  $photoxijie=upload($_FILES["photo"]);
	  }
	
	
	$_POST["photo"]=$photoxijie;
	//细节图
	$pics=array();
	$picsxije="";
	
	foreach($_FILES["pic"]["name"] as $k=>$r){
		
		if($r!=""){
			$pics["name"]=$_FILES["pic"]["name"][$k];
			$pics["type"]=$_FILES["pic"]["type"][$k];
			$pics["tmp_name"]=$_FILES["pic"]["tmp_name"][$k];
			$pics["error"]=$_FILES["pic"]["error"][$k];
			$pics["size"]=$_FILES["pic"]["size"][$k];
			
			$picsxije.=upload($pics)."|";
		}
		
	}
	
	$_POST["pics"]=$picsxije;
	$_POST["addtime"]=time();

	$re=DBadd("zc_news",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=News&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}
//查出新闻中心
$catlist=getOne("zc_category","module='News'");
//查出新闻中心的子类
$newlist=listAll('zc_category','*','pig='.$catlist["id"]);



?>