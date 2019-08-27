<?php

	if($_POST){
		
		$to=getOne("zc_category","id=".$_POST["pig"]);   //查找获取的（所属分类）是否有值，
		//print_r($to);exit;
		if($to){
			$_POST["level"]=$to["level"]+1;             //如果有值，层级为+1（有选取所属分类）
			
		}else{
			
			$_POST["level"]=1;     //如果没值，层级为一（没有选取所属分类）
		}
		
	// }
	$re=DBadd("zc_category",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Category&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}

	$str="";
	$str=Categorylist(0);
	



?>