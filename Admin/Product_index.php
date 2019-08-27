<?php

 $suMcunt=DBcount("product","id");  //统计总条数
  if($suMcunt){
	  $pagesize=5;                  //每页条数

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
   
	         //初始化当前页             
		if(!empty($_GET['p'])){
				if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
				else{
				$dan=$_GET['p'];}
		}else{
			
			$dan=1;
		}
	 
	 $showpage=productpage($dan,$sunPage);
	  $list=getLimitAll("product","*","1=1","id desc",$pagesize,($dan-1)*$pagesize);
	  //上一页，下一页
  $up="";
  $down="";
  if($dan>1 && $dan<$sunPage){
	  $up=$dan-1;
	  $down=$dan+1;  
  }elseif($dan<=1){
	  $up=1;
	  $down=$dan+1;
	  
  }elseif($dan>=$sunPage){
	  $up=$dan-1;
	  $down=$sunPage;
	  
  }elseif(empty($_GET["p"])){
	  $up=1;
	  $down=$dan+1;
	  
  }
		 
	  
	 
  }
  
  
  //页码函数  
  function productpage($dan,$sunPage){
	// 显示第一页
	$pagesum=3;    //左右各显示三个页码
	$showpage="";
	if($dan==1){
		$a='style="background-color:#0000ff; color:white"';
			$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p=1"'.$a.'>1</a></li>';
		
	}else{
			$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p=1">1</a></li>';
		
	}
	
	if($dan>$pagesum+2){
		
		$showpage.='<li><a>...</a></li>';
	}
	//显示左边页
	for($i=$dan-$pagesum;$i<$dan;$i++){
		if($i>1){
			
			$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p='.$i.'">'.$i.'</a></li>';
		}
		
	}
	//显示中间页
	if($dan>1 && $dan<$sunPage){     //如果$dan=1,$dan=总页数，排除这种情况
		  $a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p='.$dan.'"'.$a.'>'.$dan.'</a></li>';
	}
	
	//显示右边页
	
	for($i=$dan+1;$i<=$dan+$pagesum;$i++){
		if($i<$sunPage){
			$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p='.$i.'">'.$i.'</a></li>';
			
		}
		
	}
	
	//最后一页
	if($sunPage-$dan>1+$pagesum){
		
		$showpage.='<li><a>...</a></li>';
	}
	
	if($dan==$sunPage){
		$a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p='.$sunPage.'"'.$a.'>'.$sunPage.'</a></li>';
	}else{
		$showpage.='<li><a href="index.php?m=Admin&c=Product&a=index&p='.$sunPage.'">'.$sunPage.'</a></li>';
		
	}
	
	return $showpage;
  }
?>