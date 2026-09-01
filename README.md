# Collections Analytics & Recovery Strategy

## Project Overview

This project presents an end-to-end **Collections Analytics and Recovery Strategy** built from a synthetic lending and collections dataset.

The objective was to transform raw operational data into a reliable analytical layer, investigate data-quality issues, evaluate collection and recovery performance, test management claims, and develop an actionable recovery-investment strategy.

The project covers:

- Data quality assessment
- Duplicate and anomaly detection
- Golden-layer data preparation
- Referential-integrity analysis
- Payment and recovery analysis
- Risk × DPD segmentation
- Campaign and operational analysis
- Calling and channel performance
- PTP and field-visit analysis
- Targeting effectiveness
- ₹10 Cr investment allocation strategy
- Executive recommendations

---

## Business Objectives

The analysis addresses the following business questions:

1. How effective are current collection activities?
2. Which Risk × DPD segments provide the strongest recovery opportunities?
3. Which campaigns, channels and operational factors show better observed performance?
4. Did targeted accounts perform better than non-targeted accounts?
5. How should a ₹10 Cr collection investment be allocated?

---

## Dataset

The source dataset contains 18 operational tables:

- `accounts`
- `borrowers`
- `agents`
- `agent_sessions`
- `calls`
- `call_attempts`
- `call_dispositions`
- `payments`
- `field_visits`
- `promises_to_pay`
- `campaigns`
- `vendor_telephony`
- `account_status_history`
- `whatsapp_events`
- `sms_events`
- `daily_targeting`
- `complaints`
- `data_dictionary`

The supplied data contains intentional data-quality challenges including:

- Duplicate records
- Missing identifiers
- Conflicting borrower records
- Invalid borrower references
- Duplicate payment references
- Duplicate call records
- Multiple timezones
- Inconsistent operational identifiers
- Partial-month data

---

# Data Quality & Golden Layer

A Golden analytical layer was created before performing business analysis.

## Key Data Quality Findings

| Table | Finding |
|---|---|
| Accounts | 30,000 rows and 30,000 unique account IDs |
| Borrowers | Significant duplicate and conflicting borrower IDs |
| Calls | Duplicate call records identified during data-quality investigation |
| Payments | Duplicate payment IDs and repeated payment references investigated |
| WhatsApp | 600 exact duplicate rows identified |
| Field Visits | Missing scheduled timestamps identified |
| Call Attempts | Missing vendor identifiers identified |

`account_id` was selected as the primary analytical anchor because the Accounts table contains 30,000 unique account IDs.

`borrower_id` was **not** treated as a clean unique master key because the borrower table contains extensive duplication and conflicting information.

Payment references were also not assumed to be unique transaction identifiers because repeated references were observed across different payment records.

---

# Executive KPIs

The account-level Golden analysis produced:

| KPI | Result |
|---|---:|
| Total Accounts | 30,000 |
| Gross Successful Recovery | ₹131.65 Cr |
| Reversed Amount | ₹9.47 Cr |
| Net Recovery | ₹122.18 Cr |
| Recovered Accounts | 13,062 |
| Recovery Efficiency | 11.65% |

### Recovery Efficiency

Recovery Efficiency is calculated as:

```text
Net Recovery / Total Outstanding Amount
