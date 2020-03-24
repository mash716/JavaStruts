<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<html>
<head>
<title>User Delete</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="js/alert.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
</head>
<body>
<div id="js-target">
<h1>ユーザ削除画面</h1>
</div>
<P>
   現在の登録者は下記の通りです
   <TABLE BORDER="1">
      <TR>
         <TH>ID</TH>
         <TH>パスワード</TH>
         <TH>名前</TH>
         <TH>アドレス</TH>
         <TH>年齢</TH>
      </TR>
      <!-- 登録者の一覧を表示するエリア -->
     <logic:iterate
        id="login"
        name="userslist">
        <TR>
           <TD>
              <bean:write
                 name="login"
                 property="userid"
                 scope="page" />
           </TD>
           <TD>
              <bean:write
                 name="login"
                 property="password"
                 scope="page" />
           </TD>
           <TD>
              <bean:write
                 name="login"
                 property="name"
                 scope="page" />
           </TD>
           <TD>
              <bean:write
                 name="login"
                 property="adress"
                 scope="page" />
           </TD>
           <TD>
              <bean:write
                 name="login"
                 property="age"
                 scope="page" />
           </TD>
        </TR>
     </logic:iterate>
   </TABLE>
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