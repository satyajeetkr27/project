package portal;
import java.sql.*;

public class FacultyDao 
{
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		
		}
		catch(Exception e)
		{System.out.println(e);}
		return con;
}

	public static int save(Faculty obj)
	{
		int status=0;
		try{
			
				Connection con=FacultyDao.getConnection();
				PreparedStatement ps=con.prepareStatement ("insert into FacultyInfo "+" (teacher_name,qualification,email,contact_no,address,experience,rating) values (?,?,?,?,?,?,?)");
				ps.setString(1, obj.getTeacher_name());
				ps.setString(2, obj.getQualification());
				ps.setString(3, obj.getEmail());
				ps.setInt(4,obj.getContact_no());
				ps.setString(5, obj.getAddress());
				ps.setInt(6, obj.getExperience());
				ps.setDouble(7, obj.getRating());
				status=ps.executeUpdate();
				con.close();
			}
			catch(Exception ex){ex.printStackTrace();}
			return status;
	}
	
}