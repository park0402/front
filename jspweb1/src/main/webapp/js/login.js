/**
 * 
 */
  $(function(){
	
	$("#mid").keyup ( function(){
		
		let id = $("#mid").val();
		let id_check = document.getElementById("idcheck");
		console.log(id);
		
		$.ajax({
			url : "../Idcheck", 
			data : { "mid" : id }, 
			success : function( result ){ 
				console.log(result);
				if(result == 2){
					id_check.innerHTML = "존재 하지 않는 회원입니다.";
				}
				else {
					id_check.innerHTML = "";
				}
			}
				
		}); // ajax 끝
		
	});
});

 function login() {
	
	let id = $("#mid").val();
	let pw = $("#mpassword").val();
	let myid = document.getElementById("myid");
	if(id == "" || pw == ""){
		alert("아이디 또는 비밀번호를 입력하세요.");
	}
	else {
		$.ajax({
			url : "../Login", 
			data : { "mid" : id, 
					"mpassword" : pw
			}, 
			success : function( result ){ 
				console.log(result);
				if(result == id){
					sessionStorage.setItem("loginID", id );
					location.href = "../main.jsp";
				}
				else {
					alert("비밀번호 오류 입니다.");
				}
			}
		});
	}
}