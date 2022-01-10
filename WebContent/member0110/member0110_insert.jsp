<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 - 0110</title>
	<style>
		.i_table tr{
			height: 32px;
		}.i_table th{
			width: 200px;
		}.i_table td{
			width: 800px;
		}.i_table input[type="text"]{
			height: 30px;
			width: 250px;
		}.i_table input[type="password"]{
			height: 30px;
			width: 250px;
		}.i_table select{
			height: 30px;
			width: 200px;
		}.i_table input[type="radio"]{
			padding: 0 20px;
		}
		
		.i_table #btntd{
			text-align: center;
		}.i_table button{
			height: 30px;
			width: 200px;
		}.i_table .Address{
			width: 500px !important;
		}
	</style>
	<script>
		function check() {
			if(document.m_iu_form.name.value==""){
				alert("이름을 입력하세요.");
				document.m_iu_form.name.focus();
			}else if(document.m_iu_form.passwd.value==""){
				alert("비밀번호를 입력하세요.");
				document.m_iu_form.passwd.focus();
			}else if(document.m_iu_form.repasswd.value==""){
				alert("비밀번호 확인을 입력하세요.");
				document.m_iu_form.repasswd.focus();
			}else if(document.m_iu_form.passwd.value!=document.m_iu_form.repasswd.value){
				alert("비밀번호가 일치하지 않습니다.");
				document.m_iu_form.repasswd.focus();
			}else{
				document.m_iu_form.submit();
			}
		}
	
		function retry() {
			document.m_iu_form.reset();
		}
	</script>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%@ include file="/header.jsp" %>
	<%@ include file="/nav.jsp" %>
	<%
		int id_seq = 0;
		try{
			String sql = "select id_seq0110.nextval from dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()){
				id_seq = rs.getInt(1);
			}else{
				System.out.println("no seq");
			}
		}catch(SQLException e){
			e.printStackTrace();	
		}
	%>
	<section>
		<h2>고객 정보 등록 화면</h2>
		<form name="m_iu_form" method="post" action="member0110_insert_process.jsp">
			<table class="i_table">
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" value="<%=id_seq %>" readonly>자동증가</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="passwd"></td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="repasswd"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td>
						<input type="radio" name="gender" value="남" checked> 남
						<input type="radio" name="gender" value="여"> 여
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
						<input type="text" name="email1"> @ 
						<select name="email2">
							<option value="naver.com" selected>naver.com</option>
							<option value="gamil.com">gamil.com</option>
							<option value="nate.com">nate.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>핸드폰</th>
					<td>
						<select name="phone1">
							<option value="010" selected>010</option>
							<option value="011">011</option>
							<option value="070">070</option>
						</select> -
						<input type="text"  name="phone2" maxlength="4"> -
						<input type="text" name="phone3" maxlength="4">
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>
						<input type="text" name="tel1" maxlength="3"> -
						<input type="text" name="tel2" maxlength="4"> -
						<input type="text" name="tel3" maxlength="4">
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input class="Address" type="text" name="address"></td>
				</tr>
				<tr>
					<th>차량번호</th>
					<td><input type="text" name="carNumber"></td>
				</tr>
				<tr>
					<th>차량종류</th>
					<td><input type="text" name="carType"></td>
				</tr>
				<tr>
					<td colspan="2" id="btntd">
						<button type="button" onclick="check()">고객등록</button>
						<button type="button" onclick="retry()">다시작성</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="/footer.jsp" %>
</body>
</html>