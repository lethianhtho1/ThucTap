package Objects;

public class baiviet {
	private int id_baiviet;
	private String tieude;
	private String tieude_khongdau;
	private String noidung;
	private String ngaydang;
	private int machude;
	private int trangthai;
	private String taikhoan;
	private String hinhanh;
	private int luotxem;

	
	@Override
	public String toString() {
		return "baiviet [id_baiviet=" + id_baiviet + ", tieude=" + tieude + ", tieude_khongdau=" + tieude_khongdau
				+ ", noidung=" + noidung + ", ngaydang=" + ngaydang + ", machude=" + machude + ", trangthai="
				+ trangthai + ", taikhoan=" + taikhoan + ", hinhanh=" + hinhanh + ", luotxem=" + luotxem + "]";
	}
	public int getId_baiviet() {
		return id_baiviet;
	}
	public void setId_baiviet(int id_baiviet) {
		this.id_baiviet = id_baiviet;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public String getTieude_khongdau() {
		return tieude_khongdau;
	}
	public void setTieude_khongdau(String tieude_khongdau) {
		this.tieude_khongdau = tieude_khongdau;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getNgaydang() {
		return ngaydang;
	}
	public void setNgaydang(String ngaydang) {
		this.ngaydang = ngaydang;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public int getLuotxem() {
		return luotxem;
	}
	public void setLuotxem(int luotxem) {
		this.luotxem = luotxem;
	}
	
	public baiviet() {
		super();
		// TODO Auto-generated constructor stub
	}
	public baiviet(int id_baiviet, String tieude, String tieude_khongdau, String noidung, String ngaydang, int machude,
			int trangthai, String taikhoan, String hinhanh, int luotxem) {
		super();
		this.id_baiviet = id_baiviet;
		this.tieude = tieude;
		this.tieude_khongdau = tieude_khongdau;
		this.noidung = noidung;
		this.ngaydang = ngaydang;
		this.machude = machude;
		this.trangthai = trangthai;
		this.taikhoan = taikhoan;
		this.hinhanh = hinhanh;
		this.luotxem = luotxem;
	}
	public int getMachude() {
		return machude;
	}
	public void setMachude(int machude) {
		this.machude = machude;
	}
	
	
	
}
