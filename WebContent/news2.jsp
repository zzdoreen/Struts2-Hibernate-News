<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>漫画情报</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	nav{
		width: 100%;
		height: 50px;
		border-top: solid 8px black;
		border-bottom: solid 2px #d9d9d9;
		position: absolute;
		top: 200px;
	}
	nav ul{
		width: 1000px;
		margin: 0 auto;
	}
	nav ul li{
		margin-left: 100px;
		float: left;
		list-style: none;
		line-height: 50px;
	}
	nav ul li a:hover{
		background-color: black;
		padding:  16px 20px;
		color: #f0f0f0;
		cursor: pointer;
	}
	.active{
		background-color: black;
		color: #f0f0f0;
		padding:  16px 20px;
	}

	#bg{
		background: url(img/news_bg.jpg) no-repeat;
		background-position: 0 25%;
		background-size:cover;
		height: 200px;
	}
	a{
		text-decoration: none;
		color: black;
	}
	#news{
		position: relative;
		width: 95%;
		/*border: solid 1px black;*/
		margin: 70px auto;
		height:800px;
		padding-right:10%;
		overflow:hidden;
		overflow-y:scroll;
	}
	#news li{
		margin-bottom: 30px;
		width: 100%;
		list-style: none;
		display:none;
/*		border-bottom: solid #ccc 1px;*/
	}
	.title{
		width:85%;
		font-size: 25px;
		height: 50px;
		line-height: 50px;
		/*border: solid 1px black;*/
		text-overflow: ellipsis;
		overflow: hidden;
		cursor: pointer;
		float: right;
		
	}
	.content{
		width:80%;
		float: right;
		padding: 20px 30px;
		height: 46px;
		text-overflow: ellipsis;
		overflow: hidden;
		cursor:default;
		color:#4c4c4c;
		display: inline-block;
	}
	.news_img{
		width:14%;
		border-radius: 50%;
		float: left;
		overflow: hidden;
		display: inline-block;
	}
	#news li hr{
		width:100%;
	}
	section{
		/*border: solid 1px black;*/
		width: 75%;
		margin:20px auto;
		overflow:hidden;
	}
</style>
<script type="text/javascript" src="js/move.js"></script>
<script>
	window.onload = function(){
		var oUl = document.getElementById('news');
		var aH1 = oUl.getElementsByTagName('a');
		var aNews = document.getElementsByClassName('漫画情报')
		
		for(var i=0;i<aNews.length;i++){
			aNews[i].style.display = 'block';
		}
		for(var i=0;i<aH1.length;i++){
			aH1[i].onmouseover = function(){
				this.style.color = '#dc0000';
			}
			aH1[i].onmouseout = function(){
				this.style.color = 'black';
			}
		}
		
	}
	
	document.getElementsByClassName = function(className)	{		
		var children = document.getElementsByTagName('*') || document.all;	var elements=new Array();		
		for(var i=0;i<children.length;i++){			
			var child=children[i];			
			var classNames=child.className.split(' ');			
			for(var j=0;j<classNames.length;j++){								
				if(className==classNames[j]){
					elements.push(child);					
					break;				
				}			
			}		
		}		
		return elements;	
	}
</script>

</head>
<body>
<div id="bg"></div>
<nav>
	<ul>
		<li><a href="showNews">首页</a></li>
		<li><a href="news1">动画情报</a></li>
		<li><a class="active" href="news2">漫画情报</a></li>
		<li><a href="news3">轻小说情报</a></li>
		<li><a href="news4">动漫周边</a></li>
	</ul>
</nav>
<section>
	<ul id="news">
	<s:iterator value="newsList" var="i">
			<li class="${i.category }">
				<img class="news_img" src="img/news1.jpeg">
				<b><a class="title" href="new?id=${i.id }">${i.title}</a></b>
				<div class="content">${i.content}</div>
				<hr>
			</li>
		</s:iterator>
	</ul>
</section>
</body>
</html>