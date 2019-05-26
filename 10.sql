use theatre;
Select p.Genre, avg(s.Cost)
From `Perfomances` as p
left join `Schedules` as s
on s.`Perfomances_idPerfomance`=p.`idPerfomance`
where(s.isRepetision = 0)
group by p.Genre
