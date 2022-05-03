package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {
	
	
	protected Connection con; //패키지가 달라도 상속받으면 접근가능 
	protected PreparedStatement ps ; //db조작 인터페이스
	protected ResultSet rs;
	
	public Dao(){
	try {
		// DB연동 
		Class.forName("com.mysql.cj.jdbc.Driver"); // 1. DB 드라이버 가져오기
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspweb1?serverTimezone=UTC",
				"root","1234"); // 2. DB 주소 연결 
		System.out.println("연동 성공");
	}
	catch(Exception e ) { System.out.println( "[DB 연동 오류]"+e  ); }
}

}
