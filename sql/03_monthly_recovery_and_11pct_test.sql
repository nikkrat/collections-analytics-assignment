-- Monthly recovery and reported 11% check
SELECT month, recovered_amount, recovered_amount_mom_pct, recovery_rate_pct
FROM golden_monthly_recovery_metrics
WHERE month BETWEEN '2026-01' AND '2026-07'
ORDER BY month;

-- Feb -> Mar check
SELECT (MAX(CASE WHEN month='2026-03' THEN recovered_amount END) /
        MAX(CASE WHEN month='2026-02' THEN recovered_amount END) - 1.0) * 100.0 AS feb_to_mar_pct
FROM golden_monthly_recovery_metrics;
