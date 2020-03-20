<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>Welcome main</title></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<body>
<html:hidden name="LoginForm" property="password"/>
<html:hidden name="LoginForm" property="userid"/>

<bean:write name="LoginForm" property="name"
            scope="request" ignore="true" />さん、ようこそ！！！<br>

<html:form action="/UpdateMain">
	<html:hidden name="LoginForm" property="password"/>
	<html:hidden name="LoginForm" property="userid"/>
	<html:hidden name="LoginForm" property="name"/>
	<html:hidden name="LoginForm" property="adress"/>
	<html:hidden name="LoginForm" property="age"/>

	<html:submit property="submit" value="編集画面へ"/>
</html:form>

<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
</html:html>