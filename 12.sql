
--12.1
/*Сменить человека на выбраном выступлении*/
UPDATE S_S
set `Staff_idStaff`=3
where  (role like "%Свет%" and S_S.idS_S=3);
