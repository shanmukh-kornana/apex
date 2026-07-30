# Introduction

## About This Workshop

The Talent Acquisition Portal (TAP) and Employee Self-Service Portal (ESS) now contain the operational data for the Acme Corp employee lifecycle. In this module, you will rebuild the HR Analytics App (HAA) as an Oracle APEX Data Reporter application.

Data Reporter lets a reporting administrator publish governed datasets and lets business users create useful reports without working in Page Designer. You will expose three reporting views, create a reusable dataset, assign Data Reporter roles, and publish four human-resources reports.

Estimated Workshop Time: 60 minutes

## Where We Are

The shared Talent Management System schema is populated, and earlier modules created the first version of HAA. That application was a temporary skeleton. Module 9 replaces it with a Data Reporter application built for HR administrators, report editors, and report viewers.

The rebuilt HAA is the primary application for this module. TAP and ESS are not changed.

## What You Will Build

You will build and validate:

- A governed dataset named **HR Analytics App Dataset**.
- A Data Reporter application named **HR Analytics App**.
- Three role-based users: `DR_ADMIN`, `DR_EDITOR`, and `DR_USER`.
- **Recruitment Pipeline Analytics**, an interactive report with a stage summary and average days-in-pipeline chart.
- **Candidate Search & Shortlisting**, a faceted table for candidate discovery.
- **Headcount by Department**, an employee directory presented as a faceted list.
- **Leave Management Analytics**, an interactive report with leave-type summaries.

## Objectives

In this workshop, you will:

- Configure Data Reporter to use Oracle APEX Accounts.
- Replace the temporary HAA application with a Data Reporter implementation.
- Create reporting views that keep joins and business calculations out of the report builder.
- Build a dataset from multiple views.
- Apply administrator, editor, and viewer roles.
- Create interactive and faceted reports.
- Save report settings as the Primary Default, publish the reports, and validate them as an end user.

## Prerequisites

- Complete the earlier modules that create and populate the `TMS_` tables.
- Access to the Oracle APEX workspace used for the Talent Management System.
- Access to APEX Administration Services, or help from an instance administrator, for the one-time Data Reporter authentication setting.
- The Data Reporter user credentials supplied in your workshop environment. Do not store passwords in application source or lab notes.

## Lab Modules

| Module | Est. Time |
| --- | --- |
| Lab 1: What Is Data Reporter and Who Is It For? Set Up the Authentication Scheme | 10 minutes |
| Lab 2: Create the Required Views and Replace the Existing HR Analytics App | 15 minutes |
| Lab 3: Create or Manage Roles in Data Reporter | 15 minutes |
| Lab 4: Create Data Reporter Users and Build Reports | 20 minutes |
| Lab 5: Publish and Review as an End User | Final validation |

## Learn More - Useful Links

- [Oracle APEX Product Overview](https://www.oracle.com/apex/)
- [Oracle APEX 26.1 Documentation](https://docs.oracle.com/en/database/oracle/apex/26.1/)
- [Oracle APEX Tutorials](https://apex.oracle.com/en/learn/tutorials/)
- [Oracle APEX Community](https://apex.oracle.com/community/)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, July 2026
