-- 1. Get all users from Chicago.
SELECT username FROM syntax_practice
WHERE city='chicago';


-- 2. Get all users with usernames that contain the letter a.
SELECT username FROM syntax_practice
WHERE username LIKE '%a%';

-- 3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice
SET account_balance = 10
WHERE user_id = 5;

-- 4. Select all users that have attempted 9 or more transactions.
SELECT * FROM syntax_practice
WHERE transactions_attempted >= 9;

-- 5 Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT.
-- //long way
SELECT * FROM syntax_practice
Where account_balance >= 300 ORDER BY account_balance DESC
-- // using limit
SELECT * FROM syntax_practice
ORDER BY account_balance DESC
LIMIT 3



-- 6 Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
-- //ASC is the default
SELECT * FROM syntax_practice
ORDER BY account_balance
LIMIT 3

-- 7 Get all users with account balances that are more than $100.
SELECT * FROM syntax_practice
Where account_balance > 100;

-- 8 Add a new record.
UPDATE syntax_practice
SET username = 'Rukia', city = 'mpls', transactions_completed = 10, transactions_attempted = 10, account_balance = 4123432.00
WHERE id = 9;

--9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM syntax_practice
--needs OR to look for both cities
WHERE city = 'miami' AND city = 'phoenix'
AND transactions_completed < 5;
