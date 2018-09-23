select	customer.customer_name
from	customer
where 	exists (	select 	1 
					from	borrower
							inner join loan
							on	loan.loan_number
								=
								borrower.loan_number
							inner join branch
							on	branch.branch_name
								=
								loan.branch_name
					where	borrower.customer_name = customer.customer_name
							and branch.branch_city = customer.customer_city
				);