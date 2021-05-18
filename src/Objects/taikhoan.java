package Objects;

public class taikhoan {
	private String taikhoan;
	private String matkhau;
	private int trangthai;
	private String quyenhan;
	private int id_nguoidung;
	
	@Override
	public String toString() {
		return "taikhoan [taikhoan=" + taikhoan + ", matkhau=" + matkhau + ", trangthai=" + trangthai + ", quyenhan="
				+ quyenhan + ", id_nguoidung=" + id_nguoidung + "]";
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public int getTrangthai() {
		return trangthai;
	}
	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
	public String getQuyenhan() {
		return quyenhan;
	}
	public void setQuyenhan(String quyenhan) {
		this.quyenhan = quyenhan;
	}
	public int getId_nguoidung() {
		return id_nguoidung;
	}
	public void setId_nguoidung(int id_nguoidung) {
		this.id_nguoidung = id_nguoidung;
	}
	
	public taikhoan() {
		super();
	}
	public taikhoan(String taikhoan, String matkhau, int trangthai, String quyenhan, int id_nguoidung) {
		super();
		this.taikhoan = taikhoan;
		this.matkhau = matkhau;
		this.trangthai = trangthai;
		this.quyenhan = quyenhan;
		this.id_nguoidung = id_nguoidung;
	}
}
