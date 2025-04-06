# Ad Visibility Analysis – Company X (April 2020 - June 2020)

**Date Range:** April 1, 2020 – June 30, 2020
**By: Arkadiuz Mercado**
**Tools Used:** SQL, Tableau, Python (Pandas and Matplotlib)

---

## Project Objectives

1. Identify which ad placements, banners, or campaigns drive the highest engagement and ROI.
2. Explore how user engagement (CTR) correlates with conversions and sales.
3. Examine temporal trends to optimize budget allocation and creative strategies.

---

## Tableau Dashboard

> An Interactive version of this Dashboard can be found [here](https://public.tableau.com/views/Ad-Viewability-Analysis/Dashboard3?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).

1. ![Dashboard](https://github.com/ArionM27/Ad-Viewability-Analysis/blob/main/images/Dashboard%203.png "Ad Analysis Dashboard")

---

## North Star Metrics and Key Performance Indicators (KPIs)

| KPI                               | Definition                                     |
| --------------------------------- | ---------------------------------------------- |
| **CTR**                     | Click-Through Rate = Clicks / Displays         |
| **CPC**                     | Cost-Per-Click = Cost / Clicks                 |
| **CR**                      | Conversion Rate = Conversions / Clicks         |
| **Post-Click Conversions**  | Transactions within 30 days post-click         |
| **Post-Click Sales Amount** | Revenue from post-click conversions            |
| **ROI**                     | Return on Investment = (Revenue - Cost) / Cost |

---

## Dataset Overview

| Column                                                  | Description                      |
| ------------------------------------------------------- | -------------------------------- |
| `day`, `month`                                      | Time identifiers                 |
| `campaign_number`                                     | Campaign segmentation            |
| `user_engagement`                                     | Behavior-based targeting segment |
| `banner`                                              | Dimensions of banners            |
| `placement`                                           | Publisher platform               |
| `displays`, `clicks`, `cost`, `revenue`         | Engagement and cost metrics      |
| `post_click_conversions`, `post_click_sales_amount` | Post-click performance           |
| `ctr`, `cpc`, `cr`, `roi`                       | KPIs for analysis                |

---

## Summary of Insights

## 1. Which ad placements, banners, and campaigns are most effective in terms of **CTR** and **ROI**?

- **Top Placements by Avg CTR (%):**

  - **Buzzfeed** (0.92)
  - Forbes (0.89)
  - NYT (0.61)
- **Top Placements by Avg ROI:**

  - **CNBC** (106.86)
  - Buzzfeed (106.05)
  - Morning Brew (92.68)
- **Top Banners by Avg ROI:**

  - **580 x 400** (160.73)
  - 300 x 250 (127.23)
  - 670 x 90 (122.76)
- **Top Campaigns by Avg ROI:**

  - **Camp 3** (101.06)
  - Camp 1 (98.76)
  - Camp 2 (93.91)

> **Insight:** Buzzfeed and CNBC are consistently high-performing placements. The **580x400** and **300x250** banners yielded the best ROI.

---

### 2. How does engagement (CTR) affect post-click conversions and sales?

- **CTR avg:** 0.85
- **Avg post-click conversions per day:** 78.63
- There is a strong positive correlation observed between CTR and conversion volumes.

> **Insight:** Higher engagement rates translate into more conversions. This validates CTR as a reliable measure for post-click performance.

---

### 3. What are the trends in ad visibility and performance over time?

- Displays, clicks, and conversions steadily declined from April through June.
- ROI peaked in **May (112.36)**, dropped in June (76.40).
- Campaign 1 was most active and productive in April and May.

> **Insight:** There is a monthly decay in performance, with early months (April-May) outperforming June. Campaign-specific shifts suggest that the timing can influence outcomes.

---

## Key Insights

1. Buzzfeed had the highest CTR (0.92) and consistently ranked high in ROI, indicating strong user interest.
2. The 580x400 and 300x250 banner sizes outperformed others in both CTR and ROI, signaling for best performance In mid-sized (specifically mid-width) dimensions. 160 x 600 also provided the largest ROI In total.
3. Campaign 3 achieved the highest avg ROI (101.06) and solid post-click sales, especially in June, despite lower spend.
4. CTR and post-click conversions are positively correlated, confirming that user engagement is a meaningful indicator towards returns.
5. Displays and conversions declined over time, specifically in June, which can do with the seasonal shift to summer.

---

## Reccomendations and Next Steps

### 1. Continue Funding High-Performing Placements

- Prioritize **Buzzfeed** and **CNBC** for upcoming campaigns.
- Look Into completely avoiding **NYT** placements due to negative ROI (-1.69).

### 2. **Standardize High-ROI Banner Sizes**

- Focus ad spend on **160x600**, **580x400**, and **300x250** banners.
- Reassess budget spend on formats like **468x60** and **800x250,** and move towards allocating this budget towards larger width banners, that correlate with higher ROI sizes shown above.

### 3. **Allocate Budget Strategically by Campaign Timing**

- Front-load campaigns in April–May, when ROI is historically higher.
- Consider lowering digital spend In June and summer months, where consumption of overall media decreases.
- For following June's, work on replicating Campaign 3’s strategy to maximize performance.

### 4. **Reduce Spend on Low-Yield Campaigns and Placements**

- Eliminate placements with notoriously low display and click volumes, which will lead to a negative ROI (**NYT**).
- Trim underutilized banners like **800x250**, which had low visibility, higher overall cost, and low ROI.
