package Models;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class hoidap {
	private ResultSet rs;
	private int result;

	public ArrayList<Objects.hoidap> gethoidapdatraloi() {
		ArrayList<Objects.hoidap> ds = new ArrayList<Objects.hoidap>();
		try {
			String sql = "SELECT * FROM hoidap WHERE traloi!='' ORDER BY mahoidap DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.hoidap hd = new Objects.hoidap();
				hd.setMahoidap(rs.getInt("mahoidap"));
				hd.setCauhoi(rs.getString("cauhoi"));
				hd.setTraloi(rs.getString("traloi"));
				hd.setNgayhoi(rs.getString("ngayhoi"));
				hd.setNgaytraloi(rs.getString("ngaytraloi"));
				hd.setTaikhoan(rs.getString("taikhoan"));
				ds.add(hd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.hoidap> gethoidap() {
		ArrayList<Objects.hoidap> ds = new ArrayList<Objects.hoidap>();
		try {
			String sql = "SELECT * FROM hoidap WHERE 1 ORDER BY mahoidap DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.hoidap hd = new Objects.hoidap();
				hd.setMahoidap(rs.getInt("mahoidap"));
				hd.setCauhoi(rs.getString("cauhoi"));
				hd.setTraloi(rs.getString("traloi"));
				hd.setNgayhoi(rs.getString("ngayhoi"));
				hd.setNgaytraloi(rs.getString("ngaytraloi"));
				hd.setTaikhoan(rs.getString("taikhoan"));
				ds.add(hd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public Objects.hoidap gethoidapX(int id) {
		try {
			Objects.hoidap hd = new Objects.hoidap();
			String sql = "SELECT * FROM hoidap WHERE mahoidap=" + id + "";
			rs = new DB().get(sql);
			while (rs.next()) {
				hd.setMahoidap(rs.getInt("mahoidap"));
				hd.setCauhoi(rs.getString("cauhoi"));
				hd.setTraloi(rs.getString("traloi"));
				hd.setNgayhoi(rs.getString("ngayhoi"));
				hd.setNgaytraloi(rs.getString("ngaytraloi"));
				hd.setTaikhoan(rs.getString("taikhoan"));
			}
			return hd;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int hoidapedit(Objects.hoidap hd) {
		try {
			String sql = "UPDATE hoidap SET traloi='" + hd.getTraloi() + "',ngaytraloi='" + hd.getNgaytraloi()
					+ "',taikhoan='" + hd.getTaikhoan() + "' WHERE mahoidap=" + hd.getMahoidap();
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int hoidapdelete(int id) {
		try {
			String sql = "DELETE FROM hoidap WHERE mahoidap="+id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int insertHoidap(Objects.hoidap hd) {
		try {
			String sql = "INSERT INTO hoidap (cauhoi, ngayhoi) VALUES ('" + hd.getCauhoi() + "','" + hd.getNgayhoi()
					+ "')";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<Objects.hoidap> gethoidapX(String cauhoi) {
		ArrayList<Objects.hoidap> ds = new ArrayList<Objects.hoidap>();
		try {
			String sql = "SELECT * FROM hoidap WHERE cauhoi like '%" + cauhoi + "%' ORDER BY mahoidap DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.hoidap hd = new Objects.hoidap();
				hd.setMahoidap(rs.getInt("mahoidap"));
				hd.setCauhoi(rs.getString("cauhoi"));
				hd.setTraloi(rs.getString("traloi"));
				hd.setNgayhoi(rs.getString("ngayhoi"));
				hd.setNgaytraloi(rs.getString("ngaytraloi"));
				hd.setTaikhoan(rs.getString("taikhoan"));
				ds.add(hd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.hoidap> gethoidapY(String cauhoi) {
		ArrayList<Objects.hoidap> ds = new ArrayList<Objects.hoidap>();
		try {
			String sql = "SELECT * FROM hoidap WHERE cauhoi like '%" + cauhoi
					+ "%' and traloi != '' ORDER BY mahoidap DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.hoidap hd = new Objects.hoidap();
				hd.setMahoidap(rs.getInt("mahoidap"));
				hd.setCauhoi(rs.getString("cauhoi"));
				hd.setTraloi(rs.getString("traloi"));
				hd.setNgayhoi(rs.getString("ngayhoi"));
				hd.setNgaytraloi(rs.getString("ngaytraloi"));
				hd.setTaikhoan(rs.getString("taikhoan"));
				ds.add(hd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.hoidap> gethoidapXTaiKhoan(String taikhoan) {
		ArrayList<Objects.hoidap> ds = new ArrayList<Objects.hoidap>();
		try {
			Objects.hoidap hd = new Objects.hoidap();
			String sql = "SELECT * FROM hoidap WHERE taikhoan= '" + taikhoan + "'";
			rs = new DB().get(sql);
			while (rs.next()) {
				hd.setMahoidap(rs.getInt("mahoidap"));
				hd.setCauhoi(rs.getString("cauhoi"));
				hd.setTraloi(rs.getString("traloi"));
				hd.setNgayhoi(rs.getString("ngayhoi"));
				hd.setNgaytraloi(rs.getString("ngaytraloi"));
				hd.setTaikhoan(rs.getString("taikhoan"));
				ds.add(hd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int deleteByTaiKhoan(String taikhoan) {
		try {
			String sql = "DELETE FROM hoidap WHERE taikhoan = '" + taikhoan + "'";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
