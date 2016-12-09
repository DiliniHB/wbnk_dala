--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-06 15:42:24 +0530

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = health, pg_catalog;

--
-- TOC entry 2608 (class 0 OID 78074)
-- Dependencies: 287
-- Data for Name: buc_omar_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_structure (id, particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
10	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 17:39:29.226234	2016-12-01 17:39:29.226244	\N	\N
19	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 04:39:57.237572	2016-12-02 04:39:57.237582	\N	\N
11	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 17:39:29.249866	2016-12-01 17:39:29.249878	\N	\N
20	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 04:39:57.258652	2016-12-02 04:39:57.258662	\N	\N
12	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 17:39:29.283549	2016-12-01 17:39:29.28356	\N	\N
4	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 12:16:32.716567	2016-12-01 12:16:32.716579	\N	\N
21	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 04:39:57.271491	2016-12-02 04:39:57.271501	\N	\N
13	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 17:40:09.118841	2016-12-01 17:40:09.118863	\N	\N
5	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 12:16:32.743557	2016-12-01 12:16:32.743569	\N	\N
14	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 17:40:09.154993	2016-12-01 17:40:09.155004	\N	\N
6	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 12:16:32.768484	2016-12-01 12:16:32.768493	\N	\N
22	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 07:00:25.176404	2016-12-06 07:00:25.176404	\N	02/2016
15	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 17:40:09.181209	2016-12-01 17:40:09.181221	\N	\N
7	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 12:21:10.307696	2016-12-01 12:21:10.307705	\N	\N
23	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 07:00:25.176404	2016-12-06 07:00:25.176404	\N	02/2016
8	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 12:21:10.322187	2016-12-01 12:21:10.322197	\N	\N
16	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 04:38:07.10802	2016-12-02 04:38:07.108029	\N	\N
9	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-01 12:21:10.344697	2016-12-01 12:21:10.344707	\N	\N
24	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 07:00:25.176404	2016-12-06 07:00:25.176404	\N	02/2016
17	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 04:38:07.129999	2016-12-02 04:38:07.130009	\N	\N
18	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 04:38:07.142974	2016-12-02 04:38:07.142984	\N	\N
\.


--
-- TOC entry 2615 (class 0 OID 0)
-- Dependencies: 288
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omar_structure_id_seq', 24, true);


-- Completed on 2016-12-06 15:42:25 +0530

--
-- PostgreSQL database dump complete
--

