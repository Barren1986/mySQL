use ap;

SELECT 
    g.account_number, g.account_description, i.invoice_id
FROM
    general_ledger_accounts AS g
        INNER JOIN
    invoice_line_items AS i ON i.invoice_id;
    
SELECT 
    g.account_number
FROM
    general_ledger_accounts g
        LEFT JOIN
    invoice_line_items i ON g.account_number = i.account_number
WHERE
    i.invoice_id IS NULL; -- selects only where the invoices are NULL

SELECT account_number
FROM general_ledger_accounts
ORDER BY account_number ASC;