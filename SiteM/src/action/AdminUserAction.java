package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.AccountDao;


public final class AdminUserAction extends Action {
	  public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
              throws Exception {
		 //DBの実行クラス
		 AccountDao aud = new AccountDao();
		 aud.execute(mapping, form, request, response);
	    return (mapping.findForward("success"));
  }

}
