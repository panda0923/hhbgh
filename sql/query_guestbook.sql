insert
  into guestbook
values (guestbook_seq.nextval, '안대혁', '1234', '하이', SYSDATE );

insert
  into guestbook
values (guestbook_seq.nextval, '방문자1', '1234', '하이~', SYSDATE );

delete
  from guestbook
 where no=1 and password='1234';  
  
commit;

  select no, name, password, message, to_char( reg_date, 'yyyy-MM-dd hh:mm:ss' )
    from guestbook
order by reg_date desc;  
