--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 16:22:07 +0530

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
-- TOC entry 295 (class 1259 OID 393138)
-- Name: buc_marc_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_supplies (
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
    key bigint,
    id integer NOT NULL
);


ALTER TABLE buc_marc_supplies OWNER TO postgres;

--
-- TOC entry 315 (class 1259 OID 393488)
-- Name: buc_marc_supplies_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_marc_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_marc_supplies_id_seq OWNER TO postgres;

--
-- TOC entry 2504 (class 0 OID 0)
-- Dependencies: 315
-- Name: buc_marc_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_marc_supplies_id_seq OWNED BY buc_marc_supplies.id;


--
-- TOC entry 2380 (class 2604 OID 393490)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_supplies ALTER COLUMN id SET DEFAULT nextval('buc_marc_supplies_id_seq'::regclass);


--
-- TOC entry 2498 (class 0 OID 393138)
-- Dependencies: 295
-- Data for Name: buc_marc_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_marc_supplies (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
\.


--
-- TOC entry 2505 (class 0 OID 0)
-- Dependencies: 315
-- Name: buc_marc_supplies_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_marc_supplies_id_seq', 1, false);


--
-- TOC entry 2382 (class 2606 OID 393495)
-- Name: pk_buc_marc_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_supplies
    ADD CONSTRAINT pk_buc_marc_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2383 (class 2606 OID 393141)
-- Name: fk_district_buc_marc_supplies; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_supplies
    ADD CONSTRAINT fk_district_buc_marc_supplies FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 16:22:07 +0530

--
-- PostgreSQL database dump complete
--

