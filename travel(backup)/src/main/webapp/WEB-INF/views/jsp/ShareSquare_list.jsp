<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="../include/header.jsp" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Share Square</title>
<link rel="stylesheet" type="text/css" href="../css/ShareSquare_list.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<script src="../js/ShareSquare_list.js"></script>





</head>

<body>
		<div class="main_img"></div>

		<div class="line">
			<p>▷ Share Square ◁</p>
		</div>

		<%--일정공유 상단 --%>
		<div class="search-container">
			<form action="search_result.jsp" method="GET">
				<input type="text" name="text" placeholder="국가/도시/회원ID 를(을) 입력하세요">
				<button type="submit">검색</button>
			</form>
		</div>

		<!-- 버튼 박스 -->
		<div class="button_box">
			<a href="add_schedule.jsp" class="btn_1">New Schedule</a> <a
				href="my_trip.jsp" class="btn_2">My Trip</a> <a href="share_c.jsp"
				class="btn_3">Share Square</a>
		</div>

		<!-- 정렬 버튼 -->
		<div class="sort-box">
			<a href="WishList.jsp" class="btn_wish">Wish List</a> <a
				href="Best.jsp" class="btn-best">Best</a>
		</div>

		<!-- 중심 게시물 -->
		<!-- https://ktsmemo.cafe24.com/s/SwiperJS/367  나중에 지우기ㅎㅎ-->
		
		<div class="swiper-container">
				
  	      <form method="post" action="ShareSquare_list" enctype="multipart/form-data">
	  		<div class="swiper-container">
			<c:if test="${!empty slist}">
			  <div class="swiper-slide">
			  			
			   <ul>
				<li>
				 <c:forEach items="${share}" var="s2" >    
				   <a href="plan_share.jsp"> <span class="thumb">
			       <img src="../images/map.jpg" alt="국기이미지" onclick="location.href='plan_share.jsp'">
			       <br> <strong> Category(제목/여행지) : ${s2.sboard_title}  </strong></span> 
			       <br> <td> ${s2.sboard_no} </td> <td>작성자 : ${s2.sboard_writer} </td> 
			       <br> <td>조회수 : ${s2.sboard_hit} </td> &nbsp;&nbsp;&nbsp;&nbsp; <td>${fn:substring(s2.sboard_Regdate,0,10)}</td> </a>
			     </c:forEach>	
			   		<c:if test="${empty slist}"> 내용 없음 </c:if> 	 
		 	     </li>
		 	    </ul>
		 	   </div>
		      </c:if>	
		     </div>
		     

	
			  <!-- 페이징 -->
			 <div class="swiper-pagination">
			 
			    
	     		 <!-- 네비게이션 다음 버튼 (오른쪽에 있는 버튼) -->
				 <div class="swiper-button-next"></div>
				 <!--  이전 버튼 -->
				 <div class="swiper-button-prev"></div>
	     		  
	          </div>	  	    
			  			  
		  </form>
		</div> 
	
	    
	    
	    
	    
	    
	    
	    <table border="1">
	    
	<tr>
		<td colspan="4"><a href="write.do">[게시글쓰기]</a></td>
	</tr>
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>조회수</td>
	</tr>

<c:if test="${empty slist}">
<form method="post" action="ShareSquare_list" enctype="multipart/form-data">
<c:forEach var="s2" items="${share}">
	<tr>
	
		<td>${s2.sboard_title}</td>
		<td>
		
		<c:out value="${s2.sboard_no}"/>
		
		</td>
		<td>${s2.sboard_writer}</td>
		<td>${fn:substring(s2.sboard_Regdate,0,10)}</td>
	
	</tr>
	
</c:forEach>


</form>

	</c:if>
	<c:if test="${empty slist}">
	<tr>
		<td colspan="4">게시글이 없습니다.</td>
	</tr>
</c:if>
	
</table>
		 
<!--<%--페이징 즉 쪽나누기 추가 --%>
			  <div id="sList_paging">
			  <%-- 검색전 페이징 --%>
			  <c:if test="${(empty find_field) && (empty find_name)}">
		      <c:if test="${page<=1}">[이전]&nbsp; </c:if>
		      <c:if test="${page>1}">
		      <a href="ShareSquare_list?page=${page-1}">[이전]</a>&nbsp;
   		      </c:if>

			  <%--현재 쪽번호 출력--%>
		      <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
		      <c:if test="${a == page}">
		      <%--현재 페이지가 선택되었다면--%>
     	      <${a}>
              </c:if>
		      <c:if test="${a != page}">
		      <%--현재 페이지가 선택되지 않았다면 --%>
		      <a href="ShareSquare_list?page=${a}">[${a}]</a>&nbsp;
              </c:if>
	          </c:forEach>

			  <c:if test="${page >= maxpage}"> [다음] </c:if>
		      <c:if test="${page<maxpage}">
			  <a href="ShqreSquare_list?page=${page+1}">[다음]</a>
			  </c:if>
		      </c:if>

			  <%-- 검색후 페이징 --%>
			  <c:if test="${(!empty find_field) || (!empty find_name)}">
			  <c:if test="${page<=1}">[이전]&nbsp;</c:if>
			  <c:if test="${page>1}">
			  <a href="ShareSquare_list?page=${page-1}&find_field=${find_field}&find_name=${find_name}">[이전]</a>&nbsp;
    		  </c:if>

		      <%--현재 쪽번호 출력--%>
			  <c:forEach var="a" begin="${startpage}" end="${endpage}" step="1">
			  <c:if test="${a == page}">
		      <%--현재 페이지가 선택되었다면--%>
              <${a}>
              </c:if>
		      <c:if test="${a != page}">
		      
			  <%--현재 페이지가 선택되지 않았다면 --%>
			  <a href="ShareSquare_list?page=${a}&find_field=${find_field}&find_name=${find_name}">[${a}]</a>&nbsp;
       		  </c:if>
			  </c:forEach>
			  <c:if test="${page >= maxpage}"> [다음] </c:if>
			  <c:if test="${page<maxpage}">
			  <a href="ShareSquare_list?page=${page+1}&find_field=${find_field}&find_name=${find_name}">[다음]</a>
			  </c:if>
		      </c:if>
		      </div>
			  
			  
			  <%--검색 폼추가 --%>
		      <div id="bFind_wrap">
			  <select name="find_field">
				<option value="sboard_title"
					<c:if test="${find_field=='sboard_title'}"> ${'selected'}</c:if>>제목</option>
				<option value="sboard_cont"
					<c:if test="${find_field=='sboard_cont'}"> ${'selected'}</c:if>>내용</option>
				</select> <input type="search" name="find_name" id="find_name" size="14"
					value="${find_name}" /> <input type="submit" value="검색" />
			   </div>    --> 
		  
				  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
			  
		      <!-- 후기작성 버튼 -->
		      <div class="button_Write">
		       <input type="button" class="button2" value="후기작성" onclick="location='ShareSquare_Write';">  	
	          </div>
			  
			  
			  

		


		




		
</body>
</html>

<%--일정관리 footer --%>
<jsp:include page="../include/footer.jsp" />