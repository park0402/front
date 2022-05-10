package dao;

import java.util.ArrayList;


import dto.Board1;

import dto.Reply1;

public class BoardDao1 extends Dao {
	
	public BoardDao1() {
		super(); // 슈퍼클래스 호출 ( db연동 )
			// super.메소드()  super.필드명	   super() : 생성자
	}
	public static BoardDao1 boardDao1 = new BoardDao1();
	public static BoardDao1 getBoardDao1() { return boardDao1; }
	
	// 1. 게시물 쓰기 메소드 	[ 인수 : 작성된 데이터들 = dto  ]
	public boolean write1( Board1 board1 ) { 
		
		String sql = "insert into board1( btitle1 , bcontent1 , mno , bfile1 )values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , board1.getBtitle1() );	ps.setString( 2 , board1.getBcontent1() );
			ps.setInt( 3 , board1.getMno() );		ps.setString( 4 , board1.getBfile1() );
			ps.executeUpdate(); return true;
		}catch (Exception e) { System.out.println( e ); }	return false; 
	}
	// 2. 모든 게시물 출력 메소드 [ 인수 : x  // 추후기능 = 검색 : 조건 ]
	public ArrayList<Board1> getboardlist1() { 
		ArrayList<Board1> boardlist1 = new ArrayList<Board1>();
		// 내림차순 
		String sql = "select * from board1 order by bno1 desc";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while( rs.next() ) {
				Board1 board1 = new Board1( 
						rs.getInt(1),rs.getString(2), 
						rs.getString(3),rs.getInt(4),
						rs.getString(5), rs.getInt(6),
						rs.getString(7), null );
				boardlist1.add(board1);
			}
			return boardlist1;
		}catch (Exception e) { System.out.println( e );} return null; 
		
	}
	// 3. 개별 게시물 출력 메소드 [ 인수 : 게시물번호 ]
	public Board1 getboard1( int bno1 ) { 
		String sql ="select * from board1 where bno1="+bno1;	// 1. SQL 작성 
		try {
			ps = con.prepareStatement(sql);	// 2.연결된DB( con ) 에 SQL문 설정  
			rs = ps.executeQuery(); 		// 3.조작된 SQL를 실행
			if( rs.next() ) { // 4. 검색 결과 [ rs.next() 할 때 마다 결과물에서 레코드 1개씩 호출 ]  
				Board1 board1 = new Board1( 
					rs.getInt(1),rs.getString(2), 
					rs.getString(3),rs.getInt(4),
					rs.getString(5), rs.getInt(6),
					rs.getString(7), null 
				);
				return board1;
			}
		}catch (Exception e) {} return null;
		
		
	}
	// 4. 게시물 수정 메소드 	[ 인수 : 수정할 게시물번호  / 수정된 내용 ]
	public boolean update1( Board1 board1 ) { 
		String sql = "update board set btitle1=? , bconten1t=? , bfile1=? where bno1 = ?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , board1.getBtitle1() );
			ps.setString( 2 , board1.getBcontent1() );
			ps.setString( 3 , board1.getBfile1() );
			ps.setInt( 4 , board1.getBno1() );
			ps.executeUpdate(); return true;
		}
		catch (Exception e) { System.out.println( e );} return false;
	}
	
	// 5. 게시물 삭제 메소드 	[ 인수 : 삭제할 게시물번호 
	public boolean bdelete1( int bno1 ) { 
		String sql = "delete from board where bno1="+bno1;
		try { ps = con.prepareStatement(sql); ps.executeUpdate(); return true;}
		catch (Exception e) {} return false;
	}
	// 5-2 첨부파일만 삭제( null로 변경 ) 메소드 
	public boolean filedelete1( int bno1 ) {
		String sql = "update board set bfile1 = null where bno1 = "+bno1;
		try { ps = con.prepareStatement(sql); ps.executeUpdate(); return true; }
		catch (Exception e) {} return false;
	}
	
	// 6. 게시물 조회 증가 메소드 	[ 인수 : 증가할 게시물번호 ]
	public boolean increview1( int bno1 ) { 
		String sql ="update board set bview1 = bview1+1 where bno1 = "+bno1;
		try { ps=con.prepareStatement(sql); ps.executeUpdate(); return true; } 
		catch (Exception e) {}	return false; 
		
	}
	// 7. 댓글 작성 메소드 		[ 인수 : 작성된 데이터들 = dto ]
	public boolean replywrite1( Reply1 reply1 ) { 
		String sql = "insert into reply( rcontent1,rindex1,bno1,mno ) values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , reply1.getRcontent1() );
			ps.setInt( 2 , reply1.getRindex1() );
			ps.setInt( 3 , reply1.getBno1() );
			ps.setInt( 4 , reply1.getMno() );
			ps.executeUpdate(); return true;
		}catch (Exception e) { System.out.println( e ); } return false;
	}
	// 8. 댓글 출력 메소드 		[ 인수 : 현재 게시물번호 ]
	public ArrayList<Reply1> replylist1( int bno1 ) { 
		ArrayList<Reply1> replylist1 = new ArrayList<Reply1>();
		String sql = "select * from reply1 where bno = "+bno1+" and rindex1 = 0"; // rindex1 = 0  : 댓글만 출력 [ 대댓글 제외 ] 
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery(); 
			while( rs.next() ) { 
				Reply1 reply1 = new Reply1( 
						rs.getInt(1) , rs.getString(2) , 
						rs.getString(3) , rs.getInt(4) , 
						rs.getInt(5), rs.getInt(6), null);
				replylist1.add(reply1);
			}
			return replylist1;
		}catch (Exception e) { System.out.println( e ); } return null; 
	}
	// 8-2 대댓글 출력 메소드 
	public ArrayList<Reply1> rereplylist1( int bno1 , int  rno1 ){
		ArrayList<Reply1> rereplylist1 = new ArrayList<Reply1>();
		String sql = "select * from reply where bno1 = "+bno1+" and rindex1 = "+rno1;
		try { 
			ps = con.prepareStatement(sql); rs= ps.executeQuery();
			while( rs.next() ) {
				Reply1 reply1 = new Reply1(
						rs.getInt(1) , rs.getString(2),
						rs.getString(3), rs.getInt(4), 
						rs.getInt(5), rs.getInt(6), null);
				rereplylist1.add(reply1);
			}
			return rereplylist1;
		}catch (Exception e) { System.out.println(e); } return null;
		
	}

}







