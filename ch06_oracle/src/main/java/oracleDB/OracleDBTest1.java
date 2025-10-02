package oracleDB;

import java.sql.*;

public class OracleDBTest1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			try {
				// Class.forNmae("com.mysql.jdbc.Driver");
				Class.forName("oracle.jdbc.OracleDriver");
				
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:free", "tjoeun", "1234");
				System.out.println("Success");
				
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from department");
				
				// 포인터로 호출한다.
				while(rs.next()) {
					String id = rs.getString(1);
					String title = rs.getString(2);
					String location = rs.getString(3);
					System.out.println(id + ", " + title + ", " + location);
				}
			} catch (ClassNotFoundException e) {
				System.out.println("jdbc 드라이버 없음");
				
			} catch (SQLException e) {
				System.out.println("아이디랑 패스워드 오류");
			}
	}
}
