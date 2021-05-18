package Models;

import java.sql.ResultSet;
import java.util.ArrayList;

public class nguoidung {
	private ResultSet rs;
	private int result;

	public ArrayList<Objects.nguoidung> getNguoidung() {
		ArrayList<Objects.nguoidung> ds = new ArrayList<Objects.nguoidung>();
		try {
			String sql = "SELECT * FROM nguoidung WHERE id_nguoidung != 0";
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.nguoidung nd = new Objects.nguoidung();
				nd.setId_nguoidung(rs.getInt("id_nguoidung"));
				nd.setTennguoidung(rs.getString("tennguoidung"));
				nd.setDiachi(rs.getString("diachi"));
				nd.setNgaysinh(rs.getString("ngaysinh"));
				nd.setSdt(rs.getString("sdt"));
				nd.setHinhanh(rs.getString("hinhanh"));
				nd.setId_chucvu(rs.getInt("id_chucvu"));
				ds.add(nd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int insertNguoidung(Objects.nguoidung nd) {
		try {
			String sql = "INSERT INTO `nguoidung`(`tennguoidung`, `diachi`, `ngaysinh`, `sdt`, `id_chucvu`) VALUES ('"
					+ nd.getTennguoidung() + "','" + nd.getDiachi() + "','" + nd.getNgaysinh() + "','" + nd.getSdt()
					+ "'," + nd.getId_chucvu() + ")";
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int editNguoidung(Objects.nguoidung nd) {
		try {
			String sql = "UPDATE nguoidung SET tennguoidung='" + nd.getTennguoidung() + "',diachi ='" + nd.getDiachi()
					+ "',ngaysinh='" + nd.getNgaysinh() + "',sdt='" + nd.getSdt() + "',id_chucvu=" + nd.getId_chucvu() + " WHERE id_nguoidung=" + nd.getId_nguoidung();
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int editNguoidungCaNhan(Objects.nguoidung nd) {
		try {
			String sql = "UPDATE nguoidung SET tennguoidung='" + nd.getTennguoidung() + "',diachi ='" + nd.getDiachi()
					+ "',ngaysinh='" + nd.getNgaysinh() + "',sdt='" + nd.getSdt() + "'WHERE id_nguoidung="
					+ nd.getId_nguoidung();
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int uploadAnhNguoidung(int id, String image) {
		try {
			String sql = "UPDATE nguoidung SET hinhanh='" + image + "'  WHERE id_nguoidung=" + id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public int deleteNguoidung(int id) {
		try {
			String sql = "DELETE FROM nguoidung WHERE id_nguoidung=" + id;
			result = new DB().set(sql);
			if (result != 0) {
				return 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<Objects.nguoidung> getNguoidungX(int id) {
		ArrayList<Objects.nguoidung> ds = new ArrayList<Objects.nguoidung>();
		try {
			String sql = "SELECT * FROM nguoidung WHERE id_nguoidung=" + id;
			rs = new DB().get(sql);
			while (rs.next()) {
				Objects.nguoidung nd = new Objects.nguoidung();
				nd.setId_nguoidung(rs.getInt("id_nguoidung"));
				nd.setTennguoidung(rs.getString("tennguoidung"));
				nd.setDiachi(rs.getString("diachi"));
				nd.setNgaysinh(rs.getString("ngaysinh"));
				nd.setSdt(rs.getString("sdt"));
				nd.setHinhanh(rs.getString("hinhanh"));
				nd.setId_chucvu(rs.getInt("id_chucvu"));
				ds.add(nd);
			}
			return ds;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int resetChucvu(int id) {
		try {
			String sql = "UPDATE nguoidung SET id_chucvu= 0 WHERE id_chucvu =" + id;
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
