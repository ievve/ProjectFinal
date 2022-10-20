<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>

<!--상단 레이아웃 -->
<jsp:include page="/layout/header.jsp"></jsp:include>
<title>마이페이지 수정</title>

</head>
<body>
	<div id="appSellerUpd">
		<div class="section" style="margin-top: 170px;">
			<div class="container" align="center">
				<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
				<br>
				<table class="board_detail">
					<colgroup>
						<col width="35%" />
						<col width="*" />
					</colgroup>
					<tr>
						<td>아이디</td>
						<td><input type="text" v-model="info.aId" name="aId" disabled></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" v-model="info.aName" name="aName"
							disabled></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" v-model="info.aTel" name="aTel" maxlength="11"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" v-model="info.aEmail" name="aEmail"></td>
					</tr>
					<tr>
						<td>사업장 이름</td>
						<td><input type="text" v-model="info.sName" name="sName" disabled></td>
					</tr>
					<tr>
						<td>사업자번호</td>
						<td><input type="text" v-model="info.sNum" name="sNum" disabled></td>
					</tr>
					<tr>
						<td>사업장 번호</td>
						<td><input type="text" v-model="info.sTel" name="sTel" maxlength="11"></td>
					</tr>
					<tr>
						<td>사업장 주소</td>
						<td><input type="text" v-model="info.sAdd" name="sAdd" disabled></td>
					</tr>
				</table>
				<br>
				<button @click="fnUpdate" class="btn btn-primary">수정</button>
				<button @click="fnDelete" class="btn btn-primary">탈퇴</button>
				<button onClick="location.href='/mypage_seller.do'"
					class="btn btn-primary">뒤로가기</button>
				<br><br>
				<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
			</div>
		</div>
	</div>
</body>

</html>

<!--하단 레이아웃 -->
<jsp:include page="/layout/footer.jsp"></jsp:include>

<script type="text/javascript">
	var appSellerUpd = new Vue({
		el : '#appSellerUpd',

		data : {
			list : [],
			aId : "${userIdSession}",
			info : {},
			aTel : "",
			aEmail : "",
		},
		methods : {
			fnGetList : function() {
				var self = this;
				var nparmap = {
						aId : self.aId
				};
				$.ajax({
					url : "/get_account.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.info = data.account;
					}
				});
			},
			
			fnUpdate : function() {
				var self = this;
				var nparmap = self.info;
				$.ajax({
					url : "/update_account.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("정보가 수정되었습니다")
						self.info = data.account;
						location.href = "/mypage_seller.do";
					}
				});
			},
			
			fnDelete : function() {
				var self = this;
				var nparmap = self.info;
				$.ajax({
					url : "/delete_account.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("회원이 탈퇴되었습니다.")
						self.info = data.account;
						location.href = "/logout";
					}
				});
			}
		}
	    , created: function () {
	    	this.fnGetList();
		}
	});
</script>