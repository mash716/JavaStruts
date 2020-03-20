<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>Welcome Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
</head>
<body>
<h1>登録画面</h1>
<html:form action="/Register">
    <%-- 入力項目 --%>
    <p>userid:</p><html:text property="userid"/>
    <br>
    <p>password:</p><html:text property="password"/>
    <br>
    <br>
    <p>name:</p><html:text property="name"/>
    <br>
    <br>
    <p>adress:</p><html:text property="adress" value="" />
    <br>
    <br>
    <p>age:</p><html:text property="age"/>
    <br>

    <html:submit property="submit" value="登録" onclick="return clickBtn1();"/>
</html:form>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
</html:html>