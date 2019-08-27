<?php
if(!empty($_POST)){
   $_POST["url"]="index.php?m=".$_POST["m"]."&c=".$_POST["c"]."&a=".$_POST["a"];


	$re=DBadd("zc_menu",$_POST);
	//print_r($re);exit;
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Menu&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	
	$catlist=listAll("zc_menu","*","pid=0","id");
}


?>