<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h3> <b>Update old Game </b> </h3>
	<form action="updateNews">
		<fieldset>
			<s:textfield name="id" label="id  "/><br/>
			<s:textfield name="title" label="title  "/><br/>
			<s:textfield name="category" label="category  "/>
			<s:submit/>
		</fieldset>
	</form>
</body>
</html>