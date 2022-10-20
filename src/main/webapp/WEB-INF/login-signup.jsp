<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>회원가입</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!--상단 레이아웃 -->
<jsp:include page="/layout/header.jsp"></jsp:include>

</head>
<body style="margin-top: 170px;">
	<div class="section">
		<div id="app" align="center">
			<div class="container" style="margin-top:30px;">
				<div class="contact-info">
					<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
					<br> <br> 
					<table>
						<tr>
							<td style="padding-right:10px;" align="right">종류</td>
							<td>
								<input type="radio" id="status1" name="status2" value="B" v-model="status"> 
								<span name="status1">사용자</span> 
							</td>
							<td>
							<input type="radio" id="status2" name="status2" value="F" v-model="status"> 
								<span name="status2">중개인</span>
							</td>	
						</tr>	
						
						<tr>
							<td style="padding-right:10px;" align="right">아이디</td>
							<td>
								<input class="form-control" type="text" id="aId" name="aId" v-model="aId" 
									placeholder="한글 사용 불가">
							</td>
							<td>
								<button onclick="checkId()" class="btn btn-primary" >아이디체크</button>
							</td>
						</tr>
						
						<tr>
							<td style="padding-right:10px;" align="right">비밀번호</td>
							<td>
								<input class="form-control" type="password" id="passwd" name="passwd" v-model="passwd" 
									placeholder="영어 + 숫자 8~16자리">
							</td>
						</tr>	
											
						<tr>
							<td style="padding-right:10px;" align="right">이름</td>
							<td>
								<input class="form-control" type="text" id="aName" name="aName" v-model="aName" 
									placeholder="한글만 사용 가능">
							</td>
						</tr>	
						
						<tr>
							<td style="padding-right:10px;" align="right">전화번호</td>
							<td>
								<input class="form-control" type="text" id="aTel" name="aTel" v-model="aTel"
									placeholder="하이픈(-)없는 숫자" maxlength="11">
							</td>
						</tr>	

						<tr>
							<td style="padding-right:10px;" align="right">이메일</td>
							<td>
								<input class="form-control" type="text" id="aEmail" name="aEmail" v-model="aEmail" 
							placeholder="이메일 형식에 맞게 입력">
							</td>
						</tr>	
					</table>	
										
					<div v-if="status == 'F'">
					
						<br><p style="border: 0.3px dashed rgb(52, 47, 114); width:500px;"></p><br>
						
						<table>
							<tr>
								<td style="padding-right:10px;" align="right">사업장이름</td>
								<td>
									<input class="form-control" type="text" id="sName" name="sName" v-model="sName"
										placeholder="사업장 이름 입력"></td>
								</td>
							</tr>
							
							<tr>
								<td style="padding-right:10px;" align="right">사업자번호</td>
								<td>							
									<input class="form-control" type="text" id="sNum" name="sNum" v-model="sNum"
										placeholder="하이픈(-)없는 숫자" maxlength="10">
								</td>
								<td>
									<button @click="fnSelCheck" class="btn btn-primary">사업자번호체크</button>
								</td>
							</tr>
							
							<tr>
								<td style="padding-right:10px;" align="right">사업장전화번호</td>
								<td>
									<input class="form-control" type="text" id="sTel" name="sTel" v-model="sTel"
										placeholder="하이픈(-)없는 숫자" maxlength="11">
								</td>
							</tr>
							
							<tr>
								<td style="padding-right:10px;" align="right">사업장주소</td>
								<td>
									<input class="form-control" type="text" id="sAdd" name="sAdd" v-model="sAdd"
										placeholder="주소 입력">
								</td>
							<tr>
						</table>
					</div>
					
					<br>
					<button @click="fnSave" class="btn btn-primary">저장</button>
					<br><br>
					<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

<!--하단 레이아웃 -->
<jsp:include page="/layout/footer.jsp"></jsp:include>

<script type="text/javascript">
	function checkId() {
		var aId = $('#aId').val();
		console.log(aId);
		if (aId != undefined && aId != "") {
			$.ajax({
				url : '/selectId.dox',
				type : 'post',
				data : {
					aId : aId
				},
				success : function(cnt) {
					console.log(self.data);
					if (cnt == 0) {
						alert("사용가능한 아이디입니다.");
					} else {
						alert("존재하는 아이디입니다.");
						$('#aId').val('');
					}
				},
				error : function() {
					alert("에러입니다");
				}
			});
		} else {
			alert("아이디를 입력해주세요.");
		}
	};

	var app = new Vue({
		el : '#app',
		data : {
			aId : "",
			passwd : "",
			aName : "",
			aTel : "",
			aEmail : "",
			status : "B",
			sName : "",
			sNum : "",
			sTel : "",
			sAdd : ""
			
		},

		methods : {

			fnSave : function() {
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
				var idreg = /^[a-z]+[a-z0-9]{4,8}$/;
				if (!idreg.test(this.aId) || this.aId == "") {
					alert("아이디를 체크해주세요.");
					return false;
				}

				// 비밀번호 체크
				var pwreg = /^[a-z]+[a-z0-9]{8,16}$/;
				if (!pwreg.test(this.passwd) || this.passwd == "") {
					alert("비밀번호를 체크해주세요.");
					return false;
				}

				// 이름 체크
				var namereg = /^[가-힣]{2,5}$/;
				if (!namereg.test(this.aName) || this.aName == "") {
					alert("이름을 체크해주세요.");
					return false;
				}

				// 전화번호 체크
				var phonereg = /^[0-11]{11}$/;
				if (!phonereg.test(this.aTel) || this.aTel == "") {
					alert("전화번호을 체크해주세요.");
					return false;
				}

				// 이메일 체크
				//var emailreg = /^[a-z]+[a-z0-9]{2,10}$/;
				if (/* !emailreg.test(this.aEmail) ||  */this.aEmail == "") {
					alert("이메일을 체크해주세요.");
					return false;
				}

				if (this.status == 'F') {

					// 아이디 체크
					if (this.sName == "") {
						alert("사업장 이름을 체크해주세요.");
						return false;
					}

					// 사업자번호 체크
					var phonereg = /^[0-11]{10}$/;
					if (!phonereg.test(this.sNum) || this.sNum == "") {
						alert("사업자번호를 체크해주세요.");
						return false;
					}

					// 전화번호 체크
					var phonereg = /^[0-11]{11}$/;
					if (!phonereg.test(this.sTel) || this.sTel == "") {
						alert("사업장 전화번호을 체크해주세요.");
						return false;
					}
					
					<!-- this.sAdd = self.sAdd + self.sAdd_detail; -->

				}

				

				$.ajax({
					url : "/add_account.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("저장되었습니다.");
						location.href = "/index.do";
					}
				});
			},

			fnSelCheck : function() {
				location.href = "/sellerCheck.do";
			}
		},
		created : function() {

		}
	});
</script>