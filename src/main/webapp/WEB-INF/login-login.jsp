<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>로그인</title>
<style>
.loginform{
	width: 500px;
	height: 400px;
	border: 2px solid rgb(52, 47, 114);
	border-radius: 10px;
}
</style>
<!--헤더 레이아웃 -->
<jsp:include page="/layout/header.jsp"></jsp:include>
</head>
<body>
	<div class="section" align="center" style="margin-top: 170px;">
		<div id="app" >
		
			<div class="container" style="margin-top:30px;">
				<div class="contact-info">
					<form action="login-login" method="post">

						<div class="address mt-2">
							<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
							<br> <br> 
							<input class="form-control" type="text" id="aId" name="aId" v-model="aId" 
									placeholder="아이디를 입력해주세요." style="width:40%;">
							<input class="form-control" type="password" id="passwd" name="passwd" v-model="passwd" 
									placeholder="비밀번호를 입력해주세요." style="width:40%;">
						</div>
						<br> 
						<button @click="fnLogin" class="btn btn-primary">로그인</button>
					</form>
					<button @click="fnSign" class="btn btn-primary">회원가입</button>
				</div>
				<br>
				<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
				
			</div>
		</div>
	</div>
</body>
</html>

<!-- 하단 레이아웃 -->
<jsp:include page="/layout/footer.jsp"></jsp:include>

<script type="text/javascript">
	var app = new Vue({
		el : '#app',

		data : {
			aId : "",
			passwd : "",
			aName : "",
			aTel : "",
			aEmail : "",
			status : "",
			sName : "",
			sNum : "",
			sTel : "",
			sAdd : ""
		},

		methods : {

			fnLogin : function() {
				var self = this;

				var nparmap = {
					aId : self.aId,
					passwd : self.passwd,
					aName : self.aName,
					aTel : self.aTel,
					aEmail : self.aEmail,
					sName : self.sName,
					sNum : self.sNum,
					sTel : self.sTel,
					sAdd : self.sAdd,
					status : self.status
				};

				// 아이디 체크
				if (this.aId == "") {
					alert("아이디를 입력해주세요.");
					location.href = "/login.do";
					return false;
				}

				// 비밀번호 체크
				if (this.passwd == "") {
					alert("비밀번호를 입력해주세요.");
					location.href = "/login.do";
					return false;
				}

				var aId = $('#aId').val();
				var passwd = $('#passwd').val();

				// 비밀번호 확인
				if (aId != undefined && aId != "") {
					if (passwd != undefined && passwd != "") {
						$.ajax({
							url : '/selectLogin.dox',
							type : 'post',
							data : {
								aId : aId,
								passwd : self.passwd,
								aName : self.aName,
								aTel : self.aTel,
								aEmail : self.aEmail,
								sName : self.sName,
								sNum : self.sNum,
								sTel : self.sTel,
								sAdd : self.sAdd,
								status : self.status
							},
							success : function(cnt2) {
								console.log(self.data);
								if (cnt2 == 0) {
									alert("아이디와 비밀번호를 확인해주세요.");
									return false;
								} else {
									location.href = "/index.do";
								}
							},
							error : function() {
								alert("에러입니다");
								return false;
							}
						});
					}
				}
			},

			fnSign : function() {
				location.href = "/signup.do";
			}
		},
		created : function() {

		}
	});
</script>