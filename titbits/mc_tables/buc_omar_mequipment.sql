--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 15:15:27 +0530

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
-- TOC entry 302 (class 1259 OID 393197)
-- Name: buc_omar_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_mequipment (
    id integer NOT NULL,
    particulars character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pri_med_cunits real,
    pri_health_ccenters real,
    mat_child_health_clinics real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    bs_date character varying(255)
);


ALTER TABLE buc_omar_mequipment OWNER TO postgres;

--
-- TOC entry 2465 (class 0 OID 393197)
-- Dependencies: 302
-- Data for Name: buc_omar_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_mequipment (id, particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
\.


--
-- TOC entry 2349 (class 2606 OID 393222)
-- Name: pk_buc_omar_mequipment; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_mequipment
    ADD CONSTRAINT pk_buc_omar_mequipment PRIMARY KEY (id);


--
-- TOC entry 2350 (class 2606 OID 393203)
-- Name: fk_district_buc_omar_mequipments; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_mequipment
    ADD CONSTRAINT fk_district_buc_omar_mequipments FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 15:15:27 +0530

--
-- PostgreSQL database dump complete
--

