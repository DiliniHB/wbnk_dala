--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-06 11:38:35 +0530

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = health, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 427 (class 1259 OID 434044)
-- Name: bd_session_keys; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bd_session_keys (
    id integer NOT NULL,
    data_type character varying(120),
    key bigint,
    date timestamp without time zone,
    "user" integer,
    bs_date character varying(255)
);


ALTER TABLE bd_session_keys OWNER TO postgres;

--
-- TOC entry 426 (class 1259 OID 434042)
-- Name: bd_session_keys_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE bd_session_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bd_session_keys_id_seq OWNER TO postgres;

--
-- TOC entry 2787 (class 0 OID 0)
-- Dependencies: 426
-- Name: bd_session_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE bd_session_keys_id_seq OWNED BY bd_session_keys.id;


--
-- TOC entry 2664 (class 2604 OID 434047)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bd_session_keys ALTER COLUMN id SET DEFAULT nextval('bd_session_keys_id_seq'::regclass);


--
-- TOC entry 2782 (class 0 OID 434044)
-- Dependencies: 427
-- Data for Name: bd_session_keys; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bd_session_keys (id, data_type, key, date, "user", bs_date) FROM stdin;
1	base_line	\N	2016-12-05 09:31:57.857125	\N	02/2016
\.


--
-- TOC entry 2788 (class 0 OID 0)
-- Dependencies: 426
-- Name: bd_session_keys_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('bd_session_keys_id_seq', 1, true);


--
-- TOC entry 2666 (class 2606 OID 434049)
-- Name: pk_bd_session_keys_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bd_session_keys
    ADD CONSTRAINT pk_bd_session_keys_id PRIMARY KEY (id);


-- Completed on 2016-12-06 11:38:36 +0530

--
-- PostgreSQL database dump complete
--

