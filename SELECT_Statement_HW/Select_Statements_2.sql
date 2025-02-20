use ap;

SELECT
	invoice_due_date AS "Due Date", -- renames the title column to "Due Date"
    invoice_total AS "Invoice Total",
    invoice_total * 0.10 AS "10%",
    invoice_total + (invoice_total * 0.10) AS "Plus 10&" -- Add 10& to the invoice total
FROM invoices; -- needs : between statements? Ask Prof

SELECT 
	invoice_id, 
    invoice_total
FROM invoices
WHERE invoice_total BETWEEN 500 AND 1000;

SELECT 
	invoice_due_date
FROM invoices
ORDER BY invoice_due_date;