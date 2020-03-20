package test;

import bean.AccountBean;
import bean.LoginBean;
import dao.AccountDao;
import dao.RegisterDao;

public class AccountDAOtest {
	public static void main(String[] args) {
		testFindByLogin1();
		testFindByRegister();
		testExecute1();
	}

	private static void testFindByRegister() {
		AccountBean accountbean = new AccountBean("aaa", "bbb", "ccc", "ddd", "eee");
		RegisterDao dao = new RegisterDao();
		//AccountBean result = dao.RegisterInsert(accountbean);

	}

	public static void testFindByLogin1() {
		// TODO 自動生成されたメソッド・スタブ
		LoginBean loginbean = new LoginBean("mash716","1234");
		AccountDao ado = new AccountDao();
		AccountBean result = ado.findByLogin(loginbean);
		if(result != null && result.getUserid().equals("mash716") && result.getPassword().equals("1234")) {
			System.out.println(result.getName() + "成功しました");
		}else {
			System.out.println("失敗しました");
		}
	}

	public static void testExecute1() {

	}

}
