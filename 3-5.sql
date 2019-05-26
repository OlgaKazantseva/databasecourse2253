--3
use theatre;
Select * from Items
where idItem =1
;
Select * from Perfomances
where idPerfomance =1
;
Select * from Staff
where idStaff =1
;

Select * from Schedules
where idSchedule =1
;

Select * from S_S
where idS_S =1
;
Select * from P_I
where idP_I =1
;
--4
use theatre;
UPDATE Items
set Name="Горшок",Decscription="Мертв"
where idItem =1
;
UPDATE Perfomances
set Name="Игра престолов"
where idPerfomance =1
;
UPDATE Staff
set Name="Хозяин"
where idStaff=1
;

UPDATE Schedules
set Start="1910141300"
where idSchedule =1
;

UPDATE S_S
set Schedules_idSchedule=4
where idS_S =1
;
UPDATE P_I
set Items_idItem=5
where idP_I =1
;
--5
use theatre;
DELETE FROM Items
where idItem =1
;
DELETE FROM Perfomances
where idPerfomance =1
;
DELETE FROM Staff
where idStaff=1
;

DELETE FROM Schedules
where idSchedule =1
;

DELETE FROM S_S
where idS_S =1
;
DELETE FROM P_I
where idP_I =1
;
