<?php
 
 
 if(!empty($_GET["p"])){
	 
	 $list=getOne("contact_us","id=".$_GET["p"],"*");
 }

?>