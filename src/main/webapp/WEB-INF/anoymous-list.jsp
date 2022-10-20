<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<jsp:include page="/layout/header.jsp"></jsp:include>
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/boardstyle.css">
<title>익명게시판</title>
</head>
<body style="margin-top: 170px;">
	<div class="section">
		<div id="app">
		<!--여기부터 게시판 -->

	<section class="notice">
		<div class="page-title">
			  <div class="container">
				  <h3>익명 게시판 입니다</h3>
			  </div>
		  </div>
	<!-- 익명VS일반 -->
	<center>
		<div class="toggle-radio">
			<input type="radio" name="rdo" id="no" checked>
			<input type="radio" name="rdo" id="yes">
			<div class="switch">
			  <label for="yes"><a href="board.do">일반</a></label>
			  <label for="no"><a href="anoymous.do">익명</a></label>
			  <span></span>
			</div>
		</div>
	</center> <br><br><br><br><br><br>

		  <!-- board seach area -->
		  <div id="board-search">
			  <div class="container">
				  <div class="search-window">
					  <form action="">
						  <div class="search-wrap">
							  <label for="search" class="blind">게시판 내용 검색</label>
							  <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
							  <button type="submit" class="btn btn-dark">검색</button>
						  </div>
					  </form>
				  </div>
			  </div>
		  </div>
		 
		<!-- board list area -->
		  <div id="board-list">
			  <div class="container">
				  <table class="board-table">
				  <colgroup>
						<col width="15%" />
						<col width="*" />
						<col width="15%" />
						<col width="25%" />
				</colgroup>
					  <thead>
					 	<tr>
							<th scope="col">글번호</th>
							<th scope="col">제목</th>
							<th scope="col">조회수</th>
							<th scope="col">작성일</th>
						</tr>
					  </thead>
					 <tbody>
						<tr v-for="(item, index) in list">
							<td><a href="javascript:;" @click="fnView(item)">{{item.bNo}}</a></td>
							<td><a href="javascript:;" @click="fnView(item)">{{item.title}}</a></td>
							<td>{{item.bView}}</td>
							<td><label v-bind:for="'idx_' + index">{{item.changedate}}</label></td>
						</tr>
					</tbody>
				  </table>
			  </div>
		  </div>
	  <a href=""></a>
	  </section>
	<!-- footer -->
	<center>
	<div class="clear"></div>
	<div id="page_control">
		<a href="#">prev</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a>
		<a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a>
		<a href="#">10</a><a href="#">next</a>
	</div>
	<div>
		<div id="table_write">
			<button type="button"  @click="fnAdd" class="btn">게시글 작성</a></button>
		</div>
	</div>	
	</center>	</div></div>
 	</body>
 	<jsp:include page="/layout/footer.jsp"></jsp:include>
</html>	 

<script type="text/javascript">
	var app = new Vue({
		el : '#app',
		data : {
			list : [],
			selectedItemList : []
		},
		methods : {

			// 리스트
			fnGetList : function() {
				var self = this;
				var nparmap = {};
				$.ajax({
					url : "/list_anoymous.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.list = data.list;
					}
				});
			},

			// 조회
			fnView : function(item) {
				var self = this;
				self.pageChange("./view_anoymous.do", {
					bNo : item.bNo
				});
			},

			// 작성
			fnAdd : function() {
				var self = this;
				self.pageChange("./add_anoymous.do", {});
			},

			// 페이지 전환
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
	