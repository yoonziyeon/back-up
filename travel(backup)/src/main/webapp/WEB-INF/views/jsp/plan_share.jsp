<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<jsp:include page="../include/header.jsp" />

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<title>plan_share</title>
<link rel="stylesheet" type="text/css" href="../css/plan_share.css">

</head>
<body>
<div class="post">
   <div class="part1" id="daily">
       <img src="#" alt="daily" ></div> 
   
   <div class="part2" id="map">
       <img src="#" alt="map" ></div> 
       
   <div class="part3" id="plan">
       <img src="#" alt="plan" ></div>     
</div>

<!-- 좋아요 하트 -->
<div id="btn-like">
   <i class="like bi bi-heart"></i>
</div>

<!-- 댓글 작성 -->
<div class="reply">
  <br>
  <form action="/addReply" method="post">
  <div class="reply_cont">
   댓글 작성자 : ${sreplyer}
  </div>
  <br>
  <div class="reply_cont">
   댓글 내용 : <br><br> <textarea rows="8" cols="50" name="sreplytext" id="newReplyText">${replytext}</textarea>
   <button type="submit" id="sreplyAddBtn" >댓글 등록</button>
   </form>
  </div>  
</div>

<%-- 외부 javascript 파일 연결 --%>
<script src="../js/plan_share.js"></script>

<script src="../js/heart.js"></script>


</body>
</html>

 <%--일정관리 footer --%>
   <jsp:include page="../include/footer.jsp" />
  