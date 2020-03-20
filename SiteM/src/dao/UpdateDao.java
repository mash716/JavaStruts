package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import bean.AccountBean;
import bean.UpdateBean;

public class UpdateDao{

	public AccountBean findByUpdate(UpdateBean updatebean) {
	    Connection con = null;
	    AccountBean accountupdate = null;
	    try {
			//JDBCドライバを詠み込む
			Class.forName("com.mysql.jdbc.Driver");
			//データベースに接続
			con = DriverManager.getConnection("jdbc:mysql://localhost/struts","root","root");
			String userid = updatebean.getUserid();
			String password = updatebean.getPassword();
			String name = updatebean.getName();
			String adress = updatebean.getAdress();
			String age = updatebean.getAge();

			System.out.println(userid);
			System.out.println(age);
			System.out.println(name);

	        String sql = "UPDATE register_struts set password = " +"\""+ password +"\""
	        		+ ", name = " +  "\"" + name + "\""
	        		+ ", adress = " +  "\"" + adress + "\""
	        		+ ", age = " +  "\"" + age + "\""
	        		+ "where userid = " +  "\"" + userid + "\"" ;

	        accountupdate = new AccountBean(userid,password,name,adress,age);
	        System.out.println(accountupdate);

	        java.sql.PreparedStatement pStmt = con.prepareStatement(sql);


	    //insert文を実行
        pStmt.executeUpdate(sql);

	    }catch(SQLException e){
	    	e.printStackTrace();
	    	return null;

	    }catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}finally {
			if(con != null) {
				try {
					con.close();
				}catch(SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}

	    return accountupdate;
	}

}
