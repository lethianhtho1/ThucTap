package Objects;

public class hoidap {
	int mahoidap;
	String cauhoi;
	String traloi;
	String ngayhoi;
	String ngaytraloi;
	String taikhoan;
	@Override
	public String toString() {
		return "hoidap [mahoidap=" + mahoidap + ", cauhoi=" + cauhoi + ", traloi=" + traloi + ", ngayhoi=" + ngayhoi
				+ ", ngaytraloi=" + ngaytraloi + ", taikhoan=" + taikhoan + "]";
	}
	public int getMahoidap() {
		return mahoidap;
	}
	public void setMahoidap(int mahoidap) {
		this.mahoidap = mahoidap;
	}
	public String getCauhoi() {
		return cauhoi;
	}
	public void setCauhoi(String cauhoi) {
		this.cauhoi = cauhoi;
	}
	public String getTraloi() {
		return traloi;
	}
	public void setTraloi(String traloi) {
		this.traloi = traloi;
	}
	public String getNgayhoi() {
		return ngayhoi;
	}
	public void setNgayhoi(String ngayhoi) {
		this.ngayhoi = ngayhoi;
	}
	public String getNgaytraloi() {
		return ngaytraloi;
	}
	public void setNgaytraloi(String ngaytraloi) {
		this.ngaytraloi = ngaytraloi;
	}
	public String getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	public hoidap() {
	}
	public hoidap(int mahoidap, String cauhoi, String traloi, String ngayhoi, String ngaytraloi, String taikhoan) {
		this.mahoidap = mahoidap;
		this.cauhoi = cauhoi;
		this.traloi = traloi;
		this.ngayhoi = ngayhoi;
		this.ngaytraloi = ngaytraloi;
		this.taikhoan = taikhoan;
	}
	
	
}
