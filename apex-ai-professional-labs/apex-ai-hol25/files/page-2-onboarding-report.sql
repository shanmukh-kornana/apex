-- Approved report-source repair used in application 301, page 2.
-- The course task table has no audit columns. Typed NULL aliases preserve
-- the existing report-column metadata without inventing audit values.
SELECT t.*,
       CAST(NULL AS VARCHAR2(255)) AS created_by,
       CAST(NULL AS TIMESTAMP WITH LOCAL TIME ZONE) AS created_at,
       CAST(NULL AS VARCHAR2(255)) AS updated_by,
       CAST(NULL AS TIMESTAMP WITH LOCAL TIME ZONE) AS updated_at,
       CASE
         WHEN UPPER(t.status) IN ('DONE', 'COMPLETED') THEN 'success'
         WHEN UPPER(t.status) = 'BLOCKED' THEN 'danger'
         WHEN t.due_date < TRUNC(SYSDATE)
          AND UPPER(t.status) NOT IN ('DONE', 'COMPLETED') THEN 'warning'
         ELSE 'info'
       END AS status_state
  FROM tms_onboarding_tasks t
  JOIN tms_employees e ON e.employee_id = t.employee_id
 WHERE e.email = LOWER(:APP_USER)
