-- invoices_line_item_count.sql: Provide a query that shows all
-- Invoices but includes the # of invoice line items.

SELECT i.*, count(il.InvoiceLineId) as TotalItems
FROM InvoiceLine il, Invoice i
WHERE  i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId
