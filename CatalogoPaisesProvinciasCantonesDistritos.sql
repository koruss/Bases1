------------------Inserci�n Cat�logo de paises,provincias,cantones y distritos---------

-----------------Pa�ses-------------------------------
insert into country (id_country,country_name) values (s_country.nextVal,'Costa Rica');
-----------------Provincias--------------------------
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'San Jos�');
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'Alajuela');
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'Heredia');
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'Cartago');
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'Puntarenas');
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'Guanacaste');
insert into province (id_province,id_country,province_name) values (s_province.nextVal,1,'Lim�n');
----------------Cantones de San Jos�---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Jos�',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Escaz�',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Desamparados',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Puriscal',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Tarraz�',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Aserr�',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Mora',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Goicoechea',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Santa Ana',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Alajuelita',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'V�zquez De Coronado',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Acosta',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Tib�s',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Moravia',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Montes De Oca',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Turrubares',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Dota',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Curridabat',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'P�rez Zeled�n',1);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Le�n Cort�s Castro',1);

----------------Cantones de Alajuela---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Alajuela',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Ram�n',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Grecia',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Mateo',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Atenas',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Naranjo',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Palmares',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Po�s',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Orotina',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Carlos',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Zarcero',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Sarch�',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Upala',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Los Chiles',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Guatuso',2);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'R�o Cuarto',2);

----------------Cantones de Heredia---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Heredia',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Barva',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Santo Domingo',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Santa B�rbara',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Rafael',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Isidro',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Bel�n',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Flores',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'San Pablo',3);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Sarapiqu�',3);

----------------Cantones de Cartago---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Cartago',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Para�so',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'La Uni�n',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Jim�nez',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Turrialba',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Alvarado',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Oreamuno',4);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'El Guarco',4);

----------------Cantones de Puntarenas---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Puntarenas	',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Esparza',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Buenos Aires',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Montes De Oro',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Osa',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Quepos',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Golfito',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Coto Brus',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Parrita',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Corredores',5);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Garabito',5);

----------------Cantones de Guanacaste---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Liberia	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Nicoya	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Santa Cruz	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Bagaces	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Carrillo	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Ca�as	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Abangares	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Tilar�n	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Nandayure	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'La Cruz	',6);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Hojancha	',6);

----------------Cantones de Lim�n---------------
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Lim�n	',7);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Pococ�	',7);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Siquirres	',7);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Talamanca	',7);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Matina	',7);
insert into canton (id_canton,canton_name,id_province) values (s_canton.nextVal,'Gu�cimo	',7);

drop sequence s_district;
delete from district;




----------------Distritos de San Jos�-------------------------------------------------------
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carmen',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Merced',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Hospital',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Catedral',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Zapote',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Francisco de Dos R�os',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Uruca',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mata Redonda',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pavas',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Hatillo',1);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Sebasti�n',1);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Escaz�',2);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',2);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',2);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Desamparados',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Miguel',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan de Dios',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael Arriba',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Frailes',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Patarr�',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Crist�bal',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Rosario',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Damas',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael Abajo',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Gravilias',3);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Los Guido',3);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santiago',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mercedes Sur',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Barbacoas',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Grifo Alto',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Candelarita',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Desamparaditos',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Chires',4);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Cangreja',4);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Marcos',5);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Lorenzo',5);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Carlos',5);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Aserr�',6);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tarbaca',6);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Vuelta de Jorco',6);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Gabriel',6);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Legua',6);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Monterrey',6);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Salitrillos',6);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ciudad Col�n',7);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guayabo',7);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tabarcia',7);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Piedras Negras',7);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Picagres',7);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jaris',7);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Quitirris�',7);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guadalupe',8);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Francisco',8);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Calle Blancos',8);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mata de Pl�tano',8);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ip�s',8);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Rancho Redondo',8);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Purral',8);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Ana',9);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Salitral',9);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pozos',9);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Uruca',9);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Piedades',9);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Brasil',9);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Alajuelita',10);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jocecito',10);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',10);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Concepci�n',10);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Felipe',10);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',11);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',11);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Dulce Nombre de Jes�s',11);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Patalillo',11);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cascajal',11);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Ignacio',12);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guaitil',12);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmichal',12);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cangrejal',12);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sabanillas',12);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan',13);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cinco Esquinas',13);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Anselmo Llorente',13);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Le�n XIII',13);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Colima',13);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Vicente',14);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jer�nimo',14);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Trinidad',14);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',15);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sabanilla',15);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mercedes',15);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',15);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pablo',16);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',16);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan de Mata',16);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Luis',16);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carara',16);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Mar�a',17);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jard�n',17);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Copey',17);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Curridabat',18);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Granadilla',18);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'S�nchez',18);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tirrases',18);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro de el General',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'El General',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Daniel Flores',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Rivas',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Platanares',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pejibaye',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Caj�n',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bar�',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Nuevo',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'P�ramo',19);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Amistad',19);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pablo',20);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Andr�s',20);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Liano Bonito',20);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',20);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Cruz',20);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',20);

---------------Distritos de Alajuela---------------

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Alajuela',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos�',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carrizal',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Gu�cima',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sabanilla',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Segundo',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Desamparados',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Turr�cares',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tambor',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Garita',21);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sarapiqu�',21);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Ram�n',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santiago',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Piedades Norte',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Piedades Sur',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'�ngeles',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Alfaro',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Volio',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Concepci�n',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Zapotal',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pe�as Blancas',22);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Lorenzo',22);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Grecia',23);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',23);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos�',23);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Roque',23);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tacares',23);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Puente de piera',23);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bol�var',23);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Mateo',24);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Desmonte',24);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jes�s Mar�a',24);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Labrador',24);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Atenas',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jes�s',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mercedes',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Concepci�n',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos�',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Eulalia',25);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Escobal',25);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Naranjo',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Miguel',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos�',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cirr�',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jer�nimo',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'El Rosario',26);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmitos',26);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmares',27);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Zaragoza',27);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Buenos Aires',27);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santiago',27);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Candelaria',27);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Esquipulas',27);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Granja',27);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',28);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Ju�n',28);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',28);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carrillos',28);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sabana Redonda',28);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Orotina',29);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mastate',29);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Hacienda Vieja',29);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Coyolar',29);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Ceiba',29);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Quesada',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Florencia',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Buenavista',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Aguas Zarcas',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Venecia',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pital',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Fortuna',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Tigra',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Palmera',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Venado',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cutris',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Monterrey',30);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pocosol',30);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Zarcero',31);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Laguna',31);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tapezco',31);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guadalupe',31);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmira',31);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Zapote',31);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Brisas',31);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sarch� Norte',32);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sarch� Sur',32);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Toro Amarillo',32);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',32);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Rodr�guez',32);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Upala',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Aguas Claras',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos�(Pizote)',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bijagua',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Delicias',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Dos R�os',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Yolillal',33);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Canalete',33);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Los Chiles',34);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ca�o Negro',34);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'El Amparo',34);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jorge',34);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',35);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Buenavista',35);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cote',35);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Katira',35);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Cuarto',36);

---------------Distritos de Heredia---------------

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Heredia',37);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mercedes',37);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Francisco',37);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ulloa',37);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Vara Blanca',37);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Barva',38);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',38);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pablo',38);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Roque',38);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Luc�a',38);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos� de la monta�a',38);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santo Domingo',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Vicente',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Miguel',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Paracito',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santo Tom�s',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Rosa',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tures',39);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Par�',39);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa B�rbara',40);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',40);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan',40);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jes�s',40);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santo Domingo',40);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Purab�',40);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',41);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Josecito',41);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santiago',41);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'�ngeles',41);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Concepci�n',41);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',42);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jos�',42);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Concepci�n',42);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Francisco',42);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',43);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Ribera',43);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La asunci�n',43);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Joaqu�n',44);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Barrantes',44);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Llorente',44);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pablo',45);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Rinc�n de Sabanilla',45);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Puerto Viejo',46);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Virgen',46);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Horquetas',46);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Llanuras del Gaspar',46);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cure�a',46);

---------------Distritos de Cartago---------------

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Oriental',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Occidental',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carmen',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Nicol�s',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Agua Caliente',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guadalupe',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Corralillo',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tierra Blanca',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Dulce Nombre',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Llano Grande',47);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Quebradilla',47);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Para�so',48);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santiago',48);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Oros�',48);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cach�',48);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Llanos de Santa Luc�a',48);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tres R�os',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Diego',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Concepci�n',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Dulce Nombre',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Ram�n',49);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Azul',49);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Juan Vi�as',50);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tucurrique',50);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pejibaye',50);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Turrialba',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Suiza',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Peralta',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Cruz',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Teresita',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pavones',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tuis',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tayutic',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Rosa',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tres Equis',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Isabel',51);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Chirrip�',51);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pacayas',52);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cervantes',52);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Capellades',52);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',53);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cot',53);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Potrero Cerrado',53);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cipreses',53);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Rosa',53);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'El Tejar',54);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',54);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tobosi',54);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Patio de Agua',54);

---------------Distritos de Puntarenas---------------
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Puntarenas',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pitahaya',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Chomes',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Lepanto',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Paquera',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Manzanillo',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guacimal',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Barranca',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Monteverde',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Isla Del Coco',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'C�bano',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Chacarita',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Chira',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Acapulco',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'El Roble',55);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Arancibia',55);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Esp�ritu Santo',56);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Juan Grande',56);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Macacona',56);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Rafael',56);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Jer�nimo',56);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Caldera',56);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Buenos Aires',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Volc�n',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Potrero Grande',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Boruca',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pilas',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Colinas',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ch�nguena',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Biolley',57);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Brunka',57);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Miramar',58);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Uni�n',58);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Isidro',58);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ciudad Cort�s',59);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmar',59);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sierpe',59);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bah�a Ballena',59);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Piedras Blancas',59);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bah�a Drake',59);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Quepos',60);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Savegre',60);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Naranjito',60);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Golfito',61);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Puerto Jim�nez',61);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guaycar�',61);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pav�n',61);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Vito',62);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sabalito',62);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Aguabuena',62);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Limoncito',62);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pittier',62);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Guti�rrez Brown',62);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Parrita',63);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Corredor',64);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Cuesta',64);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Paso Canoas',64);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Laurel',64);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jac�',65);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'T�rcoles',65);

---------------Distritos de Guanacaste---------------

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Liberia',66);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ca�as Dulces',66);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mayorga',66);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Nacascolo',66);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Curuband�',66);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Nicoya',67);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mansi�n',67);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Antonio',67);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Quebrada Honda',67);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'S�mara',67);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Nosara',67);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bel�n de Nosarita',67);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Cruz',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bols�n',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'27 de Abril',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tempate',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cartagena',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cuajiniquil',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Diri�',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cabo Velas',68);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tamarindo',68);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bagaces',69);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Fortuna',69);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mogote',69);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Naranjo',69);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Filadelfia',70);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmira',70);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sardinal',70);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bel�n',70);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Ca�as',71);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Palmira',71);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Miguel',71);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bebedero',71);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Porozal',71);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Las Juntas',72);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sierra',72);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Ju�n',72);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Colorado',72);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tilar�n',73);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Quebrada Grande',73);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tronadora',73);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Rosa',73);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'L�bano',73);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Tierras Morenas',73);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Arenal',73);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carmona',74);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Rita',74);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Zapotal',74);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'San Pedro',74);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Porvenir',74);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bejuco',74);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Cruz',75);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Cecilia',75);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Garita',75);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Santa Elena',75);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Hojancha',76);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Monte Romo',76);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Puerto Carrillo',76);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Huacas',76);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Matamb�',76);

---------------Distritos de Lim�n---------------
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Lim�n',77);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Valle La Estrella',77);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Blanco',77);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Matama',77);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Gu�piles',78);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Jim�nez',78);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Rita',78);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Roxana',78);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cariari',78);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Colorado',78);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'La Colonia',78);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Siquirres',79);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pacuarito',79);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Florida',79);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Germania',79);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cairo',79);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Alegr�a',79);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bratsi',80);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Sixaola',80);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Cahuita',80);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Telire',80);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Matina',81);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Bat�n',81);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Carrandi',81);

insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Gu�cimo',82);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Mercedes',82);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Pocora',82);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'R�o Jim�nez',82);
insert into district (id_district,district_name,id_canton) values (s_district.nextVal,'Duacar�',82);


select * from district;

select country_name,province_name,canton_name,district_name from country inner join province on province.id_country=country.id_country inner join canton 
on canton.id_province=province.id_province inner join district on canton.id_canton=district.id_canton ;
commit;



