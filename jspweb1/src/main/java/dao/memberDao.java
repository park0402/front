package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.Member;



public class memberDao extends Dao {
	
	
	public memberDao() {super();}
	//부모클래스 생성자호출
	
	
	public static memberDao memberDao = new memberDao() ; 	// 3. Dao 객체 생성
	public static memberDao getmemberDao() { return memberDao; } // 4. Dao 객체 반환

	// 아이디 중복체크 메소드
	public boolean idcheck( String mid ) {
		String sql = "select * from member where mid = '"+mid+"'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();	
			// 동일한 아이디가 존재하면 
			if( rs.next() ) { return true; } 
		}catch (Exception e) { System.out.println( e );} 
		// 동일한 아이디가 존재하지 않으면
		return false;
	}
	
	public boolean emailcheck( String email ) {
		String sql = "select * from member where memail = '"+email+"'";
		try {  ps = con.prepareStatement(sql); rs= ps.executeQuery(); if( rs.next() ) return true;
		}catch (Exception e) {} return false;
	}
	
	// 회원가입 메소드 
	public boolean signup( Member member ) {
		String sql ="insert into member(mid,mpassword,mname,mphone,memail,maddress) "
				+ "value(?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , member.getMid() ); 	ps.setString( 2 , member.getMpassword() ); 
			ps.setString( 3 , member.getMname() );	ps.setString( 4 , member.getMphone() ); 
			ps.setString( 5 , member.getMemail()); 	ps.setString( 6 , member.getMaddress());
			ps.executeUpdate(); return true;
		}catch (Exception e) {} return false;
	}
	
	public int login(String mid, String mpassword) {
		String sql = "select* from member where mid = ? and mpassword = ?";
//		String sql = "select* from member where mid = '"+mid+"' and mpassword = '"+mpassword+"' ";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, mid);ps.setString(2, mpassword);
			rs=ps.executeQuery();if(rs.next())return 1;  //동일한 값이 있으면 1성공
			return 2; //동일한 값이 없으면 실패 2
		}catch (Exception e) {
		System.out.println("로그인 db연결실패 ");}
		return 3; //db오류 
	}
}