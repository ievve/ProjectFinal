<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>사업자번호 조회</title>

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="js/jquery.js"></script>
<script src="js/jquery.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
	<table border="1">
		<th colspan="2">
			<h2>사업자번호 등록조회</h2>
		</th>
		<tr>
			<td>사업자번호 입력 : &nbsp;</td>
			<td><input type="text" id="num" value="" maxlength="10">
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;"><input type="button"
				onclick="Searching();" value="확인하기"></td>
		</tr>
	</table>
</body>

</html>

<script>
	function Searching() {
		var data = {
			"b_no" : [ $('#num').val() ]
		// 사업자번호 "xxxxxxx" 로 조회 시,
		};
		$.ajax({
					url : "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=QBVtBIgwuYuKrvSHbPoO5jMSWdjnpHL1omAXD8lENlTGFxuMmiziVA0QCc4mkXBw7Lxk5rSJz%2Baj3sZBD8w9Ig%3D%3D", // serviceKey 값을 xxxxxx에 입력
					type : "POST",
					data : JSON.stringify(data), // json 을 string으로 변환하여 전송
					dataType : "JSON",
					contentType : "application/json",
					accept : "application/json",
					success : function(result) {
						console.log(result);
					},
					error : function(result) {
						console.log(result.responseText); //responseText의 에러메세지 확인
					}
				});
	}
</script>