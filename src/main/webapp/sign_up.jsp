<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lnag="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/sign_up.css">
</head>
<body>
        <!-- header -->
        <div id="header">
            <a href=""><img src="" id="logo">메인로고</a>
        </div>


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
                        <input type="text" id="id" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름</label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                
                <!-- EMAIL -->
                <div>
                    <h3 class="join_title"><label for="email">이메일<span class="optional"></span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>    
                </div>
                
                <!-- ADDRESS -->
                <!-- <div>
                    <h3 class="addrno"><label for="addrno"><span class="optional">우편번호</span></label></h3>
                    <span class="box int_email">
                        <input type="text" id="email" class="int" maxlength="100" placeholder="선택입력">
                    </span>
                    <span class="error_next_box">우편번호를 다시 확인해주세요.</span>    
                </div> -->
                우편번호 : <input type="text" name="zip" style="width:80px; height:26px;" />
<button type="button" style="width:60px; height:32px;" onclick="openZipSearch()">검색</button><br>
주소 : <input type="text" name="addr1" style="width:300px; height:30px;" readonly /><br>
상세 : <input type="text" name="addr2" style="width:300px; height:30px;" />


                <!-- PHONE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                
                <!-- GENDER -->
                <div>
                    <h3 class="join_title"><label for="gender">성별</label></h3>
                    <span class="box gender_code">
                        <select id="gender" class="sel">
                            <option>성별</option>
                            <option value="M">남자</option>
                            <option value="F">여자</option>
                        </select>                            
                    </span>
                    <span class="error_next_box">필수 정보입니다.</span>
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area_1">
                    <button type="button" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>
                
                <!-- CANCEL BTN -->
				<div class="btn_area_2">
                    <button type="button" id="btnCancel">
                        <span>취소</span>
                    </button>
                </div>
                

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="main.js"></script>
    </body>
</html>