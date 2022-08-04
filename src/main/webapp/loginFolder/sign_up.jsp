<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lnag="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/sign_up.css">
</head>
<body>
   <!-- header -->
   <div id="header">
       <a href="../basic/index.jsp"><img src="" id="logo">메인로고</a>
   </div>

	<form name="frm" method="post" action="">
		   	<!-- wrapper -->
		   <div id="wrapper">
		
		       <!-- content-->
		       <div id="content">
		
		           <!-- ID -->
		           <div>
		               <h3 class="join_title">
		                   <label for="id">아이디</label>
		               </h3>
		               <span class="box int_id">
		                   <input type="text" id="id" class="int" name="id" maxlength="20">
		               </span>
		               <span class="error_next_box"></span>
		           </div>
		
		           <!-- PW1 -->
		           <div>
		               <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
		               <span class="box int_pass">
		                   <input type="password" id="pswd1" class="int" name="pwd" maxlength="20">
		                   <span id="alertTxt">사용불가</span>
		               </span>
		               <span class="error_next_box"></span>
		           </div>
		
		           <!-- PW2 -->
		           <div>
		               <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
		               <span class="box int_pass_check">
		                   <input type="password" id="pswd2" class="int" name="pwd2" maxlength="20">
		               </span>
		               <span class="error_next_box"></span>
		           </div>
		
		           <!-- NAME -->
		           <div>
		               <h3 class="join_title"><label for="name">이름</label></h3>
		               <span class="box int_name">
		                   <input type="text" id="name" class="int" name="name" maxlength="20">
		               </span>
		               <span class="error_next_box"></span>
		           </div>
		           
		           <!-- EMAIL -->
		           <div>
		               <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
		               <span class="box int_email">
		                   <input type="text" id="email" class="int" name="email" maxlength="100">
		               </span>
		               <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
		           </div>
		           
		           
         <div id="address">
           	<span id="addr_total">
		                 우편번호 : <input type="text" id="addr_no_1" name="zip" />
				<button type="button" id="addr_no" style="width:60px; height:32px;" onclick="sample6_execDaumPostcode();">검색</button><br>
				주소 : <input type="text" name="addr1" id="addr_home" /><br>
				상세 : <input type="text" name="addr2" id="addr_detail" />
				참고항목 : <input type="text" id="sample6_extraAddress">
			</span>
		 </div>
		
		
        <!-- PHONE -->
	           <div>
	               <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
	               <span class="box int_mobile">
	                   <input type="tel" id="mobile" class="int" name="phone" maxlength="16" placeholder="전화번호 입력">
	               </span>
	               <span class="error_next_box"></span>    
	           </div>
	           
	           <!-- GENDER -->
	           <div>
	               <h3 class="join_title"><label for="gender">성별</label></h3>
	               <span class="box gender_code">
	                   <select id="gender" class="sel" name="gender">
	                       <option>성별</option>
	                       <option value="M">남자</option>
	                       <option value="F">여자</option>
	                   </select>                            
	               </span>
	               <span class="error_next_box">필수 정보입니다.</span>
	           </div>
	
	
	           <!-- JOIN BTN-->
	           <div class="btn_area_1">
	               <button type="button" id="btnJoin" onclick="return joinCheck();">
	                  <span><a href="../basic/index.jsp">가입하기</a></span>
	               </button>
	           </div>
	           
	           <!-- CANCEL BTN -->
				<div class="btn_area_2">
	                <button type="reset" id="btnCancel">
	                    <span>취소</span>
	                </button>
	            </div>
	        </div> <!-- content-->
   		</div> <!-- wrapper -->
   </form>
</body>
    
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    
    <script type="text/javascript">
    
    /*변수 선언*/
    var id = document.querySelector('#id');

    var pw1 = document.querySelector('#pswd1');
    var pwMsg = document.querySelector('#alertTxt');
    var pwImg1 = document.querySelector('#pswd1_img1');

    var pw2 = document.querySelector('#pswd2');
    var pwImg2 = document.querySelector('#pswd2_img1');
    var pwMsgArea = document.querySelector('.int_pass');

    var userName = document.querySelector('#name');

    var gender = document.querySelector('#gender');

    var email = document.querySelector('#email');

    var mobile = document.querySelector('#mobile');

    var error = document.querySelectorAll('.error_next_box');



    /*이벤트 핸들러 연결*/
    id.addEventListener("focusout", checkId);
    pw1.addEventListener("focusout", checkPw);
    pw2.addEventListener("focusout", comparePw);
    userName.addEventListener("focusout", checkName);
    gender.addEventListener("focusout", function() {
        if(gender.value === "성별") {
            error[6].style.display = "block";
        } else {
            error[6].style.display = "none";
        }
    })
    email.addEventListener("focusout", isEmailCorrect);
    mobile.addEventListener("focusout", checkPhoneNum);





    /*콜백 함수*/


    function checkId() {
        var idPattern = /[a-zA-Z0-9_-]{5,20}/;
        if(id.value === "") {
            error[0].innerHTML = "필수 정보입니다.";
            error[0].style.display = "block";
        } else if(!idPattern.test(id.value)) {
            error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
            error[0].style.display = "block";
        } else {
            error[0].innerHTML = "사용 가능한 아이디입니다.";
            error[0].style.color = "#08A600";
            error[0].style.display = "block";
        }
    }

    function checkPw() {
        var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
        if(pw1.value === "") {
            error[1].innerHTML = "필수 정보입니다.";
            error[1].style.display = "block";
        } else if(!pwPattern.test(pw1.value)) {
            error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
            pwMsg.innerHTML = "사용불가";
            pwMsgArea.style.paddingRight = "93px";
            error[1].style.display = "block";
            
            pwMsg.style.display = "block";
        } else {
            error[1].style.display = "none";
            pwMsg.innerHTML = "안전";
            pwMsg.style.display = "block";
            pwMsg.style.color = "#03c75a";
        }
    }

    function comparePw() {
        if(pw2.value === pw1.value && pw2.value != "") {
            error[2].style.display = "none";
        } else if(pw2.value !== pw1.value) {
            error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
            error[2].style.display = "block";
        } 

        if(pw2.value === "") {
            error[2].innerHTML = "필수 정보입니다.";
            error[2].style.display = "block";
        }
    }

    function checkName() {
        var namePattern = /[a-zA-Z가-힣]/;
        if(userName.value === "") {
            error[3].innerHTML = "필수 정보입니다.";
            error[3].style.display = "block";
        } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
            error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
            error[3].style.display = "block";
        } else {
            error[3].style.display = "none";
        }
    }


    function isEmailCorrect() {
        var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

        if(email.value === ""){
        	error[4].innerHTML = "필수 정보입니다.";
            error[4].style.display = "block";
        } else if(!emailPattern.test(email.value)) {
            error[4].style.display = "block";
        } else {
            error[4].style.display = "none"; 
        }

    }

    function checkPhoneNum() {
        var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

        if(mobile.value === "") {
            error[5].innerHTML = "필수 정보입니다.";
            error[5].style.display = "block";
        } else if(!isPhoneNum.test(mobile.value)) {
            error[5].innerHTML = "형식에 맞지 않는 번호입니다.";
            error[5].style.display = "block";
        } else {
            error[5].style.display = "none";
        }
    }

    
    function joinCheck() {
        
        if (document.frm.id.value.trim() == "") {
            alert("아이디를 입력하세요.")
            frm.id.focus(); 
            return false; 
        }

        if (document.frm.pwd.value.trim() == "") {
            alert("비밀번호를 입력하세요.")
            frm.pwd.focus(); 
            return false; 
        }

        if (document.frm.pwd2.value.trim() == "") {
            alert("비밀번호를 한번 더 입력하세요.")
            frm.pwd2.focus(); 
            return false; 
        }

        if (document.frm.name.value.trim() == "") {
            alert("성명을 입력하세요.")
            frm.name.focus(); 
            return false; 
        }

        if (document.frm.email.value.trim() == "") {
            alert("메일을 입력하세요.")
            frm.email.focus(); 
            return false; 
        }

        if (document.frm.zip.value.trim() == "") {
            alert("우편번호를 입력하세요.")
            frm.zip.focus(); 
            return false; 
        }
        
        if (document.frm.phone.value.trim() == "") {
            alert("전화번호를 입력하세요.")
            frm.phone.focus(); 
            return false; 
        }
        
        if (document.frm.gender.value.trim() == "") {
            alert("성별을 선택하세요.")
            frm.gender.focus(); 
            return false; 
        }

        success();

        return true;

    }
    
    function success() {
        alert("회원 등록이 완료되었습니다.")
    }
    
    
    /* ---------------------- */
    
     function sample6_execDaumPostcode() {
    	console.log("우편번호");
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
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('addr_no_1').value = data.zonecode;
	                document.getElementById("addr_home").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("addr_detail").focus();
	            }
	        }).open();
    }
    </script>
</html>