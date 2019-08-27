<?php
    if(!empty($_GET["id"])){
		//print_r($_GET["id"]);exit;
		$a=DBdelete("zc_menu","id=".$_GET["id"]);
		if($a){
			  echo  "<script>alert('删除成功！');location.href='index.php?m=Admin&c=Menu&a=index'</script>";exit;
			 
		}else{
			
			echo "<script>alert('删除失败！');history.go(-1);</script>";exit;
		}
	}
	else{
		
		echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
	
	}
?>