select 
case
    when gr.grade < 8 then "NULL"
    else a.name
end as name, gr.grade, a.marks
from students as a
inner join grades as gr 
on a.marks >= gr.min_mark and a.marks <= gr.max_mark
order by gr.grade desc,
    case 
            when gr.grade < 8 then a.marks
            else name
    end;
