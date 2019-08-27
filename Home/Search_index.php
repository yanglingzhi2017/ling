<?php

if(!empty($_POST["cat"])){
	if($_POST["cat"]==1){
			$_SESSION["A"]=$_POST["kw"];
		 echo "<script>location.href='index.php?c=Search&a=News'</script>";exit;
	}
	if($_POST["cat"]==2){
			$_SESSION["A"]=$_POST["kw"];
		 echo "<script>location.href='index.php?c=Search&a=Product'</script>";exit;
	}
	
}else{
	
		echo "<script>alert('请选择分类！');history.go(-1);</script>";exit;
}



//查出导航父级
// $listnav=getOne("zc_Category","catname='新闻中心'");
//查出子级
// $listnavson=listAll("zc_Category","*","pig=".$listnav["id"]);


 // $to="";
 // $suMcunt=DBcount("zc_news");    //统计总条数
  // if($suMcunt){
	  // $pagesize=4;       //每页条数
	  // $sunPage=ceil($suMcunt/$pagesize);  //总页数 
	  
		// if(!empty($_GET['p'])){
				// if($_GET['p']>$sunPage){
					// $dan=$sunPage;
				// }
				// else{
				// $dan=$_GET['p'];}
		// }else{
			
			// $dan=1;
		// }	 
  // }
//$re=getLimitAll("zc_news","*","1=1","id desc",$pagesize,($dan-1)*$pagesize);
// $yi="";
// $ui="";
// if(!empty($_GET['p'])){
	// $yi=$_GET['p']-1;//上一页
	// $ui=$_GET['p']+1;//下一页
	// }



	
	// if(!empty($_POST["kw"])){
		// $word=$_POST["kw"];
		// $re=getLimitAll("zc_news","*","title like '%".$word."%'","id desc",$pagesize,($dan-1)*$pagesize);
		
	// }
	
	
?>