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
				<th width="50">No</th>
				<th width="200">부품번호</th>
				<th width="200">부품명</th>
				<th width="200">모델명</th>
				<th width="100">규격</th>
				<th width="50">단위</th>
				<th width="150">매입가격</th>
				<th width="150">매출가격</th>
				<th width="300">메모</th>
			</tr>
			<%
				int no = 0;
				try{
					String sql = "select * from part0110 order by partCode asc";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
						no++;
						String partCode = rs.getString(1);
						String partName = rs.getString(2);
						String model = rs.getString(3);
						String standard = rs.getString(4);
						String unit = rs.getString(5);
						String purchase = rs.getString(6);
						String sales = rs.getString(7);
						String memo = rs.getString(8);
					
						
						%>
						<tr>
							<td><%=no %></td>
							<td><%=partCode %></td>
							<td><%=partName %></td>
							<td><%=model %></td>
							<td><%=standard %></td>
							<td><%=unit %></td>
							<td><%=purchase %></td>
							<td><%=sales %></td>
							<td><%=memo %></td>
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