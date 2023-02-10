# Pewlett-Hackard-Analysis

## Overview of Project
Pewlett-Hackard is anticipating that many of its long-time employees will soon be reaching retirement age and does not want to be caught flat-footed if many key personnel retire at the same time; thus leaving them with a knowledge gap that may leave them behind their competition moving forward.

In an effort to be better prepared for this anticipated turnover, HR analyst Bobby would like to build an employee database that answers his questions of not only who may be retiring soon, but can they also serve as mentors for younger talent within the company, thus hoping to lessen any impacts to the company due to knowledge and experience lost.

### Purpose
The purpose of this analysis is to provide HR analyst Bobby with the following:
- Who will be retiring in the next few years?
- How many positions will Pewlett-Hackard need to fill?
- The data needed to future-proof the company.

## Results
### Potential retiring employee count by title:
 - Senior Engineer: 25,916
 - Senior Staff: 24,926
 - Engineer: 9,285
 - Staff: 7,636
 - Technique Leader: 3,603
 - Assistant Engineer: 1,090
 - Manager: 2
 
 ![Potential Retirees by Title](https://github.com/Caracalla1081/Pewlett-Hackard-Analysis/blob/main/Analysis%20Images/Potential%20Retirees%20by%20Title.png)
### Total about 2% of Pewlett-Hackard staff is approaching retirement age.

### Current potential mentorship count by title:
- Senior Staff: 569
- Engineer: 501
- Senior Engineer: 169
- Staff: 155
- Assistant Engineer: 78
- Technique Leader: 77

![Mentorship Eligibility](https://github.com/Caracalla1081/Pewlett-Hackard-Analysis/blob/main/Analysis%20Images/Mentorship%20Eligibility.png)
### Less than 1% of retiring staff is eligible for mentortship by the paramaters set.

## Summary
Based on the analysis completed during this project, the following questions can be answered: "How many roles will need to be filled as the 'silver tsunami' begins to make an impact?" and "Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?"

- How many roles will need to be filled as the "silver tsunami" begins to make an impact? 
  - 133,776
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 
  - At a glance no, but the analysis above does not look into current staff not yet in that retirement range who can be mentors, or even do any retiring staff have former positions that they can then be a mentor for as well.

- What can't be answered as easily is the distribution of retirement age employess across departments. This would be helpful in allocating the limited mentor roles to departments that may see more severe losses, or also help upper management prioritize hiring or promotion decisions by department.
  - See query "Senior Employees Ten Year or More Away From Retirement Radar by Department" in queries folder.

- One query that might help gain greater insight to exactly how much "senior" or "leader" staff Hewlett-Packard could lose is to run queries that gather employees that are in positions of seniority or leadership, but are not yet approaching retirement age. (See "Senior Employees Ten Years or more Away from Retirement Radar.sql" in queries folder)
  - This insight also can assist in prioritizing which departments or positions should be prioritized, as well as offering a list of potential candidates to fill roles being vacated due to retirement.
- Another major point from the analysis is that Pewlett-Hackard has two managers approaching retirement age (See "Potential Retirees by Title" above), but neither qualify for mentorship. 
  - This will need to be remedied, potentially by not adhering to the current parameters set for mentorship as tightly.
