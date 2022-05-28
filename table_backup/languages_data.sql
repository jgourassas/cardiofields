--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Debian 13.5-0+deb11u1)
-- Dumped by pg_dump version 13.5 (Debian 13.5-0+deb11u1)

-- Started on 2022-05-28 13:10:19 EEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3206 (class 0 OID 18112)
-- Dependencies: 212
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.languages (id, alpha2, english) VALUES (1, 'aa', 'Afar');
INSERT INTO public.languages (id, alpha2, english) VALUES (2, 'ab', 'Abkhazian');
INSERT INTO public.languages (id, alpha2, english) VALUES (3, 'ae', 'Avestan');
INSERT INTO public.languages (id, alpha2, english) VALUES (4, 'af', 'Afrikaans');
INSERT INTO public.languages (id, alpha2, english) VALUES (5, 'ak', 'Akan');
INSERT INTO public.languages (id, alpha2, english) VALUES (6, 'am', 'Amharic');
INSERT INTO public.languages (id, alpha2, english) VALUES (7, 'an', 'Aragonese');
INSERT INTO public.languages (id, alpha2, english) VALUES (8, 'ar', 'Arabic');
INSERT INTO public.languages (id, alpha2, english) VALUES (9, 'as', 'Assamese');
INSERT INTO public.languages (id, alpha2, english) VALUES (10, 'av', 'Avaric');
INSERT INTO public.languages (id, alpha2, english) VALUES (11, 'ay', 'Aymara');
INSERT INTO public.languages (id, alpha2, english) VALUES (12, 'az', 'Azerbaijani');
INSERT INTO public.languages (id, alpha2, english) VALUES (13, 'ba', 'Bashkir');
INSERT INTO public.languages (id, alpha2, english) VALUES (14, 'be', 'Belarusian');
INSERT INTO public.languages (id, alpha2, english) VALUES (15, 'bg', 'Bulgarian');
INSERT INTO public.languages (id, alpha2, english) VALUES (16, 'bh', 'Bihari languages');
INSERT INTO public.languages (id, alpha2, english) VALUES (17, 'bi', 'Bislama');
INSERT INTO public.languages (id, alpha2, english) VALUES (18, 'bm', 'Bambara');
INSERT INTO public.languages (id, alpha2, english) VALUES (19, 'bn', 'Bengali');
INSERT INTO public.languages (id, alpha2, english) VALUES (20, 'bo', 'Tibetan');
INSERT INTO public.languages (id, alpha2, english) VALUES (21, 'br', 'Breton');
INSERT INTO public.languages (id, alpha2, english) VALUES (22, 'bs', 'Bosnian');
INSERT INTO public.languages (id, alpha2, english) VALUES (23, 'ca', 'Catalan; Valencian');
INSERT INTO public.languages (id, alpha2, english) VALUES (24, 'ce', 'Chechen');
INSERT INTO public.languages (id, alpha2, english) VALUES (25, 'ch', 'Chamorro');
INSERT INTO public.languages (id, alpha2, english) VALUES (26, 'co', 'Corsican');
INSERT INTO public.languages (id, alpha2, english) VALUES (27, 'cr', 'Cree');
INSERT INTO public.languages (id, alpha2, english) VALUES (28, 'cs', 'Czech');
INSERT INTO public.languages (id, alpha2, english) VALUES (29, 'cu', 'Church Slavic; Old Slavonic; Church Slavonic; Old Bulgarian; Old Church Slavonic');
INSERT INTO public.languages (id, alpha2, english) VALUES (30, 'cv', 'Chuvash');
INSERT INTO public.languages (id, alpha2, english) VALUES (31, 'cy', 'Welsh');
INSERT INTO public.languages (id, alpha2, english) VALUES (32, 'da', 'Danish');
INSERT INTO public.languages (id, alpha2, english) VALUES (33, 'de', 'German');
INSERT INTO public.languages (id, alpha2, english) VALUES (34, 'dv', 'Divehi; Dhivehi; Maldivian');
INSERT INTO public.languages (id, alpha2, english) VALUES (35, 'dz', 'Dzongkha');
INSERT INTO public.languages (id, alpha2, english) VALUES (36, 'ee', 'Ewe');
INSERT INTO public.languages (id, alpha2, english) VALUES (37, 'el', 'Greek, Modern (1453-)');
INSERT INTO public.languages (id, alpha2, english) VALUES (38, 'en', 'English');
INSERT INTO public.languages (id, alpha2, english) VALUES (39, 'eo', 'Esperanto');
INSERT INTO public.languages (id, alpha2, english) VALUES (40, 'es', 'Spanish; Castilian');
INSERT INTO public.languages (id, alpha2, english) VALUES (41, 'et', 'Estonian');
INSERT INTO public.languages (id, alpha2, english) VALUES (42, 'eu', 'Basque');
INSERT INTO public.languages (id, alpha2, english) VALUES (43, 'fa', 'Persian');
INSERT INTO public.languages (id, alpha2, english) VALUES (44, 'ff', 'Fulah');
INSERT INTO public.languages (id, alpha2, english) VALUES (45, 'fi', 'Finnish');
INSERT INTO public.languages (id, alpha2, english) VALUES (46, 'fj', 'Fijian');
INSERT INTO public.languages (id, alpha2, english) VALUES (47, 'fo', 'Faroese');
INSERT INTO public.languages (id, alpha2, english) VALUES (48, 'fr', 'French');
INSERT INTO public.languages (id, alpha2, english) VALUES (49, 'fy', 'Western Frisian');
INSERT INTO public.languages (id, alpha2, english) VALUES (50, 'ga', 'Irish');
INSERT INTO public.languages (id, alpha2, english) VALUES (51, 'gd', 'Gaelic; Scottish Gaelic');
INSERT INTO public.languages (id, alpha2, english) VALUES (52, 'gl', 'Galician');
INSERT INTO public.languages (id, alpha2, english) VALUES (53, 'gn', 'Guarani');
INSERT INTO public.languages (id, alpha2, english) VALUES (54, 'gu', 'Gujarati');
INSERT INTO public.languages (id, alpha2, english) VALUES (55, 'gv', 'Manx');
INSERT INTO public.languages (id, alpha2, english) VALUES (56, 'ha', 'Hausa');
INSERT INTO public.languages (id, alpha2, english) VALUES (57, 'he', 'Hebrew');
INSERT INTO public.languages (id, alpha2, english) VALUES (58, 'hi', 'Hindi');
INSERT INTO public.languages (id, alpha2, english) VALUES (59, 'ho', 'Hiri Motu');
INSERT INTO public.languages (id, alpha2, english) VALUES (60, 'hr', 'Croatian');
INSERT INTO public.languages (id, alpha2, english) VALUES (61, 'ht', 'Haitian; Haitian Creole');
INSERT INTO public.languages (id, alpha2, english) VALUES (62, 'hu', 'Hungarian');
INSERT INTO public.languages (id, alpha2, english) VALUES (63, 'hy', 'Armenian');
INSERT INTO public.languages (id, alpha2, english) VALUES (64, 'hz', 'Herero');
INSERT INTO public.languages (id, alpha2, english) VALUES (65, 'ia', 'Interlingua (International Auxiliary Language Association)');
INSERT INTO public.languages (id, alpha2, english) VALUES (66, 'id', 'Indonesian');
INSERT INTO public.languages (id, alpha2, english) VALUES (67, 'ie', 'Interlingue; Occidental');
INSERT INTO public.languages (id, alpha2, english) VALUES (68, 'ig', 'Igbo');
INSERT INTO public.languages (id, alpha2, english) VALUES (69, 'ii', 'Sichuan Yi; Nuosu');
INSERT INTO public.languages (id, alpha2, english) VALUES (70, 'ik', 'Inupiaq');
INSERT INTO public.languages (id, alpha2, english) VALUES (71, 'io', 'Ido');
INSERT INTO public.languages (id, alpha2, english) VALUES (72, 'is', 'Icelandic');
INSERT INTO public.languages (id, alpha2, english) VALUES (73, 'it', 'Italian');
INSERT INTO public.languages (id, alpha2, english) VALUES (74, 'iu', 'Inuktitut');
INSERT INTO public.languages (id, alpha2, english) VALUES (75, 'ja', 'Japanese');
INSERT INTO public.languages (id, alpha2, english) VALUES (76, 'jv', 'Javanese');
INSERT INTO public.languages (id, alpha2, english) VALUES (77, 'ka', 'Georgian');
INSERT INTO public.languages (id, alpha2, english) VALUES (78, 'kg', 'Kongo');
INSERT INTO public.languages (id, alpha2, english) VALUES (79, 'ki', 'Kikuyu; Gikuyu');
INSERT INTO public.languages (id, alpha2, english) VALUES (80, 'kj', 'Kuanyama; Kwanyama');
INSERT INTO public.languages (id, alpha2, english) VALUES (81, 'kk', 'Kazakh');
INSERT INTO public.languages (id, alpha2, english) VALUES (82, 'kl', 'Kalaallisut; Greenlandic');
INSERT INTO public.languages (id, alpha2, english) VALUES (83, 'km', 'Central Khmer');
INSERT INTO public.languages (id, alpha2, english) VALUES (84, 'kn', 'Kannada');
INSERT INTO public.languages (id, alpha2, english) VALUES (85, 'ko', 'Korean');
INSERT INTO public.languages (id, alpha2, english) VALUES (86, 'kr', 'Kanuri');
INSERT INTO public.languages (id, alpha2, english) VALUES (87, 'ks', 'Kashmiri');
INSERT INTO public.languages (id, alpha2, english) VALUES (88, 'ku', 'Kurdish');
INSERT INTO public.languages (id, alpha2, english) VALUES (89, 'kv', 'Komi');
INSERT INTO public.languages (id, alpha2, english) VALUES (90, 'kw', 'Cornish');
INSERT INTO public.languages (id, alpha2, english) VALUES (91, 'ky', 'Kirghiz; Kyrgyz');
INSERT INTO public.languages (id, alpha2, english) VALUES (92, 'la', 'Latin');
INSERT INTO public.languages (id, alpha2, english) VALUES (93, 'lb', 'Luxembourgish; Letzeburgesch');
INSERT INTO public.languages (id, alpha2, english) VALUES (94, 'lg', 'Ganda');
INSERT INTO public.languages (id, alpha2, english) VALUES (95, 'li', 'Limburgan; Limburger; Limburgish');
INSERT INTO public.languages (id, alpha2, english) VALUES (96, 'ln', 'Lingala');
INSERT INTO public.languages (id, alpha2, english) VALUES (97, 'lo', 'Lao');
INSERT INTO public.languages (id, alpha2, english) VALUES (98, 'lt', 'Lithuanian');
INSERT INTO public.languages (id, alpha2, english) VALUES (99, 'lu', 'Luba-Katanga');
INSERT INTO public.languages (id, alpha2, english) VALUES (100, 'lv', 'Latvian');
INSERT INTO public.languages (id, alpha2, english) VALUES (101, 'mg', 'Malagasy');
INSERT INTO public.languages (id, alpha2, english) VALUES (102, 'mh', 'Marshallese');
INSERT INTO public.languages (id, alpha2, english) VALUES (103, 'mi', 'Maori');
INSERT INTO public.languages (id, alpha2, english) VALUES (104, 'mk', 'Macedonian');
INSERT INTO public.languages (id, alpha2, english) VALUES (105, 'ml', 'Malayalam');
INSERT INTO public.languages (id, alpha2, english) VALUES (106, 'mn', 'Mongolian');
INSERT INTO public.languages (id, alpha2, english) VALUES (107, 'mr', 'Marathi');
INSERT INTO public.languages (id, alpha2, english) VALUES (108, 'ms', 'Malay');
INSERT INTO public.languages (id, alpha2, english) VALUES (109, 'mt', 'Maltese');
INSERT INTO public.languages (id, alpha2, english) VALUES (110, 'my', 'Burmese');
INSERT INTO public.languages (id, alpha2, english) VALUES (111, 'na', 'Nauru');
INSERT INTO public.languages (id, alpha2, english) VALUES (112, 'nb', 'Bokmål, Norwegian; Norwegian Bokmål');
INSERT INTO public.languages (id, alpha2, english) VALUES (113, 'nd', 'Ndebele, North; North Ndebele');
INSERT INTO public.languages (id, alpha2, english) VALUES (114, 'ne', 'Nepali');
INSERT INTO public.languages (id, alpha2, english) VALUES (115, 'ng', 'Ndonga');
INSERT INTO public.languages (id, alpha2, english) VALUES (116, 'nl', 'Dutch; Flemish');
INSERT INTO public.languages (id, alpha2, english) VALUES (117, 'nn', 'Norwegian Nynorsk; Nynorsk, Norwegian');
INSERT INTO public.languages (id, alpha2, english) VALUES (118, 'no', 'Norwegian');
INSERT INTO public.languages (id, alpha2, english) VALUES (119, 'nr', 'Ndebele, South; South Ndebele');
INSERT INTO public.languages (id, alpha2, english) VALUES (120, 'nv', 'Navajo; Navaho');
INSERT INTO public.languages (id, alpha2, english) VALUES (121, 'ny', 'Chichewa; Chewa; Nyanja');
INSERT INTO public.languages (id, alpha2, english) VALUES (122, 'oc', 'Occitan (post 1500); Provençal');
INSERT INTO public.languages (id, alpha2, english) VALUES (123, 'oj', 'Ojibwa');
INSERT INTO public.languages (id, alpha2, english) VALUES (124, 'om', 'Oromo');
INSERT INTO public.languages (id, alpha2, english) VALUES (125, 'or', 'Oriya');
INSERT INTO public.languages (id, alpha2, english) VALUES (126, 'os', 'Ossetian; Ossetic');
INSERT INTO public.languages (id, alpha2, english) VALUES (127, 'pa', 'Panjabi; Punjabi');
INSERT INTO public.languages (id, alpha2, english) VALUES (128, 'pi', 'Pali');
INSERT INTO public.languages (id, alpha2, english) VALUES (129, 'pl', 'Polish');
INSERT INTO public.languages (id, alpha2, english) VALUES (130, 'ps', 'Pushto; Pashto');
INSERT INTO public.languages (id, alpha2, english) VALUES (131, 'pt', 'Portuguese');
INSERT INTO public.languages (id, alpha2, english) VALUES (132, 'qu', 'Quechua');
INSERT INTO public.languages (id, alpha2, english) VALUES (133, 'rm', 'Romansh');
INSERT INTO public.languages (id, alpha2, english) VALUES (134, 'rn', 'Rundi');
INSERT INTO public.languages (id, alpha2, english) VALUES (135, 'ro', 'Romanian; Moldavian; Moldovan');
INSERT INTO public.languages (id, alpha2, english) VALUES (136, 'ru', 'Russian');
INSERT INTO public.languages (id, alpha2, english) VALUES (137, 'rw', 'Kinyarwanda');
INSERT INTO public.languages (id, alpha2, english) VALUES (138, 'sa', 'Sanskrit');
INSERT INTO public.languages (id, alpha2, english) VALUES (139, 'sc', 'Sardinian');
INSERT INTO public.languages (id, alpha2, english) VALUES (140, 'sd', 'Sindhi');
INSERT INTO public.languages (id, alpha2, english) VALUES (141, 'se', 'Northern Sami');
INSERT INTO public.languages (id, alpha2, english) VALUES (142, 'sg', 'Sango');
INSERT INTO public.languages (id, alpha2, english) VALUES (143, 'si', 'Sinhala; Sinhalese');
INSERT INTO public.languages (id, alpha2, english) VALUES (144, 'sk', 'Slovak');
INSERT INTO public.languages (id, alpha2, english) VALUES (145, 'sl', 'Slovenian');
INSERT INTO public.languages (id, alpha2, english) VALUES (146, 'sm', 'Samoan');
INSERT INTO public.languages (id, alpha2, english) VALUES (147, 'sn', 'Shona');
INSERT INTO public.languages (id, alpha2, english) VALUES (148, 'so', 'Somali');
INSERT INTO public.languages (id, alpha2, english) VALUES (149, 'sq', 'Albanian');
INSERT INTO public.languages (id, alpha2, english) VALUES (150, 'sr', 'Serbian');
INSERT INTO public.languages (id, alpha2, english) VALUES (151, 'ss', 'Swati');
INSERT INTO public.languages (id, alpha2, english) VALUES (152, 'st', 'Sotho, Southern');
INSERT INTO public.languages (id, alpha2, english) VALUES (153, 'su', 'Sundanese');
INSERT INTO public.languages (id, alpha2, english) VALUES (154, 'sv', 'Swedish');
INSERT INTO public.languages (id, alpha2, english) VALUES (155, 'sw', 'Swahili');
INSERT INTO public.languages (id, alpha2, english) VALUES (156, 'ta', 'Tamil');
INSERT INTO public.languages (id, alpha2, english) VALUES (157, 'te', 'Telugu');
INSERT INTO public.languages (id, alpha2, english) VALUES (158, 'tg', 'Tajik');
INSERT INTO public.languages (id, alpha2, english) VALUES (159, 'th', 'Thai');
INSERT INTO public.languages (id, alpha2, english) VALUES (160, 'ti', 'Tigrinya');
INSERT INTO public.languages (id, alpha2, english) VALUES (161, 'tk', 'Turkmen');
INSERT INTO public.languages (id, alpha2, english) VALUES (162, 'tl', 'Tagalog');
INSERT INTO public.languages (id, alpha2, english) VALUES (163, 'tn', 'Tswana');
INSERT INTO public.languages (id, alpha2, english) VALUES (164, 'to', 'Tonga (Tonga Islands)');
INSERT INTO public.languages (id, alpha2, english) VALUES (165, 'tr', 'Turkish');
INSERT INTO public.languages (id, alpha2, english) VALUES (166, 'ts', 'Tsonga');
INSERT INTO public.languages (id, alpha2, english) VALUES (167, 'tt', 'Tatar');
INSERT INTO public.languages (id, alpha2, english) VALUES (168, 'tw', 'Twi');
INSERT INTO public.languages (id, alpha2, english) VALUES (169, 'ty', 'Tahitian');
INSERT INTO public.languages (id, alpha2, english) VALUES (170, 'ug', 'Uighur; Uyghur');
INSERT INTO public.languages (id, alpha2, english) VALUES (171, 'uk', 'Ukrainian');
INSERT INTO public.languages (id, alpha2, english) VALUES (172, 'ur', 'Urdu');
INSERT INTO public.languages (id, alpha2, english) VALUES (173, 'uz', 'Uzbek');
INSERT INTO public.languages (id, alpha2, english) VALUES (174, 've', 'Venda');
INSERT INTO public.languages (id, alpha2, english) VALUES (175, 'vi', 'Vietnamese');
INSERT INTO public.languages (id, alpha2, english) VALUES (176, 'vo', 'Volapük');
INSERT INTO public.languages (id, alpha2, english) VALUES (177, 'wa', 'Walloon');
INSERT INTO public.languages (id, alpha2, english) VALUES (178, 'wo', 'Wolof');
INSERT INTO public.languages (id, alpha2, english) VALUES (179, 'xh', 'Xhosa');
INSERT INTO public.languages (id, alpha2, english) VALUES (180, 'yi', 'Yiddish');
INSERT INTO public.languages (id, alpha2, english) VALUES (181, 'yo', 'Yoruba');
INSERT INTO public.languages (id, alpha2, english) VALUES (182, 'za', 'Zhuang; Chuang');
INSERT INTO public.languages (id, alpha2, english) VALUES (183, 'zh', 'Chinese');
INSERT INTO public.languages (id, alpha2, english) VALUES (184, 'zu', 'Zulu');


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 211
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.languages_id_seq', 184, true);


-- Completed on 2022-05-28 13:10:19 EEST

--
-- PostgreSQL database dump complete
--

