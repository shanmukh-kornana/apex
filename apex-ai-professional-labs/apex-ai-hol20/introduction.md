# AI Agents and AI Tools

## Introduction

In this workshop, you will replace simple Dynamic Action chatbots with Oracle APEX AI Agents. The agents retrieve application data through tools, reason over the returned data, and perform controlled updates. You will also add an AI-generated weekly summary to the Employee Self-Service Portal.

Estimated Workshop Time: 90 minutes

### Where We Are

The Talent Acquisition Portal (TAP) and Employee Self-Service Portal (ESS) already contain the core pages, reports, charts, security schemes, and simple chatbot interactions created in earlier modules. Module 20 adds application-aware AI features that work with live Talent Management System data.

### What You Will Build

In this workshop, you will:

- Create a CV Screening Agent in TAP.
- Add three tools that retrieve candidate data, retrieve job requirements, and store a screening result.
- Display the AI score and summary in Candidate Pipeline.
- Create an Onboarding Assistant Agent in ESS.
- Add tools that retrieve employee tasks, search HR policies, and complete a task safely.
- Add the native AI Assistant presentation to ESS Home.
- Build an HR Admin-only Weekly HR Summary that uses live metrics and **Generate Text with AI**.

### Workshop Applications

Use one reference application for each lab:

| Lab | Application | App ID |
| --- | --- | ---: |
| Lab 1 | 20_01 Talent Acquisition Portal | 201 |
| Lab 2 | 20_02: Employee Self-Service Portal | 202 |
| Lab 3 | 20_03: Employee Self-Service Portal | 203 |

> **Note:** Application IDs can differ in another workshop environment. Match the application name when the ID differs.

### Prerequisites

- Access to the `APEX_LL` workspace.
- A configured application-default Generative AI service.
- The TAP and ESS applications from the preceding modules.
- An employee test account whose login name matches `TMS_EMPLOYEES.EMAIL`.
- Access to an HR Admin account for Lab 3.

### Source Scope Note

The Module 20 architecture overview also names Select AI and an ESS AI Logs page. The supplied Module 20 tasks do not define their configuration. This workshop implements the three complete, testable labs supplied for Module 20.

## Learn More

- [Oracle APEX Documentation](https://docs.oracle.com/en/database/oracle/apex/)
- [Oracle APEX Generative AI](https://apex.oracle.com/en/platform/features/generative-ai/)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, August 2026
