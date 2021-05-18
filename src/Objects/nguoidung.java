package Objects;

public class nguoidung{
	private int id_nguoidung;
	private String tennguoidung;
	private String diachi;
	private String ngaysinh;
	private String sdt;
	private String hinhanh;
	private int id_chucvu;
	
	
	public int getId_nguoidung() {
		return id_nguoidung;
	}
	public void setId_nguoidung(int id_nguoidung) {
		this.id_nguoidung = id_nguoidung;
	}
	public String getTennguoidung() {
		return tennguoidung;
	}
	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getNgaysinh() {
		return ngaysinh;
	}
	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public int getId_chucvu() {
		return id_chucvu;
	}
	public void setId_chucvu(int id_chucvu) {
		this.id_chucvu = id_chucvu;
	}
	public nguoidung() {
		super();
	}
	public String getHinhanh() {
		return hinhanh;
	}
	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}
	public nguoidung(int id_nguoidung, String tennguoidung, String diachi, String ngaysinh, String sdt, String hinhanh,
			int id_chucvu) {
		super();
		this.id_nguoidung = id_nguoidung;
		this.tennguoidung = tennguoidung;
		this.diachi = diachi;
		this.ngaysinh = ngaysinh;
		this.sdt = sdt;
		this.hinhanh = hinhanh;
		this.id_chucvu = id_chucvu;
	}
	
	
}
