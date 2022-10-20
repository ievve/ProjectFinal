<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!--상단 레이아웃 -->
<jsp:include page="/layout/header.jsp"></jsp:include>

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/950f22d283.js"
	crossorigin="anonymous"></script>

<title>마이페이지</title>
</head>
<body>
	<div id="appSeller" style="margin-top:170px;">
		<div class="section">
			<div class="container">
				<div class="contact-info">
					<div class="address mt-2">
						<i class="fa-solid fa-user"></i>
						<h4>회원정보
							<span>
								<input type="submit" value="수정" class="btn btn-primary" 
									style="float: right; margin-top: -1%; width: auto;"
									onClick="location.href='/mypage_sellerUpd.do'">
							</span>
						</h4>
						<br>
						<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
						<br>
						<table class="board_detail" align="center">
							<colgroup>
								<col width="35%" />
								<col width="*" />
							</colgroup>
							<tr>
								<td>아이디</td>
								<td><input type="text" v-model="info.aId" name="aId" readonly></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text" v-model="info.aName" name="aName"
									readonly></td>
							</tr>
							<tr>
								<td>전화번호</td>
								<td><input type="text" v-model="info.aTel" name="aTel" readonly></td>
							</tr>
							<tr>
								<td>이메일</td>
								<td><input type="text" v-model="info.aEmail" name="aEmail" readonly></td>
							</tr>
							<tr>
								<td>사업장 이름</td>
								<td><input type="text" v-model="info.sName" name="sName" readonly></td>
							</tr>
							<tr>
								<td>사업자번호</td>
								<td><input type="text" v-model="info.sNum" name="sNum" readonly></td>
							</tr>
							<tr>
								<td>사업장 번호</td>
								<td><input type="text" v-model="info.sTel" name="sTel" readonly></td>
							</tr>
							<tr>
								<td>사업장 주소</td>
								<td><input type="text" v-model="info.sAdd" name="sAdd" readonly></td>
							</tr>
						</table>
					</div>					

					<div class="address mt-2">
						<i class="fa-solid fa-house"></i>
						<h4>올린매물</h4>
						<br>
						<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
						<br>
						<table align="center">
							<tr style="border-bottom: 0.5px solid rgb(52, 47, 114);;" align="center">
								<td style="padding:5px 30px;">분양번호</td>
								<td style="padding:5px 30px;">종류</td>
								<td style="padding:5px 30px;">위치</td>
								<td style="padding:5px 30px;">판매여부</td>
								<td style="padding:5px 30px;">판매일</td>
							</tr>
							<tr v-for="(item, index) in home" style="border-bottom: 0.5px solid rgb(52, 47, 114);" align="center">
								<td style="padding:5px 30px;">
									<a href="javascript:;" @click="fnView(item)">{{item.hNo}}</a>
								</td>
								<td style="padding:5px 30px;">{{item.hChoice}}</td>
								<td style="padding:5px 30px;">{{item.hAdd}}</td>
								<td>
									<span v-if="item.saleFlag == 'Y'">판매완료</span> 
									<span v-else>대기</span> 
								</td>
								<td  style="padding:5px 30px;">{{item.saledate}}</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<!--하단 레이아웃 -->
<jsp:include page="/layout/footer.jsp"></jsp:include>

<script type="text/javascript">
	var appSeller = new Vue({
		el : '#appSeller',

		data : {
			list : [],
			aId : "${userIdSession}",
			info : {},
			home : {},
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
						self.home = data.home;
						console.log(self.home)
					}
				});
			},
			
			fnView : function(item) {
				var self = this;
				self.pageChange("./index.do", {
					hNo : item.hNo
				});
			},
			
			pageChange : function(url, param) {
				var target = "_self";
				if (param == undefined) {
					//	this.linkCall(url);
					return;
				}
				var form = document.createElement("form");
				form.name = "dataform";
				form.action = url;
				form.method = "post";
				form.target = target;
				for ( var name in param) {
					var item = name;
					var val = "";
					if (param[name] instanceof Object) {
						val = JSON.stringify(param[name]);
					} else {
						val = param[name];
					}
					var input = document.createElement("input");
					input.type = "hidden";
					input.name = item;
					input.value = val;
					form.insertBefore(input, null);
				}
				document.body.appendChild(form);
				form.submit();
				document.body.removeChild(form);
			}
		},
		created : function() {
			this.fnGetList();
		}
	});
</script>