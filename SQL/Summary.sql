SELECT * FROM bank;

SELECT COUNT(id) as Total_Loan_Applicants FROM bank_loan_data;

SELECT SUM(loan_amount) as Total_Loan_Amount FROM bank_loan_data;

SELECT SUM(total_payment) as Total_Amount_Received FROM bank_loan_data;

SELECT ROUND(AVG(int_rate), 4) * 100 as Avg_Interest_Rate FROM bank_loan_data;

SELECT ROUND(AVG(dti), 4) * 100 as Avg_DTI FROM bank_loan_data;

SELECT COUNT(id) as Good_Loan_Application FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT 
	COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100 
	/
	COUNT(id) as Good_Loan_Percentage
FROM bank_loan_data;

SELECT SUM(loan_Amount) as Good_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT SUM(total_payment) as Good_Loan_Amount_Received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';


SELECT 
	COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100 
	/
	COUNT(id) as Bad_Loan_Percentage
FROM bank_loan_data;

SELECT COUNT(id) as Bad_Loan_Application FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(loan_amount) as Bad_Loan_Funded_Amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

SELECT SUM(total_payment) as Bad_Loan_Amount_Received FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT
	COUNT(id) as Total_Application,
	SUM(total_payment) as Total_Amount_Received,
	SUM(loan_amount) as Total_Funded_Amount,
	ROUND(AVG(int_rate * 100), 4) as Interest_Rate,
	ROUND(AVG(dti * 100), 4) as DTI
FROM bank_loan_data
GROUP BY loan_status;