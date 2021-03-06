-- loaded into db with rake db:seed

CREATE TABLE cc_show (
    id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(255),
    genre character varying(255),
    description character varying(512),
    color character varying(6),
    background_color character varying(6),
    live_stream_using_airtime_auth boolean DEFAULT 'f',
    live_stream_using_custom_auth boolean DEFAULT 'f',
    live_stream_user character varying(255),
    live_stream_pass character varying(255),
    linked boolean DEFAULT 'f' NOT NULL,
    is_linkable boolean DEFAULT 't' NOT NULL
);


CREATE TABLE cc_show_instances (
    id integer PRIMARY KEY AUTOINCREMENT NOT NULL ,
    starts timestamp without time zone NOT NULL,
    ends timestamp without time zone NOT NULL,
    show_id integer NOT NULL,
    record smallint DEFAULT 0,
    rebroadcast smallint DEFAULT 0,
    instance_id integer,
    file_id integer,
    time_filled interval,
    created timestamp without time zone NOT NULL,
    last_scheduled timestamp without time zone,
    modified_instance boolean DEFAULT 'f' NOT NULL
);


INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (1, 'Klangbecken', '', '', '', 'ffffff', 'b76c23', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (3, 'test 0', '', '', '', 'ffffff', 'b76c22', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (4, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (5, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (6, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (7, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (8, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (9, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (10, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (11, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (12, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (13, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (14, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (15, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (16, 'Groovexpress Pilot', '', '', '', '000000', '4333b8', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (17, 'Klangecken 2', '', '', '', 'ff0000', '237bdd', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (18, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (19, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (20, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (21, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (22, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (23, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (24, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (25, 'Unbenannte Sendung', '', '', '', '1b4f5c', '61b0ad', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (26, 'Groovexpress', 'http://www.groovexpress.com/', '', '', '000000', '65e365', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (27, 'Spazz-Time Kontinuum', 'http://www.rabe.ch/en/sendungen/musik/spazz-time-kontinuum.html', '', '', 'ffffff', '6d1234', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (28, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (29, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (31, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (33, 'Unbenannte Sendung', '', '', '', '', '', 't', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (34, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (35, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (36, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (37, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (38, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (39, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (40, 'Unbenannte Sendung', '', '', 'test', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (41, 'Unbenannte Sendung', '', '', '', '', '', 'f', 'f', '', '', 'f', 't');
INSERT INTO cc_show (id, name, url, genre, description, color, background_color, live_stream_using_airtime_auth, live_stream_using_custom_auth, live_stream_user, live_stream_pass, linked, is_linkable) VALUES (42, 'Archive Tester', '', '', 'jada jada', '000000', 'a9b61d', 'f', 'f', '', '', 'f', 't');

INSERT INTO cc_show (id, name, genre, description) VALUES (43, 'Dancefloor', 'Electronic', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (44, 'Galaxy Space Night', 'Electronic', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (45, 'Jazz am Sunntig', '', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (46, 'Radio Silbergrau', '', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (47, 'Pars Ava', '', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (48, 'Onda Libera', '', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (49, 'Best Of', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (50, 'Balgarski Tschass', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (51, 'Jadran', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (52, 'Gay Radio', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (53, 'unerhörtes-ungehörtes', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (54, 'der Morgen', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (55, 'Info', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (56, '70-80-90-Mambo!', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (57, 'The Vidiot', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (58, 'ganzOhr', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (59, 'HellasRadio', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (60, 'Lost in Disco', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (61, 'Bärner Schlagerwelt', 'Rock', '');
INSERT INTO cc_show (id, name, genre, description) VALUES (62, 'Worldwyld', 'Rock', '');



INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (18, '2014-05-01 08:30:00', '2014-05-01 09:30:00', 18, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 08:12:32', '2014-05-01 08:13:39', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (31, '2014-05-06 13:40:00', '2014-05-06 13:55:00', 31, 1, 0, NULL, 11853, '00:00:00', '2014-05-06 13:32:28', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (6, '2014-04-16 13:00:00', '2014-04-16 14:00:00', 6, 0, 0, NULL, NULL, '00:59:59.99152', '2014-04-16 12:06:42', '2014-04-16 12:24:52', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (54, '2016-01-14 13:00:00', '2016-01-14 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:48', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (7, '2014-04-16 14:00:00', '2014-04-16 15:00:00', 7, 0, 0, NULL, NULL, '01:00:44.3', '2014-04-16 12:30:46', '2014-04-16 12:47:26', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (19, '2014-05-01 10:15:00', '2014-05-01 10:18:27', 19, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 10:11:55', '2014-05-01 10:13:09', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (4, '2014-04-16 08:45:00', '2014-04-16 09:00:00', 4, 0, 0, NULL, NULL, '00:16:16.413454', '2014-04-16 08:40:14', '2014-04-16 08:41:06', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (55, '2016-01-21 13:00:00', '2016-01-21 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:48', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (9, '2014-04-16 15:00:00', '2014-04-16 16:00:00', 9, 0, 0, NULL, NULL, '01:00:44.3', '2014-04-16 12:55:09', '2014-04-16 12:55:23', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (1, '2014-04-16 10:00:00', '2014-04-16 11:00:00', 1, 0, 0, NULL, NULL, '01:06:34.65569', '2014-04-16 08:29:15', '2014-04-16 08:33:21', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (20, '2014-05-01 10:25:00', '2014-05-01 10:26:54', 20, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 10:19:20', '2014-05-01 10:19:30', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (8, '2014-04-16 16:00:00', '2014-04-16 17:00:00', 8, 0, 0, NULL, NULL, '01:00:44.3', '2014-04-16 12:53:33', '2014-04-16 12:53:54', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (33, '2014-05-06 14:20:00', '2014-05-06 14:30:00', 33, 1, 0, NULL, 11854, '00:00:00', '2014-05-06 14:15:36', '2014-05-06 14:16:20', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (26, '2014-05-06 19:00:00', '2014-05-06 20:00:00', 26, 1, 0, NULL, 11855, '00:00:00', '2014-05-02 15:51:11', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (21, '2014-05-01 10:30:00', '2014-05-01 11:30:00', 21, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 10:27:38', '2014-05-01 10:27:50', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (10, '2014-04-16 17:00:00', '2014-04-16 18:00:00', 10, 0, 0, NULL, NULL, '01:00:44.3', '2014-04-16 12:56:19', '2014-04-16 12:57:17', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (34, '2014-05-13 20:46:00', '2014-05-13 20:50:00', 34, 0, 0, NULL, NULL, '00:05:23.743878', '2014-05-13 20:40:56', '2014-05-13 20:45:37', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (22, '2014-05-01 11:45:00', '2014-05-01 12:45:00', 22, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 11:30:48', '2014-05-01 11:31:00', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (56, '2016-01-28 13:00:00', '2016-01-28 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:48', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (57, '2016-02-04 13:00:00', '2016-02-04 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:48', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (23, '2014-05-01 13:00:00', '2014-05-01 13:00:55', 23, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 12:45:39', '2014-05-01 12:45:51', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (12, '2014-04-16 18:00:00', '2014-04-16 19:00:00', 12, 0, 0, NULL, NULL, '01:01:33.2', '2014-04-16 12:56:52', '2014-04-16 13:03:46', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (11, '2014-04-16 19:00:00', '2014-04-16 20:00:00', 11, 0, 0, NULL, NULL, '01:00:44.3', '2014-04-16 12:56:34', '2014-04-16 12:57:35', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (38, '2014-10-16 17:00:00', '2014-10-16 19:30:00', 38, 0, 0, NULL, NULL, '24:30:35.84336', '2014-10-16 16:30:12', '2014-10-16 16:32:19', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (13, '2014-04-16 20:00:00', '2014-04-16 21:00:00', 13, 0, 0, NULL, NULL, '01:01:33.2', '2014-04-16 15:09:15', '2014-04-16 15:09:46', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (24, '2014-05-01 13:15:00', '2014-05-01 14:00:00', 24, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 13:01:14', '2014-05-01 13:01:24', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (14, '2014-04-17 11:00:00', '2014-04-17 12:00:00', 14, 0, 0, NULL, NULL, '01:01:33.2', '2014-04-17 10:50:15', '2014-04-17 10:50:28', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (41, '2015-04-08 19:00:00', '2015-04-08 20:30:00', 41, 0, 0, NULL, NULL, '24:20:44.513071', '2015-04-08 16:50:39', '2015-04-08 16:51:34', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (15, '2014-04-17 15:00:00', '2014-04-17 16:00:00', 15, 0, 0, NULL, NULL, '01:01:33.2', '2014-04-17 14:58:44', '2014-04-17 14:58:57', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (3, '2014-04-16 09:00:00', '2014-04-16 10:00:00', 3, 0, 0, NULL, NULL, '00:57:21.071393', '2014-04-16 08:35:55', '2014-04-16 08:38:26', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (5, '2014-04-16 12:15:00', '2014-04-16 13:00:00', 5, 0, 0, NULL, NULL, '00:48:00.045102', '2014-04-16 12:02:29', '2014-04-16 12:05:11', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (16, '2014-04-18 15:00:00', '2014-04-18 16:00:00', 16, 0, 0, NULL, NULL, '00:17:56.16653', '2014-04-18 13:02:48', '2014-04-18 13:03:17', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (36, '2014-06-17 15:00:00', '2014-06-17 16:00:00', 36, 0, 0, NULL, NULL, '01:04:21.853971', '2014-06-17 14:13:27', '2014-06-17 14:15:32', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (17, '2014-04-29 22:00:00', '2014-04-29 22:22:59', 17, 0, 0, NULL, NULL, '24:00:46.696', '2014-04-29 21:20:08', '2014-04-29 21:22:44', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (25, '2014-05-01 14:10:00', '2014-05-01 14:40:00', 25, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-01 13:26:51', '2014-05-01 13:28:49', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (35, '2014-05-13 20:55:00', '2014-05-13 21:00:00', 35, 0, 0, NULL, NULL, '00:15:23.771428', '2014-05-13 20:54:14', '2014-05-13 20:56:22', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (28, '2014-05-04 09:00:00', '2014-05-04 10:00:00', 28, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-04 08:51:49', '2014-05-04 08:52:04', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (29, '2014-05-04 10:00:00', '2014-05-04 11:00:00', 29, 0, 0, NULL, NULL, '01:00:44.3', '2014-05-04 09:57:29', '2014-05-04 09:57:42', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (48, '2015-11-12 13:00:00', '2015-11-12 14:00:00', 42, 0, 0, NULL, NULL, '00:10:35.414377', '2015-11-11 20:42:32', '2015-11-11 20:50:34', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (27, '2014-05-06 20:00:00', '2014-05-06 22:00:00', 27, 0, 0, NULL, NULL, '01:59:40.095', '2014-05-02 15:55:47', '2014-05-06 13:20:43', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (47, '2015-11-12 13:00:00', '2015-11-12 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:42:06', '2015-11-11 20:50:34', 't');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (46, '2015-11-12 13:00:00', '2015-11-12 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:36:51', '2015-11-11 20:50:34', 't');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (39, '2015-02-18 16:55:00', '2015-02-18 22:00:00', 39, 0, 0, NULL, NULL, '04:09:02.176303', '2015-02-18 16:45:09', '2015-02-18 16:47:23', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (43, '2015-11-19 13:00:00', '2015-11-19 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:14:46', '2015-11-11 20:50:34', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (40, '2015-02-25 16:45:00', '2015-02-25 21:15:00', 40, 0, 0, NULL, NULL, '25:03:36.962', '2015-02-25 16:37:19', '2015-02-25 16:37:40', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (37, '2014-10-06 20:00:00', '2014-10-06 21:00:00', 37, 0, 0, NULL, NULL, '00:20:48.461792', '2014-10-06 17:52:37', '2014-10-06 20:16:55', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (44, '2015-11-26 13:00:00', '2015-11-26 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:14:46', '2015-11-11 20:50:34', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (45, '2015-12-03 13:00:00', '2015-12-03 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:14:46', '2015-11-11 20:50:34', 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (42, '2015-11-12 13:00:00', '2015-11-12 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:08:21', '2015-11-11 20:50:34', 't');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (49, '2015-12-10 13:00:00', '2015-12-10 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:47', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (50, '2015-12-17 13:00:00', '2015-12-17 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:47', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (51, '2015-12-24 13:00:00', '2015-12-24 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:47', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (52, '2015-12-31 13:00:00', '2015-12-31 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:47', NULL, 'f');
INSERT INTO cc_show_instances (id, starts, ends, show_id, record, rebroadcast, instance_id, file_id, time_filled, created, last_scheduled, modified_instance) VALUES (53, '2016-01-07 13:00:00', '2016-01-07 14:00:00', 42, 0, 0, NULL, NULL, '00:00:00', '2015-11-11 20:50:47', NULL, 'f');

-- times in utc (- 2 hours)
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-16 18:00:00', '2016-04-16 19:00:00', 43, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-16 19:00:00', '2016-04-17 01:00:00', 44, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 01:00:00', '2016-04-17 08:00:00', 1, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 08:00:00', '2016-04-17 09:00:00', 45, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 09:00:00', '2016-04-17 10:00:00', 46, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 10:00:00', '2016-04-17 11:00:00', 47, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 11:00:00', '2016-04-17 12:00:00', 48, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 12:00:00', '2016-04-17 13:00:00', 1, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 13:00:00', '2016-04-17 15:00:00', 49, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 15:00:00', '2016-04-17 16:00:00', 50, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 16:00:00', '2016-04-17 17:00:00', 51, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 17:00:00', '2016-04-17 19:00:00', 52, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 19:00:00', '2016-04-17 21:00:00', 53, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-17 21:00:00', '2016-04-18 06:00:00', 1, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 06:00:00', '2016-04-18 09:00:00', 54, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 09:00:00', '2016-04-18 09:30:00', 55, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 09:30:00', '2016-04-18 11:00:00', 1, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 11:00:00', '2016-04-18 14:00:00', 56, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 14:00:00', '2016-04-18 15:00:00', 1, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 15:00:00', '2016-04-18 16:00:00', 57, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 16:00:00', '2016-04-18 16:30:00', 55, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 16:30:00', '2016-04-18 17:00:00', 58, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 17:00:00', '2016-04-18 18:00:00', 59, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 18:00:00', '2016-04-18 19:00:00', 60, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 19:00:00', '2016-04-18 20:00:00', 61, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 20:00:00', '2016-04-18 21:00:00', 62, date('now'));
INSERT INTO cc_show_instances (starts, ends, show_id, created) VALUES ('2016-04-18 21:00:00', '2016-04-19 06:00:00', 1, date('now'));
