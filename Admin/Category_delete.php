<?php
if(!empty($_GET["id"])){    //如果获取地址的参数不为空
	
	$re=DBdelete("zc_category","id=".$_GET["id"]);
  // print_r($re);exit;
	if($re){
		 echo "<script>alert('删除成功！');location.href='index.php?m=Admin&c=category&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('删除失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
	
}

?>