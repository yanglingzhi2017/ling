<?php
if(!empty($_POST)){
    // print_r($_POST["rule"]);exit;
	 $_POST["rule"]=implode(",",$_POST["rule"]);
	$re=DBsave("zc_group",$_POST,"name='".$_POST["name"]."'");
	
	if($re){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=ManagerGroup&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('修改失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	$a=$_GET["id"];
	 $list=getOne("zc_group","id=".$a);
	//print_r($list["0"]);exit;
	$poo=array();
	$all="";
	if($list["rule"]!='all'){
		
	    $poo=explode(",",$list["rule"]);
	}else{
		
		$all=$list["rule"];
	}
}


?>