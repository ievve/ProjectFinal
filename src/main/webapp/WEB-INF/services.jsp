<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>

<!--상단 레이아웃 -->
<jsp:include page="/layout/header.jsp"></jsp:include>

<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/950f22d283.js"
	crossorigin="anonymous"></script>

<title>방내놓기</title>
</head>
<body>

	<div id="apphomeInsert" style="margin-top: 170px;">
		<div class="section">
			<div class="container">
				<div class="row justify-content-between" >
					<div class="contact-info">
						
				
							<!-- 종류 -->
							<div class="phone mt-4">
								<i class="fa-solid fa-circle-check"></i>
								<h4 class="mb-2">종류</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<select v-model="hChoice" name="hChoice" class="form-control">
									<optgroup label="집의 종류를 선택하세요">
										<option>아파트</option>
										<option>빌라</option>
										<option>주택</option>
									</optgroup>
								</select>
								<br>
							</div>

							<!-- 이름 -->
							<div class="address mt-2">
								<i class="fa-solid fa-user"></i>
								<h4 class="mb-2">이름</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hName" name="hName" v-model="hName" style="width: 100%;" class="form-control" placeholder="이름 입력">
								<br>
							</div>
							
							<!-- 주소 -->
							<div class="address mt-2">
								<i class="fa-solid fa-map-location-dot"></i>
								<h4 class="mb-2">주소</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hAdd" name="hAdd" v-model="hAdd" style="width: 100%;" class="form-control" placeholder="주소 입력">
							</div>

							<!-- 보증금/월세/관리비 -->
							<div class="open-hours mt-4">
								<i class="fa-solid fa-sack-dollar"></i>
								<h4 class="mb-2">보증금/월세/관리비</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hPrice" name="hPrice" v-model="hPrice"  style="width: 100%;" class="form-control" placeholder="보증금 및 매물금액 (만원)"> 
								<input id="hMo" name="hMo" v-model="hMo"  style="width: 100%;" class="form-control" placeholder="월세 (만원)">
								<input id="hAe" name="hAe" v-model="hAe"  style="width: 100%;" class="form-control" placeholder="관리비 (만원)">
							</div>

							<!-- 크기 -->
							<div class="email mt-4">
								<i class="fa-solid fa-chart-area"></i>
								<h4 class="mb-2">크기</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hRoomSize1" name="hRoomSize1" v-model="hRoomSize1" style="width: 100%;" class="form-control" placeholder="㎡"> 
								<input id="hRoomSize2" name="hRoomSize2" v-model="hRoomSize2" style="width: 100%;" class="form-control" placeholder="평 수">
							</div>

							<!-- 층 수 -->
							<div class="phone mt-4">
								<i class="fa-sharp fa-solid fa-stairs"></i>
								<h4 class="mb-2">층 수</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hHigh" name="hHigh" v-model="hHigh"  style="width: 100%;" class="form-control" placeholder="매물 층 수"> 
								<input id="hAllhigh" name="hAllhigh" v-model="hAllhigh" style="width: 100%;" class="form-control" placeholder="전체 층 수">
							</div>

							<!-- 방향 -->
							<div class="phone mt-4">
								<i class="fa-solid fa-signs-post"></i>
								<h4 class="mb-2">방향</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								
								<select v-model="hWay" class="form-control">
									<optgroup label="방향을 선택하세요">
										<option>남향</option>
										<option>남동향</option>
										<option>동향</option>
										<option>남서향</option>
										<option>서향</option>
										<option>북향</option>
									</optgroup>
								</select>
							</div>

							<!-- 입주 가능일 -->
							<div class="phone mt-4">
								<i class="fa-solid fa-calendar-days"></i>
								<h4 class="mb-2">입주 가능일</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hMoveIn" name="hMoveIn" v-model="hMoveIn" type="date" class="form-control">
							</div>

							<!-- 방구조 -->
							<div class="phone mt-4">
								<i class="fa-solid fa-house"></i>
								<h4 class="mb-2">방 구조</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br> 
								<input id="hRoomno" name="hRoomno" v-model="hRoomno" class="form-control" placeholder="방 개수 입력"> 
								<br> 
								<input id="hBathno" name="hBathno" v-model="hBathno" class="form-control" placeholder="욕실 수 입력">
							</div>

							<!-- 상세설명 -->
							<div class="phone mt-4">
								<i class="fa-solid fa-square-pen"></i>
								<h4 class="mb-2">상세 설명</h4>
								<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
								<br>
								<textarea id="hInfo" name="hInfo" v-model="hInfo" rows="5" cols="20" class="form-control" placeholder="추가 입력"></textarea>
							</div>

						<!-- 방구조 사진 -->
                  <form method="post" enctype="multipart/form-data">
                     <div class="phone mt-4">
                        <i class="fa-solid fa-image"></i>
                        <h4 class="mb-2">방 구조 사진</h4>
                        <p style="border: 0.5px solid rgb(52, 47, 114);"></p>
                        <br> 
                           <div class="button">
                                <label for="chooseFile">
                                    👉 방구조 사진 업로드 CLICK HERE! 👈
                                </label>
                            </div>
                        <input type="file" value="업로드" class="btn btn-primary"
                        name="hStructure" id="chooseFile" v-model = "hStructure"
                        accept="image/*" onchange="loadFile(this)">
                     </div>
                  </form>
                  <!-- 방사진 업로드 최대 5개 -->
                  <form method="post" enctype="multipart/form-data">
                     <div class="phone mt-4">
                        <i class="fa-solid fa-image"></i>
                        <h4 class="mb-2">매물 사진(최대 5개)</h4>
                        <p style="border: 0.5px solid rgb(52, 47, 114);"></p>
                        <br> 
                           <div class="button">
                                <label for="chooseFile">
                                    👉 매물 사진 업로드 CLICK HERE! 👈
                                </label>
                            </div>
                        <input type="file" value="업로드" class="btn btn-primary"
                        name="hStructure2" id="chooseFile" v-model = "hStructure2"
                        accept="image/*" onchange="addFile(this)" multiple>
                     </div>
                  </form>
                  <br><br>
                  <!-- 방 업로드 끝-->
						
						<input type="button" @click="fnSave" value="작성 완료" class="btn btn-primary" style="width: auto; float: center; margin-left: 45%;">
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>

<script type="text/javascript">
	var apphomeInsert = new Vue({
		el : '#apphomeInsert',
		data : {
			aId : "${userIdSession}",
			hChoice : "",
			hName : "",
			hPrice : "",
			hMo : "",
			hAe : "",
			hAdd : "",
			hHigh : "",
			hAllhigh : "",
			hRoomno : "",
			hBathno : "",
			hWay : "",
			hRoomSize1 : "",
			hRoomSize2 : "",
			hInfo : "",
			hMoveIn : "",
			hStructure : "",
			hStructure2 : ""
		
		},

		methods : {

			fnSave : function() {
				var self = this;
				var nparmap = {
					aId : self.aId,
					hChoice : self.hChoice
				};

				var nparmap2 = {
					aId : self.aId,
					hName : self.hName,
					hPrice : self.hPrice,
					hMo : self.hMo,
					hAe : self.hAe,
					hAdd : self.hAdd,
					hHigh : self.hHigh,
					hAllhigh : self.hAllhigh,
					hRoomno : self.hRoomno,
					hBathno : self.hBathno,
					hWay : self.hWay,
					hRoomSize1 : self.hRoomSize1,
					hRoomSize2 : self.hRoomSize2,
					hInfo : self.hInfo,
					hMoveIn : self.hMoveIn,
					hStructure : self.hStructure,
					hStructure2 : self.hStructure2
			
				};

				// 빈 값 체크
				if (this.hChoice == "" || 
					this.hName == "" ||
					this.hPrice == "" ||
					this.hAdd == "" ||
					this.hHigh == "" ||
					this.hAllhigh == "" ||
					this.hRoomno == "" ||
					this.hBathno == "" ||
					this.hWay == "" ||
					this.hRoomSize1 == "" ||
					this.hRoomSize2 == "" ||
					this.hInfo == "" ||
					this.hMoveIn == "" ) {
					alert("빈 값을 체크해주세요.");
					return false;
				}
				
				if (this.hMo == "") {
					this.hMo = 0;
				}
				
				if (this.hAe == "") {
					this.hAe = 0;
				}
				
				$.ajax({
					url : "/add_home.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
					}
				});
				
				$.ajax({
					url : "/add_home_detail.dox",
					dataType : "json",
					type : "POST",
					data : nparmap2,
					success : function(data) {
						alert("저장되었습니다.");
						location.href = "/index.do";
					}
				});
			}
		},
		created : function() {

		}
	});
</script>

<!--하단 레이아웃 -->
<jsp:include page="/layout/footer.jsp"></jsp:include>

<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/tiny-slider.js"></script>
<script src="js/aos.js"></script>
<script src="js/navbar.js"></script>
<script src="js/counter.js"></script>
<script src="js/custom.js"></script>
