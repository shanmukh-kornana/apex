# Brand ESS with Theme Roller

## Introduction

Oracle APEX Theme Roller lets you change Universal Theme variables while the application is running. You can preview a palette immediately, save the result as a named theme style, and make more than one style available to end users.

In this lab, you will create a teal and green **ESS Light** style, create **ESS Dark** from the Vita Dark base, and allow employees to choose their preferred style.

Estimated Lab Time: 4 minutes

### Where We Are

ESS is functionally complete enough for employees to navigate, but it still uses the starter Universal Theme appearance. It needs a warmer identity that is visually distinct from the recruiter-facing TAP application.

### Objectives

In this lab, you will:

- Open Theme Roller from a running ESS application.
- Create and save the **ESS Light** style.
- Create and save the **ESS Dark** style.
- Enable the end-user theme-style selector.
- Switch the running application to ESS Dark.

## Task 1: Run ESS and Open Theme Roller

1. Sign in to your Oracle APEX workspace.

2. Select **App Builder**, and then open **15_01: Employee Self-Service Portal** (**App 153**).

3. On the application home page, select **Run Application**.

    ![Run the ESS application](images/lab1-01-run-application.png " ")

4. If a login page appears, sign in with the ESS credentials supplied in your workshop environment.

5. On the Developer Toolbar at the bottom of the application, select **Customize**.

    ![Open the Customize menu](images/lab1-02-open-theme-roller.png " ")

6. Select **Theme Roller**.

    ![Select Theme Roller](images/lab1-03-select-theme-roller.png " ")

Theme Roller opens on the right side of the page. Keep the application visible while you work so that you can see each style change.

## Task 2: Create the ESS Light Style

1. In Theme Roller, expand **Palette**.

    ![Open Palette settings](images/lab1-04-open-palette.png " ")

2. Expand **Appearance** if it is collapsed.

3. For **Pillar**, select **Teal**. Observe that the page header, navigation, buttons, and components update together.

    ![Select the Teal pillar](images/lab1-05-select-teal-pillar.png " ")

4. For **Pillar**, now select **Custom**. The **Accent** color control appears.

    This second choice keeps the teal-based preview as your starting point while allowing you to enter the exact ESS accent color.

5. For **Accent**, select the color swatch.

    ![Open the Accent color picker](images/lab1-06-open-accent-color-picker.png " ")

6. In **Hex**, enter `10b981`. A leading `#` is not required in the APEX color picker.

    ![Set the ESS accent color](images/lab1-07-set-accent-10b981.png " ")

7. Click outside the color picker to close it. Review the application preview.

    > **Note:** APEX 26.1 applies Theme Roller changes immediately. Some earlier versions display a **Refresh** button; if your version displays it, select **Refresh** before continuing.

8. At the bottom of Theme Roller, select **Save As**.

    ![Save the new light style](images/lab1-08-save-as-ess-light.png " ")

9. For **Style Name**, enter `ESS Light`, and then select **Save**.

    ![Name the ESS Light style](images/lab1-09-name-ess-light.png " ")

    If `ESS Light` already exists in a shared reference environment, do not create a duplicate. Select the existing style or use a temporary unique name supplied by your instructor.

## Task 3: Create the ESS Dark Style

1. In the **Theme** section, open **Select Theme**, and select **Vita - Dark**.

    ![Select Vita Dark](images/lab1-10-select-vita-dark.png " ")

2. If APEX warns that unsaved customizations will be lost, confirm only after you have saved ESS Light.

3. Select **Save As**.

4. For **Style Name**, enter `ESS Dark`, and then select **Save**.

    ![Name the ESS Dark style](images/lab1-11-name-ess-dark.png " ")

5. Close Theme Roller.

At this point, the application contains two named styles. **ESS Light** remains the application default; **ESS Dark** is available as a user preference.

## Task 4: Let Employees Choose a Theme Style

1. Return to App Builder and open the ESS application home page.

2. Select **Shared Components**.

    ![Open Shared Components](images/lab1-12-open-shared-components.png " ")

3. In **User Interface**, select **User Interface Attributes**.

    ![Open User Interface Attributes](images/lab1-13-open-user-interface-attributes.png " ")

4. Select the **Attributes** tab.

5. Set **Enable End Users to choose Theme Style** to **On**.

    ![Enable end-user theme choice](images/lab1-14-enable-theme-choice.png " ")

6. Verify that **Theme Style** is `ESS Light`. This keeps the light style as the default for users who have not chosen a preference.

7. Select **Apply Changes**.

## Task 5: Test the End-User Theme Choice

1. Run ESS again.

2. Scroll to the application footer, and select **Customize**. This footer link is the end-user style chooser; it is different from **Customize > Theme Roller** on the Developer Toolbar.

    ![Open the end-user Customize dialog](images/lab1-15-open-end-user-customize.png " ")

3. In the **Customize** dialog, select **ESS Dark**.

    ![Choose ESS Dark](images/lab1-16-choose-ess-dark.png " ")

4. Select **Apply Changes**.

    ![Apply ESS Dark](images/lab1-17-apply-ess-dark.png " ")

5. Confirm that the page changes to the dark style and remains usable.

    ![ESS Dark result](images/lab1-18-ess-dark-result.png " ")

6. Open **Customize** once more and return to **Use Application Default Style** or **ESS Light** before the next lab.

## Summary

You created ESS Light and ESS Dark, made the light style the application default, and enabled employees to select a theme preference at runtime.

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, August 2026
