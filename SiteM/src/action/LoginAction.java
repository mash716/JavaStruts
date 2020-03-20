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
import logic.LoginLogic;

public final class LoginAction extends Action {
	  public ActionForward execute(ActionMapping mapping, ActionForm form,
              HttpServletRequest request, HttpServletResponse response)
                throws Exception {
		  request.setCharacterEncoding("utf-8");

        //formの値の取得
    	DynaActionForm  daf = (DynaActionForm )form;

    	//jspからのプロパティ取得
        String userid = daf.get("userid").toString();
        String password = daf.get("password").toString();
        System.out.println(userid);

        //プロパティ値とDB値の判定
	    LoginBean loginbean = new LoginBean(userid,password);
		AccountDao ado = new AccountDao();
		LoginLogic bo = new LoginLogic();
		boolean result = bo.execute(loginbean);

		//空白チェックとDBの値チェック(null)
		if(userid.equals("") || password.equals("")){
			System.out.println("BBBB");
			return (mapping.findForward("fail"));
		}else if(userid.equals("") && password.equals("")) {
			System.out.println("CCCC");
			return (mapping.findForward("fail"));
		}else if(result) {
			System.out.println("AAAA");
			//DB値の取得
			AccountBean resultDB = ado.findByLogin(loginbean);
	        String name = resultDB.getName();
	        String adress = resultDB.getAdress();
	        String age = resultDB.getAge();
	        //strutsへのセット
	        daf.set("name", name);
	        daf.set("adress", adress);
	        daf.set("age", age);
			return (mapping.findForward("success"));
		}
		System.out.println("EEEE");
		//戻り値で取得する
		return (mapping.findForward("fail"));
    }
}