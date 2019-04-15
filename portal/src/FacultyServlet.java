import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import portal.Faculty;
import portal.FacultyDao;

@WebServlet("/FacultyServlet")
public class FacultyServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		double rating = 0.00;
		String teacher_name = request.getParameter("teacher_name");
		String qualification = request.getParameter("qln");
		String email = request.getParameter("email");
		String str=request.getParameter("contact_no");
		int contact_no=Integer.parseInt(str);
		String address = request.getParameter("address");
		String str1=request.getParameter("experience");
		int experience=Integer.parseInt(str1);
		
		
		/*if(teacher_name.isEmpty()||email.isEmpty()||contact_no==0||address.isEmpty()||experience==0)
	    {
		   out.print("<p>Please fill all the fields</p>");
		   RequestDispatcher req = request.getRequestDispatcher("Faculty.jsp");
		   req.include(request, response);
	     }*/
	    
	    
		  /* RequestDispatcher req = request.getRequestDispatcher("Faculty1.jsp");
		   req.forward(request, response);*/
	    	if(experience >=3 && experience <= 5 && qualification.equals("BTECH"))
	    	{
	    		rating = 3;
	    	}
	    	else if(experience >=3 && experience <= 5 && qualification.equals("MTECH"))
	    	{
	    		rating = 4;
	    	}
	    	else if(experience >=3 && experience <= 5 && qualification.equals("BCA"))
	    	{
	    		rating = 2;
	    	}
	    	else if(experience >=3 && experience <= 5 && qualification.equals("MCA"))
	    	{
	    		rating = 3;
	    	}
	    	else if(experience >=3 && experience <= 5 && qualification.equals("MSC"))
	    	{
	    		rating = 3.5;
	    	}
	    	else if(experience >=3 && experience <= 5 && qualification.equals("PHD"))
	    	{
	    		rating = 5;
	    	}
	    	else if(experience >5 && qualification.equals("BTECH"))
	    	{
	    		rating = 6;
	    	}
	    	else if(experience >5 && qualification.equals("MTECH"))
	    	{
	    		rating = 8;
	    	}
	    	else if(experience >5 && qualification.equals("BCA"))
	    	{
	    		rating = 4;
	    	}
	    	else if(experience >5 && qualification.equals("MCA"))
	    	{
	    		rating = 6;
	    	}
	    	else if(experience >5 && qualification.equals("MSC"))
	    	{
	    		rating = 7;
	    	}
	    	else if(experience >5 && qualification.equals("PHD"))
	    	{
	    		rating = 9;
	    	}
	    	
	    	Faculty obj=new Faculty();
			obj.setTeacher_name(teacher_name);
			obj.setQualification(qualification);
			obj.setEmail(email);
			obj.setContact_no(contact_no);
			obj.setAddress(address);
			obj.setExperience(experience);
			obj.setRating(rating);	
	    	int n=FacultyDao.save(obj);
	    	
	    	request.setAttribute("rating", rating);
	    	RequestDispatcher req = request.getRequestDispatcher("ShowRating.jsp");
	    	req.forward(request, response);
	     
		 out.close();
	}
}

