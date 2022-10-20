<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
  	<link rel="stylesheet" href="css/css/style.css">
  	<link rel="stylesheet" href="css/css/search.css">
</head>

<style>
</style>
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
					<a href="index.do" class="logo m-0 float-start" ><img src="images/복덕빵.PNG" height="100" width="230"></a>

					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li><a href="index.do">분양</a></li> 
						<li class="has-children active">
							<li><a href="properties.do">지도</a></li>	
						<li><a href="services.do">방 내놓기</a></li>
						<li><a href="about.do">공지사항</a></li>
						<li><a href="contact.do">게시판</a></li>
						
					</ul>

					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
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
	<div class="section" style="margin-bottom: -83px;">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-7">
				</div>
			</div>
		</div>
	</div>
    
			
	<!-- <div id="api"> 
        <div class="col-lg-4">
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
                        <td>{{item.aphusNm}}</td>
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
    
    
    
    
    
    </div> -->
	<div class="map_wrap">
	    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
	
	    <div id="menu_wrap" class="bg_white" style="display : inline-block;width: 419px;">
	        <div class="option">
	            <div>
	                <form onsubmit="searchPlaces(); return false;">
	                    키워드 : <input type="text" value="이태원동 아파트" id="keyword" size="15"> 
	                    <button type="submit">검색하기</button> 
	                </form>
	            </div>
	        </div>
	        <hr>
	        <ul id="placesList" style="font-size: 16px;"></ul>
	        <div id="pagination"></div>
	    </div>
	</div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=46a18bb4dc05e6c7dc969df7b1b3cf7e&libraries=services"></script>
<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  



// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//교통정보
map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);    



// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('키워드를 입력해주세요!');
        return false;
    }

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        displayPlaces(data);

        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Element에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5>' + places.place_name + '</h5>';

    if (places.road_address_name) {
        itemStr += '    <span>' + places.road_address_name + '</span>' +
                    '   <span class="jibun gray">' +  places.address_name  + '</span>';
    } else {
        itemStr += '    <span>' +  places.address_name  + '</span>'; 
    }
                 
      itemStr += '  <span class="tel">'  + '</span>'    + '<a href="property1.do" button type="submit" style="float: right; color:blue">상세보기</button> '
                +'</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
            image: markerImage 
        });

    marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}


</script>

<script>
    
    //api authURL : URL을 상수로 선언. 보통은 properies에 선언하여 사용함
    let apiURL = 'http://apis.data.go.kr/1611000/nsdi/ApartHousingPriceService/attr/getApartHousingPriceAttr';
    //api authKey : 인증키를 상수로 선언. 보통은 properies에 선언하여 사용함
    let apiKey = '26Jt6WG3w3Ea4on0SOc67nMTWJlJ0CwWzH2XHxhuBHYzBkwABUcem88lB39hBrLvCcp7P%2BDMdLp0nBvkx9QUYQ%3D%3D';
    var api = new Vue({
        el: "#api",
        data: {
            apiList: [], // api를 통해 가져온 json 데이터를 담아서 화면에 뿌려주도록 함
            pageNo: '3', // api의 필수 파라메터 값 1
            numOfRows: '6', //api의 필수 파라메터 값 2
            pnu: '1117013000', // 
            stdrYear: '2022',
            dongNm: '101',
            hoNm: '201',
            aphusNm:'청화',
            format: 'JSON'
        },
        mounted() {
            var self = this;
            self.pageNo = '1', // mounted되었을 때 페이지번호 초기값 설정 
            self.numOfRows = '1', // mounted되었을 때 한페이지에 표시할 행 초기값 설정
            self.aphusNm='청화',
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
                queryParams += '&' + encodeURIComponent('pnu') + '=' + encodeURIComponent('1117013000'); /**/
                queryParams += '&' + encodeURIComponent('stdrYear') + '=' + encodeURIComponent('2022'); /**/
                queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('45'); /**/
                queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
                queryParams += '&' + encodeURIComponent('format') + '=' + encodeURIComponent('json'); /**/
                queryParams += '&' + encodeURIComponent('aphusNm') + '=' + encodeURIComponent('청화'); /**/

                xhr.open('GET', url + queryParams);
                xhr.onreadystatechange = function () {
                    if (this.readyState == 4) {
                        /* alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText); */
                        /* var test = this.getAllResponseHeaders();
                        console.log(test); */
                        var obj = JSON.parse(this.responseText);
                        self.apiList = obj.apartHousingPrices.field;
                        console.log(self.apiList);
                        var obj = document.getElementsByClassName('tel');
						for(var i=0; i<obj.length; i++){
							obj[i].append(self.apiList[i].pblntfPc + "원");
							console.log(obj[i]);
						}
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
