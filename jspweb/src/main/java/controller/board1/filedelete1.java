package controller.board1;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.BoardDao1;

/**
 * Servlet implementation class filedelete
 */
@WebServlet("/board1/filedelete1")
public class filedelete1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public filedelete1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		// 1. 게시물번호 요청
		int bno1 = Integer.parseInt( request.getParameter("bno1") );
			String bfile1 = BoardDao1.getBoardDao1().getboard1(bno1).getBfile1();	// * 기존파일명 임시보관
		// 2. [DB변경] 해당 게시물번호의 게시물 첨부파일 필드를 null 변경 
		boolean result = BoardDao1.getBoardDao1().filedelete1( bno1 );
		// 3. [파일삭제] 서버내 첨부파일은 삭제 
		if( result ) {
			String uploadpath = request.getSession().getServletContext().getRealPath("/board1/upload1/"+bfile1);
			File file = new File(  uploadpath );
			file.delete();
			response.getWriter().print("1"); 	// 성공시 1 js에게 응답하기 
		}else {
			response.getWriter().print("2"); 	// 실패시 2 js에게 응답하기 
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
