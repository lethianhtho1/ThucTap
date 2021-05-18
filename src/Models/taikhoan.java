package Models;

import java.sql.*;
import java.util.ArrayList;

public class taikhoan {
	private ResultSet rs;
	private int result;

	public Objects.taikhoan dangnhap(String taikhoan, String matkhau) {
		try {
			String sql = "SELECT * FROM taikhoan WHERE taikhoan = '" + taikhoan + "' AND matkhau = '" + matkhau + "' ";
			rs = new DB().get(sql);

			if (rs.next()) {
				Objects.taikhoan tk = new Objects.taikhoan();

				tk.setTaikhoan(rs.getString("taikhoan"));
				tk.setMatkhau(rs.getString("matkhau"));
				tk.setQuyenhan(rs.getString("quyenhan"));
				tk.setId_nguoidung(rs.getInt("id_nguoidung"));

				return tk;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean kt(String taikhoan) {
		try {
			String sql = "SELECT * FROM taikhoan WHERE taikhoan = '" + taikhoan + "' and trangthai = 1 ";
			rs = new DB().get(sql);
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean checkAddTK(String taikhoan) {
		try {
			String sql = "SELECT * FROM taikhoan WHERE taikhoan = '" + taikhoan + "'";
			rs = new DB().get(sql);
			if (rs.next()) {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return true;
	}
	public ArrayList<Objects.taikhoan> gettaikhoan() {
		ArrayList<Objects.taikhoan> ds = new ArrayList<Objects.taikhoan>();
		try {
			String sql = "SELECT * FROM taikhoan WHERE 1";
			rs = new DB().get(sql);

			if (rs != null) {
				while (rs.next()) {
					Objects.taikhoan tk = new Objects.taikhoan();
					tk.setTaikhoan(rs.getString("taikhoan"));
					tk.setTrangthai(rs.getInt("trangthai"));
					tk.setQuyenhan(rs.getString("quyenhan"));
					tk.setId_nguoidung(rs.getInt("id_nguoidung"));
					ds.add(tk);
				}
				return ds;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.taikhoan> getTaikhoanX(String taikhoan) {
		ArrayList<Objects.taikhoan> ds = new ArrayList<Objects.taikhoan>();
		try {
			String sql = "SELECT * FROM taikhoan WHERE taikhoan='" + taikhoan + "'";
			rs = new DB().get(sql);
			if (rs != null) {
				while (rs.next()) {
					Objects.taikhoan tk = new Objects.taikhoan();
					tk.setTaikhoan(rs.getString("taikhoan"));
					tk.setMatkhau(rs.getString("matkhau"));
					tk.setTrangthai(rs.getInt("trangthai"));
					tk.setQuyenhan(rs.getString("quyenhan"));
					tk.setId_nguoidung(rs.getInt("id_nguoidung"));
					ds.add(tk);
				}
				return ds;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int lockTaikhoan(String tk) {
		try {
			String sql = "UPDATE taikhoan SET trangthai=0 WHERE taikhoan='" + tk + "'";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int unlockTaikhoan(String tk) {
		try {
			String sql = "UPDATE taikhoan SET trangthai=1 WHERE taikhoan='" + tk + "'";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int inserttaikhoan(Objects.taikhoan tk) {
		try {
			String sql = "INSERT INTO `taikhoan`(`taikhoan`, `matkhau`, `trangthai`, `quyenhan`, `id_nguoidung`) VALUES ('"
					+ tk.getTaikhoan() + "','" + tk.getMatkhau() + "',1,'" + tk.getQuyenhan() + "',"
					+ tk.getId_nguoidung() + ")";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int delete_taikhoan(String taikhoan) {
		try {
			String sql = "DELETE FROM taikhoan WHERE taikhoan='" + taikhoan + "'";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int updateTaiKhoanNoPass(Objects.taikhoan tk) {
		try {
			String sql = "UPDATE taikhoan SET  quyenhan='" + tk.getQuyenhan() + "', id_nguoidung ="
					+ tk.getId_nguoidung() + " WHERE taikhoan='" + tk.getTaikhoan() + "'";
			result = new DB().set(sql);
			if (result != 0)
				return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int updateTaiKhoanHasPass(Objects.taikhoan tk) {
		try {
			String sql = "UPDATE taikhoan SET matkhau='" + tk.getMatkhau() + "',  quyenhan='" + tk.getQuyenhan()
					+ "', id_nguoidung =" + tk.getId_nguoidung() + " WHERE taikhoan='" + tk.getTaikhoan() + "'";
			result = new DB().set(sql);
			if (result != 0)
				return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int updatePass(String username, String pass) {
		try {
			String sql = "UPDATE taikhoan SET matkhau='" + pass + "'WHERE taikhoan='" + username + "'";
			result = new DB().set(sql);
			if (result != 0)
				return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<Objects.taikhoan> getTaikhoanXByNguoiDung(int id) {
		ArrayList<Objects.taikhoan> ds = new ArrayList<Objects.taikhoan>();
		try {
			String sql = "SELECT * FROM taikhoan WHERE id_nguoidung=" + id + "";
			rs = new DB().get(sql);
			if (rs != null) {
				while (rs.next()) {
					Objects.taikhoan tk = new Objects.taikhoan();
					tk.setTaikhoan(rs.getString("taikhoan"));
					tk.setMatkhau(rs.getString("matkhau"));
					tk.setTrangthai(rs.getInt("trangthai"));
					tk.setQuyenhan(rs.getString("quyenhan"));
					tk.setId_nguoidung(rs.getInt("id_nguoidung"));
					ds.add(tk);
				}
				return ds;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
		
	public int resetTaiKhoan(String taikhoan) {
		try {
			String sql = "UPDATE taikhoan SET id_nguoidung = 0 WHERE taikhoan='" + taikhoan + "'";
			result = new DB().set(sql);
			if (result != 0)
				return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

}