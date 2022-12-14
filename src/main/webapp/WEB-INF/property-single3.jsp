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
						<a href="index.do" class="logo m-0 float-start"><img src="images/?????????.PNG" height="100"
								width="230"></a>

						<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
							<li><a href="index.do">??????</a></li>
							<li class="has-children active">
							<li><a href="properties.do">??????</a></li>
							<li><a href="services.do">??? ?????????</a></li>
							<li><a href="about.do">????????????</a></li>
							<li><a href="contact.do">?????????</a></li>
							<div class="col-12 mb-3">
								<a href="mypageB.do" class="btn btn-primary py-2 px-3"
									style="width: auto; float:right; margin-top: 2%;">?????? ?????????</a>
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
					<h1 class="heading" data-aos="fade-up">??????</h1>

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

				<h1>??????</h1>

				<p style="border:0.5px solid rgb(52, 47, 114);">
				<div class="row" style="margin-bottom:5%">
					<div class="col-md-4" data-aos="fade-up" data-aos-delay="0">
						<img src="https://t1.daumcdn.net/cfile/blog/27553047525BBAC327" alt="Image" class="img-fluid">
					</div>
					<div class="col-md-4 mt-lg-5" data-aos="fade-up" data-aos-delay="100">
						<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20121031_40%2Fspacesimoc_1351665003235KJ26P_JPEG%2F%25C3%25BB%25BF%25EE%25B5%25BF%2528ISO%25293D.jpg&type=sc960_832" alt="Image" class="img-fluid">
					</div>
					<div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
						<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MDVfMTc4%2FMDAxNjU0Mzk1MDg5MzM5.9tDhjz3pgY8EpzYK9vBOtMZQjcHbdjzrocRQymyqV1Ug.hFUeqYguX3f4IpV1Mmk2L8H3cnXD8ACm4pEVb2EGKbIg.JPEG.tlrdus0908%2FKakaoTalk_20220605_091920192.jpg&type=sc960_832" alt="Image" class="img-fluid">
					</div>
				</div>

				<div id="map" style="width:1400px; height:350px;"></div>

				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=46a18bb4dc05e6c7dc969df7b1b3cf7e&libraries=services"></script>
				<script>
					var staticMapContainer = document.getElementById('map'), // ????????? ????????? ????????? div 
						staticMapOption = {
							marker: {
								text: '???????????????', // ????????? ?????? ????????? ?????????
								position: new kakao.maps.LatLng(37.590271, 126.967697) // ????????? ????????? ?????? ????????? ????????? ????????????
							},
							center: new kakao.maps.LatLng(37.590271, 126.967697), // ????????? ????????? ?????? ??????
							level: 8, // ????????? ????????? ?????? ??????
							mapTypeId: kakao.maps.MapTypeId.ROADMAP // ????????????
						};

				// ????????? ????????? ????????????
				var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
				</script>
				<div id="api"> 
					<div class="col-lg-4" style="width: 100%;">
						<div style="border:0.5px solid rgb(102, 99, 99); margin-bottom: 10px;"></div>
						<h3>????????????</h3>
						<div style="border:0.5px solid rgb(102, 99, 99); margin-bottom: 30px;"></div>



						<table class="tg" style="width:100%;margin-top: 5%;">
								<tr style="height: 82px;text-align: center;">
									<th class="tg-0lax">?????????</th>
									<th class="tg-0lax">???</th>
									<th class="tg-0lax">????????????</th>
									<th class="tg-0lax">?????????????????????</th>
									<th class="tg-0lax">????????????</th>
									<th class="tg-0lax">??????</th>
									<th class="tg-0lax">????????????</th>
									<th class="tg-0lax">????????????</th>

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
		//api authURL : URL??? ????????? ??????. ????????? properies??? ???????????? ?????????
		let apiURL = 'http://apis.data.go.kr/1611000/nsdi/ApartHousingPriceService/attr/getApartHousingPriceAttr';
		//api authKey : ???????????? ????????? ??????. ????????? properies??? ???????????? ?????????
		let apiKey = '26Jt6WG3w3Ea4on0SOc67nMTWJlJ0CwWzH2XHxhuBHYzBkwABUcem88lB39hBrLvCcp7P%2BDMdLp0nBvkx9QUYQ%3D%3D';
		var api = new Vue({
			el: "#api",
			data: {
				apiList: [], // api??? ?????? ????????? json ???????????? ????????? ????????? ??????????????? ???
				pageNo: '', // api??? ?????? ???????????? ??? 1
				numOfRows: '', //api??? ?????? ???????????? ??? 2
				pnu: '1111010100100040007', // 
				stdrYear: '2022',
				dongNm: '101',
				hoNm: '201',
				format: 'JSON'
			},
			mounted() {
				var self = this;
				self.pageNo = '1', // mounted????????? ??? ??????????????? ????????? ?????? 
				self.numOfRows = '1', // mounted????????? ??? ??????????????? ????????? ??? ????????? ??????
				self.pnu; // mounted????????? ??? search ????????? ????????? api??? ?????????
				self.DEAL_YMD; // mounted????????? ??? search ????????? ????????? api??? ?????????
				self.search(); // mounted????????? ??? search ????????? ????????? api??? ?????????
			},
			methods: {
				search: function () {
					var self = this;
					var xhr = new XMLHttpRequest();
					var url = apiURL; /*URL*/
					var queryParams = '?' + encodeURIComponent('serviceKey') + '=' + apiKey; /*Service Key*/
					queryParams += '&' + encodeURIComponent('pnu') + '=' + encodeURIComponent('1111010100100040007'); /**/
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
				url: "http://apis.data.go.kr/1611000/nsdi/ApartHousingPriceService/attr/getApartHousingPriceAttr?ServiceKey=VvRvPWwvehYkrcj6I4EzOaMA8C6nqRHBHzbEDsYVDMXJRLDr5IpFoc5FKl6qS2zRmxFItZiAmHlFwkb%2FotPI1g%3D%3D&pnu=1144012700116340000&stdrYear=2012&dongNm=101&hoNm=201&format=xml&numOfRows=10&pageNo=1", // serviceKey ?????? xxxxxx??? ??????
				type: "POST",
				data: JSON.stringify(data), // json ??? string?????? ???????????? ??????
				dataType: "JSON",
				contentType: "application/json",
				accept: "application/json",
				success: function (result) {
					console.log(result);
				},
				error: function (result) {
					console.log(result.responseText); //responseText??? ??????????????? ??????
				}
			});
		}
	</script>
		</body>
		</html>