-- Case Statement
select * from payment

-- Case Statement Syntax
select customer_id, amount,
case 
	when amount > 50 then 'expensive product'
	when amount = 50 then 'moderate product'
	else 'Inexpensive product'
end as ProductStatus
from payment


-- Case Expression Syntax
select customer_id,
case amount
	when 60 then 'Prime Customer'
	when 50 then 'Plus Customer'
	else 'Regular Customer'
end as ProductStatus
from payment
