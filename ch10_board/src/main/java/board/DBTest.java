package board;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBTest {
    public static void main(String[] args) {
        Connection con = null;
        try {
            // Oracle JDBC Driver 등록과 연결 정보
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url = "jdbc:oracle:thin:@localhost:1521:free"; // 본인 환경에 맞게 수정
            String user = "jsp";     // 본인 ID
            String pass = "1234";     // 본인 PW

            // 커넥션 연결
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("DB 연결 성공!");
        } catch (Exception e) {
            System.out.println("DB 연결 실패...");
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (Exception e) { }
        }
    }
}
