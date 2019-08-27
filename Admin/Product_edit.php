<?php
$ri=getOne("product","id=".$_GET["id"]);
if(!empty($_POST)){
$pi="";
//主图
	if($_FILES["photo"]["error"]==0){
		
		$pi=upload($_FILES["photo"]);
		if(!empty($pi)){
			
			$_POST["photo"]=$pi;
			
		}else{
			
			$_POST["photo"]=$ri["photo"];
		}
		
		
		
	}
	
	
//细节图
	$pics=array();
	$picsxije="";
	
	foreach($_FILES["pic"]["name"] as $k=>$r){
		
		if($r!=""){
			$pics["name"]=$_FILES["pic"]["name"][$k];
			$pics["type"]=$_FILES["pic"]["type"][$k];
			$pics["tmp_name"]=$_FILES["pic"]["tmp_name"][$k];
			$pics["error"]=$_FILES["pic"]["error"][$k];
			$pics["size"]=$_FILES["pic"]["size"][$k];
			
			$picsxije.=upload($pics)."|";
		}
		
	}

if(!empty($picsxije)){
		$_POST["pics"]=$picsxije;	
		if(!empty($ri["pics"])){
		$ki=explode('|',$ri["pics"],-1);
		foreach($ki as $k=>$r){
			unlink($r);
			
		}
}
		
		}else{
				
			// $picsxije=$ri["pics"];
			// $_POST["pics"]=$picsxije;
			 $_POST["pics"]=$ri["pics"];
		}
		


	
$_POST["update"]=time();
	$re=DBsave("product",$_POST,"id=".$_GET["id"]);
	
	if($re){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=Product&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('修改失败！');history.go(-1);</script>";exit;
		
	}
}
else{
	if(empty($_GET["id"])){
		echo "<script>alert('非法操作！');history.go(-1);</script>";exit;
		
	}
	$id=$_GET["id"];
	$re=getOne("product","id=".$id);   //用在模版value值
	//print_r($re);exit;
	
	//查出组别产品中心
	$grouppor=getOne('zc_category','module="Product"');
	//查出组别产品中心子类
	$prolist=listAll('zc_category','*','pig='.$grouppor['id']);
	
}

?>