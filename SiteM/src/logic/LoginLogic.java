package logic;

import bean.AccountBean;
import bean.LoginBean;
import dao.AccountDao;

public class LoginLogic {
	public boolean execute(LoginBean loginbean) {
		AccountDao dao = new AccountDao();
		AccountBean account = dao.findByLogin(loginbean);

		return account != null;
	}
}