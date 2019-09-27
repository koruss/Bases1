----------- COMENTARIOS DE LA TABLA NACIONALIDAD ------------------------------
COMMENT ON TABLE nationality
  IS 'Save all data of the different nationalities';
COMMENT ON COLUMN nationality.id_Nationality
  IS 'Identifier of the different nationalities';  
COMMENT ON COLUMN nationality.nationality_name
  IS 'Name of the nationality';
COMMENT ON COLUMN nationality.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN nationality.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN nationality.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN nationality.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PAIS ------------------------------
COMMENT ON TABLE country
  IS 'Saves all data of the different countrys registered in the system';
COMMENT ON COLUMN country.id_Country
  IS 'Identifier of the country';  
COMMENT ON COLUMN country.country_name
  IS 'Name of the country';
COMMENT ON COLUMN country.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN country.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN country.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN country.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PROVINCIA ------------------------------
COMMENT ON TABLE province
  IS 'Saves all the information of the different provinces'; 
COMMENT ON COLUMN province.id_Province
  IS 'Identifier of the province';  
COMMENT ON COLUMN province.id_Country
  IS 'Identifier of the country wich the province belongs';
COMMENT ON COLUMN province.province_name
  IS 'Name of the province';
COMMENT ON COLUMN province.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN province.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN province.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN province.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA  CATEGORY------------------------------
COMMENT ON TABLE category
  IS 'Saves the different categorys of proposals';
COMMENT ON COLUMN category.id_Category
  IS 'Identifier of the category';  
COMMENT ON COLUMN category.category_name
  IS 'Name of the category';
COMMENT ON COLUMN category.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN category.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN category.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN category.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA CANTON ------------------------------
COMMENT ON TABLE canton
  IS 'Saves all data of the different cantons'; 
COMMENT ON COLUMN canton.id_Canton
  IS 'Identifier of the canton';  
COMMENT ON COLUMN canton.canton_name
  IS 'Name of the canton';
COMMENT ON COLUMN canton.id_Province
  IS 'Identifier of the province wich the canton belongs';
COMMENT ON COLUMN canton.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN canton.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN canton.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN canton.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA COMMUNITY------------------------------
COMMENT ON TABLE community
  IS 'Saves the data of different communities'; 
COMMENT ON COLUMN community.id_Community
  IS 'Identifier of the community';  
COMMENT ON COLUMN community.Community_name
  IS 'Name of the community';
COMMENT ON COLUMN community.id_canton
  IS 'Identifier of the canton wich the community belongs';
COMMENT ON COLUMN community.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN community.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN community.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN community.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PERSONA ------------------------------
Comment on table Person
is 'Saves the information of all persons registered in the system';
COMMENT on Column Person.identification 
is 'Identification of the person';
COMMENT on Column Person.id_community 
is 'Identifier of the community wich the person belongs';
COMMENT on Column Person.name 
is 'Name of the person';
COMMENT on Column Person.first_Last_Name 
is 'First last name of the person';
COMMENT on Column Person.second_Last_Name 
is 'Second last name of the person';
COMMENT on Column Person.birthdate 
is 'Birthday of the person';
COMMENT ON COLUMN Person.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Person.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN Person.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN Person.last_modification_date
  IS 'Date of last modification';

----------- COMENTARIOS DE LA TABLA TIPO DE USUARIO------------------------------
Comment on table UserType
is 'Saves the different types of users that exists';
COMMENT on Column UserType.id_UserType 
is 'Identifier of the user type';
COMMENT on Column UserType.UserType_Name 
is 'Name of the user type';
COMMENT ON COLUMN UserType.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN UserType.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN UserType.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN UserType.last_modification_date
  IS 'Date of last modification';

----------- COMENTARIOS DE LA TABLA USUARIO ------------------------------
Comment on table UserName
is 'Saves all date of users registered in the system';
COMMENT on Column UserName.id_UserType 
is 'Identifier of the different users';
COMMENT on Column UserName.userName 
is 'Saves the name of the unique user';
COMMENT on Column UserName.identification 
is 'Identifier oh the person wich the user are relacionated';
COMMENT on Column UserName.password
is 'Password of the user';
COMMENT ON COLUMN UserName.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN UserName.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN UserName.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN UserName.last_modification_date
  IS 'Date of last modification';

----------- COMENTARIOS DE LA TABLA EMAIL------------------------------
Comment on table Email
is 'Saves the emails of the persons';
COMMENT on Column Email.Email 
is 'Email of the person';
COMMENT on Column Email.identification 
is 'Identifier of the person that are relacionated with the email"';
COMMENT ON COLUMN Email.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Email.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN Email.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN Email.last_modification_date
  IS 'Date of last modification';

----------- COMENTARIOS DE LA TABLA TELEFONO------------------------------
Comment on table Telephone
is 'Saves the telephones of the persons';
COMMENT on Column Telephone.Telephone 
is 'Telephone of the person';
COMMENT on Column Telephone.identification 
is 'Identifier of the person that are relacionated with the telephone';
COMMENT ON COLUMN Telephone.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Telephone.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN Telephone.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN Telephone.last_modification_date
  IS 'Date of last modification';

----------- COMENTARIOS DE LA TABLA PROPUESTA------------------------------
COMMENT ON TABLE Proposal
  IS 'Table that saves all proposals made in the system'; 
COMMENT ON COLUMN Proposal.id_Proposal
  IS 'Identifier of the different proposals';  
COMMENT ON COLUMN Proposal.proposal_name 
  IS 'Name of the proposal';
COMMENT ON COLUMN Proposal.proposal_description
  IS 'Short description of the proposal';
COMMENT ON COLUMN Proposal.budget
  IS 'Aproximated budget of the proposal';
COMMENT ON COLUMN Proposal.vote
  IS 'Total of votes that the proposal has received';
COMMENT ON COLUMN Proposal.proposal_date
  IS 'Date in wich proposal was created';
COMMENT ON COLUMN Proposal.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Proposal.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN Proposal.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN Proposal.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA COMENTARIO------------------------------
COMMENT ON TABLE Proposal_comment
  IS 'Save the comments made to a proposal'; 
COMMENT ON COLUMN Proposal_comment.id_Comment
  IS 'Identifier of comment';  
COMMENT ON COLUMN Proposal_comment.comment_description
  IS 'Save the content of the comment';
COMMENT ON COLUMN Proposal_comment.comment_date
  IS 'Save the date in wich the comment was made';
COMMENT ON COLUMN Proposal_comment.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN Proposal_comment.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN Proposal_comment.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN Proposal_comment.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PARAMETRO------------------------------
COMMENT ON TABLE parameter
  IS 'Save the different parameters of the system'; 
COMMENT ON COLUMN parameter.id_parameter
  IS 'Identifier of the parameter';  
COMMENT ON COLUMN parameter.parameter_name
  IS 'Save the name of the parameter';
COMMENT ON COLUMN parameter.parameter_value
  IS 'Save the value of the parameter';
COMMENT ON COLUMN parameter.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN parameter.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN parameter.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN parameter.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA NACIONALIDAD X PERSONA ------------------------------
COMMENT ON TABLE nationality_x_person
  IS 'Saves the relation of the nationalities with the persons'; 
COMMENT ON COLUMN nationality_x_person.id_nationality
  IS 'Identifier of the nationality';  
COMMENT ON COLUMN nationality_x_person.id_person
  IS 'Identifier of the person';
COMMENT ON COLUMN nationality_x_person.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN nationality_x_person.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN nationality_x_person.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN nationality_x_person.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PROPUESTA X PERSONA------------------------------
COMMENT ON TABLE person_x_proposal
  IS 'Saves the relation of the proposals with the persons'; 
COMMENT ON COLUMN person_x_proposal.id_person
  IS 'Identifier of the person';  
COMMENT ON COLUMN person_x_proposal.id_proposal
  IS 'Identifier of the proposal';
COMMENT ON COLUMN person_x_proposal.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN person_x_proposal.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN person_x_proposal.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN person_x_proposal.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PROPUESTA X CATEGORIA ------------------------------
COMMENT ON TABLE proposal_x_category
  IS 'Saves the relation of the proposals with the categorys'; 
COMMENT ON COLUMN proposal_x_category.id_proposal
  IS 'Identifier of the proposal';  
COMMENT ON COLUMN proposal_x_category.id_category
  IS 'Identifier of the category';
COMMENT ON COLUMN proposal_x_category.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN proposal_x_category.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN proposal_x_category.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN proposal_x_category.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA CATEGORIA X PERSONA------------------------------
COMMENT ON TABLE category_x_person
  IS 'Saves the relation of the categorys with the persons'; 
COMMENT ON COLUMN category_x_person.id_category
  IS 'Identifier of the category';  
COMMENT ON COLUMN category_x_person.id_person
  IS 'Identifier of the person';
COMMENT ON COLUMN category_x_person.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN category_x_person.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN category_x_person.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN category_x_person.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA PERSONA X COMENTARIO------------------------------
COMMENT ON TABLE person_x_comment
  IS 'Saves the relation of the persons with the comments'; 
COMMENT ON COLUMN person_x_comment.id_comment
  IS 'Identifier of the comment';  
COMMENT ON COLUMN person_x_comment.id_person
  IS 'Identifier of the person';
COMMENT ON COLUMN person_x_comment.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN person_x_comment.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN person_x_comment.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN person_x_comment.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA COMENTARIO X PROPUESTA------------------------------
COMMENT ON TABLE proposal_x_comment
  IS 'Saves the relation of the proposals with the comments'; 
COMMENT ON COLUMN proposal_x_comment.id_proposal
  IS 'Identifier of the proposal';  
COMMENT ON COLUMN proposal_x_comment.id_comment
  IS 'Identifier of the comment';
COMMENT ON COLUMN proposal_x_comment.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN proposal_x_comment.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN proposal_x_comment.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN proposal_x_comment.last_modification_date
  IS 'Date of last modification';
  
----------- COMENTARIOS DE LA TABLA VOTO------------------------------
COMMENT ON TABLE vote
  IS 'Save the votes made to a proposal'; 
COMMENT ON COLUMN vote.id_proposal
  IS 'Identifier of the proposal';  
COMMENT ON COLUMN vote.id_person
  IS 'Save the person who made the vote';
COMMENT ON COLUMN vote.created_by
  IS 'Name of the user that entered the data';
COMMENT ON COLUMN vote.creation_date
  IS 'Date in wich the data was entered';
COMMENT ON COLUMN vote.last_modification_by
  IS 'Name of the last user who modifier the data';
COMMENT ON COLUMN vote.last_modification_date
  IS 'Date of last modification';
  
