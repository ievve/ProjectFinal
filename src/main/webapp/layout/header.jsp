<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<style>
*{
	font-family: 'Jua', sans-serif;
}
</style>


<!-- meta 구역 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Untree.co">
<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap5" />

<!-- css 구역 -->
<link rel="stylesheet" href="css/css/tiny-slider.css">
<link rel="stylesheet" href="css/css/aos.css">
<link rel="stylesheet" href="css/css/style.css">
	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<!-- 이미지 구역 -->
<link rel="shortcut icon" href="images/favicon.png">

<!-- jquery, vue -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="js/jquery.js"></script>

<title>복덕빵</title>
</head>
<body>
	<div id="appHeader">
		<nav class="site-nav">
			<div class="container">
				<div class="menu-bg-wrap">
					<div class="site-navigation">

						<a href="/index.do" class="logo m-0 float-start"> <img
							src="images/복덕빵.PNG" height="100" width="230">
						</a>

						<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end" style="width: 380px;">
							<li><a href="/index.do">분양</a></li>
							<li><a href="/properties.do">지도</a></li>
							<li v-if="'${StatusSession}' == 'F'"><a href="/services.do">방 내놓기</a></li>
							<li v-else style="color:rgba(255, 255, 255, 0.5);">방 내놓기</li>
							<li><a href="/notice.do">공지사항</a></li>
							<li><a href="/board.do">게시판</a></li>

							<!-- 로그인/회원가입 -->
							<span v-if="'${userIdSession}' == ''">
								<button style="float: right;" onClick="location.href='/login.do'" class="btn btn-primary">로그인</button>
							</span>
							
							<span v-else> 
								
								<!-- 일반유저 마이페이지 -->
								<span v-if="'${StatusSession}' == 'B'">
									<button style="float: right;" onClick="location.href='/logout'" class="btn btn-primary">로그아웃</button>
									<button style="float: right;" onClick="location.href='/mypage_user.do'" class="btn btn-primary">마이페이지</button>
								</span> 
								
								<!-- 중개사 마이페이지 -->
								<span v-else>
									<button style="float: right;" onClick="location.href='/logout'" class="btn btn-primary">로그아웃</button>
									<button style="float: right;" onClick="location.href='/mypage_seller.do'" class="btn btn-primary">마이페이지</button>
								</span>
							</span>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>

<script type="text/javascript">
	var appHeader = new Vue({
		el : '#appHeader',

		data : {},

		methods : {},

		created : function() {
		}
	});
</script>