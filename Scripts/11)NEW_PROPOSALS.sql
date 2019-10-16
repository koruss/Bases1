--INSERTANDO NUEVAS CATEGORIAS--
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Transporte');
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Políticas Sociales');
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Tercera Edad');
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Juventud');
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Derechos Humanos');
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Desarrollo Económico');
INSERT INTO CATEGORY(ID_CATEGORY,CATEGORY_NAME) VALUES(S_CATEGORY.NEXTVAL, 'Educación');


--INSERTANDO NUEVAS PROPUESTAS--
insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Basura Cero','Cumplimiento estricto de las metas de la Ley, incluida la campaña informativa y educativa a los vecinos para la separación en origen. Revisión de los contratos de recolección de residuos húmedos. Creación de nuevos Centros Verdes y fortalecimiento del Ente de Higiene Urbana.',500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (6,1);
insert into person_x_proposal(id_proposal,id_person) values (6,'117060279');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Limitar la construcción indiscriminada','Con evaluación integral del impacto ambiental, incluyendo las consecuencias sobre los servicios públicos, y control de los vecinos para preservar la  identidad de los barrios y la calidad de vida.',1500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (7,1);
insert into person_x_proposal(id_proposal,id_person) values (7,'106760070');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Plan de reordenamiento del tránsito','Con estricto control del horario de carga y descarga en el centro. Promoción del uso de bicicletas y reorganización del diseño de las bicisendas en forma equilibrada.',1000000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (8,11);
insert into person_x_proposal(id_proposal,id_person) values (8,'206745284');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Casas de la Cultura y la Juventud','Una en cada comuna, con salas digitales para difundir la producción audiovisual. Centros culturales en todos los barrios y circuitos comunales, en red con las salas independientes.',5000000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (9,3);
insert into person_x_proposal(id_proposal,id_person) values (9,'102563985');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'La música en vivo vive','Habilitación de espacios de música en vivo y apertura de nuevos estudios públicos de grabación',500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (10,3);
insert into person_x_proposal(id_proposal,id_person) values (10,'136690451');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Plan de preservación del patrimonio','Recuperación de las memorias e identidades socio-culturales de cada barrio. Promoción de Días del Arte en toda la Ciudad: de la música, la poesía, el teatro y el cine, entre otros.',2000000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (11,3);
insert into person_x_proposal(id_proposal,id_person) values (11,'701548756');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Comedores comunitarios','Provisión de alimentos frescos a los comedores sostenidos por las organizaciones sociales, transparentando el sistema de compras.',800000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (12,12);
insert into person_x_proposal(id_proposal,id_person) values (12,'602547884');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Promoción del deporte','Mediante la ampliación de programas, en especial las colonias para niños y jóvenes, y la coordinación de actividades deportivas entre clubes de barrio y escuelas',400000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (13,12);
insert into person_x_proposal(id_proposal,id_person) values (13,'108450931');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Vulnerabilidad social','Política activa de relevamiento de la cantidad de adultos mayores en dicha situación para su asistencia a fin que continúen viviendo en su propio hogar.',750000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (14,13);
insert into person_x_proposal(id_proposal,id_person) values (14,'108566974');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Apertura de Casas de Encuentro','Una  en cada comuna, con actividades recreativas y culturales para los adultos mayores. Programa Paseando Juntos de salidas grupales a circuitos públicos y también privados mediante convenios.',500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (15,13);
insert into person_x_proposal(id_proposal,id_person) values (15,'119672845');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Educación sexual','Cumplir en forma efectiva que en todos los niveles educativos se presente, con perspectiva de género y diversidad.',300000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (16,14);
insert into person_x_proposal(id_proposal,id_person) values (16,'119672845');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Organización de la Bienal Joven','Para promover la creatividad y la innovación. Ampliar los espacios para difundir la producción de jóvenes realizadores.',1020000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (17,14);
insert into person_x_proposal(id_proposal,id_person) values (17,'105847965');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'No a la precarización y tercerización','Mediante una política activa que incluya más inspecciones laborales, sobre todo en call centers, deliveries y mensajerías.',550000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (18,14);
insert into person_x_proposal(id_proposal,id_person) values (18,'144785623');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Programa de Promoción de Derechos','Para la difusión, asistencia y capacitación de la ciudadanía ante la vulneración de derechos humanos. Elaboración de protocolos en derechos humanos para la actuación del Estado ante casos de violencia de género',650000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (19,15);
insert into person_x_proposal(id_proposal,id_person) values (19,'117060279');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Programa para la No Discriminación','En todos los niveles escolares, coordinado con el Ministerio de Educación.',500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (20,15);
insert into person_x_proposal(id_proposal,id_person) values (20,'144785623');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Diversidad Sexual','Crear una unidad de promoción de la igualdad y la no discriminación hacia la comunidad LGBT.',350000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (21,15);
insert into person_x_proposal(id_proposal,id_person) values (21,'206745284');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Fomento a las pymes','Mediante subsidios, asistencia y créditos especiales. Apoyo a las fábricas recuperadas por sus trabajadores.',650000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (22,16);
insert into person_x_proposal(id_proposal,id_person) values (22,'102163589');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Turismo','Planificación estratégica para la promoción del sector, que incluya nuevos circuitos. Reincorporar el Ente de Turismo en el Ministerio de Desarrollo Económico',2500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (23,16);
insert into person_x_proposal(id_proposal,id_person) values (23,'516587945');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Plan de Construcción de Escuelas','Actualización del plan de obras y refacciones -con control de la comunidad educativa- y finalizar los Polos Educativos.',3500000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (24,17);
insert into person_x_proposal(id_proposal,id_person) values (24,'105847965');

insert into proposal(id_proposal,title,proposal_description,budget,proposal_date)
values (s_proposal.nextval,'Asegurar el secundario obligatorio','Con aumento de las becas y un plan especial de reinserción para llegar a deserción cero.',3550000,sysdate);
insert into proposal_x_category(id_proposal,id_category) values (25,17);
insert into person_x_proposal(id_proposal,id_person) values (25,'117060279');
