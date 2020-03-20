package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import bean.AccountBean;
import dao.RegisterDao;

public final class RegisterAction extends Action {
	  public ActionForward execute(ActionMapping mapping, ActionForm form,
              HttpServletRequest request, HttpServletResponse response)
                throws Exception {
		  request.setCharacterEncoding("utf-8");
        //formの値の取得
    	DynaActionForm  daf = (DynaActionForm )form;

    	//値を変数定義
        String userid = daf.get("userid").toString();
        String password = daf.get("password").toString();
        String name = daf.get("name").toString();
        String adress = daf.get("adress").toString();
        String age = daf.get("age").toString();

        System.out.println(userid);

		//DBの実行クラス
        AccountBean accountbean = new AccountBean(userid, password, name, adress, age);
		RegisterDao rdo = new RegisterDao();
		rdo.RegisterInsert(accountbean);

        //(3)プロパティnameに値を表示
        daf.set("userid", userid);
        daf.set("password", password);
        daf.set("name", name);
        daf.set("adress", adress);
        daf.set("age", age);

        return (mapping.findForward("success"));
    }
}