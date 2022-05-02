/**
 
 JS[사용 목적 유효성 검사, 비동기 통신 등]
 JS문법
 	1.주석: 문법은 JAVA와 동일
 	2.변수선언
 		1. var: 변수명 중복o, 메모리 초기화o
 		2. const: 변수명 중복x, 메모리 초기화x
 		3. let : 변수명 중복x,메모리 초기화o
 	3. 내장객체/메소드
 		1.alert("알림내용") : 알림참 메소드
 		2.document : 문서객체 [현HTML 객체]
 			1. .write("hrml작성") :html 쓰기
 			2. .getElementById("html 해당 id 태그명"):해당 태그 가져오기
 			  .innerHTML("해당 태그에 넣을 데이터"): 해당 태그에 html 넣기
 			  .textContent = "해당 태그에 넣을 데이터" :해당 태그에 데이터넣기
 			  .style.css속성명 = 속성값  	:해당 태그에 css 속성 적용
 			  .value 해당 태그에 value값 가져오기[value 속성이 있는 태그만 가능]
 		3.console.log() : 브라우저(f12)내 console창에 출력[테스트목적]
 		4.반복문 / 제어문 = 자바 
 			1. for(초기값; 조건식, 증감식){}
 			2. if(논리식){}
 			3. 
 			 **/
 var 메시지1 = "자바 var변수"; alert(메시지1); consol.log(메시지1);
 var 메시지1 = "자바 var 중복 변수"; alert(메시지1);
 //변수 var : 중복가능 , 메모리 초기화 가능 
 const 메시지4 = "자바const 변수"; alert(메시지4);
 메시지4= "자바const변수 값 변경"; alert(메시지4);
 //변수 const: 고정값 
 //메시지4="js const 변수 값 변경"; alert(메시지4);
 //변수 const: 변수명 중복 불가능 ,메모리 초기화 불가능 = 상수
 
 let 메시지5 = "js let 변수"; alert(메시지5);
 //let 메시지5 = "js let 중복 변수"
 
 메시지5= "gs let 변수 값 변경";  alert(메시지5);
 //변수 let : 변수명 중복 불가능 
 
	let tag1 = document.getElementById("spantag1");
 	tag1.innerHTML="js에서 작성된 문자" ;
 let 가격= 500;
 let 개수= 10;
 let 총가격 = 가격*개수 ; 
 let tag2=document.getElementById("spantag2");
 tag2.innerHTML=총가격;
 //함수= 메소드
 	//JS: funtion 함수명(인수){실행문}
 	//java :void 함수명(인수){실행문}
 	function 함수1(){ //hmtl 태그내 이벤트 태그에서 함수호출 해
	let 색상배열 = ['red','white','black'];
	
	let tag3 = document.getElementById("spantag3");
	tag3.textContent = 색상배열[0];//배열명 인덱스번호
	tag3.style.color=색상배열[0];
	//body 태그에 css 배경색 변경
	document.body.style.backgroundColor="#eeeeee";
	
	}

	function 함수2(){//메소드 선언
		
		let i = 1; 
		while(i<=10){ // 반복문 10회 반복
		let tag4 = document.getElementById("orderlist1");
		tag4.innerHTML += "<li>반복횟수 : "+ i + "</li>";
		//+= (대입연산자)기존 html에 추가 실행 시켜보기 

		i++;
		}
		let j = 0;
		let 제품배열 = ["갤럭시","아이폰","화웨이"]; //배열선언 
		for(j; j<제품배열.length;j++){
			let tag5 = document.getElementById("orderlist2");
			tag5.innerHTML += "<li> 제품명: "+ 제품배열[j]+"</li>";
			
		
			}
	}
		function 함수3(){
		let 제품명=document.getElementById("input1").value;
		document.getElementById("orderlist3").innerHTML
		+="<li>"+제품명+"</li>"
			
		}
		function 함수4(){
		document.getElementById("orderlist3").innerHTML="";
		}
		
		function 함수5(이름,성별){
		document.writeln("입력하신이름:"+이름);	
		document.writeln("입력하신성별:"+성별);	
			
		}

	
	
	
	
	
	
	
	