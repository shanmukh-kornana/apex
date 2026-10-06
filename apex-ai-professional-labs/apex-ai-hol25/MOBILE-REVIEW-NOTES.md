# Module 25 Mobile Review — Application 301

Review date: October 6, 2026. Requested runtime layout viewport: 390 × 844. Some hidden-browser raster captures are 375 × 812; images were cropped without resizing. Installation tested in Google Chrome on macOS. These notes describe observed behavior, rather than a completed device acceptance test.

## Observed layout

- ESS Home stacks the onboarding cards vertically. The application title is truncated at narrow width; the employee email also occupies most of the welcome heading.
- My Onboarding Tasks opens after correcting the report query. Its many columns require region scrolling; Task Name, Due Date, and Status cannot all be read together in the initial narrow view. A mobile report with fewer columns or a card presentation would improve this page.
- The Create action opens an Onboarding Task dialog. The stacked fields fit the mobile view and Cancel was verified without a toolbar overlay. No new task was submitted.
- Leave Request displays stacked inputs. It raises a load error referring to the missing ESS_UTIL.CALCULATE_LEAVE_BALANCE routine. The date picker fits the mobile view. Sample reason text was cleared and Cancel returned to Home without submitting a request. Working leave-balance calculation needs separate repair before acceptance.
- Leave Calendar exposes Month and List. Week and Day are not enabled. Previous, Next, today, and the month/list view controls work. The inspected periods contained no events, so employee leave visibility and event interactions remain unverified. List is the better candidate for narrow screens; validate it with actual test events.

## Ideas from the public APEX To Go welcome screens

1. Use short onboarding instructions and a clear primary Next button, as shown by the public Welcome, Discover, and Get Started screens.
2. Keep mobile navigation focused on employee tasks and make touch targets easy to identify.
3. Reduce the narrow task report to the information employees need most: task name, due date, and status, with details available through an action.

The review was limited to public welcome screens at the user's request. No authenticated APEX To Go device features were inspected.

## Verification checklist

| Check | Observed result |
| --- | --- |
| PWA and Installable | Enabled |
| Standalone | Installed ESS window and navigation captured |
| Shortcut configuration | My Tasks → page 2; Apply for Leave → page 5; My Payslip → page 6 |
| Launcher shortcut menu | Pending device capture; macOS Dock controls did not respond |
| Promotional screenshot records | Two Narrow entries saved; recorded sizes differ: ESS Home 388 × 844, My Tasks 390 × 844; align the crop sizes before final acceptance |
| Push device permission | Allow selected and device checkbox enabled |
| Automation | Prior approved test: Success, 7 rows, 0 errors after temporarily bypassing email; not proof of a complete email-plus-push run or delivery |
| Received notification and notification click | Pending device capture; delivery has not been verified |
| Email action | Restored after temporary bypass; SMTP_HOST_ADDRESS is still unconfigured |
| Task report | Working after approved query repair |
| Leave Request | Existing missing-routine error prevents full acceptance |
| Calendar event visibility | Pending an employee test event |
| Physical phone verification | Pending |

Browser emulation and a successful automation log do not establish that every operating-system feature or push delivery works.

Lab 4 now includes example review notes and a verification record. Settings open/close was verified. Physical-phone, event, installation-menu, and notification-delivery checks still require the intended device and test data.
