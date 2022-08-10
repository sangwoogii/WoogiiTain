<%@page import="membership.memberDTO"%>
<%@page import="membership.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	//3.로그인폼에서 가져온 아이디와 패스워드
	String userId = request.getParameter("usrename");
	String userPwd = request.getParameter("password");
	
	//4. web.xml에서 가져와 데이터베이스 연결
	String oracleDriver = application.getInitParameter("OracleDriver");
	String oracleUrl = application.getInitParameter("OracleUrl");
	String oracleId = application.getInitParameter("OracleId");
	String oraclePw = application.getInitParameter("OraclePw");
	
	//5.MemberDAO를 통해 DB에 접근하여 CURD수행.
	MemberDAO dao = new MemberDAO(oracleDriver, oracleUrl, oracleId, oraclePw);
	
	//8.getMemberDTO()메서드를 호출
	MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
	
	//15. 데이터베이스 연결 해제
	dao.close();
	
	//16. 로그인 성공 여부에 따른 처리
	if (memberDTO.getId() != null){ //dto객체에 아이디가 있으면 로그인 성공
		
		//17. 로그인에 성공하면 session영역에 아이디와 이름을 저장
		session.setAttribute("UserId", memberDTO.getId());
		session.setAttribute("UserName", memberDTO.getName());
		
		//18. 로그인 페이지로 이동
		response.sendRedirect("LoginForm.jsp");
	} else {
		
		//20. 로그인에 실패했다면...
		request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
		
		//21. 로그인페이지로 포워드함
		request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
	}
%>



