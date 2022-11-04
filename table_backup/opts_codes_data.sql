--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8 (Debian 13.8-0+deb11u1)
-- Dumped by pg_dump version 13.8 (Debian 13.8-0+deb11u1)

-- Started on 2022-11-03 02:55:26 EET

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
-- TOC entry 3206 (class 0 OID 18157)
-- Dependencies: 218
-- Data for Name: opts_codes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (113, 'HL7-SET', '2106-3', '<p>Race - White</p>', NULL, NULL, 99, '2018-06-06 01:51:36', '2018-06-06 01:51:36');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (115, 'HL7-SET', '1002-5', NULL, NULL, NULL, 112, '2018-06-06 01:55:18', '2018-06-06 01:55:18');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (117, 'HL7-SET', '2029-7', NULL, NULL, NULL, 719, '2018-06-06 01:57:13', '2018-06-06 01:57:13');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (112, 'SNOMED-CT', '61490001', 'Angina  Class I', NULL, NULL, 1098, '2017-07-02 06:03:53', '2017-07-02 06:03:53');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (5, 'SNOMED-CT', '420300004', NULL, NULL, NULL, 1089, '2016-12-11 05:28:38', '2016-12-11 05:28:38');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (6, 'SNOMED-CT', '421704003', NULL, NULL, NULL, 1090, '2016-12-11 05:29:14', '2016-12-11 05:29:14');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (7, 'SNOMED-CT', '420913000', NULL, NULL, NULL, 1092, '2016-12-11 05:29:45', '2016-12-11 05:29:45');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (8, 'SNOMED-CT', '422293003', NULL, NULL, NULL, 1093, '2016-12-11 05:30:17', '2016-12-11 05:30:17');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (147, 'ACC-NCDR', '100013034', NULL, NULL, NULL, 8433, '2018-06-16 12:24:03', '2018-06-16 12:24:03');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (10, 'NCIT', 'C77269', 'Valid Values', NULL, NULL, 448, '2016-12-13 07:24:07', '2016-12-13 07:24:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (11, 'NCIT', 'C77270', 'Valid Value Class II', NULL, NULL, 447, '2016-12-13 07:25:34', '2016-12-13 07:25:34');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (12, 'SNOMED-CT', '426856002', 'Ischemic Cardiomyopathy', NULL, NULL, 1475, '2016-12-14 15:47:46', '2016-12-14 15:47:46');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (13, 'SNOMED-CT', '111000119104', 'Non-ischemic cardiomyopathy ', NULL, NULL, 1476, '2016-12-14 15:48:43', '2016-12-14 15:48:43');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (14, 'SNOMED-CT', '248691008 ', 'Early opening snap (finding)', NULL, NULL, 3700, '2016-12-17 04:54:33', '2016-12-17 04:54:33');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (15, 'SNOMED-CT', '170747006', NULL, NULL, NULL, 411, '2017-01-02 16:13:40', '2017-01-02 16:13:40');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (16, 'SNOMED-CT', '170746002', 'Diabetic on oral
treatment (finding)
', NULL, NULL, 1748, '2017-01-02 16:14:29', '2017-01-02 16:14:29');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (17, 'SNOMED-CT', '170745003', 'Diabetic on diet
only (finding)
', NULL, NULL, 1747, '2017-01-02 16:15:21', '2017-01-02 16:15:21');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (65, 'SNOMED-CT', '3194006', 'RA endocardial', NULL, NULL, 4009, '2017-03-02 18:12:58', '2017-03-02 18:12:58');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (19, 'SNOMED-CT', '3227004', NULL, NULL, NULL, 1783, '2017-01-03 06:54:50', '2017-01-03 06:54:50');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (20, 'SNOMED-CT', '91083009', NULL, NULL, NULL, 1784, '2017-01-03 06:55:17', '2017-01-03 06:55:17');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (21, 'SNOMED-CT', '22765000', 'Marginal Right Coronary Artery', NULL, NULL, 724, '2017-01-03 06:56:21', '2017-01-03 06:56:37');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (22, 'SNOMED-CT', '68787002', 'Proximal Left Anterior Descending Coronary Artery', NULL, NULL, 1785, '2017-01-03 06:57:19', '2017-01-03 06:57:19');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (23, 'SNOMED-CT', '91748002', 'Mid Left Anterior Descending Coronary Artery', NULL, NULL, 102, '2017-01-03 06:57:51', '2017-01-03 06:57:51');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (24, 'SNOMED-CT', '36672000', 'Distal Left Anterior Descending Coronary Artery', NULL, NULL, 1786, '2017-01-03 06:58:28', '2017-01-03 06:58:28');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (25, 'SNOMED-CT', '91750005', '1st Diagonal Coronary Artery', NULL, NULL, 195, '2017-01-03 06:59:16', '2017-01-03 06:59:16');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (26, 'SNOMED-CT', '244251006', '1st Septal Coronary Artery', NULL, NULL, 1788, '2017-01-03 07:01:37', '2017-01-03 07:01:37');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (27, 'SNOMED-CT', '91751009', '2nd Diagonal Coronary Artery', NULL, NULL, 196, '2017-01-03 07:02:32', '2017-01-03 07:02:32');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (28, 'SNOMED-CT', '52433000', 'Proximal Circumflex Coronary Artery', NULL, NULL, 1789, '2017-01-03 07:03:33', '2017-01-03 07:03:33');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (29, 'SNOMED-CT', '91753007', 'Mid Circumflex Coronary Artery', NULL, NULL, 1791, '2017-01-03 07:04:14', '2017-01-03 07:04:14');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (30, 'SNOMED-CT', '6511003', 'Distal Circumflex Coronary Artery', NULL, NULL, 1790, '2017-01-03 07:04:53', '2017-01-03 07:04:53');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (31, 'SNOMED-CT', '450960006', 'Mid Portion of Right Coronary Artery', NULL, NULL, 1792, '2017-01-03 07:05:52', '2017-01-03 07:05:52');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (32, 'SNOMED-CT', '41879009', 'Distal Right Coronary Artery', NULL, NULL, 664, '2017-01-03 07:06:45', '2017-01-03 07:06:45');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (33, 'SNOMED-CT', '244252004', 'Intermediate Artery (Ramus)', NULL, NULL, 505, '2017-01-03 07:08:16', '2017-01-03 07:08:16');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (34, 'SNOMED-CT', '53655008', 'Posterior Descending Right Coronary Artery', NULL, NULL, 1736, '2017-01-03 07:11:22', '2017-01-03 07:11:22');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (35, 'SNOMED-CT', '91754001', '1st Marginal Coronary Artery', NULL, NULL, 666, '2017-01-03 07:13:15', '2017-01-03 07:13:15');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (36, 'SNOMED-CT', '91755000', '2nd Marginal Coronary Artery', NULL, NULL, 1678, '2017-01-03 07:13:57', '2017-01-03 07:13:57');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (37, 'SNOMED-CT', '91756004', '3rd Marginal Coronary Artery', NULL, NULL, 198, '2017-01-03 07:14:45', '2017-01-03 07:14:45');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (38, 'SNOMED-CT', '75902001', 'AV groove continuation of Circumflex Artery', NULL, NULL, 1694, '2017-01-03 07:16:14', '2017-01-03 07:16:14');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (39, 'SNOMED-CT', '91752002', '3rd Diagonal Coronary Artery', NULL, NULL, 301, '2017-01-03 07:17:40', '2017-01-03 07:17:40');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (40, 'SNOMED-CT', '53655008', 'Posterior Descending Right Coronary Artery', NULL, NULL, 725, '2017-01-03 07:18:28', '2017-01-03 07:18:28');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (41, 'SNOMED-CT', '91763004', '3rd Right posterolateral Coronary Artery', NULL, NULL, 1470, '2017-01-03 07:19:27', '2017-01-03 07:19:27');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (42, 'SNOMED-CT', '91762009', '2nd Right Posterolateral Coronary Artery', NULL, NULL, 665, '2017-01-03 07:20:39', '2017-01-03 07:20:39');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (43, 'SNOMED-CT', '91761002', '1st Right posterolateral Coronary Artery', NULL, NULL, 670, '2017-01-03 07:21:26', '2017-01-03 07:21:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (44, 'SNOMED-CT', '12800002', 'Right posterior AV Coronary Artery', NULL, NULL, 1735, '2017-01-03 07:22:31', '2017-01-03 07:22:31');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (45, 'SNOMED-CT', '91757008', '1st Left Posterolateral Coronary Artery', NULL, NULL, 668, '2017-01-03 07:23:34', '2017-01-03 07:23:34');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (46, 'SNOMED-CT', '91759006', '3rd Left Posterolateral Coronary Artery', NULL, NULL, 1696, '2017-01-03 07:28:31', '2017-01-03 07:28:31');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (47, 'SNOMED-CT', '91758003', '2nd Left Posterolateral Coronary Artery', NULL, NULL, 1695, '2017-01-03 07:29:35', '2017-01-03 07:29:35');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (48, 'SNOMED-CT', '56322004', 'Left Posterior Descending Artery', NULL, NULL, 104, '2017-01-03 07:31:39', '2017-01-03 07:31:39');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (124, 'HL7-SET', '2047-9', NULL, NULL, NULL, 404, '2018-06-06 02:04:41', '2018-06-06 02:04:41');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (149, 'ACC-NCDR', '100014013', NULL, NULL, NULL, 8435, '2018-06-16 12:25:02', '2018-06-16 12:25:02');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (151, 'ACC-NCDR', '100013037', NULL, NULL, NULL, 8439, '2018-06-16 12:33:09', '2018-06-16 12:33:09');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (53, 'SNOMED-CT', '426722004', NULL, NULL, NULL, 3997, '2017-02-07 15:51:11', '2017-02-07 15:51:11');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (54, 'SNOMED-CT', '105879004', NULL, NULL, NULL, 3998, '2017-02-07 15:51:46', '2017-02-07 15:51:46');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (55, 'SNOMED-CT', '409290009', NULL, NULL, NULL, 3999, '2017-02-07 15:52:08', '2017-02-07 15:52:08');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (56, 'SNOMED-CT', '349358000', NULL, NULL, NULL, 4000, '2017-02-07 15:52:38', '2017-02-07 15:52:38');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (57, 'SNOMED-CT', '233170003', NULL, NULL, NULL, 4001, '2017-03-02 04:41:58', '2017-03-02 04:41:58');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (58, 'SNOMED-CT', '428625001', NULL, NULL, NULL, 4002, '2017-03-02 04:42:26', '2017-03-02 04:42:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (59, 'SNOMED-CT', '233171004', 'Generator explant', NULL, NULL, 4003, '2017-03-02 04:47:07', '2017-03-02 04:47:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (60, 'ACC-NCDR', '100001025', 'Lead Only', NULL, NULL, 4004, '2017-03-02 04:50:00', '2017-03-02 04:50:00');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (61, 'SNOMED-CT', '315233008', 'Primary prevention', NULL, NULL, 4005, '2017-03-02 05:04:46', '2017-03-02 05:04:46');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (62, 'SNOMED-CT', '315234002', 'Secondary prevention', NULL, NULL, 4006, '2017-03-02 05:05:22', '2017-03-02 05:05:22');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (63, 'ACC-NCDR', '100001047', 'New', NULL, NULL, 4007, '2017-03-02 07:25:35', '2017-03-02 07:25:35');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (64, 'ACC-NCDR', '100001001', NULL, NULL, NULL, 4008, '2017-03-02 07:26:31', '2017-03-02 07:26:31');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (66, 'ACC-NCDR', '100001135', 'LV epicardial', NULL, NULL, 4010, '2017-03-02 18:13:27', '2017-03-02 18:13:27');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (67, 'SNOMED-CT', '304059001', 'RV endocardial', NULL, NULL, 4011, '2017-03-02 18:14:00', '2017-03-02 18:14:00');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (68, 'ACC-NCDR', '100001137', 'Superior Vena
Cava/subclavian
', NULL, NULL, 4012, '2017-03-02 18:14:32', '2017-03-02 18:14:32');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (69, 'ACC-NCDR', '100001136', 'LV via coronary venous
system
', NULL, NULL, 4013, '2017-03-02 18:15:03', '2017-03-02 18:15:03');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (70, 'ACC-NCDR', '100001138', 'Subcutaneous ICD', NULL, NULL, 4014, '2017-03-02 18:15:31', '2017-03-02 18:15:31');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (71, 'ACC-NCDR', '100001106', 'Subcutaneous array', NULL, NULL, 4015, '2017-03-02 18:16:13', '2017-03-02 18:16:13');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (72, 'ACC-NCDR', '100001066', 'Other Lead location', NULL, NULL, 4016, '2017-03-02 18:16:46', '2017-03-02 18:16:46');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (73, 'ACC-NCDR', '100001004', 'Extracted', NULL, NULL, 4017, '2017-03-02 18:23:23', '2017-03-02 18:23:23');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (74, 'ACC-NCDR', '100000925', 'Abandoned', NULL, NULL, 4018, '2017-03-02 18:23:53', '2017-03-02 18:23:53');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (75, 'ACC-NCDR', '100001099', 'Reused', NULL, NULL, 4019, '2017-03-02 18:24:20', '2017-03-02 18:24:20');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (76, 'SNOMED-CT', '3194006', 'RA endocardial', NULL, NULL, 4020, '2017-03-04 04:27:16', '2017-03-04 04:27:16');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (77, 'ACC-NCDR', '100001135', 'LV epicardial', NULL, NULL, 4021, '2017-03-04 04:27:46', '2017-03-04 04:27:46');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (78, 'SNOMED-CT', '304059001', 'RV endocardial', NULL, NULL, 4022, '2017-03-04 04:28:26', '2017-03-04 04:28:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (127, 'HL7-SET', '2079-2', NULL, NULL, NULL, 8391, '2018-06-06 02:09:15', '2018-06-06 02:09:15');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (154, 'SNOMED-CT', '70536003', NULL, NULL, NULL, 8451, '2018-06-16 12:44:16', '2018-06-16 12:44:16');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (79, 'ACC-NCDR', '100001137', 'Superior Vena
Cava/subclavian
', NULL, NULL, 4023, '2017-03-04 04:28:59', '2017-03-04 04:28:59');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (80, 'ACC-NCDR', '100001136', 'LV via coronary venous
system
', NULL, NULL, 4024, '2017-03-04 04:29:40', '2017-03-04 04:29:40');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (81, 'ACC-NCDR', '100001138', 'Subcutaneous ICD', NULL, NULL, 4025, '2017-03-04 04:30:08', '2017-03-04 04:30:08');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (82, 'ACC-NCDR', '100001106', 'Subcutaneous array', NULL, NULL, 4026, '2017-03-04 04:30:39', '2017-03-04 04:30:39');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (83, 'ACC-NCDR', '100001066', 'Other Lead location', NULL, NULL, 4027, '2017-03-04 04:31:12', '2017-03-04 04:31:12');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (84, 'NCDR-SEQ', '100001214', 'Single chamber', NULL, NULL, 4030, '2017-03-04 05:54:54', '2017-03-04 05:54:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (85, 'ACC-NCDR', '100001215', 'Dual chamber', NULL, NULL, 4031, '2017-03-04 05:55:24', '2017-03-04 05:55:24');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (86, 'ACC-NCDR', '100001216', 'CRT-D', NULL, NULL, 4032, '2017-03-04 05:55:54', '2017-03-04 05:55:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (108, 'SNOMED-CT', '26593000', 'AF that terminates spontaneously or with
intervention within 7 days of onset. Episodes may
recur with variable frequency.
', NULL, NULL, 1525, '2017-07-01 08:35:29', '2017-07-01 08:35:29');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (87, 'ACC-NCDR', '100001217', 'S-ICD (Sub Q)', NULL, NULL, 4033, '2017-03-04 05:56:22', '2017-03-04 05:56:22');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (88, 'ACC-NCDR', '100001143', 'Implant unsuccessful', NULL, NULL, 4034, '2017-03-04 06:07:11', '2017-03-04 06:07:11');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (90, 'ACC-NCDR', '100001107', 'Successfully Implanted', NULL, NULL, 4036, '2017-03-04 06:08:24', '2017-03-04 06:08:24');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (92, 'ACC-NCDR', '100001088', 'Reimplant Reason - End of
Battery Life
', NULL, NULL, 4038, '2017-03-04 06:24:00', '2017-03-04 06:24:00');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (95, 'ACC-NCDR', '100001091', 'Reimplant Reason - Infection', NULL, NULL, 4041, '2017-03-04 06:25:40', '2017-03-04 06:25:40');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (102, 'ACC-NCDR', '100001083', 'Device previously explanted', NULL, NULL, 4048, '2017-03-04 06:36:00', '2017-03-04 06:36:00');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (104, 'ACC-NCDR', '100001013', 'ICD to CRT-D', NULL, NULL, 4050, '2017-03-04 06:41:29', '2017-03-04 06:41:29');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (109, 'SNOMED-CT', '62459000', 'Continuous AF that is sustained >7 days or with
electrical or pharmacological termination.
', NULL, NULL, 1526, '2017-07-01 08:36:11', '2017-07-01 08:36:11');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (89, 'ACC-NCDR', '100001057', 'Not Attempted', NULL, NULL, 4035, '2017-03-04 06:07:55', '2017-03-04 06:07:55');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (91, 'ACC-NCDR', '100001084', 'Previously Implanted', NULL, NULL, 4037, '2017-03-04 06:09:07', '2017-03-04 06:09:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (97, 'ACC-NCDR', '100001089', 'Reimplant Reason - Faulty
Connector/Header
', NULL, NULL, 4043, '2017-03-04 06:26:51', '2017-03-04 06:26:51');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (110, 'SNOMED-CT', '100001029', 'Continuous AF of >12 months duration.', NULL, NULL, 1527, '2017-07-01 08:36:42', '2017-07-01 08:36:42');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (93, 'ACC-NCDR', '100001092', 'Reimplant Reason - Replaced
At Time of Lead Revision
', NULL, NULL, 4039, '2017-03-04 06:24:27', '2017-03-04 06:24:27');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (105, 'ACC-NCDR', '100001049', 'No Re-implant', NULL, NULL, 4051, '2017-03-04 09:50:18', '2017-03-04 09:50:18');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (111, 'SNOMED-CT', '6934004', 'The term permanent AFibi s used when the patient and clinician make a joint decision to stop further attempts to restore and/or maintain sinus rhythm.
', '- Acceptance of AF represents a therapeutic attitude on the part of the patient and clinician rather than an inherent pathophysiological attribute of the AF.

- Acceptance of AF may change as symptoms, the efficacy of therapeutic interventions, and patient and clinician preferences evolve.
', NULL, 1489, '2017-07-01 08:37:56', '2017-07-01 08:39:43');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (94, 'ACC-NCDR', '100001094', 'Reimplant Reason - Upgrade', NULL, NULL, 4040, '2017-03-04 06:25:05', '2017-03-04 06:25:05');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (96, 'ACC-NCDR', '100001093', 'Reimplant Reason - Under
Manufacturer Advisory/Recall
', NULL, NULL, 4042, '2017-03-04 06:26:17', '2017-03-04 06:26:17');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (98, 'ACC-NCDR', '100001087', 'Reimplant Reason - Device
Relocation
', NULL, NULL, 4044, '2017-03-04 06:27:23', '2017-03-04 06:27:23');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (100, 'ACC-NCDR', '100001140', 'Device not explanted', NULL, NULL, 4046, '2017-03-04 06:35:02', '2017-03-04 06:35:02');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (103, 'ACC-NCDR', '100001102', 'Single ICD to Dual ICD', NULL, NULL, 4049, '2017-03-04 06:40:37', '2017-03-04 06:40:37');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (99, 'ACC-NCDR', '100001090', 'Reimplant Reason -
Generator Malfunction
', NULL, NULL, 4045, '2017-03-04 06:27:54', '2017-03-04 06:27:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (101, 'ACC-NCDR', '100001141', 'Device explanted', NULL, NULL, 4047, '2017-03-04 06:35:33', '2017-03-04 06:35:33');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (106, 'ACC-NCDR', '100000995', 'Downgrade', NULL, NULL, 4052, '2017-03-04 09:50:54', '2017-03-04 09:50:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (114, 'HL7-SET', '2054-5', NULL, NULL, NULL, 731, '2018-06-06 01:53:56', '2018-06-06 01:53:56');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (116, 'HL7-SET', '2028-9', NULL, NULL, NULL, 100, '2018-06-06 01:56:39', '2018-06-06 01:56:39');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (118, 'HL7-SET', '2034-7', NULL, NULL, NULL, 118, '2018-06-06 02:02:13', '2018-06-06 02:02:13');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (119, 'HL7-SET', '2036-2', NULL, NULL, NULL, 119, '2018-06-06 02:02:41', '2018-06-06 02:02:41');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (120, 'NCDR-SEQ', '2082', NULL, NULL, NULL, 119, '2018-06-06 02:03:04', '2018-06-06 02:03:04');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (121, 'HL7-SET', '2039-6', NULL, NULL, NULL, 571, '2018-06-06 02:03:34', '2018-06-06 02:03:34');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (122, 'NCDR-SEQ', '2083', NULL, NULL, NULL, 571, '2018-06-06 02:03:55', '2018-06-06 02:03:55');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (123, 'HL7-SET', '2040-4', NULL, NULL, NULL, 120, '2018-06-06 02:04:16', '2018-06-06 02:04:16');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (125, 'ACC-NCDR', '100001130', NULL, NULL, NULL, 405, '2018-06-06 02:05:13', '2018-06-06 02:05:13');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (129, 'HL7-SET', '2086-7', '<p>Indicate if the patient is Guamanian or Chamorro as determined by the patient/family.</p>', NULL, NULL, 122, '2018-06-06 02:11:16', '2018-06-06 02:11:41');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (130, 'HL7-SET', '2500-7', NULL, NULL, NULL, 123, '2018-06-06 02:14:54', '2018-06-06 02:14:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (131, 'HL7-SET', '2135-2', NULL, NULL, NULL, 117, '2018-06-06 02:15:19', '2018-06-06 02:15:19');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (132, 'HL7-SET', '2148-5', NULL, NULL, NULL, 126, '2018-06-06 02:15:53', '2018-06-06 02:15:53');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (134, 'ACC-NCDR', '100001131', NULL, NULL, NULL, 128, '2018-06-06 02:17:36', '2018-06-06 02:17:36');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (135, 'HL7-SET', '2182-4', NULL, NULL, NULL, 8392, '2018-06-06 02:19:08', '2018-06-06 02:19:08');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (136, 'SNOMED-CT', '266919005', NULL, NULL, NULL, 893, '2018-06-06 03:08:07', '2018-06-06 03:08:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (137, 'SNOMED-CT', '8517006', NULL, NULL, NULL, 48, '2018-06-06 03:08:30', '2018-06-06 03:08:30');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (138, 'SNOMED-CT', '449868002', NULL, NULL, NULL, 450, '2018-06-06 03:09:10', '2018-06-06 03:09:10');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (139, 'SNOMED-CT', '428041000124106', NULL, NULL, NULL, 563, '2018-06-06 03:09:36', '2018-06-06 03:09:36');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (140, 'SNOMED-CT', '77176002', NULL, NULL, NULL, 771, '2018-06-06 03:09:57', '2018-06-06 03:09:57');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (141, 'SNOMED-CT', '65568007', NULL, NULL, NULL, 8393, '2018-06-06 14:31:43', '2018-06-06 14:31:43');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (142, 'SNOMED-CT', '59978006', NULL, NULL, NULL, 8394, '2018-06-06 14:32:00', '2018-06-06 14:32:00');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (143, 'SNOMED-CT', '82302008', NULL, NULL, NULL, 8395, '2018-06-06 14:32:18', '2018-06-06 14:32:18');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (144, 'SNOMED-CT', '713914004', NULL, NULL, NULL, 8396, '2018-06-06 14:32:40', '2018-06-06 14:32:40');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (145, 'SNOMED-CT', '428061000124105', NULL, NULL, NULL, 8398, '2018-06-07 08:42:35', '2018-06-07 08:42:35');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (146, 'SNOMED-CT', '428071000124103', NULL, NULL, NULL, 8399, '2018-06-07 08:42:58', '2018-06-07 08:42:58');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (150, 'ACC-NCDR', '100013036', NULL, NULL, NULL, 8438, '2018-06-16 12:32:47', '2018-06-16 12:32:47');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (152, 'ACC-NCDR', '100013038', NULL, NULL, NULL, 8440, '2018-06-16 12:33:26', '2018-06-16 12:33:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (153, 'SNOMED-CT', '32413006', NULL, NULL, NULL, 8450, '2018-06-16 12:43:56', '2018-06-16 12:43:56');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (155, 'SNOMED-CT', '18027006', NULL, NULL, NULL, 8452, '2018-06-16 12:44:33', '2018-06-16 12:44:33');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (156, 'SNOMED-CT', '88039007', NULL, NULL, NULL, 8453, '2018-06-16 12:44:53', '2018-06-16 12:44:53');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (157, 'SNOMED-CT', '100014027', NULL, NULL, NULL, 8454, '2018-06-16 12:45:09', '2018-06-16 12:45:09');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (158, 'SNOMED-CT', '1000142347', NULL, NULL, NULL, 8455, '2018-06-16 12:45:28', '2018-06-16 12:45:28');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (159, 'SNOMED-CT', '183654001', NULL, NULL, NULL, 8656, '2018-07-24 12:43:42', '2018-07-24 12:43:42');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (160, 'ACC-NCDR', '100014062', NULL, NULL, NULL, 8657, '2018-07-24 12:44:37', '2018-07-24 12:44:37');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (161, 'ACC-NCDR', '100014060', NULL, NULL, NULL, 8658, '2018-07-24 12:45:20', '2018-07-24 12:45:20');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (162, 'ACC-NCDR', '1000142362', NULL, NULL, NULL, 8659, '2018-07-24 12:46:06', '2018-07-24 12:46:06');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (163, 'ACC-NCDR', '100014061', NULL, NULL, NULL, 8660, '2018-07-24 12:46:42', '2018-07-24 12:46:42');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (164, 'ACC-NCDR', '100000351', NULL, NULL, NULL, 8662, '2018-07-24 12:47:54', '2018-07-24 12:47:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (165, 'SNOMED-CT', '438949009', NULL, NULL, NULL, 674, '2018-07-24 12:52:14', '2018-07-24 12:52:14');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (166, 'SNOMED-CT', '399307001', NULL, NULL, NULL, 8663, '2018-07-24 12:52:47', '2018-07-24 12:52:47');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (148, 'ACC-NCDR', '100013035', NULL, NULL, NULL, 8434, '2018-06-16 12:24:28', '2022-06-16 09:16:34');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (168, 'NDC-DRUG', '123456', NULL, NULL, NULL, 8717, '2019-06-09 06:45:59', '2019-06-09 06:45:59');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (169, 'SNOMED-CT', '12345678', 'jgour Description Field', 'My Notes on Option Codes', NULL, 8882, '2019-09-23 13:03:54', '2019-10-09 14:24:06');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (170, 'SNOMED-CT', '222222 ', NULL, NULL, NULL, 8891, '2022-04-29 16:28:40', '2022-04-29 16:28:40');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (171, 'ICD10-CM', ' R07.82', NULL, NULL, NULL, 8456, '2022-05-03 14:01:12', '2022-05-03 14:01:12');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (172, 'ICD10-CM', 'R07.89', NULL, NULL, NULL, 8456, '2022-05-03 14:01:35', '2022-05-03 14:01:35');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (173, 'ICD10-CM', 'R07.9', NULL, NULL, NULL, 8456, '2022-05-03 14:02:05', '2022-05-03 14:02:05');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (174, 'ICD10-CM', ' R07.82', NULL, NULL, NULL, 8902, '2022-05-03 18:30:56', '2022-05-03 18:30:56');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (175, 'SNOMED-CT', '449888003', NULL, NULL, NULL, 864, '2022-05-04 15:51:29', '2022-05-04 15:51:29');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (176, 'SNOMED-CT', '12000000154', NULL, NULL, NULL, 827, '2022-05-04 15:52:07', '2022-05-04 15:52:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (177, 'SNOMED-CT', '401303003', NULL, NULL, NULL, 1133, '2022-05-04 17:33:34', '2022-05-04 17:33:34');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (178, 'SNOMED-CT', '401314000', NULL, NULL, NULL, 803, '2022-05-04 17:34:11', '2022-05-04 17:34:11');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (179, 'SNOMED-CT', '4557003', NULL, NULL, NULL, 796, '2022-05-04 17:34:54', '2022-05-04 17:34:54');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (180, 'ACC-NCDR', '100014062', NULL, NULL, NULL, 1938, '2022-05-06 12:49:21', '2022-05-06 12:49:21');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (181, 'SNOMED-CT', '840544004', NULL, NULL, NULL, 8904, '2022-05-11 09:11:20', '2022-05-11 09:11:20');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (182, 'SNOMED-CT', '71908006', NULL, NULL, NULL, 8946, '2022-05-12 15:02:28', '2022-05-12 15:02:28');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (183, 'SNOMED-CT', '786453001', NULL, NULL, NULL, 8947, '2022-05-12 15:05:47', '2022-05-12 15:05:47');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (184, 'SNOMED-CT', '25569003', NULL, NULL, NULL, 8948, '2022-05-12 15:14:48', '2022-05-12 15:14:48');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (185, 'SNOMED-CT', '265764009', NULL, NULL, NULL, 8949, '2022-05-12 15:17:41', '2022-05-12 15:17:41');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (186, 'SNOMED-CT', '84114007', NULL, NULL, NULL, 8950, '2022-05-12 15:24:05', '2022-05-12 15:24:05');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (187, 'SNOMED-CT', '371041009', NULL, NULL, NULL, 8951, '2022-05-12 15:37:45', '2022-05-12 15:37:45');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (188, 'SNOMED-CT', '230706003', NULL, NULL, NULL, 8952, '2022-05-14 09:01:59', '2022-05-14 09:01:59');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (189, 'ACC-NCDR', '112000001987', NULL, NULL, NULL, 8955, '2022-05-14 09:17:39', '2022-05-14 09:17:39');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (190, 'SNOMED-CT', '230713003', NULL, NULL, NULL, 8956, '2022-05-14 09:32:32', '2022-05-14 09:32:32');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (191, 'ACC-NCDR', '112000001988', NULL, NULL, NULL, 8957, '2022-05-14 09:35:47', '2022-05-14 09:35:47');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (192, 'ACC-NCDR', '100014009', NULL, NULL, NULL, 8970, '2022-05-14 13:29:51', '2022-05-14 13:29:51');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (193, 'SNOMED-CT', '12000000154', NULL, NULL, NULL, 8973, '2022-05-19 15:11:01', '2022-05-19 15:11:01');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (194, 'SNOMED-CT', '12000000154', NULL, NULL, NULL, 8988, '2022-05-28 02:40:41', '2022-05-28 02:40:41');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (195, 'LOINC', '20234-1', 'Left ventricular Maximum diastole [Volume] by US 2D bullet calculated', NULL, NULL, 2098, '2022-06-12 04:30:26', '2022-06-12 04:30:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (196, 'LOINC', ' 20236-6', 'Left ventricular Maximum diastole [Volume] by US 2D modified biplane ellipse calculated', NULL, NULL, 2097, '2022-06-12 04:44:56', '2022-06-12 04:44:56');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (198, 'ICD10-CM', 'I20.0', 'Unstable angina incT', NULL, NULL, 1363, '2022-06-16 03:19:59', '2022-06-16 03:23:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (217, 'ACC-NCDR', '100013026', 'Indicate the patient''s response to the Rose Dyspnea Scale Questionnaire<br />Question 3 "Do you get short of breath when walking at your own pace on level ground?"', NULL, NULL, 8985, '2022-06-21 15:20:50', '2022-06-21 15:20:50');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (200, 'ICD10-CM', ' I20.8', 'Other forms of angina pectoris', NULL, NULL, 1363, '2022-06-16 03:20:55', '2022-06-16 03:27:02');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (199, 'ICD10-CM', 'I20.1', 'Angina pectoris with documented spasm incT', NULL, NULL, 1363, '2022-06-16 03:20:31', '2022-06-16 03:28:18');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (201, 'ICD10-CM', 'I20.9', 'Angina pectoris, unspecified incT', NULL, NULL, 1363, '2022-06-16 03:33:39', '2022-06-16 03:33:39');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (202, 'ICD10-CM', 'I25.10', 'Atherosclerotic heart disease NOS', NULL, NULL, 1363, '2022-06-16 03:35:59', '2022-06-16 03:35:59');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (128, 'HL7-SET', '2086-7', 'Having origins in any of the original peoples of the Mariana Islands or the island of Guam.', NULL, NULL, 121, '2018-06-06 02:10:19', '2022-06-16 05:06:36');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (203, 'HL7-SET', '2079-8', 'Having origins in any of the original peoples of the islands of Hawaii.', NULL, NULL, 113, '2022-06-16 05:05:17', '2022-06-16 05:11:20');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (133, 'HL7-SET', '2180-8', 'Having origins in any of the original peoples of Puerto Rico.', 'If the patient has multiple hispanic or latin ethnicity, specify them using the other ethnicity selections in addition to this one.', NULL, 127, '2018-06-06 02:16:19', '2022-06-16 05:13:55');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (204, 'ACC-NCDR', '1000142382', NULL, 'CHSA Clinical Frailty<br />Scale 1: Very Fit - People who are robust, active, energetic and motivated. <br /><br />These people commonly exercise regularly. They are among the<br />fittest for their age.', NULL, 969, '2022-06-16 14:26:07', '2022-06-16 14:26:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (205, 'ACC-NCDR', '1000142383', NULL, '<strong>CHSA Clinical Frailty Scale 2:</strong><br /><br />Well - People who have no active disease symptoms but are less fit than category 1.<br /><br />Often, they exercise or are very active occasionally, e.g. seasonally.', NULL, 970, '2022-06-16 14:27:23', '2022-06-16 14:27:23');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (206, 'ACC-NCDR', '1000142390', NULL, 'CHSA Clinical Frailty Scale 9:<br />Terminally Ill - Approaching the end of life.<br /><br />This category applies to people with a life expectancy &lt;6 months, who are not otherwise evidently frail.', NULL, 929, '2022-06-16 14:30:59', '2022-06-16 14:30:59');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (207, 'ACC-NCDR', '1000142386', 'CHSA Clinical Frailty Scale 5: Mildly Frail - These peo<br />often have more evident slowing, and need help in hi<br />order IADLs (finances, transportation, heavy<br />housework, medications). Typically, mild frailty<br />progressively impairs shopping and walking outside<br />alone, meal preparation and housework.', 'CHSA Clinical Frailty Scale 5: Mildly Frail - These peo<br />often have more evident slowing, and need help in hi<br />order IADLs (finances, transportation, heavy<br />housework, medications). Typically, mild frailty<br />progressively impairs shopping and walking outside<br />alone, meal preparation and housework.', NULL, 928, '2022-06-16 14:31:57', '2022-06-16 14:31:57');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (208, 'SNOMED-CT', '17137000', NULL, NULL, NULL, 61, '2022-06-16 14:59:58', '2022-06-16 14:59:58');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (209, 'SNOMED-CT', '45631007', 'Radial', NULL, NULL, 467, '2022-06-16 15:01:06', '2022-06-16 15:01:06');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (210, 'SNOMED-CT', '45631007', NULL, NULL, NULL, 751, '2022-06-16 15:02:25', '2022-06-16 15:02:25');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (211, 'SNOMED-CT', '420300004', NULL, NULL, NULL, 1951, '2022-06-16 15:25:25', '2022-06-16 15:25:25');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (212, 'SNOMED-CT', '421704003', NULL, NULL, NULL, 1952, '2022-06-16 15:26:10', '2022-06-16 15:26:10');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (213, 'SNOMED-CT', '420913000', NULL, NULL, NULL, 1953, '2022-06-16 15:26:49', '2022-06-16 15:26:49');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (214, 'SNOMED-CT', '422293003', NULL, NULL, NULL, 1954, '2022-06-16 15:27:32', '2022-06-16 15:27:32');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (197, 'SNOMED-CT', '1111111 33333', 'Editing Codes', NULL, NULL, 9032, '2022-06-12 05:12:01', '2022-06-19 01:17:14');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (215, 'ACC-NCDR', '100013024', 'Indicate the patient''s response to the Rose Dyspnea Scale Questionnaire<br />Question 1 "Do you get short of breath when hurrying on level ground<br />or walking up a slight hill?"', NULL, NULL, 8984, '2022-06-21 15:16:13', '2022-06-21 15:17:49');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (216, 'ACC-NCDR', '100013025', NULL, NULL, NULL, 8987, '2022-06-21 15:19:35', '2022-06-21 15:19:35');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (218, 'ACC-NCDR', '100013027', 'Indicate the patient''s response to the Rose Dyspnea Scale Questionnaire <br />Question 4 "Do you get short of breath when washing or dressing?"', NULL, NULL, 8986, '2022-06-21 15:22:07', '2022-06-21 15:22:07');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (219, 'ACC-NCDR', '100013094', NULL, NULL, NULL, 1094, '2022-06-23 08:46:26', '2022-06-23 08:46:26');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (220, 'ACC-NCDR', '100013093', NULL, NULL, NULL, 9045, '2022-06-23 08:48:45', '2022-06-23 08:48:45');
INSERT INTO public.opts_codes (id, code_system, code, description, notes, definition_id, defs_option_id, inserted_at, updated_at) VALUES (221, 'ACC-NCDR', '100013083', NULL, NULL, NULL, 9044, '2022-06-23 08:49:17', '2022-06-23 08:49:17');


--
-- TOC entry 3212 (class 0 OID 0)
-- Dependencies: 217
-- Name: opts_codes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.opts_codes_id_seq', 221, true);


-- Completed on 2022-11-03 02:55:26 EET

--
-- PostgreSQL database dump complete
--

