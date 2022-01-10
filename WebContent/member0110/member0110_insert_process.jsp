<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 - 0110</title>
	
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String passwd = request.getParameter("passwd");
		String gender = request.getParameter("gender");
		
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String email = email1+"@"+email2;
		
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String phone = phone1+"-"+phone2+"-"+phone3; 
		
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1+"-"+tel2+"-"+tel3;
		
		String address = request.getParameter("address");
		String carNumber = request.getParameter("carNumber");
		String carType = request.getParameter("carType");
	
	
		try{
			String sql = "insert into member0110 values(?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, passwd);
			pstmt.setString(4, gender);
			pstmt.setString(5, email);
			pstmt.setString(6, phone);
			pstmt.setString(7, tel);
			pstmt.setString(8, address);
			pstmt.setString(9, carNumber);
			pstmt.setString(10, carType);
			
			pstmt.executeUpdate();
			
			%><script>
				alert("등록이 완료되었습니다.");
				location.href="/HRD_0110/member0110/member0110_select.jsp";
			</script><%
			
		}catch(SQLException e){
			e.printStackTrace();	
		}
	%>
</body>
</html>