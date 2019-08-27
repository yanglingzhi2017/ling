<?php

$listcatact=listAll("contact_manner");

if($_POST){
	$ki=DBsave("contact_manner",$_POST);
	if($ki){
		
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Contact_us&a=index'</script>";exit;
	}else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
	
}
?>