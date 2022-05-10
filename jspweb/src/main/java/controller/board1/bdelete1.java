package controller.board1;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao1;
import dto.Board1;




/**
 * Servlet implementation class bdelete1
 */
@WebServlet("/board1/bdelete1")
public class bdelete1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bdelete1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bno1 =  Integer.parseInt( request.getParameter("bno1") ) ;
		//DB삭제전에 파일명 가져오기
		Board1 board1 = BoardDao1.getBoardDao1().getboard1(bno1);
		String bfile1 = board1.getBfile1();
		
		boolean result =  BoardDao1.getBoardDao1().bdelete1(bno1);
		// * java에서 html 작성하기(js 명령어) 사용하기
		
		
		response.setCharacterEncoding("UTF-8");	// 응답 인코딩 타입 = 한글 
		response.setContentType("text/html; charset=UTF-8"); // 응답 파일타입 = HTML 
		PrintWriter out = response.getWriter();	// HTML 내보내기 메소드 사용
		
		
		if( result ) {
			
			//삭제 성공시 해당 파일도 서버에서 지우기
			String uploadpath = request.getSession().getServletContext().getRealPath("/board1/upload1/"+bfile1);
			File file = new File(uploadpath); //해당 파일 객체화 
			file.delete();//파일삭제하기(file클래스내 제공되는 delete()메소드= 파일삭제시 사용
			
			// 1. HTML 내보내기 
//			out.println( "<html>");
//			out.println( "<body>");
//			out.println( "</body>");
//			out.println( "</html>");
			// 2. JS 내보내기 
			out.println("<script>");
			out.println("alert('해당 게시물이 삭제 되었습니다.');");
			out.println("location.href='boardlist.jsp';");	// js [ location.href = "경로" ]
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('해당 게시물이 삭제 실패[관리자에게 문의] .');");
			out.println("history.back();");	// js [ history.back() : 이전 페이지로 가기 메소드 ] 
			out.println("</script>");
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
