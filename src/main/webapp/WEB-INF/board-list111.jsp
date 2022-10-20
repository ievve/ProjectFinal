<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<jsp:include page="/layout/header.jsp"></jsp:include>
<link rel="stylesheet" href="css/menu.css">
<!-- 페이징 추가 1-->
<script src="https://unpkg.com/vuejs-paginate@latest"></script>
<script src="https://unpkg.com/vuejs-paginate@0.9.0"></script>
<title>자유게시판</title>
</head>
<style>
<!-- 페이징 추가 2-->
.pagination {
        margin:24px;
        display: inline-flex;
        
    }
	.pagination li {
	    min-width:32px;
	    padding:2px 6px;
	    text-align:center;
	    margin:0 3px;
	    border-radius: 6px;
	    border:1px solid #eee;
	    color:#666;
	}
	.pagination li:hover {
	    background: #E4DBD6;
	}
	.page-item a {
	    color:#666;
	    text-decoration: none;
	}
	.pagination li.active {
	    background-color : #E7AA8D;
	    color:#fff;
	}
	.pagination li.active a {
	    color:#fff;
	}
</style>
<body style="margin-top:170px;">
	<div class="section">
		<div id="app">
			<div class="container" align="center">
				<ul class="menu">
					<li><a href="board.do">자유게시판</a></li>
					<li><a href="anoymous.do">익명게시판</a></li>
				</ul>
				<h2>게시글 목록</h2>
				<table class="board_list">
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
				<!-- 페이징 추가 3-->
				<template>
				  <paginate
				    :page-count="pageCount"
				    :page-range="3"
				    :margin-pages="2"
				    :click-handler="fnSearch"
				    :prev-text="'<'"
				    :next-text="'>'"
				    :container-class="'pagination'"
				    :page-class="'page-item'">
				  </paginate>
				</template>
				<div>
					<button @click="fnAdd" class="btn btn-primary" style="float: right;">작성</button>
				</div>
			</div>
		</div>
	</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>
<script type="text/javascript">
Vue.component('paginate', VuejsPaginate)
	var app = new Vue({
		el : '#app',
		data : {
			list : [],
			selectedItemList : []
	
		<!-- 페이징 추가 4-->
			, selectPage: 1
			, pageCount: 1
		},
		methods : {
			fnGetList : function() {
				var self = this;
				<!-- 페이징 추가 5-->
				var startNum = ((self.selectPage-1) * 10);
	    		var lastNum = self.selectPage * 10
				var nparmap = {startNum : startNum, lastNum : lastNum};
				$.ajax({
					url : "/list_board.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.list = data.list;
						<!-- 페이징 추가 6-->
						self.pageCount = Math.ceil(data.cnt / 10);
					}
				});
			}
			<!-- 페이징 추가 7-->
			, fnSearch : function(pageNum){
				var self = this;
				self.selectPage = pageNum;
				var startNum = ((pageNum-1) * 10);
				/* var lastNum = pageNum * 10 */
				var lastNum = 10;
				var nparmap = {startNum : startNum, lastNum : lastNum};
				$.ajax({
					url : "/list_board.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.list = data.list;
						self.pageCount = Math.ceil(data.cnt / 10);
					}
				});
			}
			// 조회
			,
			fnView : function(item) {
				var self = this;
				self.pageChange("./view_board.do", {
					bNo : item.bNo
				});
			}

			// 작성
			,
			fnAdd : function() {
				var self = this;
				self.pageChange("./add_board.do", {});
			},
			fnEdit : function() {
				var self = this;
				var nparmap = {
					boardNum : 13,
					userId : "Lee"
				};

				$.ajax({
					url : "/edit_board.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("수정되었습니다.");
						self.fnGetList();
					}
				});
			}

			,
			fnRemove : function() {
				var self = this;
				var list = JSON.stringify(self.selectedItemList);
				var nparmap = {
					"test" : "1",
					"list" : list
				};
				$.ajax({
					url : "/remove_board.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("삭제되었습니다.");
						self.selectedItemList = [];
						self.fnGetList();
					}
				});
			}

			/*     	, fnTest : function(){
			 var self = this;
			 self.pageChange("./test.do", {test1 : "1", test2 : "2"});
			 } */

			,
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