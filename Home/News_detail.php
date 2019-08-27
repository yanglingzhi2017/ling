<?php
if(empty($_GET["act"])){
	
	echo "<script>alert('非法操作');history.go(-1);</script>";
	exit;
}
  

if(!empty($_GET["act"])){
	$dateid=$_GET["act"];
	$re=getOne("zc_news","id=".$dateid,"*");  //查出新闻详情  一条
	if(empty($re)){
		echo "<script>alert('没有数据');history.go(-1);</seript>";
	exit;
		
	}                                                                                                                        
}

//查出上一篇
$toplist=getLimitAll("zc_news","*","id<".$re["id"],"id desc",1);

//查出下一篇

$toblist=getLimitAll("zc_news","*","id>".$re["id"],"id",1);



//详情新闻遍历
$relist=listAll("zc_news","*","newpig=56");//相关新闻

$tuilist=listAll("zc_news","*","newpig=58");//热门推荐
?>