<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="css/index.css"/>
<title>Insert title here</title>
</head>
<body>
消息:
<s:textfield name="news.id" label="编号" ></s:textfield>
<s:textfield name="news.category" label="类别" > </s:textfield>
<s:textfield name="news.title" label="新闻标题" ></s:textfield>
<s:textarea  label="新闻内容:"  name="news.content" ></s:textarea>
</body>
</html>