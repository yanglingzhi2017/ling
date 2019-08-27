<?php

 // $list=listAll("zc_category","*","pig=0","id");    //查出二维数组

  // foreach($list as $k=>$r){
	
	  // $sub=listAll("zc_category","*","pig=".$r["id"],"id");
	
	  // if($sub){
		  // $list[$k]["sub"]=$sub;   //四维数组    重新定义一个下标["sub"]
	
		  
	  // }
  // }
  function Catelist($a){
  $list="";
  $wuji=listAll("zc_category","*","pig=".$a,"id");
  //print_r($wuji);exit;
  if($wuji){
	  foreach($wuji as $k=>$r){
		  $list.='<tr><td>'.$r["id"].'</td><td>'.Ni($r["level"]).$r["catname"].'</td><td>'.$r["module"].'</td><td><a href="index.php?m=Admin&c=Category&a=edit&id='.$r["id"].'">修改</a> / <a href="index.php?m=Admin&c=Category&a=delete&id='.$r["id"].'">删除</a></td></tr>';      
		  $list.=Catelist($r["id"]);
	  }
	  
  }
  return $list;
  }
  
  $catelist=Catelist(0);
?>