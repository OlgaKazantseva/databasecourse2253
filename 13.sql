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
