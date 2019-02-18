<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员</title>
<style>
	*{margin: 0;padding: 0;}
	#box{
		width: auto;
		height: 100%;
		position: relative;
		margin: 0 auto;
	}
	#menu{
		position: absolute;
		width:15%;
		background:#f2f0f1;
		height: 1581px;
	}
	#menu .li_show{
		width:100%;
		height: 80px;
		background: #f2f0f1;
		border-bottom: solid #a2a7b1 1px;
		text-align: center;
		color: #a2a7b1;
		font-size: 20px;
		line-height: 80px;
		cursor:pointer;
	}
	#div1{
		position: absolute;
		background: #5a6378;
		width:85%;
		height: 100%;
		left:15%;
	}
	#title{
		width:100%;
		height: 81px;
		background: #5a6378;
	}
	#content{
		background: #393f4f;
		height: 1500px;
		width: 100%;
	}
	
	.li_show a{
		cursor: pointer;
		text-decoration:none;
		color:#a2a7b1;
	}
	.active{
		color: #ff6b6b;
	}
	#content_box{
		position:relative;
		width: 100%;
		height: 1000px;
		padding:50px auto;
	}
	#content_box form{
		width:90%;
		margin-left:5%;
		font-size:25px;
		color:#f2f2f2;
	}
	#touxiang{
		width:65px;
		height:65px;
		border-radius:50%;
		border:solid 2px #778899;
		float:right;
		margin-top:5px;
		margin-right:20px;
	}
	#search{
		position:relative;
		width: 250px;
		height: 60px;
		float: right;
	}
	#search_content{
		position: absolute;
		border:solid 2px #778899;
		width:200px;
		height:35px;
		border-radius:42px;
		margin-top:20px;
		margin-right:20px;
		background:white;
		padding:0 20px;
	}
	#search_img{
		width:10%;
		left: 80%;
		position:absolute;
		top:25px;
		opacity: 0.6;
	}
	.label{
		margin-top:50px;
		width:500px;
		height:10px;
		padding:20px;
	}
	.text{
		/*margin-top:50px;*/
		width:800px;
		height:800px;
		padding:10px;
	}
	.btn1{
		width:100px;
		height:50px;
		border:#ccc 1px solid;
		background:#778899;
		color:#f2f2f2;
		font-size:15px;
		margin-top:200px;
	}
	
	#kind{
		width:150px;
		height:50px;
		font-size:15px;
		padding-left:20px;
		line-height:50px;
	}
</style>
<script type="text/javascript" src="ueditor/ueditor.config.js"></script>  
<script type="text/javascript" src="ueditor/ueditor.all.js"></script> 
<LINK rel=stylesheet href="ueditor/themes/default/ueditor.css">
<script>
        var UEDITOR_HOME_URL = "/ueditor/";//从项目的根目录开始
         
</script>
<script>
	window.onload = function(){
		var oUl = document.getElementById('menu');
		var aLi = document.getElementsByClassName('li_show');
		
		for(var i=1;i<aLi.length;i++){
			aLi[i].onmouseover = function(){
				this.style.color = '#ff6b6b';
			}
			
			aLi[i].onmouseout = function(){
				this.style.color = '#a2a7b1';
			}
		}
	}
	
	document.getElementsByClassName=function(className)	{		
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
<div id="box">
	<ul id="menu">
		<li class="li_show" style="background: #ff6b6b;color: white">♠&nbsp;管理员界面</li>
		<li class="li_show">♣&nbsp;<a href="listAll">新闻管理</a></li>
	</ul>
	<div id="div1">
		<div id="title">
			<img src="img/work_2.png" id="touxiang">
			<div id="search"><input type="text" id="search_content"/><img src="img/search.jpg" id="search_img"></div>
		</div>
		
		<div id="content">
			<div id="content_box">
			 	
				<s:form action="updateNews" method="post">
   				<s:textfield name="news.id" label="编号"  readonly="true"  class="label" style="height:50px;margin-top:50px;"></s:textfield>
   					新闻类别：<select name="news.category" id="kind" > 
         				<option value="动画情报">动画情报</option> 
         				<option value="漫画情报">漫画情报</option> 
         				<option value="轻小说情报">轻小说情报</option> 
         				<option value="动漫周边">动漫周边</option>
        			</select><br/>
   					<s:textfield name="news.title" label="新闻标题" class="label" style="height:50px;width:500px;margin-top:50px;"></s:textfield>
   					<s:textarea id="newsEditor" label="新闻内容:"  name="news.content" class="text" style="margin-top:50px;width:800px;height:800px;padding:10px;"></s:textarea>
   					<s:submit value="修改" align="center" class="btn1" style="width:100px;height:50px;border:#ccc 1px solid;background:#778899;color:#f2f2f2;font-size:15px;margin-top:50px;"></s:submit>
   					<script type="text/javascript">  
           			UE.getEditor('newsEditor');  
   					</script>  
				</s:form>
			</div>
		</div>
	</div>
</div>
</body>
</html>