<?php

$listcatact=listAll("indexconcat");

if($_POST){
	$ki=DBsave("indexconcat",$_POST);
	if($ki){
		
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=Indexconcat&a=index'</script>";exit;
	}else{
		echo "<script>alert('修改失败！');history.go(-1);</script>";exit;
		
	}
	
}
?>