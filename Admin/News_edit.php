<?php
 $ri=getOne("zc_news","id=".$_GET["id"]);
if(!empty($_POST)){
//print_r($_FILES);exit;
$pi="";
//主图
	if($_FILES["photo"]["error"]==0){
		//上传主图
		$pi=upload($_FILES["photo"]);
		
	}
	if(!empty($pi)){
		
		//销毁旧主图文件
		if(!empty($ri["photo"])){
		unlink($ri["photo"]);
		}
	}else{
		$pi=$ri["photo"];
	}
$_POST["photo"]=$pi;
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
	
	
	
$_POST["updatetime"]=time();
if(!empty($picsxije)){
   	
if(!empty($ri["pics"])){
		$ki=explode('|',$ri["pics"],-1);
		foreach($ki as $k=>$r){
			unlink($r);
			
		}
}
}else{
	$picsxije=$ri["pics"];
	
}

$_POST["pics"]=$picsxije;
	$re=DBsave("zc_news",$_POST,"id=".$_GET["id"]);
	
	if($re){
		
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=News&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('修改失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	if(empty($_GET["id"])){
		echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
		
	}
	$id=$_GET["id"];
	$re=getOne("zc_news","id=".$id);   //用在模版value值
	//print_r($re);exit;
	
	//查出新闻中心
$catlist=getOne("zc_category","module='News'");
//查出新闻中心的子类
$newlist=listAll('zc_category','*','pig='.$catlist["id"]);
	
}

?>