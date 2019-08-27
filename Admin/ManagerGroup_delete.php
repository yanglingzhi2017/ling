<?php
if(!empty($_GET["id"])){

	$re=DBdelete("zc_group","id=".$_GET["id"]);
	//print_r($re);
	
	if($re){
	
		
		 echo "<script>alert('删除成功！');location.href='index.php?m=Admin&c=ManagerGroup&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('删除失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
	
}

?>