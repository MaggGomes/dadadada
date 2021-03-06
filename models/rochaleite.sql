-- Create tables
DROP DATABASE IF EXISTS rochaleite;
CREATE DATABASE IF NOT EXISTS rochaleite;

USE rochaleite;

DROP TABLE IF EXISTS projects, projects_details, images, curriculum, distinctions, links, users;
CREATE TABLE IF NOT EXISTS projects (
	project_id    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
	id            VARCHAR(255)	NOT NULL UNIQUE,
	thumbnail     TEXT          NOT NULL DEFAULT '',
	image					TEXT          NOT NULL DEFAULT '',
	categories    TEXT          NOT NULL DEFAULT '',
	order_number	INT UNSIGNED	NOT NULL,
	PRIMARY KEY (project_id)
);

CREATE TABLE IF NOT EXISTS projects_details (
	project_id    INT UNSIGNED	NOT NULL,
	title         VARCHAR(50)	  NOT NULL DEFAULT '',
	description   TEXT		      NOT NULL DEFAULT '',
	address       VARCHAR(50)	  DEFAULT '',
	language      ENUM('pt', 'en') NOT NULL DEFAULT 'pt',
	FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS images (
	project_id    INT UNSIGNED	NOT NULL,
	path          TEXT			    NOT NULL DEFAULT '',
	FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS team (
	name  				VARCHAR(50)		NOT NULL DEFAULT '',
	order_number	INT UNSIGNED	NOT NULL
);

CREATE TABLE IF NOT EXISTS curriculum (
	project_id    INT UNSIGNED	,
	description   TEXT			    NOT NULL DEFAULT '',
	address       TEXT			    NOT NULL DEFAULT '',
	year          TEXT			    NOT NULL DEFAULT '',
	state         TEXT			    NOT NULL DEFAULT '',
	language      ENUM('pt', 'en') NOT NULL DEFAULT 'pt',
	order_number	INT UNSIGNED	NOT NULL,
	FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS distinctions (
	project_id    INT UNSIGNED	,
	distinction   TEXT			    NOT NULL DEFAULT '',
	path          TEXT			    NOT NULL DEFAULT '',
	language      ENUM('pt', 'en') NOT NULL DEFAULT 'pt',
	order_number	INT UNSIGNED	NOT NULL,
	FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS links (
	project_id    INT UNSIGNED	NOT NULL,
	description   TEXT			    NOT NULL DEFAULT '',
	link          TEXT			    NOT NULL DEFAULT '',
	language      ENUM('pt', 'en') NOT NULL DEFAULT 'pt',
	order_number	INT UNSIGNED	NOT NULL,
	FOREIGN KEY (project_id) REFERENCES projects(project_id)
);

CREATE TABLE IF NOT EXISTS users (
	username      VARCHAR(50)	  NOT NULL DEFAULT '',
	password      TEXT		      NOT NULL DEFAULT '',
	PRIMARY KEY (username)
);

-- Populate tables
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-murtinheira', '/images/projects/casa-murtinheira/thumbnail.jpg', '/images/projects/casa-murtinheira/1.svg', 'single_family', 3);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('palacete-av-boavista', '/images/projects/palacete-av-boavista/thumbnail.jpg', '/images/projects/palacete-av-boavista/1.svg', 'rehabilitation,equipments_services', 31);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('edificio-sede-espaco-agros', '/images/projects/edificio-sede-espaco-agros/thumbnail.jpg', '/images/projects/edificio-sede-espaco-agros/1.svg', 'equipments_services', 1);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('entrada-eventos-espaco-agros', '/images/projects/entrada-eventos-espaco-agros/thumbnail.jpg', '/images/projects/entrada-eventos-espaco-agros/1.svg', 'equipments_services', 23);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-cadoucos', '/images/projects/casa-cadoucos/thumbnail.jpg', '/images/projects/casa-cadoucos/1.svg', 'rehabilitation,equipments_services', 22);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('empatias', '/images/projects/empatias/thumbnail.jpg', '/images/projects/empatias/1.svg', 'interior,restoration_commerce', 33);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('jazigo-afife', '/images/projects/jazigo-afife/thumbnail.jpg', '/images/projects/jazigo-afife/1.svg', 'equipments_services', 34);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-dos-loios', '/images/projects/casa-dos-loios/thumbnail.jpg', '/images/projects/casa-dos-loios/1.svg', 'rehabilitation,tourism', 8);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-jovim', '/images/projects/casa-jovim/thumbnail.jpg', '/images/projects/casa-jovim/1.svg', 'single_family', 6);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-da-baixa', '/images/projects/casa-da-baixa/thumbnail.jpg', '/images/projects/casa-da-baixa/1.svg', 'rehabilitation,collective,tourism', 2);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('pizza-&-drinks', '/images/projects/pizza-&-drinks/thumbnail.jpg', '/images/projects/pizza-&-drinks/1.svg', 'rehabilitation,interior,restoration_commerce', 13);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-fvd', '/images/projects/casa-fvd/thumbnail.jpg', '/images/projects/casa-fvd/1.svg', 'rehabilitation,single_family', 12);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('ed-s-lazaro', '/images/projects/ed-s-lazaro/thumbnail.jpg', '/images/projects/ed-s-lazaro/1.svg', 'rehabilitation,collective,tourism', 16);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('pizzaria-presto-cedofeita', '/images/projects/pizzaria-presto-cedofeita/thumbnail.jpg', '/images/projects/pizzaria-presto-cedofeita/1.svg', 'restoration_commerce', 35);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-rua-das-flores', '/images/projects/casa-rua-das-flores/thumbnail.jpg', '/images/projects/casa-rua-das-flores/1.svg', 'tourism', 26);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('ed-cedofeita-i', '/images/projects/ed-cedofeita-i/thumbnail.jpg', '/images/projects/ed-cedofeita-i/1.svg', 'rehabilitation,collective', 37);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-no-douro', '/images/projects/casa-no-douro/thumbnail.jpg', '/images/projects/casa-no-douro/1.svg', 'single_family', 10);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('restaurante-pateo-de-tanger', '/images/projects/restaurante-pateo-de-tanger/thumbnail.jpg', '/images/projects/restaurante-pateo-de-tanger/1.svg', 'interior,restoration_commerce', 27);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-guerra-junqueiro', '/images/projects/casa-guerra-junqueiro/thumbnail.jpg', '/images/projects/casa-guerra-junqueiro/1.svg', 'equipments_services,single_family', 15);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-nelas', '/images/projects/casa-nelas/thumbnail.jpg', '/images/projects/casa-nelas/1.svg', 'single_family', 40);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('ed-cedofeita-ii', '/images/projects/ed-cedofeita-ii/thumbnail.jpg', '/images/projects/ed-cedofeita-ii/1.svg', 'collective,tourism', 42);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('ed-belomonte', '/images/projects/ed-belomonte/thumbnail.jpg', '/images/projects/ed-belomonte/1.svg', 'tourism', 24);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-caldeireiros', '/images/projects/casa-caldeireiros/thumbnail.jpg', '/images/projects/casa-caldeireiros/1.svg', 'rehabilitation,tourism', 14);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-esposende', '/images/projects/casa-esposende/thumbnail.jpg', '/images/projects/casa-esposende/1.svg', 'rehabilitation,single_family', 21);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-b-vilarinha', '/images/projects/casa-b-vilarinha/thumbnail.jpg', '/images/projects/casa-b-vilarinha/1.svg', 'rehabilitation,single_family', 9);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('ed-clerigos', '/images/projects/ed-clerigos/thumbnail.jpg', '/images/projects/ed-clerigos/1.svg', 'rehabilitation,collective,tourism', 29);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-povoa', '/images/projects/casa-povoa/thumbnail.jpg', '/images/projects/casa-povoa/1.svg', 'rehabilitation,single_family', 32);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('restaurante-bocca', '/images/projects/restaurante-bocca/thumbnail.jpg', '/images/projects/restaurante-bocca/1.svg', 'interior,restoration_commerce', 4);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-gondarem', '/images/projects/casa-gondarem/thumbnail.jpg', '/images/projects/casa-gondarem/1.svg', 'rehabilitation,single_family', 41);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('restaurante-cacau-wine-terrace', '/images/projects/restaurante-cacau-wine-terrace/thumbnail.jpg', '/images/projects/restaurante-cacau-wine-terrace/1.svg', 'restoration_commerce', 11);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('bancada-espaco-agros', '/images/projects/bancada-espaco-agros/thumbnail.jpg', '/images/projects/bancada-espaco-agros/1.svg', 'equipments_services', 5);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('edificio-cantina-espaco-agros', '/images/projects/edificio-cantina-espaco-agros/thumbnail.jpg', '/images/projects/edificio-cantina-espaco-agros/1.svg', 'equipments_services', 7);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('reab-anexos-agricolas', '/images/projects/reab-anexos-agricolas/thumbnail.jpg', '/images/projects/reab-anexos-agricolas/1.svg', 'rehabilitation,equipments_services,tourism', 17);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('edificio-exposicoes-espaco-agros', '/images/projects/edificio-exposicoes-espaco-agros/thumbnail.jpg', '/images/projects/edificio-exposicoes-espaco-agros/1.svg', 'equipments_services', 18);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('sede-ucanorte-xxi', '/images/projects/sede-ucanorte-xxi/thumbnail.jpg', '/images/projects/sede-ucanorte-xxi/1.svg', 'equipments_services', 19);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('escritorios-gaia', '/images/projects/escritorios-gaia/thumbnail.jpg', '/images/projects/escritorios-gaia/1.svg', 'interior,equipments_services', 20);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-grande-arouca', '/images/projects/casa-grande-arouca/thumbnail.jpg', '/images/projects/casa-grande-arouca/1.svg', 'rehabilitation,single_family', 25);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('estudo-urbanistico-espaco-agros', '/images/projects/estudo-urbanistico-espaco-agros/thumbnail.jpg', '/images/projects/estudo-urbanistico-espaco-agros/1.svg', 'urban_studies', 28);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('quinta-santana', '/images/projects/quinta-santana/thumbnail.jpg', '/images/projects/quinta-santana/1.svg', 'single_family', 30);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-antas', '/images/projects/casa-antas/thumbnail.jpg', '/images/projects/casa-antas/1.svg', 'rehabilitation,single_family', 36);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('habitacao-paranhos', '/images/projects/habitacao-paranhos/thumbnail.jpg', '/images/projects/habitacao-paranhos/1.svg', 'rehabilitation,interior,single_family', 38);
INSERT INTO projects (id, thumbnail, image, categories, order_number) VALUES ('casa-mgc', '/images/projects/casa-mgc/thumbnail.jpg', '/images/projects/casa-mgc/1.svg', 'rehabilitation,single_family', 39);

-- PROJECTS DETAILS PT
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (1, 'Casa Murtinheira', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (2, 'Palacete Av. Boavista', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (3, 'Edifício Sede, Espaço Agros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (4, 'Entrada Eventos, Espaço Agros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (5, 'Casa Cadouços', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (6, 'Empatias', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (7, 'Jazigo Afife', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (8, 'Casa dos Lóios', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (9, 'Casa Jovim', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (10, 'Casa da Baixa', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (11, 'Pizza & Drinks', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (12, 'Casa FVD', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (13, 'Ed. S. Lázaro', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (14, 'Pizzaria Presto Cedofeita', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (15, 'Casa Rua das Flores', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (16, 'Ed. Cedofeita I', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (17, 'Casa no Douro', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (18, 'Restaurante Páteo de Tânger', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (19, 'Casa Guerra Junqueiro', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (20, 'Casa nelas', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (21, 'Ed. Cedofeita II', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (22, 'Ed. Belomonte', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (23, 'Casa Caldeireiros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (24, 'Casa Esposende', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (25, 'Casa B. Vilarinha', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (26, 'Ed. Clérigos', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (27, 'Casa Póvoa', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (28, 'Restaurante Bocca', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (29, 'Casa Gondarém', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (30, 'Restaurante Cacau Wine Terrace', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (31, 'Bancada Espaço Agros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (32, 'Edifício Cantina Espaço Agros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (33, 'Reabilitação Anexos Agrícolas', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (34, 'Edifício Exposições Espaço Agros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (35, 'Sede Ucanorte XXI', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (36, 'Escritórios V. N. Gaia', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (37, 'Casa Grande Arouca', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (38, 'Estudo Urbanístico Espaço Agros', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (39, 'Quinta Santana', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (40, 'Casa Antas', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (41, 'Habitação Paranhos', '', '', 'pt');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (42, 'Casa MGC', '', '', 'pt');

-- PROJECTS DETAILS EN
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (1, 'Casa Murtinheira', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (2, 'Palacete Av. Boavista', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (3, 'Edifício Sede, Espaço Agros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (4, 'Entrada Eventos, Espaço Agros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (5, 'Casa Cadouços', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (6, 'Empatias', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (7, 'Jazigo Afife', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (8, 'Casa dos Lóios', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (9, 'Casa Jovim', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (10, 'Casa da Baixa', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (11, 'Pizza & Drinks', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (12, 'Casa FVD', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (13, 'Ed. S. Lázaro', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (14, 'Pizzaria Presto Cedofeita', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (15, 'Casa Rua das Flores', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (16, 'Ed. Cedofeita I', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (17, 'Casa no Douro', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (18, 'Restaurante Páteo de Tânger', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (19, 'Casa Guerra Junqueiro', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (20, 'Casa nelas', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (21, 'Ed. Cedofeita II', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (22, 'Ed. Belomonte', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (23, 'Casa Caldeireiros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (24, 'Casa Esposende', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (25, 'Casa B. Vilarinha', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (26, 'Ed. Clérigos', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (27, 'Casa Póvoa', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (28, 'Restaurante Bocca', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (29, 'Casa Gondarém', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (30, 'Restaurante Cacau Wine Terrace', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (31, 'Bancada Espaço Agros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (32, 'Edifício Cantina Espaço Agros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (33, 'Reabilitação Anexos Agrícolas', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (34, 'Edifício Exposições Espaço Agros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (35, 'Sede Ucanorte XXI', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (36, 'Escritórios V. N. Gaia', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (37, 'Casa Grande Arouca', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (38, 'Estudo Urbanístico Espaço Agros', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (39, 'Quinta Santana', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (40, 'Casa Antas', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (41, 'Habitação Paranhos', '', '', 'en');
INSERT INTO projects_details (project_id, title, description, address, language) VALUES (42, 'Casa MGC', '', '', 'en');

INSERT INTO images (project_id, path) VALUES (1, '/images/projects/casa-murtinheira/1.jpg');
INSERT INTO images (project_id, path) VALUES (1, '/images/projects/casa-murtinheira/2.jpg');
INSERT INTO images (project_id, path) VALUES (1, '/images/projects/casa-murtinheira/3.jpg');
INSERT INTO images (project_id, path) VALUES (1, '/images/projects/casa-murtinheira/4.jpg');
INSERT INTO images (project_id, path) VALUES (1, '/images/projects/casa-murtinheira/5.jpg');
INSERT INTO images (project_id, path) VALUES (1, '/images/projects/casa-murtinheira/6.jpg');

INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/1.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/2.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/3.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/4.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/5.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/6.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/7.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/8.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/9.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/10.jpg');
INSERT INTO images (project_id, path) VALUES (4, '/images/projects/entrada-eventos-espaco-agros/11.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/1.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/2.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/3.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/4.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/5.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/6.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/7.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/8.jpg');
INSERT INTO images (project_id, path) VALUES (5, '/images/projects/casa-cadoucos/9.jpg');
INSERT INTO images (project_id, path) VALUES (6, '/images/projects/empatias/1.jpg');
INSERT INTO images (project_id, path) VALUES (6, '/images/projects/empatias/2.jpg');
INSERT INTO images (project_id, path) VALUES (6, '/images/projects/empatias/3.jpg');
INSERT INTO images (project_id, path) VALUES (7, '/images/projects/jazigo-afife/1.jpg');
INSERT INTO images (project_id, path) VALUES (7, '/images/projects/jazigo-afife/2.jpg');
INSERT INTO images (project_id, path) VALUES (7, '/images/projects/jazigo-afife/3.jpg');
INSERT INTO images (project_id, path) VALUES (7, '/images/projects/jazigo-afife/4.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/1.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/2.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/3.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/4.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/5.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/6.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/7.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/8.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/9.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/10.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/11.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/12.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/13.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/14.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/15.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/16.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/17.jpg');
INSERT INTO images (project_id, path) VALUES (8, '/images/projects/casa-dos-loios/18.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/1.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/2.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/3.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/4.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/5.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/6.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/7.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/8.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/9.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/10.jpg');
INSERT INTO images (project_id, path) VALUES (9, '/images/projects/casa-jovim/11.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/1.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/2.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/3.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/4.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/5.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/6.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/7.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/8.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/9.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/10.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/11.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/12.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/13.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/14.jpg');
INSERT INTO images (project_id, path) VALUES (10, '/images/projects/casa-da-baixa/15.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/1.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/2.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/3.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/4.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/5.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/6.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/7.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/8.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/9.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/10.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/11.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/12.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/13.jpg');
INSERT INTO images (project_id, path) VALUES (11, '/images/projects/pizza-&-drinks/14.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/1.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/2.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/3.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/4.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/5.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/6.jpg');
INSERT INTO images (project_id, path) VALUES (12, '/images/projects/casa-fvd/7.jpg');

INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/1.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/2.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/3.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/4.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/5.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/6.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/7.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/8.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/9.jpg');
INSERT INTO images (project_id, path) VALUES (31, '/images/projects/bancada-espaco-agros/10.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/1.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/2.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/3.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/4.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/5.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/6.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/7.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/8.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/9.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/10.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/11.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/12.jpg');
INSERT INTO images (project_id, path) VALUES (32, '/images/projects/edificio-cantina-espaco-agros/13.jpg');

INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/1.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/2.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/3.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/4.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/5.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/6.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/7.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/8.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/9.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/10.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/11.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/12.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/13.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/14.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/15.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/16.jpg');
INSERT INTO images (project_id, path) VALUES (34, '/images/projects/edificio-exposicoes-espaco-agros/17.jpg');

-- TEAM
INSERT INTO team (name, order_number) VALUES ('Jorge Alves', 1);
INSERT INTO team (name, order_number) VALUES ('Filipa Russell Alves', 2);
INSERT INTO team (name, order_number) VALUES ('Ivo Machado', 3);
INSERT INTO team (name, order_number) VALUES ('Vânia Simões', 4);
INSERT INTO team (name, order_number) VALUES ('Artur Soares', 5);
INSERT INTO team (name, order_number) VALUES ('Rita Cunha', 6);
INSERT INTO team (name, order_number) VALUES ('Alexandra Ferreira', 7);
INSERT INTO team (name, order_number) VALUES ('Açucena Magano', 8);
INSERT INTO team (name, order_number) VALUES ('António Miguel Monteiro', 9);
INSERT INTO team (name, order_number) VALUES ('Cátia Meirinhos', 10);
INSERT INTO team (name, order_number) VALUES ('Susana Ferraz', 11);
INSERT INTO team (name, order_number) VALUES ('Inês Pimentel', 12);
INSERT INTO team (name, order_number) VALUES ('Ana Simões', 13);
INSERT INTO team (name, order_number) VALUES ('Lara Rodrigues', 14);
INSERT INTO team (name, order_number) VALUES ('João Tomás Braga', 15);
INSERT INTO team (name, order_number) VALUES ('Fernando Ferrão', 16);
INSERT INTO team (name, order_number) VALUES ('Pedro Figueiredo', 17);
INSERT INTO team (name, order_number) VALUES ('Pedro Carvalho', 18);
INSERT INTO team (name, order_number) VALUES ('Rui Lamas', 19);
INSERT INTO team (name, order_number) VALUES ('Marta Gomes', 20);
INSERT INTO team (name, order_number) VALUES ('Sofia Jordão', 21);
INSERT INTO team (name, order_number) VALUES ('Nuno Marques', 22);
INSERT INTO team (name, order_number) VALUES ('Luís Almeida', 23);
INSERT INTO team (name, order_number) VALUES ('Manuela Braga', 24);
INSERT INTO team (name, order_number) VALUES ('Pedro Aguiar', 25);
INSERT INTO team (name, order_number) VALUES ('Eduardo Azevedo', 26);
INSERT INTO team (name, order_number) VALUES ('João Paulo Oliveira', 27);
INSERT INTO team (name, order_number) VALUES ('Edgar Soares', 28);
INSERT INTO team (name, order_number) VALUES ('Alice Prata', 29);
INSERT INTO team (name, order_number) VALUES ('Jorge Silva', 30);


-- CURRICULUM PT
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'RECUPERAÇÃO E AMPLIAÇÃO DE HABITAÇÃO', 'Rua de Tânger, Porto', '2015', 'Em construção', 'pt', 1);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'REMODELAÇÃO DE MORADIA UNIFAMILIAR', 'RUA PEDRO TEIXEIRA, ANTAS, PORTO', '2012-2013', 'Construída', 'pt', 2);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR', 'QUINTA DO MONDEGO, NELAS', '2014', 'Projecto de Execução concluído', 'pt', 3);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR', 'FRENTE MARÍTIMA DE VALADARES – VILA NOVA DE GAIA', '2012-2013', 'Projecto de Licenciamento', 'pt', 4);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'REMODELAÇÃO DE MORADIA UNIFAMILIAR', 'RUA FERNÃO VAZ DOURADO, FOZ DO DOURO PORTO', '2012', 'Construída', 'pt', 5);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR', 'QUINTA DAS LUZES, JOVIM - GONDOMAR', '2011', 'Construída', 'pt', 6);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR PARA FÉRIAS', 'SÃO COSMADO, ARMAMAR', '2010', 'Construída', 'pt', 7);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA', 'RUA DE PEREIRÓ, PORTO', '2009', 'Estudo Prévio', 'pt', 8);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA (42 Apart.)', 'TRAVESSA JOSÉ FONTANA, VILA NOVA DE GAIA', '2005', 'Construído', 'pt', 9);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA (10 Apart-Moradia)', 'AZURARA, VILA DO CONDE', '2005', 'Projecto de Execução concluído', 'pt', 10);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA (100 Apart.)', 'RUA DO RIO DA FONTE, VILA NOVA DE GAIA', '2004', 'Construído', 'pt', 11);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'REMODELAÇÃO E AMPLIAÇÃO DE MORADIA', 'BAIRRO MARECHAL GOMES DA COSTA, PORTO', '2003', 'Construída', 'pt', 12);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR', 'TOUGUINHÓ, VILA DO CONDE', '2003', 'Projecto de Execução concluído', 'pt', 13);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR', 'MODIVAS, VILA DO CONDE', '2002', 'Projecto de Execução concluído', 'pt', 14);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO MULTIFAMILIAR', 'MODIVAS, VILA DO CONDE', '2002', 'Construído', 'pt', 15);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA (16 fogos)', 'AZURARA - VILA DO CONDE', '2002', 'Projecto de Licenciamento', 'pt', 16);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIOS DE HABITAÇÃO, COMÉRCIO E SERVIÇOS – EMPREENDIMENTOS V8 E PARCAUTO', 'VILA NOVA DE GAIA', '2002', 'Estudo sem continuidade', 'pt', 17);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA COM (24 fogos)', 'AZURARA - VILA DO CONDE', '2002', 'Projecto de Licenciamento', 'pt', 18);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'EDIFÍCIO DE HABITAÇÃO COLECTIVA (110 fogos)', 'RUA DA FONTE, V N GAIA', '2001', 'Construído', 'pt', 19);
INSERT INTO curriculum (project_id, description, address, year, state, language, order_number) VALUES (NULL, 'MORADIA UNIFAMILIAR', 'PALHEIRA – COIMBRA',  '', '', 'pt', 20);


-- DISTINCTIONS PT
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (3, 'painel 1 de apresentação para o Prémio Secil, edição de 2014', '/images/distinctions/1.jpg', 'pt', 1);
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (3, 'painel 2 de apresentação para o Prémio Secil, edição de 2014', '/images/distinctions/2.jpg', 'pt', 2);
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (NULL, 'exposição Câmara Municipal do Porto do Prémio João de Almada, edição de 2014', '/images/distinctions/3.jpg', 'pt', 3);
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (8, 'painel 1 de apresentação para o Prémio João de Almada, edição de 2014', '/images/distinctions/4.jpg', 'pt', 4);
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (8, 'painel 2 de apresentação para o Prémio João de Almada, edição de 2014', '/images/distinctions/5.jpg', 'pt', 5);
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (NULL, 'roteiro referente à distinção Respect for Architecture 2012 Porto', '/images/distinctions/6.jpg', 'pt', 6);
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (NULL, 'FALTA DESCRICAO', '/images/distinctions/7.mp4', 'pt', 7); -- MOVIE
INSERT INTO distinctions (project_id, distinction, path, language, order_number) VALUES (10, 'cartaz referente à distinção Respect for Architecture 2012 Porto', '/images/distinctions/8.jpg', 'pt', 8);


-- LINKS PT
INSERT INTO links (project_id, description, link, language, order_number) VALUES (3, 'https://www.archdaily.com.br/br/704139/sede-agros-slash-rocha-leite-arquitectos-associados', 'https://www.archdaily.com.br/br/704139/sede-agros-slash-rocha-leite-arquitectos-associados', 'pt', 1);
INSERT INTO links (project_id, description, link, language, order_number) VALUES (10, 'Respect for Architecture 2012 Porto', 'http://www.norte41.oasrn.org/pt-pt/content/casa-da-baixa', 'pt', 2);
INSERT INTO links (project_id, description, link, language, order_number) VALUES (10, 'Respect for Architecture 2012 Porto', 'http://p3.publico.pt/cultura/arquitectura/4418/respect-architecture-20-espacos-do-porto-em-exposicao', 'pt', 3);
INSERT INTO links (project_id, description, link, language, order_number) VALUES (10, 'https://www.archdaily.com.br/br/01-98920/casa-da-baixa-slash-rocha-leite-arquitectos-associados', 'https://www.archdaily.com.br/br/01-98920/casa-da-baixa-slash-rocha-leite-arquitectos-associados', 'pt', 4);
-- LINKS EN
INSERT INTO links (project_id, description, link, language, order_number) VALUES (3, '652 - Rocha Leite Arquitectos Associados | Sede Agros | Póvoa do Varzim, Pt (182 img)', 'http://ultimasreportagens.com/ultimas.php', 'en', 1);
INSERT INTO links (project_id, description, link, language, order_number) VALUES (3, 'https://www.archdaily.com/324138/agros-headquarters-rocha-leite-arquitectos-associados', 'https://www.archdaily.com/324138/agros-headquarters-rocha-leite-arquitectos-associados', 'en', 2);
INSERT INTO links (project_id, description, link, language, order_number) VALUES (10, 'https://www.archdaily.com/333063/casa-da-baixa-rocha-leite-arquitectos-associados', 'https://www.archdaily.com/333063/casa-da-baixa-rocha-leite-arquitectos-associados', 'en', 3);