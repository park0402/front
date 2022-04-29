package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dto.Member;

public class MemberDao {
	
	
	private Connection con;
	private PreparedStatement ps ; //db조작 인터페이스
	private ResultSet rs;
	
	public MemberDao() {
		try {
			// DB연동 
			Class.forName("com.mysql.cj.jdbc.Driver"); // 1. DB 드라이버 가져오기
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptest?serverTimezone=UTC",
					"root","1234"); // 2. DB 주소 연결 
			System.out.println("연동 성공");
		}
		catch(Exception e ) { System.out.println( "[DB 연동 오류]"+e  ); }
	}
	public static MemberDao memberDao = new MemberDao() ; 	// 3. Dao 객체 생성
	public static MemberDao getmemberDao() { return memberDao; } // 4. Dao 객체 반환
	public boolean signup(Member member) {
		//SQL 작성
		String sql = "insert into member (mid,mpassword,mname)values(?,?,?)";
						//insert into 테이블 (필드명,필드명2,필드명3)values (값1,값2,값3) 
						//insert into 테이블 values(값1,값2,값3,) 모든필드에 넣을때
		//2.연결된 DB에 SQL 연결
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, member.getMid());
			ps.setString(2, member.getMpassword());
			ps.setString(3, member.getMname());
			
		//4.SQL 실행
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
				System.out.println("SQL PS 연결 실패"+e);		}
		return false;	
	}
	public boolean login( String id , String password) {
		String sql = "select * from member where mid=? and mpassword=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , id ); ps.setString( 2 , password );  
			rs = ps.executeQuery();
			if( rs.next() )return true;
		}catch (Exception e) { System.out.println( e );} return false;
	}
	
	public boolean delete(String id) {
		String sql = "delete from member where mid =? ";
		try {
			ps = con.prepareStatement(sql);	
			ps.setString(1, id); 
			ps.executeUpdate();
			System.out.println("탈퇴되었습니다.");
			return true;
		}catch (Exception e) {System.out.println("SQL 오류 회원탈퇴" +e);
		}
		return false;
	}
	
	// 회원 정보 출력 메소드
	public Member getmember( String id ) {
		
		String sql = "select * from member where mid =? ";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if( rs.next() ) {
				// 동일한 아이디의 레코드를 비밀번호를 제외한 객체화
				Member member = new Member(
						rs.getInt(1) ,
						null ,
						rs.getString(2) ,
						rs.getString(4) 
						
						);
				return member;
			}
		}catch (Exception e) {} return null;
		
	}
}
