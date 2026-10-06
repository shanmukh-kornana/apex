# Building Mobile-Friendly Apps

## Introduction

In this module, you will make the existing Employee Self-Service Portal (ESS) an installable Progressive Web App (PWA). Employees will open ESS from their device home screen, use shortcuts to reach common pages, and opt in to push notifications for overdue onboarding tasks. You will then check how the existing ESS pages look and work in mobile view and explore Oracle APEX To Go for ideas to improve the mobile experience.

Estimated Workshop Time: 35 minutes

### Objectives

In this workshop, you will:

- Enable Progressive Web App support and install ESS in Standalone display mode.
- Configure an application icon, three shortcuts, and two installation screenshots.
- Enable push notifications and subscribe an employee test account on a device.
- Add a Send Push Notification action to the existing overdue onboarding task automation.
- Verify ESS Home, My Tasks, Leave Request, and Leave Calendar in mobile view.
- Identify two or three mobile design ideas from Oracle APEX To Go.

### Where We Are

ESS already contains the employee pages, authentication, branding, and automations created in earlier modules. This workshop adds mobile behavior to that application. Employees commonly check tasks, request leave, and view payslips on a phone, making ESS the primary application for this module. The Talent Acquisition Portal (TAP) remains available for the recruitment activities covered earlier in the course.

### Workshop Flow

| Lab | What you will build or verify | Estimated time |
| --- | --- | --- |
| 1 | Enable and install ESS as a PWA | 8 minutes |
| 2 | Add PWA shortcuts and screenshots | 8 minutes |
| 3 | Enable and test overdue task push notifications | 12 minutes |
| 4 | Verify mobile pages and review APEX To Go | 7 minutes |

### Prerequisites

- The existing **Employee Self-Service Portal** application from the preceding modules.
- Existing **ESS Home**, **My Tasks**, **Leave Request**, **My Payslip**, and **Leave Calendar** pages. Locate pages by name; page numbers can differ between workspaces.
- An employee test account whose ESS username matches the employee email returned by the overdue task automation.
- An incomplete test onboarding task with a due date before today that matches the automation's query conditions.
- An ESS runtime URL served over HTTPS, or localhost for local testing. A phone must be able to reach the HTTPS URL; localhost on your computer is not the same as localhost on your phone.
- A browser/device that supports PWA installation and web push. Chrome on a supported desktop or Android device is a practical lab starting point. Installation, shortcuts, and notification presentation depend on the browser and operating system.

### Before You Begin

1. Run ESS and confirm that you can sign in with an employee test user.
2. Open the prerequisite pages and record their page numbers or aliases for the shortcut targets.
3. Return to App Builder. Keep the ESS runtime tab available for testing.

## Learn More

- [Creating a Progressive Web App](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-a-progressive-web-app.html)
- [Delivering Push Notifications](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/delivering-push-notifications.html)
- [Creating Applications for Mobile Devices](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-applications-for-mobile-devices.html)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, October 2026
