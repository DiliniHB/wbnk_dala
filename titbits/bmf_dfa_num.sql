--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 18:02:16 +0530

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
-- TOC entry 316 (class 1259 OID 393496)
-- Name: dmf_dfa_num; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_dfa_num (
    num_des_facilities character varying(255),
    base_hospital bigint,
    divisional_hospital integer,
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
    bs_date character varying(255)
);


ALTER TABLE dmf_dfa_num OWNER TO postgres;

--
-- TOC entry 2499 (class 0 OID 393496)
-- Dependencies: 316
-- Data for Name: dmf_dfa_num; Type: TABLE DATA; Schema: health; Owner: postgres
--


--
-- TOC entry 2384 (class 2606 OID 393502)
-- Name: fk_district_dmf_dfa_num; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_dfa_num
    ADD CONSTRAINT fk_district_dmf_dfa_num FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 18:02:16 +0530

--
-- PostgreSQL database dump complete
--

