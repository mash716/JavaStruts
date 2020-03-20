package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import bean.AccountBean;
import bean.LoginBean;

public class AccountDao extends Action{
	public AccountBean findByLogin(LoginBean loginbean) {
		java.sql.Connection conn = null;
		AccountBean account = null;
		try {
			//JDBCドライバを詠み込む
			Class.forName("com.mysql.jdbc.Driver");
			String userid = loginbean.getUserid();
			String password = loginbean.getPassword();

			//文字化け修正
			System.out.println(password);

			//データベースに接続
			conn = DriverManager.getConnection("jdbc:mysql://localhost/struts","root","root");

			//select文を準備
			String sql = "select * from register_struts where userid = " + "\"" + userid + "\"" +"and password = "
					+  "\"" + password +  "\""  +";" ;

			PreparedStatement pStmt = conn.prepareStatement(sql);

			//select文を実行し、結果表を取得
			ResultSet rs = pStmt.executeQuery();

			//一致したユーザが存在した場合
			if(rs.next()) {
				//結果表からデータを取得する
	        	userid = rs.getString("userid");
	        	password = rs.getString("password");
	        	String name = rs.getString("name");
	        	String adress = rs.getString("adress");
	        	String age = rs.getString("age");


	        	account = new AccountBean(userid,password,name,adress,age);
			}
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}finally {
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
		//ユーザが見つかったまたはnullを返す場合
		return account;
	}
	  public ActionForward execute(ActionMapping mapping, ActionForm form,
          HttpServletRequest request, HttpServletResponse response)
            throws Exception {

	    Connection con = null;
	    Statement stmt = null;
	    ResultSet rs = null;
	    // ※?以降はMySQLの設定により必要ないです。SSLを無効、タイムゾーンをUTCにしています。
	    Class.forName("com.mysql.jdbc.Driver");
      String URL = "jdbc:mysql://localhost/struts?useUnicode=true&characterEncoding=utf8";
      String USER = "root";
      String PASSWORD = "root";
      List usersList = null;
      System.out.println("AA");
	    try {
      	usersList = new ArrayList();
	        // データベースに接続
	        con = DriverManager.getConnection(URL,USER,PASSWORD);
System.out.println("DDDD");
	        // ステートメントオブジェクトを作成
	        stmt = con.createStatement();

	        // SQLの作成
	        String sql = "select * from register_struts order by userid limit 10";

	        // SQLの実行
	        rs = stmt.executeQuery(sql);

	        // 結果セットからデータを取り出す
	        while(rs.next()) {
	         AccountBean accountbean = new AccountBean();
	          String name = rs.getString("name");
	          String userid = rs.getString("userid");
	          String password = rs.getString("password");
	          String age = rs.getString("age");
	          String adress = rs.getString("adress");
	          accountbean.setAdress(adress);
	          accountbean.setName(name);
	          accountbean.setPassword(password);
	          accountbean.setAge(age);
	          accountbean.setUserid(userid);
	          usersList.add(accountbean);
	        }
	        request.setAttribute("userslist", usersList);

	      } catch (Exception e) {
	          System.out.println(e.getMessage());
	      }finally {

	          // 各オブジェクトを解放する
	          if(rs != null) {
	              try {
	                  rs.close();
	              }catch (Exception e) {
	                  System.out.println(e.getMessage());
	            }
	          }

	          if(stmt != null) {
	              try {
	                  stmt.close();
	              }catch (Exception e) {
	                  System.out.println(e.getMessage());
	            }
	          }

	          if(con != null) {
	              try {
	                  con.close();
	              }catch (Exception e) {
	                  System.out.println(e.getMessage());
	            }
	          }
	      }

	    return (mapping.findForward("success"));
	  }
}
