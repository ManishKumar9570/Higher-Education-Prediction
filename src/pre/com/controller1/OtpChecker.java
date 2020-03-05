package pre.com.controller1;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pre.com.util1.*;
/**
 * Servlet implementation class OtpChecker
 */
public class OtpChecker extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobile = request.getParameter("mobile");
		String userOtp = request.getParameter("otp");
		

		Connection con = null;
		PreparedStatement pstmt  = null;
		boolean success =false;
		try {
			con  = SisDbUtil.getConnection();
			String sql ="update assingment2_user set is_active='yes'" + 
					" where  mobile=? and otp=?";
			pstmt  = con.prepareStatement(sql);
			pstmt.setString(1 ,mobile);
			pstmt.setString(2 ,userOtp);
			
			if(pstmt.executeQuery().next()) {
				success= true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				SisDbUtil.closeConnection(con);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(success) {
			
			response.sendRedirect("login.jsp");
		}else {
		response.getWriter().println("otp validatin failed");
		}
		
	}

}
