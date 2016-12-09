--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 12:15:24 +0530

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
-- TOC entry 205 (class 1259 OID 361184)
-- Name: buc_mar_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_structure (
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


ALTER TABLE buc_marc_structure OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 361187)
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

--
-- TOC entry 2447 (class 0 OID 0)
-- Dependencies: 206
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

--
-- TOC entry 2323 (class 2604 OID 361464)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--



--
-- TOC entry 2448 (class 0 OID 0)
-- Dependencies: 206
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--



--
-- TOC entry 2441 (class 0 OID 361184)
-- Dependencies: 205
-- Data for Name: buc_mar_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--


--
-- TOC entry 2325 (class 2606 OID 361563)
-- Name: pk_BUC_MAR_STRUCTURE_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_structure
    ADD CONSTRAINT "pk_buc_marc_structure_id" PRIMARY KEY (id);


--
-- TOC entry 2326 (class 2606 OID 361801)
-- Name: fk_district_BUC_MAR_STRUCTURE; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_structure
    ADD CONSTRAINT "fk_district_BUC_MAR_STRUCTURE" FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 12:15:25 +0530

--
-- PostgreSQL database dump complete
--

