SELECT currency,
sum(amount) as total_sum
FROM transact
join accounts on transact.sender_account_id = accounts.id
group by currency
order by total_sum DESC
limit 1