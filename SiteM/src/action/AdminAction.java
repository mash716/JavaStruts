package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

public final class AdminAction extends Action {
	  public ActionForward execute(ActionMapping mapping, ActionForm form,
              HttpServletRequest request, HttpServletResponse response)
                throws Exception {
		  request.setCharacterEncoding("utf-8");

        //formの値の取得
    	DynaActionForm  daf = (DynaActionForm )form;
        //jspからのプロパティ取得
        String aduser = daf.get("aduser").toString();
        String adpass = daf.get("adpass").toString();
        //adminの値は、固定値なので下記に入力する
        //文字DB値を使用する場合は、adminbeanをloginとその他で使用する必要がある
        if(aduser.equals("admin") && adpass.equals("admin")) {

        	return (mapping.findForward("success"));
        }else if(aduser.equals("") || adpass.equals("")) {
        	return (mapping.findForward("failer"));
        }

		return (mapping.findForward("failer"));
    }
}