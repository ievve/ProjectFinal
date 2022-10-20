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
	
		<form>
					<div class="mb-3 mt-3">
						<label for="bno" class="form-label"><h3>제목</h3></label> <textarea class="form-control" id="content" name="content"
							disabled>{{info.title}}</textarea>
					</div>
					<div class="mb-3">
						<label for="title" class="form-label"><h5>날짜</h5></label> <textarea class="form-control" id="content" name="content"
							disabled>{{info.changedate}}</textarea>
					</div>
					<div class="mb-3">
						<label for="content" class="form-label">내용</label>
						<textarea class="form-control" id="content" name="content"
							disabled>{{info.content}}</textarea>
					</div><br>
				
					
		<!--  <div class="field">
			<h3>{{info.title}}</h3>
		  </div>
		  <div class="field">
		  <h5>{{info.changedate}}</h5>
			
		  </div>
		  <div class="field">
		  {{info.content}}
		  </div> -->
		    <div class="field">
			<button  @click="fnList">목록</button>
			<button  @click="fnMoveUpd">삭제</button>
			<button  @click="fnUpd">수정</button> 
			
		  </div> 
		</form>
	  </div></div></div>
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

			fnList : function() {
				location.href = "/anoymous.do";
			},

			fnUpd : function() {
				var self = this;
				var nparmap = {
					bNo : self.bNo,
					content : info.content
				};
				$.ajax({
					url : "/upd_anoymous.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("수정되었습니다.");
						location.href = "/anoymous.do";
					}
				});
			},
			
			fnDel : function() {
				var self = this;
				var nparmap = {
					bNo : self.bNo
				};
				$.ajax({
					url : "/del_anoymous.dox",
					dataType : "json",
					type : "POST",
					data : nparmap,
					success : function(data) {
						alert("삭제되었습니다.");
						location.href = "/anoymous.do";
					}
				});
			},
			fnMoveUpd : function(item) {
				var self = this;
				self.pageChange("./update_anoymous.do", {
					bNo : item.bNo
				});
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
			var self = this;
			self.fnGetAnoymous();
		}
	});
</script>
