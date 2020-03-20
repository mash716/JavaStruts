package logic;

import bean.AccountBean;
import bean.UpdateBean;
import dao.UpdateDao;

public class UpdateLogic {
	public boolean execute(UpdateBean updatebean) {
		UpdateDao dao = new UpdateDao();
		AccountBean accountupdate = dao.findByUpdate(updatebean);

		return accountupdate != null;
	}
}
