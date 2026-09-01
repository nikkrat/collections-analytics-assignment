# Data Analyst Assignment — Submission Package

## Executive deliverables
- `EXECUTIVE_MEMO.docx` — leadership memo covering the 11% claim, evidence, confidence, recommendation, and limitations.
- `EXECUTIVE_DASHBOARD.html` — self-contained browser dashboard/visual executive view. Open locally in any browser.
- `ARCHITECTURE.svg` — production data/analytics architecture.

## Analysis & reproducibility
- `ANALYSIS_NOTEBOOK.md` — complete analytical reasoning and findings.
- `DATA_QUALITY_REPORT.md` — data-quality findings and cleaning log.
- `analysis/` — executed pandas scripts used to reproduce the Golden-layer analysis.
- `sql/` — reproducible SQL checks.
- `collections.db` — SQLite mirror of the supplied raw CSV tables, created by `analysis/13_build_sqlite.py`.
- `golden/` — Golden datasets and data-quality support files.
- `dataset/` — supplied source CSVs used by the analysis scripts.

## Golden-layer headline figures
The supplied analytical package uses payment-level deduplication by `payment_id` and exact-row deduplication for calls. The authoritative figures in this package are the figures reproduced by the included scripts.

- Accounts: 30,000 unique
- Total outstanding: approximately ₹1,048.90 Cr
- Gross successful recovery: approximately ₹131.56 Cr
- Reversed amount: approximately ₹9.47 Cr
- Net recovery: approximately ₹122.09 Cr
- Successful-payment recovered accounts: 13,284
- Jan–Jul monthly recovery: flat/volatile; Feb→Mar = +11.03%
- Trend test: r² = 0.004, p = 0.89

## Key conclusion
The reported “11% month-on-month improvement” is real arithmetic for the Feb→Mar transition, but it is not evidence of sustained improvement. The Jan–Jul series is statistically indistinguishable from a flat/noisy trend.

## Important limitations
- `borrower_id` is not a clean unique master key.
- `payment_reference` is reused and is unsafe as a unique transaction/attribution key.
- The supplied agent dimension has conflicting identity attributes; person-level agent performance claims are therefore excluded from the memo.
- Payments do not contain a campaign key, so direct campaign-level recovery attribution is not defensible from the supplied schema.
- No usable cost field exists for ROI/break-even estimation.
- August 2026 is partial and is excluded from the complete-month trend comparison.

## Reproduce
From the `solution/` directory:
```
python analysis/12_build_golden.py
python analysis/13_build_sqlite.py
python run_sql.py sql/01_golden_payments.sql
python run_sql.py sql/02_golden_accounts_calls.sql
python run_sql.py sql/03_monthly_recovery_and_11pct_test.sql
python run_sql.py sql/04_data_forensics.sql
```

## Dashboard note
`EXECUTIVE_DASHBOARD.html` is included as the browser-based executive dashboard because a `.pbix` file must be authored/saved by Power BI Desktop. The analytical specification and Golden data are included so the Power BI report can be recreated from the same evidence without changing the conclusions.
