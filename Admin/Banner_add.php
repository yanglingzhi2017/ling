<?php
 $adpoto="";
if(!empty($_POST)){
  
//主图
	  if($_FILES["photo"]["error"]==0){
		 $adpoto=upload($_FILES["photo"]);
		  
		  
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
	
	$_POST["photo"]=$adpoto;
	$_POST["addtime"]=time();

	$re=DBadd("banner",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Banner&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}


?>