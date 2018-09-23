select	loan.amount
from	customer
		inner join borrower
		on 	borrower.customer_name
			=
			customer.customer_name
		inner join loan
		on	loan.loan_number
			=
			borrower.loan_number
where	char_length(customer.customer_city) = 6;