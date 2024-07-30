select 
    n,
    case
        when p is null then "Root"
        when p is not null and n in (select p from BST) then "Inner"
        else "Leaf"
    end as text
from BST
order by n;