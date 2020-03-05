package pre.com.bo1;

public class User {
	private long id;
	private String name; 
	private String EmailId;
	private String loginPassword;


public User() {
}


public User(long id, String name, String emailId, String loginPassword) {
	super();
	this.id = id;
	this.name = name;
	EmailId = emailId;
	this.loginPassword = loginPassword;
}


public long getId() {
	return id;
}


public void setId(long id) {
	this.id = id;
}


public String getName() {
	return name;
}


public void setName(String name) {
	this.name = name;
}


public String getEmailId() {
	return EmailId;
}


public void setEmailId(String emailId) {
	EmailId = emailId;
}


public String getLoginPassword() {
	return loginPassword;
}


public void setLoginPassword(String loginPassword) {
	this.loginPassword = loginPassword;
}


}

