<?php
$productadd="";
if(!empty($_POST)){
	if(empty($_POST['productpig'])){
		echo "<script>alert('请选择分类!');history.go(-1);</script>";exit;
		
	}
  	     //主图
	  if($_FILES["photo"]["error"]==0){
		  $productadd=upload($_FILES["photo"]);
		  
		  
	  }
	//缩略图
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
	
	$_POST["pics"]=$picsxije;
	
	$_POST["photo"]=$productadd;
	$_POST["protime"]=time();
	
	//print_r($_POST);exit;
	$re=DBadd("product",$_POST);
	
	if($re){
		 echo "<script>alert('添加成功!');location.href='index.php?m=Admin&c=Product&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('添加失败!');history.go(-1);</script>";exit;
		
	}
}
else{
	//查出组别产品中心
	$grouppor=getOne('zc_category','module="Product"');
	//查出组别产品中心子类
	$prolist=listAll('zc_category','*','pig='.$grouppor['id']);

}


?>