-----------CREACION CATALOGO DE NACIONALIDADES-----------------------
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Argentina');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Bolivia');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Brasil');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Chile');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Colombia');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Costa Rica');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Cuba');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Ecuador');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'El Salvador');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Guatemala');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Honduras');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'M�xico');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Nicaragua');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Panam�');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Paraguay');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Puerto Rico');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Per�');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Rep�blica Dominicana');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Uruguay');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Venezuela');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Hait�');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Belice');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Estados Unidos');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Francia');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Canad�');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Espa�a');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Rusia');


-----------CREACION CATALOGO DE CATEGORIAS-----------------------
insert into category(id_category,category_name) values (s_category.nextval,'Ambiental');
insert into category(id_category,category_name) values (s_category.nextval,'Seguridad');
insert into category(id_category,category_name) values (s_category.nextval,'Cultura y Deporte');
insert into category(id_category,category_name) values (s_category.nextval,'Mascotas');
insert into category(id_category,category_name) values (s_category.nextval,'Desarrollo Comunitario');
insert into category(id_category,category_name) values (s_category.nextval,'Limpieza');
insert into category(id_category,category_name) values (s_category.nextval,'Negocios o ferias');
insert into category(id_category,category_name) values (s_category.nextval,'Alimentaci�n');
insert into category(id_category,category_name) values (s_category.nextval,'Talleres');
insert into category(id_category,category_name) values (s_category.nextval,'Construcci�n');

-----------CREACION CATALOGO DE TIPO DE USUARIO--------------------------
insert into userType(id_userType, Usertype_Name) values (s_usertype.nextval,'Administrador');
insert into usertype(id_userType,Usertype_name) values (s_usertype.nextval,'Usuario Normal');