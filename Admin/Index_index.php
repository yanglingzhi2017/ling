<?php


//ͳ����������
$countword=DBcount("contact_us");
//var_dump($countword);exit;
$_SESSION["contact_word"]=$countword;