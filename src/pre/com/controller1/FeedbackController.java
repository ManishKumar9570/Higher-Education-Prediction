package pre.com.controller1;
import pre.com.util1.SisDbUtil;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FeedbackController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
   

		//get user info
		String name  = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		
		Connection con = null;
		PreparedStatement pstmt  = null;
		int result = -1;
		try {
			con  = SisDbUtil.getConnection();
			String sql ="insert into feedback(name,email,massage)"
					+ "values(?,?,?)";
			pstmt  = con.prepareStatement(sql);
			pstmt.setString(1 ,name);
			pstmt.setString(2 ,email);
			pstmt.setString(3 ,message);
			
			  result = pstmt.executeUpdate();
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
		
		
	}

}

