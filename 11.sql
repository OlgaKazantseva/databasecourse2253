--11.1 Сколько раз актер участвовал в репетиции
use theatre;
select s.Name,count(*)
from Perfomances as p
right join Schedules as sc
on p.idPerfomance=sc.Perfomances_idPerfomance
right join S_S as ss
on sc.`idSchedule`=ss.`Schedules_idSchedule`
right join Staff as s
on s.`idStaff`=ss.`Staff_idStaff`
where(sc.isRepetision=1)
group by s.idStaff
;
--
