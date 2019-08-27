<?php
     $list=listAll("zc_menu","*","pid=0",$order="id");
	 //print_r($list);exit;
	 foreach($list as $k=>$r){
		 
		 $ta=listAll("zc_menu","*","pid=".$r["id"],$order="id");
		 if($ta){
			 
			$list[$k]["bot"]=$ta; 
		 }
	 }
?>