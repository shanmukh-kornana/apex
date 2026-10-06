# Verify ESS on Mobile and Review APEX To Go

## Introduction

In this lab, you will inspect the existing ESS pages in mobile view and review the public Oracle APEX To Go welcome screens for ideas to improve the employee experience.

Estimated Time: 7 minutes

### Objectives

- Inspect ESS using Chrome's device emulation.
- Check navigation, reports, forms, and the calendar in mobile view.
- Record observed issues and two or three improvements for ESS.

### Prerequisites

- Complete Labs 1–3 and have an employee account for ESS.
- Use Chrome to inspect the existing Home, My Onboarding Tasks, Leave Request, and Leave Calendar pages.

## Task 1: Open ESS in Mobile View

1. In your workspace, open **Employee Self-Service Portal**. Click **Run Application** to open ESS in Chrome, then sign in as an employee user.

    ![Run Application on the application home page](images/4_1_1_run_application.png " ")

    ![ESS sign-in page](images/4_1_1_employee_sign_in.png " ")

2. On the ESS Home page, right-click the **Your Onboarding Progress** heading and select **Inspect**. Chrome opens **Developer Tools**.

    ![ESS Home with the heading to inspect](images/4_1_2_inspect_application.png " ")

    ![Developer Tools panel](images/4_1_2_developer_tools.png " ")

3. In Developer Tools, click **Toggle device toolbar**, the phone and tablet icon.

    ![Toggle device toolbar icon](images/4_1_3_toggle_device_toolbar.png " ")

4. On the device toolbar, select **Dimensions → Responsive**. Enter **390** for the width and **844** for the height, pressing **Enter** after each value. Keep these dimensions for the remaining page checks.

    ![Responsive device toolbar set to 390 by 844](images/4_1_4_device_dimensions.png " ")

## Task 2: Verify ESS Home

1. Click **Main Navigation**, then click **Home**.

    ![Home in the navigation menu](images/4_2_1_home_navigation.png " ")

2. Check that the onboarding cards stack vertically, their text is readable, and the regions do not overlap. Check the application title and welcome heading for clipped text. The main page should fit the mobile view without horizontal scrolling.

    ![ESS Home cards and headings in mobile view](images/4_2_2_responsive_home.png " ")

3. Click the **user account** icon in the application header, then click **Settings**. Check that the Settings dialog fits the mobile view and its controls are accessible. Click **Close** to return to ESS Home.

    ![Settings in the user account menu](images/4_2_3_account_menu.png " ")

    ![Settings dialog with the Close button](images/4_2_3_settings_dialog.png " ")

## Task 3: Verify My Onboarding Tasks

1. Click **Main Navigation**. Click the arrow beside **My Work** to expand it, then click **My Onboarding Tasks**.

    ![My Work expanded with My Onboarding Tasks](images/4_3_1_tasks_navigation.png " ")

2. Read the **Task Name** column. Swipe left inside the report, or move its horizontal scrollbar to the right, to reveal **Due Date** and **Status**. Check that the values are readable and that the application header stays in place while the report scrolls.

    ![Initial task report with Task Name](images/4_3_2_task_names.png " ")

    ![Report scrolled to Due Date and Status](images/4_3_2_report_scrolling.png " ")

3. Click **Create** to open the **Onboarding Task** dialog. Check that its fields stack vertically and its action buttons are accessible. Click **Cancel** to return to the report.

    ![Create button on My Onboarding Tasks](images/4_3_3_create_task.png " ")

    ![Onboarding Task dialog with Cancel](images/4_3_3_task_dialog.png " ")

## Task 4: Verify Leave Request

1. Click **Main Navigation**. Expand **Leave**, then click **Leave Request**. If a load error appears, click **OK** and record it as **Needs fix**. Continue with the layout checks if the form is accessible; verify the complete form again after the error is resolved. If a load error appears, click **OK** and record it as **Needs fix**. Continue with the layout checks if the form is accessible; verify the complete form again after the error is resolved.

    ![Leave Request in the expanded Leave menu](images/4_4_1_leave_navigation.png " ")

2. Inspect the form using the following checks. Click the calendar icon beside **Start Date** and check that the date picker fits the mobile view. Press **Escape** to close it. Scroll within the page to reach the lower fields and buttons.

    | Field or control | What to check |
    | --- | --- |
    | Leave Type | The list opens and its options are readable. |
    | Start Date and End Date | The inputs and calendar icons are accessible. |
    | Reason | The text area fits the available space. |
    | Submit Leave | The button is visible when you scroll to the bottom of the form. |

    ![Stacked Leave Request fields](images/4_4_2_leave_form.png " ")

    ![Start Date calendar icon and date picker](images/4_4_2_date_picker.png " ")

3. Enter **Mobile layout check** in **Reason**. Confirm that the text remains inside the field and that **Cancel** and **Submit Leave** are visible. Click **Cancel** to return to ESS Home.

    ![Reason field and Cancel on Leave Request](images/4_4_3_reason_cancel.png " ")

## Task 5: Verify Leave Calendar

1. Click **Main Navigation**. Expand **Leave**, then click **Leave Calendar**.

    ![Leave Calendar in the expanded Leave menu](images/4_5_1_calendar_navigation.png " ")

2. In **month** view, check that the month heading, weekday labels, date cells, and navigation buttons fit the mobile view.

    ![Leave Calendar in month view](images/4_5_2_calendar_month.png " ")

3. Click **Previous** and **Next** to move between months. Check that the month heading changes. Click **today** to return to the current month.

    ![Previous month on Leave Calendar](images/4_5_3_calendar_previous.png " ")

    ![Next month and today button on Leave Calendar](images/4_5_3_calendar_next.png " ")

4. Click **list** and compare it with **month** view. If leave events are present, check that their dates and labels are readable. If the calendar shows **No events to display**, record event visibility as **Not tested** and repeat this check later for a period containing an employee leave event. Click **month** to return to the calendar grid.

    ![List view and available calendar view buttons](images/4_5_4_calendar_list.png " ")

## Task 6: Review the Public Oracle APEX To Go Screens

1. Open [Oracle APEX To Go](https://apex.oracle.com/go/apextogo) in a new tab. Set the device toolbar to the same **390 × 844** mobile view. Review the **Welcome** screen and its primary **Next** button.

    ![Public Oracle APEX To Go Welcome screen](images/4_6_1_to_go_welcome.png " ")

2. Click **Next** to open **Discover**. Review the short explanation, illustration, and spacing around the **Next** button.

    ![Public Oracle APEX To Go Discover screen](images/4_6_2_to_go_discover.png " ")

3. Click **Next** to open **Get Started**. Review how the final welcome screen presents one clear primary action. This exercise ends with the public welcome screens.

    ![Public Oracle APEX To Go Get Started screen](images/4_6_3_to_go_get_started.png " ")

4. Record two or three improvements for ESS and the page each improvement would affect. Include any clipped text, overlapping controls, or errors found in Tasks 2–5. Use the table below as a starting point; the [example review notes](files/lab4-review-notes.html) show one completed review.

    | ESS page | Observation | Suggested improvement |
    | --- | --- | --- |
    | Home | The application title is truncated in mobile view. | Use a shorter mobile title. |
    | My Onboarding Tasks | Important columns require horizontal scrolling. | Show task name, due date, and status in a focused report or cards. |
    | Employee welcome | The public APEX To Go screens use brief instructions and one primary action. | Add a short welcome flow with a clear next action. |

    ![Example review notes based on the inspected pages](images/4_6_4_record_improvements.png " ")

## Task 7: Record the Module Results

1. Record your browser, device, and viewport size. Review the checks below using **Pass**, **Needs fix**, or **Not tested**, and add the observed result. Repeat the layout and touch checks on an actual supported phone when available. Device emulation alone does not verify PWA installation, operating-system shortcuts, or push notification delivery. The [example verification record](files/lab4-verification-record.html) illustrates how to record incomplete checks.

    | Check | Expected result |
    | --- | --- |
    | Installation and launch | ESS installs and opens from the device application icon. |
    | PWA shortcuts | Each shortcut opens its configured ESS page. |
    | Promotional screenshots | The saved screenshot records use the intended mobile dimensions. |
    | Push notifications | The subscribed device receives a notification, and clicking it opens the target page. |
    | Employee pages | Home, tasks, leave form, and calendar remain usable in mobile view. |
    | Calendar events | Employee leave events are visible in the selected period. |
    | Improvement ideas | Two or three ESS improvements are recorded. |

    ![Example verification record with incomplete checks identified](images/4_7_1_verification_record.png " ")

## Summary

You reviewed ESS navigation, cards, report scrolling, form controls, and calendar views in mobile view. You also reviewed the public Oracle APEX To Go welcome screens and recorded improvements and verification results for the module.

## Learn More

- [Creating Applications for Mobile Devices](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-applications-for-mobile-devices.html)
- [Oracle APEX To Go](https://apex.oracle.com/go/apextogo)
- [Simulate Mobile Devices with Device Mode](https://developer.chrome.com/docs/devtools/device-mode)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, October 2026
