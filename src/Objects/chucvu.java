package Objects;

public class chucvu {
	private int id_chucvu;
	private String chucvu;
	
	public int getId_chucvu() {
		return id_chucvu;
	}
	public void setId_chucvu(int id_chucvu) {
		this.id_chucvu = id_chucvu;
	}
	public String getChucvu() {
		return chucvu;
	}
	public void setChucvu(String chucvu) {
		this.chucvu = chucvu;
	}
	
	public chucvu() {
		super();
	}
	
	public chucvu(int id_chucvu, String chucvu) {
		super();
		this.id_chucvu = id_chucvu;
		this.chucvu = chucvu;
	}
	
	
}
