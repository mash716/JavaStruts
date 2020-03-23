<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>管理者ログイン画面</title></head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<body>
<h1>管理者ログイン画面</h1>
<html:form action="/Admin">
    <%-- 入力項目 --%>
    <p>userid:</p><html:text property="aduser"/>
    <br>
    <p>password:</p><html:text property="adpass"/>
	<br>
    <html:submit property="submit" value="ログイン" onclick="return clickBtn3()"/>
</html:form>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
</html:html>