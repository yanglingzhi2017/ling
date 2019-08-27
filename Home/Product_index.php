<?php
//查出banner图
$banner=getOne('banner','title="产品中心banner"');

//查出导航父级
$listcat=getOne("zc_category","catname='产品中心'");

//查出子级
$listto=listAll("zc_category","*","pig=".$listcat["id"]);



//////////////////////////////////////////////
  //显示全部新闻，分页
   $pagesize=8;   //每页条数
    $jiudian='产品展示';
		  $where='1=1';
	   $suMcunt=DBcount("product","id",$where);
  if($suMcunt){

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
			
  }	
    
		if(!empty($_GET['p'])){
			
			$dan=$_GET['p'];
			
			if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
		if($_GET['p']<=0){
			
			$dan=1;
		}
			}else{
				$dan=1;
				$_GET['p']=1;
			}
  

	  
	   $showpage=Page($sunPage,$dan);
  $re=getLimitAll("product","*",$where,"id desc",$pagesize,($dan-1)*$pagesize);
  
 
 //显示酒店客房，分页
  if(!empty($_GET['y'])){
	  if($_GET["y"]=="ginshop"){
		  $where="productpig=53";//酒店客房
		  $jiudian='酒店客房';
		  	if(!empty($_GET['p'])){
			
			$dan=$_GET['p'];
			
			if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
		if($_GET['p']<=0){
			
			$dan=1;
		}
			}else{
				$dan=1;
				
			}
  
	   $suMcunt=DBcount("product","id",$where);
  if($suMcunt){

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
			
  }	
	   $showpage=Page($sunPage,$dan);
		 $re=getLimitAll("product","*",$where,"id desc",$pagesize,($dan-1)*$pagesize); 
	  }
	  
  }

  //显示办公装修，分页
  if(!empty($_GET['y'])){
	  if($_GET["y"]=="work"){
		  $where="productpig=52";//办公装修
		    $jiudian='办公装修';
		  	if(!empty($_GET['p'])){
			
			$dan=$_GET['p'];
			
			if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
		if($_GET['p']<=0){
			
			$dan=1;
		}
			}else{
				$dan=1;
				
			}

	   $suMcunt=DBcount("product","id",$where);
  if($suMcunt){

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
			
  }	
	   $showpage=Page($sunPage,$dan);
		  $re=getLimitAll("product","*",$where,"id desc",$pagesize,($dan-1)*$pagesize);
	  }
	  
  }
  
 //显示办公装修，分页
  if(!empty($_GET['y'])){
	  if($_GET["y"]=="family"){
		  $where="productpig=51";//家居装修
		  $jiudian='家居装修';
		  	if(!empty($_GET['p'])){
			
			$dan=$_GET['p'];
			
			if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
		if($_GET['p']<=0){
			
			$dan=1;
		}
			}else{
				$dan=1;
				
			}

	   $suMcunt=DBcount("product","id",$where);
  if($suMcunt){

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
			
  }	
	   $showpage=Page($sunPage,$dan);
		  $re=getLimitAll("product","*",$where,"id desc",$pagesize,($dan-1)*$pagesize);
	  }
	  
  }
  
  function  Page($sunPage,$dan){    //参数 总页数   当前页
	
   

	// 显示第一页
	$pagesum=2;
	$showpage="";
	if($dan==1){
		$a='style="background-color:#0000ff; color:white"';
			$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p=1"'.$a.'>1</a></li>';
		
	}else{
			$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p=1">1</a></li>';
		
	}
	
	if($dan>$pagesum+2){
		
		$showpage.='<li><a>...</a></li>';
	}
	//显示左边页
	for($i=$dan-$pagesum;$i<$dan;$i++){
		if($i>1){
			
			$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p='.$i.'">'.$i.'</a></li>';
		}
		
	}
	//显示中间页
	if($dan>1 && $dan<$sunPage){     //如果$dan=1,$dan=总页数，排除这种情况
		  $a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p='.$dan.'"'.$a.'>'.$dan.'</a></li>';
	}
	
	//显示右边页
	
	for($i=$dan+1;$i<=$dan+$pagesum;$i++){
		if($i<$sunPage){
			$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p='.$i.'">'.$i.'</a></li>';
			
		}
		
	}
	
	//最后一页
	if($sunPage-$dan>1+$pagesum){
		
		$showpage.='<li><a>...</a></li>';
	}
	
	if($dan==$sunPage){
		$a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p='.$sunPage.'"'.$a.'>'.$sunPage.'</a></li>';
	}else{
		$showpage.='<li><a href="index.php?m=Home&c=Product&a=index&p='.$sunPage.'">'.$sunPage.'</a></li>';
		
	}
	
	return $showpage;
  }
	

	
	
//	上下一页
$yi="";
$ui="";
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