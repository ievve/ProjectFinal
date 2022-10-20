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
			<div class="container" align="center">
				<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
				<br>
				<table class="board_detail">
					<colgroup>
						<col width="10%" />
						<col width="*" />
					</colgroup>
					<tr>
						<td>제목</td>
						<td><input class="form-control" type="text" id="title" name="title" v-model="title" style="width:500px;"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea class="form-control" rows="15" cols="54" id="content" name="content" v-model="content"></textarea></td>
					</tr>
				</table>
				<br>
				<button @click="fnList" class="btn btn-primary" style="float: right;">목록</button>
				<button @click="fnSave" class="btn btn-primary" style="float: right;">저장</button>
				<br>
			</div>
		</div>
	</div>
	<p style="border: 0.5px solid rgb(52, 47, 114);"></p>
	<br>
</body>
<jsp:include page="/layout/footer.jsp"></jsp:include>
</html>

<script type="text/javascript">
	var app = new Vue({
		el : '#app',
		data : {
			list : [],
			selectedItemList : [],
			content : "",
			title : "",
			status : ""
		},
		methods : {
			fnSave : function() {
				var self = this;
				var nparmap = {
					title : self.title,
					content : self.content,
					status : 'N'
				};
				$.ajax({
					url : "/add_notice.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("저장되었습니다.");
						location.href = "/notice.do";
					}
				});
			},
			fnList : function() {
				location.href = "/notice.do";
			}
		},
		created : function() {

		}
	});
</script>