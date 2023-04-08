CREATE DATABASE music_app_v2;

USE music_app_v2;


INSERT INTO user_types (name) VALUES ('free');
INSERT INTO user_types (name) VALUES ('standard');
INSERT INTO user_types (name) VALUES ('premium');

SELECT id FROM user_types WHERE name = 'premium';

Insert INTO users (email, first_name, last_name, password, user_type_id)
VALUES ('janedoe@example.com', 'Jane', 'Doe', 'some_hashed_password', 3);

SELECT * FROM users;

