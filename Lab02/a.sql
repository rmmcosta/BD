SELECT	DEPOSITOR.CUSTOMER_NAME
FROM	ACCOUNT
		INNER JOIN DEPOSITOR
		ON 	DEPOSITOR.ACCOUNT_NUMBER
			=
			ACCOUNT.ACCOUNT_NUMBER
WHERE	ACCOUNT.BALANCE > 500;

/*the same query but with natural join*/
SELECT	DEPOSITOR.CUSTOMER_NAME
FROM	ACCOUNT NATURAL JOIN DEPOSITOR
WHERE	ACCOUNT.BALANCE > 500;

/* with full join*/
SELECT	DEPOSITOR.CUSTOMER_NAME
FROM	ACCOUNT full join DEPOSITOR using(account_number)
WHERE	ACCOUNT.BALANCE > 500;

/*the same but accepting parameters*/
PREPARE customer500 (int) AS
    SELECT	DEPOSITOR.CUSTOMER_NAME
    FROM	ACCOUNT
            INNER JOIN DEPOSITOR
            ON 	DEPOSITOR.ACCOUNT_NUMBER
                =
                ACCOUNT.ACCOUNT_NUMBER
    WHERE	ACCOUNT.BALANCE > $1;

execute customer500(500);
