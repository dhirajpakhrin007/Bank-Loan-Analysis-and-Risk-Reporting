SELECT * FROM bank_loan_data;


SELECT 
	MONTH(issue_date) as Month_Num,
	DATENAME(MONTH, issue_date) as Month,
	COUNT(id) as Total_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);


SELECT 
	address_state,
	COUNT(id) as Total_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY COUNT(id) DESC;

SELECT 
	term,
	COUNT(id) as Total_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term;

SELECT 
	emp_length,
	COUNT(id) as Total_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY COUNT(id) Desc;

SELECT 
	purpose,
	COUNT(id) as Total_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY COUNT(id) Desc;


SELECT 
	home_ownership,
	COUNT(id) as Total_Application,
	SUM(loan_amount) as Total_Funded_Amount,
	SUM(total_payment) as Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY COUNT(id) Desc;




