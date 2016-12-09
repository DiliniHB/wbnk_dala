--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 11:01:43 +0530

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
-- TOC entry 336 (class 1259 OID 393724)
-- Name: dmh_ndat_fac_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_ndat_fac_mequipment (
    asset character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
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


ALTER TABLE dmh_ndat_fac_mequipment OWNER TO postgres;

--
-- TOC entry 365 (class 1259 OID 401583)
-- Name: dmh_ndat_fac_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_ndat_fac_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_ndat_fac_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 2654 (class 0 OID 0)
-- Dependencies: 365
-- Name: dmh_ndat_fac_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_ndat_fac_mequipment_id_seq OWNED BY dmh_ndat_fac_mequipment.id;


--
-- TOC entry 2529 (class 2604 OID 401585)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_mequipment ALTER COLUMN id SET DEFAULT nextval('dmh_ndat_fac_mequipment_id_seq'::regclass);


--
-- TOC entry 2648 (class 0 OID 393724)
-- Dependencies: 336
-- Data for Name: dmh_ndat_fac_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_ndat_fac_mequipment (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
\.


--
-- TOC entry 2655 (class 0 OID 0)
-- Dependencies: 365
-- Name: dmh_ndat_fac_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_ndat_fac_mequipment_id_seq', 1, false);


--
-- TOC entry 2531 (class 2606 OID 401590)
-- Name: pk_dmh_ndat_fac_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_mequipment
    ADD CONSTRAINT pk_dmh_ndat_fac_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2533 (class 2606 OID 393730)
-- Name: fk_district_dmh_ndat_fac_mequipment; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_mequipment
    ADD CONSTRAINT fk_district_dmh_ndat_fac_mequipment FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2532 (class 2606 OID 401359)
-- Name: fk_incident_dmh_ndat_fac_mequipment; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_mequipment
    ADD CONSTRAINT fk_incident_dmh_ndat_fac_mequipment FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 11:01:43 +0530

--
-- PostgreSQL database dump complete
--

