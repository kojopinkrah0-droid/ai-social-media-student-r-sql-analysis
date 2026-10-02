# AI, Social Media & Student Wellbeing — R + SQL Analysis

Portfolio analysis of **16,000 students** exploring associations between social-media use, AI-tool use, sleep, physical activity, and mental/physical health. **R** is used for cleaning, EDA, segmentation and visualization; **SQLite/SQL** is used for analytical queries.

> Results show associations, not causation.

## Dataset Profile

| Metric | Result |
|---|---:|
| Students | 16,000 |
| Original variables | 10 |
| Missing values | 0 |
| Duplicate Student IDs | 0 |
| Average age | 19.04 |
| Social-media use | 4.54 hrs/day |
| AI-tool use | 2.59 hrs/day |
| Sleep | 6.55 hrs/day |
| Physical activity | 1.25 hrs/day |
| Mental-health score | 72.49 |
| Physical-health score | 88.02 |

## Key Findings

- Social-media use is negatively correlated with mental health (**r ≈ -0.40**), physical health (**r ≈ -0.31**) and sleep (**r ≈ -0.30**).
- Students using social media **0–2 hrs/day** average **77.66 mental health** and **92.43 physical health**, versus **67.73** and **84.25** for **6+ hrs/day**.
- Students sleeping **8+ hours** average **77.26 mental health**, versus **69.23** for those sleeping under 6 hours.
- Physical activity is positively correlated with physical health (**r ≈ 0.42**) and mental health (**r ≈ 0.25**).
- AI-tool usage has weaker negative correlations with mental health (**r ≈ -0.11**) and sleep (**r ≈ -0.14**).

## Visualizations

![Mental Health by Social Media](images/mental_health_by_social_media.png)

![Social Media vs Mental Health](images/social_vs_mental.png)

![Sleep vs Mental Health](images/sleep_vs_mental.png)

![Activity vs Physical Health](images/activity_vs_physical.png)

## SQL Questions

The `sql/` folder contains eight analyses covering overall KPIs, education level, social-media bands, AI-use bands, sleep, physical activity, gender, and a high-digital-use/low-wellbeing segment. Query outputs are saved in `results/`.

## Repository Structure

```text
ai-social-media-student-r-sql-analysis/
├── data/
│   ├── raw/
│   ├── processed/
│   └── student_wellbeing.sqlite
├── R/
│   ├── 01_clean_data.R
│   ├── 02_analysis.R
│   └── 03_sqlite_workflow.R
├── sql/
├── results/
├── images/
├── requirements-r.txt
├── LICENSE
└── README.md
```

## Reproduce in R

Install: `readr`, `dplyr`, `ggplot2`, `DBI`, `RSQLite`.

```r
source("R/01_clean_data.R")
source("R/02_analysis.R")
source("R/03_sqlite_workflow.R")
```

## Skills Demonstrated

**R · dplyr · ggplot2 · Data Cleaning · EDA · Correlation Analysis · Segmentation · SQL · SQLite · DBI · Data Visualization · Analytical Storytelling**

## Limitations

This is observational data. Correlations do not demonstrate causal effects, and unobserved factors may contribute to the relationships.
