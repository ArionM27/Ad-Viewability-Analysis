# 📊 Digital Advertising Performance Analysis – Company X  
**Date Range:** April 1, 2020 – June 30, 2020  
**Analyst:** [Your Name]  
**Tools Used:** SQL, Tableau, Python (Pandas), Excel  

---

## 📌 Executive Summary

This report analyzes the performance of Company X’s digital advertising campaigns across various placements, banner formats, and timeframes between April and June 2020. Through the use of SQL and Tableau, this analysis investigates user engagement (CTR), conversions, ROI, and post-click sales performance to assess effectiveness and provide actionable recommendations.

---

## 🎯 Project Objectives

1. Identify which ad placements, banners, or campaigns drive the highest engagement and ROI.
2. Explore how user engagement (CTR) correlates with conversions and sales.
3. Examine temporal trends to optimize budget allocation and creative strategies.

---

## 📈 North Star Metric

> **Return on Investment (ROI)** – A unifying metric that captures the revenue efficiency of advertising efforts.

---

## 📊 Key Performance Indicators (KPIs)

| KPI | Definition |
|-----|------------|
| **CTR** | Click-Through Rate = Clicks / Displays |
| **CPC** | Cost-Per-Click = Cost / Clicks |
| **CR** | Conversion Rate = Conversions / Clicks |
| **Post-Click Conversions** | Transactions within 30 days post-click |
| **Post-Click Sales Amount** | Revenue from post-click conversions |
| **ROI** | Return on Investment = (Revenue - Cost) / Cost |

---

## 📂 Dataset Overview

| Column | Description |
|--------|-------------|
| `day`, `month` | Time identifiers |
| `campaign_number` | Campaign segmentation |
| `user_engagement` | Behavior-based targeting segment |
| `banner` | Banner dimensions served |
| `placement` | Publisher platform |
| `displays`, `clicks`, `cost`, `revenue` | Engagement and cost metrics |
| `post_click_conversions`, `post_click_sales_amount` | Post-click performance |
| `ctr`, `cpc`, `cr`, `roi` | Derived metrics for analysis |

---

## ❓ Key Business Questions Answered

### 1. Which ad placements, banners, and campaigns are most effective in terms of **CTR** and **ROI**?

- **Top Placements by CTR:**
  - **Buzzfeed** (1.86)
  - Forbes (0.89)
  - NYT (0.61)

- **Top Placements by ROI:**
  - **CNBC** (106.86)
  - Buzzfeed (106.05)
  - Morning Brew (92.68)

- **Top Banners by ROI:**
  - **580 x 400** (160.73)
  - 300 x 250 (127.23)
  - 670 x 90 (122.76)

- **Top Campaigns by ROI:**
  - **Camp 3** (101.06)
  - Camp 1 (98.76)
  - Camp 2 (93.91)

> **Insight:** Buzzfeed and CNBC are consistently high-performing placements. The **580x400** and **300x250** banners yielded the best ROI.

---

### 2. How does engagement (CTR) affect post-click conversions and sales?

- 📈 **CTR avg:** 0.85  
- 🛒 **Avg post-click conversions per day:** 78.63  
- 🔁 **Strong positive correlation observed between CTR and conversion volumes.**

> **Insight:** Higher engagement rates translate into more conversions. This validates CTR as a reliable proxy for post-click performance.

---

### 3. What are the trends in ad visibility and performance over time?

- 📉 **Displays, clicks, and conversions steadily declined** from April through June.
- 🔄 **ROI peaked in May (112.36)**, dropped in June (76.40).
- 📅 **Campaign 1** was most active and productive in April and May.
- 📅 **Campaign 3** surged in performance in June despite fewer displays.

> **Insight:** There is a **seasonal decay** in performance, with early months (April-May) outperforming June. Campaign-specific shifts suggest timing influences outcomes.

---

## 🔍 Top 5 Analytical Findings

1. **Buzzfeed had the highest CTR (1.86)** and consistently ranked high in ROI, indicating strong user resonance.
2. **The 580x400 and 300x250 banner sizes** outperformed others in both CTR and ROI.
3. **Campaign 3 achieved the highest ROI (101.06)** and solid post-click sales, especially in June, despite lower spend.
4. **CTR and post-click conversions are positively correlated**, confirming that user engagement is a meaningful leading indicator.
5. **Displays and conversions declined over time**, emphasizing the need for rotating strategies or new creative assets over time.

---

## 📌 Optimization Opportunities & Recommendations

### 1. **Double Down on High-Performing Placements**
   - Prioritize **Buzzfeed** and **CNBC** for upcoming campaigns.
   - Avoid **NYT** placements due to negative ROI (-1.69).

### 2. **Standardize High-ROI Banner Sizes**
   - Focus ad spend on **580x400**, **300x250**, and **670x90** banners.
   - Reassess or retire underperforming formats like **468x60** and **800x250**.

### 3. **Allocate Budget Strategically by Campaign Timing**
   - **Front-load campaigns in April–May**, when ROI is historically higher.
   - Replicate **Campaign 3’s creative/strategy** from June to balance performance.

### 4. **Reduce Spend on Low-Yield Campaigns and Placements**
   - Eliminate placements with consistently low display and click volumes (e.g., **NYT**).
   - Trim underutilized banners like **800x250**, which had low visibility and ROI.

### 5. **Introduce Adaptive Testing & Performance Thresholds**
   - Implement real-time performance monitoring to pause ads below **CTR < 0.5** or **ROI < 70**.
   - Use A/B testing with top banners across Buzzfeed and CNBC to refine strategy.

---

## 📎 Visual Analysis Summary

Refer to Tableau dashboard components:
- **[Clicks/Displays/Conversions Over Time]**
- **[ROI by Placement & Banner]**
- **[CTR Trends Over Time]**
- **[Correlation: Displays vs. Post-Click Conversions]**

> These visuals reinforce the trends seen in the SQL analyses and enrich the storytelling with real-time visual clarity.

---

## 🧠 Final Thoughts

This project demonstrates the value of combining SQL and visualization tools to drive advertising performance decisions. Company X can improve both efficiency and revenue by prioritizing high-engagement placements and scaling proven banner formats across time-sensitive campaigns.

---
