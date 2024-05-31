<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:include page="../include/header.jsp" />



<link rel="stylesheet" type="text/css" href="../css/ShareSquare_write.css">


<%--ShareSquare_write 본문--%>
<div id="aMain_cont">
  <div id="aBw_wrap">
    <h2 class="aBw_title">후기 공유 작성</h2>
    <form method="post" action="ShareSquare_write_ok" onsubmit="return ss_writecheck();" enctype="multipart/form-data">
     <table id="aBw_t">
      <tr>
       <th>작성자</th>
       <td><input name="Sboard_writer" id="Sboard_writer" size="30"></td>
      </tr>
      <tr>
       <th>제목</th>
       <td><input name="Sboard_title" id="Sboard_title" size="48"></td>
      </tr>
      <tr>
       <th>후기</th>
       <td><textarea name="Sboard_content" id="Sboard_content" rows="15" cols="50"></textarea></td>
      </tr>
      <tr>
       <th>파일첨부</th>
        <td><input type="file" multiple name="uploadFile" name="uploadFile"></td>
      </tr>
     </table>
     <div id="aBw_menu">
       <input type="submit" value="작성" />
       <input type="reset" value="취소" onclick="location='ShareSquare';">
       <input type="button" value="목록" onclick="location='ShareSquare';" >
     </div>
    </form>
  </div>
</div>

<jsp:include page="../include/footer.jsp" />