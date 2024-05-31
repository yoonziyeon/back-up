alter sequence Sboard_no_seq nocache; --nocache로 수정
 
alter sequence Sboard_no_seq nocycle; --nocycle로 수정

select * from Share_Square;

alter table Share_Square drop column fileloca;
alter table Share_Square drop column filename;
alter table Share_Square drop column filerealname;
alter table Share_Square drop column uploadpath;

select last_number from Share_Square where Sequence_name='sboard_no';

