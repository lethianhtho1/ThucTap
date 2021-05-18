package Objects;

public class chude {
	private int id_chude;
	private String tenchude;
	
	public int getId_chude() {
		return id_chude;
	}
	public void setId_chude(int id_chude) {
		this.id_chude = id_chude;
	}
	public String getTenchude() {
		return tenchude;
	}
	public void setTenchude(String tenchude) {
		this.tenchude = tenchude;
	}
	
	public chude() {
		super();
	}
	public chude(int id_chude, String tenchude) {
		super();
		this.id_chude = id_chude;
		this.tenchude = tenchude;
	}
	@Override
	public String toString() {
		return "chude [id_chude=" + id_chude + ", tenchude=" + tenchude + "]";
	}
	
	
}
