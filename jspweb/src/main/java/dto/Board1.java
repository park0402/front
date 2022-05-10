package dto;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;

import dao.BoardDao1;
import dao.MemberDao;

public class Board1 {
	
	private int bno1;
	private String btitle1;
	private String bcontent1;
	private int mno;
	private String bfile1;
	private int bview1;
	private String bdate1;
	private String mid;	/* 화면 표시용 */
	
	public Board1() {}

	public Board1(int bno1, String btitle1, String bcontent1, int mno, String bfile1, int bview1, String bdate1, String mid) {
		super();
		this.bno1 = bno1;
		this.btitle1 = btitle1;
		this.bcontent1 = bcontent1;
		this.mno = mno;
		this.bfile1 = bfile1;
		this.bview1 = bview1;
		
		// 작성일이 오늘이면 시간만 표시 // 아니면 날짜만 표시 
			// 현재 날짜 : LocalDate.now() 
		if( bdate1 != null ) { 
			
			DateTimeFormatter dateformat = DateTimeFormatter.ofPattern("yyyy-MM-dd"); // 날짜 형식 변환 설정 
			String today = dateformat.format( LocalDate.now() ) ; // 오늘날짜를 문자열 변환
			String boardday = bdate1.split(" ")[0];	// 날짜만 
			String boardtime = bdate1.split(" ")[1]; // 시간만 
								// db에 저장된 게시물 등록날짜의 날짜 시간 중에 split 분리후 앞에 있는 날짜만 가져오기 
			// 현재날짜와 게시물등록날짜와 동일하면 
			if( today.equals(boardday) ) { this.bdate1 = boardtime;}
			// 동일하지 않으면 
			else { this.bdate1 = boardday; }
			
		}else { this.bdate1 = bdate1; }
		
		// mno를 가지고 mid출력
		this.mid = MemberDao.getmemberDao().getmid(mno);
		
	}

	

	public int getBno1() {
		return bno1;
	}

	public void setBno1(int bno1) {
		this.bno1 = bno1;
	}

	public String getBtitle1() {
		return btitle1;
	}

	public void setBtitle1(String btitle1) {
		this.btitle1 = btitle1;
	}

	public String getBcontent1() {
		return bcontent1;
	}

	public void setBcontent1(String bcontent1) {
		this.bcontent1 = bcontent1;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getBfile1() {
		return bfile1;
	}

	public void setBfile1(String bfile1) {
		this.bfile1 = bfile1;
	}

	public int getBview1() {
		return bview1;
	}

	public void setBview1(int bview1) {
		this.bview1 = bview1;
	}

	public String getBdate1() {
		return bdate1;
	}

	public void setBdate1(String bdate1) {
		this.bdate1 = bdate1;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	@Override
	public String toString() {
		return "Board1 [bno1=" + bno1 + ", btitle1=" + btitle1 + ", bcontent1=" + bcontent1 + ", mno=" + mno
				+ ", bfile1=" + bfile1 + ", bview1=" + bview1 + ", bdate1=" + bdate1 + ", mid=" + mid + "]";
	}
	
	
	
}