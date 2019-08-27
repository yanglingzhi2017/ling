<?php

if(!empty($_POST)){
//print_r($_POST);exit;
	
	//$_POST["password"]=md5($_POST["password"]);	
	if(!empty($_POST["password"])){		
		$_POST["password"]=md5($_POST["password"]);
		unset($_POST["old"]);
	}
	else{		
		$_POST["password"]=$_POST["old"];
		unset($_POST["old"]);
	}
	//print_r($_POST["password"]);exit;
	$re=DBsave("zc_manager",$_POST,"id=".$_POST["id"]);
	//print_r($re);exit;
	
	if($re){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=Manager&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('修改失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	if(empty($_GET["id"])){
		echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
		
	}
	//如果$_POST没值，页面显示查询结果$re数组，传到模板里
	$id=$_GET["id"];
	$re=getOne("zc_manager","id=".$id);   //用在模版value值
	$gclass=listAll("zc_Group");
	
}

?>