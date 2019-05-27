
--12.1
/*Сменить человека на выбраном выступлении*/
UPDATE S_S
set `Staff_idStaff`=3
where  (role like "%Свет%" and S_S.idS_S=3);
--12.2
/*изменить стоимость самого дешевого спектакля*/
update `Schedules`
set Cost = 1000
where(`idSchedule` in( select t1.`idSchedule` from
(select sc.`idSchedule`,sc.Start,sc.Cost
from Perfomances as p
right join `Schedules` as sc
on sc.`Perfomances_idPerfomance`=p.`idPerfomance`
order by sc.Cost desc
limit 1) as t1));
                      --12.3
                      /*поменять должность человека, который нигде не участвовал*/
UPDATE Staff
set `Position` = 'разнорабочий'
where(Name in (select t1.Name from(select s.Name,count(ss.idS_S)
from Staff as s
left join S_S as ss
on s.idStaff=ss.Staff_idStaff
group by s.Name) as t1))
;
