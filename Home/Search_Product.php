<?php

//查出导航父级
$listcat=getOne("zc_category","catname='产品中心'");

//查出子级
$listto=listAll("zc_category","*","pig=".$listcat["id"]);


 $to="";
 $suMcunt=DBcount("product","id");    //统计总条数
  if($suMcunt){
	  $pagesize=12;       //每页条数

	  $sunPage=ceil($suMcunt/$pagesize);  //总页数
   
	   for($i=1;$i<=$sunPage;$i++){
		 
		  $to.='<li><a href="index.php?m=Home&c=Product&a=index&p='.$i.'">'.$i.'</a></li>';
		   
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
 
  }
 
//$re=getLimitAll("product","*","1=1","id",$pagesize,($dan-1)*$pagesize);

$yi="";
$ui="";
if(!empty($_GET['p'])){
	$yi=$_GET['p']-1;
	$ui=$_GET['p']+1;
}


$search="1=1";
if(!empty($_SESSION["A"])){
	$search=" name like '%".$_SESSION["A"]."%'";
	
    
}
$re=getLimitAll("product","*",$search,"id desc",$pagesize,($dan-1)*$pagesize);


?>