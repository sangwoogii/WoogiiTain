package membership;

import common.JDBConnect;

public class memberDAO extends JDBConnect{
	
	// 6.DB에 연결
	// CRUD에 해당하는 SQL쿼리문을 실행
	// 실행한 결과를 DTO객체에 담아서 반환하는 작업
	
	// 7.데이터베이스로의 연결이 완료된 MemberDAO객체를 생성
	// JDBConnect의 생성자2을 상속받아 사용
	public memberDAO(String drv, String url, String id, String pw){
		super(drv, url, id, pw);
	}
	
	// 9.작성한 아이디/패스워드와 일치하는 회원 정보를 반환
	public memberDTO getMemberDTO(String uid, String upass) {
		
		//10. dto객체 생성
		memberDTO dto = new memberDTO();
		
		//11.아이디와 패스워드가 member테이블에 있는지 확인하기위해
		//쿼리문 작성
		String query = "SELECT * FROM member WHERE id=? AND pwd=?";
		
		try {
			
			//12. 동적쿼리문 작성
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid); //첫번째 인파라미터에 값 설정
			psmt.setString(2, upass); //두번째 인파라미터에 값 설정
			rs=psmt.executeQuery(); //쿼리 실행
			
			//13. 결과값 반환
			if (rs.next()) { //rs에 다음값이 있으면
				//rs의 값을 getString메서드로 가져와 dto객체에 저장
				dto.setId(rs.getString("id")); 
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setAddress_num(rs.getInt("address_num"));
				dto.setAddress(rs.getString("address"));
				dto.setPhone(rs.getString("phone"));				
				dto.setRegidate(rs.getDate("regidate"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
		
		return dto; //14. dto객체 반환
	}
	
	
}



