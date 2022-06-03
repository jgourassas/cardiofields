--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Debian 13.5-0+deb11u1)
-- Dumped by pg_dump version 13.5 (Debian 13.5-0+deb11u1)

-- Started on 2022-06-03 11:58:22 EEST

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
-- TOC entry 3207 (class 0 OID 18141)
-- Dependencies: 216
-- Data for Name: opts_sentences; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (1, 'en', 'Male', NULL, NULL, '2019-08-23 06:53:40', '2019-08-23 06:53:40', 379);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (2, 'el', 'Αρρεν', NULL, NULL, '2019-08-23 07:23:36', '2019-08-23 07:23:36', 379);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (3, 'en', 'Female', NULL, NULL, '2019-08-23 07:24:57', '2019-08-23 07:24:57', 3930);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (4, 'el', 'Θήλυ', NULL, NULL, '2019-08-23 07:25:59', '2019-08-23 07:25:59', 3930);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (7, 'en', 'Class I', NULL, NULL, '2019-08-27 12:08:09', '2019-08-27 12:08:09', 512);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (8, 'el', 'Κατηγορία Ι', NULL, NULL, '2019-08-27 12:08:35', '2019-08-27 12:08:35', 512);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (6, 'el', 'Αδιαφοροποιητο', NULL, NULL, '2019-08-23 07:28:23', '2019-08-23 07:29:38', 3931);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (5, 'en', 'Undifferentiated', NULL, NULL, '2019-08-23 07:27:16', '2019-08-23 07:30:31', 3931);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (9, 'en', 'Degenerated', NULL, NULL, '2019-09-06 16:23:41', '2019-09-06 16:23:41', 1763);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (10, 'en', 'Ectatic', NULL, NULL, '2019-09-06 16:24:05', '2019-09-06 16:24:05', 1758);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (13, 'en', 'Normal', NULL, NULL, '2019-09-07 15:44:39', '2019-09-07 15:44:39', 1762);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (15, 'en', 'Acute Coronary Syndrom', NULL, NULL, '2019-09-09 04:29:10', '2019-09-09 04:29:10', 8721);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (16, 'el', 'Οξύ Στεφανιαίο Σύνδρομο', NULL, NULL, '2019-09-09 04:29:50', '2019-09-09 04:29:50', 8721);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (17, 'el', 'Φυσιολογική', NULL, NULL, '2019-09-09 05:33:26', '2019-09-09 05:33:26', 1762);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (18, 'el', 'Εκφυλισμένο', NULL, NULL, '2019-09-09 05:35:05', '2019-09-09 05:35:05', 1763);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (19, 'el', 'Εκτατικό', NULL, NULL, '2019-09-09 05:35:40', '2019-09-09 05:35:40', 1758);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (20, 'en', 'In Situ RIMA', NULL, NULL, '2019-09-09 05:38:02', '2019-09-09 05:38:02', 726);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (21, 'el', 'In Situ RIMA', NULL, NULL, '2019-09-09 05:38:22', '2019-09-09 05:38:22', 726);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (22, 'en', 'Positron emission Tomography', NULL, NULL, '2019-09-12 14:29:35', '2019-09-12 14:29:35', 444);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (23, 'en', 'Myocardial contrast echocardiography (MCE)', NULL, NULL, '2019-09-12 14:30:07', '2019-09-12 14:30:07', 246);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (24, 'en', 'By Pressure Measurment', NULL, NULL, '2019-09-12 14:30:42', '2019-09-12 14:30:42', 1183);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (25, 'en', 'By Doppler Velocity', NULL, NULL, '2019-09-12 14:31:10', '2019-09-12 14:31:10', 1728);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (26, 'en', 'CC1, continuous thread-like connection', NULL, NULL, '2019-09-12 14:59:02', '2019-09-12 14:59:02', 1195);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (27, 'en', 'CC0, no continuous connection between donor and recipient vessel', NULL, NULL, '2019-09-12 14:59:33', '2019-09-12 14:59:33', 1121);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (28, 'en', 'CC2, continuous, small sidebranch-like connection.', NULL, NULL, '2019-09-12 15:00:03', '2019-09-12 15:00:03', 1196);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (29, 'en', 'LV angio Not Performed', NULL, NULL, '2019-09-13 05:40:27', '2019-09-13 05:40:27', 1412);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (30, 'el', 'Κοιλιογραφία δεν Εγινε', NULL, NULL, '2019-09-13 05:41:08', '2019-09-13 05:41:08', 1412);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (31, 'en', 'LV angio - Estimated Not Measured', NULL, NULL, '2019-09-13 05:42:45', '2019-09-13 05:42:45', 1202);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (32, 'el', 'Κατ εκτίμηση', NULL, NULL, '2019-09-13 05:44:49', '2019-09-13 05:44:49', 1202);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (33, 'en', 'Mesured', NULL, NULL, '2019-09-13 05:45:39', '2019-09-13 05:45:39', 1290);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (34, 'el', 'Μετρήθηκε', NULL, NULL, '2019-09-13 05:48:09', '2019-09-13 05:48:09', 1290);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (35, 'en', 'Visual estimation', NULL, NULL, '2019-09-13 05:49:30', '2019-09-13 05:49:30', 8390);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (36, 'el', 'Εκτιμήθηκε Οπτικά', NULL, NULL, '2019-09-13 05:50:09', '2019-09-13 05:50:09', 8390);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (37, 'en', 'Echo', NULL, NULL, '2019-09-13 05:50:33', '2019-09-13 05:50:33', 1292);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (38, 'el', 'Echo', NULL, NULL, '2019-09-13 05:50:42', '2019-09-13 05:50:42', 1292);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (39, 'en', 'Radionuclide', NULL, NULL, '2019-09-13 05:51:05', '2019-09-13 05:51:05', 1291);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (40, 'el', 'Radionuclide', NULL, NULL, '2019-09-13 05:51:17', '2019-09-13 05:51:17', 1291);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (43, 'en', 'Anginal equivalent', NULL, NULL, '2019-09-18 03:51:32', '2019-09-18 03:51:32', 3266);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (42, 'en', '1+', NULL, NULL, '2019-09-13 13:37:51', '2019-09-13 13:37:51', 1587);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (46, 'en', 'Possible Stent Thrombosis', NULL, NULL, '2019-09-28 03:17:09', '2019-09-28 03:17:09', 8886);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (47, 'en', 'Definite Stent Thrombosis', NULL, NULL, '2019-09-28 03:17:42', '2019-09-28 03:17:42', 8884);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (48, 'en', 'Probable Stent Thrombosis', NULL, NULL, '2019-09-28 03:18:25', '2019-09-28 03:18:25', 8885);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (49, 'en', 'Emergency', NULL, NULL, '2019-09-28 03:50:49', '2019-09-28 03:50:49', 1203);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (50, 'en', 'Salvage', NULL, NULL, '2019-09-28 03:52:43', '2019-09-28 03:52:43', 1204);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (52, 'en', 'Intra Mascular', NULL, NULL, '2019-10-19 02:38:51', '2019-10-19 02:38:51', 401);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (53, 'el', 'Ενδο Μυική', NULL, NULL, '2019-10-19 02:40:11', '2019-10-19 02:40:11', 401);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (54, 'en', 'NYHA Class II', NULL, NULL, '2019-10-19 15:19:02', '2019-10-19 15:19:02', 1454);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (55, 'en', 'NYHA Class I', NULL, NULL, '2019-10-19 15:19:31', '2019-10-19 15:19:31', 1456);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (56, 'en', 'NYHA Class III', NULL, NULL, '2019-10-19 15:20:17', '2019-10-19 15:20:17', 867);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (57, 'en', 'NYHA Class IV', NULL, NULL, '2019-10-19 15:20:53', '2019-10-19 15:20:53', 1452);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (58, 'en', 'Pulmonary Valve Vegetation Size: Large', NULL, NULL, '2019-10-20 08:42:34', '2019-10-20 08:42:34', 2336);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (59, 'el', 'Ναί', NULL, NULL, '2022-04-29 15:05:59', '2022-04-29 15:05:59', 4211);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (60, 'el', ':oxi', NULL, NULL, '2022-04-29 15:06:35', '2022-04-29 15:06:35', 4210);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (62, 'en', 'The results of the study were uninterpretable due to technical or patient-related issues', NULL, NULL, '2022-04-30 15:54:20', '2022-04-30 15:54:20', 1249);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (63, 'el', 'Τα αποτελέσματα ειναι αδύνατον να ερμηνευθούν λόγω τεχνικών προβλημάτων', NULL, NULL, '2022-04-30 15:56:12', '2022-04-30 15:56:12', 1249);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (65, 'en', 'No response to voice or physical stimulation', 'Voice stimulus', NULL, '2022-05-02 14:12:13', '2022-05-02 14:32:52', 8901);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (68, 'en', 'Tricuspid', NULL, NULL, '2022-05-02 15:32:50', '2022-05-02 15:32:50', 2084);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (69, 'en', 'Pipe', NULL, NULL, '2022-05-05 06:42:12', '2022-05-05 06:42:12', 8395);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (70, 'el', 'Πιπα', NULL, NULL, '2022-05-05 06:42:29', '2022-05-05 06:42:29', 8395);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (72, 'en', 'Cigars', NULL, NULL, '2022-05-05 06:51:55', '2022-05-05 06:51:55', 8394);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (73, 'el', 'Πούρα', NULL, NULL, '2022-05-05 06:52:18', '2022-05-05 06:53:09', 8394);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (74, 'en', 'Cigarettes', NULL, NULL, '2022-05-05 06:53:47', '2022-05-05 06:53:47', 8393);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (75, 'el', 'Τσιγάρα', NULL, NULL, '2022-05-05 06:54:07', '2022-05-05 06:54:07', 8393);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (76, 'en', 'snuff, chewing tobacco', NULL, NULL, '2022-05-05 06:55:48', '2022-05-05 06:55:48', 8396);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (77, 'el', 'μη καπνιζόμενο προϊόν καπνού', NULL, NULL, '2022-05-05 06:56:05', '2022-05-05 06:56:05', 8396);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (78, 'en', 'Heavy user of Tobacco', NULL, NULL, '2022-05-05 07:01:20', '2022-05-05 07:01:20', 8399);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (79, NULL, 'Light user of tobacco', NULL, NULL, '2022-05-05 07:01:52', '2022-05-05 07:01:52', 8398);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (80, 'en', 'RCA Proximal', NULL, NULL, '2022-05-05 13:51:45', '2022-05-05 13:51:59', 1784);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (81, 'en', 'Asymptomatic', NULL, NULL, '2022-05-07 13:18:06', '2022-05-07 13:18:06', 8456);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (82, 'el', 'Ασυμπτωματικός', NULL, NULL, '2022-05-07 13:18:30', '2022-05-07 13:18:30', 8456);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (83, 'en', 'Non-anginal Chest pain', NULL, NULL, '2022-05-07 13:22:36', '2022-05-07 13:22:36', 8432);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (84, 'el', 'Μη στηθαγχικό Αλγος', NULL, NULL, '2022-05-07 13:22:58', '2022-05-07 13:22:58', 8432);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (85, 'en', 'Is Covid Positive', NULL, NULL, '2022-05-11 09:07:50', '2022-05-11 09:07:50', 8903);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (87, 'en', 'Other site', NULL, NULL, '2022-05-27 19:06:08', '2022-05-27 19:06:08', 4315);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (88, 'en', 'Τσιγάρα', NULL, NULL, '2022-05-28 02:41:17', '2022-05-28 02:41:17', 8988);
INSERT INTO public.opts_sentences (id, language, sentence, note, definition_id, inserted_at, updated_at, defs_option_id) VALUES (89, 'en', 'Tocilizumab', NULL, NULL, '2022-05-28 07:59:32', '2022-05-28 07:59:32', 8941);


--
-- TOC entry 3213 (class 0 OID 0)
-- Dependencies: 215
-- Name: opts_sentences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.opts_sentences_id_seq', 89, true);


-- Completed on 2022-06-03 11:58:22 EEST

--
-- PostgreSQL database dump complete
--

