<?php

if(!isset($_SESSION["Adminuserinfo"])){
	echo "<script>alert('请先登入');location.href='index.php?m=Admin&c=Login&a=index'</script>";exit;
	
	
	
	
}


  
// print_r($to);exit; 
 
 if($model=="Admin"){     //如果是后台模块
$yi=getOne("zc_menu","c='".$ctrl."' and  a='".$action."'");   //查出菜单一条信息
	  
		  
	 if($_SESSION['AdminuserRule']!='all'){
	  
		  
		$b=array(); 
      $b=explode(',',$_SESSION['AdminuserRule']);
	

	if(!in_array($yi['id'],$b)){
		echo "<script>alert('你没有权限！');location.href='index.php?m=Admin&c=Index&a=index'</script>";exit; 
		
	}
	  }

 }

 	
$menusu=listAll('zc_menu','id,pid,name,url,c','pid=0','id asc');   //查找一级菜单

	foreach($menusu as $k1=>$r1){
	
		$me=listAll('zc_menu','id,pid,name,url,c,a','pid='.$r1['id'],'id asc'); //查找二级菜单
			
		if(count($me)>0){
			
			$menusu[$k1]['sub']=$me;    //组成一个四维数组
		
		}
		
	}
	
	        $ruleall=array();
	       if($_SESSION["AdminuserRule"] != "all"){
				 
				 $ruleall=explode(",",$_SESSION["AdminuserRule"]);
			 }
?>