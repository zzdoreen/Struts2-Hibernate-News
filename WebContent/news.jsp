<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>动画情报</title>
<link rel="stylesheet" href="css/nav.css">
<style>
	#bg{
		background: url(img/timg.jpg) no-repeat;
		background-position: center;
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
		/*border-bottom: solid #ccc 1px;*/
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
		width:75%;
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
	hr{
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
		var aA = oUl.getElementsByTagName('a');
		var aImg = oUl.getElementsByTagName('img');
		var aSpan = document.getElementsByTagName('span');
		var aNew = document.getElementsByClassName('动画情报');
		
		for(var i=0;i<aA.length;i++){
			aA[i].onmouseover = function(){
				this.style.color = '#1f92d1';
			}
			aA[i].onmouseout = function(){
				this.style.color = 'black';
			}
		}
		
		for(var i = 0;i<aNew.length;i++){
			aNew[i].style.display = 'block';
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
		<li><a class="active" href="news1">动画情报</a></li>
		<li><a href="news2">漫画情报</a></li>
		<li><a href="news3">轻小说情报</a></li>
		<li><a href="news4">动漫周边</a></li>
	</ul>
</nav>

<section>
	<ul id="news">
		<s:iterator value="newsList" var="i">
			<li  class="${i.category }">
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
