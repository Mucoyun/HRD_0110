<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>윤원태 - 0110</title>
	<style>
		section .hi{
			font-weight: bold;
		}
		section hr{
			border: 1px solid gray;
		}
		section div{
			width: 65%;
		}
		section img{
			width: 40%;
			vertical-align: top;
		}section #ty{
			text-align: center;
			color: blue;
			width: 100%; height: 5%;	
			padding-top: 5%;
			font-weight: bold;		
		}
	</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<%@ include file="nav.jsp" %>
	<section>
		<p class="hi">반갑습니다.</p>
		<p class="hi">카센터 붕붕이나라입니다.</p>
		<hr>
		<div>
			<img src="/HRD_0110/img/car.jpg" alt="자동차사진" align="left">
			안녕하십니까?<br>
			카센터 붕붕이나라는 부산시 부산진구 양정동에 위치하고 있습니다.<br>
			저희 붕붕이나라는 고객의 다양한 요구에 부합되는 
			최고의 서비스와 경쟁력 있는 가격으로 고객 만족을 
			실현하기 위해 모든 임직원이 다함께 노력할 것을 
			약속드립니다.<br>
			항상 한발 앞서가는 고객 만족의 경영을 실천하며,
			고객과의 약속을 가장 중요시 하겠습니다.<br>
			고객 여러분의 끊임없는 격려와 관심으로 성원해 주시길 부탁드립니다.
		</div>
		<p id="ty">감사합니다.</p>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>