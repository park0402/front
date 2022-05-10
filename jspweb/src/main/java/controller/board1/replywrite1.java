package controller.board1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDao1;
import dao.MemberDao;
import dto.Reply1;



/**
 * Servlet implementation class replywrite1
 */
@WebServlet("/board1/replywrite1")
public class replywrite1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public replywrite1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");	// request 사용시 = 한글 인코딩 
		int bno1 = Integer.parseInt( request.getParameter("bno1") ) ; // 게시물번호 요청 
		String rcontent1 = request.getParameter("rcontent1"); // 댓글내용 요청
			String mid = (String)request.getSession().getAttribute("login"); // 세션 요청 ( 로그인 정보 )
		int mno = MemberDao.getmemberDao().getmno(mid); // 회원번호 찾기 
		// 객체화 [ 댓글번호 , 댓글작성일 , rindex , mid 제외 ]
		Reply1 reply1 = new Reply1( 0 , rcontent1, null , 0, bno1, mno,  null );
		// DB처리
		boolean result = BoardDao1.getBoardDao1().replywrite1(reply1);
		if( result ) { response.getWriter().print( 1 ); }	// 쓰기 성공시 ajax에게 1 응답
		else {  response.getWriter().print(2); } // 실패시  ajax에게 2 응답
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}