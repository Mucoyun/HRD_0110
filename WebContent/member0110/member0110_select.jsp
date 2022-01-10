<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 - 0110</title>
	<style>
		.s_table{
			text-align: center;
		}
		.s_table tr{
			height: 25px;
		}
	</style>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%@ include file="/header.jsp" %>
	<%@ include file="/nav.jsp" %>
	
	<section>
		<h2>고객 정보 조회 화면</h2>
		<table class="s_table">
			<tr>
				<th width="100">ID</th>
				<th width="100">성명</th>
				<th width="100">패스워드</th>
				<th width="100">성별</th>
				<th width="200">이메일</th>
				<th width="200">휴대폰</th>
				<th width="200">전화번호</th>
				<th width="200">주소</th>
				<th width="100">차량번호</th>
				<th width="150">차량종류</th>
			</tr>
			<%
				try{
					String sql = "select * from member0110 order by id asc";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
						String id = rs.getString(1);
						String name = rs.getString(2);
						String passwd = rs.getString(3);
						String gender = rs.getString(4);
						String email = rs.getString(5);
						String phone = rs.getString(6);
						String tel = rs.getString(7);
						String address = rs.getString(8);
						String carNumber = rs.getString(9);
						String carType = rs.getString(10);
						
						%>
						<tr>
							<td><%=id %></td>
							<td><%=name %></td>
							<td><%=passwd %></td>
							<td><%=gender %></td>
							<td><%=email %></td>
							<td><%=phone %></td>
							<td><%=tel %></td>
							<td><%=address %></td>
							<td><%=carNumber %></td>
							<td><%=carType %></td>
						</tr>
						<%
					}
				}catch(SQLException e){
					e.printStackTrace();	
				}
			%>
			
		</table>
	</section>
	<%@ include file="/footer.jsp" %>
</body>
</html>