<?php


//查出导航父级
$listnav=getOne("zc_category","catname='新闻中心'");
//查出子级
$listnavson=listAll("zc_category","*","pig=".$listnav["id"]);
$re=array();
$yi="";
$ui="";
$sunPage="";
$showpage="";
$dan="";
if(!empty($_SESSION["A"])){
$word=$_SESSION["A"];
}

 $suMcunt=DBcount("zc_news","title like '%".$word."%'");    //统计总条数
  if($suMcunt){
	  $pagesize=4;       //每页条数
	  $sunPage=ceil($suMcunt/$pagesize);  //总页数 
	  
		if(!empty($_GET['p'])){
				if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
				else{
				$dan=$_GET['p'];}
		}else{
			
			$dan=1;
		}
		
  
       $showpage=Page($sunPage,$dan);
   
//查出搜索新闻
		$re=getLimitAll("zc_news","*","title like '%".$word."%'","id desc",$pagesize,($dan-1)*$pagesize);
	

  }
	  function Page($sunPage,$dan){    //参数 总页数   当前页
	// 显示第一页
	$pagesum=2;
	$showpage="";
	if($dan==1){
		$a='style="background-color:#0000ff; color:white"';
			$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p=1"'.$a.'>1</a></li>';
		
	}else{
			$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p=1">1</a></li>';
		
	}
	
	if($dan>$pagesum+2){
		
		$showpage.='<li><a>...</a></li>';
	}
	//显示左边页
	for($i=$dan-$pagesum;$i<$dan;$i++){
		if($i>1){
			
			$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p='.$i.'">'.$i.'</a></li>';
		}
		
	}
	//显示中间页
	if($dan>1 && $dan<$sunPage){     //如果$dan=1,$dan=总页数，排除这种情况
		  $a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p='.$dan.'"'.$a.'>'.$dan.'</a></li>';
	}
	
	//显示右边页
	
	for($i=$dan+1;$i<=$dan+$pagesum;$i++){
		if($i<$sunPage){
			$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p='.$i.'">'.$i.'</a></li>';
			
		}
		
	}
	
	//最后一页
	if($sunPage-$dan>1+$pagesum){
		
		$showpage.='<li><a>...</a></li>';
	}
	
	if($dan==$sunPage){
		$a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p='.$sunPage.'"'.$a.'>'.$sunPage.'</a></li>';
	}else{
		$showpage.='<li><a href="index.php?m=Home&c=Search&a=News&p='.$sunPage.'">'.$sunPage.'</a></li>';
		
	}
	
	return $showpage;
  }
  
  
  //	上下一页

if(!empty($_GET['p'])){
	if($_GET['p']>1 && $_GET['p']<$sunPage ){
	$yi=$_GET['p']-1;//上一页
	$ui=$_GET['p']+1;//下一页
	
	}elseif($_GET["p"]<=1){
		$yi=$_GET['p'];//上一页
		$ui=$_GET['p']+1;//下一页
		
	}elseif($_GET["p"]>=$sunPage){
		$yi=$_GET['p']-1;//上一页
		$ui=$sunPage;//下一页
		
	}
	
	
	}else{
		$yi=1;
		$ui=$dan+1;//下一页
		
	}
	
  



?>