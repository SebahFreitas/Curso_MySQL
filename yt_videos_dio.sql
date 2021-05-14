CREATE TABLE IF NOT EXISTS `db_databaseyt`.`videos` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `author` VARCHAR(30) NOT NULL,
  `title` VARCHAR(30) NOT NULL,
  `likes` INT NULL,
  `dislikes` INT NULL,
  PRIMARY KEY (`id`));
  
Alter table videos rename column id to id_videos;
  
SELECT * FROM db_databaseyt.videos;

insert into videos(fk_author, title, likes, dislikes) values (1, 'MySQL', 10, 2);
insert into videos(fk_author, title, likes, dislikes) values (2, 'C++', 8, 1);
insert into videos(fk_author, title, likes, dislikes) values (3, 'PHP', 10, 5);
insert into videos(fk_author, title, likes, dislikes) values (4, 'Macumba Hoje', 20, 2);
insert into videos(fk_author, title, likes, dislikes) values (5, 'Petê Se Fudê', 03, 30);
insert into videos(fk_author, title, likes, dislikes) values (6, 'Slime', 50,2);
insert into videos(fk_author, title, likes, dislikes) values (7, 'Golpe Baixo', 10,2);

insert into videos(fk_author, title, likes, dislikes) values (1, 'JSON', 5, 2);
insert into videos(fk_author, title, likes, dislikes) values (2, 'Scrum', 46, 1);
insert into videos(fk_author, title, likes, dislikes) values (3, 'Kanban', 78, 5);
insert into videos(fk_author, title, likes, dislikes) values (4, 'Africa Livre', 20, 2);
insert into videos(fk_author, title, likes, dislikes) values (5, 'Quero Lula', 03, 90);
insert into videos(fk_author, title, likes, dislikes) values (6, 'Barbies em Ação', 250,2);
insert into videos(fk_author, title, likes, dislikes) values (7, 'A Biscateira', 100,2);



Alter table videos rename column author to fk_author;
delete from videos;

alter table videos drop column fk_author;
alter table videos add column fk_author int(11) not null after id_videos;



CREATE TABLE IF NOT EXISTS `db_databaseyt`.`authors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(30) NOT NULL,
  `born` date NOT NULL,
    PRIMARY KEY (`id`));
    
Alter table authors rename column id to id_authors;


    
SELECT * FROM db_databaseyt.authors;
    
insert into authors(name, born) values ('Maria', 19420720);
insert into authors(name, born) values ('José Souza', 19370322);
insert into authors(name, born) values ('Gilberto Freire', 19900519);
insert into authors(name, born) values ('Paulo Vitor', 19840430);
insert into authors(name, born) values ('Cris Fraga', 19600218);
insert into authors(name, born) values ('Giovanna Freitas', 20140320);
insert into authors(name, born) values ('Roberta Carvalho', 19741209);


update videos set author = 'Maria Freitas' where id = 2;
update authors set name = 'Maria Freitas' where id = 1;

Select id_authors, name, title, likes, dislikes from authors join videos where id_authors = fk_author;

Select * from videos join authors on authors.id_authors = videos.fk_author;

CREATE TABLE `db_databaseyt`.`seo` (
  `idSEO` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idSEO`))
COMMENT = '	';

insert into seo(category) values ('informática');
insert into seo(category) values ('Religião');
insert into seo(category) values ('Infantil');
insert into seo(category) values ('Aventura');

SELECT * FROM db_databaseyt.seo;

update videos set fk_seo = 1 
	where id_videos = 9 or
		id_videos = 10 or
        id_videos = 11 or 
        id_videos = 16 or
        id_videos = 17 or
        id_videos = 18; 

update videos set fk_seo = 3 
	where id_videos = 14 or
		id_videos = 21; 

update videos set fk_seo = 2 
	where id_videos = 12; 
    
update videos set fk_seo = 4 
	where id_videos = 13 or
		id_videos = 15 or
        id_videos = 19 or 
        id_videos = 20 or
        id_videos = 22;     
        
        
ALTER TABLE `db_databaseyt`.`videos` 
ADD INDEX `fk_seo_idx` (`fk_seo` ASC) VISIBLE;

ALTER TABLE `db_databaseyt`.`videos` 
ADD CONSTRAINT `fk_seo`
  FOREIGN KEY (`fk_seo`)
  REFERENCES `db_databaseyt`.`seo` (`idSEO`)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT;
  
  
select * from videos join seo on fk_seo = idseo order by category;

select * from videos 
join seo join authors on (fk_seo = idseo and fk_author = id_authors) 
order by category;

select seo.category, authors.name, videos.title 
from videos  
join seo 
join authors on (fk_seo = idseo and fk_author = id_authors)  
order by seo.category, authors.name, videos.title;

select seo.category, authors.name, videos.title 
from videos 
join seo on videos.fk_seo = seo.idseo
join authors on videos.fk_author = authors.id_authors
order by seo.category, authors.name, videos.title;


CREATE TABLE `db_databaseyt`.`playlist` (
  `idplaylist` INT NOT NULL AUTO_INCREMENT,
  `nane_playlist` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idplaylist`));
  
  
insert into playlist set name_playlist = 'Videos de Aventura';
insert into playlist(name_playlist) values ('Videos de TI');
insert into playlist(name_playlist) values ('Videos para Crianças');
insert into playlist (name_playlist) values ('Videos de Religião');

CREATE TABLE `db_databaseyt`.`videos_playlist` (
  `idplaylist` INT NOT NULL,
  `id_videos` INT NOT NULL,
  `id_authors` INT NOT NULL,
  `idSEO` INT NOT NULL,
  PRIMARY KEY (`idplaylist`, `id_videos`, `id_authors`, `idSEO`));
  
