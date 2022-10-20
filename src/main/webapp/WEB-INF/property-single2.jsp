<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!doctype html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<script src="../js/jquery.js"></script>
		<link rel="stylesheet" href="css/css/login.css">
		<script src="login.js"></script>

		<meta charset="utf-8"> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="Untree.co">
		<link rel="shortcut icon" href="img/favicon.png">

		<meta name="description" content="" />
		<meta name="keywords" content="bootstrap, bootstrap5" />

		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
			rel="stylesheet">


		<link rel="stylesheet" href="fonts/icomoon/style.css">
		<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

		<link rel="stylesheet" href="css/css/tiny-slider.css">
		<link rel="stylesheet" href="css/css/aos.css">
		<link rel="stylesheet" href="css/css/style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
		<!-- 	<script src="../js/apiTest.js"></script> -->

		<title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>
	</head>

	<body>

		<div class="site-mobile-menu site-navbar-target">
			<div class="site-mobile-menu-header">
				<div class="site-mobile-menu-close">
					<span class="icofont-close js-menu-toggle"></span>
				</div>
			</div>
			<div class="site-mobile-menu-body"></div>
		</div>

		<nav class="site-nav" style="background:#5467a5">
			<div class="container">
				<div class="menu-bg-wrap">
					<div class="site-navigation">
						<a href="index.do" class="logo m-0 float-start"><img src="images/복덕빵.PNG" height="100"
								width="230"></a>

						<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
							<li><a href="index.do">분양</a></li>
							<li class="has-children active">
							<li><a href="properties.do">지도</a></li>
							<li><a href="services.do">방 내놓기</a></li>
							<li><a href="about.do">공지사항</a></li>
							<li><a href="contact.do">게시판</a></li>
							<div class="col-12 mb-3">
								<a href="mypageB.do" class="btn btn-primary py-2 px-3"
									style="width: auto; float:right; margin-top: 2%;">마이 페이지</a>
							</div>
						</ul>

						<a href="#"
							class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
							data-toggle="collapse" data-target="#main-navbar">
							<span></span>
						</a>

					</div>
				</div>
			</div>
		</nav>
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">분양</h1>

					<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
						<ol class="breadcrumb text-center justify-content-center">
							<li class="breadcrumb-item "><a href="index.html">Home</a></li>
							<li class="breadcrumb-item active text-white-50" aria-current="page">Properties</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
		<div class="section">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-lg-7">
					</div>
				</div>

				<h1>빌라</h1>

				<p style="border:0.5px solid rgb(52, 47, 114);">
				<div class="row" style="margin-bottom:5%">
					<div class="col-md-4" data-aos="fade-up" data-aos-delay="0">
						<img src="https://landthumb-phinf.pstatic.net/20171221_167/apt_realimage_1513847821704WRTnc_JPEG/70beb31f334a39cab44f4aef92b6c125.JPG?type=m1024" alt="Image" class="img-fluid">
					</div>
					<div class="col-md-4 mt-lg-5" data-aos="fade-up" data-aos-delay="100">
						<img src="https://landthumb-phinf.pstatic.net/20171221_164/apt_realimage_15138478160202jUy8_JPEG/e0a10c11318165b9fac175e3512dd495.JPG?type=m1024" alt="Image" class="img-fluid">
					</div>
					<div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
						<img src="https://landthumb-phinf.pstatic.net/20171221_294/apt_realimage_1513847817935gLBBC_JPEG/bda361634151b501ea1d5f7b46cc9732.JPG?type=m1024" alt="Image" class="img-fluid">
					</div>
				</div>

				<div id="map" style="width:1400px; height:350px;"></div>

				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=46a18bb4dc05e6c7dc969df7b1b3cf7e&libraries=services"></script>
				<script>
					var staticMapContainer = document.getElementById('map'), // 이미지 지도를 표시할 div 
						staticMapOption = {
							marker: {
								text: '청운벽산빌리지', // 마커와 함께 표시할 텍스트
								position: new kakao.maps.LatLng(37.590919, 126.968834) // 좌표가 없으면 지도 중심에 마커가 표시된다
							},
							center: new kakao.maps.LatLng(37.590271, 126.967697), // 이미지 지도의 중심 좌표
							level: 8, // 이미지 지도의 확대 레벨
							mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
						};

				// 이미지 지도를 생성한다
				var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
				</script>
				<div id="api"> 
					<div class="col-lg-4" style="width: 100%;">
						<div style="border:0.5px solid rgb(102, 99, 99); margin-bottom: 10px;"></div>
						<h3>상세정보</h3>
						<div style="border:0.5px solid rgb(102, 99, 99); margin-bottom: 30px;"></div>



						<table class="tg" style="width:100%;margin-top: 5%;">
								<tr style="height: 82px;text-align: center;">
									<th class="tg-0lax">단지명</th>
									<th class="tg-0lax">호</th>
									<th class="tg-0lax">공시가격</th>
									<th class="tg-0lax">공동주택구분명</th>
									<th class="tg-0lax">법정동명</th>
									<th class="tg-0lax">층명</th>
									<th class="tg-0lax">전용면적</th>
									<th class="tg-0lax">기준년도</th>

								</tr>
							
		
							
								
								<tr v-for="(item, index) in apiList">									
									<td class="tg-0lax">{{item.aphusNm}}</td>
									<td class="tg-0lax">{{item.hoNm}}</td>
									<td class="tg-0lax">{{item.pblntfPc}}</td>
									<td class="tg-0lax">{{item.aphusSeCodeNm}}</td>
									<td class="tg-0lax">{{item.ldCodeNm}}</td>
									<td class="tg-0lax">{{item.floorNm}}</td>
									<td class="tg-0lax">{{item.prvuseAr}}</td>
									<td class="tg-0lax">{{item.stdrYear}}</td>

									
								</tr>
		
							
		
						</table>


					</div>
				</div>

				



			</div>

			<!-- <div class="hero page-inner overlay" style="background-image: url('images/hero_bg_1.jpg');"> -->

			<!-- <div class="container">
		<div class="row justify-content-center align-items-center">
			<div class="col-lg-9 text-center mt-5">
				<h1 class="heading" data-aos="fade-up"></h1>

				<nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
					<ol class="breadcrumb text-center justify-content-center">
						<li class="breadcrumb-item "><a href="index.html">Home</a></li>
						<li class="breadcrumb-item active text-white-50" aria-current="page">Contact</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
</div> -->



		</div> <!-- /.untree_co-section -->



		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/tiny-slider.js"></script>
		<script src="js/aos.js"></script>
		<script src="js/navbar.js"></script>
		<script src="js/counter.js"></script>
		<script src="js/custom.js"></script>
	</body>

	</html>
	<script>
		//api authURL : URL을 상수로 선언. 보통은 properies에 선언하여 사용함
		let apiURL = 'http://apis.data.go.kr/1611000/nsdi/ApartHousingPriceService/attr/getApartHousingPriceAttr';
		//api authKey : 인증키를 상수로 선언. 보통은 properies에 선언하여 사용함
		let apiKey = '26Jt6WG3w3Ea4on0SOc67nMTWJlJ0CwWzH2XHxhuBHYzBkwABUcem88lB39hBrLvCcp7P%2BDMdLp0nBvkx9QUYQ%3D%3D';
		var api = new Vue({
			el: "#api",
			data: {
				apiList: [], // api를 통해 가져온 json 데이터를 담아서 화면에 뿌려주도록 함
				pageNo: '', // api의 필수 파라메터 값 1
				numOfRows: '', //api의 필수 파라메터 값 2
				pnu: '1111010100100010000', // 
				stdrYear: '2022',
				dongNm: '101',
				hoNm: '201',
				format: 'JSON'
			},
			mounted() {
				var self = this;
				self.pageNo = '1', // mounted되었을 때 페이지번호 초기값 설정 
				self.numOfRows = '1', // mounted되었을 때 한페이지에 표시할 행 초기값 설정
				self.pnu; // mounted되었을 때 search 함수를 호출해 api를 호출함
				self.DEAL_YMD; // mounted되었을 때 search 함수를 호출해 api를 호출함
				self.search(); // mounted되었을 때 search 함수를 호출해 api를 호출함
			},
			methods: {
				search: function () {
					var self = this;
					var xhr = new XMLHttpRequest();
					var url = apiURL; /*URL*/
					var queryParams = '?' + encodeURIComponent('serviceKey') + '=' + apiKey; /*Service Key*/
					queryParams += '&' + encodeURIComponent('pnu') + '=' + encodeURIComponent('1111010100100010000'); /**/
					queryParams += '&' + encodeURIComponent('stdrYear') + '=' + encodeURIComponent('2022'); /**/
					queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('1'); /**/
					queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
					queryParams += '&' + encodeURIComponent('format') + '=' + encodeURIComponent('json'); /**/
					xhr.open('GET', url + queryParams);
					xhr.onreadystatechange = function () {
						if (this.readyState == 4) {
							/* alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText); */
							/* var test = this.getAllResponseHeaders();
							console.log(test); */
							var obj = JSON.parse(this.responseText);
							self.apiList = obj.apartHousingPrices.field;
							console.log(self.apiList);
						}
					};

					xhr.send('');

				},
			}
			, created : function() {
				
			}
		});
	</script>

	<script>
		function Searching() {
			var data = {
				aphusNm: [""]
				//"aphusSeCodeNm": ""


			};
			$.ajax({
				url: "http://apis.data.go.kr/1611000/nsdi/ApartHousingPriceService/attr/getApartHousingPriceAttr?ServiceKey=VvRvPWwvehYkrcj6I4EzOaMA8C6nqRHBHzbEDsYVDMXJRLDr5IpFoc5FKl6qS2zRmxFItZiAmHlFwkb%2FotPI1g%3D%3D&pnu=1144012700116340000&stdrYear=2012&dongNm=101&hoNm=201&format=xml&numOfRows=10&pageNo=1", // serviceKey 값을 xxxxxx에 입력
				type: "POST",
				data: JSON.stringify(data), // json 을 string으로 변환하여 전송
				dataType: "JSON",
				contentType: "application/json",
				accept: "application/json",
				success: function (result) {
					console.log(result);
				},
				error: function (result) {
					console.log(result.responseText); //responseText의 에러메세지 확인
				}
			});
		}
	</script>
		</body>
		</html>