SELECT COUNT(*) AS value,
       'Active Requisitions' AS label,
       'Open job requisitions' AS description,
       'fa-briefcase' AS icon
FROM tms_job_requisitions
WHERE status = 'Open'

UNION ALL

SELECT COUNT(*) AS value,
       'Candidates This Week' AS label,
       'Applications received this week' AS description,
       'fa-users' AS icon
FROM tms_candidates
WHERE applied_date >= TRUNC(SYSDATE, 'IW')

UNION ALL

SELECT COUNT(*) AS value,
       'Interviews Today' AS label,
       'Interviews scheduled today' AS description,
       'fa-calendar' AS icon
FROM tms_interview_stages
WHERE TRUNC(scheduled_date) = TRUNC(SYSDATE)

UNION ALL

SELECT COUNT(*) AS value,
       'Offers Pending' AS label,
       'Offers awaiting approval' AS description,
       'fa-envelope' AS icon
FROM tms_offers
WHERE status = 'Pending Approval';
