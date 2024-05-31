/**
 * ShareSquare.js
 */
 
 function ss_writecheck(){
 
    if($.trim($('#Sboard_writer').val()) == ''){
      alert('작성자를 입력하세요!');
      $("#Sboard_writer").val("").focus();
      return false;
    }  
    
    if($.trim($('#Sboard_title').val()) == ''){
      alert('제목을 입력하세요!');
      $("#Sboard_title").val("").focus();
      return false;
    } 
        
    if($.trim($('#Sboard_content').val()) == ''){
      alert('내용을 입력하세요!');
      $("#Sboard_content").val("").focus();
      return false;
    }  
 }
 
 
 
 
 
 