# Enable and Install ESS as a Progressive Web App

## Introduction

In this lab, you will enable Progressive Web App support in the existing ESS application, configure its installation details and icon, and install it on a supported device.

Estimated Time: 8 minutes

### Objectives

- Verify the PWA prerequisites.
- Configure ESS to be installable with Standalone display mode.
- Configure the application icon.
- Install and launch ESS from the device application icon.

## Task 1: Verify PWA Prerequisites

1. In your workspace, open **Employee Self-Service Portal**.

    ![Lab 1, Task 1, Step 1: open ESS](images/1_1_1_open_ESS.png " ")

2. On the Application home page, click **Edit Application Definition** to the right of the application name.

    ![Lab 1, Task 1, Step 2: edit application definition](images/1_1_2_edit_application_definition.png " ")

3. On the **Definition** tab, locate **Properties** and verify that **Friendly URLs** is **On**. Click **Apply Changes**.

    ![Lab 1, Task 1, Step 3: friendly URLs](images/1_1_3_friendly_urls.png " ")

4. Return to the ESS Application home page.

    ![Lab 1, Task 1, Step 4: return to application home](images/1_1_4_return_application_home.png " ")

## Task 2: Enable Progressive Web App Support

1. Click **Shared Components**.

    ![Lab 1, Task 2, Step 1: shared components](images/1_2_1_shared_components.png " ")

2. Under **User Interface**, click **Progressive Web App**.

    ![Lab 1, Task 2, Step 2: progressive web app](images/1_2_2_progressive_web_app.png " ")

3. Under **General**, configure:

    | Property | Value |
    | --- | --- |
    | Enable Progressive Web App | On |
    | Installable | On |

    ![Lab 1, Task 2, Step 3: enable PWA and installable](images/1_2_3_enable_pwa_installable.png " ")

4. Click **Installability**.

    ![Lab 1, Task 2, Step 4: click Installability](images/1_2_4_continue_installability.png " ")

## Task 3: Configure Installability and the Service Worker

1. Under **Installability**, enter:

    | Property | Value |
    | --- | --- |
    | Display | Standalone |
    | Short Name | `ESS Portal` |
    | App Description | `Acme Corp Employee Self-Service Portal` |
    | Theme Color | `#10B981` |
    | Background Color | `#0F6E56` |

    ![Lab 1, Task 3, Step 1: installability values](images/1_3_1_installability_values.png " ")

2. For **Theme Color**, click **Custom** and enter `#10B981` in **Custom Theme Color**.

    ![Lab 1, Task 3, Step 2: custom theme color](images/1_3_2_custom_theme_color.png " ")

    For **Background Color**, click **Custom** and enter `#0F6E56` in **Custom Background Color**.

    ![Lab 1, Task 3, Step 2: custom background color](images/1_3_2_custom_background_color.png " ")

3. Under **Service Worker Configuration**, verify that **Service Worker** is **Default**.

    ![Lab 1, Task 3, Step 3: default service worker](images/1_3_3_default_service_worker.png " ")

4. Click **Apply Changes**.

    ![Lab 1, Task 3, Step 4: apply changes](images/1_3_4_apply_changes.png " ")

## Task 4: Configure the Application Icon

1. Click the **Shared Components** icon to return to **Shared Components**.

    ![Lab 1, Task 4, Step 1: return to shared components](images/1_4_1_return_shared_components.png " ")

2. Under **User Interface**, click **User Interface Attributes**.

    ![Lab 1, Task 4, Step 2: user interface attributes](images/1_4_2_user_interface_attributes.png " ")

3. Locate **Icon**, then click **Change Icon**. If you are replacing an uploaded icon, **Edit** also opens the **Edit Application Icon** dialog.

    ![Lab 1, Task 4, Step 3: change icon](images/1_4_3_change_icon.png " ")

4. You can upload an icon or select one from the APEX icon library. In this lab, select the **People** icon from the library and choose a green color.

    ![Lab 1, Task 4, Step 4: select a library icon and color](images/1_4_4_library_icon_fallback.png " ")

5. Click **Save Icon**, then click **Apply Changes** on the User Interface page.

    ![Lab 1, Task 4, Step 5: save icon](images/1_4_5_save_icon.png " ")

    ![Lab 1, Task 4, Step 5: apply changes](images/1_4_5_apply_changes.png " ")

6. Verify that the **Icon** region shows your selection. APEX generates the required sizes for the application icon, PWA icon, favicon, and supported device icons.

    ![Lab 1, Task 4, Step 6: verify generated icons](images/1_4_6_verify_generated_icons.png " ")

## Task 5: Install and Launch ESS

1. Return to the ESS Application home page in **App Builder** and click **Run Application**. Run ESS in a supported browser and sign in as the employee user.

    ![Lab 1, Task 5, Step 1: run ESS from App Builder](images/1_5_1_run_ESS_app.png " ")

    ![Lab 1, Task 5, Step 1: employee sign-in](images/1_5_1_employee_sign_in.png " ")

2. Verify that ESS opens and displays the employee's Home page. Use Chrome for the device emulation steps below.

    ![Lab 1, Task 5, Step 2: opened ESS application](images/1_5_2_opened_application.png " ")

3. Right-click an area of the ESS page, such as the **Your Onboarding Progress** heading, and click **Inspect** in Chrome's context menu. The **Developer Tools** panel opens.

    ![Lab 1, Task 5, Step 3: right-click the ESS page](images/1_5_3_right_click_application.png " ")

    ![Lab 1, Task 5, Step 3: Developer Tools panel](images/1_5_3_developer_tools.png " ")

4. In Developer Tools, click **Toggle device toolbar**, the phone-and-tablet icon. If device emulation is already enabled, keep it enabled. In the device toolbar above the page, choose **Responsive**, enter **390** for the width and **844** for the height, and press **Enter** after each value. You can change these dimensions to review other screen sizes.

    ![Lab 1, Task 5, Step 4: toggle device toolbar](images/1_5_4_toggle_device_toolbar.png " ")

    ![Lab 1, Task 5, Step 4: set responsive dimensions](images/1_5_4_device_dimensions.png " ")

5. Click **Install App** in the navigation bar or its menu on a small screen. Follow the browser's installation instructions and confirm installation.

    ![Lab 1, Task 5, Step 5: install app](images/1_5_5_install_app.png " ")

6. Open ESS from the installed application icon. Double-click **Employee Self-Service Portal**.

    ![Lab 1, Task 5, Step 6: installed application icon](images/1_5_6_installed_icon.png " ")

7. Sign in again if prompted. Verify that ESS opens in its own application window without the normal browser address bar on a device that supports **Standalone** mode.

    ![Lab 1, Task 5, Step 7: standalone application](images/1_5_7_standalone_window.png " ")

8. Open the navigation menu if it is collapsed. Expand **My Work** and click **My Onboarding Tasks**. Then click **Home** to return to the employee Home page and confirm that navigation works inside the installed application.

    ![Lab 1, Task 5, Step 8: open My Work navigation](images/1_5_8_installed_navigation.png " ")

    ![Lab 1, Task 5, Step 8: My Onboarding Tasks and Home navigation](images/1_5_8_installed_tasks.png " ")

## Summary

In this lab, you enabled Progressive Web App support, configured ESS to be installable with Standalone display mode, and selected an application icon. You used Chrome device emulation to review ESS at mobile width, then installed and launched the application and checked navigation between Home and My Onboarding Tasks.

You may now proceed to the next lab.

## Learn More

- [Creating a Progressive Web App](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-a-progressive-web-app.html)
- [Editing User Interface Attributes](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/editing-user-interface-attributes.html)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, October 2026
