-- sales_agent_customer_count.sql: Provide a query that shows the
-- count of customers assigned to each sales agent.

SELECT e.EmployeeId as EmployeeID,  e.FirstName || " " || e.LastName as Employee, count(c.CustomerId) as TotalCustomers
FROM Employee e, Customer c
WHERE e.EmployeeId = c.SupportRepId
and e.Title = "Sales Support Agent"
GROUP BY e.EmployeeId
