<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- font awseome -->
<script src="https://kit.fontawesome.com/820e0af322.js"
	crossorigin="anonymous"></script>
<!-- 가장 우선인 css -->
<link rel="stylesheet" href="css/noticestyle.css">

<script src="https://unpkg.com/vuejs-paginate@latest"></script>
<script src="https://unpkg.com/vuejs-paginate@0.9.0"></script>

<jsp:include page="/layout/header.jsp"></jsp:include>

<style>
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

<title>공지사항</title>
</head>
<body style="margin-top: 170px;">
	<br>
	<br>
	<div class="section">
		<div id="appNotice">

			<div class="container">

				<table class="table table-striped">
					<colgroup>
						<col width="15%" />
						<col width="*" />
						<col width="15%" />
						<col width="25%" />
					</colgroup>
					
					<thead>
						<tr align="center">
							<th scope="col">글번호</th>
							<th scope="col">제목</th>
							<th scope="col">조회수</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					
					<tbody>
						<tr v-for="(item, index) in list">
							<td align="center"><a href="javascript:;" @click="fnView(item)">{{item.bNo}}</a></td>
							<td align="center"><a href="javascript:;" @click="fnView(item)">{{item.title}}</a></td>
							<td align="center">{{item.bView }}</td>
							<td align="center"><label v-bind:for="'idx_' + index">{{item.changedate}}</label></td>
						</tr>
					</tbody>
				</table>
				
				<div v-if="'${userIdSession}'=='admin'">
					<button type="button" @click="fnAdd" class="btn btn-primary"
						style="float: right;">
						<a href="#.jsp" id="notice-write">공지사항 작성</a>
					</button>
				</div>
				
				<br>
			</div>
		</div>
	</div>
</body>

</html>

<jsp:include page="/layout/footer.jsp"></jsp:include>

<script type="text/javascript">
Vue.component('paginate', VuejsPaginate)
	var appNotice = new Vue({
		el : '#appNotice',
		data : {
			list : [],
			selectedItemList : []
	
			, selectPage: 1
			, pageCount: 1
		},
		methods : {
			fnGetList : function() {
				var self = this;
				var startNum = ((self.selectPage-1) * 10);
	    		var lastNum = self.selectPage * 10
				var nparmap = {startNum : startNum, lastNum : lastNum};
				$.ajax({
					url : "/list_notice.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.list = data.list;
						self.pageCount = Math.ceil(data.cnt / 10);
					}
				});
			}
			, fnSearch : function(pageNum){
				var self = this;
				self.selectPage = pageNum;
				var startNum = ((pageNum-1) * 10);
				/* var lastNum = pageNum * 10 */
				var lastNum = 10;
				var nparmap = {startNum : startNum, lastNum : lastNum};
				$.ajax({
					url : "/list_notice.dox",
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
				self.pageChange("./view_notice.do", {
					bNo : item.bNo
				});
			}

			// 작성
			,
			fnAdd : function() {
				var self = this;
				self.pageChange("./add_notice.do", {});
			},
			fnEdit : function() {
				var self = this;
				var nparmap = {
					boardNum : 13,
					userId : "${userIdSession}"
				}
			

				$.ajax({
					url : "/edit_notice.dox",
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