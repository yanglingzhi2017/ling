<?php
//查出父级
$ri=getOne("zc_category","catname='公司介绍'","*");

//查出子级
$com=listAll("zc_category","*","pig=".$ri["id"]);

//查出文章

$listarticle=getOne("article","title='公司介绍'","*");

//查出banner图
$banner=getOne('banner','title="公司介绍banner"');

if(!empty($_GET["y"])){
	if($_GET["y"]=="synopsis"){
		
		$listarticle=getOne("article","title='公司简介'","*");
	}
	
	if($_GET["y"]=="Kultur"){
		
		$listarticle=getOne("article","title='公司文化'","*");
	}
	
	if($_GET["y"]=="glory"){
		
		$listarticle=getOne("article","title='公司荣誉'","*");
	}
	
}


// if($r["module"]=="synopsis"){
	
	// $listarticle=getOne("article","title='公司简介'","*");
	
// }











?>