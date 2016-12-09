--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 15:23:14 +0530

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
-- TOC entry 335 (class 1259 OID 393713)
-- Name: dmh_ndat_fac_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_ndat_fac_supplies (
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


ALTER TABLE dmh_ndat_fac_supplies OWNER TO postgres;

--
-- TOC entry 364 (class 1259 OID 401575)
-- Name: dmh_ndat_fac_supplies_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_ndat_fac_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_ndat_fac_supplies_id_seq OWNER TO postgres;

--
-- TOC entry 2659 (class 0 OID 0)
-- Dependencies: 364
-- Name: dmh_ndat_fac_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_ndat_fac_supplies_id_seq OWNED BY dmh_ndat_fac_supplies.id;


--
-- TOC entry 2534 (class 2604 OID 401577)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_supplies ALTER COLUMN id SET DEFAULT nextval('dmh_ndat_fac_supplies_id_seq'::regclass);


--
-- TOC entry 2653 (class 0 OID 393713)
-- Dependencies: 335
-- Data for Name: dmh_ndat_fac_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_ndat_fac_supplies (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
\.


--
-- TOC entry 2660 (class 0 OID 0)
-- Dependencies: 364
-- Name: dmh_ndat_fac_supplies_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_ndat_fac_supplies_id_seq', 1, false);


--
-- TOC entry 2536 (class 2606 OID 401582)
-- Name: pk_dmh_ndat_fac_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_supplies
    ADD CONSTRAINT pk_dmh_ndat_fac_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2538 (class 2606 OID 393719)
-- Name: fk_district_dmh_ndat_fac_supplies; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_supplies
    ADD CONSTRAINT fk_district_dmh_ndat_fac_supplies FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2537 (class 2606 OID 401354)
-- Name: fk_incident_dmh_ndat_fac_supplies; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_supplies
    ADD CONSTRAINT fk_incident_dmh_ndat_fac_supplies FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 15:23:14 +0530

--
-- PostgreSQL database dump complete
--

