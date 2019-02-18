<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>情报</title>
<link rel="stylesheet" href="css/nav.css">
<style>
	#bg{
		background: url(img/article.jpg) no-repeat;
		background-position: 0 40%;
		height: 200px;
		background-size:100%;
	}
	a{
		text-decoration: none;
		color: black;
	}
	section{
		width:85%;
		height: 700px;
		/*border: solid 1px black;*/
		position: relative;
		margin: 80px auto;
		overflow:hidden;
	}
	#back{
		top:20px;
		text-align: center;
		line-height: 50px;
		font-size: 20px;
		width: 15%;
		height: 50px;
		border: solid 1px black;
		position: absolute;
		cursor: default;
		border-radius: 10px;
	}
	.ahover{
		border-radius: 10px;
		background: #1f92d1;
		color: white;
		border-color:  #1f92d1;
		padding: 5px 0;
		border: none;
	}
	section hr{
		width: 2px;
		height: 700px;
		position: absolute;
		left: 20%;
	}
	.article{
		position: absolute;
		width: 75%;
		height: 700px;
		/*border: solid 1px black;*/
		left: 25%;
		padding: 10px 20px;
		overflow: hidden;
		overflow-y: auto;
		padding-right:2%;
	}
	.article h1{
		width: 100%;
		height:50px;
		border-bottom: 1.5px #d9d9d9 solid;
		text-align: center;
		line-height: 50px;
		font-size: 25px;
	}
	.article span{
		/*position: absolute;*/
		width: 90%;
		height: 600px;
		white-space: normal;
		top: 60px;
		padding : 20px 20px;
		text-overflow: ellipsis;
	}
</style>
<script type="text/javascript" src="js/move.js"></script>
<script>
	window.onload = function(){
		var oBack = document.getElementById('back');
		var aArticle = document.getElementsByClassName('article');
		var oId = /\d+$/;
		var str = window.location;
		String(str);
		var index = oId.exec(str);
		
		oBack.onmouseover = function(){
			oBack.className = 'ahover';
			oBack.style.border = 'none';
		}
		oBack.onmouseout = function(){
			oBack.className = '';
			oBack.style.border = 'solid 1px black';
			
		}
		oBack.onclick = function(){
			window.history.back(-1,'_self');
		}
		
		for(var i=0;i<aArticle.length;i++){
			aArticle[i].style.display = 'none';
		}
		document.getElementById(index).style.display = 'block';
		
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
		<li><a href="news">动画情报</a></li>
		<li><a href="news2">漫画情报</a></li>
		<li><a href="news3">轻小说情报</a></li>
		<li><a href="news4">动漫周边</a></li>
	</ul>
</nav>

<section> 
	<div id="back" >回到目录</div>
	<hr>
		<s:iterator value="newsList" var="i">
			<article class="article" id="${i.id}">
			<h1>${i.title}</h1>
			<span>${i.content}</span>
			</article>
		</s:iterator>
</section>
</body>
</html>