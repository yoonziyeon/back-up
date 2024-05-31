alter sequence SSBoard_no_seq nocache; --nocache로 수정
 
alter sequence SSBoard_no_seq nocycle; --nocycle로 수정

select * from SSBoard;

insert into SSBoard (ssb_no, ssb_name, ssb_title, ssb_pwd, ssb_cont, ssb_hit, ssb_ref, ssb_step, ssb_date)
values(SSBoard_no_seq.nextval,'윤지연','테스트','7777','게시글입니다',0,0,0,sysdate);
