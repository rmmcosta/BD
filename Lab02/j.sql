select	sum(account.balance)
from	branch
		inner join account
		on	account.branch_name
			=
			branch.branch_name
where	branch.branch_city = 'Lisbon';