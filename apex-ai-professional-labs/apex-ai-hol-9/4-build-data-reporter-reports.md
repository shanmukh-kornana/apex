# Create Data Reporter Users and Build Reports in Data Reporter

## Introduction

The Data Reporter users are ready. In this lab, you will return to the HR Analytics App and create four reports from the governed dataset.

The curriculum title retains “Create Data Reporter Users,” but the named users were created at the correct scopes in Lab 3. The remaining work in this lab is report construction.

Estimated Lab Time: 20 minutes

### Where We Are

HAA has a dataset, a reporting application, and role-based users. It does not yet have the reports required by HR.

### Objectives

In this lab, you will:

- Create two Interactive Reports and two Faceted Search reports.
- Configure recruitment and leave group-by summaries.
- Configure a bar chart and a pie chart.
- Save the Interactive Report settings as the Primary Default.

## Task 1: Open the Report Builder

1. On the Data Reporter home page, open **HR Analytics App**.

2. Before creating the Interactive Reports, select **Edit Reporting Application Definition**. Under **Generative AI**, select the workshop's configured **AI Service**, and select **Apply Changes**. If no service is available, ask your instructor to complete the prerequisite AI setup. A service configured only in the workspace does not enable AI-assisted search in this reporting application.

3. Select **Create Report**.

    ![Create a report](images/16-create-report.png " ")

The completed application will contain four published reports.

![Review the target report catalog](images/15-four-published-reports.png " ")

## Task 2: Create Recruitment Pipeline Analytics

This report gives HR leadership insight into the recruitment pipeline. With an AI Service selected for the reporting application in Task 1, new Interactive Reports support AI-assisted search.

1. In **Create a Report**:

    - For **Name**, enter `Recruitment Pipeline Analytics`.
    - Select **Interactive Report**.
    - Select **Next**.

    ![Select Interactive Report](images/21-select-interactive-report.png " ")

2. In **Select Report Source**:

    - Keep **Table or View** selected.
    - Verify that **HR Analytics App Dataset** is selected.
    - Select `V_CANDIDATE_PIPELINE`.
    - Select **Create Report**.

    ![Select the candidate pipeline view](images/22-select-candidate-pipeline-source.png " ")

3. On the report details page, open **Actions**, select **Edit Details**, and set **Description** to:

    `Give HR leadership insights into the recruitment pipeline.`

4. Select **Apply Changes**, and then open **Run** in a separate browser tab. Keep the report builder tab open for the remaining report-creation tasks.

5. If prompted, sign in as `DR_EDITOR` using the password supplied in your workshop environment. If a different account is already signed in, sign out of the runtime application and sign in as `DR_EDITOR`. Confirm the runtime account before configuring the report.

    ![Sign in as DR_EDITOR](images/30-sign-in-as-dr-editor.png " ")

### Configure the Stage Summary

6. Select **Actions**, and then select **Group By**.

    ![Open the Group By action](images/33-open-group-by-action.png " ")

7. In **Group By**:

    - For **Group By Column 1**, select **Current Stage**.
    - For **Function 1**, select **Count**.
    - For **Column 1**, select **Candidate ID**.
    - Select **Apply**.

    ![Configure the recruitment group-by summary](images/34-configure-recruitment-group-by.png " ")

8. Confirm that the Group By view shows one row per recruitment stage and a candidate count.

    ![Review candidates grouped by stage](images/32-recruitment-group-by-stage.png " ")

### Configure the Average Days-in-Pipeline Chart

9. Select **Actions**, select **Chart**, and configure:

    - **Chart Type**: Bar
    - **Label**: Department
    - **Value**: Days in Pipeline
    - **Function**: Average
    - **Axis Title for Value**: `Average Days in Pipeline`

10. Select **Apply**.

11. Confirm that the Chart view displays average days in the pipeline by department. This measures days since application across all candidate stages; it does not measure time to hire.

### Save the Primary Default

12. Select **Actions**, select **Report**, and then select **Save Report**.

13. For **Save**, select **As Default Report Settings**.

14. In **Save Default Report**, select **Primary**, and then select **Apply**.

## Task 3: Create Candidate Search and Shortlisting

1. Return to the HR Analytics App report builder and select **Create Report**.

2. In **Create a Report**:

    - For **Name**, enter `Candidate Search & Shortlisting`.
    - Select **Faceted Search with Table**.
    - Select **Next**.

    ![Select Faceted Search with Table](images/23-select-faceted-table.png " ")

3. Select `V_CANDIDATE_PIPELINE`, and then select **Create Report**.

4. On the report details page, open **Actions**, select **Edit Details**, and set **Description** to:

    `Find candidates by job title, department, and application status easily.`

5. Select **Apply Changes** to save the description. Under **Facets and Columns**, select **Edit** for each of the following columns, enable **Display**, and select **Apply Changes** after each edit:

    - Candidate Name
    - Job Title
    - Department
    - Current Stage; change the label to `Stage` if required by your workshop
    - Source
    - Applied Date
    - Days in Pipeline

6. Under **Facets and Columns**, edit **Candidate ID** and **Requisition ID** in turn. Disable **Display** and select **Apply Changes** for each. Keep the identifiers displayed only if your instructor requires them.

7. Under **Facets and Columns**, edit **Current Stage**, **Source**, **Applied Date**, **Job Title**, and **Department** in turn. Enable **Enable Facet** and choose **Inline** for **Facet Display**. Select **Apply Changes** after each edit.

8. Select **Run**. Confirm that the selected columns are displayed, the technical identifiers are hidden unless required by your instructor, and selecting a facet filters the candidate table.

    ![Review Candidate Search and Shortlisting](images/38-candidate-search-report.png " ")

## Task 4: Create the Employee Directory

The Module 9 design calls this report **Employee Directory**. The completed reference application publishes the same configuration as **Headcount by Department**. Use `Headcount by Department` to match the reference screenshots; use `Employee Directory` only if your instructor requires that title.

1. Return to the HR Analytics App report builder and select **Create Report**.

2. In **Create a Report**:

    - For **Name**, enter `Headcount by Department`.
    - Select **Faceted Search with List**.
    - Select **Next**.

    ![Select Faceted Search with List](images/24-select-faceted-list.png " ")

3. Select `V_EMPLOYEES_SUMMARY`, and then select **Next**.

    ![Select the employee summary view](images/25-select-employee-summary-source.png " ")

4. In **Configure Display Options and Facets**, configure:

    - **Title**: Employee Name
    - **Description**: Job Title
    - **Overline**: Department
    - **Miscellaneous**: Status
    - **Order By Column**: Hire Date

5. Select these facets:

    - Department
    - Job Title
    - Status; use the label `Employment Status`
    - Hire Date

6. Verify that Employee Name, Job Title, Department, Hire Date, and Status are displayed, and then select **Create Report**.

    ![Configure employee list display and facets](images/26-configure-headcount-display.png " ")

7. On the report details page, open **Actions**, select **Edit Details**, set **Description** to the following text, and select **Apply Changes**:

    `Displays employee distribution by department for easy analysis.`

8. Select **Run**. Confirm that the list shows employee name, job title, department, and status.

    ![Review the headcount employee list](images/39-headcount-list-report.png " ")

## Task 5: Create Leave Management Analytics

This report provides HR with insight into employee leave requests and utilization.

1. Return to the HR Analytics App report builder and select **Create Report**.

2. In **Create a Report**:

    - For **Name**, enter `Leave Management Analytics`.
    - Select **Interactive Report**.
    - Select **Next**.

    ![Create the leave interactive report](images/27-select-leave-interactive-report.png " ")

3. Select `V_LEAVE_SUMMARY`, and then select **Create Report**.

    ![Select the leave summary view](images/28-select-leave-summary-source.png " ")

4. On the report details page, open **Actions**, select **Edit Details**, set **Description** to the following text, and select **Apply Changes**:

    `Provide HR with insights into employee leave requests and utilization.`

5. Select **Run** and sign in as `DR_EDITOR` or `DR_ADMIN` if prompted. Verify the runtime account before configuring the summaries.

### Configure the Leave-Type Summary

6. Select **Actions**, and then select **Group By**.

7. In **Group By**:

    - For **Group By Column 1**, select **Leave Type**.
    - For **Function 1**, select **Count**.
    - For **Column 1**, select **Request ID**.
    - Select **Apply**.

    ![Configure the leave group-by summary](images/43-configure-leave-group-by.png " ")

8. Confirm that the Group By view shows the number of requests for each leave type.

    ![Review leave requests grouped by type](images/42-leave-type-group-by.png " ")

### Configure the Leave-Type Pie Chart

9. Select **Actions**, select **Chart**, and configure:

    - **Chart Type**: Pie
    - **Label**: Leave Type
    - **Value**: Request ID
    - **Function**: Count

    The combination of **Request ID** and **Count** represents the Module 9 requirement, **Count of Leave Requests**.

10. Select **Apply**.

    ![Configure the leave pie chart](images/41-configure-leave-pie-chart.png " ")

11. Confirm that the Chart view displays leave-request counts by leave type.

    ![Review the leave-type pie chart](images/40-leave-type-pie-chart.png " ")

12. Save the current report settings as the **Primary** default:

    - Select **Actions**.
    - Select **Report**, and then select **Save Report**.
    - For **Save**, select **As Default Report Settings**.
    - Select **Primary**, and then select **Apply**.

## Task 6: Verify the Four Reports

1. Return to the HR Analytics App report builder.

2. Confirm that the application contains:

    - Recruitment Pipeline Analytics
    - Candidate Search & Shortlisting
    - Headcount by Department, implementing the Employee Directory design
    - Leave Management Analytics

3. Confirm that each report uses the expected source view and type.

    | Report | Type | Source |
    | --- | --- | --- |
    | Recruitment Pipeline Analytics | Interactive Report | `V_CANDIDATE_PIPELINE` |
    | Candidate Search & Shortlisting | Faceted Search with Table | `V_CANDIDATE_PIPELINE` |
    | Headcount by Department / Employee Directory | Faceted Search with List | `V_EMPLOYEES_SUMMARY` |
    | Leave Management Analytics | Interactive Report | `V_LEAVE_SUMMARY` |

## Summary

You created four HR reports, configured the recruitment and leave summaries, and saved the Interactive Report settings as Primary Defaults.

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, July 2026
