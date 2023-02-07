# Challenge 7 SQL

# Pewlett-Hackard-Analysis

## Overview of the Analysis

This challenge is to prepare reports (lists) of employees nearing retirement at the fictional Pewlett-Hackard company. A second objective is to produce a list of employees eligible to participate in a mentorship program. By completing the challenge, we are learning how to query databases with joins and conditional logic and how to create tailored lists to export to csv files for circulating to teammates. 

## Results

- In total across all departments, there are 72,458 employees retiring.
---
- Only 2 of the employees retiring are Managers, but over 50,000 of the employees retiring are Senior Level. See the table below for the breakdown by Title.

![Count of Retiring by Title ](/Resources/Count Retirees by Title.png)

---

- The Employee DB ERD shows the schema used for the analysis. There is a one to many relationship from the employees table to the titles and dept_emp tables because employees can change job titles and/or departments during their career.

![ERD ](/Resources/EmployeeDB.png)

- There are 1549 employees born in 1965 and still actively employeed at PH, therefore eligible for the mentorship program.
---

## Summary

 72,458 roles will need to be filled as the "silver tsunami" begins to make an impact. There are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees since there are only 1549 employees to mentor.

---
For additional analysis, it would be helpful to query how many employees in each department need mentoring and similarly for the list of retiring, assuming that all departments should have at least retiree match to a mentee within that department. since the number of employees in the mentor program list is fairly small, maybe expanding the birth date range to include 1966 or even 1967 would be helpful to see how many that would add.
