select 	account.branch_name
from	depositor
		inner join account
		on 	account.account_number
			=
			depositor.account_number
where	depositor.customer_name like 'J%n';