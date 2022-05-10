package dto;

import dao.MemberDao;

public class Reply1 {
	private int rno1;
	private String  rcontent1;
	private String  rdate1 ;
    private int  rindex1;
    private int  bno1;
    private int  mno;
    private String mid;
    
    public Reply1() {}

	public Reply1(int rno1, String rcontent1, String rdate1, int rindex1, int bno1, int mno, String mid) {
		super();
		this.rno1 = rno1;
		this.rcontent1 = rcontent1;
		this.rdate1 = rdate1;
		this.rindex1 = rindex1;
		this.bno1 = bno1;
		this.mno = mno;
		// 회원번호를 이용한 회원 아이디 찾기
		this.mid = MemberDao.getmemberDao().getmid(mno);
	}

	public int getRno1() {
		return rno1;
	}

	public void setRno1(int rno1) {
		this.rno1 = rno1;
	}

	public String getRcontent1() {
		return rcontent1;
	}

	public void setRcontent1(String rcontent1) {
		this.rcontent1 = rcontent1;
	}

	public String getRdate1() {
		return rdate1;
	}

	public void setRdate1(String rdate1) {
		this.rdate1 = rdate1;
	}

	public int getRindex1() {
		return rindex1;
	}

	public void setRindex1(int rindex1) {
		this.rindex1 = rindex1;
	}

	public int getBno1() {
		return bno1;
	}

	public void setBno1(int bno1) {
		this.bno1 = bno1;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	@Override
	public String toString() {
		return "Reply1 [rno1=" + rno1 + ", rcontent1=" + rcontent1 + ", rdate1=" + rdate1 + ", rindex1=" + rindex1
				+ ", bno1=" + bno1 + ", mno=" + mno + ", mid=" + mid + "]";
	}

	
    
	
}