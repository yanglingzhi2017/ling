<?php

 // $ad=listAll("ad");

   $to="";
 $suMcunt=DBcount("banner","id");
  if($suMcunt){
	  $pagesize=3;

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
	 
		 
	   $list=getLimitAll("banner","*","1=1","id desc",$pagesize,($dan-1)*$pagesize);
	 
  }
?>