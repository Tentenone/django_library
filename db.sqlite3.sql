BEGIN TRANSACTION;
DROP TABLE IF EXISTS "catalog_genre";
CREATE TABLE IF NOT EXISTS "catalog_genre" (
	"id"	integer NOT NULL,
	"name"	varchar(200) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "catalog_book";
CREATE TABLE IF NOT EXISTS "catalog_book" (
	"id"	integer NOT NULL,
	"title"	varchar(200) NOT NULL,
	"author_id"	integer,
	"summary"	text NOT NULL,
	"isbn"	varchar(13) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("author_id") REFERENCES "catalog_author"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "catalog_book_genre";
CREATE TABLE IF NOT EXISTS "catalog_book_genre" (
	"id"	integer NOT NULL,
	"book_id"	integer NOT NULL,
	"genre_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("book_id") REFERENCES "catalog_book"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("genre_id") REFERENCES "catalog_genre"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "catalog_bookinstance";
CREATE TABLE IF NOT EXISTS "catalog_bookinstance" (
	"id"	char(32) NOT NULL,
	"book_id"	integer,
	"imprint"	varchar(200) NOT NULL,
	"due_back"	date,
	"borrower_id"	integer,
	"status"	varchar(1) NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("book_id") REFERENCES "catalog_book"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("borrower_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "catalog_author";
CREATE TABLE IF NOT EXISTS "catalog_author" (
	"id"	integer NOT NULL,
	"first_name"	varchar(100) NOT NULL,
	"last_name"	varchar(100) NOT NULL,
	"date_of_birth"	date,
	"date_of_death"	date,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"group_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id"	integer NOT NULL,
	"user_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL,
	"action_time"	datetime NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	integer NOT NULL,
	"action_flag"	smallint unsigned NOT NULL CHECK("action_flag" >= 0),
	FOREIGN KEY("user_id") REFERENCES "auth_user"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE IF NOT EXISTS "auth_user" (
	"id"	integer NOT NULL,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"first_name"	varchar(30) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"last_name"	varchar(150) NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL,
	"name"	varchar(150) NOT NULL UNIQUE,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "django_session";
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
INSERT INTO "catalog_genre" ("id","name") VALUES (1,'Science Fiction'),
 (2,'Fantasy'),
 (3,'Historical novel');
INSERT INTO "catalog_book" ("id","title","author_id","summary","isbn") VALUES (1,'Захар Беркут',1,'Боярин, намагаючись узурпувати владу, вступає в конфлікт з громадою тухольців, які звикли жити незалежно. Протистояння досягає апогею, коли Тугар Вовк під час ради вбиває Митька Вояку, який мав свідчити проти нього, — і громада проганяє вбивцю.','1234567891234'),
 (2,'Борислав сміється',1,'Повість присвячена опису страйку на нафтовому промислі в місті Борислав. На її написання письменника надихнули справжні події. В 60-их роках 19 ст. промислова революція швидкими темпами розвивалася в Австро-Угорській імперії, включно із Західною Україною. Із розвитком промисловості почав виникати також робітничий клас. Під впливом ідей соціалізму стала формуватися організована боротьба робітників за свої права. Розвиток робітничого руху в Україні дещо відставав за часом від європейського, але в 70-их почалися перші страйки, що було новим феноменом у доти переважно селянській Галичині.','1234567899876'),
 (3,'The Hobbit',2,'The story is told in the form of an episodic quest, and most chapters introduce a specific creature or type of creature of Tolkien''s geography. Bilbo gains a new level of maturity, competence, and wisdom by accepting the disreputable, romantic, fey, and adventurous sides of his nature and applying his wits and common sense. The story reaches its climax in the Battle of Five Armies, where many of the characters and creatures from earlier chapters re-emerge to engage in conflict.','1345674787681'),
 (4,'The Lord of the Rings',2,'The title of the novel refers to the story''s main antagonist, the Dark Lord Sauron,[a] who had in an earlier age created the One Ring to rule the other Rings of Power as the ultimate weapon in his campaign to conquer and rule all of Middle-earth. From quiet beginnings in the Shire, a hobbit land not unlike the English countryside, the story ranges across Middle-earth, following the course of the War of the Ring through the eyes of its characters, most notably the hobbits Frodo, Sam, Merry and Pippin.','5849385858824');
INSERT INTO "catalog_book_genre" ("id","book_id","genre_id") VALUES (2,1,3),
 (3,2,3),
 (4,3,2),
 (5,4,2);
INSERT INTO "catalog_bookinstance" ("id","book_id","imprint","due_back","borrower_id","status") VALUES ('9d83454d0c63481b97f36b7e475870c6',1,'Львів: Друкарня Товариства ім. Шевченка під зарядом К. Бернадського','2020-06-17',1,'o'),
 ('c98e523ee72c485bb380429e2ca51504',1,'Львів: Друкарня Товариства ім. Шевченка під зарядом К. Бернадського',NULL,NULL,'m'),
 ('45190ddac8424520884438e7da89111e',2,'Держлітвидав України',NULL,NULL,'m'),
 ('d91efba0a5ae48f2b2b6cce977806843',2,'Львів: Друкарня Товариства ім. Шевченка під зарядом К. Бернадського','2020-06-21',3,'o'),
 ('86b9db50436c4fc2b3236e0054821e04',3,'Boston: Houghton Mifflin','2020-05-31',2,'o'),
 ('86b9db50436c4fc2b3236e0054821e33',3,'Oxford University Press',NULL,NULL,'a'),
 ('bd3e715f952948f29a2348cf7a589e7c',4,'The J.R.R.','2020-06-10',3,'o');
INSERT INTO "catalog_author" ("id","first_name","last_name","date_of_birth","date_of_death") VALUES (1,'Іванко','Франко','1856-08-27','1916-05-28'),
 (2,'John','Tolkien','1892-01-03','1973-09-02'),
 (3,'Gjegoshch','Bjenshchyshchykevych','1943-01-12',NULL);
INSERT INTO "django_migrations" ("id","app","name","applied") VALUES (1,'contenttypes','0001_initial','2020-05-19 17:14:44.775946'),
 (2,'auth','0001_initial','2020-05-19 17:14:44.976976'),
 (3,'admin','0001_initial','2020-05-19 17:14:45.134073'),
 (4,'admin','0002_logentry_remove_auto_add','2020-05-19 17:14:45.319143'),
 (5,'admin','0003_logentry_add_action_flag_choices','2020-05-19 17:14:45.482896'),
 (6,'contenttypes','0002_remove_content_type_name','2020-05-19 17:14:45.707656'),
 (7,'auth','0002_alter_permission_name_max_length','2020-05-19 17:14:45.838008'),
 (8,'auth','0003_alter_user_email_max_length','2020-05-19 17:14:45.995805'),
 (9,'auth','0004_alter_user_username_opts','2020-05-19 17:14:46.149211'),
 (10,'auth','0005_alter_user_last_login_null','2020-05-19 17:14:46.291704'),
 (11,'auth','0006_require_contenttypes_0002','2020-05-19 17:14:46.414856'),
 (12,'auth','0007_alter_validators_add_error_messages','2020-05-19 17:14:46.558211'),
 (13,'auth','0008_alter_user_username_max_length','2020-05-19 17:14:46.722756'),
 (14,'auth','0009_alter_user_last_name_max_length','2020-05-19 17:14:46.880271'),
 (15,'auth','0010_alter_group_name_max_length','2020-05-19 17:14:47.053495'),
 (16,'auth','0011_update_proxy_permissions','2020-05-19 17:14:47.197421'),
 (17,'sessions','0001_initial','2020-05-19 17:14:47.355688');
INSERT INTO "auth_group_permissions" ("id","group_id","permission_id") VALUES (1,1,5),
 (2,1,6),
 (3,1,7),
 (4,1,8),
 (5,1,13),
 (6,1,14),
 (7,1,15),
 (8,1,16),
 (9,1,17),
 (10,1,18),
 (11,1,19),
 (12,1,20),
 (13,1,21),
 (14,1,22),
 (15,1,23),
 (16,1,24),
 (17,1,25),
 (18,1,26),
 (19,1,27),
 (20,1,28),
 (21,1,29),
 (22,1,30),
 (23,1,31),
 (24,1,32),
 (25,1,33),
 (26,1,34),
 (27,1,35),
 (28,1,36),
 (29,1,37),
 (30,1,38),
 (31,1,39),
 (32,1,40),
 (33,3,1),
 (34,3,2),
 (35,3,3),
 (36,3,4),
 (37,3,5),
 (38,3,6),
 (39,3,7),
 (40,3,8),
 (41,3,9),
 (42,3,10),
 (43,3,11),
 (44,3,12),
 (45,3,13),
 (46,3,14),
 (47,3,15),
 (48,3,16),
 (49,3,17),
 (50,3,18),
 (51,3,19),
 (52,3,20),
 (53,3,21),
 (54,3,22),
 (55,3,23),
 (56,3,24),
 (57,3,25),
 (58,3,26),
 (59,3,27),
 (60,3,28),
 (61,3,29),
 (62,3,30),
 (63,3,31),
 (64,3,32),
 (65,3,33),
 (66,3,34),
 (67,3,35),
 (68,3,36),
 (69,3,37),
 (70,3,38),
 (71,3,39),
 (72,3,40),
 (73,1,41);
INSERT INTO "auth_user_groups" ("id","user_id","group_id") VALUES (1,1,3),
 (2,2,1);
INSERT INTO "auth_user_user_permissions" ("id","user_id","permission_id") VALUES (1,2,17),
 (2,2,18),
 (3,2,19),
 (4,2,20),
 (5,2,21),
 (6,2,22),
 (7,2,23),
 (8,2,24),
 (9,2,25),
 (10,2,26),
 (11,2,27),
 (12,2,28),
 (13,2,29),
 (14,2,30),
 (15,2,31),
 (16,2,32),
 (17,2,33),
 (18,2,34),
 (19,2,35),
 (20,2,36),
 (21,2,37),
 (22,2,38),
 (23,2,39),
 (24,2,40),
 (25,3,32),
 (26,3,36),
 (27,3,40),
 (28,3,20),
 (29,3,24),
 (30,3,28),
 (31,1,1),
 (32,1,2),
 (33,1,3),
 (34,1,4),
 (35,1,5),
 (36,1,6),
 (37,1,7),
 (38,1,8),
 (39,1,9),
 (40,1,10),
 (41,1,11),
 (42,1,12),
 (43,1,13),
 (44,1,14),
 (45,1,15),
 (46,1,16),
 (47,1,17),
 (48,1,18),
 (49,1,19),
 (50,1,20),
 (51,1,21),
 (52,1,22),
 (53,1,23),
 (54,1,24),
 (55,1,25),
 (56,1,26),
 (57,1,27),
 (58,1,28),
 (59,1,29),
 (60,1,30),
 (61,1,31),
 (62,1,32),
 (63,1,33),
 (64,1,34),
 (65,1,35),
 (66,1,36),
 (67,1,37),
 (68,1,38),
 (69,1,39),
 (70,1,40),
 (71,2,41);
INSERT INTO "django_admin_log" ("id","action_time","object_id","object_repr","change_message","content_type_id","user_id","action_flag") VALUES (1,'2020-05-19 17:24:56.334256','1','Франко, Іван','[{"added": {}}]',10,1,1),
 (2,'2020-05-19 17:27:47.802415','2','Tolkien, John','[{"added": {}}]',10,1,1),
 (3,'2020-05-19 17:30:43.332602','1','Science Fiction','[{"added": {}}]',7,1,1),
 (4,'2020-05-19 17:31:00.637871','2','Fantasy','[{"added": {}}]',7,1,1),
 (5,'2020-05-19 17:31:22.311888','3','Historical novel','[{"added": {}}]',7,1,1),
 (6,'2020-05-19 17:35:51.454340','1','Захар Беркут','[{"added": {}}, {"added": {"name": "book instance", "object": "\u0417\u0430\u0445\u0430\u0440 \u0411\u0435\u0440\u043a\u0443\u0442    status:2020-06-17     due_back:o      id:9d83454d-0c63-481b-97f3-6b7e475870c6"}}]',8,1,1),
 (7,'2020-05-19 17:36:58.132949','1','Захар Беркут','[{"added": {"name": "book instance", "object": "\u0417\u0430\u0445\u0430\u0440 \u0411\u0435\u0440\u043a\u0443\u0442    status:None     due_back:m      id:c98e523e-e72c-485b-b380-429e2ca51504"}}]',8,1,2),
 (8,'2020-05-19 17:38:17.661792','1','Захар Беркут','[{"changed": {"fields": ["Genre"]}}]',8,1,2),
 (9,'2020-05-19 17:40:35.206060','2','Борислав сміється','[{"added": {}}, {"added": {"name": "book instance", "object": "\u0411\u043e\u0440\u0438\u0441\u043b\u0430\u0432 \u0441\u043c\u0456\u0454\u0442\u044c\u0441\u044f    status:None     due_back:m      id:45190dda-c842-4520-8844-38e7da89111e"}}]',8,1,1),
 (10,'2020-05-19 17:41:33.833914','2','Librarian','[{"added": {}}]',4,1,1),
 (11,'2020-05-19 17:42:50.215771','2','Librarian','[{"changed": {"fields": ["First name", "Last name", "Email address", "Staff status", "User permissions", "Last login"]}}]',4,1,2),
 (12,'2020-05-19 17:43:33.300365','3','John','[{"added": {}}]',4,1,1),
 (13,'2020-05-19 17:45:03.393696','3','John','[{"changed": {"fields": ["First name", "Last name", "Email address", "User permissions", "Last login"]}}]',4,1,2),
 (14,'2020-05-19 17:45:37.039820','2','Alb','[{"changed": {"fields": ["Username"]}}]',4,1,2),
 (15,'2020-05-19 17:47:03.551829','1','Librarians','[{"added": {}}]',3,1,1),
 (16,'2020-05-19 17:48:09.893744','2','Visitor','[{"added": {}}]',3,1,1),
 (17,'2020-05-19 17:49:30.170342','1','serh','[{"changed": {"fields": ["First name", "Last name"]}}]',4,1,2),
 (18,'2020-05-19 17:50:05.686575','3','Administrator','[{"added": {}}]',3,1,1),
 (19,'2020-05-19 17:50:34.888436','1','serh','[{"changed": {"fields": ["Groups", "User permissions"]}}]',4,1,2),
 (20,'2020-05-19 17:51:21.473201','2','Alb','[{"changed": {"fields": ["Groups"]}}]',4,1,2),
 (21,'2020-05-19 17:54:25.149377','2','Tolkien, John','[{"added": {"name": "book", "object": "The Hobbit"}}]',10,1,2),
 (22,'2020-05-19 17:55:11.035251','2','Tolkien, John','[]',10,1,2),
 (23,'2020-05-19 17:55:35.564245','1','Франко, Іван','[{"changed": {"name": "book", "object": "\u0411\u043e\u0440\u0438\u0441\u043b\u0430\u0432 \u0441\u043c\u0456\u0454\u0442\u044c\u0441\u044f", "fields": ["Summary"]}}]',10,1,2),
 (24,'2020-05-19 17:56:59.690496','2','Tolkien, John','[{"added": {"name": "book", "object": "The Lord of the Rings"}}]',10,1,2),
 (25,'2020-05-19 17:58:28.000261','2','Борислав сміється','[{"added": {"name": "book instance", "object": "\u0411\u043e\u0440\u0438\u0441\u043b\u0430\u0432 \u0441\u043c\u0456\u0454\u0442\u044c\u0441\u044f    status:2020-06-21     due_back:o      id:d91efba0-a5ae-48f2-b2b6-cce977806843"}}]',8,1,2),
 (26,'2020-05-19 18:01:04.151302','3','The Hobbit','[{"added": {"name": "book instance", "object": "The Hobbit    status:2020-05-31     due_back:o      id:86b9db50-436c-4fc2-b323-6e0054821e04"}}, {"added": {"name": "book instance", "object": "The Hobbit    status:None     due_back:a      id:86b9db50-436c-4fc2-b323-6e0054821e33"}}]',8,1,2),
 (27,'2020-05-19 18:01:57.378582','4','The Lord of the Rings','[{"added": {"name": "book instance", "object": "The Lord of the Rings    status:2020-06-10     due_back:o      id:bd3e715f-9529-48f2-9a23-48cf7a589e7c"}}]',8,1,2),
 (28,'2020-05-21 06:27:46.196316','2','Alb','[{"changed": {"fields": ["User permissions"]}}]',4,1,2),
 (29,'2020-05-21 06:28:11.950385','1','Librarians','[{"changed": {"fields": ["Permissions"]}}]',3,1,2),
 (30,'2020-08-19 18:51:37.768716','4','фыв <script>alert(''Test alert''); </script>, ввак','',10,4,3);
INSERT INTO "django_content_type" ("id","app_label","model") VALUES (1,'admin','logentry'),
 (2,'auth','permission'),
 (3,'auth','group'),
 (4,'auth','user'),
 (5,'contenttypes','contenttype'),
 (6,'sessions','session'),
 (7,'catalog','genre'),
 (8,'catalog','book'),
 (9,'catalog','bookinstance'),
 (10,'catalog','author');
INSERT INTO "auth_permission" ("id","content_type_id","codename","name") VALUES (1,1,'add_logentry','Can add log entry'),
 (2,1,'change_logentry','Can change log entry'),
 (3,1,'delete_logentry','Can delete log entry'),
 (4,1,'view_logentry','Can view log entry'),
 (5,2,'add_permission','Can add permission'),
 (6,2,'change_permission','Can change permission'),
 (7,2,'delete_permission','Can delete permission'),
 (8,2,'view_permission','Can view permission'),
 (9,3,'add_group','Can add group'),
 (10,3,'change_group','Can change group'),
 (11,3,'delete_group','Can delete group'),
 (12,3,'view_group','Can view group'),
 (13,4,'add_user','Can add user'),
 (14,4,'change_user','Can change user'),
 (15,4,'delete_user','Can delete user'),
 (16,4,'view_user','Can view user'),
 (17,5,'add_contenttype','Can add content type'),
 (18,5,'change_contenttype','Can change content type'),
 (19,5,'delete_contenttype','Can delete content type'),
 (20,5,'view_contenttype','Can view content type'),
 (21,6,'add_session','Can add session'),
 (22,6,'change_session','Can change session'),
 (23,6,'delete_session','Can delete session'),
 (24,6,'view_session','Can view session'),
 (25,7,'add_genre','Can add genre'),
 (26,7,'change_genre','Can change genre'),
 (27,7,'delete_genre','Can delete genre'),
 (28,7,'view_genre','Can view genre'),
 (29,8,'add_book','Can add book'),
 (30,8,'change_book','Can change book'),
 (31,8,'delete_book','Can delete book'),
 (32,8,'view_book','Can view book'),
 (33,9,'add_bookinstance','Can add book instance'),
 (34,9,'change_bookinstance','Can change book instance'),
 (35,9,'delete_bookinstance','Can delete book instance'),
 (36,9,'view_bookinstance','Can view book instance'),
 (37,10,'add_author','Can add author'),
 (38,10,'change_author','Can change author'),
 (39,10,'delete_author','Can delete author'),
 (40,10,'view_author','Can view author'),
 (41,9,'can_mark_returned','Set book as returned');
INSERT INTO "auth_user" ("id","password","last_login","is_superuser","username","first_name","email","is_staff","is_active","date_joined","last_name") VALUES (1,'pbkdf2_sha256$180000$u2f7w3I06xPO$mjP6ofAhucsqmV7FNLmMT9kiquXPN5UOfabY8n7EZfU=','2020-08-14 13:10:23.026453',1,'serh','Serhio','serhkslv@gmail.com',1,1,'2020-05-19 17:19:18','Mathenko'),
 (2,'pbkdf2_sha256$180000$xeKOlxyLl45m$ZD+sq1ju/l0uZCibzWEIrBaCVR39AF1QzMtFRpUwkK8=','2020-08-14 12:39:41.243820',0,'Alb','Albertu','gav@gmail.cm',1,1,'2020-05-19 17:41:33','Gavarro'),
 (3,'pbkdf2_sha256$180000$0kuAmsql45ws$U9r3h2VVwTOZUH2Lz9tCF0FoSzMhjPzWf6oLQ78nxWM=','2020-08-14 14:31:37.620662',0,'John','John','hr@i.ua',0,1,'2020-05-19 17:43:32','Hrabenko'),
 (4,'pbkdf2_sha256$180000$6cPRTS0vUsKX$Y15Ij6uE1Fgkie/2hP+FgvUbMW6FAjpduT92j5hGg6o=','2020-08-19 18:52:56.505693',1,'Librarian','','22@rt.ua',1,1,'2020-08-14 13:13:05.745639','');
INSERT INTO "auth_group" ("id","name") VALUES (1,'Librarians'),
 (2,'Visitor'),
 (3,'Administrator');
INSERT INTO "django_session" ("session_key","session_data","expire_date") VALUES ('55nk5ijpbdlhja8j1jkaoefexr0hir1b','NTFkOWY4MWI4ZDJhZjE4ZDBjODhhODY4NWEzNTg1MGUzNzYxZGEwOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzdhNGIwZGQxNTg3ZGUzZjQ3N2IwMjljZGVjODY1NWJhYzFjNWJjIn0=','2020-06-02 18:04:39.331475'),
 ('x2f89oe55dk01g1p5y8bng4x309v6lgc','MWNjMDc4YWI2M2JlNTJmMWE2MzQ0MDdkMjE4NDEzZmI2YjJmMjBjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NzdhNGIwZGQxNTg3ZGUzZjQ3N2IwMjljZGVjODY1NWJhYzFjNWJjIiwibnVtX3Zpc2l0cyI6MX0=','2020-06-02 18:14:42.162609'),
 ('teaiziuwibh1bo1eeln7evoieh1n1ll1','Mzg0YWZjMGQ3NjM0ODJlNDRjNGNkMTZhYmQyMzAxNzQ0NzkwNGU2NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjc1NGUxZDgyYzdhMWJkMjE1MTZkYWE4MzMwMmUyOGMxZGE5NDE0IiwibnVtX3Zpc2l0cyI6N30=','2020-06-09 08:25:13.809776'),
 ('w3ai5qn40m5geybjx5dq2wy9t2ml7qhv','YTgyMDc1ZDkxN2IwNGMyMWRmOGY1Y2RmZTU0ZjRmNjg1ODgzOTE2NTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjc1NGUxZDgyYzdhMWJkMjE1MTZkYWE4MzMwMmUyOGMxZGE5NDE0IiwibnVtX3Zpc2l0cyI6NTZ9','2020-06-10 07:32:18.795319'),
 ('8iz2en59r4ce0vhdqopj2akhmhia3op5','MmJlMTYxZDdmMmQ3NjliMzM4ZjI0OTBlZGE3NGQyZWRhYjZhMjZiNzp7Im51bV92aXNpdHMiOjEsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhZjc1NGUxZDgyYzdhMWJkMjE1MTZkYWE4MzMwMmUyOGMxZGE5NDE0In0=','2020-08-28 12:39:41.448901'),
 ('cbyyfu6n6zu5c9g3wqd4p1ys46k5p966','NmU3NWE2NTY0ZTdmNGVlZjljMWE2OWM5N2I5MDg3ODA5NmZkZTE1Mzp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOTRjNjI1OGJhMTVlZmU4NjBiODFmZDRkYjU3OTY0MWQ4MjgyOGE3In0=','2020-08-28 14:31:37.473759'),
 ('e6rkqppo12x8yzb9ee097iiojey0iuxt','MzU3NDVjZTYwYTkzY2U3NGU2NWFlNWJhZjY5YjBhMjlhNTI0YTE0Zjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzhiMjk4ZmJlOWJmNTY0ZjMwNTVjYTZkYmVhNGUyN2Y2MDBiNzQ3In0=','2020-08-28 14:38:20.487306'),
 ('bdrujrur3cbj6armw98ck2a7hzzeulbt','MDMzZDAwNTQ2YzkzN2VmYzUzMmYzZWJjNDlhMzdmNzJkNjg1NDc4ODp7Im51bV92aXNpdHMiOjIsIl9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NmRlOGU4MWFhODhmOWM0N2IxNWE0YTdmZDkwOWE3NTg0ZDAwMGU1In0=','2020-09-01 14:49:38.976464'),
 ('fm3097qo9c30fty05t5av8y26kyy329s','YmY5MjNlM2JmOTYxNzcxMDdlOGU4OTFkNWZmMTlhYjdkODJiYzY1Nzp7Im51bV92aXNpdHMiOjJ9','2020-09-02 18:49:20.863000'),
 ('p46sj90j0vn9umzo4wrqywyb1egrt4ku','MDMzZDAwNTQ2YzkzN2VmYzUzMmYzZWJjNDlhMzdmNzJkNjg1NDc4ODp7Im51bV92aXNpdHMiOjIsIl9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NmRlOGU4MWFhODhmOWM0N2IxNWE0YTdmZDkwOWE3NTg0ZDAwMGU1In0=','2020-09-02 18:52:57.206261'),
 ('n0sfajonpxdybjenssk1d9oawqbwtt7b','YmQ4MGM3Mzg2ZDVkNmEzZThhNDQyMzBiY2E3ZTM1YTNjZGU5Y2NkOTp7Im51bV92aXNpdHMiOjF9','2020-09-17 14:30:22.852767');
DROP INDEX IF EXISTS "catalog_book_author_id_b0849980";
CREATE INDEX IF NOT EXISTS "catalog_book_author_id_b0849980" ON "catalog_book" (
	"author_id"
);
DROP INDEX IF EXISTS "catalog_book_genre_book_id_genre_id_d15f6922_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "catalog_book_genre_book_id_genre_id_d15f6922_uniq" ON "catalog_book_genre" (
	"book_id",
	"genre_id"
);
DROP INDEX IF EXISTS "catalog_book_genre_book_id_e5a77c43";
CREATE INDEX IF NOT EXISTS "catalog_book_genre_book_id_e5a77c43" ON "catalog_book_genre" (
	"book_id"
);
DROP INDEX IF EXISTS "catalog_book_genre_genre_id_77d7ffde";
CREATE INDEX IF NOT EXISTS "catalog_book_genre_genre_id_77d7ffde" ON "catalog_book_genre" (
	"genre_id"
);
DROP INDEX IF EXISTS "catalog_bookinstance_book_id_69f93415";
CREATE INDEX IF NOT EXISTS "catalog_bookinstance_book_id_69f93415" ON "catalog_bookinstance" (
	"book_id"
);
DROP INDEX IF EXISTS "catalog_bookinstance_borrower_id_0d71c37c";
CREATE INDEX IF NOT EXISTS "catalog_bookinstance_borrower_id_0d71c37c" ON "catalog_bookinstance" (
	"borrower_id"
);
DROP INDEX IF EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
DROP INDEX IF EXISTS "auth_group_permissions_group_id_b120cbf9";
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
DROP INDEX IF EXISTS "auth_group_permissions_permission_id_84c5c92e";
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
DROP INDEX IF EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" (
	"user_id",
	"group_id"
);
DROP INDEX IF EXISTS "auth_user_groups_user_id_6a12ed8b";
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" (
	"user_id"
);
DROP INDEX IF EXISTS "auth_user_groups_group_id_97559544";
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" (
	"group_id"
);
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" (
	"user_id",
	"permission_id"
);
DROP INDEX IF EXISTS "auth_user_user_permissions_user_id_a95ead1b";
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" (
	"user_id"
);
DROP INDEX IF EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c";
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" (
	"permission_id"
);
DROP INDEX IF EXISTS "django_admin_log_content_type_id_c4bce8eb";
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
DROP INDEX IF EXISTS "django_admin_log_user_id_c564eba6";
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
DROP INDEX IF EXISTS "django_content_type_app_label_model_76bd3d3b_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
DROP INDEX IF EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq";
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
DROP INDEX IF EXISTS "auth_permission_content_type_id_2f476e4b";
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
DROP INDEX IF EXISTS "django_session_expire_date_a5c62663";
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
COMMIT;
