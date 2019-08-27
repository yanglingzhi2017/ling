<?php
header('Content-type:image/jpeg');
session_start();
$width=130;
$height=34;
$wordnum=4;
$element=array('1','2','3','4','5','6','7','8','9','0','a','b','c','d','e','f','g','h','i','j','k','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
$string='';
for ($i=0;$i<$wordnum;$i++){
	$string.=$element[rand(0,count($element)-1)];
}
$_SESSION["imgode"]=$string;
//创建一个指定宽高的画布
$img=imagecreatetruecolor($width, $height); 

$colorBg=imagecolorallocate($img,rand(200,255),rand(200,255),rand(200,255));  //定义颜色
$colorBorder=imagecolorallocate($img,rand(200,255),rand(200,255),rand(200,255));  //定义颜色
$colorString=imagecolorallocate($img,rand(10,100),rand(10,100),rand(10,100));  //定义颜色
imagefill($img,0,0,$colorBg); //填充背景颜色

//描边
imagerectangle($img,0,0,$width-1,$height-1,$colorBorder);

//干扰点
for($i=0;$i<100;$i++){
	imagesetpixel($img,rand(0,$width-1),rand(0,$height-1),imagecolorallocate($img,rand(100,200),rand(100,200),rand(100,200)));
}
//干扰线
for($i=0;$i<3;$i++){
	imageline($img,rand(0,$width/2),rand(0,$height),rand($width/2,$width),rand(0,$height),imagecolorallocate($img,rand(100,200),rand(100,200),rand(100,200)));
}
//imagestring($img,5,0,0,'abcd',$colorString);
imagettftext($img,14,rand(-5,5),rand(40,70),rand(20,23),$colorString,'font/arial.ttf',$string);
imagejpeg($img);
imagedestroy($img);

