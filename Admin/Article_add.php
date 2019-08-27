<?php
if(!empty($_POST["title"]) && !empty($_POST["content"])){
  
	$_POST["protime"]=time();
	//print_r($_POST);exit;
	$re=DBadd("article",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Article&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}


?>