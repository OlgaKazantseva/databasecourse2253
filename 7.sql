use theatre;
Select s.Name,sc.Start,sc.End
from Staff as s
left join S_S as ss
on s.idStaff=ss.`Staff_idStaff`
left join `Schedules` as sc
on ss.`Schedules_idSchedule`=sc.`idSchedule`
where s.idStaff=2 and sc.Start<=DATE_ADD(now() , INTERVAL 7 DAY)
;
