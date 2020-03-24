<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>User Delete</title></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/sample.js"></script>
<body>
<p id="RealtimeClockArea2"></p>
<h1>ユーザ削除画面</h1>
<html:form action="/Delete">
    <%-- 入力項目 --%>
<bean:write name="DeleteForm" property="userid"
            scope="request" ignore="true" />様を削除しました<br>
    <a href="http://localhost:8022/SiteM/adminLogin.jsp">戻る</a>
</html:form>

</body>
</html:html>