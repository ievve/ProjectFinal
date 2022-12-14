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
					<a href="index.do" class="logo m-0 float-start" ><img src="images/?????????.PNG" height="100" width="230"></a>

					<ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li><a href="index.do">??????</a></li> 
						<li class="has-children active">
							<li><a href="properties.do">??????</a></li>	
						<li><a href="services.do">??? ?????????</a></li>
						<li><a href="about.do">????????????</a></li>
						<li><a href="contact.do">?????????</a></li>
						
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
                        <th class="tg-0lax">?????????</th>
                        <th class="tg-0lax">???</th>
                        <th class="tg-0lax">???</th>
                        <th class="tg-0lax">????????????</th>
                        <th class="tg-0lax">?????????????????????</th>
                        <th class="tg-0lax">????????????</th>
                        <th class="tg-0lax">??????</th>
                        <th class="tg-0lax">????????????</th>
                        <th class="tg-0lax">????????????</th>
    
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
	                    ????????? : <input type="text" value="???????????? ?????????" id="keyword" size="15"> 
	                    <button type="submit">????????????</button> 
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
// ????????? ?????? ???????????????
var markers = [];

var mapContainer = document.getElementById('map'), // ????????? ????????? div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // ????????? ????????????
        level: 3 // ????????? ?????? ??????
    };  



// ????????? ???????????????    
var map = new kakao.maps.Map(mapContainer, mapOption); 

//????????????
map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);    



// ?????? ?????? ????????? ???????????????
var ps = new kakao.maps.services.Places();  

// ?????? ?????? ???????????? ????????? ???????????? ??? ???????????? ????????? ?????????????????? ???????????????
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// ???????????? ????????? ???????????????
searchPlaces();

// ????????? ????????? ???????????? ???????????????
function searchPlaces() {

    var keyword = document.getElementById('keyword').value;

    if (!keyword.replace(/^\s+|\s+$/g, '')) {
        alert('???????????? ??????????????????!');
        return false;
    }

    // ???????????? ????????? ?????? ???????????? ??????????????? ???????????????
    ps.keywordSearch( keyword, placesSearchCB); 
}

// ??????????????? ???????????? ??? ???????????? ???????????? ?????????
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

        // ??????????????? ????????? ???????????????
        // ?????? ????????? ????????? ???????????????
        displayPlaces(data);

        // ????????? ????????? ???????????????
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('?????? ????????? ???????????? ????????????.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('?????? ?????? ??? ????????? ??????????????????.');
        return;

    }
}

// ?????? ?????? ????????? ????????? ???????????? ???????????????
function displayPlaces(places) {

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    
    // ?????? ?????? ????????? ????????? ???????????? ???????????????
    removeAllChildNods(listEl);

    // ????????? ???????????? ?????? ????????? ???????????????
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // ????????? ???????????? ????????? ???????????????
        var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // ?????? ?????? ?????? Element??? ???????????????

        // ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
        // LatLngBounds ????????? ????????? ???????????????
        bounds.extend(placePosition);

        // ????????? ???????????? ????????? mouseover ?????????
        // ?????? ????????? ?????????????????? ???????????? ???????????????
        // mouseout ?????? ?????? ?????????????????? ????????????
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

    // ???????????? ???????????? ???????????? ?????? Element??? ???????????????
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // ????????? ?????? ????????? ???????????? ?????? ????????? ??????????????????
    map.setBounds(bounds);
}

// ???????????? ????????? Element??? ???????????? ???????????????
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
                 
      itemStr += '  <span class="tel">'  + '</span>'    + '<a href="property1.do" button type="submit" style="float: right; color:blue">????????????</button> '
                +'</div>';           

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// ????????? ???????????? ?????? ?????? ????????? ???????????? ???????????????
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ?????? ????????? url, ??????????????? ???????????? ?????????
        imageSize = new kakao.maps.Size(36, 37),  // ?????? ???????????? ??????
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // ??????????????? ???????????? ??????
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // ??????????????? ????????? ??? ????????? ????????? ????????? ??????
            offset: new kakao.maps.Point(13, 37) // ?????? ????????? ???????????? ????????? ???????????? ??????
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // ????????? ??????
            image: markerImage 
        });

    marker.setMap(map); // ?????? ?????? ????????? ???????????????
    markers.push(marker);  // ????????? ????????? ????????? ???????????????

    return marker;
}

// ?????? ?????? ???????????? ?????? ????????? ?????? ???????????????
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// ???????????? ?????? ????????? ?????????????????? ????????? ???????????????
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // ????????? ????????? ?????????????????? ???????????????
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

// ???????????? ?????? ?????? ????????? ???????????? ??? ???????????? ???????????????
// ?????????????????? ???????????? ???????????????
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
}

 // ???????????? ????????? ?????? Element??? ???????????? ???????????????
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}


</script>

<script>
    
    //api authURL : URL??? ????????? ??????. ????????? properies??? ???????????? ?????????
    let apiURL = 'http://apis.data.go.kr/1611000/nsdi/ApartHousingPriceService/attr/getApartHousingPriceAttr';
    //api authKey : ???????????? ????????? ??????. ????????? properies??? ???????????? ?????????
    let apiKey = '26Jt6WG3w3Ea4on0SOc67nMTWJlJ0CwWzH2XHxhuBHYzBkwABUcem88lB39hBrLvCcp7P%2BDMdLp0nBvkx9QUYQ%3D%3D';
    var api = new Vue({
        el: "#api",
        data: {
            apiList: [], // api??? ?????? ????????? json ???????????? ????????? ????????? ??????????????? ???
            pageNo: '3', // api??? ?????? ???????????? ??? 1
            numOfRows: '6', //api??? ?????? ???????????? ??? 2
            pnu: '1117013000', // 
            stdrYear: '2022',
            dongNm: '101',
            hoNm: '201',
            aphusNm:'??????',
            format: 'JSON'
        },
        mounted() {
            var self = this;
            self.pageNo = '1', // mounted????????? ??? ??????????????? ????????? ?????? 
            self.numOfRows = '1', // mounted????????? ??? ??????????????? ????????? ??? ????????? ??????
            self.aphusNm='??????',
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
                queryParams += '&' + encodeURIComponent('pnu') + '=' + encodeURIComponent('1117013000'); /**/
                queryParams += '&' + encodeURIComponent('stdrYear') + '=' + encodeURIComponent('2022'); /**/
                queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('45'); /**/
                queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
                queryParams += '&' + encodeURIComponent('format') + '=' + encodeURIComponent('json'); /**/
                queryParams += '&' + encodeURIComponent('aphusNm') + '=' + encodeURIComponent('??????'); /**/

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
							obj[i].append(self.apiList[i].pblntfPc + "???");
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
