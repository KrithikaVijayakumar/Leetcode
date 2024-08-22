select Count(*) as count_no_trans, customer_id  from Visits
left join transactions using(visit_id)
where visit_id not in (SELECT DISTINCT visit_id FROM Transactions)
GROUP BY customer_id;