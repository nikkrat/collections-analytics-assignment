# Collections Analytics & Recovery Strategy

## 1. Project Overview

An end-to-end collections analytics project using a synthetic lending dataset to assess data quality, recovery performance, targeting effectiveness, and collection strategy.

Key areas covered:
- Data quality & Golden-layer preparation
- Recovery and payment analysis
- Risk × DPD segmentation
- Campaign and channel analysis
- Targeting effectiveness
- ₹10 Cr investment strategy
- Executive recommendations

---

## 2. Business Objectives

The analysis answers:
1. How effective are current collections?
2. Which Risk × DPD segments offer the best opportunities?
3. Which operational channels show stronger observed performance?
4. Does targeting improve recovery?
5. How should ₹10 Cr be allocated?

---

## 3. Dataset

The source contains 18 operational tables covering accounts, borrowers, payments, calls, campaigns, field visits, PTP, SMS, WhatsApp and other collection activities.

The data contains intentional issues including duplicates, missing values, conflicting borrower records, invalid references, repeated payment references and multiple timezones.

---

## 4. Data Quality & Golden Layer

A Golden analytical layer was created before business analysis.

Key findings:
- `account_id` is a reliable unique account key: **30,000 unique accounts**
- `borrower_id` contains significant duplication and conflicting information
- Duplicate payment IDs and payment references were investigated
- Duplicate call records were identified
- Missing identifiers and referential-integrity issues were assessed

`account_id` was therefore used as the primary analytical anchor.

---

## 5. Executive KPIs

| KPI | Result |
|---|---:|
| Total Accounts | 30,000 |
| Gross Successful Recovery | ₹131.65 Cr |
| Reversed Amount | ₹9.47 Cr |
| Net Recovery | ₹122.18 Cr |
| Recovered Accounts | 13,062 |
| Recovery Efficiency | 11.65% |

**Recovery Efficiency = Net Recovery / Total Outstanding Amount**

---

## 6. Portfolio Risk

Risk distribution:

| Risk Segment | Accounts |
|---|---:|
| HIGH | 7,552 |
| MEDIUM | 7,533 |
| LOW | 7,513 |
| NPA | 7,402 |

Risk × DPD analysis was used to identify segments with stronger historical recovery potential.

---

## 7. Payment Analysis

Payment records were analysed for status, method, duplicates and repeated references.

| Status | Payments |
|---|---:|
| SUCCESS | 17,545 |
| FAILED | 3,678 |
| PENDING | 2,536 |
| REVERSED | 1,255 |

Payment references were not assumed to be unique transaction identifiers.

---

## 8. Collections Operations

The analysis evaluates:
- Campaign performance
- Calling-hour performance
- Call attempts
- Telephony vendors
- SMS and WhatsApp activity
- Field visits
- Promise-to-pay activity

These findings are **descriptive** and should not automatically be interpreted as causal effects.

---

## 9. Targeting Analysis

| Group | Accounts | Recovery Efficiency | Recovery Rate |
|---|---:|---:|---:|
| Targeted | 23,344 | 11.61% | 43.35% |
| Non-targeted | 6,656 | 11.77% | 44.20% |

Observed targeting lift: **approximately -1.32%**

Targeted accounts did not outperform non-targeted accounts on the selected recovery metrics. This is an observational comparison, not causal evidence.

---

## 10. Investigation of the 11% Improvement Claim

The reported 11% improvement was investigated using monthly recovery performance.

The key conclusion is:

> **The reported 11% movement should not be interpreted as evidence of sustained improvement without considering month comparability, portfolio mix and data completeness.**

Partial-month periods were treated separately where appropriate.

---

## 11. ₹10 Cr Investment Strategy

A ₹10 Cr scenario was developed using historical recovery efficiency across selected Risk × DPD segments.

The approach prioritizes segments based on:
- Risk
- DPD
- Outstanding exposure
- Historical recovery efficiency

Estimated recovery under the scenario: **approximately ₹1.23 Cr**

This is a scenario estimate and **not guaranteed incremental recovery or ROI**.

---

## 12. Key Recommendations

1. Prioritize collections using **Risk × DPD** segmentation.
2. Investigate targeting rules because targeted accounts did not show higher observed recovery.
3. Strengthen borrower and transaction data governance.
4. Use campaign, channel and operational metrics for prioritization while avoiding unsupported causal claims.
5. Allocate collection investment using historical segment-level recovery performance.

---

## 13. Dashboard

The project includes an executive dashboard covering:

**Page 1 — Executive Overview**
- KPIs
- Recovery trend
- Risk × DPD
- Payment and account status

**Page 2 — Operations & Channels**
- Campaigns
- Calling hours
- Channels
- PTP
- Operational performance

**Page 3 — Targeting & Investment**
- Targeted vs non-targeted
- Targeting lift
- Risk × DPD opportunities
- ₹10 Cr allocation

---

## 14. Repository Structure

```text
collections-analytics-assignment/
│
├── README.md
├── EXECUTIVE_MEMO.docx
├── EXECUTIVE_DASHBOARD.html
├── DATA_QUALITY_REPORT.md
├── ANALYSIS_NOTEBOOK.md
├── ARCHITECTURE.svg
├── SUBMISSION_CHECKLIST.md
│
├── analysis/
├── golden/
└── sql/
