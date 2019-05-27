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
--11.2
/*вывести самый дорогой спектакль*/
select p.Name,sc.Start,sc.Cost
from Perfomances as p
right join `Schedules` as sc
on sc.`Perfomances_idPerfomance`=p.`idPerfomance`
order by sc.Cost desc
limit 1;
--11.3
/*вывести самый чатоиспользуемый предмет*/
select i.Name,count(i.`idItem`) as c
from Items as i
right join P_I as pi
on pi.`Items_idItem`=i.`idItem`
left join Perfomances as p
on p.idPerfomance=pi.Perfomances_idPerfomance
group by i.Name
having(c = (
select max(t1.c1) from 
(
select q.Name,count(q.`idItem`) as c1
from Items as q
right join P_I as pq
on pq.`Items_idItem`=q.`idItem`
left join Perfomances as p1
on p1.idPerfomance=pq.Perfomances_idPerfomance
group by q.Name
)t1))
;
 --11.4
/*вывести 3 ближайших выступления с конкретным актером*/
select p.Name,sch.Start
from Perfomances as p
right join Schedules as sch
on sch.`Perfomances_idPerfomance`=p.`idPerfomance`
right join S_S as ss
on ss.`Schedules_idSchedule`=sch.`idSchedule`
Where (ss.Staff_idStaff=1)
order by sch.Start
limit 3;
;
