--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-02 11:10:11 +0530

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
-- TOC entry 340 (class 1259 OID 393781)
-- Name: dmh_los_fi; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_los_fi (
    type_of_losses character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
    office real,
    other real,
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


ALTER TABLE dmh_los_fi OWNER TO postgres;

--
-- TOC entry 370 (class 1259 OID 401623)
-- Name: dmh_los_fi_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_los_fi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_los_fi_id_seq OWNER TO postgres;

--
-- TOC entry 2654 (class 0 OID 0)
-- Dependencies: 370
-- Name: dmh_los_fi_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_los_fi_id_seq OWNED BY dmh_los_fi.id;


--
-- TOC entry 2529 (class 2604 OID 401625)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_fi ALTER COLUMN id SET DEFAULT nextval('dmh_los_fi_id_seq'::regclass);


--
-- TOC entry 2648 (class 0 OID 393781)
-- Dependencies: 340
-- Data for Name: dmh_los_fi; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_los_fi (type_of_losses, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
\.


--
-- TOC entry 2655 (class 0 OID 0)
-- Dependencies: 370
-- Name: dmh_los_fi_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_los_fi_id_seq', 1, false);


--
-- TOC entry 2531 (class 2606 OID 401630)
-- Name: pk_dmh_los_fi_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_fi
    ADD CONSTRAINT pk_dmh_los_fi_id PRIMARY KEY (id);


--
-- TOC entry 2533 (class 2606 OID 393787)
-- Name: fk_district_dmh_los_fi; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_fi
    ADD CONSTRAINT fk_district_dmh_los_fi FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2532 (class 2606 OID 401394)
-- Name: fk_incident_dmh_los_fi; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_fi
    ADD CONSTRAINT fk_incident_dmh_los_fi FOREIGN KEY (incident) REFERENCES public.incident_report(id);


-- Completed on 2016-12-02 11:10:11 +0530

--
-- PostgreSQL database dump complete
--

