package study.hw0422;

public class signupVO {
	private String mid;
	private String pwd;
	private String homepage;
	private String tel;
	private String email;
	

	public signupVO(String mid, String pwd, String homepage, String tel, String email) {
		super();
		this.mid = mid;
		this.pwd = pwd;
		this.homepage = homepage;
		this.tel = tel;
		this.email = email;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "loginVO [mid=" + mid + ", pwd=" + pwd + ", homepage=" + homepage + ", tel=" + tel + ", email=" + email
				+ "]";
	}	
}
