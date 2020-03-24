<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html>
<head>
<title>マウスオーバー時にメニューリストを表示</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="sample.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
マウスオーバー時にメニューリストを表示<br>
<br>
<p id="menu">
<table id="menu1" border="1" bordercolor="#ff6666" cellspacing="0">
    <tr>
    <td onMouseover="openMenu(1)" onMouseout="closeMenu()">JavaScript</td>
    <td onMouseover="openMenu(2)" onMouseout="closeMenu()">Java</td>
    <td onMouseover="openMenu(3)" onMouseout="closeMenu()">CSS</td>
    <td onMouseover="openMenu(4)" onMouseout="closeMenu()">Python</td>
    </tr>
</table>
<table id="li1" border="1" bordercolor="#ff6666" onMouseover="openMenu(1)" onMouseout="closeMenu()">
    <tr><td><a href="iphone-791450_1920.jpg">javascirpt</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト1-2</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト1-3</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト1-4</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト1-5</a></td></tr>
</table>
<table id="li2" border="1" bordercolor="#ff6666" onMouseover="openMenu(2)" onMouseout="closeMenu()">
    <tr><td><a href="../../sample/sample1.html">リスト2-1</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト2-2</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト2-3</a></td></tr>
</table>
<table id="li3" border="1" bordercolor="#ff6666" onMouseover="openMenu(3)" onMouseout="closeMenu()">
    <tr><td><a href="../../sample/sample3.html">リスト3-1</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-2</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-3</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-4</a></td></tr>
    <tr><td><a href="../../sample/sample3.html">リスト3-5</a></td></tr>
    <tr><td><a href="../../sample/sample1.html">リスト3-6</a></td></tr>
    <tr><td><a href="../../sample/sample2.html">リスト3-7</a></td></tr>
</table>
<table id="li4" border="1" bordercolor="#ff6666" onMouseover="openMenu(4)" onMouseout="closeMenu()">
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
</p>
<img src="iphone-791450_1920.jpg" alt="海の写真"  title="空と海">
</body>
</html>