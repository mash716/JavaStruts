<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>
<head><title>Welcome main</title></head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<script type="text/javascript" src="js/sample.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<body>
<p id="RealtimeClockArea2"></p>
<html:hidden name="LoginForm" property="password"/>
<html:hidden name="LoginForm" property="userid"/>

<bean:write name="LoginForm" property="name"
            scope="request" ignore="true" />さん、ようこそ！！！<br>
<p id="menu">
<table id="menu1" border="1"  >
    <tr>
    <td onMouseover="openMenu(1)" onMouseout="closeMenu()">JavaScript</td>
    <td onMouseover="openMenu(2)" onMouseout="closeMenu()">Java</td>
    <td onMouseover="openMenu(3)" onMouseout="closeMenu()">CSS</td>
    <td onMouseover="openMenu(4)" onMouseout="closeMenu()">Python</td>
    </tr>
</table>

<table id="li1" border="1"  onMouseover="openMenu(1)" onMouseout="closeMenu()">
    <tr><td><a href="img/iphone-791450_1920.jpg">javascirpt</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト1-2</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト1-3</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト1-4</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト1-5</a></td></tr>
</table>

<table id="li2" border="1"  onMouseover="openMenu(2)" onMouseout="closeMenu()">
    <tr><td><a href="../../sample/sample1.html">リスト2-1</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト2-2</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト2-3</a></td></tr>
</table>

<table id="li3" border="1"  onMouseover="openMenu(3)" onMouseout="closeMenu()">
    <tr><td><a href="../../sample/sample3.html">リスト3-1</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-2</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-3</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-4</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト3-5</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-6</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-7</a></td></tr>
</table>

<table id="li4" border="1"  onMouseover="openMenu(4)" onMouseout="closeMenu()">
    <tr><td><a href="../../sample/sample3.html">リスト3-1</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-2</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-3</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-4</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト3-5</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-6</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-7</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト3-8</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-9</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-10</a></td></tr>
</table>

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