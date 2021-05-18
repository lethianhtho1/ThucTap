package Models;
import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.Out;

import java.sql.ResultSet;

public class chucvu{
	private ResultSet rs;
	private int result;
	

	public ArrayList<Objects.chucvu> getchucvu()
	{
		ArrayList<Objects.chucvu> ds= new ArrayList<Objects.chucvu>();
		try {
			String sql="SELECT * FROM chucvu WHERE id_chucvu != 0 ";
			rs=new DB().get(sql);
			while(rs.next())
			{
				Objects.chucvu cv = new Objects.chucvu(); 
				cv.setId_chucvu(rs.getInt("id_chucvu"));
				cv.setChucvu(rs.getString("chucvu"));
				ds.add(cv);
			}
			return ds;	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<Objects.chucvu> getchucvuX(int id)
	{
		ArrayList<Objects.chucvu> ds= new ArrayList<Objects.chucvu>();
		try {
			String sql="SELECT * FROM chucvu WHERE id_chucvu="+id;
			rs=new DB().get(sql);
			while(rs.next())
			{
				Objects.chucvu cv = new Objects.chucvu(); 
				cv.setId_chucvu(rs.getInt("id_chucvu"));
				cv.setChucvu(rs.getString("chucvu"));
				ds.add(cv);
			}
			return ds;	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int insertChucvu(Objects.chucvu cv)
	{
		try
		{
			String sql="INSERT INTO chucvu (chucvu) VALUES ('"+cv.getChucvu()+"')";
			result = new DB().set(sql);
			if(result != 0){
				return 1;
			}
		}
		catch(Exception e){
			e.printStackTrace();			
		}
		return 0;
	}
	public int deleteChucvu(int id)
	{
		try {
			String sql="DELETE FROM chucvu WHERE id_chucvu="+id;
			result = new DB().set(sql);
			if(result != 0){
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int editChucvu(Objects.chucvu cv)
	{
		try
		{
			String sql="UPDATE chucvu SET chucvu='"+cv.getChucvu()+"' WHERE id_chucvu="+cv.getId_chucvu();
			result = new DB().set(sql);
			if(result != 0){
				return 1;
			}
		}
		catch(Exception e){
			e.printStackTrace();			
		}
		return 0;
	}

}
