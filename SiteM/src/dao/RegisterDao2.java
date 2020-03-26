package dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.apache.struts.action.Action;

import bean.AccountBean;

public class RegisterDao2 extends Action{
	public boolean RegisterInsert(AccountBean accountbean) {
		java.sql.Connection conn = null;
		try {
			//JDBCドライバを詠み込む
			Class.forName("com.mysql.jdbc.Driver");
			//データベースに接続
			conn = DriverManager.getConnection("jdbc:mysql://localhost/struts","root","root");

			//select文を準備
			String sql = "INSERT ignore INTO `register_struts` ( `userid`, `password`, `name`, `adress`, `age` ) VALUES (?,?,?,?,?)";


			PreparedStatement pStmt = conn.prepareStatement(sql);
	        pStmt.setString(1, accountbean.getUserid());
	        pStmt.setString(2, accountbean.getPassword());
	        //変更した。
	        pStmt.setString(3, accountbean.getName());
	        pStmt.setString(4, accountbean.getAdress());
	        pStmt.setString(5, accountbean.getAge());


	        System.out.println(accountbean.getUserid());
			//select文を実行し、結果表を取得
			int result = pStmt.executeUpdate();

	        if(result != 1) {
	        	return false;
	        }

		}catch(SQLException e) {
			e.printStackTrace();
			return false;
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		}finally {
			if(conn != null) {
				try {
					conn.close();
				}catch(SQLException e) {
					e.printStackTrace();
					return false;
				}
			}
		}
		//ユーザが見つかったまたはnullを返す場合
		return true;
	}
}
