CREATE TABLE CREDIT_CARD_EXPENSES (
    expense_id INT IDENTITY(1,1) PRIMARY KEY,  -- Unique identifier for each expense record
    person_name VARCHAR(50),                    -- Name of the person
    date_of_entry DATE,                          -- Date of the expense
    week_of_year INT,                           -- Week of the year (for grouping by weeks)
    year INT,                                   -- Year of the expense
    major_expense_category VARCHAR(100),              -- Category of the expense (e.g., Groceries, Travel)
    amount DECIMAL(10, 2),                      -- Amount spent
    credit_card_provider VARCHAR(50),           -- Credit card provider (e.g., Visa, MasterCard)
    notes VARCHAR(255)                          -- Optional notes about the expense
);

-- select * from CREDIT_CARD_EXPENSES;


CREATE TABLE PAYMENTS (
    payment_id INT IDENTITY(1,1) PRIMARY KEY,    -- Unique identifier for each payment record
    person_name VARCHAR(50),                     -- Name of the person
    payment_date DATE,                           -- Date when the payment was made
    amount_paid DECIMAL(10, 2),                  -- Amount paid
    payment_method VARCHAR(50),                  -- Payment method (e.g., Credit Card, Bank Transfer)
    credit_card_provider VARCHAR(50),            -- The provider to which the payment was made
    notes VARCHAR(255)                           -- Optional notes about the payment
);

-- select * from Payments;
