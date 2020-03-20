package bean;

public class UpdateBean {
	private String userid;
	private String name;
	private String password;
	private String adress;
	private String age;

    public UpdateBean(String userid, String password, String name, String adress, String age) {
    	this.userid = userid;
    	this.name = name;
    	this.password = password;
    	this.adress = adress;
    	this.age = age;

    }


	public String getUserid() {
		return userid;
	}


	public String getName() {
		return name;
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
