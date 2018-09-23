select	customer.customer_name
from	customer
where 	exists (	select 	1 
					from	depositor
							inner join account
							on	account.account_number
								=
								depositor.account_number
							inner join branch
							on 	branch.branch_name 
								=
								account.branch_name
					where	depositor.customer_name = customer.customer_name
							and branch.branch_city = customer.customer_city
				);