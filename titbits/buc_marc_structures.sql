--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 15:14:43 +0530

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
-- TOC entry 296 (class 1259 OID 393146)
-- Name: buc_marc_structures; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_structures (
    id integer NOT NULL,
    particulars character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
    office real,
    other real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint
);


ALTER TABLE buc_marc_structures OWNER TO postgres;

--
-- TOC entry 2463 (class 0 OID 393146)
-- Dependencies: 296
-- Data for Name: buc_marc_structures; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_marc_structures (id, particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key) FROM stdin;
\.


--
-- TOC entry 2348 (class 2606 OID 393149)
-- Name: fk_district_buc_marc_structures; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_structures
    ADD CONSTRAINT fk_district_buc_marc_structures FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 15:14:43 +0530

--
-- PostgreSQL database dump complete
--

