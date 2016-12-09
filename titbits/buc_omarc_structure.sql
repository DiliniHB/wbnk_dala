--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 14:41:46 +0530

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
-- TOC entry 300 (class 1259 OID 393172)
-- Name: buc_omar_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_structure (
    id integer NOT NULL,
    particulars character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pri_med_cunits real,
    pri_health_ccenters real,
    mat_child_health_clinics real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    bs_date character varying(255)
);


ALTER TABLE buc_omar_structure OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 393170)
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omar_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omar_structure_id_seq OWNER TO postgres;

--
-- TOC entry 2460 (class 0 OID 0)
-- Dependencies: 299
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omar_structure_id_seq OWNED BY buc_omar_structure.id;


--
-- TOC entry 2336 (class 2604 OID 393175)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_structure ALTER COLUMN id SET DEFAULT nextval('buc_omar_structure_id_seq'::regclass);


--
-- TOC entry 2455 (class 0 OID 393172)
-- Dependencies: 300
-- Data for Name: buc_omar_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_structure (id, particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
\.


--
-- TOC entry 2461 (class 0 OID 0)
-- Dependencies: 299
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omar_structure_id_seq', 1, false);


--
-- TOC entry 2338 (class 2606 OID 393180)
-- Name: pk_buc_omar_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_structure
    ADD CONSTRAINT pk_buc_omar_structure_id PRIMARY KEY (id);


--
-- TOC entry 2339 (class 2606 OID 393181)
-- Name: fk_district_buc_omar_structure; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_structure
    ADD CONSTRAINT fk_district_buc_omar_structure FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 14:41:46 +0530

--
-- PostgreSQL database dump complete
--

