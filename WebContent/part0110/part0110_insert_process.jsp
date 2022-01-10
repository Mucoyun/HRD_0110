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
		String partCode = request.getParameter("partCode");
		String partName = request.getParameter("partName");
		String model = request.getParameter("model");
		String standard = request.getParameter("standard");
		String unit = request.getParameter("unit");
		String purchase = request.getParameter("purchase");
		String sales = request.getParameter("sales");
		String memo = request.getParameter("memo");
	
		try{
			String sql = "insert into part0110 values(?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, partCode);
			pstmt.setString(2, partName);
			pstmt.setString(3, model);
			pstmt.setString(4, standard);
			pstmt.setString(5, unit);
			pstmt.setString(6, purchase);
			pstmt.setString(7, sales);
			pstmt.setString(8, memo);
			
			pstmt.executeUpdate();
			
			%><script>
				alert("등록이 완료되었습니다.");
				location.href="/HRD_0110/part0110/part0110_select.jsp";
			</script><%
			
		}catch(SQLException e){
			e.printStackTrace();	
		}
	%>
</body>
</html>