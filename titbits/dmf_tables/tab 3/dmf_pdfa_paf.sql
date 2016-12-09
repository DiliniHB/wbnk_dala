--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 10:21:32 +0530

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
-- TOC entry 330 (class 1259 OID 393652)
-- Name: dmf_pdfa_paf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_pdfa_paf (
    num_patients_affected character varying(255),
    base_hospital bigint,
    divisional_hospital bigint,
    rural_hospital bigint,
    central_dispensary bigint,
    pmcus bigint,
    phccs bigint,
    mchcs bigint,
    total bigint,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    id integer NOT NULL,
    incident integer
);


ALTER TABLE dmf_pdfa_paf OWNER TO postgres;

--
-- TOC entry 353 (class 1259 OID 401479)
-- Name: dmf_pdfa_paf_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_pdfa_paf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_pdfa_paf_id_seq OWNER TO postgres;

--
-- TOC entry 2641 (class 0 OID 0)
-- Dependencies: 353
-- Name: dmf_pdfa_paf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_pdfa_paf_id_seq OWNED BY dmf_pdfa_paf.id;


--
-- TOC entry 2516 (class 2604 OID 401481)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_paf ALTER COLUMN id SET DEFAULT nextval('dmf_pdfa_paf_id_seq'::regclass);


--
-- TOC entry 2635 (class 0 OID 393652)
-- Dependencies: 330
-- Data for Name: dmf_pdfa_paf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_pdfa_paf (num_patients_affected, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, id, incident) FROM stdin;
\.


--
-- TOC entry 2642 (class 0 OID 0)
-- Dependencies: 353
-- Name: dmf_pdfa_paf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_pdfa_paf_id_seq', 1, false);


--
-- TOC entry 2518 (class 2606 OID 401486)
-- Name: pk_dmf_pdfa_paf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_paf
    ADD CONSTRAINT pk_dmf_pdfa_paf_id PRIMARY KEY (id);


--
-- TOC entry 2520 (class 2606 OID 393658)
-- Name: fk_district_dmf_pdfa_paf; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_paf
    ADD CONSTRAINT fk_district_dmf_pdfa_paf FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2519 (class 2606 OID 401488)
-- Name: fk_incident_dmf_pdfa_paf; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_paf
    ADD CONSTRAINT fk_incident_dmf_pdfa_paf FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 10:21:32 +0530

--
-- PostgreSQL database dump complete
--

