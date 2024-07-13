-- Insert into User Account
INSERT INTO User_Account (User_ID, Email, Password, Date_of_Registration)
VALUES (1, 'john.doe@example.com', '$2a$04$1W9o.hd66TQw1GYXHAXDKOKKtGd/ELHz.NDRe/8jKVvVlPow82oeS', TO_DATE('2023-09-30', 'YYYY-MM-DD'));

-- Insert into Bank Accounts
INSERT INTO Bank_Accounts (Bank_Account_ID, User_ID, Bank_Name, Account_Number, Account_Type, Current_Balance, Loan_Balance)
VALUES (1, 1, 'Bank of Example', '1234567890', 'Checking', 5000.00, 0.00);

INSERT INTO Bank_Accounts (Bank_Account_ID, User_ID, Bank_Name, Account_Number, Account_Type, Current_Balance, Loan_Balance)
VALUES (2, 1, 'Bank of Example', '0987654321', 'Savings', 10000.00, 0.00);

-- Insert into Transactions
INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (1, 1, 1, 100.00, TO_DATE('2023-09-25', 'YYYY-MM-DD'), 'Grocery Shopping', 'Groceries', 'Expense');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (2, 1, 1, 50.00, TO_DATE('2023-09-26', 'YYYY-MM-DD'), 'Dining Out', 'Entertainment', 'Expense');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (3, 1, 1, 200.00, TO_DATE('2023-09-27', 'YYYY-MM-DD'), 'Electric Bill', 'Bills', 'Expense');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (4, 1, 1, 1000.00, TO_DATE('2023-09-28', 'YYYY-MM-DD'), 'Salary', 'Income', 'Income');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (5, 1, 2, 75.00, TO_DATE('2023-09-25', 'YYYY-MM-DD'), 'Grocery Shopping', 'Groceries', 'Expense');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (6, 1, 2, 30.00, TO_DATE('2023-09-26', 'YYYY-MM-DD'), 'Dining Out', 'Entertainment', 'Expense');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (7, 1, 2, 300.00, TO_DATE('2023-09-27', 'YYYY-MM-DD'), 'Rent Payment', 'Bills', 'Expense');

INSERT INTO Transactions (Transaction_ID, User_ID, Bank_Account_ID, Amount, Transaction_Date, Description, Category, Type)
VALUES (8, 1, 2, 500.00, TO_DATE('2023-09-28', 'YYYY-MM-DD'), 'Freelance Work', 'Income', 'Income');

COMMIT;

