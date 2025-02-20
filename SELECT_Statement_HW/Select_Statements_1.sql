use ap;

SELECT concat(vendor_contact_last_name, ", ",vendor_contact_first_name) AS full_name
FROM vendors
WHERE vendor_contact_last_name BETWEEN 'A' AND "E"
ORDER BY vendor_contact_last_name ASC, vendor_contact_first_name DESC;