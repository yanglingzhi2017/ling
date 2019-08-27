<?php
if(!empty($_GET["p"])){
	
	
	$delete=DBdelete("contact_us","id=".$_GET["p"]);
	if($delete){
		
		 echo "<script>alert('删除成功！');location.href='index.php?m=Admin&c=Contact_us&a=word'</script>";exit;
	}else{
		
		echo "<script>alert('删除失败！');history.go(-1);</script>";exit;
	}
}

?>