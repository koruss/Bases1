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
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'México');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Nicaragua');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Panamá');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Paraguay');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Puerto Rico');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Perú');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'República Dominicana');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Uruguay');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Venezuela');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Haití');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Belice');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Estados Unidos');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Francia');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Canadá');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'España');
insert into nationality(id_nationality,nationality_name) values (s_nationality.nextval,'Rusia');


-----------CREACION CATALOGO DE CATEGORIAS-----------------------
insert into category(id_category,category_name) values (s_category.nextval,'Ambiental');
insert into category(id_category,category_name) values (s_category.nextval,'Seguridad');
insert into category(id_category,category_name) values (s_category.nextval,'Cultura y Deporte');
insert into category(id_category,category_name) values (s_category.nextval,'Mascotas');
insert into category(id_category,category_name) values (s_category.nextval,'Desarrollo Comunitario');
insert into category(id_category,category_name) values (s_category.nextval,'Limpieza');
insert into category(id_category,category_name) values (s_category.nextval,'Negocios o ferias');
insert into category(id_category,category_name) values (s_category.nextval,'Alimentación');
insert into category(id_category,category_name) values (s_category.nextval,'Talleres');
insert into category(id_category,category_name) values (s_category.nextval,'Construcción');

-----------CREACION CATALOGO DE TIPO DE USUARIO--------------------------
insert into userType(id_userType, Usertype_Name) values (s_usertype.nextval,'Administrador');
insert into usertype(id_userType,Usertype_name) values (s_usertype.nextval,'Usuario Normal');