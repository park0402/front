
<%@page import="dto.Reply1"%>
<%@page import="dto.Board1"%>
<%@page import="dao.BoardDao1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<
	<%@include file ="../header.jsp" %>
	<br><br><br><br><br><br><br><br><br><br>
	<div class="container">
		<% 
			int bno1 = Integer.parseInt( request.getParameter("bno1") );		// 게시물번호
			String mid = (String)session.getAttribute("login"); 			// 세션 = 로그인된 아이디 
			
			// 조회수 중복방지 세션이 존재하지 않으면 
			if( session.getAttribute( mid+bno1 ) == null  ){
				// 조회수 증가처리 
				BoardDao1.getBoardDao1().increview1( bno1 );
				// 조회수 중복방지[ 세션 생성 ]
				session.setAttribute( mid+bno1 , true );// 세션명 : 아이디 + 게시물번호  // 세션의 값 : true
				session.setMaxInactiveInterval( 60*60*24 ); // 24시간
			}
			
			Board1 board1 =  BoardDao1.getBoardDao1().getboard1(bno1); 			// 게시물번호로 게시물 dto 가져오기 
		%>
	
	
		<h4 class="boardview_title"><%=board1.getBtitle1() %></h4>
		
		<table class="table"> <!-- table : 부스트랩 테이블 클래스 -->
			<tr> 
				<td width="25%">번호  <%=board1.getBno1() %></td> <!-- td 가로길이 : width속성 -->
				<td width="25%">작성자  <%=board1.getMid() %></td> 
				<td width="25%">작성일  <%=board1.getBdate1() %></td>  
				<td width="25%">조회수  <%=board1.getBview1() %></td> 
			</tr>
			<tr> 
				<td colspan="4"> <!-- colspan : 열 병합 // rowspan : 행 병합  -->
					<div class="boardview_content">	
						<%=board1.getBcontent1() %>
					</div>
				</td> 
			</tr>
			
			<% if( board1.getBfile1() == null ){ // 첨부파일이 없을경우 %> 
				<tr> <td colspan="4"> 첨부파일 :  - </td> </tr> <!-- 첨부파일 다운로드 -->
			<%	}else{ // 첨부파일이 있을경우 %>
				<tr> <td colspan="4"> 첨부파일 : <a href="filedown1?bfile1=<%=board1.getBfile1()%>">
					<%=board1.getBfile1() %></a> </td> </tr> <!-- 첨부파일 다운로드 -->
			<% } %>
			
		</table>
 <!----------------------------------- 게시물 삭제/수정/목록 버튼 구역 ------------------------------------------------->		
		<div class="row">
		<%
			if( board1.getMno() == MemberDao.getmemberDao().getmno(mid) ){ 	// 아이디로 회원번호 가져와서 비교 
		%>
			<div class="col-md-2">
				<a href="delete1?bno1=<%=board1.getBno1()%>"> <button class="form-control">삭제</button> </a> <!--작성자와 로그인된 id가 동일하면 보이는 버튼  -->
			</div>	
			<div class="col-md-2">
				<a href="update1.jsp?bno1=<%=board1.getBno1()%>"> <button class="form-control">수정</button> </a> <!--작성자와 로그인된 id가 동일하면 보이는 버튼  -->
			</div>
		<%} %>
			<div class="col-md-2">
				<a href="boardlist1.jsp"> <button class="form-control">목록</button> </a> <!-- 무조건 보이는 버튼 -->
			</div>
		</div>
 <!----------------------------------- 댓글 구역 쓰기 -------------------------------------------------------------------->		
		<h4 class = "boardview_title">댓글</h4>	
		<% if( mid != null ){  //로그인이 되어있으면 %>
		<div class="row"> <!-- row : 가로배치 -->
			<div class="col-md-10">
				<textarea id="rcontent" class="form-control" rows=3></textarea>
			</div>
			<div class="col-md-2">	<!-- p : padding   /   m : margin -->
				<button class="form-control py-4 my-1" onclick="replywrite1(<%=bno1%> )">등록</button>
			</div>
		</div>
		<%} else{ // 로그인이 안되어 있으면  %>
			<h5 class="text-center"> *로그인후 댓글쓰기가 가능합니다. </h5>
		<%} %>
<!----------------------------------- 댓글 출력 구역 -------------------------------------------------------------------->			
		<table id="replytable" class="table" > <!-- 댓글 작성 성공시 해당 태그 새로고침 => js( jquery ) -->
			<%  ArrayList<Reply1> replylist1 = BoardDao1.getBoardDao1().replylist1(bno1);
				for( Reply1 reply1 : replylist1 ){  %>
			<tr>
				<td class="replywriter" width="15%">
					<%=reply1.getMid() %> <br> 
					<span class="replydate"> <%=reply1.getRdate1() %> </span>
				</td>
				
				<td width="80%" colspan="2">
					<%=reply1.getRcontent1() %> <br> 
				<% if( mid !=null && mid.equals( reply1.getMid() ) ){ // 본인 작성한 댓글이면 %>
					<button class="btn replybtn"> 수정 </button>
					<button type="button" class="btn replybtn" onclick="replydelete1(<%=reply1.getRno1()%>)"> 삭제 </button>
				<%} %>
					<button class="btn replybtn" 
						onclick="rereplyview1(<%=reply1.getRno1()%> , <%=reply1.getBno1()%> , '<%=mid%>' )"> 
																	<!-- js메소드에 인수 넣을때 문자열 ' '처리 //  숫자형 제외 -->
					댓글 
					</button>
				</td>
			</tr>
			
			<tr> <!-- 대댓글 입력창 -->
				<td> </td>
				<td colspan="2" id=<%=reply1.getRno1() %> > </td>   <!-- 해당 태그의 id값을 변수로 설정 = 댓글번호 ( 댓글 한개당 1개씩 ) -->
			</tr>
			
			<!-- 대댓글 출력창  -->
			<%ArrayList<Reply1> rereplylist1 = BoardDao1.getBoardDao1().rereplylist1( bno1 , reply1.getRno1() );
				for( Reply1 rereply1 : rereplylist1 ){%>
				<tr>
					<td></td>
					<td width="10%" class="replywriter">
						<%=rereply1.getMid() %> <br> 
						<span class="replydate"> <%=rereply1.getRdate1() %> </span>
					</td>
					<td width="80%">
						<%=rereply1.getRcontent1() %> <br> 
					<% if( mid != null && mid.equals( rereply1.getMid() ) ){ %>
						<button class="btn replybtn"> 수정 </button>
						<button class="btn replybtn" onclick="replydelete1(<%=rereply1.getRno1()%>)"> 삭제 </button>
					<%} %>
					</td>
				</tr>
				
			<%  }  } %>
		</table>
		
	</div>
	<script src="/jspweb/js/board1.js" type="text/javascript"></script>
	
	<%@include file ="../footer.jsp" %>


</body>
</html>
