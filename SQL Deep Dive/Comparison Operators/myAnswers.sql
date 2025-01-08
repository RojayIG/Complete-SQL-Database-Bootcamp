/*  COMPARISON OPERATOR
    EXERCISE
*/

-- How many female customers do we have from the state of Oregon (OR)? 

SELECT COUNT(customerid) AS "No. of Oregan female cxst"
FROM public.customers
WHERE gender = 'F' and state = 'OR'; -- Result 106

-- Who over the age of 44 has an income of 100 000 or more? (excluding 44)

SELECT *
FROM public.customers
WHERE (age > 44 AND income >= 100000); -- Result 2497

-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

SELECT *
FROM public.customers
WHERE (age >= 30 AND age <= 50) and income < 50000; -- Result 2362


-- What is the average income between the ages of 20 and 50? (Excluding 20 and 50)
/*
* Write your query here
*/
SELECT AVG(income) AS "Average income 20-50"
from public.customers
where age > 20 AND age < 50; -- Result 59409.926240780098