package pre.com.controller1;
import pre.com.bo1.Student;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RankSearchController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String Rank = request.getParameter("total_college_seat");
 
	
	//jdbc start
Connection con  = null;
Statement stmt  = null;
ResultSet rs  = null;
ArrayList<Student> list=new ArrayList<Student>();

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@localhost:1521:XE";
	String user="system";
	String password="root";

	
	con  = DriverManager.getConnection(url, user, password);
	stmt = con.createStatement();
	String sql="SELECT * from college_seats where total_college_seats>="+Rank;
	rs  =stmt.executeQuery(sql);
	while(rs.next()){
		Student foundStu=null;
		String college_name = rs.getString("college_name");	
		//System.out.println(college_name);
		 foundStu  = new Student();
		foundStu.setCollege_name(college_name);
		
		list.add(foundStu);
		
	}
} catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();
}finally{
	try {
		if(con!=null){
			con.close();
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
//jdbc end
	
RequestDispatcher rd  = null;
if(list==null){
//not found
	String foundStu = "There are no such Student exist for give rank ";
	request.setAttribute("not_found_msg",foundStu); 
	rd  = request.getRequestDispatcher("stu_search.jsp");
}else{
	//found
	request.setAttribute("stu",list);
	rd  = request.getRequestDispatcher("stu_search_result.jsp");	
}
rd.forward(request, response);	
	}

}
	