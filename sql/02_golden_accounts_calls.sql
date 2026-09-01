-- Golden account/call controls
SELECT COUNT(*) AS account_rows, COUNT(DISTINCT account_id) AS unique_accounts,
       SUM(outstanding_amount) AS total_outstanding
FROM golden_accounts;

SELECT COUNT(*) AS call_rows, COUNT(DISTINCT call_id) AS unique_call_ids,
       SUM(CASE WHEN call_status='ANSWERED' THEN 1 ELSE 0 END) AS answered_calls
FROM golden_calls;
