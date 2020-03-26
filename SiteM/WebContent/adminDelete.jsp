<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html>
<head>
<title>User Delete</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<script type="text/javascript" src="js/sample.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</head>
<body>
<p id="RealtimeClockArea2"></p>
<div id="js-target">
<h1>ユーザ削除画面</h1>
</div>
<P id="menu">
   現在の登録者は下記の通りです
   <table id="menu1" border="1" bordercolor="#ff6666" cellspacing="0" >
      <tr>
         <th  onMouseover="openMenu(1)" onMouseout="closeMenu()">ID</th>
         <th  onMouseover="openMenu(2)" onMouseout="closeMenu()">パスワード</th>
         <th  onMouseover="openMenu(3)" onMouseout="closeMenu()">名前</th>
         <th  onMouseover="openMenu(4)" onMouseout="closeMenu()">アドレス</th>
         <th  onMouseover="openMenu(5)" onMouseout="closeMenu()">年齢</th>
      </tr>
      <!-- 登録者の一覧を表示するエリア -->
   </table>
   <table  id="li1" border="1" bordercolor="#ff6666" onMouseover="openMenu(1)" onMouseout="closeMenu()" >
     <logic:iterate
        id="login"
        name="userslist">
        <tr>
           <td>
           <html:form  action="/Delete"  >
               <html:hidden name="login" property="password"/>
		       <html:hidden name="login" property="userid"/>
           <html:submit property="submit"  value="削除" styleId="delete" />
              <bean:write
                 name="login"
                 property="userid"
                 scope="page" />
           </html:form>
           </td>
        </tr>
        </logic:iterate>
    </table>
    <table id="li2" border="1" bordercolor="#ff6666" onMouseover="openMenu(2)" onMouseout="closeMenu()">
         <logic:iterate
        id="login"
        name="userslist">
		<tr>
           <td>
              <bean:write
                 name="login"
                 property="password"
                 scope="page" />
           </td>
        </tr>
        </logic:iterate>
    </table>
    <table id="li3" border="1" bordercolor="#ff6666" onMouseover="openMenu(3)" onMouseout="closeMenu()">
         <logic:iterate
        id="login"
        name="userslist">
        <tr>
           <td>
           <html:form  action="/Login"  >
               <html:hidden name="login" property="password"/>
		       <html:hidden name="login" property="userid"/>
               <html:submit property="submit"  value="移動"  />
              <bean:write
                 name="login"
                 property="name"
                 scope="page" />
            </html:form>
           </td>
        </tr>
        </logic:iterate>
     </table>
     <table id="li4" border="1" bordercolor="#ff6666" onMouseover="openMenu(4)" onMouseout="closeMenu()">
       <logic:iterate
        id="login"
        name="userslist">
        <tr>
           <td>
              <bean:write
                 name="login"
                 property="adress"
                 scope="page" />
           </td>
        </tr>
		</logic:iterate>
     </table>
     <table id="li5" border="1" bordercolor="#ff6666" onMouseover="openMenu(5)" onMouseout="closeMenu()">
       <logic:iterate
        id="login"
        name="userslist">
        <tr>
           <td>
              <bean:write
                 name="login"
                 property="age"
                 scope="page" />
           </td>
        </tr>
        </logic:iterate>
     </table>
</P>
<html:form  action="/Delete"  >
<div id="js-target1">
    <%-- 入力項目 --%>
    <p>userid:</p><html:text property="userid" />
    <p>password:</p><html:text property="password" />
    <br>
    <html:submit property="submit"  value="削除" onclick="return clickBtn();" styleId="delete" />
</div>
</html:form>

<html:form  action="/Admin"  >
    <html:hidden name="DeleteUserForm" property="aduser"/>
	<html:hidden name="DeleteUserForm" property="adpass"/>
	<html:submit property="submit"  value="戻る" />
</html:form>
<a href="http://localhost:8022/SiteM/main.jsp">メイン画面へ戻る</a>
</body>
<!-- AdminForm -->
</html>