package bean;

public class AccountBean {
	private String userid;
	private String name;
	private String password;
	private String adress;
	private String age;

    public AccountBean(String userid, String password, String name, String adress, String age) {
    	this.userid = userid;
    	this.name = name;
    	this.password = password;
    	this.adress = adress;
    	this.age = age;

    }


	public AccountBean() {
		// TODO 自動生成されたコンストラクター・スタブ
	}


	public String getUserid() {
		return userid;
	}


	public String getName() {
		return name;
	}


	public void setUserid(String userid) {
		this.userid = userid;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public void setAdress(String adress) {
		this.adress = adress;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getPassword() {
		return password;
	}


	public String getAdress() {
		return adress;
	}


	public String getAge() {
		return age;
	}


}
