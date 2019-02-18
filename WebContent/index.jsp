<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>动画新闻站</title>
<style>
	*{
		margin: 0;
		padding: 0;
	}
	a{
		text-decoration: none;
		color: black;
	}
	#bg{
		width:100%;
		height: 200px;
		min-width:1000px;
		background: url(img/bg.jpg) no-repeat;
		background-size: cover;
		position: absolute;
		background-position: 0 -90px;
		z-index: -1;
		overflow: hidden;
	}
	nav{
		width: 100%;
		height: 50px;
		border-top: solid 8px #dc0000;
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
		background-color: #dc0000;
		padding:  16px 20px;
		color: #f0f0f0;
		cursor: pointer;
	}
	.active{
		background-color: #dc0000;
		color: #f0f0f0;
		padding:  16px 20px;
	}
	section{
		position: relative;
		top:280px;
		width:90%;
		height: 1200px;
		margin: 0 auto;
		/*border: 1px solid #000000;*/
	}
	section ul{
		width: 40%;
		margin-left: 20px;
		margin-bottom: 50px;
		position: absolute;
		height: 400px;
		overflow: hidden;
		text-overflow: ellipsis;
	}
	section ul li{
		list-style:disc;
		width: 100%;
		height: 380px;
		overflow: hidden;
		text-overflow: ellipsis; 
		position: relative;
		margin:0;
		padding:0;
	}
	section ul li div{
		position:relative;
		width:100%;
		height:100%;
		margin:0;
		padding:0;
	}
	section ul li div p{
		width:100%;
		position: absolute;
		height: 50px;
		overflow: hidden;
		border-bottom: dotted 1px black;
		text-overflow: ellipsis; 
		line-height: 50px;
		cursor: pointer;
		display: none;
	}
	.title{
		font-size: 20px;
		color:  #dc0000;
		border-bottom-color:  #dc0000;
		border-bottom: solid;
		line-height: 50px;
		font:normal;
		width: 100px;
		height: 50px;
		left: 20px;
		margin: 0;
		padding: 0;
		margin-bottom: 10px;
	}
	#donghua{
		top:200px;
		width: 65%;
	}
	#manhua{
		left: 67%;
		width: 32%;
		top:0px;
		height: 510px;
	}
	#xiaoshuo{
		top:650px;
	}
	#zhoubian{
		top:650px;
		left: 51%;
	}
	#box{
		width: 65%;
		height: 200px;
		overflow: hidden;
		position: relative;
	}
	#pic{
		position: absolute;
		overflow: hidden;
		margin: 0;
		padding: 0;
	}
	#pic li{
		list-style: none;
		float: left;
		height: auto;
		margin: 0;
		padding: 0;
		border: none;
	}
	#pic img{
		margin: 0;
		padding: 0;
		width: 100%;
		margin-top: -80px;
		opacity: 0.7;
		filter: alpha(opacity:70);
	}
	#span{
		position: absolute;
		top:180px;
		left:45%;
		z-index: 2;
	}
	#span div{
		width: 15px;
		height: 15px;
		background: #ccc;
		margin-left: 5px;
		float: left;
	}
	#span .change{
		background: white;
	}
	.more{
	position:absolute;
	font-size:12px;
	color:#ccc;
	left:85%;
	line-height:50px;
	cursor:pointer;
	}
	.more:hover{
	color:black;
	}
</style>
<script src="js/move.js"></script>
<script>
	window.onload = function(){
		//window.location.href="<%=request.getContextPath()%>/showNews";
		var oUl = document.getElementById('pic');
		var aLi = oUl.getElementsByTagName('li');
		var aImg = oUl.getElementsByTagName('img');
		var oBox = document.getElementById('box');
		var oDiv = document.getElementById('span');
		var aSpan = oDiv.getElementsByTagName('div');
		var oUl1 = document.getElementById('donghua');
		var oUl2 = document.getElementById('manhua');
		var oUl3 = document.getElementById('zhoubian');
		var oUl4 = document.getElementById('xiaoshuo');
		var oDiv = document.getElementById('change1');
		var oDiv2 = document.getElementById('change2');
		var oDiv3 = document.getElementById('change3');
		var oDiv4 = document.getElementById('change4');
		var aP = oDiv.getElementsByClassName('动画情报');
		var aP2 = oDiv2.getElementsByClassName('漫画情报');
		var aP3 = oDiv3.getElementsByClassName('轻小说情报');
		var aP4 = oDiv4.getElementsByClassName('动漫周边');

		var iNow = 0;
		var timer = null;
		
		
		for(var i=0;i<aImg.length;i++){
			aLi[i].style.width = oBox.offsetWidth+'px';	
			
		}
		oUl.style.width = 2*(aImg.length*aImg[0].offsetWidth)+'px';
		oUl.innerHTML+=oUl.innerHTML;
		
		//轮播图
		for(var i=0;i<aImg.length;i++){
			aImg[i].onmouseover = function(){
				startMove(this,{opacity:100});
			}
			aImg[i].onmouseout = function(){
				startMove(this,{opacity:70});
			}
		}
		
		setTimeout(run,1000);
		function run(){
			if(iNow<aLi.length){
				startMove(oUl,{left:-aLi[0].offsetWidth*iNow},function(){
					 setTimeout(run,2000);
				});
			}else{
				iNow = 0;
				 setTimeout(oUl.style.left = 0+'px',1000);
				startMove(oUl,{left:-aLi[0].offsetWidth*iNow},function(){
					setTimeout(run,2000);

				});
			}
			
			for(var i=0;i<aSpan.length;i++){
				aSpan[i].className = '';
			}
			aSpan[iNow%4].className = 'change';
			
			iNow++;
			
			
		}
	
		//百叶窗
		for(var b=0;b<aP.length;b++){
			aP[b].style.display = 'block';
			aP[b].style.top = 52*b+'px';
		}
		for(var b=0;b<aP2.length;b++){
			aP2[b].style.display = 'block';
			aP2[b].style.top = 52*b+'px';
		}
		for(var b=0;b<aP3.length;b++){
			aP3[b].style.display = 'block';
			aP3[b].style.top = 52*b+'px';
		}
		for(var b=0;b<aP4.length;b++){
			aP4[b].style.display = 'block';
			aP4[b].style.top = 52*b+'px';
		}
		setTimeout(function(){toShow(oDiv)},0);
		setTimeout(function(){toShow(oDiv2)},2000);
		setTimeout(function(){toShow(oDiv3)},1500);
		setTimeout(function(){toShow(oDiv4)},1000);
		function toShow(obj){
			var aDiv = obj.getElementsByTagName('p');
			var iNow1 = 0;
			var timer = null;
			var b = true;
			var now = [];
			for(var i=0;i<aDiv.length;i++){
				now[i] = aDiv[i].offsetTop;
			}
			clearInterval(timer);
			timer=setInterval(function(){
				toChange();
			},4000)
			
			
			function toChange(){
				timer = setInterval(function(){
					
					if(iNow1>=aDiv.length){
						clearInterval(timer);
						iNow1=0;
						b=!b;
					}else{
						startMove(aDiv[iNow1],{top:b?now[iNow1]:now[iNow1]-51});
						iNow1++;
					}
				},150);
			}
		}
	}
	
</script>
</head>
<body>
<div id="bg"></div>
<nav>
	<ul>
		<li><a class="active" href="showNews">首页</a></li>
		<li><a href="news1">动画情报</a></li>
		<li><a href="news2">漫画情报</a></li>
		<li><a href="news3">轻小说情报</a></li>
		<li><a href="news4">动漫周边</a></li>
	</ul>
</nav>
<section>
	<div id="box">
		<ul id="pic">
			<li><img src="img/222.jpg"></li>
			<li><img src="img/timg.jpg"></li>
			<li><img src="img/111.jpg"></li>
			<li><img style="margin-top: -150px; " src="img/TIM.jpg"></li>
		</ul>
		<div id="span">
			<div class="change"></div>
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<ul id="donghua" class="ul1">
		<p  class="title" >动画情报<a class="more" href="news">查看更多>></a></p>
		<li>
			<div id="change1">
			<s:iterator value="newsList" var="i">
				<p class="${i.category}">${i.title}</p>
			</s:iterator>
			</div>
		</li>
	</ul>
	<ul id="manhua" class="ul1">
		<p class="title">漫画情报<a class="more" href="news2">查看更多>></a></p>
		<li>
			<div id="change2">
			<s:iterator value="newsList" var="i">
				<p class="${i.category}">${i.title}</p>
			</s:iterator>
			</div>
		</li>
	</ul>
	<ul id="xiaoshuo" class="ul1">
		<p class="title">轻小说情报<a class="more" href="news3">查看更多>></a></p>
		<li>
			<div id="change3">
			<s:iterator value="newsList" var="i">
				<p class="${i.category}">${i.title}</p>
			</s:iterator>
			</div>
		</li>
	</ul>
	<ul id="zhoubian" class="ul1">
		<p  class="title">动漫周边<a class="more" href="news4">>>查看更多</a></p>
		<li>
			<div id="change4">
			<s:iterator value="newsList" var="i">
				<p class="${i.category}">${i.title}</p>
			</s:iterator>
			</div>
		</li>
	</ul>
</section>
</body>
</html>