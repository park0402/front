package controller.board1;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.BoardDao1;
import dto.Board1;

/**
 * Servlet implementation class update2
 */
@WebServlet("/board1/bupdate1")
public class bupdate1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bupdate1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bno1 =  Integer.parseInt( request.getParameter("bno1") );
		
		String uploadpath = request.getSession().getServletContext().getRealPath("/board/upload");
		MultipartRequest multi = new MultipartRequest( request,uploadpath ,1024*1024*10 ,"UTF-8" ,new DefaultFileRenamePolicy());
		String btitle1 = multi.getParameter("btitle1");
		String bcontent1 = multi.getParameter("bcontent1");
		String bfile1 = multi.getFilesystemName("bfile1");
			//객체화 
		Board1 board1 = new Board1(bno1, btitle1, bcontent1, 0, bfile1, 0, null, null);
			// DB
		boolean result = BoardDao1.getBoardDao1().update1(board1);
		if( result ) { response.sendRedirect("boardview1.jsp?bno1="+bno1 ); }
		else { response.sendRedirect("boardview1.jsp?bno1="+bno1 );}
	}

}
