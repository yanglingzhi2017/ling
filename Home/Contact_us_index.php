<?php
 header("Content-type:text/html;Charset=utf-8");
// include("lib/init.php");
// include("lib/function.php");
$listcatact=getOne("contact_manner");//留言遍历


//查出banner图
$banner=getOne('banner','title="联系我们banner"');


// if(!empty($_POST)){ //如果提交
	// $yzm=$_POST["yzm"];  //获取提交过来的验证码
	// if($yzm!=$_SESSION["YZMcode"]){
		// echo "<script>alert('验证码错误');history.go(-1);</script>";
		// exit;
	// }
// if(!empty($_POST["name"]) && !empty($_POST["phone"])){
	
	// $_POST["addtime"]=time();
	// unset($_POST["yzm"]);
	// $add=DBadd("Contact_us",$_POST);
	// if($add){
		
		// echo "<script>alert('留言成功！');history.go(-1);</script>";
	// }else{
		
		// echo "<script>alert('留言失败！');history.go(-1);</script>";
	// }
	
	
// }else{
	// echo "<script>alert('请至少输入姓名和电话！');history.go(-1);</script>";
	
// }

	 // }

	
	 


?>