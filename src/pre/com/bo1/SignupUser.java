package pre.com.bo1;


public class SignupUser {
	long id;
	String name;
	String loginPassword;
	String mobile;
	String email;
	String otp;
	
	public SignupUser() {
		// TODO Auto-generated constructor stub
	}
	
	
	public SignupUser( String name, String loginPassword, String mobile,String email) {
		this.name = name;
		this.loginPassword = loginPassword;
		this.mobile = mobile;
		this.email = email;
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
	
	public String getLoginPassword() {
		return loginPassword;
	}
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getOtp() {
		return otp;
	}
	public void setOtp(String otp) {
		this.otp = otp;
	}
	
}