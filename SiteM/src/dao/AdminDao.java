package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

public class AdminDao extends Action {

	public ActionForward execute(ActionMapping mapping, ActionForm form,
	              HttpServletRequest request, HttpServletResponse response)
	                throws Exception {
	    Connection con = null;

		  //insert処理のクラスを入れる
		Class.forName("com.mysql.jdbc.Driver");
        //(1)RegistActionFormクラスにキャスト
    	DynaActionForm  daf = (DynaActionForm )form;
        //(2)プロパティnameの値を取得
        String userid = daf.get("userid").toString();
        String password = daf.get("password").toString();

	    // JDBCの各設定
	    // ※jdbc:mysql://localhost/データベース名
	    // ※?以降はMySQLの設定により必要ないです。SSLを無効、タイムゾーンをUTCにしています。
        //DB接続情報
        String URL = "jdbc:mysql://localhost/struts?useUnicode=true&characterEncoding=utf8";
        String USER = "root";
        String PASSWORD = "root";
	    try {
	        // データベースに接続
	        con = DriverManager.getConnection(URL,USER,PASSWORD);
	        // SQLの作成
	        String sql = "delete from register_struts where userid = "+ "\"" + userid + "\"" + " and password = "
	        		+"\"" + password + "\"" + ";" ;
	        java.sql.PreparedStatement pStmt = con.prepareStatement(sql);

	        //delte文を実行
	        int result =  pStmt.executeUpdate(sql);

        //SQL文がおかしい場合は、fail
	    if(result != 1 ) {
	        	return (mapping.findForward("fail"));
	        }
	    }catch(SQLException e){
	    	e.printStackTrace();
	    	return (mapping.findForward("fail"));
	    }
	    return (mapping.findForward("success"));
	}

}
