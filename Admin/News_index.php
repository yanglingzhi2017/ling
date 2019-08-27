<?php
 
	 
	  $suMcunt=DBcount("zc_news","id");
  if($suMcunt){
	  $pagesize=10;    //每页显示条数

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数  向上取整
   
	  //初始化当前页
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
		
		 $showpage=showpage($dan,$sunPage);
		 
	   $list=getLimitAll("zc_news","*","1=1","id desc",$pagesize,($dan-1)*$pagesize);
	 
  }
  
 	 
     
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
  
  
  
 
?>