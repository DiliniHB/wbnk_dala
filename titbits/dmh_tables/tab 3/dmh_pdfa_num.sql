--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 11:03:15 +0530

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
-- TOC entry 344 (class 1259 OID 393825)
-- Name: dmh_pdfa_num; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_pdfa_num (
    num_des_facilities character varying(255),
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
    bs_date character varying(255),
    incident integer
);


ALTER TABLE dmh_pdfa_num OWNER TO postgres;

--
-- TOC entry 2645 (class 0 OID 393825)
-- Dependencies: 344
-- Data for Name: dmh_pdfa_num; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_pdfa_num (num_des_facilities, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, bs_date, incident) FROM stdin;
\.


--
-- TOC entry 2530 (class 2606 OID 393831)
-- Name: fk_district_dmh_pdfa_num; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_num
    ADD CONSTRAINT fk_district_dmh_pdfa_num FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2529 (class 2606 OID 401369)
-- Name: fk_incident_dmh_pdfa_num; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_num
    ADD CONSTRAINT fk_incident_dmh_pdfa_num FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 11:03:15 +0530

--
-- PostgreSQL database dump complete
--

