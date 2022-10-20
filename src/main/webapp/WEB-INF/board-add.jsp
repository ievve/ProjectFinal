<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- 가장 우선인 css -->
<link rel="stylesheet" href="css/boarddetail.css">
<jsp:include page="/layout/header.jsp"></jsp:include>
<title>자유게시판</title>
</head>
<body style="margin-top: 170px;">
	<div class="section">
		<div id="app">
 <!-- 게시글 내용 -->
    <div id="page-wrapper" class="clearfix">
		<h1>게시글 작성</h1>
		<p>자유로운 글을 남겨주세요</p>
	
		<form action="/board.do" method="POST" id="file-form">
		  <div class="field">
			<input type="text" id="title"
			name="title" v-model="title" placeholder="제목을 작성해주세요">
		  </div>
		  <div class="field">
			<textarea name="content" id="content" v-model="content" placeholder="내용을 작성해주세요"></textarea>
		  </div>
		    <div class="field">
			<button  @click="fnSave" >저장</button>
			<button  @click="fnList">취소</button>
			<div id="messages"></div>
		  </div> 
		</form>
		
		<div id="messages"></div>
		  </div>

	  </div></div></div>
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
					status : 'B'
				};
				$.ajax({
					url : "/add_board.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("저장되었습니다.");
						location.href = "/board.do";
					}
				});
			},
			fnList : function() {
				location.href = "/board.do";
			}
		},
		created : function() {

		}
	});
</script>