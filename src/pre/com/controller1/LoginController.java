package pre.com.controller1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pre.com.bo1.*;



public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String emailId = request.getParameter("email");
		String loginPassword = request.getParameter("login_password");
	
		Connection con =null;
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		User userObject = null;
		 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:XE";
			String dbuser = "system";
			String dbpassword ="root";
			
			con  = DriverManager.getConnection(url, dbuser, dbpassword);
			String sql="select * from assingment2_user where email=? and login_password=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, emailId);
			pstmt.setString(2, loginPassword);
			rs =pstmt.executeQuery();
			if(rs.next()){
				
			
				String name =rs.getString("name");	
				userObject = new User();
			
				userObject.setName(name);
				//userObject.setLoginId(loginId);
						}
		} catch ( ClassNotFoundException e) {
			e.printStackTrace();
			// TODO: handle exception
		}catch (SQLException e){
			e.printStackTrace();
			
		}finally{
			
			try {
				if(con!=null){
					con.close();
				}
			} catch (SQLException e) {
			e.printStackTrace();
				// TODO: handle exception
			}
		}
		if(userObject!=null){
			
        javax.servlet.http.HttpSession  session = request.getSession();
        
        session.setAttribute("user", userObject);
		response.sendRedirect("home1.jsp");

		}else{
			javax.servlet.http.HttpSession  session = request.getSession();
			response.sendRedirect("login.jsp");
		}
		}

	

	}

	


