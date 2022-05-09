package cm.model;

public class Customer {

	private String userimage;
	private String Username;
	private String Firstname;
	private String Lastname;
	private String Email;
	private String Phonenumber;
	private String Address;
	private String city;
	private String province;
	private String postalcode;
	private String password;
	private String age;
	private String gender;
	
	


	








	public Customer(String firstname, String lastname, String email, String phonenumber, String address, String city,
			String province, String postalcode, String password, String age, String gender) {
		super();
		Firstname = firstname;
		Lastname = lastname;
		Email = email;
		Phonenumber = phonenumber;
		Address = address;
		this.city = city;
		this.province = province;
		this.postalcode = postalcode;
		this.password = password;
		this.age = age;
		this.gender = gender;
	}



	public String getAge() {
		return age;
	}



	public void setAge(String age) {
		this.age = age;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public Customer(String userimage, String username, String email) {
		super();
		this.userimage = userimage;
		Username = username;
		Email = email;
	}



	public String getPhonenumber() {
		return Phonenumber;
	}



	public void setPhonenumber(String phonenumber) {
		Phonenumber = phonenumber;
	}



	public Customer(String userimage, String username) {
		super();
		this.userimage = userimage;
		Username = username;
	}


	public Customer(String username) {
		super();
		Username = username;
	}






	public Customer(String userimage, String username, String firstname, String lastname, String email,
			String phonenumber, String address, String city, String province, String postalcode, String age,
			String gender) {
		super();
		this.userimage = userimage;
		Username = username;
		Firstname = firstname;
		Lastname = lastname;
		Email = email;
		Phonenumber = phonenumber;
		Address = address;
		this.city = city;
		this.province = province;
		this.postalcode = postalcode;
		this.age = age;
		this.gender = gender;
	}



	public String getUserimage() {
		return userimage;
	}


	public void setUserimage(String userimage) {
		this.userimage = userimage;
	}


	public String getUsername() {
		return Username;
	}


	public void setUsername(String username) {
		Username = username;
	}


	public String getFirstname() {
		return Firstname;
	}


	public void setFirstname(String firstname) {
		Firstname = firstname;
	}


	public String getLastname() {
		return Lastname;
	}


	public void setLastname(String lastname) {
		Lastname = lastname;
	}


	public String getEmail() {
		return Email;
	}


	public void setEmail(String email) {
		Email = email;
	}


	public String getAddress() {
		return Address;
	}


	public void setAddress(String address) {
		Address = address;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getProvince() {
		return province;
	}


	public void setProvince(String province) {
		this.province = province;
	}


	public String getPostalcode() {
		return postalcode;
	}


	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}




	
	

	
	

}
