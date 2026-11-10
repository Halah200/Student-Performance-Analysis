# Student Performance Analysis

## Project Overview

This project explores patterns in student academic performance and examines how final grades differ across academic, family, social, and demographic factors.

The analysis uses the UCI Student Performance Dataset, which contains student records for two subjects: Mathematics and Portuguese. The two datasets were combined into a single table, with a subject column retained to support comparisons between the two subjects.

The project follows a descriptive analytical approach, focusing on identifying patterns, comparing group averages, and presenting data-driven insights rather than conducting statistical significance tests or establishing causal relationships.

## Project Objectives

- Explore the distribution of final grades across Mathematics and Portuguese.
- Examine grade differences across academic factors, including study time, previous failures, and absences.
- Explore performance patterns associated with family-related factors.
- Analyze differences across social, lifestyle, and demographic groups.
- Compare observed patterns between the two subjects.
- Communicate key findings through interactive dashboards and data visualizations.

## Tools & Technologies

- **SQL Server:** Data exploration, data quality checks, data preparation, and analytical queries.
- **Power BI:** Data modeling, DAX measures, interactive dashboards, and visual analysis.
- **Microsoft Excel:** Supporting data inspection and exploration.

## Analysis Scope

The analysis is organized into four main areas:

1. **Executive Overview:** Overall performance distribution and comparison between subjects.
2. **Academic Performance:** Grade patterns across study time, previous failures, absences, and academic support.
3. **Family & Social Factors:** Exploring patterns associated with parental education, family support, family size, and lifestyle factors.
4. **Demographic & Other Factors:** Comparing performance across sex, age, health status, internet access, and higher education aspirations.

## Key Analytical Approach

- The Math and Portuguese datasets were combined using `UNION ALL`, while preserving the subject information.
- Final grade (`G3`) was used as the primary performance measure.
- Previous grades (`G1` and `G2`) were excluded from the main factor analysis to keep the focus on other academic and contextual variables.
- Comparisons are based on subject-level records and group averages.
- Results are interpreted descriptively, without assuming causation.

**Note:** Some students may appear in both subject datasets. Therefore, the combined dataset represents subject-level performance records, not a count of unique individual students.

## Expected Outcome

The project provides an organized view of student performance patterns and highlights differences across various student groups. Through SQL analysis and interactive Power BI dashboards, it demonstrates an end-to-end analytical workflow, from data exploration and preparation to insight generation and visualization.
