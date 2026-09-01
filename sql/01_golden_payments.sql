-- Golden payment controls
SELECT COUNT(*) AS rows, COUNT(DISTINCT payment_id) AS unique_payment_ids,
       SUM(CASE WHEN payment_status='SUCCESS' THEN amount ELSE 0 END) AS gross_successful_recovery,
       SUM(CASE WHEN payment_status='REVERSED' THEN amount ELSE 0 END) AS reversed_amount
FROM golden_payments;

SELECT payment_status, COUNT(*) AS rows, SUM(amount) AS amount
FROM golden_payments GROUP BY payment_status ORDER BY amount DESC;
