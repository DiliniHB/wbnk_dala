--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 10:24:54 +0530

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
-- TOC entry 327 (class 1259 OID 393619)
-- Name: dmf_los_hoc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_los_hoc (
    type_of_losses character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
    total real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dmf_los_hoc OWNER TO postgres;

--
-- TOC entry 359 (class 1259 OID 401534)
-- Name: dmf_los_hoc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_los_hoc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_los_hoc_id_seq OWNER TO postgres;

--
-- TOC entry 2641 (class 0 OID 0)
-- Dependencies: 359
-- Name: dmf_los_hoc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_los_hoc_id_seq OWNED BY dmf_los_hoc.id;


--
-- TOC entry 2516 (class 2604 OID 401536)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_hoc ALTER COLUMN id SET DEFAULT nextval('dmf_los_hoc_id_seq'::regclass);


--
-- TOC entry 2635 (class 0 OID 393619)
-- Dependencies: 327
-- Data for Name: dmf_los_hoc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_los_hoc (type_of_losses, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
\.


--
-- TOC entry 2642 (class 0 OID 0)
-- Dependencies: 359
-- Name: dmf_los_hoc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_los_hoc_id_seq', 1, false);


--
-- TOC entry 2518 (class 2606 OID 401541)
-- Name: pk_dmf_los_hoc_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_hoc
    ADD CONSTRAINT pk_dmf_los_hoc_id PRIMARY KEY (id);


--
-- TOC entry 2520 (class 2606 OID 393625)
-- Name: fk_district_dmh_los_hoc; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_hoc
    ADD CONSTRAINT fk_district_dmh_los_hoc FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2519 (class 2606 OID 401329)
-- Name: fk_incident_dmf_los_hoc; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_hoc
    ADD CONSTRAINT fk_incident_dmf_los_hoc FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 10:24:54 +0530

--
-- PostgreSQL database dump complete
--

