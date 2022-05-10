package controller.board1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.BoardDao1;
import dao.MemberDao;
import dto.Reply1;

/**
 * Servlet implementation class rereplywrite1
 */
@WebServlet("/board1/rereplywrite1")
public class rereplywrite1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public rereplywrite1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		int rindex1 = Integer.parseInt( request.getParameter("rno1") ); // rindex : 어떤 댓글의 대댓글인 식별번호 ( 부모 댓글번호 ) 
		int bno1 = Integer.parseInt(  request.getParameter("bno1") ) ;	
		String rcontent1 = request.getParameter("rrcontent");
			String mid = (String)request.getSession().getAttribute("login");
		int mno = MemberDao.getmemberDao().getmno(mid);
		// 객체화 ( 댓글번호 , 작성일 , mid 제외 )
		Reply1 reply1 = new Reply1( 0 , rcontent1, null , rindex1 , bno1, mno, null);
		// db처리
		boolean result =  BoardDao1.getBoardDao1().replywrite1(reply1);
		if( result ) { response.getWriter().print(1); }
		else { response.getWriter().print(2); }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

