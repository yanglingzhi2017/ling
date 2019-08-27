<?php
   
   
 
  if(!empty($_POST)){
	//  print_r($_POST);exit;
	  $to=DBsave("zc_menu",$_POST,"id=".$_POST["id"]);
	  if($to){
		 echo "<script>alert('修改成功！');location.href='index.php?m=Admin&c=Menu&a=index'</script>";exit;
		 
	}
	else{
		echo "<script>alert('修改失败！');history.go(-1);</script>";exit;
		
	}
	  
  }
  
  
  $id=$_GET["id"]; 
  
	$men=getOne("zc_menu","id=".$id);
	//print_r($men);exit;
	//$re=listAll("zc_menu","*","pid=0","id");  //用在模版value值
	$re=menulist(0);
?>