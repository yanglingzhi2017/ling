<?php
    // $list=listAll("zc_manager");
	

	$sql="select zc_manager.*,zc_group.name from zc_manager,zc_group where zc_manager.groupid=zc_group.id";
	$list=DBquery($sql);
	//print_r($list);exit;
	
?>