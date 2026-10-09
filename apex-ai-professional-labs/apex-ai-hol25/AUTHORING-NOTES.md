# Module 25 Authoring Notes

## Sources and Access

Source review date: October 5, 2026.

- **Primary source:** The user-provided Module 25 attachment, covering the four labs and their 8/8/12/7-minute durations.
- **Course context:** [Livelabs - Architecture and Flow](https://confluence.oraclecorp.com/confluence/pages/viewpage.action?pageId=20790293620), version 131, retrieved through the **Oracle Central Confluence** connector. Source classification: **Oracle Highly Restricted**. Only the requested course material and necessary Module 16 dependencies informed this workshop.
- **Official documentation:** Oracle APEX 26.1 pages retrieved through the **web search connector**, without opening the Confluence page in a browser.

## Terminology and Behavior Checked

| Topic | Oracle APEX 26.1 source | Detail reflected in the labs |
| --- | --- | --- |
| PWA prerequisites and attributes | [Creating a Progressive Web App](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-a-progressive-web-app.html) | HTTPS or localhost, Friendly URLs On, General, Installability, Shortcuts, Screenshots, and Service Worker Configuration. |
| Application icon | [Editing User Interface Attributes](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/editing-user-interface-attributes.html) | Icon, Change Icon, Edit, Edit Application Icon, automatic size generation. |
| Session rejoining | [Configuring Security Attributes](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/configuring-security-attributes.html) | Enable for All Sessions control versus Enabled for All Sessions stored value; instance restrictions and frame settings. |
| Native push delivery | [Delivering Push Notifications](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/delivering-push-notifications.html) | Native automation action and delivery to opted-in users. |
| Credentials | [Generating Key Pairs](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/generating-key-pairs-push-notifications.html) | Generate Credentials, selected key pair, and Regenerate Credentials on subsequent setup. |
| Settings page | [Letting Users Manage Notification Settings](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/letting-users-manage-notification-settings.html) | Add Settings Page creates the notification preference feature and menu entries. |
| Employee opt-in | [Opting-In to Receive Push Notifications](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/opting-receive-push-notifications.html) | Settings → Push Notifications → Enable push notifications on this device → Allow. |
| Automation editing | [Editing an Existing Automation](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/editing-an-existing-automation.html) | Actions Initiated On, Add Action, Create, Save Changes, Save and Run. |
| Automation log | [Creating an Automation](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-an-automation.html) | Save and Run executes in the background; Execution Log and row messages provide execution evidence. |
| Responsive application design | [Creating Applications for Mobile Devices](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-applications-for-mobile-devices.html) | Responsive page inspection remains necessary after installation. |

## Decisions for This Draft

1. Preserve all four labs and their original durations. Add explanatory steps without creating new application pages beyond the supplied settings feature.
2. Reuse the overdue automation. The Module 25 source names it **Onboarding Task Overdue**, while the detailed Module 16 instructions name it **Task Overdue**. Identify the existing component by its source and actions.
3. Do not invent ESS page numbers. Use actual page names and aliases when configuring shortcut targets. Verify the Target URL selection control while taking screenshots; the documentation specifies the target page but does not detail every dialog control.
4. Preserve the existing automation query and actions. Module 16 excludes already processed Overdue rows, so test with a fresh eligible task and confirm a nonzero processed row count.
5. Keep the notification recipient tied to each query row's EMPLOYEE_EMAIL, matching the subscribed ESS username. No scheduled-run employee session is assumed.
6. Use Save and Run for the automation test, matching the 26.1 guide. Keep the course's prior schedule configuration unless the environment requires a deliberate change.
7. Use the APEX icon library fallback because no course icon was supplied. Unannotated runtime screenshot assets are included in files/.
8. Link captured instructional images after every corresponding numbered step. Record uncaptured steps explicitly in SCREENSHOT-CHECKLIST.md without broken image references.
9. Record unavailable calendar views or browser/device features as environment limitations. The existing calendar may be the native APEX Calendar or a course plug-in.

## Application Walkthrough and Capture Results

Application 301 in workspace APEX_LL was configured and inspected with the user's supplied accounts. No passwords or push private-key values are stored in this workshop.

- Friendly URLs, PWA, and Installable are enabled. Display is Standalone; short name is ESS Portal; theme and background colors are #10B981 and #0F6E56; service worker is Default. The green People icon from the APEX library was selected.
- Rejoin Sessions was enabled for all sessions at the application and instance levels after explicit user approvals. These settings remain enabled.
- Shortcuts were saved for My Tasks (page 2, sequence 10), Apply for Leave (page 5, sequence 20), and My Payslip (page 6, sequence 30). APEX generated substitution-string targets; &SESSION. is a substitution string, not a captured session ID.
- Two valid Narrow screenshot records remain: ESS Home and My Tasks. The approved extra blank record was deleted. Source captures are both 390 × 844, but the saved APEX crops are 388 × 844 and 390 × 844. Align the crops before final acceptance. The initial home capture was taken while its lower chart was loading; replace the promotional image with a settled chart capture for publication.
- Push notifications and the generated credential are configured. Settings page 20000 and Push Notifications page 20010 were created. The native Allow permission and enabled device checkbox are captured.
- The existing automation is named Task Overdue in this environment. The native Send Push Notification action was added at sequence 30, after the existing status update and email actions. It uses the row's EMPLOYEE_EMAIL and TASK_NAME substitution strings.
- The first approved eight-task run stopped in Send E-Mail because SMTP_HOST_ADDRESS is not configured. Its first status update had already committed. The approved retry temporarily disabled only Send E-Mail, processed the seven remaining rows with Success and zero errors, then restored the original email condition. All eight test tasks now have Overdue status. Schedule Status remains Disabled.
- Device delivery has not been verified. The push queue was empty when inspected, which does not establish receipt. The subscribed username is uppercase; recipient normalization/casing should be verified if delivery troubleshooting is needed. Do not claim eight pushes were delivered or that email was delivered.
- The approved page 2 report-source repair removed references to nonexistent audit columns and preserved existing report-column types with typed NULL aliases. The working query is saved in [files/page-2-onboarding-report.sql](files/page-2-onboarding-report.sql). The report loaded successfully after the change.
- Leave Request raises an existing missing ESS_UTIL.CALCULATE_LEAVE_BALANCE routine error. This was observed and left for separate repair. No leave request or new onboarding task was submitted.
- Leave Calendar exposes Month and List. Inspected periods had no events, so event interaction and employee leave visibility remain unverified.
- APEX To Go review was limited to public Welcome, Discover, and Get Started screens at the user's request. No demo sign-in was performed.

## Screenshot Method and Remaining Checks

126 instructional PNG references cover 99 of 105 numbered steps. The first two user-supplied screenshots were annotated without resizing. Missing red outlines were added using the explicitly approved pixel-preserving local script; Lab 1, Lab 2, and Lab 3 images are cropped to the relevant content without resizing UI pixels. Browser permission, installed window, Finder icon, and Developer Tools screenshots come from native UI captures. The remaining instructional captures come from the real App Builder and ESS pages, with the version text hidden.

The installation confirmation dialog, operating-system shortcut menu and its interactions, received notification and click, and notes/checklist screenshots remain pending. macOS Dock control did not respond, and browser control stopped responding during the final task dialog inspection. The dialog screenshot exists; no form was submitted. Opening the local notes HTML in the browser was blocked by browser URL policy; the notes are supplied as Markdown.

Review [SCREENSHOT-CHECKLIST.md](SCREENSHOT-CHECKLIST.md) for exact coverage and [MOBILE-REVIEW-NOTES.md](MOBILE-REVIEW-NOTES.md) for observed results. Existing screenshots of unsuccessful or incomplete checks are labeled accordingly. Do not treat every captured step as a passed acceptance check.

## Lab 2 Revision — October 6, 2026

- Replaced learner-facing capture-review comments and troubleshooting with ordered instructions and a Summary. Learn More uses documentation titles without the version prefix.
- Added the instance prerequisite and session-management route, required Deep Linking Enabled for post-login navigation, and retained the application’s existing security settings during this revision. Live Deep Linking remains Disabled until the documented configuration is applied.
- Confirmed actual destinations: page 2 My Onboarding Tasks, page 5 Leave Request, page 6 My Payslip. The Target URL selector opens a Search popup; it is not the standard Link Builder. Shortcut icons are optional and may remain empty.
- Replaced the error-banner security screenshot and Save-versus-Create examples. Cropped shortcut dialogs and screenshot metadata to their relevant controls without altering UI text. Removed the mismatched-size, loading-thumbnail screenshot-list illustration.
- Replaced both downloadable runtime PNGs with settled, clean captures at exactly 390 × 844. These were captured in an isolated Chromium session to avoid interfering with the user’s active Chrome work. No browser tabs, debug banners, developer toolbar, or agent pointer appear in those files.
- Added explicit Chrome device-emulation and Capture screenshot instructions, download links, full-image crop verification, and editing of existing records with Save to avoid duplicates.
- Live promotional records were inspected but not updated: Home remains 388 × 844 and Tasks remains 390 × 844. File chooser automation did not open; no replacement was uploaded or saved. Task 5 explains how to correct the existing records manually.
- Task 6 defines expected headings and separate checks for an existing session and a new sign-in. Operating-system menu, shortcut launch, post-login destination, and installation-prompt screenshots remain pending. The Chrome More options → Capture screenshot menu illustration also remains pending.
- The existing Leave Request error (`ESS_UTIL.CALCULATE_LEAVE_BALANCE` missing) remains a runtime blocker for the leave-form check; no leave request was submitted.

Chrome device-toolbar terminology and DPR capture guidance were checked against [Simulate mobile devices with device mode](https://developer.chrome.com/docs/devtools/device-mode). Set DPR to 1 to keep exported image pixels aligned with the chosen CSS viewport dimensions. The Add device pixel ratio menu and DPR control illustrations are now captured.

Lab 2 refinement: merged shortcut configuration and page selection; removed optional-icon and repeat-record notes; combined upload settings and Create in each screenshot. Numbered Browser Security actions include Shared Components. Deep Linking Enabled was captured in an unsaved form and restored to the live Disabled value before navigation. Added cropped native Chrome Add device pixel ratio and DPR 1 illustrations. Replaced the loading Leave Request picker with a settled search result.

Lab 2 Task 5 Step 1 uses the second user-supplied full ESS device-mode screenshot with red outlines on More options and Add device pixel ratio. It replaces the separate menu and DPR control images; source dimensions and other pixels are preserved.

Lab 2 Task 6: six illustrations now cover points 1, 4, and 5. The installed ESS image is reused from the prior native capture; destination and account screenshots were captured in an isolated, hidden browser. Points 2, 3, and 6 still need actual launcher-menu and promotional-installation-prompt captures on a supported device. The Leave Request load error was acknowledged to capture the real form; its calculation remains broken. My Payslip currently contains only its heading. A fresh sign-in for page 5 reached Leave Request, but OS shortcut launches were not tested.

Removed Lab 2 Task 6 former Step 5 (fresh sign-in checks and both account screenshots) at the user’s request. The installation-prompt check is now Step 5.

## Lab 3 Revision — October 6, 2026

- Simplified and renumbered all seven tasks. Replaced checkpoints, capture-review notes, Troubleshooting, and Lab Result with learner instructions and a Summary. Learn More titles omit the version prefix.
- Added prerequisites for the Module 16 automation, receiving device, and working email configuration. Confirmed the actual automation name, query conditions, action types, and sequences in a hidden browser.
- Replaced vague settings-page creation with the actual Create Push Notification Settings Page dialog, page source, page numbers 20000 and 20010, and Create. Existing credentials and settings pages are reused during verification.
- Cropped and annotated 30 instructional screenshots without resizing. Fresh background captures show Application home, PWA settings, automation actions, eligibility query, Execution Log, and Log Messages. Reused genuine initial-creation and native permission captures. Chrome tabs, debug banner, developer toolbar, loading indicator, and version footer are excluded from referenced Lab 3 images.
- Documented UPPER(e.email) AS employee_email to match the uppercase employee username shown by ESS. Captured this change in an unsaved Source form, then reloaded and verified the original query was restored. No live application configuration was saved; the mapping must be applied before the next delivery test.
- The read-only eligibility query ran without errors and returned no tasks. No automation was rerun, no task status changed, and no emails or push notifications were sent during this revision.
- Execution details open through the Messages count, not Start Timestamp. Captured the real Log Messages page. The seven-row historical success used for illustration came from the earlier approved email bypass; Send E-Mail remains restored. SMTP configuration still requires resolution for a full-action test.
- Task 7 Steps 5 and 6 still require real-device evidence of notification receipt and click. Headless verification cannot establish native notification delivery. These missing screenshots are tracked in the coverage files; no notification image was fabricated.

## Lab 4 Revision — October 6, 2026

- Rewrote seven tasks as 22 ordered steps. Combined repeated checks and removed capture-review notes, redundant refresh/checkpoint directions, and Module Result claims. Added Summary and concise Learn More titles.
- Corrected actual menu routes and labels: Home; My Work → My Onboarding Tasks; Leave → Leave Request / Leave Calendar; Submit Leave; month/list. No unsupported Week or Day instructions remain.
- Added 29 referenced screenshots with numeric task/point filenames and pixel-preserving red boxes/crops. Fresh hidden-browser captures show loaded Home cards, report scrolling, dialog Cancel, user Settings, form fields/date picker, calendar navigation, and public APEX To Go screens. Reused clean, genuine App Builder/sign-in/native Chrome device-toolbar captures. No native Chrome windows were controlled.
- Layout inspected with a requested DOM viewport of 390 × 844. The hidden browser's screenshot API returned 375 × 812 pixels for some ESS runtime pages and 390 × 844 for others; no resizing was applied to imply uniform raster dimensions. Developer Toolbar Auto Hide was enabled only for capture and restored to its original unchecked state. Viewport override reset afterward.
- Verified report scrolling, task-dialog Cancel, Leave Request date-picker layout and Cancel, Settings open/close, and calendar Previous/Next/today/month/list. No task or leave request was submitted, and no application configuration or database data was saved.
- Existing missing ESS_UTIL.CALCULATE_LEAVE_BALANCE error persists. Layout captures were taken after dismissing it; no full form acceptance is claimed. Inspected calendar periods contain no events, so event visibility/click remain unverified.
- APEX To Go review restricted to public Welcome, Discover, and Get Started screens, as requested. No sign-in or authenticated sample feature was tested.
- Added clearly labelled HTML example review notes and verification record, with genuine screenshots of those workshop artifacts. They do not mimic ESS or claim incomplete checks passed. Lab 4 has no missing step illustrations; pending native installation, launcher, and notification captures in earlier labs remain tracked.

## Lab 3 Follow-up — October 6, 2026

- Removed the Labs 1–2 prerequisite and the selected-credential skip instruction as requested.
- Rebuilt Task 3 Step 2 from the original capture. The Page Source red box now surrounds the full Create a new page radio control and label; page-number and Create highlights remain.
- Added the LiveLabs <copy> wrapper to the Task 7 SQL snippet so the workshop supplies its Copy button. Removed the requested eligibility paragraph and screenshot. Step 1 is tracked as a text-only exercise rather than a missing capture; Lab 3 now references 29 images.

## Lab 4 Task 6 Tour Revision — October 8, 2026

Replaced the review-comments exercise with a three-step end-user tour of the public Welcome → Discover → Get Started flow. Kept the earlier restriction to public screens; no APEX To Go sign-in is included. Removed the improvement table and its illustration, aligned the lab objective and summary, and removed the obsolete improvement-ideas row from the verification example and its capture. Task 7's module verification checks remain. Existing screenshots are reused; no new application state or feature was claimed.

## Lab 4 Task 7 Removal — October 8, 2026

Removed Task 7 and its verification-record link and screenshot reference at the user’s request. Lab 4 now ends after the six-task mobile tour, followed by Summary and Learn More. Updated the summary and coverage metadata; the unused example assets are retained.

## Lab 4 Application Tour Screenshot — October 8, 2026

Added Task 6 Step 4 showing the APEXToGo application home screen from the user-supplied screenshot. Cropped to the complete application without resizing; red boxes identify search, categories, and bottom navigation. Step 3 now continues with Go! and sign-in if prompted. Objectives and summary include the application home tour. This extends the documented tour beyond the earlier public welcome-only scope; no sample login, sign-in replay, or application changes were performed.
