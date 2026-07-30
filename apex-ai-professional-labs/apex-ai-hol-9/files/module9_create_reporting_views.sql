CREATE OR REPLACE VIEW v_candidate_pipeline AS
SELECT c.candidate_id,
       c.req_id,
       c.first_name || ' ' || c.last_name AS candidate_name,
       c.current_stage,
       c.source,
       c.applied_date,
       j.title AS job_title,
       d.name AS department,
       TRUNC(SYSDATE - c.applied_date) AS days_in_pipeline
  FROM tms_candidates c
  JOIN tms_job_requisitions r
    ON c.req_id = r.req_id
  JOIN tms_jobs j
    ON r.job_id = j.job_id
  JOIN tms_departments d
    ON r.dept_id = d.dept_id;

CREATE OR REPLACE VIEW v_employees_summary AS
SELECT e.employee_id,
       e.candidate_id,
       e.first_name || ' ' || e.last_name AS employee_name,
       e.email,
       j.title AS job_title,
       d.name AS department,
       e.manager_id,
       e.salary,
       e.hire_date,
       e.status,
       TRUNC(SYSDATE - e.hire_date) AS days_employed,
       e.created_by,
       e.created_at,
       e.updated_by,
       e.updated_at
  FROM tms_employees e
  LEFT JOIN tms_jobs j
    ON e.job_id = j.job_id
  LEFT JOIN tms_departments d
    ON e.dept_id = d.dept_id;

CREATE OR REPLACE VIEW v_leave_summary AS
SELECT lr.request_id,
       lr.employee_id,
       e.first_name || ' ' || e.last_name AS employee_name,
       e.email,
       lt.name AS leave_type,
       lr.start_date,
       lr.end_date,
       lr.days_requested,
       lr.reason,
       lr.status,
       lr.approver_id,
       lr.created_by,
       lr.created_at,
       lr.updated_by,
       lr.updated_at
  FROM tms_leave_requests lr
  LEFT JOIN tms_employees e
    ON lr.employee_id = e.employee_id
  LEFT JOIN tms_leave_types lt
    ON lr.leave_type_id = lt.leave_type_id;

SELECT object_name, status
  FROM user_objects
 WHERE object_type = 'VIEW'
   AND object_name IN (
         'V_CANDIDATE_PIPELINE',
         'V_EMPLOYEES_SUMMARY',
         'V_LEAVE_SUMMARY'
       )
 ORDER BY object_name;
