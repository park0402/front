/**
 * 
 */
 //jquery
 //$(function){실행문;}):문서 실행 시 무조건 실행되는 함수
 //id 불러오기
 // js: .getElementById
 // jquery :$("#id명")
$( function(){  // 문서 열리면 해당 코드가 실행 
	// 아이디 체크
	$("#mid").keyup( function(){	// mid 가 입력될때마다 해당 함수 실행
		// 1. HTML 태그내 값 가져오기 
		let mid=document.getElementById("mid").value;
		// 2. HTML 태그id 가져오기
		let idchack = document.getElementById("idchack");
		// 정규표현식 : 특정한 규칙을 가지는 문자열의 집합 언어
		let idj = /^[a-zA-Z0-9]{5,15}$/;	// 한글을 제외한 영문+숫자 5~15 사이 문자열
			// /^ : 정규표현식 시작
			// $/ : 정규표현식 끝 
			// [a-z] : 소문자 찾음
			// [A-Z] : 대문자 찾음
			// [0-9] : 숫자 찾음
			// { 최소길이 , 최대길이 } : 문자 최소길이~최대길이 까지만 입력
				// 정규표현식.test( 변수 ) : 해당 변수가 정규표현식에 동일하면 true 다르면 false
		if( idj.test( mid) ){ // 정규표현식과 같으면
			idchack.innerHTML = "가능한 아이디 입니다."
		}else{
			idchack.innerHTML = "영문 , 숫자 포함 5~15길이로 입력해주세요.";
		}
	}); // keyup end 
	
	// 비밀번호 체크 
	$("#mpassword").keyup( function(){  // 비밀번호 입력할때마다
		// let mpassword = document.getElementById("mpassword").value;  // js식
		let mpassword = $("#mpassword").val();  // jquery 식
		let mpassword2 = $("#mpassword2").val();
		
		let passswordj = /^[a-zA-Z0-9]{5,15}$/; // 정규표현식
		
		if( passswordj.test( mpassword ) ){ // 정규표현식 같으면
			if( mpassword != mpassword2 ){ // 비밀번호 와 비밀번호체크 와 다르면
				// equals(x)  //  != ( o )
			$("#passwordcheck").html("패스워드가 서로 다릅니다.");
			}else{
				$("#passwordcheck").html("사용 가능한 비밀번호 입니다.");
			}
		}else{ // 정규현식 다르면
			$("#passwordcheck").html("영소문자 5~15 사이로 입력해주세요!");
		}
	}); // keyup end 
	
		//  mpassword2비밀번호확인 체크 
	$("#mpassword2").keyup( function(){  //  mpassword2비밀번호 입력할때마다
		// let mpassword = document.getElementById("mpassword").value;  // js식
		let mpassword = $("#mpassword").val();  // jquery 식
		let mpassword2 = $("#mpassword2").val();
		
		let passswordj = /^[a-zA-Z0-9]{5,15}$/; // 정규표현식
		
		if( passswordj.test( mpassword2 ) ){ // mpassword2정규표현식 같으면
			if( mpassword != mpassword2 ){ // 비밀번호 와 비밀번호체크 와 다르면
				// equals(x)  //  != ( o )
			$("#passwordcheck").html("패스워드가 서로 다릅니다.");
			}else{
				$("#passwordcheck").html("사용 가능한 비밀번호 입니다.");
			}
		}else{ // 정규현식 다르면
			$("#passwordcheck").html("영소문자 5~15 사이로 입력해주세요!");
		}
	}); // keyup end 
	//이름 체크
	$("#mname").keyup(function(){
	let mname = $("#mname").val(); //해당 id 데이터 가져오기
	let namej = /^[가-힣]{2,10} $/ ; //한글만 2~10 정규표현식
	if(namej.test(mname)){
		$("#namecheck").html("정상입력")
	}else{
		$("#namecheck").html("한글 2~10사이만 가능합니다")
		}
	});	
	
	//이메일 체크
	$("#memail").keyup(function(){
		let memail = $("#memail").val();
		let emailj = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	if(emailj.test(memail)){
		$("#emailcheck").html("알맞은형식입니다")
	}else{
		$("#emailcheck").html("유효하지않은 이메일 형식입니다.")
		}
	});
	
	//전화번호체크
	$("#mphone").keyup(function(){
		let mphone = $("#mphone").val();
		let phonej=/^([0-9]{3,4})-([0-9]{3,4})-([0-9]{3,4})$/ ;
	if(phonej.test(mphone)){
		$("#phonecheck").html("정상입력")
	}else{
		$("#phonecheck").html("알맞은 번호 형식을입력해주세요")
		}
	
	});		
		
	
	
	
	
}); // 문서 열리면 해당 코드가 종료 
	//다음 주소체크

    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddress").focus();
            }
        }).open();
    }

		
