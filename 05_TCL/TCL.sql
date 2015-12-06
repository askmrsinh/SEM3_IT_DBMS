-- Transactional Control Language (TCL)
-- BASIC COMMANDS:
--   COMMIT - Saves database transactions
--   ROLLBACK - Undoes database transactions
--   SAVEPOINT - Creates points within groups of transactions in which to ROLLBACK


Begin tran
delete from employee_2012
where First_name = 'Qndra'
save tran point;

select *
from employee_2012;

begin
rollback
end;

select *
from employee_2012;

Begin tran
delete from employee_2012
where First_name = 'Qndra'
commit;

select *
from employee_2012;

--to show the effect of rollback on commit
begin
rollback
end;
