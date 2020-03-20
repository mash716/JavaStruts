<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminUserList</title>
</head>
<body>

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
            <a href="http://localhost:8022/Regitster/adminmain.jsp">戻る</a>
<a href="http://localhost:8022/Regitster/main.jsp">メイン画面へ戻る</a>
</body>
</html>