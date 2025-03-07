select * from grades;

start transaction;

savepoint sp1;

insert into grades values(17,'b'),(21,'c');

select * from grades;

rollback to sp1;

select * from grades;

commit;


