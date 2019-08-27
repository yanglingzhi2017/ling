<?php

if(!empty($_POST)){
//print_r($_POST);exit;
	


	$re=DBsave("zc_category",$_POST,"id=".$_POST["id"]);
	
	if($re){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=Category&a=index'</script>";exit;
		 
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
	$re=getOne("zc_category","id=".$id);   //用在模版value值
	
	
}

?>