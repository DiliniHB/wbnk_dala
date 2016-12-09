--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-01 15:55:39 +0530

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
-- TOC entry 307 (class 1259 OID 393264)
-- Name: buc_omarc_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omarc_mequipment (
    id integer NOT NULL,
    particulars character varying(255) NOT NULL,
    base_hospital real NOT NULL,
    divisional_hospital real NOT NULL,
    rural_hospital real NOT NULL,
    central_dispensary real NOT NULL,
    pri_med_cunits real NOT NULL,
    pri_health_ccenters real NOT NULL,
    mat_child_health_clinics real NOT NULL,
    district integer NOT NULL,
    created_user integer NOT NULL,
    lmu integer NOT NULL,
    created_date timestamp without time zone NOT NULL,
    lmd timestamp without time zone NOT NULL,
    key bigint NOT NULL,
    bs_date character varying(255) NOT NULL
);


ALTER TABLE buc_omarc_mequipment OWNER TO postgres;

--
-- TOC entry 2483 (class 0 OID 393264)
-- Dependencies: 307
-- Data for Name: buc_omarc_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omarc_mequipment (id, particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
\.


--
-- TOC entry 2367 (class 2606 OID 393345)
-- Name: pk_buc_omarc_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_mequipment
    ADD CONSTRAINT pk_buc_omarc_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2368 (class 2606 OID 393270)
-- Name: fk_district_buc_omarc_mequipment; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_mequipment
    ADD CONSTRAINT fk_district_buc_omarc_mequipment FOREIGN KEY (district) REFERENCES public.district(id);


-- Completed on 2016-12-01 15:55:39 +0530

--
-- PostgreSQL database dump complete
--

