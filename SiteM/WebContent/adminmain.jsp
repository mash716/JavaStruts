<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="js/alert.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<title>管理者画面</title>

</head>
<h1>管理者画面</h1>
<body>
<html:form  action="/DeleteUser"  >
	<html:hidden name="AdminForm" property="aduser"/>
	<html:hidden name="AdminForm" property="adpass"/>
<html:submit property="submit"  value="ユーザ削除画面" />
</html:form>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a><br>
</body>
</html>