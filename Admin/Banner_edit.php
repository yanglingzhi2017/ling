<?php
$ri=getOne("banner","id=".$_GET["id"]);
if(!empty($_POST)){
	//主图
	$adpoto="";
	  if($_FILES["photo"]["error"]==0){
		 $adpoto=upload($_FILES["photo"]);
		  
		  $_POST["photo"]=$adpoto;
	  }
	  if(!empty($adpoto)){
		  
        if(!empty($ri["photo"])){
		       unlink($ri["photo"]);
		}
			   
		}else{
			
			
				$_POST["photo"]=$ri["photo"];
		}
		
		  
	  
	  
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
	
	$_POST["updatetime"]=time();

	if(!empty($picsxije)){	
  if(!empty($ri["pics"])){
		$ki=explode('|',$ri["pics"],-1);
		foreach($ki as $k=>$r){
			unlink($r);
			
		}
}

	}else{
	
	$_POST["pics"]=$ri["pics"];
	
}


	$re=DBsave("banner",$_POST,"id=".$_GET["id"]);
	
	if($re){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=Banner&a=index'</script>";exit;
		 
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
	$re=getOne("banner","id=".$id);   //用在模版value值
	//print_r($re);exit;
	
}

?>