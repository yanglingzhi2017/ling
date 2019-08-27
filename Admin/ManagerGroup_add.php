<?php
if(!empty($_POST)){
    // print_r($_POST["rule"]);exit;
	 $_POST["rule"]=implode(",",$_POST["rule"]);
	$re=DBadd("zc_group",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=ManagerGroup&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}


?>