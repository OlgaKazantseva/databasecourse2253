--13.1
/*удалить расписание на  прошлый месяц*/
delete from Schedules
where (Start < dateadd(month, datediff(month, -1, now()) - 1, -1)) and `isRepetision`=0;
--13.2
/*удалить самые дешевые выступления*/
DELETE FROM Schedules
where (Cost =
(
	select cs.c from(select min(s.Cost)as c from Schedules as s limit 1) as cs
));
--13.3
	--удалить самый чатоиспользуемый предмет
Delete from Items
where(Name in (
select tk1.Name from(
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
)t1))) as tk1
))
