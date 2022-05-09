package dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import dto.Board;

public class BoardDao extends Dao {
	
	public BoardDao() {
		super(); // 슈퍼클래스 호출 ( db연동 )
			// super.메소드()  super.필드명	   super() : 생성자
	}
	public static BoardDao boardDao = new BoardDao();
	public static BoardDao getBoardDao() { return boardDao; }
	
	// 1. 게시물 쓰기 메소드 	[ 인수 : 작성된 데이터들 = dto  ]
	public boolean write( Board board ) { 
		
		String sql = "insert into board( btitle , bcontent , mno , bfile )values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString( 1 , board.getBtitle() );	ps.setString( 2 , board.getBcontent() );
			ps.setInt( 3 , board.getMno() );		ps.setString( 4 , board.getBfile() );
			ps.executeUpdate(); return true;
		}catch (Exception e) { System.out.println( e ); }	return false; 
	}
	// 2. 모든 게시물 출력 메소드 [추후기능 = 검색 : 조건]
	public ArrayList<Board> getboardlist(){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();		
		try {
			ArrayList<Board> boardlist = new ArrayList<>();
			String sql = "select board.*, member.mid from board left join member on board.mno=member.mno order by bno desc";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				
				if(rs.getString(7).split(" ")[0].equals(sdf.format(date))){
					Board board = new Board(rs.getInt(1),rs.getString(2), 
					rs.getString(3),rs.getInt(4),
					rs.getString(5), rs.getInt(6),
					rs.getString(7).split(" ")[1], rs.getString(8));					
					boardlist.add(board);
				}
				else{
					Board board = new Board( 
					rs.getInt(1),rs.getString(2), 
					rs.getString(3),rs.getInt(4),
					rs.getString(5), rs.getInt(6),
					rs.getString(7).split(" ")[0], rs.getString(8));					
					boardlist.add(board);
				}		
			}
			return boardlist;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	


	// 3. 개별 게시물 출력 메소드 [ 인수 : 게시물번호 ]
	public Board getboard(int bno) { 
		String sql = "select *from board where bno="+bno;
		try {
			ps= con.prepareStatement(sql); 
			ps.executeQuery();
			rs=ps.executeQuery();
			if(rs.next()) {
				Board board = new Board(
						rs.getInt(1),rs.getString(2), 
						rs.getString(3),rs.getInt(4),
						rs.getString(5), rs.getInt(6),
						rs.getString(7),null
						
						);
				return board;
			}
		}catch (Exception e) {}return null;

		
		
		
		}
	// 4. 게시물 수정 메소드 	[ 인수 : 수정할 게시물번호  / 수정된 내용 ]
	public boolean update( Board board ) { return false; }
	// 5. 게시물 삭제 메소드 	[ 인수 : 삭제할 게시물번호 
	public boolean delete( int bno ) { return false; }
	// 6. 게시물 조회 증가 메소드 	[ 인수 : 증가할 게시물번호 ]
	public boolean increview( int bno ) { return false; }
	// 7. 댓글 작성 메소드 		[ 인수 : 작성된 데이터들 = dto ]
	public boolean replywrite() { return false; }
	// 8. 댓글 출력 메소드 		[ 인수 : x ]
	public boolean replylist() { return false; }
	// 9. 댓글 수정 메소드 		[ 인수 : 수정할 댓글 번호 ]
	public boolean replyupdate() { return false; }
	// 10. 댓글 삭제 메소드 		[ 인수 : 삭제할 댓글 번호 ] 
	public boolean replydelete() { return false; }
}





