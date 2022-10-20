<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<title>복덕빵</title>

<!--상단 레이아웃 -->
<jsp:include page="/layout/header.jsp"></jsp:include>
</head>

<body>
	<!-- 이미지 슬라이드 -->
	<div class="hero">
		<div class="hero-slide">
			<div class="img overlay"
				style="background-image: url('images/apartment.jpg')"></div>
			<div class="img overlay"
				style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay"
				style="background-image: url('images/rooom.jpg')"></div>
		</div>

		<!-- 상세정보페이지로 이동 -->
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center">
					<p style="border: 1px solid rgb(245, 236, 236)">
					<div class="test">
						<a href="property1.do"><span
							style="color: white; margin: 50px;">아파트</span></a> <a
							href="property2.do"><span
							style="color: white; margin: 50px;">빌라</span></a> <a
							href="property3.do"><span
							style="color: white; margin: 50px;">주택</span></a>
					</div>
					<br> <br> <br> <br> <br>
					
					<!-- 장소/지역으로 검색 -->
					<h1 class="heading" data-aos="fade-up">원하는 지역을 검색해보세요.</h1>
					<form action="property1.do"
						class="narrow-w form-search d-flex align-items-stretch mb-3"
						data-aos="fade-up" data-aos-delay="200">
						<input type="text" class="form-control px-4"
							placeholder="원하는 지역을 검색하세요.">
						<button type="submit" class="btn btn-primary">Search</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- 매물 추천 -->
	<div class="section">
		<div class="container">
			<div class="row mb-5 align-items-center">
				<div class="col-lg-6">
					<h2 class="font-weight-bold text-primary heading">요즘 뜨는 매물은?</h2>
				</div>
				<div class="col-lg-6 text-lg-end"></div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="property-slider-wrap">
						<div class="property-slider">

							<!-- 1번째 아이템 -->
							<div class="property-item">
							
								<!-- 이미지 -->
								<a href="/property1.do" class="img"> 
									<img src="https://t1.daumcdn.net/cfile/tistory/994CC93359D99EC40C" alt="Image" class="img-fluid">
								</a>
								<div class="property-content">
									
									<!-- 가격 -->
									<div class="price mb-2">
										<span>$1,291,000</span>
									</div>
									
									<div>
										<!-- 상세주소 / 주소 -->
										<span class="d-block mb-2 text-black-50">서울특별시 종로구 신교동</span> 
										<span class="city d-block mb-3">마운틴뷰</span>
											
										<!-- 방 수 / 욕실 수 -->
										<div class="specs d-flex mb-4">
											<span class="d-block d-flex align-items-center me-3">
												<span class="icon-bed me-2"></span> 
												<span class="caption">3	beds</span>
											</span> 
											<span class="d-block d-flex align-items-center"> 
												<span class="icon-bath me-2"></span> 
												<span class="caption">2 baths</span>
											</span>
										</div>
										
										<!-- 상세로 이동 -->
										<a href="/property1.do"
											class="btn btn-primary py-2 px-3">See details</a>
									</div>
								</div>
							</div>

							

							<!-- 2번째 아이템 -->
							<div class="property-item">
							
								<!-- 이미지 -->
								<a href="/property3.do" class="img"> 
									<img src="https://th.bing.com/th/id/R.d078e85c5a4de29d480269b88ac5aaf1?rik=kB8ONlQ1YtCxEg&riu=http%3a%2f%2ft1.daumcdn.net%2fnews%2f201504%2f24%2ffnnewsi%2f20150424183817476.jpeg&ehk=G3whTNUY3vxJCw5zglJ9cdGpgKj0lgb6TTLckNw02gw%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1" alt="Image" class="img-fluid">
								</a>
								
								<div class="property-content">
									<!-- 가격 -->
									<div class="price mb-2">
										<span>$1,291,000</span>
									</div>
									
									<div>
										<!-- 상세주소 / 주소 -->
										<span class="d-block mb-2 text-black-50">서울특별시 종로구 청운동</span> 
										<span class="city d-block mb-3">신구파인힐</span>
										
										<!-- 방 수 / 욕실 수 -->
										<div class="specs d-flex mb-4">
											<span class="d-block d-flex align-items-center me-3">
												<span class="icon-bed me-2"></span> 
												<span class="caption">2 beds</span>
											</span> 
											<span class="d-block d-flex align-items-center"> 
												<span class="icon-bath me-2"></span> 
												<span class="caption">1 baths</span>
											</span>
										</div>
										
										<!-- 상세로 이동 -->
										<a href="/property3.do"
											class="btn btn-primary py-2 px-3">See details</a>
									</div>
								</div>
							</div>
							<!-- 3번째 아이템 -->
							<div class="property-item">
														
								<!-- 이미지 -->
								<a href="/property2.do" class="img"> 
									<img src="https://th.bing.com/th/id/R.e14a22abc77ab157f245dcb22bc164d5?rik=%2fI6ptiHuHWUIZg&riu=http%3a%2f%2fpostfiles8.naver.net%2fMjAxNzAzMTRfMyAg%2fMDAxNDg5NDg2MTk1NDAy.I942yY0J6zGT0e0OY5DXuDNwtcPMC_x6TGjQWsLd1b0g._rMgXyQyCklaXo02n3BUKI7Qx-1EgNDe85PaLTRTk8kg.JPEG.lbjblue123%2f20170206_111604.jpg%3ftype%3dw966&ehk=ByrLvr84TWNZG0OQHi71m5SxxVcaBVL8Uen8494lENs%3d&risl=&pid=ImgRaw&r=0" alt="Image" class="img-fluid">
								</a>
								
								<div class="property-content">
									<!-- 가격 -->
									<div class="price mb-2">
										<span>$1,291,000</span>
									</div>
									
									<div>
										<!-- 상세주소 / 주소 -->
										<span class="d-block mb-2 text-black-50">서울특별시 용산구 이태원동	</span> 
										<span class="city d-block mb-3">청운벽산빌리지</span>
										
										<!-- 방 수 / 욕실 수 -->
										<div class="specs d-flex mb-4">
											<span class="d-block d-flex align-items-center me-3">
												<span class="icon-bed me-2"></span> 
												<span class="caption">2 beds</span>
											</span> 
											<span class="d-block d-flex align-items-center"> 
												<span class="icon-bath me-2"></span> 
												<span class="caption">2 baths</span>
											</span>
										</div>
										<a href="/property2.do"
											class="btn btn-primary py-2 px-3">See details</a>
									</div>
								</div>
							</div>
							<!-- 4번째 아이템 -->
							<div class="property-item">
							
								<!-- 이미지 -->
								<a href="/property4.do" class="img">
									<img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2F20140409_296%2Flalamin1_1397020545814Hk0SC_JPEG%2F00000_140404_080949_c9c4.jpg&type=sc960_832" alt="Image" class="img-fluid">
								</a>
								
								<div class="property-content">
									<!-- 가격 -->
									<div class="price mb-2">
										<span>$1,291,000</span>
									</div>
									
									<div>
										<!-- 상세주소 / 주소 -->
										<span class="d-block mb-2 text-black-50">서울특별시 종로구 창신동</span> 
										<span class="city d-block mb-3">대성연립</span>
										
										<!-- 방 수 / 욕실 수 -->
										<div class="specs d-flex mb-4">
											<span class="d-block d-flex align-items-center me-3">
												<span class="icon-bed me-2"></span> 
												<span class="caption">3 beds</span>
											</span> 
											<span class="d-block d-flex align-items-center"> 
												<span class="icon-bath me-2"></span> 
												<span class="caption">2 baths</span>
											</span>
										</div>
										<!-- 상세로 이동 -->
										<a href="/property4.do" class="btn btn-primary py-2 px-3">See details</a>
									</div>
								</div>
							</div>
						</div>
						
						<!-- 슬라이드 이동 -->
						<div id="property-nav" class="controls" tabindex="0" aria-label="Carousel Navigation">
							<span class="prev" data-controls="prev" aria-controls="property" tabindex="-1">Prev</span> 
							<span class="next" data-controls="next" aria-controls="property" tabindex="-1">Next</span>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<!--하단 레이아웃 -->
<jsp:include page="/layout/footer.jsp"></jsp:include>

<script src="js/bootstrap.bundle.min.js"></script> 
<script	src="js/tiny-slider.js"></script> 
<script src="js/aos.js"></script> 
<script	src="js/navbar.js"></script> 
<script src="js/counter.js"></script> 
<script	src="js/custom.js"></script>