SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    job.JOB_TITLE AS Cargo,
    hist.START_DATE AS `Data de início do cargo`,
    dep.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS hist ON emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS job ON job.JOB_ID = hist.JOB_ID
        INNER JOIN
    hr.departments AS dep ON dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , Cargo;
