<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/alert.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</head>
<html:form action="/Update">
<h1>編集画面</h1>
	<div class="container">
	<table class="table">
	<thread>
		<html:hidden name="UpdateMainForm" property="userid"/>
	</thread>
	<tbody>
		<tr>
	    <th>password:</th>
	    <th><html:text size="100" property="password"/></th>
	    </tr>
	</tbody>
	<tbody>
		<tr>
	    <th>name:</th>
	    <th><html:text size="100" property="name"/></th>
	    </tr>
	</tbody>
	<tbody>
		<tr>
	    <th>adress:</th>
	    <th><html:text size="100" property="adress"/></th>
	   	</tr>
	<tbody>
		<tr>
	    <th>age:</th>
	    <th><html:text size="100" property="age"/></th>
	    </tr>
	</tbody>

	</table>
    <html:submit property="submit" value="編集"  styleId="update" />
    <div id="update">
    	<a  href="http://localhost:8022/SiteM/main.jsp" >メイン画面へ戻る</a><br>
    </div>
</div>
</html:form>
<html:form action="/Login">

	<html:hidden name="UpdateMainForm" property="password"/>
	<html:hidden name="UpdateMainForm" property="userid"/>
	<html:hidden name="UpdateMainForm" property="name"/>
	<html:hidden name="UpdateMainForm" property="adress"/>
	<html:hidden name="UpdateMainForm" property="age"/>
	<html:submit property="submit" value="戻る"/>

</html:form>
<body>

</body>
</html>