<?php
       
	 if(!empty($_POST)){ //如果提交
	$yzm=$_POST["yzm"];  //获取提交过来的验证码
	if($yzm!=$_SESSION["YZMcode"]){
		echo "<script>alert('验证码错误');history.go(-1);</script>";
		exit;
	}  
	 }
  if(!empty($_POST)){    //post获取表单提交的信息
	  $uname=$_POST["username"];     
	  $upwd=$_POST["password"];
	 
	  //$sql="select *from zc_manager where username='".$uname."'";   查询语句
	  $re=getOne("zc_manager","username='".$uname."'");  
	 
	  //getOne函数查询一条数据
	  if($re["username"]){          //如果有用户名
	
		   if($re["password"]==md5($upwd)){     //如果提交的密码和查询的密码相同
		 
		         $re["logintime"]=time();
				 $re["loginnum"]=$re["loginnum"]+1;
				// print_r($re);exit;
				 	DBsave("zc_manager",$re,"username='".$uname."'");
					 
				  $_SESSION["Adminuserinfo"]=$re;  //查询结果存到超全局变量里，在其它页面判断
			
			    
				
				
				 
				 $groupdata=getOne("zc_group","id=".$re["groupid"] );   //查找组别表中条件id是(管理员表groupid的值）的数据
				  $_SESSION["AdminuserRule"]=$groupdata["rule"];    //把查找组别里rule字段传给超全局变量
				  
				 //记住我
				 if(!empty($_POST["ifremenber"])){
					 setcookie("Adminusername",$uname,time()+86400);
					 setcookie("Adminuserpwd",$upwd,time()+86400);
					 setcookie("Adminuserjzw",1,time()+86400);
		           
					 
				 }else{
					 setcookie("Adminusername",$uname,time()-1);
					 setcookie("Adminuserpwd",$upwd,time()-1);
					 setcookie("Adminuserjzw",1,time()-1);
				 }
	             
				 
                
				 echo "<script>alert('登入成功');location.href='index.php?m=Admin&c=Index&a=index'</script>";exit;    
			   
		   }
		   else{
			   echo "<script>alert('密码错误');history.go(-1);</script>";exit;
			   
		   }
		  
	  }
	  else{
		  
		  echo "<script>alert('没有此用户');history.go(-1);</script>";
		  
	  }
  }
  else{   //如果不提交
	  
	  $Loginusername="";
	  $Loginuserpwd="";
	  $Loginuserjzw="";
	  if(!empty($_COOKIE["Adminusername"])){
		  $Loginusername=$_COOKIE["Adminusername"];
		  $Loginuserpwd=$_COOKIE["Adminuserpwd"];
		  $Loginuserjzw=$_COOKIE["Adminuserjzw"];
	  }
  }
  



?>