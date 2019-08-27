<?php
 $adpoto="";
if(!empty($_POST)){
  

	$_POST["addtime"]=time();

	$re=DBadd("friend",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Friend&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}


?>