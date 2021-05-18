package Models;

import java.sql.ResultSet;
import java.util.ArrayList;

public class baiviet {
	private ResultSet rs;
	private int result;

	public ArrayList<Objects.baiviet> getBaiviet() {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE 1 ORDER BY id_baiviet DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaiviet_TrangThai(int trangthai) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE trangthai=" + trangthai + " ORDER BY id_baiviet DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaivietByDate(String ngaybd, String ngaykt) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE ngaydang >= '" + ngaybd + "' and ngaydang <='" + ngaykt
					+ "' ORDER BY id_baiviet DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaivietNguoiDang(String taikhoan) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE taikhoan='" + taikhoan + "' ORDER BY id_baiviet DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int getChuDe(int id) {
		try {
			String sql = "SELECT * FROM baiviet WHERE id_baiviet=" + id;
			rs = new DB().get(sql);
			while (rs.next()) {
				return rs.getInt("machude");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int baiviet_duyet(int id) {
		try {
			String sql = "UPDATE baiviet SET trangthai=1 WHERE id_baiviet=" + id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int baiviet_huyduyet(int id) {
		try {
			String sql = "UPDATE baiviet SET trangthai=0 WHERE id_baiviet=" + id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteBaiviet(int id) {
		try {
			String sql = "DELETE FROM baiviet WHERE id_baiviet=" + id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int insertBaiviet(Objects.baiviet bv) {
		try {
			String sql = "INSERT INTO baiviet(hinhanh,tieude,tieude_khongdau,noidung,ngaydang,machude,trangthai,luotxem,taikhoan) VALUES ('"
					+ bv.getHinhanh() + "','" + bv.getTieude() + "','" + bv.getTieude_khongdau() + "','"
					+ bv.getNoidung() + "','" + bv.getNgaydang() + "'," + bv.getMachude() + "," + bv.getTrangthai()
					+ ",0,'" + bv.getTaikhoan() + "')";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int editBaiviet(Objects.baiviet bv) {
		try {
			String sql = "Update baiviet set tieude='" + bv.getTieude() + "', tieude_khongdau='"
					+ bv.getTieude_khongdau() + "', noidung='" + bv.getNoidung() + "', ngaydang='" + bv.getNgaydang()
					+ "'," + "machude=" + bv.getMachude() + ", trangthai= " + bv.getTrangthai() + " where id_baiviet= "
					+ bv.getId_baiviet();
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<Objects.baiviet> getBaivietX(int id) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE id_baiviet=" + id;
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				bv.setMachude(rs.getInt("machude"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaivietNew() {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE trangthai=1 ORDER BY id_baiviet DESC LIMIT 10";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaiVietDang(int machude) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		DB db = new DB();
		try {
			String sql = "SELECT * FROM baiviet WHERE trangthai=1 and machude=" + machude + " ORDER BY id_baiviet DESC";
			rs = db.get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaiVietDuLich() {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet b, chude c WHERE b.trangthai=1 and b.machude=c.id_chude and c.tenchude like 'du lịch' ORDER BY id_baiviet DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaiVietTimKiem(String id) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE trangthai=1 and tieude like '%" + id
					+ "%' ORDER BY id_baiviet DESC";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public Objects.baiviet getBaiVietChiTiet(String tieuDe) {
		Objects.baiviet bv = new Objects.baiviet();
		try {
			String sql = "SELECT * FROM baiviet WHERE tieude_khongdau='" + tieuDe + "'";
			rs = new DB().get(sql);
			while (rs.next()) {

				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
			}
			return bv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean addLuotXem(int id) {
		try {
			String sql = "UPDATE baiviet SET luotxem=luotxem+1 WHERE id_baiviet=" + id;
			result = new DB().set(sql);
			if (result != 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public ArrayList<Objects.baiviet> getBaivietXByMaCD(int id) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE machude=" + id;
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setMachude(rs.getInt("machude"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				bv.setMachude(rs.getInt("machude"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int deleteBaivietByMaCD(int id) {
		try {
			String sql = "DELETE FROM baiviet WHERE machude = " + id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<Objects.baiviet> getBaivietXByTaiKhoan(String taikhoan) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE taikhoan='" + taikhoan + "' ";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				bv.setMachude(rs.getInt("machude"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<Objects.baiviet> getBaivietByTieuDe(String tieuDe) {
		ArrayList<Objects.baiviet> ds = new ArrayList<Objects.baiviet>();
		try {
			String sql = "SELECT * FROM baiviet WHERE tieude like '%" + tieuDe + "%'";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.baiviet bv = new Objects.baiviet();
				bv.setId_baiviet(rs.getInt("id_baiviet"));
				bv.setTieude(rs.getString("tieude"));
				bv.setTieude_khongdau(rs.getString("tieude_khongdau"));
				bv.setNoidung(rs.getString("noidung"));
				bv.setNgaydang(rs.getString("ngaydang"));
				bv.setTrangthai(rs.getInt("trangthai"));
				bv.setTaikhoan(rs.getString("taikhoan"));
				bv.setHinhanh(rs.getString("hinhanh"));
				bv.setLuotxem(rs.getInt("luotxem"));
				bv.setMachude(rs.getInt("machude"));
				ds.add(bv);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int deleteBaivietByTaiKhoan(String taikhoan) {
		try {
			String sql = "DELETE FROM baiviet WHERE taikhoan ='" + taikhoan + "'";
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
