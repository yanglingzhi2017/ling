<?php

 // $ad=listAll("ad");

   $to="";
 $suMcunt=DBcount("friend","id");
  if($suMcunt){
	  $pagesize=8;

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
   
	   for($i=1;$i<=$sunPage;$i++){
		 
		  $to.='<li><a href="index.php?m=Admin&c=Friend&a=index&p='.$i.'">'.$i.'</a></li>';
		   
	  }
		if(!empty($_GET['p'])){
				if($_GET['p']>$sunPage){
					$dan=$sunPage;
				}
				else{
				$dan=$_GET['p'];}
		}else{
			
			$dan=1;
		}
	 
		 
	   $list=getLimitAll("friend","*","1=1","id desc",$pagesize,($dan-1)*$pagesize);
	 
  }
?>