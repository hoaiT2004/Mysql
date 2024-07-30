select
    c.company_code,
    c.founder,
    -- The tables may contain duplicate records. So we need to add distinct method
    count(distinct l.lead_manager_code),
    count(distinct s.senior_manager_code),
    count(distinct m.manager_code),
    count(distinct e.employee_code)
from company as c
inner join lead_manager as l on l.company_code = c.company_code
inner join senior_manager as s on s.lead_manager_code = l.lead_manager_code
inner join manager as m on m.senior_manager_code = s.senior_manager_code
inner join employee as e on m.manager_code = e.manager_code
group by c.company_code,c.founder
order by c.company_code;
    