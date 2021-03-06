use DB104;

/*Ερώτημα 1*/
SELECT code, fullname, c_address, phone
FROM Customer

/*Ερώτημα 2*/
SELECT code, first_day, last_day
FROM Rental
WHERE value > 200

/*Ερώτημα 3*/
SELECT C.code, fullname, phone, R.code
FROM Customer as C, Rental as R
WHERE C.code = R.cust_code

/*Ερώτημα 4*/
SELECT fullname, phone
FROM Customer as C, Departement as D
WHERE (D.code = dep_code AND D.code = 10025)
intersect
SELECT fullname, phone
FROM Customer as C, Rental as R
WHERE (C.code = R.cust_code AND
		R.first_day >= '2010-09-23' AND
		R.last_day <= '2010-09-23')

/*Ερώτημα 5*/
UPDATE Rental
SET value = value - 0.05*value

/*Ερώτημα 6*/
SELECT month(p_date), sum(amount), avg(amount)
FROM Payment
WHERE year(p_date) = 2010
GROUP BY month(p_date)

/*Ερώτημα 7*/
SELECT C1.code, C2.dep_code, sum(R.value)
FROM Car as C1, Customer as C2, Rental as R
WHERE (C1.plate_number = R.plate_number AND
		C2.code = R.cust_code)
GROUP BY C1.code, C2.dep_code

/*Ερώτημα 8
Η ενοικίαση δεν ξεκίνησε απαραίτητα τον Ιούνιο του 2010, αλλά ο πελάτης είχε στην κατοχή του το αυτοκίνητο τη συγκεκριμένη περίοδο*/
SELECT DISTINCT C.code, count(R.code), avg(R.value)
FROM Customer as C, Rental as R
WHERE (C.code = cust_code AND
		R.last_day >= '2010-06-01' AND R.first_day <= '2010-06-30')
GROUP BY C.code
HAVING (count(R.code) > 4 AND avg(R.value) > 150)

/*Ερώτημα 9*/
SELECT C.code, fullname
FROM Customer as C
WHERE  EXISTS (SELECT R.cust_code, sum(P.amount) 
				FROM Rental as R, Payment as P
				WHERE (R.code = r_code AND
						C.code = R.cust_code AND
						month(p_date) = 04 AND
						year(p_date) = 2010 )
				GROUP BY R.cust_code
				HAVING sum(P.amount) > 1500 )

/*Ερώτημα 10*/
CREATE VIEW V1(categ, sum_value)
 AS 
SELECT C.code, sum(R.value)
FROM Car as C , Rental as R 
WHERE C.plate_number = R.plate_number
GROUP BY C.code ;

/* DROP VIEW V1; */

CREATE VIEW V2(sum_value)
AS
SELECT sum(value)
FROM Rental

/* DROP VIEW V2; */

SELECT V1.categ, cast(V1.sum_value as float)/cast(V2.sum_value as float)
FROM V1, V2

/*Ερώτημα 11*/
CREATE VIEW V3(month2010, sum_amount)
AS
SELECT month(p_date), sum(amount)
FROM Payment
WHERE year(p_date) = 2010
GROUP BY month(p_date)

/* DROP VIEW V3; */

CREATE VIEW V4(month2011, sum_amount)
AS
SELECT month(p_date), sum(amount)
FROM Payment
WHERE year(p_date) = 2011
GROUP BY month(p_date)

/* DROP VIEW V4; */

SELECT V4.month2011, cast(V4.sum_amount as float)/cast(V3.sum_amount as float)
FROM V3, V4
WHERE V3.month2010 = V4.month2011

/*Ερώτημα 12*/
CREATE VIEW V5(depcode, avg_value)
AS
SELECT C.dep_code, avg(R.value)
FROM Customer as C, Rental as R
WHERE C.code = R.cust_code
GROUP BY C.dep_code

CREATE VIEW V6(avg_value)
AS
SELECT avg(value)
FROM Rental as R2
GROUP BY R2.code

SELECT V5.depcode
FROM V5,V6
WHERE V5.avg_value > V6.avg_value

/*Ερώτημα 13*/
CREATE VIEW V7( mon, avg_value)
AS
SELECT month(first_day), avg(value)
FROM Rental 
GROUP BY month(first_day)

/* DROP VIEW V7; */

CREATE VIEW V8(custcode, mon2, avg_value)
AS
SELECT C.code, month(first_day), avg(R.value)
FROM Rental as R, Customer as C
WHERE R.cust_code = C.code
GROUP BY month(first_day), C.code

/* DROP VIEW V8; */

SELECT V7.mon, count(V8.custcode)
FROM V7, V8
WHERE (V8.avg_value > V7.avg_value
		AND V8.mon2 = V7.mon)
GROUP BY V7.mon

/*Ερώτημα 14*/
CREATE VIEW V9(period, month2010)
AS
SELECT DATEDIFF(day, first_day, last_day), month(first_day)
FROM Rental as R
WHERE year(first_day) = 2010;

SELECT V9.month2010, avg(V9.period)
FROM V9
GROUP BY V9.month2010;

/* DROP VIEW V9; */
