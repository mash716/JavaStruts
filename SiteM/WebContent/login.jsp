<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>ログイン画面だで</title></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<body>
<h1>ログイン画面</h1>
<html:form action="/Login">
	<div class="container">
	<table class="table">
    <%-- 入力項目 --%>
    <tbody>
		<tr>
			<th>
    		userid:<html:text  property="userid"/>
    		</th>
    	<tr>
    </tbody>
    <tbody>
    	<tr>
    		<th>
    		password:<html:text property="password"/>
    		</th>
    	</tr>
	</tbody>
	<tbody>
    	<tr>
    		<th>
    			<html:submit property="submit" value="ログイン" onclick="return clickBtn2();"/>
    		</th>
    	</tr>
    </tbody>
    </table>
    </div>
</html:form>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
</html:html>