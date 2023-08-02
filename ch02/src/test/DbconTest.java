package test;

import java.sql.*;

public class DbconTest {
    public static void main(String[] args) throws ClassNotFoundException {
        //상수는 대문자가 원칙
        final String DRIVER = "org.mariadb.jdbc.Driver";
        final String DNS = "localhost";
        final String PORT = "3306";
        final String NAME = "edu"; //DB 이름
        final String USER = "root";
        final String PASS = "1234";
        //final String URL = "프로토콜:디비종류://호스트주소:포트번호/데이터베이스이름";
        //final String URL = "jdbc:mariadb://localhost:3306/edu";
        final String URL = "jdbc:mariadb://"+DNS+":"+PORT+"/"+NAME;


        Connection conn = null; //연결자
        PreparedStatement pstmt = null;//켜졌는지 확인하는 led 램프
        ResultSet rs = null;//


        try {
            Class.forName(DRIVER);//드라이버로딩
            conn = DriverManager.getConnection(URL,USER,PASS);//데이터베이스에 연결
            if(conn !=null) {
                System.out.println("DB 연결 성공");
            }
        } catch (ClassNotFoundException e) {
                System.out.println("드라이버가 로딩되지 못했습니다.");
        } catch (SQLException e) {
            System.out.println("DB 접속 실패");
            throw new RuntimeException(e);
        }

        String sql = "select * from member where id=?";
        String id = "admin";
        try {
            pstmt = conn.prepareStatement(sql); //sql 구문대입
            pstmt.setString(1,id); //sql 구문 조건 대입
            rs = pstmt.executeQuery(); // sql 실행하여 결과셋 저장

            while(rs.next()){
                System.out.println("아이디 :"+rs.getString("id"));
                System.out.println("비밀번호 :"+rs.getString("pw"));
                System.out.println("이름 :"+rs.getString("name"));
                System.out.println("가입일 :"+rs.getString("regdate"));
                System.out.println("포인트 :"+rs.getInt("point"));
            }
        } catch (SQLException e) {
            System.out.println("sql 구문에 오류가 있어 실행하지 못했습니다");
            throw new RuntimeException(e);
        }finally{
            try{
                if(rs !=null){rs.close();}
                if(pstmt != null){ pstmt.close();}
                if(conn != null){conn.close();}
            }catch (SQLException e){
                System.out.println("데이터베이스 작업을 종료하지 못했습니다.");
            }
        }


    }
}
