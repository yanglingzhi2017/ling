<?php

if(!empty($_GET["id"])){
  

	$re=DBdelete("article","id=".$_GET["id"]);
	
	if($re){
		 echo "<script>alert('删除成功！');location.href='index.php?m=Admin&c=Article&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('删除失败！');history.go(-1);</script>";exit;
		
	}
}


?>