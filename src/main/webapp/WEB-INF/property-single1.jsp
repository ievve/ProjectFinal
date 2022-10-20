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

				<h1>아파트</h1>
				<p style="border:0.5px solid rgb(52, 47, 114);">

					

				<div id="map" style="width:1400px; height:350px;"></div>

				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=46a18bb4dc05e6c7dc969df7b1b3cf7e&libraries=services"></script>
				<script>
					var staticMapContainer = document.getElementById('map'), // 이미지 지도를 표시할 div 
						staticMapOption = {
							marker: {
								text: '', // 마커와 함께 표시할 텍스트
								position: new kakao.maps.LatLng(37.530022, 126.995941) // 좌표가 없으면 지도 중심에 마커가 표시된다
							},
							center: new kakao.maps.LatLng(37.530022, 126.995941), // 이미지 지도의 중심 좌표
							level: 8, // 이미지 지도의 확대 레벨
							mapTypeId: kakao.maps.MapTypeId.ROADMAP // 지도종류
						};

				// 이미지 지도를 생성한다
				var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
				</script>
				
				<div id="api"> 
					<div class="row" style="margin-bottom:5%">
						<div class="col-md-4" >
							<img :src="img1" alt="Image" class="img-fluid">
						</div>
						<div class="col-md-4 mt-lg-5" >
							<img :src='img2' alt="Image" class="img-fluid">
						</div>
						<div class="col-md-4" >
							<img :src='img3' alt="Image" class="img-fluid">
						</div>
					</div>

				
					<div class="col-lg-4" style="width: 100%;">
						<div style="border:0.5px solid rgb(102, 99, 99); margin-bottom: 10px;"></div>
						<h3>상세정보</h3>
						<div style="border:0.5px solid rgb(102, 99, 99); margin-bottom: 30px;"></div>



						<table class="tg" style="width:100%;margin-top: 5%;">
								<tr style="height: 82px;text-align: center;">
									<th class="tg-0lax">단지명</th>
									<th class="tg-0lax">동</th>
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
									<td class="tg-0lax">{{item.dongNm}}</td>
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
				pnu: '1117013000100220002', // 
				stdrYear: '2022',
				dongNm: '101',
				hoNm: '201',
				format: 'JSON',
				aphusCode:'883',
				name : '${map.name}',
				address : '${map.address}',
				img1 : "",
				img2 : "",
				img3 : ""
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

					// 하드 코딩

					if (self.name=='청화아파트'){
                            pnu='1117013000100220002';
                            aphusNm='청화';
							self.img1 = "https://landthumb-phinf.pstatic.net/20170712_47/apt_realimage_1499838337890qpx6c_JPEG/db98483a51a3c7a910c722777a8b7e20.JPG?type=m1024";
							self.img2 = "https://vingo.house/files/attach/images/185/272/003/86ac1edf53790c14c342d5302e9f8edf.jpg";
							self.img3 = "https://images.homify.com/c_fill,f_auto,h_700,q_auto/v1440232327/p/photo/image/584310/23.jpg";
                        }else if (self.name=='남산대림아파트'){
                            pnu='1117013000107290000';
                            aphusNm='남산대림';
							self.img1 = "https://vingo.house/images/apt_type/namsan_daerim_plot.jpg";
							self.img2 = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR93U9oe0rZ_RH9wH7svJfZq5o1Yq-q7xnNng&usqp=CAU";
							self.img3 = "https://mblogthumb-phinf.pstatic.net/20120405_260/rgbwd_1333633981199oQxn1_JPEG/166902.jpg?type=w2";
                        }else if (self.name=='이태원주공아파트'){
                            pnu='1117013000107280000';
                            aphusNm='주공';
							self.img1 = "https://mblogthumb-phinf.pstatic.net/MjAxNzAzMTlfMTEx/MDAxNDg5ODk0NDg1NTUw.WHrNCBtzpAektzM8lQcUAblPfpTqDxnyTnFKtox8d6Ug.1TDXLEY_yODiaEGph8WyoOZaSZKv1-hoXIauygcLfFMg.JPEG.juris08/1.jpg?type=w800";
							self.img2 = "https://vingo.house/images/apt_type/it_jukong_plot.jpg";
							self.img3 = "data:image/jpeg;base64,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";
                        }else if (self.name=='탑맨션'){
                            pnu='1117013000101350003';
                            aphusNm='탑맨션';
							self.img1 = "https://cdn.smedaily.co.kr/news/thumbnail/202108/210745_148734_5517_v150.jpg";
							self.img2 = "data:image/jpeg;base64,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";
							self.img3 = "data:image/jpeg;base64,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";
                        }else if (self.name=='삼산주공미래타운4단지아파트'){
                            pnu='2823710500103870002';
                            aphusNm='주공미래';
							self.img1 = "data:image/jpeg;base64,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";
							self.img2 = "https://image.hogangnono.com/image/original/apt/3Y863/52053/20210217042932_gu8976YRYLXauRSRxj?s=720x180&t=outside&q=100";
							self.img3 = "https://t1.daumcdn.net/estate/interior/portfolio/c0e40526fe3c4def826fe319fcefdd65";
                        }else if (self.name=='신성미소지움아파트'){
                            pnu='2823710500101250012';
                            aphusNm='신성미소';
							self.img1 = "https://post-phinf.pstatic.net/MjAyMjA4MDRfNzIg/MDAxNjU5NjEyMzUxNDcz.wCHuCHXOr_7F_iw6GvIHi8fJUiHre9nQU21uKWSG3m0g.nzoCtAVnc5wSgJ762XEcFRXrRv1gyU7HRJyRMa4X61kg.JPEG/_F4A6741.jpg?type=w1200";
							self.img2 = "data:image/jpeg;base64,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";
							self.img3 = "https://ic.zigbang.com/vp/BigData/6512/023cea2faf7002f5175adfce332b5a7ad2856cdc.jpg?w=500&h=375&q=60&a=1";
                        }else{
                            pnu='1117013000101980016';
                            aphusNm='마운틴뷰';
							self.img1 = "http://news.kbs.co.kr/data/news/2019/11/07/4318680_EZt.jpg";
							self.img2 = "https://vingo.house/files/attach/images/185/272/003/86ac1edf53790c14c342d5302e9f8edf.jpg";
							self.img3 = "https://images.homify.com/c_fill,f_auto,h_700,q_auto/v1440232327/p/photo/image/584310/23.jpg";
                        }
                        

					var xhr = new XMLHttpRequest();
					var url = apiURL; /*URL*/
					var queryParams = '?' + encodeURIComponent('serviceKey') + '=' + apiKey; /*Service Key*/
					queryParams += '&' + encodeURIComponent('pnu') + '=' + encodeURIComponent(pnu); /**/
					queryParams += '&' + encodeURIComponent('stdrYear') + '=' + encodeURIComponent('2022'); /**/
					queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('1'); /**/
					queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
					queryParams += '&' + encodeURIComponent('format') + '=' + encodeURIComponent('json'); /**/
					queryParams += '&' + encodeURIComponent('aphusCode') + '=' + encodeURIComponent('883'); /**/
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
	