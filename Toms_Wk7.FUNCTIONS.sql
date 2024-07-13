-- Total Amount Spent on Groceries by User 1
SELECT SUM(Amount) AS Total_Groceries_Spent
FROM Transactions
WHERE User_ID = 1 AND Category = 'Groceries' AND Type = 'Expense';

-- Average Amount Spent on Groceries by User 1
SELECT AVG(Amount) AS Avg_Groceries_Spent
FROM Transactions
WHERE User_ID = 1 AND Category = 'Groceries' AND Type = 'Expense';

-- Count of Expense Transactions by User 1
SELECT COUNT(*) AS Expense_Transactions_Count
FROM Transactions
WHERE User_ID = 1 AND Type = 'Expense';