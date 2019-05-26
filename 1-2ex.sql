--1.1

INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('1', 'Казанцева', 'Ольга', 'Андреевна', '4167876', 'Директор', 'бабаба', '09896788', '89192736678');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('2', 'Бибаев', 'Георгий', 'Александрович', '6757878', 'Актер', 'бубубу', '78909739', '89913746663');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('3', 'Князева', 'Дарья', 'Андреевна', '7567898', 'Актер', 'бфбфбф', '89796987', '89716276257');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('4', 'Васильченко', 'Антон', 'Владимирович', '8698745', 'Администратор', 'быбыбы', '94536678', '89483767287');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('5', 'Бобиков', 'Станислав', 'Сергеевич', '0642313', 'Свет', 'блблбл', '09182338', '89346216567');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('6', 'Гвоздарева', 'Ирина', 'Андреевна', '8977647', 'Актер', 'бобобо', '78685689', '89564563563');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('7', 'Петров', 'Александр', 'Угович', '8757568', 'Актер', 'бебебе', '98674545', '89456452711');
INSERT INTO `theatre`.`Staff` (`idStaff`, `Surname`, `Name`, `Middlename`, `Passport`, `Position`, `Adress`, `Home_phone`, `Mobile_phone`) VALUES ('8', 'Аджи-Асан', 'Аким', 'Диляверович', '8665765', 'Постановщик', 'брбрбр', '56464756', '89554354567');

--1.2
INSERT INTO `theatre`.`Perfomances` (`idPerfomance`, `Name`, `Author`, `Year`, `Genre`, `Num_acts`, `Description`) VALUES ('1', 'Стриптиз-шоу', 'Директор', '2019', 'Стриптиз', '2', 'фырфырфыр');
INSERT INTO `theatre`.`Perfomances` (`idPerfomance`, `Name`, `Author`, `Year`, `Genre`, `Num_acts`, `Description`) VALUES ('2', 'Вишневый сад', 'Чехов', '1899', 'Драма', '3', 'пипипи');
INSERT INTO `theatre`.`Perfomances` (`idPerfomance`, `Name`, `Author`, `Year`, `Genre`, `Num_acts`, `Description`) VALUES ('3', 'Пожирание собаки', 'Директор', '2017', 'Драма', '1', 'гавгавгав');
INSERT INTO `theatre`.`Perfomances` (`Name`, `Author`, `Year`, `Genre`, `Num_acts`, `Description`) VALUES ('Нолог', 'Пыня', '1999', 'Жесткое порево', '99', 'Развод на деньги');

--1.3
INSERT INTO `theatre`.`Items` (`Name`, `Description`) VALUES ('Веревка', 'Розовый');
INSERT INTO `theatre`.`Items` (`Name`, `Description`) VALUES ('Кляп', 'Кожаный');
INSERT INTO `theatre`.`Items` (`Name`, `Description`) VALUES ('Вишня', 'Садовая');
INSERT INTO `theatre`.`Items` (`Name`, `Description`) VALUES ('Кресло', 'Дубовое');
INSERT INTO `theatre`.`Items` (`Name`, `Description`) VALUES ('Нож', 'Кухонный');

--1.4
INSERT INTO `theatre`.`Schedules` (`idSchedule`, `Start`, `End`, `isRepetision`, `Perfomances_idPerfomance`) VALUES ('1', '1910141340', '1910141540', '1', '2');
INSERT INTO `theatre`.`Schedules` (`idSchedule`, `Start`, `End`, `isRepetision`, `Perfomances_idPerfomance`, `Cost`) VALUES ('2', '1910141800', '1910142030', '0', '1', '500');
INSERT INTO `theatre`.`Schedules` (`idSchedule`, `Start`, `End`, `isRepetision`, `Perfomances_idPerfomance`, `Cost`) VALUES ('3', '1910151130', '1910152100', '0', '4', '20');
INSERT INTO `theatre`.`Schedules` (`idSchedule`, `Start`, `End`, `isRepetision`, `Perfomances_idPerfomance`) VALUES ('4', '1910161630', '1910161800', '1', '3');
INSERT INTO `theatre`.`Schedules` (`idSchedule`, `Start`, `End`, `isRepetision`, `Perfomances_idPerfomance`, `Cost`) VALUES ('5', '1910171830', '1910172000', '0', '3', '1000');

--1.5
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('4', '1', 'Директор');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('4', '2', 'Актер');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('4', '3', 'Актер');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('4', '6', 'Актер');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('4', '5', 'Свет');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('1', '2', 'Биба');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('1', '3', 'Даша');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('1', '7', 'Александр');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('2', '2', 'Актер');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('2', '7', 'Актер');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('2', '5', 'Свет');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('2', '1', 'Директор');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('3', '1', 'Доминант');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('3', '7', 'Пассив');
INSERT INTO `theatre`.`S_S` (`Schedules_idSchedule`, `Staff_idStaff`, `role`) VALUES ('3', '5', 'Оператор');
--1.6
INSERT INTO `theatre`.`P_I` (`Perfomances_idPerfomance`, `Items_idItem`) VALUES ('1', '1');
INSERT INTO `theatre`.`P_I` (`Perfomances_idPerfomance`, `Items_idItem`) VALUES ('1', '2');
INSERT INTO `theatre`.`P_I` (`Perfomances_idPerfomance`, `Items_idItem`) VALUES ('2', '3');
INSERT INTO `theatre`.`P_I` (`Perfomances_idPerfomance`, `Items_idItem`) VALUES ('2', '4');
INSERT INTO `theatre`.`P_I` (`Perfomances_idPerfomance`, `Items_idItem`) VALUES ('3', '2');
INSERT INTO `theatre`.`P_I` (`Perfomances_idPerfomance`, `Items_idItem`) VALUES ('3', '4');
