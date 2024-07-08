"Q1: Which books have the highest number of loans?"
	
SELECT b.title, COUNT(l.loan_id) AS loan_count
FROM Books b
JOIN Loans l ON b.book_id = l.book_id
GROUP BY b.title
ORDER BY loan_count DESC
LIMIT 5;

"Q2:What are the most popular book categories?"
	
SELECT c.category_name, COUNT(l.loan_id) AS loan_count
FROM Categories c
JOIN Books b ON c.category_id = b.category_id
JOIN Loans l ON b.book_id = l.book_id
GROUP BY c.category_name
ORDER BY loan_count DESC
LIMIT 5;

"Q3:Which users have borrowed the most books?"

SELECT u.name, u.email, COUNT(l.loan_id) AS books_borrowed
FROM Users u
JOIN Loans l ON u.user_id = l.user_id
GROUP BY u.name, u.email
ORDER BY books_borrowed DESC
LIMIT 5;

"Q4: Which libraries have the highest number of holds?"

SELECT lib.name, COUNT(h.hold_id) AS hold_count
FROM Libraries lib
JOIN Holds h ON lib.library_id = h.library_id
GROUP BY lib.name
ORDER BY hold_count DESC
LIMIT 5;

"Q5:Which books have the highest number of holds?"
SELECT b.title, COUNT(h.hold_id) AS hold_count
FROM Books b
JOIN Holds h ON b.book_id = h.book_id
GROUP BY b.title
ORDER BY hold_count DESC
LIMIT 5;
