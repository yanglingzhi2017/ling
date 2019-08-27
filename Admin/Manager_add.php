<?php
//查出所有管理员名
// $oldmanager=listAll('zc_manager','username');
// var_dump($oldmanager);exit;
if(!empty($_POST["username"]) &&!empty($_POST["password"])){
	// foreach($oldmanager as $k=>$r){
		// if($_POST["username"]==$r["username"]){
			
			// echo "<script>alert('此用户名已存在！');history.go(-1);</script>";exit;
		// }
		
	// }
	
	
	$_POST["addtime"]=time();
	$_POST["password"]=md5($_POST["password"]);
	$re=DBadd("zc_manager",$_POST);
	//print_r($re);exit;
	if($re){
		 echo "<script>alert('添加成功！');location.href='index.php?m=Admin&c=Manager&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	
    
	
	
	//查找管理员组别表所有内容
	$gclass=listAll("zc_group");
}


?>