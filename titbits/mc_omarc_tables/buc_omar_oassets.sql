--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 16:12:03 +0530

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
-- TOC entry 304 (class 1259 OID 393231)
-- Name: buc_omarc_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omarc_oassets (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omarc_oassets OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 393279)
-- Name: buc_omarc_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omarc_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omarc_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 2496 (class 0 OID 0)
-- Dependencies: 307
-- Name: buc_omarc_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omarc_oassets_id_seq OWNED BY buc_omarc_oassets.id;


--
-- TOC entry 2372 (class 2604 OID 393281)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_oassets ALTER COLUMN id SET DEFAULT nextval('buc_omarc_oassets_id_seq'::regclass);


--
-- TOC entry 2490 (class 0 OID 393231)
-- Dependencies: 304
-- Data for Name: buc_omarc_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omarc_oassets (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
\.


--
-- TOC entry 2497 (class 0 OID 0)
-- Dependencies: 307
-- Name: buc_omarc_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omarc_oassets_id_seq', 1, false);


--
-- TOC entry 2374 (class 2606 OID 393289)
-- Name: pk_buc_omarc_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_oassets
    ADD CONSTRAINT pk_buc_omarc_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2375 (class 2606 OID 393237)
-- Name: fk_district_buc_omarc_oassets; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_oassets
    ADD CONSTRAINT fk_district_buc_omarc_oassets FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 16:12:03 +0530

--
-- PostgreSQL database dump complete
--

