--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 15:16:28 +0530

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
-- TOC entry 301 (class 1259 OID 393186)
-- Name: buc_omar_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_supplies (
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


ALTER TABLE buc_omar_supplies OWNER TO postgres;

--
-- TOC entry 2465 (class 0 OID 393186)
-- Dependencies: 301
-- Data for Name: buc_omar_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_supplies (id, particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
\.


--
-- TOC entry 2349 (class 2606 OID 393230)
-- Name: pk_buc_omar_supplies; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_supplies
    ADD CONSTRAINT pk_buc_omar_supplies PRIMARY KEY (id);


--
-- TOC entry 2350 (class 2606 OID 393192)
-- Name: fk_district_buc_omar_supplies; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_supplies
    ADD CONSTRAINT fk_district_buc_omar_supplies FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 15:16:28 +0530

--
-- PostgreSQL database dump complete
--

