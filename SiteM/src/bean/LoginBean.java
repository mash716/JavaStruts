package bean;

public class LoginBean {
	private String userid;
	private String password;


    public LoginBean(String userid, String password ) {
    	this.userid = userid;
    	this.password = password;

    }


	public String getUserid() {
		return userid;
	}


	public String getPassword() {
		return password;
	}
}
