package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import bean.AccountBean;
import bean.LoginBean;
import dao.AccountDao;
import dao.AdminDao;
import logic.LoginLogic;

public class AdminDeleteUserAciton extends Action{
	  public ActionForward execute(ActionMapping mapping, ActionForm form,
              HttpServletRequest request, HttpServletResponse response)
                throws Exception {
		  request.setCharacterEncoding("utf-8");

	    //formの値の取得
    	DynaActionForm  daf = (DynaActionForm )form;
        //プロパティ値とDB値の判定

    	//jspからのプロパティ取得
        String userid = daf.get("userid").toString();
        String password = daf.get("password").toString();

        //プロパティ値とDB値の判定
	    LoginBean loginbean = new LoginBean(userid,password);
		AccountDao adco = new AccountDao();
		LoginLogic bo = new LoginLogic();
		boolean result = bo.execute(loginbean);

		AccountBean resultDB = adco.findByLogin(loginbean);
		//DB値がない場合の例外処理
		try {
			//DBの値を取得

			String useridDB = resultDB.getUserid();
			String passwordDB = resultDB.getPassword();
	        String nameDB = resultDB.getName();
	        String adressDB = resultDB.getAdress();
	        String ageDB = resultDB.getAge();

	        if(useridDB.equals(null) || passwordDB.equals(null)) {
	    		System.out.println("QAZSWDC");
	    		return (mapping.findForward("failvaluenot"));
	    	}

	        //空白チェック
	        if(userid.equals("") || password.equals("")) {
	        	System.out.println("Error1");
	        	return (mapping.findForward("failer"));
	        }else if(result){
	    		//DB値の取得
	            if(userid.equals(useridDB) || password.equals(passwordDB)) {
	                //strutsへのセット
	                daf.set("name", nameDB);
	                daf.set("adress", adressDB);
	                daf.set("age", ageDB);
	                //delete処理
	            	System.out.println("AAAADDDDCCCC");
	        		AdminDao ado = new AdminDao();
	        		ado.execute(mapping, form, request, response);
	                return (mapping.findForward("success"));
	            }else {
	            	return (mapping.findForward("failer"));
	            }
	        }
		}catch(NullPointerException e){
			//例外処理の結果
			//e.printStackTrace();
			return (mapping.findForward("failvaluenot"));
		}
        return (mapping.findForward("failer"));
    }
}
