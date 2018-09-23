select	branch.assets
from	depositor
		inner join account
		on	account.account_number
			=
			depositor.account_number
		inner join branch
		on	branch.branch_name
			=
			account.branch_name
where	depositor.customer_name = 'Johnson';