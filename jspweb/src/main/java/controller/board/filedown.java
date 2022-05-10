package controller.board;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class filedown
 */
@WebServlet("/board/filedown")
public class filedown extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */      
 
    public filedown() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String bfile=request.getParameter("bfile");
		//System.out.println("다운로드 파일명 " + bfile); 확인코드
		//2.서버에서 해당 파일 찾기
		String uploadpath = request.getSession().getServletContext().getRealPath("/board/upload"+bfile);
		//프로젝트 경로찾기
		//String uploadpath= "C:\Users\Stephen\git\front\jspweb\src\main\webapp\board" +bfile
		
		//3.파일 객체화
		File file = new File(uploadpath);
		//4. 다운로드 형식
		response.setHeader("Content-Disposition",
							"attachment;filename="+URLEncoder.encode(bfile,"utf-8"));
							//다운로드 형식                // 다운로드 화면에서 표시할 파일명 
							//attachment;filename = : 다운로드 화면에서 표시할 파일
							// *만일 첨부 파일이면 
							//URLEncoder.encode : URL 한글 인코딩 타입
		//5. 바이트형식으로 내보내기 (통신)
	//5-1. 입력스트림 [ 서버가 pc 에 있는 파일을 스트림 가져오기 단계]	
		BufferedInputStream fin = new BufferedInputStream(new FileInputStream(file));
			//1. 바이트배열 선언
		byte[]bytes = new byte[ (int)file.length() ]; //파일길이 (크기=용량) 만큼 배열선언
			//2. 바이트배열
		fin.read(bytes);
	//5-2.출력스트림[서버가 pc내 파일을 내보내기 단계]
		//reponse: (서블릿) 웹 응답 객체
		BufferedOutputStream fout = new BufferedOutputStream(response.getOutputStream());
		fout.write(bytes);
		
	//5-3. 스트림 닫기(기록제거)
		fin.close();
		fout.close();
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
