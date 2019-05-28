
CREATE PROCEDURE doiterate() 
BEGIN 
declare p1 INT; 
declare size INT; 
create temporary table ttable (genre varchar(45),start1 timestamp(10), counter int); 
set p1 = 1; 
set size = (select count(distinct genre) from `Perfomances`); 
create temporary table genreids(genre varchar(45));
insert into genreids(genre) select distinct pp.Genre
from Perfomance as pp;
create index idg
on genreids(genre);
WHILE p1 <= size DO 
insert into ttable select p.Genre as g,sc1.Start as s1, Count(S_S.`idStaff`) as c
from `Perfomances` as p
right join `Schedules` as s1
on p.idPerfomance=s1.`Perfomances_idPerfomance`
right join S_S
on S_S.`Schedules_idSchedule`=s1.idSchedule
where(p.Genre = (select genre from genreids where (genreids.idg=p1))) 
group by p.Genre,sc1.Start
order by c desc
limit 3; 
SET p1 = p1 + 1; 
END WHILE;
SELECT 
    *
FROM
    ttable; 
END;
