# APEX Components Overview

## Introduction

In this lab, you will tour the Oracle APEX development components, browse the Gallery, and install a sample application. The goal is to become familiar with the components you will use to build the TAP and ESS applications.

Estimated Lab Time: 20 minutes

### Objectives

In this lab, you will:

- Tour App Builder, SQL Workshop, and Team Development.
- Compare Gallery sample apps with starter apps.
- Install and run a Gallery sample application.
- Review its navigation, page layouts, forms, and report features.

## Task 1: Tour the Oracle APEX Product Components

App Builder is the main development area for creating, running, and maintaining APEX applications.

1. On the APEX workspace home page, select **App Builder**.

    ![Select App Builder](images/111_click_App_Builder.png " ")

2. Review the App Builder home page. The top actions let you create or import applications, open workspace utilities, and review workspace activity. Existing applications appear below them.

    ![Review the App Builder home page](images/112_show_Inside_App_builder.png " ")

3. Open any existing application. **APEXToGo** is used in the screenshot; the applications in your workspace may differ.

    ![Open an existing application](images/113_Open_an_Application.png " ")

    > **Note:** A new workspace may not contain any applications. You will install and explore a Gallery sample application in Task 3.

4. Review the application home page:

    - **Run Application** opens the runtime application.
    - Use **Supporting Objects** to define database object installation scripts that are invoked when importing an application.
    - **Shared Components** contains reusable application-wide definitions.
    - **Utilities** provides diagnostic and maintenance tools.
    - **Export / Import** moves application definitions between environments.
    - The page grid lists the pages that make up the application, including home, report, form, and supporting pages.

    ![Review the application home page](images/114_show_inside_Application.png " ")

5. Select the **APEX** logo in the upper-left corner to return to the workspace home page.

    ![Return to the APEX workspace home page](images/115_back_to_APEX_Home.png " ")

SQL Workshop is where developers inspect database objects, run SQL and PL/SQL, manage scripts, and use database utilities.

6. On the workspace home page, select **SQL Workshop**.

    ![Select SQL Workshop](images/121_Open_SLQ_Workshop.png " ")

7. Select **Object Browser**.

    ![Open Object Browser](images/122_click_object_browser.png " ")

8. Review Object Browser. Use it to inspect or create tables, views, packages, procedures, functions, sequences, triggers, and other schema objects.

    ![Review Object Browser](images/123_inside_object_browser.png " ")

9. Click the return icon to return to the **SQL Workshop** home page.

    ![Return to SQL Workshop](images/124_back_to_SQL_workshop.png " ")

10. Select **SQL Commands**.

    ![Open SQL Commands](images/125_open_SQL_commands.png " ")

11. SQL Commands provides an editor for running SQL or PL/SQL and displays the result below it. Click the return icon to return to the **SQL Workshop** home page.

    ![Return to SQL Workshop](images/126_click_back_SQL_workshop.png " ")

12. From SQL Workshop, select **SQL Scripts**.

    ![Open SQL Scripts](images/128_open_SQL_scripts.png " ")

13. Review the script repository. SQL Scripts stores reusable scripts and shows their size, execution results, and run option.

    ![Review SQL Scripts](images/129_show_SQL_scripts.png " ")

14. Click the return icon to return to the **SQL Workshop** home page.

    ![Return from SQL Scripts](images/1210_back_to_SQL_workshop.png " ")

15. Select **Utilities**.

    ![Open SQL Workshop Utilities](images/1211_open_Utilities.png " ")

16. Review the available tools, including Data Workshop, Data Generator, Query Builder, Quick SQL, DDL generation, and recycle-bin management. Return to the APEX home page when finished.

    ![Review SQL Workshop Utilities](images/1212_back_SQL_workshop.png " ")

Use the **Team Development Utilities** page to manage deleted issues, templates, milestones, and labels, view uploaded files, purge data, reassign issues and issue owners, remove a milestone or label from all issues, and manage user notifications.

17. On the workspace home page, select **Team Development** from the right-side panel.

    ![Select Team Development](images/131_click_team_development.png " ")

18. Review the Issues page and its summary counters. Teams can use this area to record issues, assign work, discuss progress, and capture feedback.

    ![Review Team Development](images/133_show_team_development.png " ")

19. Select the **APEX** logo to return to the workspace home page.

    ![Return to the APEX home page](images/132_back_to_APEX_home.png " ")

## Task 2: Browse Gallery Applications

Gallery applications provide working examples and reusable starting points.

1. On the workspace home page, select **Gallery**.

    ![Open Gallery](images/211_open_gallery.png " ")

2. Review the **Sample Apps** tab. Sample apps are complete applications that demonstrate APEX features, page patterns, and user experiences.

    ![Browse Gallery sample apps](images/212_show_sample_apps.png " ")

3. Select **Starter Apps**. Starter apps provide a smaller foundation that can be adapted for a business application. Notice that Gallery also separates Utility Apps and Custom Apps.

    ![Browse Gallery starter apps](images/213_show_starter_apps.png " ")

## Task 3: Install and Explore a Gallery Sample Application

The supplied APEX 26.1 flow installs **APEXToGo**. If your instructor assigned **Sample Database Application**, select that Gallery card instead and follow its install-and-run flow.

1. Return to **Sample Apps**, locate **APEXToGo**, and select **Install**.

    ![Install APEXToGo](images/311_click_install_APEGOTO_app.png " ")

2. When installation finishes, select the **Run** icon on the APEXToGo card.

    ![Run the installed APEXToGo application](images/312_click_run_APEGOTO_app.png " ")

3. On the first welcome page, read the message and select **Next**.

    ![Continue from the first welcome page](images/313_click_Next.png " ")

4. Review the mobile-patterns message and select **Next**.

    ![Continue from the mobile-patterns page](images/314_click_Next.png " ")

5. Select **Go!** to open the application.

    ![Finish the APEXToGo introduction](images/315_click_Go.png " ")

6. If prompted, enter your workspace username and select **Sign In**.

    ![Sign in to APEXToGo](images/316_enter_username.png " ")

7. Confirm that the application home page opens. Notice the primary navigation and the card-based restaurant layout.

    ![Review the APEXToGo home page](images/317_show_app.png " ")

You are not building or modifying this application. Use it as a reference for the structures you will create later.

8. Select **Search** in the primary navigation.

    ![Open application search](images/321_click_search.png " ")

9. Enter `grill`. Observe how matching restaurants appear as you type.

    ![Search for grill restaurants](images/323_search_grill.png " ")

10. Select **APEX Mex Grill** from the search results.

    ![Select APEX Mex Grill](images/323_search_select_grill.png " ")

11. Review the restaurant page. Notice the page header, restaurant summary, menu sections, item descriptions, prices, and compact action controls.

    ![Review the restaurant and menu page](images/324_show_mexican_grill.png " ")

12. Select **Orders**. Review how the page separates in-progress orders from past orders and presents status information clearly.

    ![Review the Orders page](images/325_view_orders.png " ")

13. Return to a restaurant, select an item, and review the item-detail drawer. Notice the image, quantity control, option, note field, and primary **Add to Cart** action.

    ![Review item details and cart controls](images/326_add_items.png " ")

14. Select **Account** on the Home page. Review how related account actions are grouped in a single panel.

    ![Review account management](images/327_view_account_management.png " ")

## Summary

You toured App Builder, SQL Workshop, Team Development, and Gallery. You also installed and explored a professionally built sample application.

You may now **proceed to the next module**.

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, July 2026
