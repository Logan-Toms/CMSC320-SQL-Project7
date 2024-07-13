-- Create User Account table
CREATE TABLE User_Account (
    User_ID NUMBER PRIMARY KEY,
    Email VARCHAR2(255) NOT NULL,
    Password VARCHAR2(255) NOT NULL,
    Date_of_Registration DATE NOT NULL
);

-- Create Bank Accounts table
CREATE TABLE Bank_Accounts (
    Bank_Account_ID NUMBER PRIMARY KEY,
    User_ID NUMBER REFERENCES User_Account(User_ID),
    Bank_Name VARCHAR2(255) NOT NULL,
    Account_Number VARCHAR2(255) NOT NULL,
    Account_Type VARCHAR2(50) CHECK (Account_Type IN ('Checking', 'Savings')),
    Current_Balance DECIMAL(15, 2) NOT NULL,
    Loan_Balance DECIMAL(15, 2) NOT NULL
);

-- Create Transactions table
CREATE TABLE Transactions (
    Transaction_ID NUMBER PRIMARY KEY,
    User_ID NUMBER REFERENCES User_Account(User_ID),
    Bank_Account_ID NUMBER REFERENCES Bank_Accounts(Bank_Account_ID),
    Amount DECIMAL(15, 2) NOT NULL,
    Transaction_Date DATE NOT NULL,
    Description VARCHAR2(255),
    Category VARCHAR2(255) NOT NULL,
    Type VARCHAR2(50) CHECK (Type IN ('Income', 'Expense'))
);
