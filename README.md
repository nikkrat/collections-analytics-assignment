# collections-analytics-assignment
End-to-end collections analytics, data quality investigation, recovery strategy, targeting analysis, and ₹10 Cr investment optimization case study.

# Collections Analytics & Recovery Strategy

## Project Overview

This project presents an end-to-end **Collections Analytics and Recovery Strategy** built from a synthetic lending and collections dataset.

The objective was to transform raw operational data into a reliable analytical layer, evaluate collection performance, investigate data-quality issues, test management claims, and develop an actionable recovery-investment strategy.

The project covers:

- Data quality assessment
- Duplicate and anomaly detection
- Golden dataset creation
- Referential-integrity analysis
- Payment and recovery analysis
- Risk × DPD segmentation
- Campaign performance
- Calling and channel performance
- PTP and field-visit analysis
- Targeting effectiveness
- ₹10 Cr investment allocation strategy
- Executive recommendations

---

# Business Objectives

The analysis addresses five major business questions:

1. How effective are current collection activities?
2. Which Risk × DPD segments provide the strongest recovery opportunities?
3. Which campaigns, channels and operational factors show better observed performance?
4. Did targeted accounts actually perform better than non-targeted accounts?
5. How should a ₹10 Cr collection investment be allocated?

---

# Dataset

The source dataset contains 18 operational tables:

- accounts
- borrowers
- agents
- agent_sessions
- calls
- call_attempts
- call_dispositions
- payments
- field_visits
- promises_to_pay
- campaigns
- vendor_telephony
- account_status_history
- whatsapp_events
- sms_events
- daily_targeting
- complaints
- data_dictionary

The dataset contains intentional data-quality challenges including:

- Duplicate records
- Missing identifiers
- Conflicting borrower records
- Invalid borrower references
- Duplicate payment references
- Duplicate call IDs
- Multiple timezones
- Inconsistent operational identifiers
- Partial-month data

---

# Data Quality & Golden Layer

A Golden analytical layer was created before performing business analysis.

## Key Data Quality Findings

| Table | Key Finding |
|---|---|
| Accounts | 30,000 rows, 30,000 unique account IDs |
| Borrowers | Significant duplicate/conflicting borrower IDs |
| Calls | 91,350 raw rows and 90,000 unique call IDs in the analytical investigation |
| Payments | 25,500 raw rows and 25,000 unique payment IDs |
| WhatsApp | 600 exact duplicate rows identified |
| Field Visits | 250 missing scheduled timestamps |
| Call Attempts | 2,400 missing vendor IDs |

Account ID was selected as the primary analytical anchor because the Accounts table contains 30,000 unique account IDs.

Borrower ID was **not** treated as a clean unique master key because of extensive duplication and conflicting borrower information.

---

# Executive KPIs

The account-level Golden analysis produced:

| KPI | Result |
|---|---:|
| Total Accounts | 30,000 |
| Gross Successful Recovery | ₹131.65 Cr |
| Reversed Amount | ₹9.47 Cr |
| Net Recovery | ₹122.18 Cr |
| Recovery Efficiency | 11.65% |
| Recovered Accounts | 13,062 |
| Account Recovery Rate | 43.54% |

Recovery Efficiency is calculated as:

`Net Recovery / Outstanding Amount`

---

# Portfolio Risk

Account distribution by risk segment:

| Risk Segment | Accounts |
|---|---:|
| HIGH | 7,552 |
| MEDIUM | 7,533 |
| LOW | 7,513 |
| NPA | 7,402 |

The analysis also evaluates recovery efficiency across Risk × DPD combinations.

One of the strongest observed opportunities was:

**NPA + 31–60 DPD**

- Recovery efficiency: **12.41%**
- Accounts: approximately **1,379**
- Outstanding: approximately **₹47.12 Cr**

---

# Payment Analysis

Payment status distribution:

| Status | Payments |
|---|---:|
| SUCCESS | 17,545 |
| FAILED | 3,678 |
| PENDING | 2,536 |
| REVERSED | 1,255 |

Payment methods include:

- CARD
- NACH
- UPI
- NETBANKING
- CASH

Payment references were separately investigated because repeated references do not necessarily represent duplicate payments.

---

# Collections Operations

The project evaluates:

- Agent performance
- Campaign recovery efficiency
- Calling answer rates
- Calling-hour performance
- Telephony vendors
- Call attempt frequency
- SMS reach
- WhatsApp reach
- Field-visit outcomes
- Promise-to-pay outcomes

The highest observed campaign recovery efficiency was:

**CMP0000055 — 14.00%**

The highest observed hourly call answer rate was:

**21:00 — 20.83%**

These are observational results and should not automatically be interpreted as causal effects.

---

# Targeting Analysis

Targeted vs non-targeted accounts were compared.

### Targeted

- Accounts: 23,344
- Recovery Efficiency: 11.61%
- Account Recovery Rate: 43.35%

### Non-targeted

- Accounts: 6,656
- Recovery Efficiency: 11.77%
- Account Recovery Rate: 44.20%

Descriptive targeting lift:

**approximately -1.32%**

### Interpretation

Targeted accounts showed 11.61% recovery efficiency versus 11.77% among non-targeted accounts.

This is a **descriptive comparison only** and does not establish causal targeting impact.

Potential confounders include:

- Risk
- DPD
- Outstanding balance
- Account age
- Previous collection activity
- Borrower characteristics
- Campaign assignment

---

# Investigation of the 11% Improvement Claim

The analysis investigated the reported improvement in recovery performance.

The key conclusion was:

> **The reported 11% improvement could not be reproduced using comparable complete-month net recovery.**

A large movement between individual months should not automatically be interpreted as sustained structural improvement.

Partial-month periods were also separated from complete-month comparisons.

---

# ₹10 Cr Investment Strategy

A ₹10 Cr investment scenario was developed using historical recovery efficiency across high-opportunity Risk × DPD segments.

The allocation prioritizes five segments:

1. HIGH + 0 DPD
2. NPA + 31–60 DPD
3. MEDIUM + 91–180 DPD
4. HIGH + 31–60 DPD
5. LOW + 31–60 DPD

Estimated recovery under historical-efficiency assumptions is approximately:

**₹1.23 Cr**

### Important Caveat

This is a scenario-planning estimate based on historical recovery efficiency.

It should **not** be interpreted as guaranteed incremental ROI or guaranteed future recovery.

---

# Key Recommendations

## 1. Prioritize high-opportunity Risk × DPD segments

Use Risk and DPD together rather than relying on either variable independently.

## 2. Investigate targeting design

Targeted accounts did not show higher observed recovery efficiency than non-targeted accounts.

A controlled experiment or propensity-based analysis would be required to estimate causal targeting impact.

## 3. Improve data governance

Focus on:

- Borrower master-data duplication
- Missing identifiers
- Referential integrity
- Payment-reference governance
- Event deduplication
- Timezone standardization

## 4. Use operational performance for prioritization

Campaign, agent, vendor and calling-hour metrics can support operational decision-making, while recognizing that observed performance does not automatically imply causality.

## 5. Allocate investment using evidence-based segmentation

The ₹10 Cr scenario provides a framework for prioritizing segments with historically stronger recovery efficiency.

---

# Dashboard

The project includes an executive collections dashboard covering:

### Page 1 — Executive Overview

- Total Accounts
- Outstanding Exposure
- Gross Recovery
- Reversed Amount
- Net Recovery
- Recovery Efficiency
- Monthly Recovery Trend
- Risk × DPD Heatmap
- Payment Status
- Account Status
- Risk Distribution

### Page 2 — Operations & Channels

- Campaign Performance
- Calling-Hour Answer Rate
- Agent Performance
- Telephony Vendor Performance
- Channel Reach
- PTP Performance
- Call Attempt Frequency

### Page 3 — Targeting & Investment

- Targeted vs Non-targeted Performance
- Descriptive Targeting Lift
- Risk × DPD Opportunity
- ₹10 Cr Allocation
- Estimated Recovery
- Investment Assumptions & Caveats

---

# Repository Structure

```text
Collections-Analytics/
│
├── README.md
│
├── EXECUTIVE_MEMO.docx
├── DATA_QUALITY_REPORT.md
├── ANALYSIS_NOTEBOOK.md
├── ARCHITECTURE.svg
├── EXECUTIVE_DASHBOARD.html
│
├── golden/
│   ├── golden_accounts.csv
│   ├── golden_payments.csv
│   ├── golden_calls.csv
│   ├── golden_monthly_recovery_metrics.csv
│   └── ...
│
├── analysis/
│   └── analysis scripts
│
├── sql/
│   └── SQL reproduction scripts
│
└── dataset/
    └── source tables
