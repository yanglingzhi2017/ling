<?php

if(!empty($_POST)){
	
	$_POST["updatetime"]=time();

	$re=DBsave("friend",$_POST,"id=".$_GET["id"]);
	
	if($re){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=friend&a=index'</script>";exit;
		 
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
	$re=getOne("friend","id=".$id);   //用在模版value值
	//print_r($re);exit;
	
}

?>