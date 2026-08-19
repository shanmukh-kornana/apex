# Introduction

## About This Workshop

The Employee Self-Service Portal (ESS) and Talent Acquisition Portal (TAP) already use Oracle APEX Universal Theme, but they still look like starter applications. Their Home pages also contain placeholder content rather than useful business metrics.

In this module, you will give each application a distinct visual identity and replace the placeholders with live, data-driven components. ESS becomes the warm, approachable portal used by employees, while TAP receives the restrained corporate styling expected by recruiters and hiring managers.

Estimated Workshop Time: 15 minutes

## Where We Are

Earlier modules built the pages, navigation, reports, and forms required for the employee lifecycle. Module 15 marks the point where ESS becomes the primary teaching application. You will now improve its presentation, expose live onboarding information, and add a reusable Template Component.

TAP is the secondary application in this module. You will apply a corporate blue and grey style and add a concise recruiting KPI summary to its Home page.

## What You Will Build

In ESS, you will build and validate:

- An **ESS Light** theme style with a teal and green visual identity.
- An **ESS Dark** theme style that an end user can select at runtime.
- Accessible, state-aware badges on **My Onboarding Tasks**.
- Four Home-page KPI cards: Tasks Pending, HR Documents Completed, Days Until Start, and Leave Days Available.
- A reusable **Onboarding Progress Bar** Template Component.

In TAP, you will build and validate:

- A **TAP Corporate** theme style with a blue and grey palette.
- Four Home-page KPI cards: Active Requisitions, Candidates This Week, Interviews Today, and Offers Pending.

## Objectives

In this workshop, you will:

- Use Theme Roller to create and save application-specific theme styles.
- Allow ESS users to choose between light and dark theme styles.
- Convert an Interactive Grid to an Interactive Report and display semantic status badges.
- Build Metric Card regions from SQL queries.
- Create a Template Component with custom attributes, HTML, and CSS.
- Apply basic accessibility practices so that text, semantics, and ARIA labels communicate meaning without relying only on color.

## Prerequisites

- Complete the earlier modules that create the `TMS_` tables and the ESS and TAP applications.
- Sign in to the Oracle APEX workspace used for the Talent Management System.
- Use the application credentials supplied in your workshop environment when you run ESS or TAP.
- Ensure that the signed-in ESS account matches an email address in `TMS_EMPLOYEES`. If it does not, the user-specific KPI and progress queries correctly return no employee data.

## Lab Modules

Each lab uses a separate application snapshot. Always verify the application ID before making changes; do not continue a later lab in the preceding lab's application.

| Lab | Application Snapshot | App ID | Est. Time |
| --- | --- | ---: | --- |
| Lab 1: Brand ESS with Theme Roller | 15_01: Employee Self-Service Portal | 153 | 4 minutes |
| Lab 2: Add State-Aware Status Badges to ESS | 15_02: Employee Self-Service Portal | 154 | 2 minutes |
| Lab 3: Build the ESS Home KPI Cards | 15_03: Employee Self-Service Portal | 155 | 4 minutes |
| Lab 4: Build the Onboarding Progress Template Component | 15_04: Employee Self-Service Portal | 157 | 3 minutes |
| Lab 5: Brand TAP and Build Recruiting KPI Cards | 15_05: Talent Acquisition Portal | 158 | 2 minutes |

## Learn More - Useful Links

- [Oracle APEX Product Overview](https://www.oracle.com/apex/)
- [Oracle APEX 26.1 Documentation](https://docs.oracle.com/en/database/oracle/apex/26.1/)
- [Universal Theme](https://apex.oracle.com/ut)
- [Oracle APEX Tutorials](https://apex.oracle.com/en/learn/tutorials/)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, August 2026
