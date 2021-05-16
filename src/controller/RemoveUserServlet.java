package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbAccess.DataHandler;

@WebServlet("/RemoveUserServlet")
public class RemoveUserServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	DataHandler data = new DataHandler();
       
    public RemoveUserServlet() 
    {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session = request.getSession();
				
		String email = request.getParameter("Email");
		String password =request.getParameter("password");
		System.out.println(email+" "+password);
		int id = (int)session.getAttribute("id");
		System.out.println(id);
		try 
		{
				if(data.checkPass(id, password))
					{
						System.out.println("Correct Admin pass");
						if(data.RemoveUser(email))
						{
							RequestDispatcher req = request.getRequestDispatcher("adminindex.jsp");
							req.include(request, response);
						}
						else
						{
							RequestDispatcher req = request.getRequestDispatcher("error.html");
							req.include(request, response);
						}
					}
					else
					{
						RequestDispatcher req = request.getRequestDispatcher("error.html");
						req.include(request, response);
					}
				}
				

		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}

}
