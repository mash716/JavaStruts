<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>Welcome Register</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/alert.js"></script>
</head>
<body>
<h1>登録画面</h1>
<html:form action="/Register">
    <%-- 入力項目 --%>
    <div id="js-target">
    <p>userid:</p><html:text property="userid"/>
    <br>
    <p>password:</p><html:text property="password"/>
    <br>
    <br>
    <p>name:</p><html:text property="name"/>
    <br>
    <p>adress:</p><html:text property="adress" />
    <br>
    <br>
    <p>age:</p><html:text property="age"/>
    <br>
    </div>
    <html:submit  property="submit" value="登録" onclick="return clickBtn1();" styleId="register" />
</html:form>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
</html:html>