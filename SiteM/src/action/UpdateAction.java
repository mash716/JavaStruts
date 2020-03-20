package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import bean.AccountBean;
import bean.UpdateBean;
import dao.UpdateDao;
import logic.UpdateLogic;

public final class UpdateAction extends Action {
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

        //プロパティ値とDB値の判定
	    UpdateBean updatebean = new UpdateBean(userid,password,name,adress,age);
		UpdateDao auo = new UpdateDao();
		UpdateLogic bo = new UpdateLogic();
		boolean result = bo.execute(updatebean);

		if(result) {

			AccountBean resultDB = auo.findByUpdate(updatebean);
			String useridDB = resultDB.getUserid();
			String passwordDB = resultDB.getPassword();
	        String nameDB = resultDB.getName();
	        String adressDB = resultDB.getAdress();
	        String ageDB = resultDB.getAge();

	        System.out.println(ageDB);
	        //(3)プロパティnameに値を表示
	        daf.set("userid", useridDB);
	        daf.set("password", passwordDB);
	        daf.set("name", nameDB);
	        daf.set("adress", adressDB);
	        daf.set("age", ageDB);

	        return (mapping.findForward("success"));
		}

		return (mapping.findForward("fail"));
    }
}