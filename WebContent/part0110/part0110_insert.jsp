<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 - 0110</title>
	<style>
		.p_i_table tr{
			height: 32px;
		}.p_i_table th{
			width: 200px;
		}.p_i_table td{
			width: 400px;
		}.p_i_table input[type="text"]{
			height: 30px;
			width: 800px;
		}.p_i_table input[type="number"]{
			height: 30px;
			width: 800px;
		}.p_i_table .soin{	
			width: 300px !important;
		}
		.p_i_table textarea{
			height: 100px;
			width: 800px;
		}
		.p_i_table #btntd{
			text-align: center;
		}.p_i_table button{
			height: 30px;
			width: 200px;
		}
	</style>
	<script>
		function check() {
			if(document.p_iu_form.partCode.value==""){
				alert("부품번호를 입력하세요.");
				document.p_iu_form.partCode.focus();
			}else if(document.p_iu_form.partName.value==""){
				alert("부품명을 입력하세요.");
				document.p_iu_form.partName.focus();
			}else{
				document.p_iu_form.submit();
			}
		}
	
		function retry() {
			document.p_iu_form.reset();
		}
	</script>
</head>
<body>
	<%@ include file="/DBConn.jsp" %>
	<%@ include file="/header.jsp" %>
	<%@ include file="/nav.jsp" %>
	<section>
		<h2>고객 정보 등록 화면</h2>
		<form name="p_iu_form" method="post" action="part0110_insert_process.jsp">
			<table class="p_i_table">
				<tr>
					<th>부품번호</th>
					<td colspan="3"><input type="text" name="partCode"></td>
				</tr>
				<tr>
					<th>부품명</th>
					<td colspan="3"><input type="text" name="partName"></td>
				</tr>
				<tr>
					<th>모델명</th>
					<td colspan="3"><input type="text" name="model"></td>
				</tr>
				<tr>
					<th>규격</th>
					<td colspan="3"><input type="text" name="standard"></td>
				</tr>
				<tr>
					<th>단위</th>
					<td colspan="3"><input type="text" name="unit"></td>
				</tr>
				<tr>
					<th>매입가</th>
					<td><input class="soin" type="number" name="purchase"></td>
					<th>매출가</th>
					<td><input class="soin" type="number" name="sales"></td>
				</tr>
				<tr>
					<th>메모</th>
					<td colspan="3">
						<textarea name="memo" rows="10" cols="6"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="4" id="btntd">
						<button type="button" onclick="check()">부품등록</button>
						<button type="button" onclick="retry()">다시작성</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	<%@ include file="/footer.jsp" %>
</body>
</html>