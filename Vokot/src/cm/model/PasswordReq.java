package cm.model;

public class PasswordReq {

	private String Username;
	private String password;
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public PasswordReq(String username, String password) {
		super();
		Username = username;
		this.password = password;
	}
	
	
}
