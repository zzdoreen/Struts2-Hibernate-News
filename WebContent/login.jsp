<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员登陆</title>
<style>
	body{
		width: 100%；
		height: 800px;
		background: url(img/article.jpg) no-repeat;
		background-size: 100%;
	}
	*{padding: 0;margin: 0;}
	#box{
		position: relative;
		width:30%;
		height:400px;
		margin:10px auto;
		
	}
	#box form{
		
		position: absolute;
		width:400px;
		height:400px;
		background: url(img/login.png) no-repeat;
		background-size: 100%;
		margin: 0 auto;
	}
	#name{
		/*position: absolute;*/
		width:200px;
		margin-top:110px;
		height: 40px;
		margin-left:25%;
		font-size: 20px;
		background: none;
		border: none;
		color: #ccc;
	}
	#pass{
		background: none;
		border: none;
		color: #ccc;
		width:200px;
		height: 40px;
		margin-top:20px;
		margin-left:25%;
	}
	#submit{
		margin-top:5px;
		margin-left:38%;
		width:100px;
		height: 50px;
		background: none;
		border: none;
		font-size: 28px;
		color: white;
	}
</style>
</head>
<body>
<div id="box">
		<form action="listAll" method="post">
			<input type="text" value="" id="name"  name="name" >
			<input type="password" id="pass" value="" name="password"/>
			<input type="submit" value="登&nbsp;&nbsp;陆"  id="submit"/>
		</form>	
</div>
</body>
</html>