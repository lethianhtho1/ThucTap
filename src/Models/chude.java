package Models;
import java.util.ArrayList;

import java.sql.ResultSet;

public class chude{
	private ResultSet rs;
	private int result;
	

	public ArrayList<Objects.chude> getchude()
	{
		ArrayList<Objects.chude> ds= new ArrayList<Objects.chude>();
		try {
			String sql="SELECT * FROM chude WHERE 1";
			rs=new DB().get(sql);
			while(rs.next())
			{
				Objects.chude cd = new Objects.chude(); 
				cd.setId_chude(rs.getInt("id_chude"));
				cd.setTenchude(rs.getString("tenchude"));
				ds.add(cd);
			}
			return ds;	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public ArrayList<Objects.chude> getchudeX(int id)
	{
		ArrayList<Objects.chude> ds= new ArrayList<Objects.chude>();
		try {
			String sql="SELECT * FROM chude WHERE id_chude="+id;
			rs=new DB().get(sql);
			while(rs.next())
			{
				Objects.chude cd = new Objects.chude(); 
				cd.setId_chude(rs.getInt("id_chude"));
				cd.setTenchude(rs.getString("tenchude"));
				ds.add(cd);
			}
			return ds;	
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public int insertChude(Objects.chude cd)
	{
		try
		{
			String sql="INSERT INTO chude (tenchude) VALUES ('"+cd.getTenchude()+"')";
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
	public int deleteChude(int id)
	{
		try {
			String sql="DELETE FROM chude WHERE id_chude="+id;
			result = new DB().set(sql);
			if(result != 0){
				return 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int editChude(Objects.chude cd)
	{
		try
		{
			String sql="UPDATE chude SET tenchude='"+cd.getTenchude()+"' WHERE id_chude="+cd.getId_chude();
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
