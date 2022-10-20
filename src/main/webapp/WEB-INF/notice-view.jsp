<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en"> 
<head>
<jsp:include page="/layout/header.jsp"></jsp:include>
<title>공지사항</title>
</head>
<body style="margin-top:170px;">
	<div class="section">
		<div id="app">
			<div class="container">
				<div align="center">
					<h3>{{info.title}}</h3>
					<h5>{{info.changedate}}</h5>
					<h5>{{info.aId}}</h5>
					{{info.content}}
				</div>
				<button @click="fnList" class="btn btn-primary" style="float: right;">목록</button>
				<button @click="fnDel" class="btn btn-primary" style="float: right;">삭제</button>
			</div>
		</div>
	</div>
</body>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</html>

<script type="text/javascript">
	var app = new Vue({
		el : '#app',
		data : {
			list : [],
			info : {},
			bNo : "${map.bNo}"
		},
		methods : {
			fnGetNotice : function() {
				var self = this;
				var nparmap = {
					bNo : self.bNo
				};
				$.ajax({
					url : "/view_notice.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.info = data.notice;
					}
				});
			},

			// 삭제
			fnDel : function() {
				var self = this;
				var nparmap = {
					bNo : self.bNo
				};
				$.ajax({
					url : "/del_notice.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("삭제되었습니다.");
						location.href = "/notice.do";
					}
				});
			},

			fnList : function() {
				location.href = "/notice.do";
			}
		},
		created : function() {
			var self = this;
			self.fnGetNotice();
		}
	});
</script>