<?php
if(!empty($_GET["id"])){
	  $ri=getOne("zc_news","id=".$_GET["id"]);
if(!empty($ri["photo"])){
		unlink($ri["photo"]);
		}
		
if(!empty($ri["pics"])){
		$ki=explode('|',$ri["pics"],-1);
		foreach($ki as $k=>$r){
			unlink($r);
			
		}
}
	$re=DBdelete("zc_news","id=".$_GET["id"]);
	//print_r($re);
	
	if($re){
	
		
		 echo "<script>alert('删除成功！');location.href='index.php?m=Admin&c=News&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('删除失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
	
}

?>