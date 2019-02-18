<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>绘梦者新动画联盟</title>

<link type="text/css" rel="stylesheet" href="css/menu.css">
<script type="text/javascript" src="js/jquery-1.7.1.js"></script>
<style>
	p,strong{margin: 0px;
	padding: 0;}
	#bg{
		background: url(img/address.png) no-repeat center;
		background-position: center;
		height: 350px;
	}
	#bg_buttom{
		top:1600px;
		background: #ccc;
		
	}
	
	#contact{
		position: relative;
		margin: 0 auto;
		width: 100%;
		height: 1000px;
		top:300px;
		text-align: center;
	}
	.active_contact{
		background: #ccc;
		opacity: 0.6;
		box-shadow: darkgrey 10px 10px 30px 5px;
	}
	.content{
		display: inline-block;
		width: 18%;
		text-align:left;
		font-size: 15px;
		position: absolute;
		line-height: 30px;
		left: 10px;
		border-top-left-radius: 10%;
		border-bottom-right-radius: 10%;
		border: solid 1px;
		padding:20px 25px;
		margin-top: 20px;
		background: #1f92d1;
		color: white;
		opacity: 0.6;
		filter: alpha(opacity:60);
	}
	.message{
		width:70%;
		position: absolute;
		left:26%;
		
	}
	.message form{
		margin-top: 20px;
		line-height: 60px;
		text-align: left;
	}
	.message_content{
		width: 300px;
		height: 150px;
		 
	}
	.message h1{
		text-align: left;
	}
	.message input{
		width: 200px;
		height: 30px;
	}
	#btn1{
		background: #1f92d1;
		border: none;
		color: white;
		text-decoration:none;
		cursor: pointer;
		font-size: 17px;
		height:40px;
		width:80px;
	}
	.message_title{
		margin-top: 60px;
		font-size: 20px;
		color: #1f92d1;
		border-bottom-color: #1f92d1;
		border-bottom: solid;
		line-height: 50px;
		font:normal;
		width: 100px;
		height: 50px;
		left: 20px;
		margin: 0;
		padding: 0;
	}
	.message div{
		border-bottom: solid 1px black;
		height: 52px;
		width: 100%;
		line-height: 52px;
		
	}
	#bbs{
		width:100%;
		height: 550px;
		overflow: hidden;
		overflow-y: scroll;
		border:none;
	}
	#bbs ul{
		
	}
	#bbs ul li{
		text-align: left;
		width: 100%;
		height: 100px;
		float: left;
		border-bottom: 1px solid #ccc;
		line-height: 50px;
	}
	#bbs ul li pre,strong{
		height: 50px;
		overflow-x: hidden;
		overflow-y: auto;
	}
</style>
<script>
	window.onload = function(){
		var oUl2 = document.getElementById('menu_ul');
		var aLi2 = oUl2.getElementsByTagName('li');
		var oSub = document.getElementById('btn1');
		var oDiv = document.getElementById('bbs');
		var oCommentUl = oDiv.getElementsByTagName('ul')[0];
		var aCommentLi = oCommentUl.getElementsByTagName('li');
		var oMessage_name = document.getElementById('message_name');
		var oMessage_content = document.getElementById('message_content');
		var oPhone = document.getElementById('phone');
		
		for(var j=0;j<aLi2.length;j++){
			aLi2[j].onmouseover = function(){
				this.className = 'active_contact';
			}
			
			aLi2[j].onmouseout = function(){
				this.className = '';
			}
		}
		oSub.onclick = function(){
			var pattern = /^[1]\d{10}$/g;
			var str = oPhone.value;
			var bbool = pattern.test(str.toString());
			
			if(bbool){
				alert('提交成功');
				window.open('showComment','_self');
			}else{
				alert('手机号码输入错误，请重新输入');
				return false;
			}
		}
		

	}
	
</script>
</head>
<body>
<iframe id="rfFrame" name="rfFrame"  style="display:none;"></iframe>
<div id="bg"></div>
<div id="menu">
		<ul id="menu_ul">
			<li><a href="index.html">首页</a></li>
			<li><a href="works.html">作品介绍</a></li>
			<li><a href="showNews">新闻资讯</a></li>
			<li><a href="team.html">关于我们</a></li>
			<li><a href="showComment">联系我们</a></li>
		</ul>
</div>

<div id="contact">
		<span style="font-size:60px;font: bold;">>>contact&nbsp;&nbsp;&nbsp;us<<</span>
		<hr style="margin-top: 20px">
		<span class="content" style="">
			<p>Contact Info</p>
			<p>Tel：021-60555471</p>
			<p>地址：上海市闸北区灵石路697号健康智谷5号楼101单元</p>
			<p>漫画合作：comic@haoliners.net</p>
			<p>市场合作：mark@haoliners.net</p>
			<p>人才应聘：hr@haoliners.net</p>
			<p>游戏合作：game@haoliners.net</p>
			<p>商务合作：biz@haoliners.net</p>
			<p>媒体合作：media@haoliners.net</p>
		</span>
		<div style="width:3px;height: 1100px;background: #ccc;left:23%;position: absolute"></div>
				
		<div class="message">
			<div><p class="message_title">在线留言</p></div>
				<div id="bbs">
					<ul >
					<s:iterator value="listcomment" var="n">
						<li>
							<strong>${n.name}:</strong>
							<pre>&#9;${n.comment_content}</pre>
						</li>
					</s:iterator>
					</ul>
				</div>
				<div><p class="message_title">我要留言</p></div>
			
			<form  id="form1" action="saveComment" method="post" target="rfFrame">
				姓名：<p style="color: red;display: inline-block">*</p><input type="text" name="comment.name" class="message_name" id="message_name" required value="" placeholder="请输入你的名字"><br>
				内容：<p style="color: red;display: inline-block">*</p><textarea  name="comment.comment_content" id="message_content" class="message_content" required value="" placeholder="把你想说的话告诉我们吧……"></textarea><br>
				手机号码：<p style="color: red;display: inline-block" >*</p><input name="comment.phone" type="text" required id="phone" value="" placeholder="请输入11位数字"><br>
				<input type="submit" id="btn1" value="提交" >
			</form>
		</div>
		
</div>
</body>
</html>