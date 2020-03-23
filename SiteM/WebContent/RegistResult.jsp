<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>Welcome Register</title></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<body>

<bean:write name="RegistForm" property="userid"
            scope="request" ignore="true" /><br>
<bean:write name="RegistForm" property="password"
            scope="request" ignore="true" /><br>
<bean:write name="RegistForm" property="name"
            scope="request" ignore="true" /><br>
<bean:write name="RegistForm" property="adress"
            scope="request" ignore="true" /><br>
<bean:write name="RegistForm" property="age"
            scope="request" ignore="true" /><br>
                        <p>上記で設定登録しました。</p>
            <a href="http://localhost:8022/SiteM/Register.jsp">戻る</a>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
</html:html>