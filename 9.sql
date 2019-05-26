use theatre;
Select i.Name,count(*)
from Items as i
inner join P_I as pi
on pi.`Items_idItem`=i.idItem
inner join `Perfomances` as p
on pi.`Perfomances_idPerfomance`=p.`idPerfomance`
inner join `Schedules` as s
on s.`Perfomances_idPerfomance`= p.`idPerfomance`
where(s.Start <= DATE_ADD(now() , INTERVAL 1 month))
group by i.Name
;
