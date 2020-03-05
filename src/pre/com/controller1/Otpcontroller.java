package pre.com.controller1;
import pre.com.bo1.SendMail;
import pre.com.bo1.SignupUser;
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


public class Otpcontroller extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//otp created
		Random rand = new Random();
		String tempOtp = "";
		tempOtp = tempOtp +rand.nextInt(10);
		tempOtp = tempOtp +rand.nextInt(10);
		tempOtp = tempOtp +rand.nextInt(10);
		tempOtp = tempOtp +rand.nextInt(10);
		
   

		//get user info
		String name  = request.getParameter("name");
		String  loginPassword   = request.getParameter("login_password");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		
		
		 PrintWriter pw=response.getWriter();
			boolean y=SendMail.sendMail(email,tempOtp);
			if(y){
				System.out.println("Mail sent sucess..");
			}else
				System.out.println("Mail not sent sucess..");
			
		
		//db insert
		
		Connection con = null;
		PreparedStatement pstmt  = null;
		int result = -1;
		try {
			con  = SisDbUtil.getConnection();
			String sql ="insert into assingment2_user(id,name,login_password,mobile,email,otp,is_active)"
					+ "values((select nvl(max(id),100) +1 from assingment2_user ),?,?,?,?,?,'no')";
			pstmt  = con.prepareStatement(sql);
			pstmt.setString(1 ,name);
			pstmt.setString(2 ,loginPassword);
			pstmt.setString(3 ,mobile);
			pstmt.setString(4 ,email);
			pstmt.setString(5 ,tempOtp);
			
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
		
		//send otp to user
		 
		
		//show new form
		SignupUser su  = new SignupUser(name,loginPassword,mobile,email);
		
		request.setAttribute("signupUser", su);
		
		RequestDispatcher rd = request.getRequestDispatcher("signup_form.jsp");
		rd.forward(request, response);
		
		
	}

}

