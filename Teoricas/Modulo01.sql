/*use of union*/
select 	borrower.customer_name
from	borrower
union
select	depositor.customer_name
from	depositor;

/*use of intersect*/
select 	borrower.customer_name
from	borrower
intersect
select	depositor.customer_name
from	depositor;

/*use of except*/
select 	borrower.customer_name
from	borrower
except
select	depositor.customer_name
from	depositor;

select	depositor.customer_name
from	depositor
except
select 	borrower.customer_name
from	borrower
;