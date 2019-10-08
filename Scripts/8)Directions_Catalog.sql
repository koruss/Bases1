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
delete from canton;
select * from canton;
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
----------------Distritos de San Jos�-------------------------------------------------------
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carmen',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Merced',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Hospital',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Catedral',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Zapote',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Francisco de Dos R�os',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Uruca',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mata Redonda',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pavas',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Hatillo',1);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Sebasti�n',1);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Escaz�',2);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',2);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',2);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Desamparados',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Miguel',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan de Dios',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael Arriba',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Frailes',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Patarr�',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Crist�bal',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Rosario',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Damas',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael Abajo',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Gravilias',3);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Los Guido',3);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santiago',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mercedes Sur',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Barbacoas',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Grifo Alto',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Candelarita',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Desamparaditos',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Chires',4);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Cangreja',4);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Marcos',5);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Lorenzo',5);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Carlos',5);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Aserr�',6);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tarbaca',6);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Vuelta de Jorco',6);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Gabriel',6);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Legua',6);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Monterrey',6);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Salitrillos',6);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ciudad Col�n',7);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guayabo',7);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tabarcia',7);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Piedras Negras',7);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Picagres',7);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jaris',7);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Quitirris�',7);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guadalupe',8);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Francisco',8);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Calle Blancos',8);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mata de Pl�tano',8);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ip�s',8);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Rancho Redondo',8);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Purral',8);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Ana',9);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Salitral',9);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pozos',9);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Uruca',9);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Piedades',9);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Brasil',9);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Alajuelita',10);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jocecito',10);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',10);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Concepci�n',10);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Felipe',10);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',11);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',11);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Dulce Nombre de Jes�s',11);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Patalillo',11);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cascajal',11);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Ignacio',12);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guaitil',12);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmichal',12);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cangrejal',12);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sabanillas',12);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan',13);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cinco Esquinas',13);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Anselmo Llorente',13);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Le�n XIII',13);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Colima',13);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Vicente',14);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jer�nimo',14);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Trinidad',14);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',15);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sabanilla',15);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mercedes',15);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',15);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pablo',16);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',16);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan de Mata',16);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Luis',16);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carara',16);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Mar�a',17);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jard�n',17);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Copey',17);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Curridabat',18);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Granadilla',18);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'S�nchez',18);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tirrases',18);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro de el General',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'El General',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Daniel Flores',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Rivas',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Platanares',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pejibaye',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Caj�n',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bar�',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Nuevo',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'P�ramo',19);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Amistad',19);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pablo',20);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Andr�s',20);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Liano Bonito',20);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',20);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Cruz',20);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',20);

---------------Distritos de Alajuela---------------

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Alajuela',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos�',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carrizal',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Gu�cima',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sabanilla',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Segundo',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Desamparados',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Turr�cares',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tambor',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Garita',21);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sarapiqu�',21);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Ram�n',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santiago',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Piedades Norte',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Piedades Sur',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'�ngeles',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Alfaro',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Volio',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Concepci�n',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Zapotal',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pe�as Blancas',22);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Lorenzo',22);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Grecia',23);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',23);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos�',23);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Roque',23);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tacares',23);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Puente de piera',23);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bol�var',23);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Mateo',24);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Desmonte',24);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jes�s Mar�a',24);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Labrador',24);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Atenas',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jes�s',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mercedes',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Concepci�n',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos�',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Eulalia',25);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Escobal',25);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Naranjo',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Miguel',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos�',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cirr�',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jer�nimo',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'El Rosario',26);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmitos',26);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmares',27);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Zaragoza',27);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Buenos Aires',27);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santiago',27);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Candelaria',27);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Esquipulas',27);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Granja',27);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',28);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Ju�n',28);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',28);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carrillos',28);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sabana Redonda',28);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Orotina',29);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mastate',29);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Hacienda Vieja',29);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Coyolar',29);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Ceiba',29);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Quesada',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Florencia',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Buenavista',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Aguas Zarcas',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Venecia',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pital',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Fortuna',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Tigra',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Palmera',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Venado',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cutris',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Monterrey',30);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pocosol',30);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Zarcero',31);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Laguna',31);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tapezco',31);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guadalupe',31);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmira',31);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Zapote',31);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Brisas',31);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sarch� Norte',32);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sarch� Sur',32);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Toro Amarillo',32);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',32);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Rodr�guez',32);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Upala',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Aguas Claras',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos�(Pizote)',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bijagua',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Delicias',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Dos R�os',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Yolillal',33);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Canalete',33);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Los Chiles',34);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ca�o Negro',34);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'El Amparo',34);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jorge',34);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',35);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Buenavista',35);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cote',35);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Katira',35);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Cuarto',36);

---------------Distritos de Heredia---------------

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Heredia',37);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mercedes',37);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Francisco',37);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ulloa',37);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Vara Blanca',37);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Barva',38);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',38);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pablo',38);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Roque',38);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Luc�a',38);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos� de la monta�a',38);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santo Domingo',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Vicente',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Miguel',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Paracito',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santo Tom�s',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Rosa',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tures',39);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Par�',39);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa B�rbara',40);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',40);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan',40);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jes�s',40);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santo Domingo',40);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Purab�',40);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',41);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Josecito',41);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santiago',41);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'�ngeles',41);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Concepci�n',41);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',42);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jos�',42);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Concepci�n',42);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Francisco',42);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',43);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Ribera',43);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La asunci�n',43);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Joaqu�n',44);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Barrantes',44);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Llorente',44);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pablo',45);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Rinc�n de Sabanilla',45);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Puerto Viejo',46);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Virgen',46);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Horquetas',46);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Llanuras del Gaspar',46);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cure�a',46);

---------------Distritos de Cartago---------------

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Oriental',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Occidental',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carmen',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Nicol�s',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Agua Caliente',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guadalupe',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Corralillo',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tierra Blanca',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Dulce Nombre',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Llano Grande',47);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Quebradilla',47);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Para�so',48);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santiago',48);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Oros�',48);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cach�',48);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Llanos de Santa Luc�a',48);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tres R�os',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Diego',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Concepci�n',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Dulce Nombre',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Ram�n',49);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Azul',49);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Juan Vi�as',50);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tucurrique',50);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pejibaye',50);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Turrialba',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Suiza',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Peralta',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Cruz',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Teresita',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pavones',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tuis',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tayutic',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Rosa',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tres Equis',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Isabel',51);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Chirrip�',51);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pacayas',52);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cervantes',52);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Capellades',52);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',53);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cot',53);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Potrero Cerrado',53);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cipreses',53);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Rosa',53);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'El Tejar',54);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',54);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tobosi',54);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Patio de Agua',54);

---------------Distritos de Puntarenas---------------
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Puntarenas',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pitahaya',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Chomes',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Lepanto',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Paquera',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Manzanillo',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guacimal',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Barranca',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Monteverde',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Isla Del Coco',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'C�bano',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Chacarita',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Chira',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Acapulco',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'El Roble',55);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Arancibia',55);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Esp�ritu Santo',56);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Juan Grande',56);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Macacona',56);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Rafael',56);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Jer�nimo',56);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Caldera',56);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Buenos Aires',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Volc�n',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Potrero Grande',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Boruca',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pilas',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Colinas',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ch�nguena',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Biolley',57);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Brunka',57);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Miramar',58);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Uni�n',58);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Isidro',58);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ciudad Cort�s',59);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmar',59);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sierpe',59);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bah�a Ballena',59);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Piedras Blancas',59);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bah�a Drake',59);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Quepos',60);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Savegre',60);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Naranjito',60);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Golfito',61);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Puerto Jim�nez',61);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guaycar�',61);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pav�n',61);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Vito',62);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sabalito',62);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Aguabuena',62);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Limoncito',62);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pittier',62);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Guti�rrez Brown',62);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Parrita',63);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Corredor',64);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Cuesta',64);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Paso Canoas',64);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Laurel',64);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jac�',65);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'T�rcoles',65);

---------------Distritos de Guanacaste---------------

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Liberia',66);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ca�as Dulces',66);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mayorga',66);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Nacascolo',66);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Curuband�',66);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Nicoya',67);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mansi�n',67);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Antonio',67);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Quebrada Honda',67);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'S�mara',67);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Nosara',67);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bel�n de Nosarita',67);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Cruz',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bols�n',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'27 de Abril',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tempate',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cartagena',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cuajiniquil',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Diri�',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cabo Velas',68);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tamarindo',68);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bagaces',69);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Fortuna',69);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mogote',69);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Naranjo',69);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Filadelfia',70);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmira',70);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sardinal',70);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bel�n',70);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Ca�as',71);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Palmira',71);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Miguel',71);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bebedero',71);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Porozal',71);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Las Juntas',72);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sierra',72);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Ju�n',72);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Colorado',72);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tilar�n',73);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Quebrada Grande',73);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tronadora',73);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Rosa',73);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'L�bano',73);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Tierras Morenas',73);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Arenal',73);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carmona',74);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Rita',74);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Zapotal',74);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'San Pedro',74);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Porvenir',74);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bejuco',74);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Cruz',75);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Cecilia',75);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Garita',75);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Santa Elena',75);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Hojancha',76);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Monte Romo',76);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Puerto Carrillo',76);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Huacas',76);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Matamb�',76);

---------------Distritos de Lim�n---------------
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Lim�n',77);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Valle La Estrella',77);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Blanco',77);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Matama',77);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Gu�piles',78);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Jim�nez',78);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Rita',78);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Roxana',78);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cariari',78);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Colorado',78);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'La Colonia',78);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Siquirres',79);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pacuarito',79);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Florida',79);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Germania',79);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cairo',79);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Alegr�a',79);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bratsi',80);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Sixaola',80);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Cahuita',80);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Telire',80);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Matina',81);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Bat�n',81);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Carrandi',81);

insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Gu�cimo',82);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Mercedes',82);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Pocora',82);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'R�o Jim�nez',82);
insert into community (id_community,community_name,id_canton) values (s_community.nextVal,'Duacar�',82);

select country_name,province_name,canton_name,community_name from country inner join province on province.id_country=country.id_country inner join canton 
on canton.id_province=province.id_province inner join community on canton.id_canton=community.id_canton ;
commit;

