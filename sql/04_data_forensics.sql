-- Data-forensics checks available from the Golden layer
SELECT payment_reference, COUNT(*) AS rows, COUNT(DISTINCT payment_id) AS unique_payment_ids,
       COUNT(DISTINCT account_id) AS unique_accounts, COUNT(DISTINCT amount) AS unique_amounts
FROM golden_payments
WHERE payment_reference IS NOT NULL
GROUP BY payment_reference HAVING COUNT(*) > 1
ORDER BY rows DESC LIMIT 20;

SELECT agent_id, distinct_names_seen
FROM agents_identity_dq_flag
WHERE distinct_names_seen > 1
ORDER BY distinct_names_seen DESC LIMIT 20;
