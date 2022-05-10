
 // 문서 열렸을때 실행 함수 무조건 실행
 $(document).ready( function(){
	 $('#summernote').summernote({
    	placeholder: '내용 입력',
    	tabsize: 2,
   	 	minHeight : 250 , // 최소 높이
   	 	maxHeight : null , // 최대 높이 
   	 	lang : 'ko-KR'	// 메뉴 한글 버전 
	  });
});

function filedelete1( bno1 ){
	
	// HTML에서 JS 로 변수 이동[통신]
		// 1. 메소드 인수로 이동 
		// 2. 태그의 value 혹은 html 이동  [ $("#bno").val();]
	alert("파일만삭제");
	// 비동기통신 = 페이지 전환이 없는 상태 DB통신 
	// JQUERY라이브러리의 AJAX 사용 
	$.ajax({
		url : "filedelete1", /*서블릿통신 */ 
		data : { "bno1" : bno1 }, /* 통신 데이터 : { 변수명 : 값 , 변수명2 : 값  } */
		success : function( result ){
			if( result == "1" ){ 
				alert("첨부파일삭제성공 ");
				location.reload(); // 현재 페이지 새로고침
			}
			else { alert("첨부파일삭제실패[관리자에게문의]")}
		}
		
	});
}

function replywrite1( bno1 ){
	let rcontent1 = $("#rcontent1").val();
	$.ajax({
		url: "replywrite1" ,
		data: { "bno1":bno1 , "rcontent1" : rcontent1  } ,
		success : function( result ){
			if( result == 1 ){
				 alert("댓글작성 되었습니다."); // 성공 메시지 알림 
				 $("#rcontent1").val(""); // 작성 input 공백으로 초기화 
				 $("#replytable1").load( location.href+" #replytable1"); // 특정 태그 새로고침
				 /* 해당 replytable 의 불러오기 = replytable */
			}
			else{ alert("댓글작성이 실패했습니다."); }
		}
	});
	
}

function rereplyview1( rno1 , bno1 ){ // 대댓글 입력창 표시 메소드 
	// ' '  or " "	: 문자처리 	// '문자열' + 변수 + '문자열'
	$("#"+rno1).html(
		'<input type="text" id="rrcontent1">'+
		'<button onclick="rereplywrite1('+rno1+','+bno1+')">대댓글 등록</button>'
	);	
}
function rereplywrite1( rno1 , bno1 ){ // 대댓글 쓰기 메소드 
	let rrcontent1 = $("#rrcontent1").val();
	$.ajax({
		url : "rereplywrite1" , 
		data : { "rno1" : rno1 , "bno1" : bno1  , "rrcontent" : rrcontent1} ,
		success : function( result ){
			if( result == 1 ){
				 alert("대댓글 작성 되었습니다."); // 성공 메시지 알림 
				 $("#rrcontent1").val(""); // 작성 input 공백으로 초기화 
				 $("#replytable1").load( location.href+" #replytable1"); // 특정 태그 새로고침
			}
			else{ alert("대댓글작성이 실패했습니다."); }
		}
	});
}
 function replydelete1( rno1 ){
	$.ajax({
		url : "replydelete1" , 
		data : { "rno1" : rno1 } , 
		success : function( result ){
			if( result == 1 ){
				alert("댓글 삭제 되었습니다.");
				$("#replytable1").load( location.href+" #replytable1"); // 특정 태그 새로고침
			}
			else{ alert("삭제 실패(관리자에게 문의)"); } 
		}
	});
}

