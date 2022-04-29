package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Dto.Board;



public class BoardDao {
	
	private Connection con;
	private ResultSet rs;
	private PreparedStatement ps;
	
	// 2. 생성자 
	public BoardDao() {
		try {
			// DB연동 
			Class.forName("com.mysql.cj.jdbc.Driver"); // 1. DB 드라이버 가져오기
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsptest?serverTimezone=UTC",
					"root","1234"); // 2. DB 주소 연결 
			System.out.println("연동 성공");
		}
		catch(Exception e ) { System.out.println( "[DB 연동 오류]"+e  ); }
	}
	public static BoardDao boarddao = new BoardDao() ; 	// 3. Dao 객체 생성
	public static BoardDao getboarddao() { return boarddao; } // 4. Dao 객체 반환
	
	// 게시물 작성
	public boolean write(Board board) {
		String sql = "insert into board( btitle,bcontent,bwriter,bdate)values(?,?,?,?)";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, board.getBtitle());
			ps.setString(2, board.getBcontent());
			ps.setString(3, board.getBwriter());
			ps.setString(4, board.getBdate());
			ps.executeUpdate();
			return true;
			
		} catch (Exception e) {System.out.println("Fdfa"+e);}return false;
	}
	
	public ArrayList<Board> list(){
		ArrayList<Board> boardlist = new ArrayList<Board>(); // 리스트 선언 [ 여러개 게시물 저장 ]
		String sql = "select * from board order by bno desc"; // 조건없는 모든 레코드 출력 
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while( rs.next() ) {
				Board board = new Board(
						rs.getInt(1) , rs.getString(2) , 
						rs.getString(3) , rs.getString(4) , 
						rs.getString(5) 
						);
				boardlist.add(board);
			}
			return boardlist;
		}catch (Exception e) {} return null;
		
		
	}
	// 개별 글 조회
		public Board get( int bno ) {
			String sql = "select * from board "
					+ "where bno=?";
			try {
				ps = con.prepareStatement(sql);
				ps.setInt( 1 , bno );
				rs = ps.executeQuery();
				if( rs.next() ) {
					Board board = new Board(
							rs.getInt(1), 
							rs.getString(2) , 
							rs.getString(3), 
							rs.getString(4) ,
							rs.getString(5));
					return board;
				}
			}catch (Exception e) {} return null;
		}
	
	// 게시물 삭제 메소드 
	public boolean bdelete( int bno ) {
		String sql = "delete from board where bno =?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, bno); 	ps.executeUpdate();
			return true;
		}catch (Exception e) {} return false;
	}
	
	public boolean update(int bno,String title,String content) {
		try {
			String sql = "UPDATE board SET btitle=?,bcontent=? where bno=?";
			ps = con.prepareStatement(sql);
			ps.setString(1,title);
			ps.setString(2,content);
			ps.setInt(3, bno);
			ps.executeUpdate();
			System.out.println("글 수정 성공");
			return true;
		}
		catch (Exception e) {
			System.out.println("글 수정 오류  " + e);
		}
		return false;
	}
}











