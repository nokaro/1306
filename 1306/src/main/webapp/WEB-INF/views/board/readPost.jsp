<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 읽기</title>
<script type="text/javascript">
	
	function pageMoveListFnc() {
		location.href = './list.do';
	}

	function pageMoveDeleteFnc(no) {
		var url = './deletePost.do?pno=' + no;
		location.href = url;
	}
	
	function pageMoveCorrectFnc(no) {
		var url = './correctPost.do?pno=' + no;
		location.href = url;
	}
	
	//댓글 삭제창
	function replyDeleteMsgFnc(pno, rno) {
		var msg = confirm("댓글을 삭제합니다.");
		if(msg == true){
			replyDeleteFnc(pno, rno);
		}
		else{
			return false;
		}
	}
	
	//댓글 삭제 
	function replyDeleteFnc(pno, rno){
		var url = './replyDelete.do?rno=' + rno + '&pno=' + pno;
		location.href = url;
	}

</script>
</head>

<body>
	<table border="1" align="center">
		<tr align="center">
			<td width=20%><b>ID</b></td>
			<td width=20%><b>등록일</b></td>
			<td width=20%><b>내용</b></td>
			<td width=20%><b>태그</b></td>
		</tr>
		<tr align="center">
			<td>${boardVo.id}</td>
			<td><fmt:formatDate value="${requestScope.boardVo.regiDate}"
					pattern="YYYY-MM-dd hh:mm" /></td>
			<td>${boardVo.content}</td>
			<td>${boardVo.tag}</td>
		</tr>
	</table>
	
	<!-- 댓글조회 -->
	<div id="reply">
	  <ol class="replyList">
	    <c:forEach items="${replyList}" var="replyList">
	      <li>
	        <p>
	        작성자 : ${replyList.writer}<br />
	        작성 날짜 :  <fmt:formatDate value="${replyList.wdate}" pattern="yyyy-MM-dd" />
	        </p>
	
	        <p>${replyList.content}</p>
	        
	        <div>
	        	<a href="#" onclick="replyDeleteMsgFnc(${boardVo.pno}, ${replyList.rno})">[수정]</a>
	        	<a href="#" onclick="replyDeleteMsgFnc(${boardVo.pno}, ${replyList.rno})">[삭제]</a>
	        </div>
	      </li>
	    </c:forEach>   
	  </ol>
	</div>
	
	<!-- 댓글등록 -->
	<div>
	<form method="post" name="replyForm" action="./writeReplyCtr.do" >
	
		<p>
			<label>댓글 작성자: </label> ${boardVo.id} <input type="hidden" name="writer" value="${boardVo.id}">
		</p>
		<p>
			<textarea rows="5" cols="50" name="content"></textarea>
		</p>
		<p>
			<input type="hidden" name="pno" value="${boardVo.pno}">
			<button type="submit">댓글 작성</button>
		</p>
	</form>
	</div>
	
		
	<input type="button" value="수정" onclick="pageMoveCorrectFnc(${boardVo.pno});">
	<input type="button" value="삭제"
		onclick="pageMoveDeleteFnc(${boardVo.pno})">
	<!-- 글 전체목록으로 되돌아가기 -->
	<input type="button" value="뒤로가기" onclick="pageMoveListFnc();">

</body>
</html>