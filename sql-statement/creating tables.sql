CREATE DATABASE lotr;
USE lotr;
CREATE TABLE users
(
	id VARCHAR(50) PRIMARY KEY NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    question INTEGER NOT NULL,
    email VARCHAR(250),
    hero_id INTEGER
);
CREATE TABLE questions
(
	id INTEGER PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    question VARCHAR(1000) NOT NULL,
    answerA VARCHAR(1000) NOT NULL,
    answerB VARCHAR(1000) NOT NULL,
    answerC VARCHAR(1000) NOT NULL,
    answerD VARCHAR(1000) NOT NULL
);
CREATE TABLE heros
(
	id INTEGER PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(1000)
);
CREATE TABLE user_question_hero
(
	user_id VARCHAR(50),
    question_id INTEGER,
    hero_id INTEGER
);
ALTER TABLE users
ADD CONSTRAINT
fk_hero_id FOREIGN KEY (hero_id)
REFERENCES
heros(id);

ALTER TABLE user_question_hero
ADD CONSTRAINT
fk2_hero_id FOREIGN KEY (hero_id)
REFERENCES
heros(id);

ALTER TABLE user_question_hero
ADD CONSTRAINT
fk_question_id FOREIGN KEY (question_id)
REFERENCES
questions(id);

ALTER TABLE user_question_hero
ADD CONSTRAINT
fk_user_id FOREIGN KEY (user_id)
REFERENCES
users(id);
