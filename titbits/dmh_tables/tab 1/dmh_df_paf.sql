--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 10:59:00 +0530

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
-- TOC entry 332 (class 1259 OID 393680)
-- Name: dmh_df_paf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_df_paf (
    num_patients_affected character varying(255),
    teaching_hospital bigint,
    provincial_general_hospital bigint,
    district_general_hospital bigint,
    office bigint,
    other bigint,
    total bigint,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dmh_df_paf OWNER TO postgres;

--
-- TOC entry 362 (class 1259 OID 401558)
-- Name: dmh_df_paf_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_df_paf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_df_paf_id_seq OWNER TO postgres;

--
-- TOC entry 2654 (class 0 OID 0)
-- Dependencies: 362
-- Name: dmh_df_paf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_df_paf_id_seq OWNED BY dmh_df_paf.id;


--
-- TOC entry 2529 (class 2604 OID 401560)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_paf ALTER COLUMN id SET DEFAULT nextval('dmh_df_paf_id_seq'::regclass);


--
-- TOC entry 2648 (class 0 OID 393680)
-- Dependencies: 332
-- Data for Name: dmh_df_paf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_df_paf (num_patients_affected, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
\.


--
-- TOC entry 2655 (class 0 OID 0)
-- Dependencies: 362
-- Name: dmh_df_paf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_df_paf_id_seq', 1, false);


--
-- TOC entry 2531 (class 2606 OID 401565)
-- Name: pk_dmh_df_paf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_paf
    ADD CONSTRAINT pk_dmh_df_paf_id PRIMARY KEY (id);


--
-- TOC entry 2533 (class 2606 OID 393686)
-- Name: fk_district_dmh_df_paf; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_paf
    ADD CONSTRAINT fk_district_dmh_df_paf FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2532 (class 2606 OID 401344)
-- Name: fk_incident_dmh_df_paf; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_paf
    ADD CONSTRAINT fk_incident_dmh_df_paf FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 10:59:00 +0530

--
-- PostgreSQL database dump complete
--

