<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<jsp:include page="/layout/header.jsp"></jsp:include>
<title>익명게시판</title>
</head>
<body style="margin-top: 170px;">
	<div class="section">
		<div id="appl">
			<div class="container" align="center">

				<table class="board_detail">
					<colgroup>
						<col width="10%" />
						<col width="*" />
					</colgroup>
					<tr>
						<td>제목</td>
						<td><input type="text" id="title" name="title"
							v-model="title" readonly="readonly" value="${{info.title}}"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="2"><textarea id="contents" name="content"
								v-model="content" value="${{info.content}}"></textarea></td>
					</tr>
				</table>
				
				<button @click="fnList" class="btn btn-primary" style="float: right;">목록</button>
				<button @click="fnDel" class="btn btn-primary" style="float: right;">삭제</button>
				<button @click="fnUpd" class="btn btn-primary" style="float: right;">저장</button>
				
			</div>
		</div>
	</div>
	<jsp:include page="/layout/footer.jsp"></jsp:include>
</body>
</html>
<script type="text/javascript">
	var appl = new Vue({
		el : '#appl' ,
		data : {
			list :[] ,
			info : {} ,
			bNo : "${map.bNo}" ,
			title : "",
			content : ""			
		},
		methods : {
			fnGetAnoymous : function() {
				var self = this;
				var nparmap = {
					bNo : self.bNo						
				};
				$.ajax({
					url : "/view_anoymous.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						self.info = data.anoymous;
					}					
				});
			},
			fnDel : function() {
				var self = this;
				var nparmap = {
					bNo : self.bNo 
				};
				$.ajax({
					url : 
				})
			}
		}
		
	})

