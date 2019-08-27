<?php

//连接数据库
function DBlink(){
	global $dbserver,$dbuser,$dbpwd,$dbname;
	$lianjie=new Mysqli($dbserver,$dbuser,$dbpwd,$dbname);
	mysqli_query($lianjie,"set names utf8");
	return $lianjie;
	
}
//连接数据库
	$db=DBlink();

//添加，返回新的id的值(返回受影响行1$re)  (添加字段，值)
function DBadd($table,$data){    //$table 表名，$data数组（字段，值）
	global $db;
	$key="";
	$value="";
	//print_r($data);exit;
	if(is_array($data)){
		$i=1;
		foreach($data as $k=>$r){
			if($i==1){
				$key="`".$k."`";
				$value="'".$r."'";
				
			}
			else{
				$key.=",`".$k."`";
				$value.=",'".$r."'";
			}
			$i++;
		}
		
	}
	else{
		echo  "传过来的值不是数组";exit;
		
	}
	$sql='insert into '.$table.'('.$key.')value('.$value.')';
	//print_r($sql);exit;
	$re=mysqli_query($db,$sql);
	
	return $re;
}

//查询全部数据，返回：二维数组
function listAll($table,$field="*",$where="1=1",$order="id desc"){
	global $db;
	$sql="select ".$field." from ".$table." where ".$where." order by ".$order;
	
	$er=mysqli_query($db,$sql);//连接数据库，执行sql语句并返回结果 给$er
	//print_r($sql);exit;
	$arr=array();
	while($row=mysqli_fetch_assoc($er)){
		$arr[]=$row;
		
	}
	return $arr;
}

//查询一条数据， 返回格式：一维数组
function getOne($table,$where="1=1",$field="*"){
	global $db;
	$sql="select ".$field." from ".$table." where ".$where;
	//print_r($sql);exit;
	$re=mysqli_query($db,$sql);
	$row=mysqli_fetch_assoc($re);   //没有循环，是一维数组
	
	return $row;
	
}

//修改，返回布尔值
function DBsave($table,$data,$where="1=1"){
	//update zc_Manager set title='ddd',content='aaa' where id=2
	global $db;
	$map="";
	if(is_array($data)){
		$i=1;
		foreach($data as $k=>$r){
			if($i==1){
				$map="`".$k."`='".$r."'";
				
			}
			else{
				
				$map.=",`".$k."`='".$r."'";
			}
			$i++;
		}
	}
		else{
			
			$map=$data;
		}
		$sql="update ".$table." set ".$map." where ".$where;
		//print_r($sql);exit;
		$re=mysqli_query($db,$sql);
		return $re;
	}
	
//删除返回布尔值
function DBdelete($table,$where="1=1"){
	global $db;
	$sql="delete from ".$table." where ".$where;
    //print_r($sql);exit;
	$re=mysqli_query($db,$sql);
	return $re;
}

//直接执行sql语句，返回结果集并将之转换成数组或者值
function DBquery($sql){
	global $db;
	$re=mysqli_query($db,$sql);
	$arr=array();
	while($row=mysqli_fetch_assoc($re)){
		$arr[]=$row;
		
	}
	return $arr;
}

//统计表数据条数
function DBcount($table,$where="1=1"){

	global $db;
	$sql="select count(*) as tatal from ".$table." where ".$where;
	//print_r($sql);exit;
	$re=mysqli_query($db,$sql);
	$row=mysqli_fetch_assoc($re);
	return $row["tatal"];      //返回条数
}


//指定条数查询数据，返回格式：二维数组
function getLimitAll($table,$field="*",$where="1=1",$order="id desc",$pagesize=10,$start=0){
	global $db;
	$sql="select ".$field." from ".$table." where ".$where." order by ".$order." limit ".$start.",".$pagesize;
	//print_r($sql);exit;
	$re=mysqli_query($db,$sql);
	$arr=array();
	while($row=mysqli_fetch_assoc($re)){
		$arr[]=$row;
		
	}
	return $arr;
}


//上传图片   传参获取上传图片的数据$load

function upload($load){
	
	$a="";
	//var_dump($load);exit;
	$pot=array("image/jpg","image/jpeg","image/png");
	if(($load["size"]>2*1024*1024)){
		echo "<script>alert('图片不能大于2M');history.go(-1);</script>";exit;
		
	}
	if(!in_array($load["type"],$pot)){
		
		echo "<script>alert('只能上传jpg/jpeg/png格式的图片！');history.go(-1);</script>";exit;
	}
	if($load["type"]=="image/jpg"){
		$a="jpg";
		
	}
	if($load["type"]=="image/jpeg"){
		
		$a="jpeg";
	}
	if($load["type"]=="image/png"){
		$a="png";
		
	}
	$filename="Photoii/".time().rand(1,999).".".$a;

	move_uploaded_file($load["tmp_name"],$filename);   //上传到后台
	return $filename;   //返回图片地址
	
	
	
	
	
}


//无极分类，栏目添加的所属分类
function  Categorylist($pid){
	$strst="";
	$reer=listAll("zc_category","*","pig=".$pid);
	//print_r($re);exit;
	if($reer){
		foreach($reer as $k=>$r){
			$strst.='<option value="'.$r["id"].'">'.Ni($r["level"]).$r["catname"]."</option>";
			$strst.=Categorylist($r["id"]);
		}
		
	}
	return $strst;
}

//层次的空格，栏目添加所属分类
function Ni($pi){
	$cc="";
	for($i=1;$i<$pi;$i++){
		
		$cc.="&nbsp;&nbsp;";
	}
	if($pi==1){
		
		return $cc;
	}else{
		return $cc."★";
		
	}
	
}

//无极分类，菜单修改所属分类
function  menulist($pid){
	$strst="";
	$reer=listAll("zc_menu","*","pid=".$pid);
	//print_r($reer);exit;
	if($reer){
		foreach($reer as $k=>$r){
			$strst.='<option value="'.$r["id"].'">'.$r["name"]."</option>";
			$strst.=menulist($r["id"]);
		}
		
	}
	return $strst;
}


 //页码函数  
  function showpage($dan,$sunPage){
	// 显示第一页
	$pagesum=3;    //左右各显示三个页码
	$showpage="";
	if($dan==1){
		$a='style="background-color:#0000ff; color:white"';
			$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p=1"'.$a.'>1</a></li>';
		
	}else{
			$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p=1">1</a></li>';
		
	}
	
	if($dan>$pagesum+2){
		
		$showpage.='<li><a>...</a></li>';
	}
	//显示左边页
	for($i=$dan-$pagesum;$i<$dan;$i++){
		if($i>1){
			
			$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p='.$i.'">'.$i.'</a></li>';
		}
		
	}
	//显示中间页
	if($dan>1 && $dan<$sunPage){     //如果$dan=1,$dan=总页数，排除这种情况
		  $a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p='.$dan.'"'.$a.'>'.$dan.'</a></li>';
	}
	
	//显示右边页
	
	for($i=$dan+1;$i<=$dan+$pagesum;$i++){
		if($i<$sunPage){
			$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p='.$i.'">'.$i.'</a></li>';
			
		}
		
	}
	
	//最后一页
	if($sunPage-$dan>1+$pagesum){
		
		$showpage.='<li><a>...</a></li>';
	}
	
	if($dan==$sunPage){
		$a='style="background-color:#0000ff; color:white"';
		$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p='.$sunPage.'"'.$a.'>'.$sunPage.'</a></li>';
	}else{
		$showpage.='<li><a href="index.php?m=Admin&c=News&a=index&p='.$sunPage.'">'.$sunPage.'</a></li>';
		
	}
	
	return $showpage;
  }
