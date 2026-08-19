SELECT
    COUNT(*) AS value,
    'Tasks Pending' AS label,
    'Open onboarding tasks' AS description,
    'fa-tasks' AS icon,
    NULL AS badge
FROM tms_onboarding_tasks
WHERE employee_id = (
          SELECT employee_id
          FROM tms_employees
          WHERE UPPER(email) = UPPER(:APP_USER)
      )
  AND status NOT IN ('Completed', 'Cancelled')

UNION ALL

SELECT
    COUNT(*) AS value,
    'HR Documents Completed' AS label,
    'Completed HR document tasks' AS description,
    'fa-file-check' AS icon,
    NULL AS badge
FROM tms_onboarding_tasks
WHERE employee_id = (
          SELECT employee_id
          FROM tms_employees
          WHERE UPPER(email) = UPPER(:APP_USER)
      )
  AND status = 'Completed'
  AND category = 'HR Documents'

UNION ALL

SELECT
    NVL(
        (
            SELECT GREATEST(
                       0,
                       TRUNC(hire_date) - TRUNC(SYSDATE)
                   )
            FROM tms_employees
            WHERE UPPER(email) = UPPER(:APP_USER)
        ),
        0
    ) AS value,
    'Days Until Start' AS label,
    'Days remaining before hire date' AS description,
    'fa-calendar' AS icon,
    NULL AS badge
FROM dual

UNION ALL

SELECT
    NVL(
        (
            SELECT MAX(remaining)
            FROM tms_leave_balances
            WHERE employee_id = (
                      SELECT employee_id
                      FROM tms_employees
                      WHERE UPPER(email) = UPPER(:APP_USER)
                  )
              AND leave_type_id = 1
              AND year = EXTRACT(YEAR FROM SYSDATE)
        ),
        0
    ) AS value,
    'Leave Days Available' AS label,
    'Current annual leave balance' AS description,
    'fa-umbrella' AS icon,
    NULL AS badge
FROM dual;
