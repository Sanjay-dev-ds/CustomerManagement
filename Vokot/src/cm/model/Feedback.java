package cm.model;

public class Feedback {
	private String Category;
	private String feedback;
	private String rating;
	private String username;
	private String product;
	public Feedback(String category, String feedback, String rating, String username,String product) {
		super();
		Category = category;
		this.feedback = feedback;
		this.rating = rating;
		this.username = username;
		this.product = product;
	}
	
	
	public String getProduct() {
		return product;
	}


	public void setProduct(String product) {
		this.product = product;
	}


	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
	
	
	
}
