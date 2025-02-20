USE ap; 

SELECT
    invoice_number AS "Invoice Number",  -- Invoice number
    invoice_total AS "Invoice Toatl",   -- Total invoice amount
    payment_total + credit_total AS "Payment Credit Total", -- Sum of payments and credits
    invoice_total - (payment_total + credit_total) AS "Balance Due"
FROM invoices;

SELECT 
	invoice_id, 
    invoice_total - (payment_total + credit_total) AS balance_due
FROM invoices
WHERE invoice_total < 50;

SELECT
	invoice_id,
    invoice_total - (payment_total + credit_total) AS balance_due
FROM invoices
ORDER BY balance_due DESC
LIMIT 5;

