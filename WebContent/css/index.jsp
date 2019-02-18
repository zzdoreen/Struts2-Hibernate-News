<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="index.css"/>
<title>Game Manager</title>
</head>
<body>
	<h2> Game Manager </h2><hr/>
	<h3> <b>Insert new Game </b> </h3>
	<form action="insertNews">
		<fieldset>
			<legend> Add new game </legend><br/>
			<s:textfield name="title" label="Name of the Game : "/><br/>
			<s:textfield name="category" label="Price of the Game : "/>
			<s:submit/>
		</fieldset>
	</form>
	<h3> <b>Update old Game </b> </h3>
	<form action="updateNews">
		<fieldset>
			<legend> Update old game </legend><br/>
			<s:textfield name="id" label="Game id : "/><br/>
			<s:textfield name="title" label="Name of the Game : "/><br/>
			<s:textfield name="category" label="Price of the Game : "/>
			<s:submit/>
		</fieldset>
	</form>
	<h3> <b>Delete Game </b> </h3>
	<form action="deleteNews">
		<fieldset>
			<legend> Delete game </legend><br/>
			<s:textfield name="id" label="Game id : "/>
			<s:submit/>
		</fieldset>
	</form>
	<h3> <b>Find Game </b> </h3>
	<form action="findNews">
		<fieldset>
			<legend> Find game </legend><br/>
			<s:textfield name="id" label="Game id : "/>
			<s:submit/>
		</fieldset>
	</form>
	<h3> <b>List games </b> </h3>
	<form action="listAll">
		<fieldset>
			<legend> List all games </legend>
			<s:submit/>
		</fieldset>
	</form>
</body>
</html>