-- insert
insert into guestbook values(GUESTBOOK_SEQ.nextval,'moon','1234','ㅎㅇ',SYSDATE);

-- select
select no, name, password, message, to_char(reg_date,'YYYY-MM-DD HH:MI:SS') from guestbook;

-- delete
delete from guestbook where no = 3 and password=1234;


commit;