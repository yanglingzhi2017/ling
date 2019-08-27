<?php
session_start();
include("lib/init.php");
include("lib/function.php");
        
     define('DEBUG',true);
if(DEBUG) {
	
    error_reporting(E_ALL);
} else {
    error_reporting(0);
}   


$model=!empty($_GET["m"])?$_GET["m"]:"Home";   //前后台应用(Admin/Home)
$ctrl=!empty($_GET["c"])?$_GET["c"]:"Index";   //功能模块(html文件)
$action=!empty($_GET["a"])?$_GET["a"]:"index"; //操作行为()

if(strtolower($model)=="admin"){
	
	if($ctrl!="Login"){
		
		include("Admin/common.php");   //加载  后台公共文件
		
		
	}
	
	
}
else{
	
	include("Home/common.php");   //加载前台公共文件
}

//php文件加载
include($model."/".$ctrl."_".$action.".php");  


//模板的加载条件
if($model=="Admin" && $ctrl=="Login"){    //如果在后台，且是登入
	include($model."/html/".$ctrl."_".$action.".html");	
}else{
	
	include($model."/html/header.html");  //默认地址  Home/html/header.html
 
include($model."/html/".$ctrl."_".$action.".html");
include($model."/html/footer.html");  
}

 


?>