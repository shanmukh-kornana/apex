# Build the Onboarding Progress Template Component

## Introduction

A Template Component packages HTML, substitution attributes, CSS, and accessibility semantics into one reusable APEX component. In this lab, you will create an **Onboarding Progress Bar** and place it beneath the ESS Home banner.

Estimated Lab Time: 3 minutes

### Where We Are

ESS Home now shows four live KPI cards. Employees also need a single progress indicator that answers two questions: what percentage of onboarding is complete, and how many tasks are complete?

### Objectives

In this lab, you will:

- Create a Single Partial Template Component plug-in.
- Define three custom component attributes.
- Add accessible HTML and component CSS.
- Register the CSS file so that APEX loads it at runtime.
- Add the component to ESS Home and map SQL columns to its attributes.

Use the Lab 4 snapshot, **15_04 : Employee Self-Service Portal** (App **157**), not the application used in Lab 3. Return to the App Builder application list, open this snapshot, and open **Home** in Page Designer before starting Task 1.

If this snapshot already contains **Onboarding Progress Bar**, open it under **Shared Components > Templates** and continue with Task 2 instead of creating a duplicate. Likewise, reuse the existing **Onboarding Progress** subregion in Task 4 if it is already present.

## Task 1: Create the Template Component

1. In Page Designer, click **Shared Components** in the top toolbar.

    ![Open Shared Components from Page Designer](images/lab4-00-open-shared-components.png " ")

2. Under **User Interface**, select **Templates**.

    ![Open Templates](images/lab4-01-open-templates.png " ")

3. Select **Create**.

    ![Create a template](images/lab4-02-create-template.png " ")

4. For **Template Type**, select **Template Component Plug-in**, and then click **Next**.

    ![Select Template Component Plug-in](images/lab4-03-select-template-component.png " ")

5. Keep everything as default and click **Next**.

6. For **Name**, enter `Onboarding Progress Bar`, and then click **Create**.

    ![Name the progress component](images/lab4-04-name-progress-component.png " ")

    APEX may display the stored Static ID as `THEME$ONBOARDING_PROGRESS_BAR`. The `THEME$` prefix is normal for a theme-level Template Component.

## Task 2: Add the Partial HTML and Custom Attributes

1. Navigate to **Templates tab**.

2. Under **Available as**, select **Single (Partial)**.

3. In **Partial**, enter the following HTML:

    ```html
    <copy>
    <div id="#APEX$DOM_ID#" class="onboarding-progress">
        <div class="onboarding-progress__header">
            <span>Onboarding Progress</span>
            <span>
                <strong>#COMPLETION_PCT#%</strong> complete
            </span>
        </div>

        <progress
            class="onboarding-progress__bar"
            value="#COMPLETION_PCT#"
            max="100"
            aria-label="Onboarding progress: #COMPLETION_PCT# percent complete">
            #COMPLETION_PCT#%
        </progress>

        <p class="onboarding-progress__summary">
            #DONE_COUNT# of #TOTAL_COUNT# tasks complete
        </p>
    </div>
    </copy>
    ```

    ![Enter the onboarding progress HTML](images/lab4-06-enter-progress-html.png " ")

    The double underscores in `onboarding-progress__header`, `onboarding-progress__bar`, and `onboarding-progress__summary` are intentional. They must match the CSS selectors exactly.

    Click **Apply Changes** to save the HTML before leaving the plug-in editor. Reopen **Onboarding Progress Bar** from the Templates report, and then continue below.

4. Select **Custom Attributes** and click **Add Attribute**.

    ![Select Custom Attributes and click Add Attribute](images/lab4-07-open-add-attribute.png " ")

5. For each row below, enter **Static ID** and **Label**, verify **Scope** is **Component** and **Type** is **Text**, and click **Create**. Return to **Custom Attributes > Add Attribute** for the next row. Keep the remaining settings at their defaults. If an attribute already exists, open and verify it instead of adding it again.

    | Static ID | Label |
    | --- | --- |
    | `COMPLETION_PCT` | Completion Pct |
    | `DONE_COUNT` | Done Count |
    | `TOTAL_COUNT` | Total Count |

    ![Add the three custom attributes](images/lab4-07-add-custom-attributes.png " ")

    If the HTML has already been entered, you can select **Synchronize from Templates** and then verify the generated Static IDs, labels, and scope.

6. Click **Apply Changes** to save the plug-in. Reopen **Onboarding Progress Bar** from the Templates report before continuing with Task 3.

## Task 3: Create and Register the CSS File

1. Select **Files**, and then select **Create File**. If **onboarding-progress.css** already exists, click its file name and continue with step 3.

    ![Select Files and Create File](images/lab4-08-open-create-file.png " ")

2. For **File Name**, enter `onboarding-progress.css`, leave **Content** empty to create a blank file, and click **Create**. Back in the plug-in's **Files** list, click the file name **onboarding-progress.css** to open its editor. If the file already exists, open it directly instead of creating a duplicate.

    ![Name the CSS file and click Create](images/lab4-08-name-create-css-file.png " ")

3. In **Source**, enter the following CSS and click **Save Changes**:

    ```css
    .onboarding-progress {
        margin-block: 0.75rem;
    }

    .onboarding-progress__header {
        display: flex;
        justify-content: space-between;
        gap: 1rem;
        margin-block-end: 0.375rem;
        font-size: 0.875rem;
    }

    .onboarding-progress__bar {
        display: block;
        width: 100%;
        height: 0.75rem;
        accent-color: var(--ut-palette-success);
    }

    .onboarding-progress__summary {
        margin-block-start: 0.375rem;
        margin-block-end: 0;
        color: var(--ut-component-text-muted-color);
        font-size: 0.75rem;
    }
    ```

    ![Create the progress CSS file](images/lab4-08-create-progress-css.png " ")

    You can also copy the stylesheet from [onboarding-progress.css](files/onboarding-progress.css).

4. Navigate to **File URLs to Load**.

5. In **Cascading Style Sheet**, enter:

    ```text
    <copy>
    #PLUGIN_FILES#onboarding-progress#MIN#.css
    </copy>
    ```

    Creating a plug-in file does not by itself guarantee that the browser loads it. This URL tells APEX to load the normal or minified file, depending on the application's debug mode. Verify that the Files list contains both `onboarding-progress.css` and `onboarding-progress.min.css` after saving. If no minified file is present, use `#PLUGIN_FILES#onboarding-progress.css` instead so that the stylesheet loads in both debug and normal runtime.

6. Select **Apply Changes**.

## Task 4: Add the Component to ESS Home

1. Click **Edit Page 1**.

2. In the Rendering tree, right-click **Employee Self-Service Portal** breadcrumb and select **Create Sub Region**.

    ![Create a subregion under Employee Self-Service Portal](images/lab4-09-create-sub-region.png " ")

3. Configure the new region:

    - **Name**: `Onboarding Progress`
    - **Type**: `Onboarding Progress Bar`

4. Under **Source**, set **Type** to **SQL Query** and enter:

    ```sql
    <copy>
    SELECT
        COUNT(*) AS total_count,
        NVL(
            SUM(
                CASE
                    WHEN t.status = 'Completed' THEN 1
                    ELSE 0
                END
            ),
            0
        ) AS done_count,
        CASE
            WHEN COUNT(*) = 0 THEN 0
            ELSE ROUND(
                SUM(
                    CASE
                        WHEN t.status = 'Completed' THEN 1
                        ELSE 0
                    END
                ) * 100 / COUNT(*)
            )
        END AS completion_pct
    FROM tms_onboarding_tasks t
    JOIN tms_employees e
      ON e.employee_id = t.employee_id
    WHERE UPPER(e.email) = UPPER(:APP_USER)
    </copy>
    ```

    ![Enter the progress SQL](images/lab4-11-enter-progress-sql.png " ")

    `NVL` makes the completed count display as zero when the employee has no tasks.

5. Select the **Attributes** tab and map the following:

    | Template Attribute | SQL Column |
    | --- | --- |
    | Completion Pct | `&COMPLETION_PCT.` |
    | Done Count | `&DONE_COUNT.` |
    | Total Count | `&TOTAL_COUNT.` |

    ![Map the progress attributes](images/lab4-12-map-progress-attributes.png " ")

6. Save and run the page.

7. Verify that the component shows:

    - **Onboarding Progress** as visible text.
    - A percentage followed by **complete**.
    - A progress bar whose fill matches the percentage.
    - A summary in the form `n of n tasks complete`.

    If the text appears but the bar is not full width, confirm that the HTML class names use double underscores and that the CSS file is listed under **File URLs to Load**.

    With no matching employee tasks, the expected result is **0% complete** and **0 of 0 tasks complete**. To validate a populated result, use the assigned employee account with onboarding tasks; do not treat an empty-data result as proof that employee-specific counts are correct.

## Task 5: Check Accessibility

1. Inspect the rendered progress element with your browser's accessibility tools or a screen reader.

2. Confirm that its accessible name follows this pattern:

    ```text
    Onboarding progress: 50 percent complete
    ```

3. Switch between ESS Light and ESS Dark. Confirm that the visible percentage and task summary remain readable in both styles.

4. Do not remove the percentage or text summary. The bar's color and fill level must not be the only way the user receives progress information.

## Summary

You created a reusable, accessible Onboarding Progress Template Component, loaded its CSS correctly, and mapped live ESS data to its custom attributes.

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, August 2026
