
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/alert.js"></script>
<html:form action="/Update">
<h1>編集結果画面</h1>
		<html:hidden name="UpdateForm" property="userid"/>
		<html:hidden name="UpdateForm" property="password"/>
		<html:hidden name="UpdateForm" property="name"/>
		<html:hidden name="UpdateForm" property="adress"/>
		<html:hidden name="UpdateForm" property="age"/>

<bean:write name="UpdateForm" property="password" scope="request" ignore="true" /><br>
<bean:write name="UpdateForm" property="name" scope="request" ignore="true" /><br>
<bean:write name="UpdateForm" property="adress" scope="request" ignore="true" /><br>
<bean:write name="UpdateForm" property="age" scope="request" ignore="true" /><br>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>

</html:form>
<html:form action="/Login">

		<html:hidden name="UpdateForm" property="userid"/>
		<html:hidden name="UpdateForm" property="password"/>
		<html:hidden name="UpdateForm" property="name"/>
		<html:hidden name="UpdateForm" property="adress"/>
		<html:hidden name="UpdateForm" property="age"/>
	<html:submit property="submit" value="戻る"/>

</html:form>
</head>
<body>

</body>
</html>