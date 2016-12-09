--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-08 22:22:06 +0530

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 442235)
-- Name: health; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA health;


ALTER SCHEMA health OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12393)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = health, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 442236)
-- Name: assest_type; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE assest_type (
    id integer NOT NULL,
    name character varying,
    description character varying,
    geo_spatial_type character varying
);


ALTER TABLE assest_type OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 442242)
-- Name: AssestType_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "AssestType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AssestType_Id_seq" OWNER TO postgres;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 183
-- Name: AssestType_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "AssestType_Id_seq" OWNED BY assest_type.id;


--
-- TOC entry 184 (class 1259 OID 442244)
-- Name: bmf_pub_mf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bmf_pub_mf (
    id integer NOT NULL,
    type_pub_mf character varying(255),
    number integer,
    male integer,
    female integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    district integer,
    bs_date character varying(20)
);


ALTER TABLE bmf_pub_mf OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 442247)
-- Name: BMF_PUB_MF_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "BMF_PUB_MF_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BMF_PUB_MF_id_seq" OWNER TO postgres;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 185
-- Name: BMF_PUB_MF_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BMF_PUB_MF_id_seq" OWNED BY bmf_pub_mf.id;


--
-- TOC entry 186 (class 1259 OID 442249)
-- Name: buc_mar_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_mar_mequipment (
    particulars character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    id integer NOT NULL
);


ALTER TABLE buc_mar_mequipment OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 442252)
-- Name: BUC_MAR_MEQUIPMENT_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_MEQUIPMENT_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_MEQUIPMENT_Id_seq" OWNER TO postgres;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 187
-- Name: BUC_MAR_MEQUIPMENT_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_MEQUIPMENT_Id_seq" OWNED BY buc_mar_mequipment.id;


--
-- TOC entry 188 (class 1259 OID 442254)
-- Name: buc_mar_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_mar_oassets (
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


ALTER TABLE buc_mar_oassets OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 442257)
-- Name: BUC_MAR_OASSETS_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_OASSETS_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_OASSETS_Id_seq" OWNER TO postgres;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 189
-- Name: BUC_MAR_OASSETS_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_OASSETS_Id_seq" OWNED BY buc_mar_oassets.id;


--
-- TOC entry 190 (class 1259 OID 442259)
-- Name: buc_mar_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_mar_structure (
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
    key bigint,
    bs_date character varying(12)
);


ALTER TABLE buc_mar_structure OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 442262)
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_STRUCTURE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_STRUCTURE_id_seq" OWNER TO postgres;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 191
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_STRUCTURE_id_seq" OWNED BY buc_mar_structure.id;


--
-- TOC entry 192 (class 1259 OID 442264)
-- Name: buc_mar_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_mar_supplies (
    particulars character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    id integer NOT NULL
);


ALTER TABLE buc_mar_supplies OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 442267)
-- Name: BUC_MAR_SUPPLIES_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_SUPPLIES_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_SUPPLIES_Id_seq" OWNER TO postgres;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 193
-- Name: BUC_MAR_SUPPLIES_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_SUPPLIES_Id_seq" OWNED BY buc_mar_supplies.id;


--
-- TOC entry 194 (class 1259 OID 442269)
-- Name: data_entry; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE data_entry (
    added_date date,
    id integer NOT NULL,
    table_id bigint,
    user_id bigint,
    district_id bigint
);


ALTER TABLE data_entry OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 442272)
-- Name: DataEntry_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "DataEntry_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DataEntry_Id_seq" OWNER TO postgres;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 195
-- Name: DataEntry_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "DataEntry_Id_seq" OWNED BY data_entry.id;


--
-- TOC entry 196 (class 1259 OID 442274)
-- Name: geo_line; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE geo_line (
    id integer NOT NULL,
    assest_type bigint,
    geon line
);


ALTER TABLE geo_line OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 442277)
-- Name: GeoLine_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "GeoLine_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GeoLine_Id_seq" OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 197
-- Name: GeoLine_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "GeoLine_Id_seq" OWNED BY geo_line.id;


--
-- TOC entry 198 (class 1259 OID 442279)
-- Name: geo_point; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE geo_point (
    id integer NOT NULL,
    assest_type bigint,
    geon point
);


ALTER TABLE geo_point OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 442282)
-- Name: GeoPoint_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "GeoPoint_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GeoPoint_Id_seq" OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 199
-- Name: GeoPoint_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "GeoPoint_Id_seq" OWNED BY geo_point.id;


--
-- TOC entry 200 (class 1259 OID 442284)
-- Name: geo_polygon; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE geo_polygon (
    id integer NOT NULL,
    assest_type bigint,
    geon polygon
);


ALTER TABLE geo_polygon OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 442290)
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "GeoPolygon_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GeoPolygon_Id_seq" OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 201
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "GeoPolygon_Id_seq" OWNED BY geo_polygon.id;


--
-- TOC entry 202 (class 1259 OID 442292)
-- Name: sector_tabel_col; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE sector_tabel_col (
    id integer NOT NULL,
    sector_tabel_id bigint NOT NULL,
    col_name character varying,
    value character varying,
    data_type character varying,
    lmu bigint,
    lmd time without time zone,
    created_date time without time zone,
    data_entry_id bigint,
    district_id bigint
);


ALTER TABLE sector_tabel_col OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 442298)
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "SectorTabelCol_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SectorTabelCol_Id_seq" OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 203
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "SectorTabelCol_Id_seq" OWNED BY sector_tabel_col.id;


--
-- TOC entry 204 (class 1259 OID 442300)
-- Name: sector_table; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE sector_table (
    id integer NOT NULL,
    name character varying,
    description character varying,
    table_type boolean
);


ALTER TABLE sector_table OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 442306)
-- Name: SectorTable_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "SectorTable_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SectorTable_Id_seq" OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 205
-- Name: SectorTable_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "SectorTable_Id_seq" OWNED BY sector_table.id;


--
-- TOC entry 206 (class 1259 OID 442308)
-- Name: user_role_permission; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE user_role_permission (
    id integer NOT NULL,
    user_role_id bigint,
    sector_property_id bigint,
    permission_type_id bigint
);


ALTER TABLE user_role_permission OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 442311)
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE "UserRolePermission_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "UserRolePermission_Id_seq" OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 207
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "UserRolePermission_Id_seq" OWNED BY user_role_permission.id;


--
-- TOC entry 208 (class 1259 OID 442313)
-- Name: auth_group; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 442316)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 210 (class 1259 OID 442318)
-- Name: auth_group_permissions; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 442321)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 212 (class 1259 OID 442323)
-- Name: auth_permission; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 442326)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 214 (class 1259 OID 442328)
-- Name: auth_user; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 442331)
-- Name: auth_user_groups; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 442334)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 217 (class 1259 OID 442336)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 218 (class 1259 OID 442338)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 442341)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 220 (class 1259 OID 442343)
-- Name: bd_session_keys; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bd_session_keys (
    id integer NOT NULL,
    data_type character varying(120),
    key bigint,
    date timestamp without time zone,
    "user" integer,
    bs_date character varying(255)
);


ALTER TABLE bd_session_keys OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 442346)
-- Name: bd_session_keys_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE bd_session_keys_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bd_session_keys_id_seq OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 221
-- Name: bd_session_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE bd_session_keys_id_seq OWNED BY bd_session_keys.id;


--
-- TOC entry 392 (class 1259 OID 443406)
-- Name: bhs_com_diseases; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bhs_com_diseases (
    id integer NOT NULL,
    com_disease character varying(255),
    male integer,
    female integer,
    children integer,
    elderly integer,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    session_id bigint,
    bs_date character varying(255)
);


ALTER TABLE bhs_com_diseases OWNER TO postgres;

--
-- TOC entry 391 (class 1259 OID 443404)
-- Name: bhs_com_diseases_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE bhs_com_diseases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bhs_com_diseases_id_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 391
-- Name: bhs_com_diseases_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE bhs_com_diseases_id_seq OWNED BY bhs_com_diseases.id;


--
-- TOC entry 394 (class 1259 OID 443422)
-- Name: bhs_oi; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bhs_oi (
    id integer NOT NULL,
    other_indicators character varying(255),
    male integer,
    female integer,
    children integer,
    elderly integer,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    session_id bigint,
    unit_measure character varying(255),
    bs_date character varying(255)
);


ALTER TABLE bhs_oi OWNER TO postgres;

--
-- TOC entry 393 (class 1259 OID 443420)
-- Name: bhs_oi_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE bhs_oi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bhs_oi_id_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 393
-- Name: bhs_oi_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE bhs_oi_id_seq OWNED BY bhs_oi.id;


--
-- TOC entry 396 (class 1259 OID 443438)
-- Name: bhs_plc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bhs_plc (
    id integer NOT NULL,
    male integer,
    female integer,
    children integer,
    elderly integer,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    session_id bigint,
    bs_date character varying(255)
);


ALTER TABLE bhs_plc OWNER TO postgres;

--
-- TOC entry 395 (class 1259 OID 443436)
-- Name: bhs_plc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE bhs_plc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bhs_plc_id_seq OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 395
-- Name: bhs_plc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE bhs_plc_id_seq OWNED BY bhs_plc.id;


--
-- TOC entry 398 (class 1259 OID 443451)
-- Name: bhs_vi; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bhs_vi (
    id integer NOT NULL,
    vital_indicators character varying(255),
    male integer,
    female integer,
    children integer,
    elderly integer,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    session_id bigint,
    bs_date character varying(255)
);


ALTER TABLE bhs_vi OWNER TO postgres;

--
-- TOC entry 397 (class 1259 OID 443449)
-- Name: bhs_vi_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE bhs_vi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bhs_vi_id_seq OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 397
-- Name: bhs_vi_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE bhs_vi_id_seq OWNED BY bhs_vi.id;


--
-- TOC entry 222 (class 1259 OID 442348)
-- Name: bmf_pvt_mf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bmf_pvt_mf (
    id integer DEFAULT nextval('"BMF_PUB_MF_id_seq"'::regclass) NOT NULL,
    type_pvt_mf character varying(255),
    number integer,
    male integer,
    female integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    district integer,
    bs_date character varying(20)
);


ALTER TABLE bmf_pvt_mf OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 442352)
-- Name: buc_marc_crpm; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_crpm (
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


ALTER TABLE buc_marc_crpm OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 442355)
-- Name: buc_marc_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_mequipment (
    particulars character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    id integer NOT NULL
);


ALTER TABLE buc_marc_mequipment OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 442358)
-- Name: buc_marc_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_marc_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_marc_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 225
-- Name: buc_marc_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_marc_mequipment_id_seq OWNED BY buc_marc_mequipment.id;


--
-- TOC entry 226 (class 1259 OID 442360)
-- Name: buc_marc_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_oassets (
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


ALTER TABLE buc_marc_oassets OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 442363)
-- Name: buc_marc_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_marc_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_marc_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 227
-- Name: buc_marc_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_marc_oassets_id_seq OWNED BY buc_marc_oassets.id;


--
-- TOC entry 228 (class 1259 OID 442365)
-- Name: buc_marc_structures; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_marc_structures (
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


ALTER TABLE buc_marc_structures OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 442368)
-- Name: buc_marc_structures_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_marc_structures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_marc_structures_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 229
-- Name: buc_marc_structures_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_marc_structures_id_seq OWNED BY buc_marc_structures.id;


--
-- TOC entry 230 (class 1259 OID 442370)
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
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 230
-- Name: buc_marc_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_marc_supplies_id_seq OWNED BY buc_marc_crpm.id;


--
-- TOC entry 231 (class 1259 OID 442372)
-- Name: buc_omar_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_mequipment (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omar_mequipment OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 442378)
-- Name: buc_omar_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omar_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omar_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 232
-- Name: buc_omar_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omar_mequipment_id_seq OWNED BY buc_omar_mequipment.id;


--
-- TOC entry 233 (class 1259 OID 442380)
-- Name: buc_omar_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_oassets (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omar_oassets OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 442386)
-- Name: buc_omar_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omar_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omar_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 234
-- Name: buc_omar_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omar_oassets_id_seq OWNED BY buc_omar_oassets.id;


--
-- TOC entry 235 (class 1259 OID 442388)
-- Name: buc_omar_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_structure (
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


ALTER TABLE buc_omar_structure OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 442394)
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omar_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omar_structure_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 236
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omar_structure_id_seq OWNED BY buc_omar_structure.id;


--
-- TOC entry 237 (class 1259 OID 442396)
-- Name: buc_omar_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omar_supplies (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omar_supplies OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 442402)
-- Name: buc_omar_supplies_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omar_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omar_supplies_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 238
-- Name: buc_omar_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omar_supplies_id_seq OWNED BY buc_omar_supplies.id;


--
-- TOC entry 239 (class 1259 OID 442404)
-- Name: buc_omarc_crpm; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omarc_crpm (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omarc_crpm OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 442410)
-- Name: buc_omarc_crpm_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omarc_crpm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omarc_crpm_id_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 240
-- Name: buc_omarc_crpm_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omarc_crpm_id_seq OWNED BY buc_omarc_crpm.id;


--
-- TOC entry 241 (class 1259 OID 442412)
-- Name: buc_omarc_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omarc_mequipment (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omarc_mequipment OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 442418)
-- Name: buc_omarc_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omarc_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omarc_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 242
-- Name: buc_omarc_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omarc_mequipment_id_seq OWNED BY buc_omarc_mequipment.id;


--
-- TOC entry 243 (class 1259 OID 442420)
-- Name: buc_omarc_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omarc_oassets (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omarc_oassets OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 442426)
-- Name: buc_omarc_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omarc_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omarc_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 244
-- Name: buc_omarc_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omarc_oassets_id_seq OWNED BY buc_omarc_oassets.id;


--
-- TOC entry 245 (class 1259 OID 442428)
-- Name: buc_omarc_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_omarc_structure (
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
    bs_date character varying(255),
    id integer NOT NULL
);


ALTER TABLE buc_omarc_structure OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 442434)
-- Name: buc_omarc_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE buc_omarc_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE buc_omarc_structure_id_seq OWNER TO postgres;

--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 246
-- Name: buc_omarc_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE buc_omarc_structure_id_seq OWNED BY buc_omarc_structure.id;


--
-- TOC entry 247 (class 1259 OID 442436)
-- Name: dap_bef_other; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dap_bef_other (
    pvt_clinics character varying(255),
    est_replacement_cost real,
    est_repair_cost real,
    total_damages real,
    est_losses_y1 real,
    est_losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dap_bef_other OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 442439)
-- Name: dap_bef_other_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dap_bef_other_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dap_bef_other_id_seq OWNER TO postgres;

--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 248
-- Name: dap_bef_other_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dap_bef_other_id_seq OWNED BY dap_bef_other.id;


--
-- TOC entry 249 (class 1259 OID 442441)
-- Name: dap_bef_pc1; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dap_bef_pc1 (
    pvt_clinics character varying(255),
    est_replacement_cost real,
    est_repair_cost real,
    total_damages real,
    est_losses_y1 real,
    est_losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dap_bef_pc1 OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 442444)
-- Name: dap_bef_pc1_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dap_bef_pc1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dap_bef_pc1_id_seq OWNER TO postgres;

--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 250
-- Name: dap_bef_pc1_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dap_bef_pc1_id_seq OWNED BY dap_bef_pc1.id;


--
-- TOC entry 251 (class 1259 OID 442446)
-- Name: dap_bef_pcn; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dap_bef_pcn (
    pvt_clinics character varying(255),
    est_replacement_cost real,
    est_repair_cost real,
    total_damages real,
    est_losses_y1 real,
    est_losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dap_bef_pcn OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 442449)
-- Name: dap_bef_pcn_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dap_bef_pcn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dap_bef_pcn_id_seq OWNER TO postgres;

--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 252
-- Name: dap_bef_pcn_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dap_bef_pcn_id_seq OWNED BY dap_bef_pcn.id;


--
-- TOC entry 253 (class 1259 OID 442451)
-- Name: dap_nap_tmf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dap_nap_tmf (
    id integer NOT NULL,
    type_med_fac character varying(255),
    num_affected_fac bigint,
    male bigint,
    female bigint,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    incident integer,
    key bigint
);


ALTER TABLE dap_nap_tmf OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 442454)
-- Name: dap_nap_tmf_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dap_nap_tmf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dap_nap_tmf_id_seq OWNER TO postgres;

--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 254
-- Name: dap_nap_tmf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dap_nap_tmf_id_seq OWNED BY dap_nap_tmf.id;


--
-- TOC entry 255 (class 1259 OID 442456)
-- Name: django_admin_log; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 442463)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 256
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 257 (class 1259 OID 442465)
-- Name: django_content_type; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 442468)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 258
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 259 (class 1259 OID 442470)
-- Name: django_migrations; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 442476)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 260
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 261 (class 1259 OID 442478)
-- Name: django_session; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 442484)
-- Name: dmf_da_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_da_mequipment (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_da_mequipment OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 442487)
-- Name: dmf_da_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_da_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_da_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 263
-- Name: dmf_da_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_da_mequipment_id_seq OWNED BY dmf_da_mequipment.id;


--
-- TOC entry 264 (class 1259 OID 442489)
-- Name: dmf_da_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_da_oassets (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_da_oassets OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 442492)
-- Name: dmf_da_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_da_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_da_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 265
-- Name: dmf_da_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_da_oassets_id_seq OWNED BY dmf_da_oassets.id;


--
-- TOC entry 266 (class 1259 OID 442494)
-- Name: dmf_da_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_da_structure (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_da_structure OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 442497)
-- Name: dmf_da_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_da_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_da_structure_id_seq OWNER TO postgres;

--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 267
-- Name: dmf_da_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_da_structure_id_seq OWNED BY dmf_da_structure.id;


--
-- TOC entry 268 (class 1259 OID 442499)
-- Name: dmf_da_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_da_supplies (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_da_supplies OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 442502)
-- Name: dmf_da_supplies_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_da_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_da_supplies_id_seq OWNER TO postgres;

--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 269
-- Name: dmf_da_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_da_supplies_id_seq OWNED BY dmf_da_supplies.id;


--
-- TOC entry 270 (class 1259 OID 442504)
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
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dmf_dfa_num OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 442507)
-- Name: dmf_dfa_num_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_dfa_num_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_dfa_num_id_seq OWNER TO postgres;

--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 271
-- Name: dmf_dfa_num_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_dfa_num_id_seq OWNED BY dmf_dfa_num.id;


--
-- TOC entry 272 (class 1259 OID 442509)
-- Name: dmf_dfa_paf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_dfa_paf (
    num_patients_affected character varying(255),
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
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dmf_dfa_paf OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 442512)
-- Name: dmf_dfa_paf_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_dfa_paf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_dfa_paf_id_seq OWNER TO postgres;

--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 273
-- Name: dmf_dfa_paf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_dfa_paf_id_seq OWNED BY dmf_dfa_paf.id;


--
-- TOC entry 274 (class 1259 OID 442514)
-- Name: dmf_los_cud; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_los_cud (
    type_of_losses character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_los_cud OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 442517)
-- Name: dmf_los_cud_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_los_cud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_los_cud_id_seq OWNER TO postgres;

--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 275
-- Name: dmf_los_cud_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_los_cud_id_seq OWNED BY dmf_los_cud.id;


--
-- TOC entry 276 (class 1259 OID 442519)
-- Name: dmf_los_fi; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_los_fi (
    type_of_losses character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_los_fi OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 442522)
-- Name: dmf_los_fi_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_los_fi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_los_fi_id_seq OWNER TO postgres;

--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 277
-- Name: dmf_los_fi_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_los_fi_id_seq OWNED BY dmf_los_fi.id;


--
-- TOC entry 278 (class 1259 OID 442524)
-- Name: dmf_los_hoc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_los_hoc (
    type_of_losses character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_los_hoc OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 442527)
-- Name: dmf_los_hoc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_los_hoc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_los_hoc_id_seq OWNER TO postgres;

--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 279
-- Name: dmf_los_hoc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_los_hoc_id_seq OWNED BY dmf_los_hoc.id;


--
-- TOC entry 280 (class 1259 OID 442529)
-- Name: dmf_los_oue; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_los_oue (
    type_of_losses character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_los_oue OWNER TO postgres;

--
-- TOC entry 281 (class 1259 OID 442532)
-- Name: dmf_los_oue_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_los_oue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_los_oue_id_seq OWNER TO postgres;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 281
-- Name: dmf_los_oue_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_los_oue_id_seq OWNED BY dmf_los_oue.id;


--
-- TOC entry 282 (class 1259 OID 442534)
-- Name: dmf_pda_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_pda_mequipment (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_pda_mequipment OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 442537)
-- Name: dmf_pda_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_pda_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_pda_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 283
-- Name: dmf_pda_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_pda_mequipment_id_seq OWNED BY dmf_pda_mequipment.id;


--
-- TOC entry 284 (class 1259 OID 442539)
-- Name: dmf_pda_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_pda_oassets (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_pda_oassets OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 442542)
-- Name: dmf_pda_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_pda_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_pda_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 285
-- Name: dmf_pda_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_pda_oassets_id_seq OWNED BY dmf_pda_oassets.id;


--
-- TOC entry 286 (class 1259 OID 442544)
-- Name: dmf_pda_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_pda_structure (
    asset character varying(255),
    base_hospital real,
    divisional_hospital real,
    rural_hospital real,
    central_dispensary real,
    pmcus real,
    phccs real,
    mchcs real,
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


ALTER TABLE dmf_pda_structure OWNER TO postgres;

--
-- TOC entry 287 (class 1259 OID 442547)
-- Name: dmf_pda_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_pda_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_pda_structure_id_seq OWNER TO postgres;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 287
-- Name: dmf_pda_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_pda_structure_id_seq OWNED BY dmf_pda_structure.id;


--
-- TOC entry 288 (class 1259 OID 442549)
-- Name: dmf_pdfa_num; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_pdfa_num (
    num_pdamaged_facilities character varying(255),
    base_hospital bigint,
    divisional_hospital bigint,
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
    id integer NOT NULL,
    incident integer
);


ALTER TABLE dmf_pdfa_num OWNER TO postgres;

--
-- TOC entry 289 (class 1259 OID 442552)
-- Name: dmf_pdfa_num_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_pdfa_num_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_pdfa_num_id_seq OWNER TO postgres;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 289
-- Name: dmf_pdfa_num_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_pdfa_num_id_seq OWNED BY dmf_pdfa_num.id;


--
-- TOC entry 290 (class 1259 OID 442554)
-- Name: dmf_pdfa_paf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmf_pdfa_paf (
    num_patients_affected character varying(255),
    base_hospital bigint,
    divisional_hospital bigint,
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
    id integer NOT NULL,
    incident integer
);


ALTER TABLE dmf_pdfa_paf OWNER TO postgres;

--
-- TOC entry 291 (class 1259 OID 442557)
-- Name: dmf_pdfa_paf_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmf_pdfa_paf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmf_pdfa_paf_id_seq OWNER TO postgres;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 291
-- Name: dmf_pdfa_paf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmf_pdfa_paf_id_seq OWNED BY dmf_pdfa_paf.id;


--
-- TOC entry 292 (class 1259 OID 442559)
-- Name: dmh_df_num; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_df_num (
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
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dmh_df_num OWNER TO postgres;

--
-- TOC entry 293 (class 1259 OID 442562)
-- Name: dmh_df_num_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_df_num_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_df_num_id_seq OWNER TO postgres;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 293
-- Name: dmh_df_num_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_df_num_id_seq OWNED BY dmh_df_num.id;


--
-- TOC entry 294 (class 1259 OID 442564)
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
-- TOC entry 295 (class 1259 OID 442567)
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
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 295
-- Name: dmh_df_paf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_df_paf_id_seq OWNED BY dmh_df_paf.id;


--
-- TOC entry 296 (class 1259 OID 442569)
-- Name: dmh_los_cud; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_los_cud (
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


ALTER TABLE dmh_los_cud OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 442572)
-- Name: dmh_los_cud_pk_dmh_los_cud_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_los_cud_pk_dmh_los_cud_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_los_cud_pk_dmh_los_cud_id_seq OWNER TO postgres;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 297
-- Name: dmh_los_cud_pk_dmh_los_cud_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_los_cud_pk_dmh_los_cud_id_seq OWNED BY dmh_los_cud.id;


--
-- TOC entry 298 (class 1259 OID 442574)
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
-- TOC entry 299 (class 1259 OID 442577)
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
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 299
-- Name: dmh_los_fi_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_los_fi_id_seq OWNED BY dmh_los_fi.id;


--
-- TOC entry 300 (class 1259 OID 442579)
-- Name: dmh_los_hoc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_los_hoc (
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


ALTER TABLE dmh_los_hoc OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 442582)
-- Name: dmh_los_hoc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_los_hoc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_los_hoc_id_seq OWNER TO postgres;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 301
-- Name: dmh_los_hoc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_los_hoc_id_seq OWNED BY dmh_los_hoc.id;


--
-- TOC entry 302 (class 1259 OID 442584)
-- Name: dmh_los_oue; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_los_oue (
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


ALTER TABLE dmh_los_oue OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 442587)
-- Name: dmh_los_oue_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_los_oue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_los_oue_id_seq OWNER TO postgres;

--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 303
-- Name: dmh_los_oue_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_los_oue_id_seq OWNED BY dmh_los_oue.id;


--
-- TOC entry 304 (class 1259 OID 442589)
-- Name: dmh_ndat_fac_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_ndat_fac_mequipment (
    asset character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
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


ALTER TABLE dmh_ndat_fac_mequipment OWNER TO postgres;

--
-- TOC entry 305 (class 1259 OID 442592)
-- Name: dmh_ndat_fac_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_ndat_fac_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_ndat_fac_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 305
-- Name: dmh_ndat_fac_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_ndat_fac_mequipment_id_seq OWNED BY dmh_ndat_fac_mequipment.id;


--
-- TOC entry 306 (class 1259 OID 442594)
-- Name: dmh_ndat_fac_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_ndat_fac_oassets (
    asset character varying(255),
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


ALTER TABLE dmh_ndat_fac_oassets OWNER TO postgres;

--
-- TOC entry 307 (class 1259 OID 442597)
-- Name: dmh_ndat_fac_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_ndat_fac_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_ndat_fac_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 307
-- Name: dmh_ndat_fac_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_ndat_fac_oassets_id_seq OWNED BY dmh_ndat_fac_oassets.id;


--
-- TOC entry 308 (class 1259 OID 442599)
-- Name: dmh_ndat_fac_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_ndat_fac_structure (
    asset character varying(255),
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


ALTER TABLE dmh_ndat_fac_structure OWNER TO postgres;

--
-- TOC entry 309 (class 1259 OID 442602)
-- Name: dmh_ndat_fac_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_ndat_fac_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_ndat_fac_structure_id_seq OWNER TO postgres;

--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 309
-- Name: dmh_ndat_fac_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_ndat_fac_structure_id_seq OWNED BY dmh_ndat_fac_structure.id;


--
-- TOC entry 310 (class 1259 OID 442604)
-- Name: dmh_ndat_fac_supplies; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_ndat_fac_supplies (
    asset character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
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


ALTER TABLE dmh_ndat_fac_supplies OWNER TO postgres;

--
-- TOC entry 311 (class 1259 OID 442607)
-- Name: dmh_ndat_fac_supplies_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_ndat_fac_supplies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_ndat_fac_supplies_id_seq OWNER TO postgres;

--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 311
-- Name: dmh_ndat_fac_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_ndat_fac_supplies_id_seq OWNED BY dmh_ndat_fac_supplies.id;


--
-- TOC entry 312 (class 1259 OID 442609)
-- Name: dmh_pdfa_mequipment; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_pdfa_mequipment (
    asset character varying(255),
    teaching_hospital real,
    provincial_general_hospital real,
    district_general_hospital real,
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


ALTER TABLE dmh_pdfa_mequipment OWNER TO postgres;

--
-- TOC entry 313 (class 1259 OID 442612)
-- Name: dmh_pdfa_mequipment_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_pdfa_mequipment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_pdfa_mequipment_id_seq OWNER TO postgres;

--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 313
-- Name: dmh_pdfa_mequipment_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_pdfa_mequipment_id_seq OWNED BY dmh_pdfa_mequipment.id;


--
-- TOC entry 314 (class 1259 OID 442614)
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
-- TOC entry 315 (class 1259 OID 442620)
-- Name: dmh_pdfa_oassets; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_pdfa_oassets (
    asset character varying(255),
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


ALTER TABLE dmh_pdfa_oassets OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 442623)
-- Name: dmh_pdfa_oassets_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_pdfa_oassets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_pdfa_oassets_id_seq OWNER TO postgres;

--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 316
-- Name: dmh_pdfa_oassets_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_pdfa_oassets_id_seq OWNED BY dmh_pdfa_oassets.id;


--
-- TOC entry 317 (class 1259 OID 442625)
-- Name: dmh_pdfa_paf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_pdfa_paf (
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
    bs_date character varying(255),
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dmh_pdfa_paf OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 442631)
-- Name: dmh_pdfa_paf_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_pdfa_paf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_pdfa_paf_id_seq OWNER TO postgres;

--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 318
-- Name: dmh_pdfa_paf_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_pdfa_paf_id_seq OWNED BY dmh_pdfa_paf.id;


--
-- TOC entry 319 (class 1259 OID 442633)
-- Name: dmh_pdfa_structure; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dmh_pdfa_structure (
    asset character varying(255),
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


ALTER TABLE dmh_pdfa_structure OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 442636)
-- Name: dmh_pdfa_structure_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dmh_pdfa_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dmh_pdfa_structure_id_seq OWNER TO postgres;

--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 320
-- Name: dmh_pdfa_structure_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dmh_pdfa_structure_id_seq OWNED BY dmh_pdfa_structure.id;


--
-- TOC entry 321 (class 1259 OID 442638)
-- Name: dsh_pub_omc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsh_pub_omc (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsh_pub_omc OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 442641)
-- Name: dsh_pub_omc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsh_pub_omc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsh_pub_omc_id_seq OWNER TO postgres;

--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 322
-- Name: dsh_pub_omc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsh_pub_omc_id_seq OWNED BY dsh_pub_omc.id;


--
-- TOC entry 323 (class 1259 OID 442643)
-- Name: dsh_pub_th; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsh_pub_th (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsh_pub_th OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 442646)
-- Name: dsh_pub_th_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsh_pub_th_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsh_pub_th_id_seq OWNER TO postgres;

--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 324
-- Name: dsh_pub_th_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsh_pub_th_id_seq OWNED BY dsh_pub_th.id;


--
-- TOC entry 325 (class 1259 OID 442648)
-- Name: dsh_pvt_fa; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsh_pvt_fa (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsh_pvt_fa OWNER TO postgres;

--
-- TOC entry 326 (class 1259 OID 442651)
-- Name: dsh_pvt_fa_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsh_pvt_fa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsh_pvt_fa_id_seq OWNER TO postgres;

--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 326
-- Name: dsh_pvt_fa_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsh_pvt_fa_id_seq OWNED BY dsh_pvt_fa.id;


--
-- TOC entry 327 (class 1259 OID 442653)
-- Name: dsh_tdl_owship; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsh_tdl_owship (
    ownership character varying(255),
    damages real,
    losses_y1 real,
    losses_y2 real,
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


ALTER TABLE dsh_tdl_owship OWNER TO postgres;

--
-- TOC entry 328 (class 1259 OID 442656)
-- Name: dsh_tdl_owship_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsh_tdl_owship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsh_tdl_owship_id_seq OWNER TO postgres;

--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 328
-- Name: dsh_tdl_owship_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsh_tdl_owship_id_seq OWNED BY dsh_tdl_owship.id;


--
-- TOC entry 329 (class 1259 OID 442658)
-- Name: dsn_pub_p1_lmh; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pub_p1_lmh (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pub_p1_lmh OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 442661)
-- Name: dsn_pub_p1_lmh_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pub_p1_lmh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pub_p1_lmh_id_seq OWNER TO postgres;

--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 330
-- Name: dsn_pub_p1_lmh_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pub_p1_lmh_id_seq OWNED BY dsn_pub_p1_lmh.id;


--
-- TOC entry 331 (class 1259 OID 442663)
-- Name: dsn_pub_p1_moh; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pub_p1_moh (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pub_p1_moh OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 442666)
-- Name: dsn_pub_p1_moh_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pub_p1_moh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pub_p1_moh_id_seq OWNER TO postgres;

--
-- TOC entry 3527 (class 0 OID 0)
-- Dependencies: 332
-- Name: dsn_pub_p1_moh_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pub_p1_moh_id_seq OWNED BY dsn_pub_p1_moh.id;


--
-- TOC entry 333 (class 1259 OID 442668)
-- Name: dsn_pub_p1_omc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pub_p1_omc (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pub_p1_omc OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 442671)
-- Name: dsn_pub_p1_omc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pub_p1_omc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pub_p1_omc_id_seq OWNER TO postgres;

--
-- TOC entry 3528 (class 0 OID 0)
-- Dependencies: 334
-- Name: dsn_pub_p1_omc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pub_p1_omc_id_seq OWNED BY dsn_pub_p1_omc.id;


--
-- TOC entry 335 (class 1259 OID 442673)
-- Name: dsn_pub_pn_lmh; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pub_pn_lmh (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pub_pn_lmh OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 442676)
-- Name: dsn_pub_pn_lmh_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pub_pn_lmh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pub_pn_lmh_id_seq OWNER TO postgres;

--
-- TOC entry 3529 (class 0 OID 0)
-- Dependencies: 336
-- Name: dsn_pub_pn_lmh_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pub_pn_lmh_id_seq OWNED BY dsn_pub_pn_lmh.id;


--
-- TOC entry 337 (class 1259 OID 442678)
-- Name: dsn_pub_pn_moh; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pub_pn_moh (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pub_pn_moh OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 442681)
-- Name: dsn_pub_pn_moh_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pub_pn_moh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pub_pn_moh_id_seq OWNER TO postgres;

--
-- TOC entry 3530 (class 0 OID 0)
-- Dependencies: 338
-- Name: dsn_pub_pn_moh_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pub_pn_moh_id_seq OWNED BY dsn_pub_pn_moh.id;


--
-- TOC entry 339 (class 1259 OID 442683)
-- Name: dsn_pub_pn_omc; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pub_pn_omc (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pub_pn_omc OWNER TO postgres;

--
-- TOC entry 340 (class 1259 OID 442686)
-- Name: dsn_pub_pn_omc_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pub_pn_omc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pub_pn_omc_id_seq OWNER TO postgres;

--
-- TOC entry 3531 (class 0 OID 0)
-- Dependencies: 340
-- Name: dsn_pub_pn_omc_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pub_pn_omc_id_seq OWNED BY dsn_pub_pn_omc.id;


--
-- TOC entry 341 (class 1259 OID 442688)
-- Name: dsn_pvt_p1; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pvt_p1 (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pvt_p1 OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 442691)
-- Name: dsn_pvt_p1_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pvt_p1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pvt_p1_id_seq OWNER TO postgres;

--
-- TOC entry 3532 (class 0 OID 0)
-- Dependencies: 342
-- Name: dsn_pvt_p1_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pvt_p1_id_seq OWNED BY dsn_pvt_p1.id;


--
-- TOC entry 343 (class 1259 OID 442693)
-- Name: dsn_pvt_pn; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_pvt_pn (
    facilities_assets character varying(255),
    total_num_affected bigint,
    male bigint,
    female bigint,
    total_damages real,
    losses_y1 real,
    losses_y2 real,
    total_losses real,
    district integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    incident integer,
    id integer NOT NULL
);


ALTER TABLE dsn_pvt_pn OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 442696)
-- Name: dsn_pvt_pn_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_pvt_pn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_pvt_pn_id_seq OWNER TO postgres;

--
-- TOC entry 3533 (class 0 OID 0)
-- Dependencies: 344
-- Name: dsn_pvt_pn_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_pvt_pn_id_seq OWNED BY dsn_pvt_pn.id;


--
-- TOC entry 345 (class 1259 OID 442698)
-- Name: dsn_tdl_owship; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE dsn_tdl_owship (
    ownership character varying(255),
    damages real,
    losses_y1 real,
    losses_y2 real,
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


ALTER TABLE dsn_tdl_owship OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 442701)
-- Name: dsn_tdl_owship_id_seq; Type: SEQUENCE; Schema: health; Owner: postgres
--

CREATE SEQUENCE dsn_tdl_owship_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dsn_tdl_owship_id_seq OWNER TO postgres;

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 346
-- Name: dsn_tdl_owship_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE dsn_tdl_owship_id_seq OWNED BY dsn_tdl_owship.id;


SET search_path = public, pg_catalog;

--
-- TOC entry 347 (class 1259 OID 443046)
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_STRUCTURE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_STRUCTURE_id_seq" OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 443048)
-- Name: BUC_MAR_SUPPLIES_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_SUPPLIES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_SUPPLIES_id_seq" OWNER TO postgres;

--
-- TOC entry 349 (class 1259 OID 443050)
-- Name: disaster_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE disaster_type (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE disaster_type OWNER TO postgres;

--
-- TOC entry 350 (class 1259 OID 443056)
-- Name: DisasterType_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "DisasterType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "DisasterType_Id_seq" OWNER TO postgres;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 350
-- Name: DisasterType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DisasterType_Id_seq" OWNED BY disaster_type.id;


--
-- TOC entry 351 (class 1259 OID 443058)
-- Name: district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE district (
    id integer NOT NULL,
    province_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE district OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 443061)
-- Name: District_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "District_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "District_Id_seq" OWNER TO postgres;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 352
-- Name: District_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "District_Id_seq" OWNED BY district.id;


--
-- TOC entry 353 (class 1259 OID 443063)
-- Name: division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE division (
    id integer NOT NULL,
    district_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE division OWNER TO postgres;

--
-- TOC entry 354 (class 1259 OID 443066)
-- Name: Division_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Division_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Division_Id_seq" OWNER TO postgres;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 354
-- Name: Division_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Division_Id_seq" OWNED BY division.id;


--
-- TOC entry 355 (class 1259 OID 443068)
-- Name: grama_niladhari; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE grama_niladhari (
    id integer NOT NULL,
    division_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE grama_niladhari OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 443071)
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "GramaNiladhari_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GramaNiladhari_Id_seq" OWNER TO postgres;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 356
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "GramaNiladhari_Id_seq" OWNED BY grama_niladhari.id;


--
-- TOC entry 357 (class 1259 OID 443073)
-- Name: incident_report; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE incident_report (
    id integer NOT NULL,
    disaster_type_id bigint NOT NULL,
    description text,
    reported_date_time timestamp without time zone
);


ALTER TABLE incident_report OWNER TO postgres;

--
-- TOC entry 358 (class 1259 OID 443079)
-- Name: IncidentReport_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "IncidentReport_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "IncidentReport_Id_seq" OWNER TO postgres;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 358
-- Name: IncidentReport_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "IncidentReport_Id_seq" OWNED BY incident_report.id;


--
-- TOC entry 359 (class 1259 OID 443081)
-- Name: permission_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE permission_type (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE permission_type OWNER TO postgres;

--
-- TOC entry 360 (class 1259 OID 443087)
-- Name: PermissionType_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "PermissionType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "PermissionType_Id_seq" OWNER TO postgres;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 360
-- Name: PermissionType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "PermissionType_Id_seq" OWNED BY permission_type.id;


--
-- TOC entry 361 (class 1259 OID 443089)
-- Name: province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE province (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE province OWNER TO postgres;

--
-- TOC entry 362 (class 1259 OID 443092)
-- Name: Province_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Province_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Province_Id_seq" OWNER TO postgres;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 362
-- Name: Province_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Province_Id_seq" OWNED BY province.id;


--
-- TOC entry 363 (class 1259 OID 443094)
-- Name: sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sector (
    id integer NOT NULL,
    name character varying(255),
    description text,
    created_date time without time zone
);


ALTER TABLE sector OWNER TO postgres;

--
-- TOC entry 364 (class 1259 OID 443100)
-- Name: Sector_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Sector_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Sector_Id_seq" OWNER TO postgres;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 364
-- Name: Sector_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Sector_Id_seq" OWNED BY sector.id;


--
-- TOC entry 365 (class 1259 OID 443102)
-- Name: user_designation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_designation (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE user_designation OWNER TO postgres;

--
-- TOC entry 366 (class 1259 OID 443108)
-- Name: UserDesignation_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "UserDesignation_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "UserDesignation_Id_seq" OWNER TO postgres;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 366
-- Name: UserDesignation_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "UserDesignation_Id_seq" OWNED BY user_designation.id;


--
-- TOC entry 367 (class 1259 OID 443110)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_role (
    id integer NOT NULL,
    role_name character varying(255),
    description text
);


ALTER TABLE user_role OWNER TO postgres;

--
-- TOC entry 368 (class 1259 OID 443116)
-- Name: UserRoles_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "UserRoles_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "UserRoles_Id_seq" OWNER TO postgres;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 368
-- Name: UserRoles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "UserRoles_Id_seq" OWNED BY user_role.id;


--
-- TOC entry 369 (class 1259 OID 443118)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "user" (
    id integer NOT NULL,
    role_id bigint NOT NULL,
    sector_id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    user_name character varying(255),
    password character varying(255),
    email character varying(255),
    contact_no character varying(12),
    nic character varying(10),
    designation_id bigint
);


ALTER TABLE "user" OWNER TO postgres;

--
-- TOC entry 370 (class 1259 OID 443124)
-- Name: User_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "User_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "User_Id_seq" OWNER TO postgres;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 370
-- Name: User_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "User_Id_seq" OWNED BY "user".id;


--
-- TOC entry 371 (class 1259 OID 443126)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 372 (class 1259 OID 443129)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 372
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 373 (class 1259 OID 443131)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 374 (class 1259 OID 443134)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 374
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 375 (class 1259 OID 443136)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- TOC entry 376 (class 1259 OID 443139)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 376
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 377 (class 1259 OID 443141)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- TOC entry 378 (class 1259 OID 443144)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 379 (class 1259 OID 443147)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 379
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 380 (class 1259 OID 443149)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 380
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 381 (class 1259 OID 443151)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 382 (class 1259 OID 443154)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 382
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 383 (class 1259 OID 443156)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- TOC entry 384 (class 1259 OID 443163)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 384
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 385 (class 1259 OID 443165)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 386 (class 1259 OID 443168)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 386
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 387 (class 1259 OID 443170)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- TOC entry 388 (class 1259 OID 443176)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 388
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 389 (class 1259 OID 443178)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- TOC entry 390 (class 1259 OID 443184)
-- Name: effected_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE effected_area (
    incident_id bigint NOT NULL,
    disaster_id bigint NOT NULL,
    province_id bigint NOT NULL
);


ALTER TABLE effected_area OWNER TO postgres;

SET search_path = health, pg_catalog;

--
-- TOC entry 2696 (class 2604 OID 442703)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY assest_type ALTER COLUMN id SET DEFAULT nextval('"AssestType_Id_seq"'::regclass);


--
-- TOC entry 2709 (class 2604 OID 442704)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2710 (class 2604 OID 442705)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2711 (class 2604 OID 442706)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2712 (class 2604 OID 442707)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2713 (class 2604 OID 442708)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2714 (class 2604 OID 442709)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2715 (class 2604 OID 442710)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bd_session_keys ALTER COLUMN id SET DEFAULT nextval('bd_session_keys_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 443409)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_com_diseases ALTER COLUMN id SET DEFAULT nextval('bhs_com_diseases_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 443425)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_oi ALTER COLUMN id SET DEFAULT nextval('bhs_oi_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 443441)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_plc ALTER COLUMN id SET DEFAULT nextval('bhs_plc_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 443454)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_vi ALTER COLUMN id SET DEFAULT nextval('bhs_vi_id_seq'::regclass);


--
-- TOC entry 2697 (class 2604 OID 442711)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pub_mf ALTER COLUMN id SET DEFAULT nextval('"BMF_PUB_MF_id_seq"'::regclass);


--
-- TOC entry 2698 (class 2604 OID 442712)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_mequipment ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_MEQUIPMENT_Id_seq"'::regclass);


--
-- TOC entry 2699 (class 2604 OID 442713)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_oassets ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_OASSETS_Id_seq"'::regclass);


--
-- TOC entry 2700 (class 2604 OID 442714)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_structure ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_STRUCTURE_id_seq"'::regclass);


--
-- TOC entry 2701 (class 2604 OID 442715)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_supplies ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_SUPPLIES_Id_seq"'::regclass);


--
-- TOC entry 2717 (class 2604 OID 442716)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_crpm ALTER COLUMN id SET DEFAULT nextval('buc_marc_supplies_id_seq'::regclass);


--
-- TOC entry 2718 (class 2604 OID 442717)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_mequipment ALTER COLUMN id SET DEFAULT nextval('buc_marc_mequipment_id_seq'::regclass);


--
-- TOC entry 2719 (class 2604 OID 442718)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_oassets ALTER COLUMN id SET DEFAULT nextval('buc_marc_oassets_id_seq'::regclass);


--
-- TOC entry 2720 (class 2604 OID 442719)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_structures ALTER COLUMN id SET DEFAULT nextval('buc_marc_structures_id_seq'::regclass);


--
-- TOC entry 2721 (class 2604 OID 442720)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_mequipment ALTER COLUMN id SET DEFAULT nextval('buc_omar_mequipment_id_seq'::regclass);


--
-- TOC entry 2722 (class 2604 OID 442721)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_oassets ALTER COLUMN id SET DEFAULT nextval('buc_omar_oassets_id_seq'::regclass);


--
-- TOC entry 2723 (class 2604 OID 442722)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_structure ALTER COLUMN id SET DEFAULT nextval('buc_omar_structure_id_seq'::regclass);


--
-- TOC entry 2724 (class 2604 OID 442723)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_supplies ALTER COLUMN id SET DEFAULT nextval('buc_omar_supplies_id_seq'::regclass);


--
-- TOC entry 2725 (class 2604 OID 442724)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_crpm ALTER COLUMN id SET DEFAULT nextval('buc_omarc_crpm_id_seq'::regclass);


--
-- TOC entry 2726 (class 2604 OID 442725)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_mequipment ALTER COLUMN id SET DEFAULT nextval('buc_omarc_mequipment_id_seq'::regclass);


--
-- TOC entry 2727 (class 2604 OID 442726)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_oassets ALTER COLUMN id SET DEFAULT nextval('buc_omarc_oassets_id_seq'::regclass);


--
-- TOC entry 2728 (class 2604 OID 442727)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_structure ALTER COLUMN id SET DEFAULT nextval('buc_omarc_structure_id_seq'::regclass);


--
-- TOC entry 2729 (class 2604 OID 442728)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_bef_other ALTER COLUMN id SET DEFAULT nextval('dap_bef_other_id_seq'::regclass);


--
-- TOC entry 2730 (class 2604 OID 442729)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_bef_pc1 ALTER COLUMN id SET DEFAULT nextval('dap_bef_pc1_id_seq'::regclass);


--
-- TOC entry 2731 (class 2604 OID 442730)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_bef_pcn ALTER COLUMN id SET DEFAULT nextval('dap_bef_pcn_id_seq'::regclass);


--
-- TOC entry 2732 (class 2604 OID 442731)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_nap_tmf ALTER COLUMN id SET DEFAULT nextval('dap_nap_tmf_id_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 442732)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY data_entry ALTER COLUMN id SET DEFAULT nextval('"DataEntry_Id_seq"'::regclass);


--
-- TOC entry 2733 (class 2604 OID 442733)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2735 (class 2604 OID 442734)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2736 (class 2604 OID 442735)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2737 (class 2604 OID 442736)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_mequipment ALTER COLUMN id SET DEFAULT nextval('dmf_da_mequipment_id_seq'::regclass);


--
-- TOC entry 2738 (class 2604 OID 442737)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_oassets ALTER COLUMN id SET DEFAULT nextval('dmf_da_oassets_id_seq'::regclass);


--
-- TOC entry 2739 (class 2604 OID 442738)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_structure ALTER COLUMN id SET DEFAULT nextval('dmf_da_structure_id_seq'::regclass);


--
-- TOC entry 2740 (class 2604 OID 442739)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_supplies ALTER COLUMN id SET DEFAULT nextval('dmf_da_supplies_id_seq'::regclass);


--
-- TOC entry 2741 (class 2604 OID 442740)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_dfa_num ALTER COLUMN id SET DEFAULT nextval('dmf_dfa_num_id_seq'::regclass);


--
-- TOC entry 2742 (class 2604 OID 442741)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_dfa_paf ALTER COLUMN id SET DEFAULT nextval('dmf_dfa_paf_id_seq'::regclass);


--
-- TOC entry 2743 (class 2604 OID 442742)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_cud ALTER COLUMN id SET DEFAULT nextval('dmf_los_cud_id_seq'::regclass);


--
-- TOC entry 2744 (class 2604 OID 442743)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_fi ALTER COLUMN id SET DEFAULT nextval('dmf_los_fi_id_seq'::regclass);


--
-- TOC entry 2745 (class 2604 OID 442744)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_hoc ALTER COLUMN id SET DEFAULT nextval('dmf_los_hoc_id_seq'::regclass);


--
-- TOC entry 2746 (class 2604 OID 442745)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_oue ALTER COLUMN id SET DEFAULT nextval('dmf_los_oue_id_seq'::regclass);


--
-- TOC entry 2747 (class 2604 OID 442746)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pda_mequipment ALTER COLUMN id SET DEFAULT nextval('dmf_pda_mequipment_id_seq'::regclass);


--
-- TOC entry 2748 (class 2604 OID 442747)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pda_oassets ALTER COLUMN id SET DEFAULT nextval('dmf_pda_oassets_id_seq'::regclass);


--
-- TOC entry 2749 (class 2604 OID 442748)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pda_structure ALTER COLUMN id SET DEFAULT nextval('dmf_pda_structure_id_seq'::regclass);


--
-- TOC entry 2750 (class 2604 OID 442749)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_num ALTER COLUMN id SET DEFAULT nextval('dmf_pdfa_num_id_seq'::regclass);


--
-- TOC entry 2751 (class 2604 OID 442750)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_paf ALTER COLUMN id SET DEFAULT nextval('dmf_pdfa_paf_id_seq'::regclass);


--
-- TOC entry 2752 (class 2604 OID 442751)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_num ALTER COLUMN id SET DEFAULT nextval('dmh_df_num_id_seq'::regclass);


--
-- TOC entry 2753 (class 2604 OID 442752)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_paf ALTER COLUMN id SET DEFAULT nextval('dmh_df_paf_id_seq'::regclass);


--
-- TOC entry 2754 (class 2604 OID 442753)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_cud ALTER COLUMN id SET DEFAULT nextval('dmh_los_cud_pk_dmh_los_cud_id_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 442754)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_fi ALTER COLUMN id SET DEFAULT nextval('dmh_los_fi_id_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 442755)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_hoc ALTER COLUMN id SET DEFAULT nextval('dmh_los_hoc_id_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 442756)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_oue ALTER COLUMN id SET DEFAULT nextval('dmh_los_oue_id_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 442757)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_mequipment ALTER COLUMN id SET DEFAULT nextval('dmh_ndat_fac_mequipment_id_seq'::regclass);


--
-- TOC entry 2759 (class 2604 OID 442758)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_oassets ALTER COLUMN id SET DEFAULT nextval('dmh_ndat_fac_oassets_id_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 442759)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_structure ALTER COLUMN id SET DEFAULT nextval('dmh_ndat_fac_structure_id_seq'::regclass);


--
-- TOC entry 2761 (class 2604 OID 442760)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_supplies ALTER COLUMN id SET DEFAULT nextval('dmh_ndat_fac_supplies_id_seq'::regclass);


--
-- TOC entry 2762 (class 2604 OID 442761)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_mequipment ALTER COLUMN id SET DEFAULT nextval('dmh_pdfa_mequipment_id_seq'::regclass);


--
-- TOC entry 2763 (class 2604 OID 442762)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_oassets ALTER COLUMN id SET DEFAULT nextval('dmh_pdfa_oassets_id_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 442763)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_paf ALTER COLUMN id SET DEFAULT nextval('dmh_pdfa_paf_id_seq'::regclass);


--
-- TOC entry 2765 (class 2604 OID 442764)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_structure ALTER COLUMN id SET DEFAULT nextval('dmh_pdfa_structure_id_seq'::regclass);


--
-- TOC entry 2766 (class 2604 OID 442765)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_pub_omc ALTER COLUMN id SET DEFAULT nextval('dsh_pub_omc_id_seq'::regclass);


--
-- TOC entry 2767 (class 2604 OID 442766)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_pub_th ALTER COLUMN id SET DEFAULT nextval('dsh_pub_th_id_seq'::regclass);


--
-- TOC entry 2768 (class 2604 OID 442767)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_pvt_fa ALTER COLUMN id SET DEFAULT nextval('dsh_pvt_fa_id_seq'::regclass);


--
-- TOC entry 2769 (class 2604 OID 442768)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_tdl_owship ALTER COLUMN id SET DEFAULT nextval('dsh_tdl_owship_id_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 442769)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_p1_lmh ALTER COLUMN id SET DEFAULT nextval('dsn_pub_p1_lmh_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 442770)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_p1_moh ALTER COLUMN id SET DEFAULT nextval('dsn_pub_p1_moh_id_seq'::regclass);


--
-- TOC entry 2772 (class 2604 OID 442771)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_p1_omc ALTER COLUMN id SET DEFAULT nextval('dsn_pub_p1_omc_id_seq'::regclass);


--
-- TOC entry 2773 (class 2604 OID 442772)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_pn_lmh ALTER COLUMN id SET DEFAULT nextval('dsn_pub_pn_lmh_id_seq'::regclass);


--
-- TOC entry 2774 (class 2604 OID 442773)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_pn_moh ALTER COLUMN id SET DEFAULT nextval('dsn_pub_pn_moh_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 442774)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_pn_omc ALTER COLUMN id SET DEFAULT nextval('dsn_pub_pn_omc_id_seq'::regclass);


--
-- TOC entry 2776 (class 2604 OID 442775)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pvt_p1 ALTER COLUMN id SET DEFAULT nextval('dsn_pvt_p1_id_seq'::regclass);


--
-- TOC entry 2777 (class 2604 OID 442776)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pvt_pn ALTER COLUMN id SET DEFAULT nextval('dsn_pvt_pn_id_seq'::regclass);


--
-- TOC entry 2778 (class 2604 OID 442777)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_tdl_owship ALTER COLUMN id SET DEFAULT nextval('dsn_tdl_owship_id_seq'::regclass);


--
-- TOC entry 2703 (class 2604 OID 442778)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_line ALTER COLUMN id SET DEFAULT nextval('"GeoLine_Id_seq"'::regclass);


--
-- TOC entry 2704 (class 2604 OID 442779)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_point ALTER COLUMN id SET DEFAULT nextval('"GeoPoint_Id_seq"'::regclass);


--
-- TOC entry 2705 (class 2604 OID 442780)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_polygon ALTER COLUMN id SET DEFAULT nextval('"GeoPolygon_Id_seq"'::regclass);


--
-- TOC entry 2706 (class 2604 OID 442781)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col ALTER COLUMN id SET DEFAULT nextval('"SectorTabelCol_Id_seq"'::regclass);


--
-- TOC entry 2707 (class 2604 OID 442782)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_table ALTER COLUMN id SET DEFAULT nextval('"SectorTable_Id_seq"'::regclass);


--
-- TOC entry 2708 (class 2604 OID 442783)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission ALTER COLUMN id SET DEFAULT nextval('"UserRolePermission_Id_seq"'::regclass);


SET search_path = public, pg_catalog;

--
-- TOC entry 2790 (class 2604 OID 443187)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2791 (class 2604 OID 443188)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 443189)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2793 (class 2604 OID 443190)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 443191)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2795 (class 2604 OID 443192)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2779 (class 2604 OID 443193)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY disaster_type ALTER COLUMN id SET DEFAULT nextval('"DisasterType_Id_seq"'::regclass);


--
-- TOC entry 2780 (class 2604 OID 443194)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district ALTER COLUMN id SET DEFAULT nextval('"District_Id_seq"'::regclass);


--
-- TOC entry 2781 (class 2604 OID 443195)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY division ALTER COLUMN id SET DEFAULT nextval('"Division_Id_seq"'::regclass);


--
-- TOC entry 2796 (class 2604 OID 443196)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 443197)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2799 (class 2604 OID 443198)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2782 (class 2604 OID 443199)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grama_niladhari ALTER COLUMN id SET DEFAULT nextval('"GramaNiladhari_Id_seq"'::regclass);


--
-- TOC entry 2783 (class 2604 OID 443200)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_report ALTER COLUMN id SET DEFAULT nextval('"IncidentReport_Id_seq"'::regclass);


--
-- TOC entry 2784 (class 2604 OID 443201)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permission_type ALTER COLUMN id SET DEFAULT nextval('"PermissionType_Id_seq"'::regclass);


--
-- TOC entry 2785 (class 2604 OID 443202)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY province ALTER COLUMN id SET DEFAULT nextval('"Province_Id_seq"'::regclass);


--
-- TOC entry 2786 (class 2604 OID 443203)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sector ALTER COLUMN id SET DEFAULT nextval('"Sector_Id_seq"'::regclass);


--
-- TOC entry 2789 (class 2604 OID 443204)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('"User_Id_seq"'::regclass);


--
-- TOC entry 2787 (class 2604 OID 443205)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_designation ALTER COLUMN id SET DEFAULT nextval('"UserDesignation_Id_seq"'::regclass);


--
-- TOC entry 2788 (class 2604 OID 443206)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role ALTER COLUMN id SET DEFAULT nextval('"UserRoles_Id_seq"'::regclass);


SET search_path = health, pg_catalog;

--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 183
-- Name: AssestType_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"AssestType_Id_seq"', 1, false);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 185
-- Name: BMF_PUB_MF_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BMF_PUB_MF_id_seq"', 174, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 187
-- Name: BUC_MAR_MEQUIPMENT_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_MEQUIPMENT_Id_seq"', 56, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 189
-- Name: BUC_MAR_OASSETS_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_OASSETS_Id_seq"', 70, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 191
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_STRUCTURE_id_seq"', 64, true);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 193
-- Name: BUC_MAR_SUPPLIES_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_SUPPLIES_Id_seq"', 39, true);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 195
-- Name: DataEntry_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"DataEntry_Id_seq"', 1, false);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 197
-- Name: GeoLine_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"GeoLine_Id_seq"', 1, false);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 199
-- Name: GeoPoint_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"GeoPoint_Id_seq"', 1, false);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 201
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"GeoPolygon_Id_seq"', 1, false);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 203
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"SectorTabelCol_Id_seq"', 1, false);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 205
-- Name: SectorTable_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"SectorTable_Id_seq"', 1, false);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 207
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"UserRolePermission_Id_seq"', 1, false);


--
-- TOC entry 3225 (class 0 OID 442236)
-- Dependencies: 182
-- Data for Name: assest_type; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY assest_type (id, name, description, geo_spatial_type) FROM stdin;
\.


--
-- TOC entry 3251 (class 0 OID 442313)
-- Dependencies: 208
-- Data for Name: auth_group; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 3253 (class 0 OID 442318)
-- Dependencies: 210
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3569 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3255 (class 0 OID 442323)
-- Dependencies: 212
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
25	Can add bmf pub mf	9	add_bmfpubmf
26	Can change bmf pub mf	9	change_bmfpubmf
27	Can delete bmf pub mf	9	delete_bmfpubmf
28	Can add bmf pvt mf	14	add_bmfpvtmf
29	Can change bmf pvt mf	14	change_bmfpvtmf
30	Can delete bmf pvt mf	14	delete_bmfpvtmf
31	Can add buc omar mequipment	15	add_bucomarmequipment
32	Can change buc omar mequipment	15	change_bucomarmequipment
33	Can delete buc omar mequipment	15	delete_bucomarmequipment
34	Can add buc omar oassets	16	add_bucomaroassets
35	Can change buc omar oassets	16	change_bucomaroassets
36	Can delete buc omar oassets	16	delete_bucomaroassets
37	Can add buc omar structure	17	add_bucomarstructure
38	Can change buc omar structure	17	change_bucomarstructure
39	Can delete buc omar structure	17	delete_bucomarstructure
40	Can add buc omar supplies	18	add_bucomarsupplies
41	Can change buc omar supplies	18	change_bucomarsupplies
42	Can delete buc omar supplies	18	delete_bucomarsupplies
43	Can add buc omarc crpm	19	add_bucomarccrpm
44	Can change buc omarc crpm	19	change_bucomarccrpm
45	Can delete buc omarc crpm	19	delete_bucomarccrpm
46	Can add buc omarc mequipment	20	add_bucomarcmequipment
47	Can change buc omarc mequipment	20	change_bucomarcmequipment
48	Can delete buc omarc mequipment	20	delete_bucomarcmequipment
49	Can add buc omarc oassets	21	add_bucomarcoassets
50	Can change buc omarc oassets	21	change_bucomarcoassets
51	Can delete buc omarc oassets	21	delete_bucomarcoassets
52	Can add buc omarc structure	22	add_bucomarcstructure
53	Can change buc omarc structure	22	change_bucomarcstructure
54	Can delete buc omarc structure	22	delete_bucomarcstructure
55	Can add bd session keys	23	add_bdsessionkeys
56	Can change bd session keys	23	change_bdsessionkeys
57	Can delete bd session keys	23	delete_bdsessionkeys
58	Can add buc mar structure	24	add_bucmarstructure
59	Can change buc mar structure	24	change_bucmarstructure
60	Can delete buc mar structure	24	delete_bucmarstructure
61	Can add buc marc structures	25	add_bucmarcstructures
62	Can change buc marc structures	25	change_bucmarcstructures
63	Can delete buc marc structures	25	delete_bucmarcstructures
64	Can add buc mar supplies	26	add_bucmarsupplies
65	Can change buc mar supplies	26	change_bucmarsupplies
66	Can delete buc mar supplies	26	delete_bucmarsupplies
67	Can add buc marc crpm	27	add_bucmarccrpm
68	Can change buc marc crpm	27	change_bucmarccrpm
69	Can delete buc marc crpm	27	delete_bucmarccrpm
70	Can add buc mar mequipment	28	add_bucmarmequipment
71	Can change buc mar mequipment	28	change_bucmarmequipment
72	Can delete buc mar mequipment	28	delete_bucmarmequipment
73	Can add buc marc mequipment	29	add_bucmarcmequipment
74	Can change buc marc mequipment	29	change_bucmarcmequipment
75	Can delete buc marc mequipment	29	delete_bucmarcmequipment
76	Can add buc mar oassets	30	add_bucmaroassets
77	Can change buc mar oassets	30	change_bucmaroassets
78	Can delete buc mar oassets	30	delete_bucmaroassets
79	Can add buc marc oassets	31	add_bucmarcoassets
80	Can change buc marc oassets	31	change_bucmarcoassets
81	Can delete buc marc oassets	31	delete_bucmarcoassets
82	Can add dmf dfa num	32	add_dmfdfanum
83	Can change dmf dfa num	32	change_dmfdfanum
84	Can delete dmf dfa num	32	delete_dmfdfanum
85	Can add dmf dfa paf	33	add_dmfdfapaf
86	Can change dmf dfa paf	33	change_dmfdfapaf
87	Can delete dmf dfa paf	33	delete_dmfdfapaf
88	Can add dmf da structure	34	add_dmfdastructure
89	Can change dmf da structure	34	change_dmfdastructure
90	Can delete dmf da structure	34	delete_dmfdastructure
91	Can add dmf da supplies	35	add_dmfdasupplies
92	Can change dmf da supplies	35	change_dmfdasupplies
93	Can delete dmf da supplies	35	delete_dmfdasupplies
94	Can add dmf da mequipment	36	add_dmfdamequipment
95	Can change dmf da mequipment	36	change_dmfdamequipment
96	Can delete dmf da mequipment	36	delete_dmfdamequipment
97	Can add dmf da oassets	37	add_dmfdaoassets
98	Can change dmf da oassets	37	change_dmfdaoassets
99	Can delete dmf da oassets	37	delete_dmfdaoassets
100	Can add dmf pdfa num	38	add_dmfpdfanum
101	Can change dmf pdfa num	38	change_dmfpdfanum
102	Can delete dmf pdfa num	38	delete_dmfpdfanum
103	Can add dmf pdfa paf	39	add_dmfpdfapaf
104	Can change dmf pdfa paf	39	change_dmfpdfapaf
105	Can delete dmf pdfa paf	39	delete_dmfpdfapaf
106	Can add dmf pda structure	40	add_dmfpdastructure
107	Can change dmf pda structure	40	change_dmfpdastructure
108	Can delete dmf pda structure	40	delete_dmfpdastructure
109	Can add dmf pda mequipment	41	add_dmfpdamequipment
110	Can change dmf pda mequipment	41	change_dmfpdamequipment
111	Can delete dmf pda mequipment	41	delete_dmfpdamequipment
112	Can add dmf pda oassets	42	add_dmfpdaoassets
113	Can change dmf pda oassets	42	change_dmfpdaoassets
114	Can delete dmf pda oassets	42	delete_dmfpdaoassets
115	Can add dmf los fi	43	add_dmflosfi
116	Can change dmf los fi	43	change_dmflosfi
117	Can delete dmf los fi	43	delete_dmflosfi
118	Can add dmf los cud	44	add_dmfloscud
119	Can change dmf los cud	44	change_dmfloscud
120	Can delete dmf los cud	44	delete_dmfloscud
121	Can add dmf los hoc	45	add_dmfloshoc
122	Can change dmf los hoc	45	change_dmfloshoc
123	Can delete dmf los hoc	45	delete_dmfloshoc
124	Can add dmf los oue	46	add_dmflosoue
125	Can change dmf los oue	46	change_dmflosoue
126	Can delete dmf los oue	46	delete_dmflosoue
127	Can add dsh pub th	47	add_dshpubth
128	Can change dsh pub th	47	change_dshpubth
129	Can delete dsh pub th	47	delete_dshpubth
130	Can add dsh pub omc	48	add_dshpubomc
131	Can change dsh pub omc	48	change_dshpubomc
132	Can delete dsh pub omc	48	delete_dshpubomc
133	Can add dsh pvt fa	49	add_dshpvtfa
134	Can change dsh pvt fa	49	change_dshpvtfa
135	Can delete dsh pvt fa	49	delete_dshpvtfa
136	Can add dsh tdl owship	50	add_dshtdlowship
137	Can change dsh tdl owship	50	change_dshtdlowship
138	Can delete dsh tdl owship	50	delete_dshtdlowship
139	Can add dsn pub p1 lmh	51	add_dsnpubp1lmh
140	Can change dsn pub p1 lmh	51	change_dsnpubp1lmh
141	Can delete dsn pub p1 lmh	51	delete_dsnpubp1lmh
142	Can add dsn pub p1 moh	52	add_dsnpubp1moh
143	Can change dsn pub p1 moh	52	change_dsnpubp1moh
144	Can delete dsn pub p1 moh	52	delete_dsnpubp1moh
145	Can add dsn pub p1 omc	53	add_dsnpubp1omc
146	Can change dsn pub p1 omc	53	change_dsnpubp1omc
147	Can delete dsn pub p1 omc	53	delete_dsnpubp1omc
148	Can add dsn pub pn lmh	54	add_dsnpubpnlmh
149	Can change dsn pub pn lmh	54	change_dsnpubpnlmh
150	Can delete dsn pub pn lmh	54	delete_dsnpubpnlmh
151	Can add dsn pub pn moh	55	add_dsnpubpnmoh
152	Can change dsn pub pn moh	55	change_dsnpubpnmoh
153	Can delete dsn pub pn moh	55	delete_dsnpubpnmoh
154	Can add dsn pub pn omc	56	add_dsnpubpnomc
155	Can change dsn pub pn omc	56	change_dsnpubpnomc
156	Can delete dsn pub pn omc	56	delete_dsnpubpnomc
157	Can add dsn pvt p1	57	add_dsnpvtp1
158	Can change dsn pvt p1	57	change_dsnpvtp1
159	Can delete dsn pvt p1	57	delete_dsnpvtp1
160	Can add dsn pvt pn	58	add_dsnpvtpn
161	Can change dsn pvt pn	58	change_dsnpvtpn
162	Can delete dsn pvt pn	58	delete_dsnpvtpn
163	Can add dsn tdl owship	59	add_dsntdlowship
164	Can change dsn tdl owship	59	change_dsntdlowship
165	Can delete dsn tdl owship	59	delete_dsntdlowship
166	Can add province	60	add_province
167	Can change province	60	change_province
168	Can delete province	60	delete_province
169	Can add district	61	add_district
170	Can change district	61	change_district
171	Can delete district	61	delete_district
172	Can add disaster type	62	add_disastertype
173	Can change disaster type	62	change_disastertype
174	Can delete disaster type	62	delete_disastertype
175	Can add incident report	63	add_incidentreport
176	Can change incident report	63	change_incidentreport
177	Can delete incident report	63	delete_incidentreport
178	Can add dmh df num	64	add_dmhdfnum
179	Can change dmh df num	64	change_dmhdfnum
180	Can delete dmh df num	64	delete_dmhdfnum
181	Can add dmh df paf	65	add_dmhdfpaf
182	Can change dmh df paf	65	change_dmhdfpaf
183	Can delete dmh df paf	65	delete_dmhdfpaf
184	Can add dmh ndat fac structure	66	add_dmhndatfacstructure
185	Can change dmh ndat fac structure	66	change_dmhndatfacstructure
186	Can delete dmh ndat fac structure	66	delete_dmhndatfacstructure
187	Can add dmh ndat fac supplies	67	add_dmhndatfacsupplies
188	Can change dmh ndat fac supplies	67	change_dmhndatfacsupplies
189	Can delete dmh ndat fac supplies	67	delete_dmhndatfacsupplies
190	Can add dmh ndat fac mequipment	68	add_dmhndatfacmequipment
191	Can change dmh ndat fac mequipment	68	change_dmhndatfacmequipment
192	Can delete dmh ndat fac mequipment	68	delete_dmhndatfacmequipment
193	Can add dmh ndat fac oassets	69	add_dmhndatfacoassets
194	Can change dmh ndat fac oassets	69	change_dmhndatfacoassets
195	Can delete dmh ndat fac oassets	69	delete_dmhndatfacoassets
196	Can add dmh pdfa num	70	add_dmhpdfanum
197	Can change dmh pdfa num	70	change_dmhpdfanum
198	Can delete dmh pdfa num	70	delete_dmhpdfanum
199	Can add dmh pdfa paf	71	add_dmhpdfapaf
200	Can change dmh pdfa paf	71	change_dmhpdfapaf
201	Can delete dmh pdfa paf	71	delete_dmhpdfapaf
202	Can add dmh pdfa structure	72	add_dmhpdfastructure
203	Can change dmh pdfa structure	72	change_dmhpdfastructure
204	Can delete dmh pdfa structure	72	delete_dmhpdfastructure
205	Can add dmh pdfa mequipment	73	add_dmhpdfamequipment
206	Can change dmh pdfa mequipment	73	change_dmhpdfamequipment
207	Can delete dmh pdfa mequipment	73	delete_dmhpdfamequipment
208	Can add dmh pdfa oassets	74	add_dmhpdfaoassets
209	Can change dmh pdfa oassets	74	change_dmhpdfaoassets
210	Can delete dmh pdfa oassets	74	delete_dmhpdfaoassets
211	Can add dmh los fi	75	add_dmhlosfi
212	Can change dmh los fi	75	change_dmhlosfi
213	Can delete dmh los fi	75	delete_dmhlosfi
214	Can add dmh los cud	76	add_dmhloscud
215	Can change dmh los cud	76	change_dmhloscud
216	Can delete dmh los cud	76	delete_dmhloscud
217	Can add dmh los hoc	77	add_dmhloshoc
218	Can change dmh los hoc	77	change_dmhloshoc
219	Can delete dmh los hoc	77	delete_dmhloshoc
220	Can add dmh los oue	78	add_dmhlosoue
221	Can change dmh los oue	78	change_dmhlosoue
222	Can delete dmh los oue	78	delete_dmhlosoue
223	Can add dap nap tmf	79	add_dapnaptmf
224	Can change dap nap tmf	79	change_dapnaptmf
225	Can delete dap nap tmf	79	delete_dapnaptmf
226	Can add dap bef pc1	80	add_dapbefpc1
227	Can change dap bef pc1	80	change_dapbefpc1
228	Can delete dap bef pc1	80	delete_dapbefpc1
229	Can add dap bef pcn	81	add_dapbefpcn
230	Can change dap bef pcn	81	change_dapbefpcn
231	Can delete dap bef pcn	81	delete_dapbefpcn
232	Can add dap bef other	82	add_dapbefother
233	Can change dap bef other	82	change_dapbefother
234	Can delete dap bef other	82	delete_dapbefother
235	Can add disaster type	83	add_disastertype
236	Can change disaster type	83	change_disastertype
237	Can delete disaster type	83	delete_disastertype
238	Can add incident report	13	add_incidentreport
239	Can change incident report	13	change_incidentreport
240	Can delete incident report	13	delete_incidentreport
241	Can add province	84	add_province
242	Can change province	84	change_province
243	Can delete province	84	delete_province
244	Can add district	85	add_district
245	Can change district	85	change_district
246	Can delete district	85	delete_district
247	Can add disaster type	11	add_disastertype
248	Can change disaster type	11	change_disastertype
249	Can delete disaster type	11	delete_disastertype
\.


--
-- TOC entry 3570 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 249, true);


--
-- TOC entry 3257 (class 0 OID 442328)
-- Dependencies: 214
-- Data for Name: auth_user; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$5h8dlN7FRs7e$xG4lnYHFYQLpEJzIellN+HfeUoMesSWuqyhNmrbEsaM=	2016-12-08 09:56:39.326849+05:30	t	admin			admin@gmail.com	t	t	2016-11-23 14:49:09.394649+05:30
\.


--
-- TOC entry 3258 (class 0 OID 442331)
-- Dependencies: 215
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3571 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- TOC entry 3261 (class 0 OID 442338)
-- Dependencies: 218
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3263 (class 0 OID 442343)
-- Dependencies: 220
-- Data for Name: bd_session_keys; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bd_session_keys (id, data_type, key, date, "user", bs_date) FROM stdin;
2	base_line	\N	2016-12-06 06:27:16.537323	\N	06/2016
3	base_line	\N	2016-12-06 07:00:25.176404	\N	02/2016
4	base_line	\N	2016-12-08 08:00:53.302329	\N	01/2016
\.


--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 221
-- Name: bd_session_keys_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('bd_session_keys_id_seq', 4, true);


--
-- TOC entry 3435 (class 0 OID 443406)
-- Dependencies: 392
-- Data for Name: bhs_com_diseases; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bhs_com_diseases (id, com_disease, male, female, children, elderly, district, created_user, lmu, created_date, lmd, session_id, bs_date) FROM stdin;
1	Diarrhea	5	6	7	8	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N	01/2016
2	Dengue	5	6	7	8	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N	01/2016
\.


--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 391
-- Name: bhs_com_diseases_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('bhs_com_diseases_id_seq', 2, true);


--
-- TOC entry 3437 (class 0 OID 443422)
-- Dependencies: 394
-- Data for Name: bhs_oi; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bhs_oi (id, other_indicators, male, female, children, elderly, district, created_user, lmu, created_date, lmd, session_id, unit_measure, bs_date) FROM stdin;
1	Crude Birth Rate	\N	\N	\N	\N	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N	1	01/2016
2	Maternal Mortality Rate	\N	\N	\N	\N	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N		01/2016
\.


--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 393
-- Name: bhs_oi_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('bhs_oi_id_seq', 2, true);


--
-- TOC entry 3439 (class 0 OID 443438)
-- Dependencies: 396
-- Data for Name: bhs_plc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bhs_plc (id, male, female, children, elderly, district, created_user, lmu, created_date, lmd, session_id, bs_date) FROM stdin;
1	5	3	5	7	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N	01/2016
\.


--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 395
-- Name: bhs_plc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('bhs_plc_id_seq', 1, true);


--
-- TOC entry 3441 (class 0 OID 443451)
-- Dependencies: 398
-- Data for Name: bhs_vi; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bhs_vi (id, vital_indicators, male, female, children, elderly, district, created_user, lmu, created_date, lmd, session_id, bs_date) FROM stdin;
1	Under-5 Mortality Rate	3	3	3	3	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N	01/2016
2	Mortality Rate	3	3	3	3	2	\N	\N	2016-12-08 12:45:35.631568	2016-12-08 12:45:35.631568	\N	01/2016
\.


--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 397
-- Name: bhs_vi_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('bhs_vi_id_seq', 2, true);


--
-- TOC entry 3227 (class 0 OID 442244)
-- Dependencies: 184
-- Data for Name: bmf_pub_mf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bmf_pub_mf (id, type_pub_mf, number, male, female, created_user, lmu, created_date, lmd, key, district, bs_date) FROM stdin;
159	Teaching Hospital (TH)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
160	Provincial General Hospital (PGH)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
161	District General Hospital (DGH)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
162	Base Hospital (BH )	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
163	Divisional Hospital (DH )	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
164	Rural Hospital (RH )	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
165	Central Dispensary (CH )	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
166	Primary Medical Care Units (PMCU)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
167	Primary Health Care Centers (PHCC)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
168	Maternal and Child Health Clinics (MCHC)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
169	MOH Offices 	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
170	Others (Specify)	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
171	TOTAL	12	12	12	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
\.


--
-- TOC entry 3265 (class 0 OID 442348)
-- Dependencies: 222
-- Data for Name: bmf_pvt_mf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bmf_pvt_mf (id, type_pvt_mf, number, male, female, created_user, lmu, created_date, lmd, key, district, bs_date) FROM stdin;
172	\N	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
173	\N	1	1	1	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
174	\N	2	2	2	\N	\N	2016-12-08 08:09:44.971129	2016-12-08 08:09:44.971129	\N	\N	01/2016
\.


--
-- TOC entry 3229 (class 0 OID 442249)
-- Dependencies: 186
-- Data for Name: buc_mar_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_mequipment (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
CT Scan	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	49
X-ray Machine	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	50
MRI Machine	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	51
Other Equipment (Specify)	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	52
CT Scan	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	53
X-ray Machine	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	54
MRI Machine	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	55
Other Equipment (Specify)	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	56
\.


--
-- TOC entry 3231 (class 0 OID 442254)
-- Dependencies: 188
-- Data for Name: buc_mar_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_oassets (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
Computers	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	61
Vehicles	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	62
Furniture	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	63
Office Equipment	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	64
Others	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	65
Computers	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	66
Vehicles	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	67
Furniture	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	68
Office Equipment	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	69
Others	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	70
\.


--
-- TOC entry 3233 (class 0 OID 442259)
-- Dependencies: 190
-- Data for Name: buc_mar_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_structure (id, particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
59	1 Floor Structure	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	01/2016
60	2-3 Floors Structure	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	01/2016
61	More Than 3 Floors Structure	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	01/2016
62	1 Floor Structure	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	02/2016
63	2-3 Floors Structure	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	02/2016
64	More Than 3 Floors Structure	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	02/2016
\.


--
-- TOC entry 3235 (class 0 OID 442264)
-- Dependencies: 192
-- Data for Name: buc_mar_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_supplies (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
Medicines	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	34
Medical Supplies	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	35
Others	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	36
Medicines	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	37
Medical Supplies	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	38
Others	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	39
\.


--
-- TOC entry 3266 (class 0 OID 442352)
-- Dependencies: 223
-- Data for Name: buc_marc_crpm; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_marc_crpm (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
Average Construction Period	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	25
Average Repair Period	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	26
Average Construction Period	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	27
Average Repair Period	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	28
\.


--
-- TOC entry 3267 (class 0 OID 442355)
-- Dependencies: 224
-- Data for Name: buc_marc_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_marc_mequipment (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
CT Scan	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	49
X-ray Machine	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	50
MRI Machine	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	51
Other Equipment (Specify)	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	52
CT Scan	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	53
X-ray Machine	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	54
MRI Machine	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	55
Other Equipment (Specify)	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	56
\.


--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 225
-- Name: buc_marc_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_marc_mequipment_id_seq', 56, true);


--
-- TOC entry 3269 (class 0 OID 442360)
-- Dependencies: 226
-- Data for Name: buc_marc_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_marc_oassets (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
Computers	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	56
Vehicles	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	57
Furniture	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	58
Office Equipment	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	59
Others	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	60
Computers	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	61
Vehicles	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	62
Furniture	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	63
Office Equipment	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	64
Others	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	65
\.


--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 227
-- Name: buc_marc_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_marc_oassets_id_seq', 65, true);


--
-- TOC entry 3271 (class 0 OID 442365)
-- Dependencies: 228
-- Data for Name: buc_marc_structures; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_marc_structures (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
Roof	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	34
Wall	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	35
Flooring	0	0	0	0	0	\N	\N	\N	2016-12-08 08:00:53.302329	2016-12-08 08:00:53.302329	\N	36
Roof	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	37
Wall	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	38
Flooring	0	0	0	0	0	\N	\N	\N	2016-12-08 12:35:27.968697	2016-12-08 12:35:27.968697	\N	39
\.


--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 229
-- Name: buc_marc_structures_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_marc_structures_id_seq', 39, true);


--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 230
-- Name: buc_marc_supplies_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_marc_supplies_id_seq', 28, true);


--
-- TOC entry 3274 (class 0 OID 442372)
-- Dependencies: 231
-- Data for Name: buc_omar_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_mequipment (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
CT Scan	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	33
X-ray Machine	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	34
MRI Machine	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	35
Other Equipment (Specify)	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	36
\.


--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 232
-- Name: buc_omar_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omar_mequipment_id_seq', 36, true);


--
-- TOC entry 3276 (class 0 OID 442380)
-- Dependencies: 233
-- Data for Name: buc_omar_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_oassets (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
Computers	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	41
Vehicles	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	42
Furniture	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	43
Office Equipment	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	44
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	45
\.


--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 234
-- Name: buc_omar_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omar_oassets_id_seq', 45, true);


--
-- TOC entry 3278 (class 0 OID 442388)
-- Dependencies: 235
-- Data for Name: buc_omar_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_structure (id, particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date) FROM stdin;
28	1 Floor Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016
29	2-3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016
30	More Than 3 Floors Structure	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016
\.


--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 236
-- Name: buc_omar_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omar_structure_id_seq', 30, true);


--
-- TOC entry 3280 (class 0 OID 442396)
-- Dependencies: 237
-- Data for Name: buc_omar_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omar_supplies (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
Medicine	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	25
Medical Supplies	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	26
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	27
\.


--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 238
-- Name: buc_omar_supplies_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omar_supplies_id_seq', 27, true);


--
-- TOC entry 3282 (class 0 OID 442404)
-- Dependencies: 239
-- Data for Name: buc_omarc_crpm; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omarc_crpm (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
Average Construction Period	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	14
Average Repair Period	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	15
\.


--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 240
-- Name: buc_omarc_crpm_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omarc_crpm_id_seq', 15, true);


--
-- TOC entry 3284 (class 0 OID 442412)
-- Dependencies: 241
-- Data for Name: buc_omarc_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omarc_mequipment (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
CT Scan	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	22
X-ray Machine	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	23
MRI Machine	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	24
Other Equipment (Specify)	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	25
\.


--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 242
-- Name: buc_omarc_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omarc_mequipment_id_seq', 25, true);


--
-- TOC entry 3286 (class 0 OID 442420)
-- Dependencies: 243
-- Data for Name: buc_omarc_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omarc_oassets (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
Computers	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	21
Vehicles	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	22
Furniture	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	23
Office Equipment	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	24
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	25
\.


--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 244
-- Name: buc_omarc_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omarc_oassets_id_seq', 25, true);


--
-- TOC entry 3288 (class 0 OID 442428)
-- Dependencies: 245
-- Data for Name: buc_omarc_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_omarc_structure (particulars, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pri_med_cunits, pri_health_ccenters, mat_child_health_clinics, district, created_user, lmu, created_date, lmd, key, bs_date, id) FROM stdin;
Roof	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	4
Wall	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	5
Flooring	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 08:07:45.361914	2016-12-08 08:07:45.361914	\N	02/2016	6
\.


--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 246
-- Name: buc_omarc_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('buc_omarc_structure_id_seq', 6, true);


--
-- TOC entry 3290 (class 0 OID 442436)
-- Dependencies: 247
-- Data for Name: dap_bef_other; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dap_bef_other (pvt_clinics, est_replacement_cost, est_repair_cost, total_damages, est_losses_y1, est_losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	1
Supplies and Materials	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	2
Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	3
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	4
TOTAL	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	5
\.


--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 248
-- Name: dap_bef_other_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dap_bef_other_id_seq', 5, true);


--
-- TOC entry 3292 (class 0 OID 442441)
-- Dependencies: 249
-- Data for Name: dap_bef_pc1; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dap_bef_pc1 (pvt_clinics, est_replacement_cost, est_repair_cost, total_damages, est_losses_y1, est_losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	1
Supplies and Materials	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	2
Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	3
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	4
\.


--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 250
-- Name: dap_bef_pc1_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dap_bef_pc1_id_seq', 4, true);


--
-- TOC entry 3294 (class 0 OID 442446)
-- Dependencies: 251
-- Data for Name: dap_bef_pcn; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dap_bef_pcn (pvt_clinics, est_replacement_cost, est_repair_cost, total_damages, est_losses_y1, est_losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	1
Supplies and Materials	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	2
Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	3
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N	4
\.


--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 252
-- Name: dap_bef_pcn_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dap_bef_pcn_id_seq', 4, true);


--
-- TOC entry 3296 (class 0 OID 442451)
-- Dependencies: 253
-- Data for Name: dap_nap_tmf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dap_nap_tmf (id, type_med_fac, num_affected_fac, male, female, district, created_user, lmu, created_date, lmd, incident, key) FROM stdin;
1	Private Clinics	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N
2	Others	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N
3	TOTAL	0	0	0	\N	\N	\N	2016-12-08 10:50:36.205415	2016-12-08 10:50:36.205415	\N	\N
\.


--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 254
-- Name: dap_nap_tmf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dap_nap_tmf_id_seq', 3, true);


--
-- TOC entry 3237 (class 0 OID 442269)
-- Dependencies: 194
-- Data for Name: data_entry; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY data_entry (added_date, id, table_id, user_id, district_id) FROM stdin;
\.


--
-- TOC entry 3298 (class 0 OID 442456)
-- Dependencies: 255
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
6	2016-12-06 12:59:21.301978+05:30	1	DisasterType object	1		11	1
7	2016-12-06 13:00:00.967276+05:30	2	Cyclone	1		11	1
8	2016-12-06 13:04:51.17153+05:30	9	Test	1		12	1
9	2016-12-06 16:01:04.106176+05:30	9	Test	2	Changed reported_date_time.	13	1
\.


--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 256
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 9, true);


--
-- TOC entry 3300 (class 0 OID 442465)
-- Dependencies: 257
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
9	base_line	bmfpubmf
10	incident_report	incidentreport
11	settings	disastertype
12	incident	incidentreport
13	incidents	incidentreport
14	base_line	bmfpvtmf
15	base_line	bucomarmequipment
16	base_line	bucomaroassets
17	base_line	bucomarstructure
18	base_line	bucomarsupplies
19	base_line	bucomarccrpm
20	base_line	bucomarcmequipment
21	base_line	bucomarcoassets
22	base_line	bucomarcstructure
23	base_line	bdsessionkeys
24	base_line	bucmarstructure
25	base_line	bucmarcstructures
26	base_line	bucmarsupplies
27	base_line	bucmarccrpm
28	base_line	bucmarmequipment
29	base_line	bucmarcmequipment
30	base_line	bucmaroassets
31	base_line	bucmarcoassets
32	damage_losses	dmfdfanum
33	damage_losses	dmfdfapaf
34	damage_losses	dmfdastructure
35	damage_losses	dmfdasupplies
36	damage_losses	dmfdamequipment
37	damage_losses	dmfdaoassets
38	damage_losses	dmfpdfanum
39	damage_losses	dmfpdfapaf
40	damage_losses	dmfpdastructure
41	damage_losses	dmfpdamequipment
42	damage_losses	dmfpdaoassets
43	damage_losses	dmflosfi
44	damage_losses	dmfloscud
45	damage_losses	dmfloshoc
46	damage_losses	dmflosoue
47	damage_losses	dshpubth
48	damage_losses	dshpubomc
49	damage_losses	dshpvtfa
50	damage_losses	dshtdlowship
51	damage_losses	dsnpubp1lmh
52	damage_losses	dsnpubp1moh
53	damage_losses	dsnpubp1omc
54	damage_losses	dsnpubpnlmh
55	damage_losses	dsnpubpnmoh
56	damage_losses	dsnpubpnomc
57	damage_losses	dsnpvtp1
58	damage_losses	dsnpvtpn
59	damage_losses	dsntdlowship
60	damage_losses	province
61	damage_losses	district
62	damage_losses	disastertype
63	damage_losses	incidentreport
64	damage_losses	dmhdfnum
65	damage_losses	dmhdfpaf
66	damage_losses	dmhndatfacstructure
67	damage_losses	dmhndatfacsupplies
68	damage_losses	dmhndatfacmequipment
69	damage_losses	dmhndatfacoassets
70	damage_losses	dmhpdfanum
71	damage_losses	dmhpdfapaf
72	damage_losses	dmhpdfastructure
73	damage_losses	dmhpdfamequipment
74	damage_losses	dmhpdfaoassets
75	damage_losses	dmhlosfi
76	damage_losses	dmhloscud
77	damage_losses	dmhloshoc
78	damage_losses	dmhlosoue
79	damage_losses	dapnaptmf
80	damage_losses	dapbefpc1
81	damage_losses	dapbefpcn
82	damage_losses	dapbefother
83	incidents	disastertype
84	settings	province
85	settings	district
\.


--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 258
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 85, true);


--
-- TOC entry 3302 (class 0 OID 442470)
-- Dependencies: 259
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
13	contenttypes	0001_initial	2016-11-23 11:56:50.510438+05:30
33	admin	0001_initial	2016-11-23 11:56:50.73637+05:30
43	contenttypes	0002_remove_content_type_name	2016-11-23 11:56:50.82629+05:30
53	auth	0002_alter_permission_name_max_length	2016-11-23 11:56:50.851193+05:30
63	auth	0003_alter_user_email_max_length	2016-11-23 11:56:50.87606+05:30
73	auth	0004_alter_user_username_opts	2016-11-23 11:56:50.899336+05:30
83	auth	0005_alter_user_last_login_null	2016-11-23 11:56:50.920233+05:30
93	auth	0006_require_contenttypes_0002	2016-11-23 11:56:50.92269+05:30
15	sessions	0001_initial	2016-11-23 11:56:50.965441+05:30
19	base_line	0001_initial	2016-12-08 15:41:57.430438+05:30
20	base_line	0002_bdsessionkeys_bmfpvtmf_bucmarccrpm_bucmarcmequipment_bucmarcoassets_bucmarcstructures_bucmarmequipme	2016-12-08 15:41:57.536919+05:30
21	damage_losses	0001_initial	2016-12-08 15:41:58.170659+05:30
22	incidents	0001_initial	2016-12-08 15:41:58.213942+05:30
24	settings	0001_initial	2016-12-08 15:42:09.213262+05:30
\.


--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 260
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 24, true);


--
-- TOC entry 3304 (class 0 OID 442478)
-- Dependencies: 261
-- Data for Name: django_session; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
d9060jjj2mqgjy6ma1d19jx132vvgm34	MjA3OTg5ZGY2OTI2NDFhNDlhNjFhY2U4YzQyNGFkMmRhZmY3YjFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlZDVhZjJkYTdiNTI2NTk1NDI1ODIxMGY2MTNlMDQ0ZGIzNDY1NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-07 14:56:23.70156+05:30
ys7sqpmw5gt2ow788l7ymeeh7tkpwzw4	MjA3OTg5ZGY2OTI2NDFhNDlhNjFhY2U4YzQyNGFkMmRhZmY3YjFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlZDVhZjJkYTdiNTI2NTk1NDI1ODIxMGY2MTNlMDQ0ZGIzNDY1NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-12 06:53:07.964384+05:30
fu7qta0xvxj3aykku845mvrv0h10kak7	MjA3OTg5ZGY2OTI2NDFhNDlhNjFhY2U4YzQyNGFkMmRhZmY3YjFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlZDVhZjJkYTdiNTI2NTk1NDI1ODIxMGY2MTNlMDQ0ZGIzNDY1NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-20 12:38:38.118428+05:30
o8v72y5a65nnu41zcx9hvdnvrg5833rm	MjA3OTg5ZGY2OTI2NDFhNDlhNjFhY2U4YzQyNGFkMmRhZmY3YjFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlZDVhZjJkYTdiNTI2NTk1NDI1ODIxMGY2MTNlMDQ0ZGIzNDY1NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-21 14:34:55.918928+05:30
4er3j6rm60fmgtfms813bnka3w23gp3s	MjA3OTg5ZGY2OTI2NDFhNDlhNjFhY2U4YzQyNGFkMmRhZmY3YjFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlZDVhZjJkYTdiNTI2NTk1NDI1ODIxMGY2MTNlMDQ0ZGIzNDY1NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-22 09:56:39.333145+05:30
\.


--
-- TOC entry 3305 (class 0 OID 442484)
-- Dependencies: 262
-- Data for Name: dmf_da_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_da_mequipment (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.817763	2016-12-02 08:27:56.817775	\N	\N	34
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.319896	2016-12-02 07:47:08.319908	\N	\N	17
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	53
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.123453	2016-12-02 08:18:01.123464	\N	\N	24
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.957945	2016-12-02 07:08:12.957955	\N	\N	1
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.324122	2016-12-02 07:25:25.324133	\N	\N	10
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	42
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.338582	2016-12-02 07:47:08.338593	\N	\N	18
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.974364	2016-12-02 07:08:12.974374	\N	\N	2
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.333981	2016-12-02 08:22:37.333993	\N	\N	30
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.538307	2016-12-02 07:34:55.538317	\N	\N	11
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	45
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.998518	2016-12-02 07:08:12.998528	\N	\N	3
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.161244	2016-12-02 08:18:01.161257	\N	\N	25
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.36539	2016-12-02 07:47:08.365402	\N	\N	19
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.558801	2016-12-02 07:34:55.558812	\N	\N	12
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.84191	2016-12-02 08:27:56.84192	\N	\N	35
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:13.023146	2016-12-02 07:08:13.02316	\N	\N	4
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.097278	2016-12-02 08:32:58.097289	\N	\N	39
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.70848	2016-12-02 08:27:56.70849	\N	\N	31
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.580888	2016-12-02 07:34:55.580897	\N	\N	13
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:13.039117	2016-12-02 07:08:13.039126	\N	\N	5
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.389701	2016-12-02 07:47:08.389711	\N	\N	20
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.14593	2016-12-02 08:22:37.145942	\N	\N	26
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	50
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.167558	2016-12-02 07:25:25.16757	\N	\N	6
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.606732	2016-12-02 07:34:55.606742	\N	\N	14
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	48
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.01621	2016-12-02 08:32:58.016251	\N	\N	36
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.024226	2016-12-02 08:18:01.024236	\N	\N	21
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.205554	2016-12-02 07:25:25.205565	\N	\N	7
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	43
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.183117	2016-12-02 08:22:37.183131	\N	\N	27
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.630492	2016-12-02 07:34:55.63051	\N	\N	15
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.752782	2016-12-02 08:27:56.752817	\N	\N	32
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.245213	2016-12-02 07:25:25.245224	\N	\N	8
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.053237	2016-12-02 08:18:01.053256	\N	\N	22
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.118832	2016-12-02 08:32:58.118843	\N	\N	40
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.292063	2016-12-02 07:47:08.292075	\N	\N	16
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.286556	2016-12-02 07:25:25.286569	\N	\N	9
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.217987	2016-12-02 08:22:37.218001	\N	\N	28
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	46
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.045132	2016-12-02 08:32:58.045145	\N	\N	37
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.093202	2016-12-02 08:18:01.093213	\N	\N	23
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.792927	2016-12-02 08:27:56.792937	\N	\N	33
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	52
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.250855	2016-12-02 08:22:37.250868	\N	\N	29
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	41
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	44
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.072064	2016-12-02 08:32:58.072101	\N	\N	38
Value of Destroyed Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	55
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	49
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	47
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	51
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	54
MRI Machine	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	58
X-ray Machine	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	57
Other Equipment (Specify)	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	59
CT Scan	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	56
Value of Destroyed Medical Equipment	3	3	3	3	3	3	3	21	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	60
\.


--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 263
-- Name: dmf_da_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_da_mequipment_id_seq', 60, true);


--
-- TOC entry 3307 (class 0 OID 442489)
-- Dependencies: 264
-- Data for Name: dmf_da_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_da_oassets (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.237433	2016-12-02 07:47:08.237443	\N	\N	23
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.683612	2016-12-02 08:32:57.683623	\N	\N	53
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.700957	2016-12-02 08:22:36.70097	\N	\N	38
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.643217	2016-12-02 08:18:00.64323	\N	\N	29
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.845689	2016-12-02 07:25:24.8457	\N	\N	1
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.281169	2016-12-02 07:34:55.281178	\N	\N	9
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.034516	2016-12-02 07:47:08.034527	\N	\N	17
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.538034	2016-12-02 08:22:36.538046	\N	\N	34
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.884913	2016-12-02 07:25:24.884926	\N	\N	2
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.267843	2016-12-02 07:47:08.267854	\N	\N	24
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.308052	2016-12-02 07:34:55.308067	\N	\N	10
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	61
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.924029	2016-12-02 07:25:24.924067	\N	\N	3
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	59
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.070898	2016-12-02 07:47:08.070923	\N	\N	18
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.157583	2016-12-02 08:27:56.157604	\N	\N	45
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.680959	2016-12-02 08:18:00.680972	\N	\N	30
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.334157	2016-12-02 07:34:55.334166	\N	\N	11
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.969399	2016-12-02 07:25:24.969437	\N	\N	4
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.899764	2016-12-02 08:27:55.899775	\N	\N	42
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.497349	2016-12-02 08:18:00.497361	\N	\N	25
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.106728	2016-12-02 07:47:08.106743	\N	\N	19
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.003767	2016-12-02 07:25:25.00378	\N	\N	5
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.367842	2016-12-02 07:34:55.367853	\N	\N	12
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.577366	2016-12-02 08:22:36.577379	\N	\N	35
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.75101	2016-12-02 08:22:36.751023	\N	\N	39
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.04597	2016-12-02 07:25:25.045983	\N	\N	6
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.725011	2016-12-02 08:18:00.725025	\N	\N	31
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.532676	2016-12-02 08:18:00.532687	\N	\N	26
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.405575	2016-12-02 07:34:55.405589	\N	\N	13
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.142301	2016-12-02 07:47:08.142313	\N	\N	20
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.083543	2016-12-02 07:25:25.083583	\N	\N	7
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.583411	2016-12-02 08:32:57.583422	\N	\N	50
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.435618	2016-12-02 07:34:55.435628	\N	\N	14
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.315759	2016-12-02 08:27:56.31578	\N	\N	48
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.125659	2016-12-02 07:25:25.125684	\N	\N	8
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.17697	2016-12-02 07:47:08.176981	\N	\N	21
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.626841	2016-12-02 08:22:36.626852	\N	\N	36
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.565686	2016-12-02 08:18:00.5657	\N	\N	27
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.466078	2016-12-02 07:34:55.466088	\N	\N	15
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.780769	2016-12-02 08:18:00.780813	\N	\N	32
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.651185	2016-12-02 08:32:57.651196	\N	\N	52
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.202192	2016-12-02 07:47:08.202227	\N	\N	22
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.930114	2016-12-02 08:27:55.930125	\N	\N	43
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.507174	2016-12-02 07:34:55.507184	\N	\N	16
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.785777	2016-12-02 08:22:36.785791	\N	\N	40
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.608772	2016-12-02 08:18:00.608789	\N	\N	28
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.219634	2016-12-02 08:27:56.219659	\N	\N	46
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.510365	2016-12-02 08:22:36.510376	\N	\N	33
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.663124	2016-12-02 08:22:36.663135	\N	\N	37
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.755307	2016-12-02 08:32:57.755318	\N	\N	56
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.72829	2016-12-02 08:32:57.728309	\N	\N	55
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.864001	2016-12-02 08:27:55.864011	\N	\N	41
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.099132	2016-12-02 08:27:56.099157	\N	\N	44
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.710261	2016-12-02 08:32:57.710272	\N	\N	54
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.539649	2016-12-02 08:32:57.539684	\N	\N	49
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.618116	2016-12-02 08:32:57.618126	\N	\N	51
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.268543	2016-12-02 08:27:56.268563	\N	\N	47
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	57
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	60
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	58
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	62
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	63
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	64
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	65
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	66
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	67
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	68
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	69
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	78
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	70
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	79
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	71
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	80
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	72
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	73
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	74
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	75
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	76
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	77
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	88
Computers	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	81
Vehicles	1	1	1	1	1	1	1	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	82
Furniture	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	83
Other Equipment (Specify)	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	84
Office Equipment	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	85
Others	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	86
Value of Destroyed Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	87
\.


--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 265
-- Name: dmf_da_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_da_oassets_id_seq', 88, true);


--
-- TOC entry 3309 (class 0 OID 442494)
-- Dependencies: 266
-- Data for Name: dmf_da_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_da_structure (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.043717	2016-12-02 07:02:23.043729	\N	\N	16
1 Floor Structure	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	57
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	52
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.455717	2016-12-02 07:25:25.455727	\N	\N	23
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:25.980917	2016-12-02 06:39:25.980929	\N	\N	1
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.56109	2016-12-02 08:27:57.561104	\N	\N	41
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.289732	2016-12-02 06:46:40.289744	\N	\N	9
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.672004	2016-12-02 08:27:57.672018	\N	\N	44
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.682987	2016-12-02 07:08:12.682998	\N	\N	17
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:26.020559	2016-12-02 06:39:26.020572	\N	\N	2
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.566618	2016-12-02 07:47:08.566629	\N	\N	29
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.321097	2016-12-02 06:46:40.321109	\N	\N	10
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.713613	2016-12-02 08:22:37.713667	\N	\N	38
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.482461	2016-12-02 07:25:25.482477	\N	\N	24
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:26.067511	2016-12-02 06:39:26.067525	\N	\N	3
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.460968	2016-12-02 08:18:01.460978	\N	\N	34
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.720312	2016-12-02 07:08:12.720322	\N	\N	18
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.354582	2016-12-02 06:46:40.354596	\N	\N	11
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:26.108506	2016-12-02 06:39:26.108518	\N	\N	4
More Than 3 Floors Structure	1	1	1	1	1	0	0	5	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	59
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.582544	2016-12-02 07:47:08.582557	\N	\N	30
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.706467	2016-12-02 07:34:55.706482	\N	\N	25
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.761588	2016-12-02 07:08:12.761603	\N	\N	19
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.529324	2016-12-02 06:44:55.529337	\N	\N	5
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.384287	2016-12-02 06:46:40.384305	\N	\N	12
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	49
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.680301	2016-12-02 08:32:58.680321	\N	\N	47
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.558228	2016-12-02 06:44:55.558244	\N	\N	6
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.595344	2016-12-02 08:27:57.595358	\N	\N	42
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.484585	2016-12-02 08:18:01.484596	\N	\N	35
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:22.922636	2016-12-02 07:02:22.922648	\N	\N	13
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.796785	2016-12-02 07:08:12.796795	\N	\N	20
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.590787	2016-12-02 06:44:55.590798	\N	\N	7
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.746817	2016-12-02 07:34:55.746828	\N	\N	26
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.741658	2016-12-02 08:22:37.741669	\N	\N	39
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:22.964953	2016-12-02 07:02:22.964965	\N	\N	14
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.607393	2016-12-02 07:47:08.607408	\N	\N	31
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.6209	2016-12-02 06:44:55.620913	\N	\N	8
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.396577	2016-12-02 07:25:25.396588	\N	\N	21
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.011216	2016-12-02 07:02:23.011229	\N	\N	15
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.525653	2016-12-02 08:32:58.525665	\N	\N	45
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.78644	2016-12-02 07:34:55.786451	\N	\N	27
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.505926	2016-12-02 08:18:01.505942	\N	\N	36
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.428352	2016-12-02 07:25:25.428364	\N	\N	22
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.636692	2016-12-02 07:47:08.636705	\N	\N	32
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	51
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.825359	2016-12-02 07:34:55.825373	\N	\N	28
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.775844	2016-12-02 08:22:37.775856	\N	\N	40
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.630783	2016-12-02 08:27:57.630798	\N	\N	43
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.686572	2016-12-02 08:22:37.686583	\N	\N	37
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.444946	2016-12-02 08:18:01.444956	\N	\N	33
2-3 Floors Structure	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	58
More Than 3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	55
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.746459	2016-12-02 08:32:58.746472	\N	\N	48
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.579617	2016-12-02 08:32:58.579637	\N	\N	46
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	54
2-3 Floors Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	50
1 Floor Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	53
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	56
Value of Destroyed Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	60
1 Floor Structure	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	61
2-3 Floors Structure	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	62
More Than 3 Floors Structure	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	63
Value of Destroyed Structure	3	3	3	3	3	3	3	21	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	64
\.


--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 267
-- Name: dmf_da_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_da_structure_id_seq', 64, true);


--
-- TOC entry 3311 (class 0 OID 442499)
-- Dependencies: 268
-- Data for Name: dmf_da_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_da_supplies (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.801297	2016-12-02 08:27:57.801312	\N	\N	29
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.906501	2016-12-02 08:32:58.906518	\N	\N	34
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	42
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.088932	2016-12-02 07:02:23.088946	\N	\N	1
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.559443	2016-12-02 07:25:25.559454	\N	\N	9
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.716243	2016-12-02 07:47:08.716254	\N	\N	17
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.66844	2016-12-02 08:18:01.668452	\N	\N	24
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.126267	2016-12-02 07:02:23.126285	\N	\N	2
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	48
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.583593	2016-12-02 07:25:25.583604	\N	\N	10
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.843965	2016-12-02 08:27:57.843978	\N	\N	30
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.164103	2016-12-02 07:02:23.164115	\N	\N	3
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.74192	2016-12-02 07:47:08.74193	\N	\N	18
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	39
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.969966	2016-12-02 08:32:58.969982	\N	\N	35
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.60863	2016-12-02 07:25:25.608641	\N	\N	11
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.18593	2016-12-02 07:02:23.18594	\N	\N	4
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.912125	2016-12-02 08:22:37.912136	\N	\N	25
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.765858	2016-12-02 07:47:08.765869	\N	\N	19
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.841772	2016-12-02 07:08:12.841796	\N	\N	5
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.632529	2016-12-02 07:25:25.632544	\N	\N	12
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.875436	2016-12-02 08:27:57.87545	\N	\N	31
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.951009	2016-12-02 08:22:37.951025	\N	\N	26
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.87646	2016-12-02 07:08:12.876477	\N	\N	6
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	43
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.950287	2016-12-02 07:34:55.950317	\N	\N	13
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.808771	2016-12-02 07:47:08.808783	\N	\N	20
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.90613	2016-12-02 07:08:12.906143	\N	\N	7
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	46
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:59.021718	2016-12-02 08:32:59.021734	\N	\N	36
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:56.007622	2016-12-02 07:34:56.007639	\N	\N	14
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.899185	2016-12-02 08:27:57.899198	\N	\N	32
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.932024	2016-12-02 07:08:12.932034	\N	\N	8
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.989226	2016-12-02 08:22:37.989239	\N	\N	27
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.592055	2016-12-02 08:18:01.592065	\N	\N	21
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	40
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:56.057835	2016-12-02 07:34:56.057846	\N	\N	15
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.624987	2016-12-02 08:18:01.624998	\N	\N	22
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:56.102707	2016-12-02 07:34:56.102736	\N	\N	16
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:38.031031	2016-12-02 08:22:38.031047	\N	\N	28
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	37
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.858327	2016-12-02 08:32:58.85834	\N	\N	33
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.651668	2016-12-02 08:18:01.651679	\N	\N	23
Value of Destroyed Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	44
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	41
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	47
Medical Supplies	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	38
Medicines	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	45
Others	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	51
Medicines	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	49
Value of Destroyed Supplies	3	3	3	3	3	3	3	21	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	52
Medical Supplies	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	50
\.


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 269
-- Name: dmf_da_supplies_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_da_supplies_id_seq', 52, true);


--
-- TOC entry 3313 (class 0 OID 442504)
-- Dependencies: 270
-- Data for Name: dmf_dfa_num; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_dfa_num (num_des_facilities, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:13.064522	2016-12-02 07:08:13.064532	\N	\N	7
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.866813	2016-12-02 08:27:56.866829	\N	\N	13
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:20:52.740796	2016-12-02 06:20:52.740809	\N	\N	1
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.360954	2016-12-02 07:25:25.360984	\N	\N	8
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:28:14.727687	2016-12-02 06:28:14.7277	\N	\N	2
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.147396	2016-12-02 08:32:58.147406	\N	\N	14
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.672546	2016-12-02 07:34:55.672557	\N	\N	9
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:26.162952	2016-12-02 06:39:26.162964	\N	\N	3
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	15
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.41144	2016-12-02 07:47:08.41145	\N	\N	10
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.661663	2016-12-02 06:44:55.661676	\N	\N	4
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.423141	2016-12-02 06:46:40.423153	\N	\N	5
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.193092	2016-12-02 08:18:01.193102	\N	\N	11
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	16
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:23.214046	2016-12-02 07:02:23.214056	\N	\N	6
Number of Destroyed Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.367617	2016-12-02 08:22:37.367629	\N	\N	12
Number of Destroyed Facilities	1	2	3	4	5	6	7	28	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	17
Number of Destroyed Facilities	1	2	3	4	5	6	7	28	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	18
\.


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 271
-- Name: dmf_dfa_num_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_dfa_num_id_seq', 18, true);


--
-- TOC entry 3315 (class 0 OID 442509)
-- Dependencies: 272
-- Data for Name: dmf_dfa_paf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_dfa_paf (num_patients_affected, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	31
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.64338	2016-12-02 07:08:12.643391	\N	\N	16
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:20:52.624404	2016-12-02 06:20:52.624421	\N	\N	1
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.445412	2016-12-02 06:44:55.445429	\N	\N	9
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.801331	2016-12-02 07:47:07.801344	\N	\N	22
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.419001	2016-12-02 08:27:55.419016	\N	\N	27
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:20:52.697166	2016-12-02 06:20:52.697202	\N	\N	2
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:44:55.488809	2016-12-02 06:44:55.488822	\N	\N	10
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.685415	2016-12-02 07:25:24.685428	\N	\N	17
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:28:14.524239	2016-12-02 06:28:14.524251	\N	\N	3
Male	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	35
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.173157	2016-12-02 08:18:00.17321	\N	\N	23
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.210851	2016-12-02 06:46:40.210868	\N	\N	11
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:28:14.63114	2016-12-02 06:28:14.631153	\N	\N	4
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	32
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.767595	2016-12-02 07:25:24.767607	\N	\N	18
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.470791	2016-12-02 08:27:55.470805	\N	\N	28
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:38:24.053849	2016-12-02 06:38:24.053861	\N	\N	5
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:46:40.253916	2016-12-02 06:46:40.253927	\N	\N	12
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.230626	2016-12-02 08:18:00.230637	\N	\N	24
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.044462	2016-12-02 07:34:55.044474	\N	\N	19
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:38:24.097806	2016-12-02 06:38:24.09782	\N	\N	6
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:22.840716	2016-12-02 07:02:22.840728	\N	\N	13
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:25.899316	2016-12-02 06:39:25.899328	\N	\N	7
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.122763	2016-12-02 08:32:57.122774	\N	\N	29
Female	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	36
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.087673	2016-12-02 07:34:55.087684	\N	\N	20
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:02:22.887533	2016-12-02 07:02:22.887545	\N	\N	14
\N	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 06:39:25.939535	2016-12-02 06:39:25.939568	\N	\N	8
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.317719	2016-12-02 08:22:36.317732	\N	\N	25
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	33
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:08:12.582863	2016-12-02 07:08:12.582875	\N	\N	15
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.746823	2016-12-02 07:47:07.746836	\N	\N	21
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.177937	2016-12-02 08:32:57.177949	\N	\N	30
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.347735	2016-12-02 08:22:36.347751	\N	\N	26
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	34
Male	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	37
Female	1	1	1	1	1	1	1	7	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	38
\.


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 273
-- Name: dmf_dfa_paf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_dfa_paf_id_seq', 38, true);


--
-- TOC entry 3317 (class 0 OID 442514)
-- Dependencies: 274
-- Data for Name: dmf_los_cud; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_los_cud (type_of_losses, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.615757	2016-12-02 08:22:37.615769	\N	\N	1
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	10
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	18
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.641269	2016-12-02 08:22:37.64128	\N	\N	2
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	11
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.663648	2016-12-02 08:22:37.663661	\N	\N	3
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	12
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.428014	2016-12-02 08:27:57.428034	\N	\N	4
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.483312	2016-12-02 08:27:57.483332	\N	\N	5
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	13
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.528207	2016-12-02 08:27:57.52822	\N	\N	6
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	14
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.39346	2016-12-02 08:32:58.39347	\N	\N	7
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	15
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.459812	2016-12-02 08:32:58.459824	\N	\N	8
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	16
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.493161	2016-12-02 08:32:58.493185	\N	\N	9
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	17
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	19
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	20
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	21
\.


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 275
-- Name: dmf_los_cud_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_los_cud_id_seq', 21, true);


--
-- TOC entry 3319 (class 0 OID 442519)
-- Dependencies: 276
-- Data for Name: dmf_los_fi; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_los_fi (type_of_losses, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.227005	2016-12-02 08:18:01.227023	\N	\N	1
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.173594	2016-12-02 08:32:58.173604	\N	\N	10
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	18
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.252037	2016-12-02 08:18:01.252049	\N	\N	2
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.193421	2016-12-02 08:32:58.193448	\N	\N	11
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.282097	2016-12-02 08:18:01.282109	\N	\N	3
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	19
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.21286	2016-12-02 08:32:58.21287	\N	\N	12
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.3993	2016-12-02 08:22:37.399311	\N	\N	4
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	20
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.432976	2016-12-02 08:22:37.432989	\N	\N	5
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	13
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.45833	2016-12-02 08:22:37.458351	\N	\N	6
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	21
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	14
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.901638	2016-12-02 08:27:56.901649	\N	\N	7
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	15
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.941652	2016-12-02 08:27:56.941665	\N	\N	8
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	16
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.976148	2016-12-02 08:27:56.976169	\N	\N	9
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	17
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	22
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	23
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	24
\.


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 277
-- Name: dmf_los_fi_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_los_fi_id_seq', 24, true);


--
-- TOC entry 3321 (class 0 OID 442524)
-- Dependencies: 278
-- Data for Name: dmf_los_hoc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_los_hoc (type_of_losses, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	10
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.512017	2016-12-02 08:27:55.512057	\N	\N	1
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.556419	2016-12-02 08:27:55.556432	\N	\N	2
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	11
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.607512	2016-12-02 08:27:55.60756	\N	\N	3
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	12
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.219673	2016-12-02 08:32:57.219685	\N	\N	4
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	13
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.267853	2016-12-02 08:32:57.267865	\N	\N	5
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	14
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.299152	2016-12-02 08:32:57.299163	\N	\N	6
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	7
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	15
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	8
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	9
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	16
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	17
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	18
\.


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 279
-- Name: dmf_los_hoc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_los_hoc_id_seq', 18, true);


--
-- TOC entry 3323 (class 0 OID 442529)
-- Dependencies: 280
-- Data for Name: dmf_los_oue; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_los_oue (type_of_losses, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:59.082555	2016-12-02 08:32:59.082568	\N	\N	1
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	10
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:59.121115	2016-12-02 08:32:59.121129	\N	\N	2
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	11
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:59.1954	2016-12-02 08:32:59.195429	\N	\N	3
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	12
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:59.30864	2016-12-02 08:32:59.308681	\N	\N	4
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	13
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	5
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	6
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	14
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	7
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	15
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	8
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	16
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	9
Disaster Year 1	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	17
Year 2	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	18
Total	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	19
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	20
\.


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 281
-- Name: dmf_los_oue_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_los_oue_id_seq', 20, true);


--
-- TOC entry 3325 (class 0 OID 442534)
-- Dependencies: 282
-- Data for Name: dmf_pda_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_pda_mequipment (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	29
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.103108	2016-12-02 08:27:57.103128	\N	\N	17
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.445442	2016-12-02 07:47:08.445453	\N	\N	1
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.420133	2016-12-02 08:18:01.420144	\N	\N	10
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	34
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.320442	2016-12-02 08:32:58.320452	\N	\N	24
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.186543	2016-12-02 08:27:57.186565	\N	\N	18
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.475166	2016-12-02 07:47:08.475178	\N	\N	2
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	38
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.491956	2016-12-02 08:22:37.491967	\N	\N	11
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	30
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.500171	2016-12-02 07:47:08.500181	\N	\N	3
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.366202	2016-12-02 08:32:58.366215	\N	\N	25
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.271794	2016-12-02 08:27:57.271819	\N	\N	19
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.523903	2016-12-02 08:22:37.523914	\N	\N	12
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.51901	2016-12-02 07:47:08.519019	\N	\N	4
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	35
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.544555	2016-12-02 08:22:37.544565	\N	\N	13
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.543363	2016-12-02 07:47:08.543373	\N	\N	5
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.369789	2016-12-02 08:27:57.36981	\N	\N	20
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	31
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	26
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.313611	2016-12-02 08:18:01.313627	\N	\N	6
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.571697	2016-12-02 08:22:37.571708	\N	\N	14
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	39
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.240345	2016-12-02 08:32:58.240356	\N	\N	21
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.34259	2016-12-02 08:18:01.342609	\N	\N	7
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.596404	2016-12-02 08:22:37.596445	\N	\N	15
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	27
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.374898	2016-12-02 08:18:01.374909	\N	\N	8
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	36
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	32
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.269521	2016-12-02 08:32:58.269532	\N	\N	22
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.033327	2016-12-02 08:27:57.033348	\N	\N	16
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.395979	2016-12-02 08:18:01.39599	\N	\N	9
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	28
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.290388	2016-12-02 08:32:58.290398	\N	\N	23
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	40
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	33
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	37
Other Equipment (Specify)	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	44
CT Scan	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	41
Value of Partially Damaged Medical Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	45
X-ray Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	42
MRI Machine	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	43
\.


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 283
-- Name: dmf_pda_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_pda_mequipment_id_seq', 45, true);


--
-- TOC entry 3327 (class 0 OID 442539)
-- Dependencies: 284
-- Data for Name: dmf_pda_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_pda_oassets (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.111994	2016-12-02 08:22:37.112007	\N	\N	16
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	41
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.64815	2016-12-02 08:27:56.648163	\N	\N	23
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.821201	2016-12-02 08:18:00.821212	\N	\N	1
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	55
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.823782	2016-12-02 08:22:36.823794	\N	\N	9
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	38
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.898922	2016-12-02 08:32:57.898933	\N	\N	29
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.384971	2016-12-02 08:27:56.385004	\N	\N	17
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.85094	2016-12-02 08:18:00.850952	\N	\N	2
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	49
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.863935	2016-12-02 08:22:36.86395	\N	\N	10
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	47
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.681083	2016-12-02 08:27:56.681097	\N	\N	24
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.881692	2016-12-02 08:18:00.881705	\N	\N	3
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	34
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.453953	2016-12-02 08:27:56.453965	\N	\N	18
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.899008	2016-12-02 08:22:36.899021	\N	\N	11
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.904985	2016-12-02 08:18:00.90501	\N	\N	4
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.927088	2016-12-02 08:32:57.927123	\N	\N	30
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	51
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.784149	2016-12-02 08:32:57.78419	\N	\N	25
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.483872	2016-12-02 08:27:56.483884	\N	\N	19
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.931676	2016-12-02 08:18:00.931688	\N	\N	5
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.936749	2016-12-02 08:22:36.936761	\N	\N	12
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	42
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	39
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.953749	2016-12-02 08:18:00.953781	\N	\N	6
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	35
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.969804	2016-12-02 08:22:36.969816	\N	\N	13
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.509953	2016-12-02 08:27:56.509964	\N	\N	20
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.973431	2016-12-02 08:18:00.973442	\N	\N	7
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.95982	2016-12-02 08:32:57.959831	\N	\N	31
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.809896	2016-12-02 08:32:57.80991	\N	\N	26
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.016066	2016-12-02 08:22:37.016077	\N	\N	14
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.000103	2016-12-02 08:18:01.000113	\N	\N	8
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	45
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.583443	2016-12-02 08:27:56.583455	\N	\N	21
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	54
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.063537	2016-12-02 08:22:37.063552	\N	\N	15
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.835549	2016-12-02 08:32:57.835559	\N	\N	27
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	53
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.990742	2016-12-02 08:32:57.990753	\N	\N	32
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:56.615292	2016-12-02 08:27:56.615305	\N	\N	22
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	36
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	40
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	48
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.867322	2016-12-02 08:32:57.867333	\N	\N	28
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	43
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	33
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	37
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	46
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	50
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	56
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	44
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	52
Office Equipment	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	60
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	63
Value of Partially Damaged Other Assets	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	62
Vehicles	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	58
Computers	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	57
Furniture	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	59
Others	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	61
TOTAL VALUE OF DAMAGES	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	64
\.


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 285
-- Name: dmf_pda_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_pda_oassets_id_seq', 64, true);


--
-- TOC entry 3329 (class 0 OID 442544)
-- Dependencies: 286
-- Data for Name: dmf_pda_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_pda_structure (asset, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	29
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.120202	2016-12-02 07:34:55.120212	\N	\N	1
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.27312	2016-12-02 08:18:00.273133	\N	\N	9
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.644071	2016-12-02 08:27:55.644105	\N	\N	17
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.470077	2016-12-02 08:32:57.470089	\N	\N	24
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.160805	2016-12-02 07:34:55.160817	\N	\N	2
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.315202	2016-12-02 08:18:00.315214	\N	\N	10
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	30
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.192941	2016-12-02 07:34:55.192953	\N	\N	3
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	35
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.688367	2016-12-02 08:27:55.68838	\N	\N	18
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.356806	2016-12-02 08:18:00.356819	\N	\N	11
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.232013	2016-12-02 07:34:55.232027	\N	\N	4
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	25
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.742463	2016-12-02 08:27:55.742481	\N	\N	19
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.840478	2016-12-02 07:47:07.840489	\N	\N	5
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.400326	2016-12-02 08:18:00.400355	\N	\N	12
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	31
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	26
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.875481	2016-12-02 07:47:07.875492	\N	\N	6
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.368062	2016-12-02 08:22:36.368072	\N	\N	13
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.783135	2016-12-02 08:27:55.783145	\N	\N	20
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	36
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.909599	2016-12-02 07:47:07.909612	\N	\N	7
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.39202	2016-12-02 08:22:36.392031	\N	\N	14
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	32
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.953153	2016-12-02 07:47:07.953165	\N	\N	8
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	27
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.335045	2016-12-02 08:32:57.335057	\N	\N	21
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.439452	2016-12-02 08:22:36.439461	\N	\N	15
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.37835	2016-12-02 08:32:57.378366	\N	\N	22
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.463523	2016-12-02 08:22:36.463532	\N	\N	16
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	\N	28
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	33
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.420217	2016-12-02 08:32:57.420236	\N	\N	23
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	9	34
Roof	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	37
Wall	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	38
Flooring	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	39
Value of Partially Damaged Structure	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	\N	40
\.


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 287
-- Name: dmf_pda_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_pda_structure_id_seq', 40, true);


--
-- TOC entry 3331 (class 0 OID 442549)
-- Dependencies: 288
-- Data for Name: dmf_pdfa_num; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_pdfa_num (num_pdamaged_facilities, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, id, incident) FROM stdin;
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:57.503641	2016-12-02 08:32:57.503654	\N	7	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:24.804862	2016-12-02 07:25:24.804876	\N	1	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	8	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.262107	2016-12-02 07:34:55.262118	\N	2	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:07.990677	2016-12-02 07:47:07.990688	\N	3	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	9	9
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:00.45535	2016-12-02 08:18:00.455361	\N	4	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	10	9
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:36.490667	2016-12-02 08:22:36.490688	\N	5	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:55.826227	2016-12-02 08:27:55.826238	\N	6	\N
Number of Partially Damaged Facilities	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	11	\N
\.


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 289
-- Name: dmf_pdfa_num_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_pdfa_num_id_seq', 11, true);


--
-- TOC entry 3333 (class 0 OID 442554)
-- Dependencies: 290
-- Data for Name: dmf_pdfa_paf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmf_pdfa_paf (num_patients_affected, base_hospital, divisional_hospital, rural_hospital, central_dispensary, pmcus, phccs, mchcs, total, district, created_user, lmu, created_date, lmd, key, id, incident) FROM stdin;
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.506686	2016-12-02 07:25:25.506696	\N	1	\N
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.813333	2016-12-02 08:22:37.813345	\N	9	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	16	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:25:25.532864	2016-12-02 07:25:25.532878	\N	2	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:22:37.866934	2016-12-02 08:22:37.866946	\N	10	\N
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.861954	2016-12-02 07:34:55.861965	\N	3	\N
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	17	9
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.711025	2016-12-02 08:27:57.711039	\N	11	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:34:55.902226	2016-12-02 07:34:55.902238	\N	4	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 05:07:35.439868	2016-12-07 05:07:35.439868	\N	18	9
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.653766	2016-12-02 07:47:08.653776	\N	5	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:27:57.750038	2016-12-02 08:27:57.750055	\N	12	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 07:47:08.685298	2016-12-02 07:47:08.685308	\N	6	\N
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	19	9
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.788389	2016-12-02 08:32:58.789381	\N	13	\N
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.525681	2016-12-02 08:18:01.525692	\N	7	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:32:58.821817	2016-12-02 08:32:58.82187	\N	14	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-02 08:18:01.561106	2016-12-02 08:18:01.561119	\N	8	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-07 09:08:43.40104	2016-12-07 09:08:43.40104	\N	20	9
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-06 06:42:06.008713	2016-12-06 06:42:06.008713	\N	15	\N
Male	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	21	\N
Female	0	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:08.563431	2016-12-08 12:41:08.563431	\N	22	\N
\.


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 291
-- Name: dmf_pdfa_paf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmf_pdfa_paf_id_seq', 22, true);


--
-- TOC entry 3335 (class 0 OID 442559)
-- Dependencies: 292
-- Data for Name: dmh_df_num; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_df_num (num_des_facilities, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Number of Destroyed Facilities	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Number of Destroyed Facilities	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	2
\.


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 293
-- Name: dmh_df_num_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_df_num_id_seq', 2, true);


--
-- TOC entry 3337 (class 0 OID 442564)
-- Dependencies: 294
-- Data for Name: dmh_df_paf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_df_paf (num_patients_affected, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Male	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Female	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Male	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	3
Female	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	4
\.


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 295
-- Name: dmh_df_paf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_df_paf_id_seq', 4, true);


--
-- TOC entry 3339 (class 0 OID 442569)
-- Dependencies: 296
-- Data for Name: dmh_los_cud; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_los_cud (type_of_losses, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	4
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
\.


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 297
-- Name: dmh_los_cud_pk_dmh_los_cud_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_los_cud_pk_dmh_los_cud_id_seq', 6, true);


--
-- TOC entry 3341 (class 0 OID 442574)
-- Dependencies: 298
-- Data for Name: dmh_los_fi; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_los_fi (type_of_losses, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	4
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
\.


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 299
-- Name: dmh_los_fi_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_los_fi_id_seq', 6, true);


--
-- TOC entry 3343 (class 0 OID 442579)
-- Dependencies: 300
-- Data for Name: dmh_los_hoc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_los_hoc (type_of_losses, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	4
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
\.


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 301
-- Name: dmh_los_hoc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_los_hoc_id_seq', 6, true);


--
-- TOC entry 3345 (class 0 OID 442584)
-- Dependencies: 302
-- Data for Name: dmh_los_oue; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_los_oue (type_of_losses, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
Disaster Year 1	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
Year 2	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
Total	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	7
TOTAL VALUE OF LOSSES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
\.


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 303
-- Name: dmh_los_oue_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_los_oue_id_seq', 8, true);


--
-- TOC entry 3347 (class 0 OID 442589)
-- Dependencies: 304
-- Data for Name: dmh_ndat_fac_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_ndat_fac_mequipment (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
CT Scan	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
X-ray Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
MRI Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Other Equipment (Specify)	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
CT Scan	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
X-ray Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
MRI Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	7
Other Equipment (Specify)	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
\.


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 305
-- Name: dmh_ndat_fac_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_ndat_fac_mequipment_id_seq', 8, true);


--
-- TOC entry 3349 (class 0 OID 442594)
-- Dependencies: 306
-- Data for Name: dmh_ndat_fac_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_ndat_fac_oassets (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Value of Destroyed Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	13
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	14
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	5
Value of Destroyed Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	6
VALUE OF DESTROYED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	7
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	9
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	10
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	11
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	12
\.


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 307
-- Name: dmh_ndat_fac_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_ndat_fac_oassets_id_seq', 14, true);


--
-- TOC entry 3351 (class 0 OID 442599)
-- Dependencies: 308
-- Data for Name: dmh_ndat_fac_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_ndat_fac_structure (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
1 Floor Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
2-3 Floors Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
More Than 3 Floors Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Value of Destroyed Structures	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
1 Floor Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
2-3 Floors Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
More Than 3 Floors Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	7
Value of Destroyed Structures	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
\.


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 309
-- Name: dmh_ndat_fac_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_ndat_fac_structure_id_seq', 8, true);


--
-- TOC entry 3353 (class 0 OID 442604)
-- Dependencies: 310
-- Data for Name: dmh_ndat_fac_supplies; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_ndat_fac_supplies (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Medicines	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Medical Supplies	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Others	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Value of Destroyed Supplies	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
Medicines	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
Medical Supplies	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
Others	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	7
Value of Destroyed Supplies	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
\.


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 311
-- Name: dmh_ndat_fac_supplies_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_ndat_fac_supplies_id_seq', 8, true);


--
-- TOC entry 3355 (class 0 OID 442609)
-- Dependencies: 312
-- Data for Name: dmh_pdfa_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_pdfa_mequipment (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
CT Scan	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
X-ray Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
MRI Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Other Equipment (Specify)	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
Value of Partially Damaged Medical Equipment	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	5
CT Scan	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
X-ray Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	7
MRI Machine	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
Other Equipment (Specify)	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	9
Value of Partially Damaged Medical Equipment	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	10
\.


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 313
-- Name: dmh_pdfa_mequipment_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_pdfa_mequipment_id_seq', 10, true);


--
-- TOC entry 3357 (class 0 OID 442614)
-- Dependencies: 314
-- Data for Name: dmh_pdfa_num; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_pdfa_num (num_des_facilities, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, bs_date, incident) FROM stdin;
\.


--
-- TOC entry 3358 (class 0 OID 442620)
-- Dependencies: 315
-- Data for Name: dmh_pdfa_oassets; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_pdfa_oassets (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	12
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	1
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	36
Value of Partially Damaged Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	22
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	13
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	2
Value of Partially Damaged Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	30
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	3
Value of Partially Damaged Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	14
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	23
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	4
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	15
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	31
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	5
GRAND TOTAL OF DAMAGES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	24
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	37
GRAND TOTAL OF DAMAGES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	16
Value of Partially Damaged Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	6
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	7
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	25
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	17
GRAND TOTAL OF DAMAGES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	32
GRAND TOTAL OF DAMAGES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:49.210165	2016-12-08 09:42:49.210165	\N	\N	8
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	18
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	9
Value of Partially Damaged Other Assets	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	38
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	26
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	10
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	19
Computers	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	33
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 09:42:57.240993	2016-12-08 09:42:57.240993	\N	\N	11
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	27
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	20
VALUE OF PARTIALLY DAMAGED ASSETS	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	39
Vehicles	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	34
Office Equipment	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	28
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 10:50:58.890436	2016-12-08 10:50:58.890436	\N	\N	21
Others	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	29
Furniture	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	35
GRAND TOTAL OF DAMAGES	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	40
\.


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 316
-- Name: dmh_pdfa_oassets_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_pdfa_oassets_id_seq', 40, true);


--
-- TOC entry 3360 (class 0 OID 442625)
-- Dependencies: 317
-- Data for Name: dmh_pdfa_paf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_pdfa_paf (num_patients_affected, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, bs_date, incident, id) FROM stdin;
Male	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	\N	1
Female	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	\N	2
Male	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	\N	3
Female	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	\N	4
\.


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 318
-- Name: dmh_pdfa_paf_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_pdfa_paf_id_seq', 4, true);


--
-- TOC entry 3362 (class 0 OID 442633)
-- Dependencies: 319
-- Data for Name: dmh_pdfa_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dmh_pdfa_structure (asset, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Roof	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	1
Wall	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	2
Flooring	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	3
Value of Partially Damaged Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:04:18.427835	2016-12-08 11:04:18.427835	\N	\N	4
Roof	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	5
Wall	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	6
Flooring	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	7
Value of Partially Damaged Structure	0	0	0	0	0	0	\N	\N	\N	2016-12-08 11:06:44.053812	2016-12-08 11:06:44.053812	\N	\N	8
\.


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 320
-- Name: dmh_pdfa_structure_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dmh_pdfa_structure_id_seq', 8, true);


--
-- TOC entry 3364 (class 0 OID 442638)
-- Dependencies: 321
-- Data for Name: dsh_pub_omc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsh_pub_omc (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.034621	2016-12-05 09:25:10.034637	\N	\N	1
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.632402	2016-12-05 09:30:58.632423	\N	\N	9
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.210409	2016-12-05 09:36:39.210513	\N	\N	17
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.071408	2016-12-05 09:25:10.07143	\N	\N	2
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.668453	2016-12-05 09:30:58.668463	\N	\N	10
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.104144	2016-12-05 09:25:10.104158	\N	\N	3
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.260982	2016-12-05 09:36:39.260992	\N	\N	18
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.697419	2016-12-05 09:30:58.69743	\N	\N	11
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.142046	2016-12-05 09:25:10.142057	\N	\N	4
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.165211	2016-12-05 09:25:10.165233	\N	\N	5
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.295773	2016-12-05 09:36:39.295784	\N	\N	19
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.726461	2016-12-05 09:30:58.726472	\N	\N	12
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.186127	2016-12-05 09:25:10.186136	\N	\N	6
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.758076	2016-12-05 09:30:58.758353	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.210963	2016-12-05 09:25:10.210985	\N	\N	7
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.324502	2016-12-05 09:36:39.324512	\N	\N	20
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.797567	2016-12-05 09:30:58.79758	\N	\N	14
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.223743	2016-12-05 09:25:10.223752	\N	\N	8
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.351493	2016-12-05 09:36:39.351521	\N	\N	21
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.825261	2016-12-05 09:30:58.825274	\N	\N	15
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.382231	2016-12-05 09:36:39.382257	\N	\N	22
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.891318	2016-12-05 09:30:58.891333	\N	\N	16
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.415309	2016-12-05 09:36:39.41532	\N	\N	23
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.499055	2016-12-05 09:36:39.49908	\N	\N	24
\.


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 322
-- Name: dsh_pub_omc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsh_pub_omc_id_seq', 24, true);


--
-- TOC entry 3366 (class 0 OID 442643)
-- Dependencies: 323
-- Data for Name: dsh_pub_th; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsh_pub_th (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
MOH	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.291316	2016-12-05 09:25:10.291326	\N	\N	11
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:40.103151	2016-12-05 09:36:40.103165	\N	\N	27
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:11.098464	2016-12-05 08:59:11.098478	\N	\N	1
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.129925	2016-12-05 09:30:59.129936	\N	\N	20
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.304566	2016-12-05 09:25:10.304576	\N	\N	12
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:12.692552	2016-12-05 08:59:12.69258	\N	\N	2
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.156414	2016-12-05 09:30:59.156435	\N	\N	21
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:12.815609	2016-12-05 08:59:12.815637	\N	\N	3
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.367281	2016-12-05 09:25:10.3673	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:40.146962	2016-12-05 09:36:40.146975	\N	\N	28
MOH	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:12.911848	2016-12-05 08:59:12.911875	\N	\N	4
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.400218	2016-12-05 09:25:10.40023	\N	\N	14
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.921857	2016-12-05 09:36:39.921871	\N	\N	22
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:13.030962	2016-12-05 08:59:13.030991	\N	\N	5
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.008107	2016-12-05 09:30:59.008117	\N	\N	15
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:13.206649	2016-12-05 08:59:13.206679	\N	\N	6
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.971052	2016-12-05 09:36:39.971069	\N	\N	23
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 08:59:13.532698	2016-12-05 08:59:13.532734	\N	\N	7
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.034464	2016-12-05 09:30:59.034474	\N	\N	16
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.235314	2016-12-05 09:25:10.235324	\N	\N	8
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:40.009803	2016-12-05 09:36:40.009818	\N	\N	24
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.064493	2016-12-05 09:30:59.064502	\N	\N	17
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.258218	2016-12-05 09:25:10.258227	\N	\N	9
MOH	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.090301	2016-12-05 09:30:59.090314	\N	\N	18
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:25:10.271371	2016-12-05 09:25:10.27138	\N	\N	10
MOH	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:40.046963	2016-12-05 09:36:40.046977	\N	\N	25
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:59.107922	2016-12-05 09:30:59.10793	\N	\N	19
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:40.081575	2016-12-05 09:36:40.081589	\N	\N	26
\.


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 324
-- Name: dsh_pub_th_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsh_pub_th_id_seq', 28, true);


--
-- TOC entry 3368 (class 0 OID 442648)
-- Dependencies: 325
-- Data for Name: dsh_pvt_fa; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsh_pvt_fa (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.919875	2016-12-05 09:30:58.919886	\N	\N	1
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.953887	2016-12-05 09:30:58.953898	\N	\N	2
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:30:58.98327	2016-12-05 09:30:58.983281	\N	\N	3
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.583359	2016-12-05 09:36:39.583383	\N	\N	4
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.67546	2016-12-05 09:36:39.675485	\N	\N	5
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.753034	2016-12-05 09:36:39.753059	\N	\N	6
\.


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 326
-- Name: dsh_pvt_fa_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsh_pvt_fa_id_seq', 6, true);


--
-- TOC entry 3370 (class 0 OID 442653)
-- Dependencies: 327
-- Data for Name: dsh_tdl_owship; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsh_tdl_owship (ownership, damages, losses_y1, losses_y2, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Public Sector	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.854871	2016-12-05 09:36:39.854886	\N	\N	1
Private Sector	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.874946	2016-12-05 09:36:39.874961	\N	\N	2
TOTAL	0	0	0	0	\N	\N	\N	2016-12-05 09:36:39.907627	2016-12-05 09:36:39.907662	\N	\N	3
\.


--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 328
-- Name: dsh_tdl_owship_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsh_tdl_owship_id_seq', 3, true);


--
-- TOC entry 3372 (class 0 OID 442658)
-- Dependencies: 329
-- Data for Name: dsn_pub_p1_lmh; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pub_p1_lmh (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.416838	2016-12-05 18:23:47.416847	\N	\N	35
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.840038	2016-12-05 18:16:06.840047	\N	\N	30
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.037173	2016-12-05 18:00:44.037183	\N	\N	24
Teaching Hospitals	1	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:01:16.905753	2016-12-05 11:01:16.905764	\N	\N	1
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.494457	2016-12-05 11:13:08.49447	\N	\N	9
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.727884	2016-12-05 17:39:23.727894	\N	\N	17
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:01:17.040316	2016-12-05 11:01:17.040334	\N	\N	2
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.59673	2016-12-05 11:13:08.596753	\N	\N	10
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:09.995072	2016-12-05 18:25:09.995097	\N	\N	43
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:01:17.089206	2016-12-05 11:01:17.08923	\N	\N	3
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:11.929863	2016-12-05 18:06:11.929874	\N	\N	25
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.796638	2016-12-05 17:39:23.796654	\N	\N	18
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.622881	2016-12-05 11:13:08.622893	\N	\N	11
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:01:17.114742	2016-12-05 11:01:17.114751	\N	\N	4
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.866705	2016-12-05 18:16:06.866715	\N	\N	31
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.433833	2016-12-05 18:23:47.433842	\N	\N	36
Teaching Hospitals	1	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.592967	2016-12-05 11:06:01.592999	\N	\N	5
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.827398	2016-12-05 17:39:23.827414	\N	\N	19
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.655309	2016-12-05 11:13:08.655321	\N	\N	12
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:11.969191	2016-12-05 18:06:11.969215	\N	\N	26
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.680647	2016-12-05 11:06:01.680659	\N	\N	6
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.99355	2016-12-05 18:24:21.993567	\N	\N	40
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:05.973241	2016-12-05 17:13:05.973257	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.903063	2016-12-05 18:16:06.903073	\N	\N	32
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.710563	2016-12-05 11:06:01.710575	\N	\N	7
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.852348	2016-12-05 17:39:23.852358	\N	\N	20
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.001009	2016-12-05 18:06:12.001019	\N	\N	27
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.018164	2016-12-05 17:13:06.018176	\N	\N	14
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.736362	2016-12-05 11:06:01.736373	\N	\N	8
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:43.858656	2016-12-05 18:00:43.858667	\N	\N	21
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.882975	2016-12-05 18:24:21.882985	\N	\N	37
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.046929	2016-12-05 17:13:06.046939	\N	\N	15
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.356365	2016-12-05 18:23:47.356375	\N	\N	33
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.02877	2016-12-05 18:06:12.02878	\N	\N	28
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.001787	2016-12-05 18:00:44.001797	\N	\N	22
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.076901	2016-12-05 17:13:06.076912	\N	\N	16
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.029349	2016-12-05 18:25:10.02936	\N	\N	44
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:09.930702	2016-12-05 18:25:09.930716	\N	\N	41
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.023928	2016-12-05 18:00:44.023937	\N	\N	23
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.806986	2016-12-05 18:16:06.806996	\N	\N	29
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.923509	2016-12-05 18:24:21.923521	\N	\N	38
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.392028	2016-12-05 18:23:47.392037	\N	\N	34
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:09.970554	2016-12-05 18:25:09.970566	\N	\N	42
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.969619	2016-12-05 18:24:21.96963	\N	\N	39
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	47
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	45
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	48
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	46
\.


--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 330
-- Name: dsn_pub_p1_lmh_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pub_p1_lmh_id_seq', 48, true);


--
-- TOC entry 3374 (class 0 OID 442663)
-- Dependencies: 331
-- Data for Name: dsn_pub_p1_moh; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pub_p1_moh (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.333585	2016-12-05 18:24:22.333594	\N	\N	26
Offices	1	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.765565	2016-12-05 11:06:01.765576	\N	\N	1
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.911079	2016-12-05 17:39:23.911089	\N	\N	10
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.92422	2016-12-05 18:16:06.924239	\N	\N	19
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.797702	2016-12-05 11:06:01.797724	\N	\N	2
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.355452	2016-12-05 18:24:22.355464	\N	\N	27
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.939018	2016-12-05 17:39:23.939028	\N	\N	11
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:06:01.826239	2016-12-05 11:06:01.826251	\N	\N	3
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.948576	2016-12-05 18:16:06.948586	\N	\N	20
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.96895	2016-12-05 17:39:23.96896	\N	\N	12
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.683003	2016-12-05 11:13:08.683014	\N	\N	4
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.093232	2016-12-05 18:25:10.093243	\N	\N	28
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.717874	2016-12-05 11:13:08.717888	\N	\N	5
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.97227	2016-12-05 18:16:06.972281	\N	\N	21
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.060154	2016-12-05 18:00:44.060162	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.750299	2016-12-05 11:13:08.750309	\N	\N	6
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.079849	2016-12-05 18:00:44.079869	\N	\N	14
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.137251	2016-12-05 17:13:06.137262	\N	\N	7
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.461881	2016-12-05 18:23:47.461892	\N	\N	22
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.131739	2016-12-05 18:25:10.13175	\N	\N	29
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.095104	2016-12-05 18:00:44.095114	\N	\N	15
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.212768	2016-12-05 17:13:06.212893	\N	\N	8
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.487718	2016-12-05 18:23:47.487728	\N	\N	23
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.239428	2016-12-05 17:13:06.23944	\N	\N	9
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.055437	2016-12-05 18:06:12.055448	\N	\N	16
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.176434	2016-12-05 18:25:10.176446	\N	\N	30
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.506113	2016-12-05 18:23:47.506123	\N	\N	24
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.097249	2016-12-05 18:06:12.097259	\N	\N	17
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.118943	2016-12-05 18:06:12.118952	\N	\N	18
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.317426	2016-12-05 18:24:22.317449	\N	\N	25
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	31
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	32
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	33
\.


--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 332
-- Name: dsn_pub_p1_moh_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pub_p1_moh_id_seq', 33, true);


--
-- TOC entry 3376 (class 0 OID 442668)
-- Dependencies: 333
-- Data for Name: dsn_pub_p1_omc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pub_p1_omc (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.42028	2016-12-05 18:00:44.420292	\N	\N	32
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.145074	2016-12-05 17:39:24.145084	\N	\N	26
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.778686	2016-12-05 11:13:08.778696	\N	\N	1
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.262866	2016-12-05 17:13:06.262874	\N	\N	10
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.913052	2016-12-05 18:23:47.913062	\N	\N	57
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:23.99064	2016-12-05 17:39:23.990651	\N	\N	19
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.804182	2016-12-05 11:13:08.804195	\N	\N	2
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.897181	2016-12-05 18:23:47.89719	\N	\N	56
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.417347	2016-12-05 18:16:07.417356	\N	\N	51
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.575866	2016-12-05 18:06:12.575874	\N	\N	42
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.372173	2016-12-05 17:13:06.372196	\N	\N	11
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.825175	2016-12-05 11:13:08.825184	\N	\N	3
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.185076	2016-12-05 17:39:24.185087	\N	\N	27
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.012778	2016-12-05 17:39:24.012787	\N	\N	20
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.437086	2016-12-05 18:00:44.437095	\N	\N	33
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.423733	2016-12-05 17:13:06.423755	\N	\N	12
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.852911	2016-12-05 11:13:08.85292	\N	\N	4
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.504449	2016-12-05 18:06:12.504469	\N	\N	38
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.448632	2016-12-05 18:16:07.448654	\N	\N	53
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.881762	2016-12-05 11:13:08.881773	\N	\N	5
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.031025	2016-12-05 17:39:24.031035	\N	\N	21
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.499047	2016-12-05 17:13:06.49907	\N	\N	13
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.334315	2016-12-05 18:00:44.334323	\N	\N	28
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.914628	2016-12-05 11:13:08.914637	\N	\N	6
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.333053	2016-12-05 18:16:07.333063	\N	\N	46
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.461161	2016-12-05 18:00:44.46117	\N	\N	34
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.573915	2016-12-05 17:13:06.573941	\N	\N	14
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.942365	2016-12-05 11:13:08.942376	\N	\N	7
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.056449	2016-12-05 17:39:24.056459	\N	\N	22
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.385713	2016-12-05 18:16:07.385722	\N	\N	49
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.355331	2016-12-05 18:00:44.355339	\N	\N	29
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.661194	2016-12-05 17:13:06.661221	\N	\N	15
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.963744	2016-12-05 11:13:08.963753	\N	\N	8
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.521766	2016-12-05 18:06:12.521774	\N	\N	39
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.080763	2016-12-05 17:39:24.080773	\N	\N	23
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 11:13:08.995501	2016-12-05 11:13:08.995522	\N	\N	9
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.609296	2016-12-05 18:06:12.609305	\N	\N	43
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.737843	2016-12-05 17:13:06.737867	\N	\N	16
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.479071	2016-12-05 18:00:44.479082	\N	\N	35
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.372242	2016-12-05 18:00:44.372252	\N	\N	30
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.098923	2016-12-05 17:39:24.098935	\N	\N	24
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.801237	2016-12-05 17:13:06.80126	\N	\N	17
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.87669	2016-12-05 18:23:47.8767	\N	\N	55
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.541844	2016-12-05 18:06:12.541852	\N	\N	40
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.855883	2016-12-05 17:13:06.855898	\N	\N	18
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.120459	2016-12-05 17:39:24.120468	\N	\N	25
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.393399	2016-12-05 18:00:44.393409	\N	\N	31
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.507546	2016-12-05 18:00:44.507569	\N	\N	36
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.354771	2016-12-05 18:16:07.354783	\N	\N	47
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.630621	2016-12-05 18:06:12.63063	\N	\N	44
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.429696	2016-12-05 18:16:07.429706	\N	\N	52
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.555069	2016-12-05 18:06:12.555078	\N	\N	41
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.482694	2016-12-05 18:06:12.482703	\N	\N	37
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.397451	2016-12-05 18:16:07.397461	\N	\N	50
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.93722	2016-12-05 18:23:47.937231	\N	\N	58
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.646527	2016-12-05 18:06:12.646535	\N	\N	45
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.366358	2016-12-05 18:16:07.366367	\N	\N	48
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.46213	2016-12-05 18:16:07.462139	\N	\N	54
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.98435	2016-12-05 18:23:47.98436	\N	\N	60
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.957958	2016-12-05 18:23:47.957971	\N	\N	59
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.036571	2016-12-05 18:23:48.036582	\N	\N	62
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.008557	2016-12-05 18:23:48.008567	\N	\N	61
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.053726	2016-12-05 18:23:48.053738	\N	\N	63
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.658958	2016-12-05 18:24:22.658968	\N	\N	64
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.672364	2016-12-05 18:24:22.672374	\N	\N	65
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.692315	2016-12-05 18:24:22.692326	\N	\N	66
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.704666	2016-12-05 18:24:22.704676	\N	\N	67
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.72477	2016-12-05 18:24:22.724781	\N	\N	68
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.737144	2016-12-05 18:24:22.737154	\N	\N	69
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.758639	2016-12-05 18:24:22.758649	\N	\N	70
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.771453	2016-12-05 18:24:22.771463	\N	\N	71
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.79378	2016-12-05 18:24:22.793792	\N	\N	72
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.671851	2016-12-05 18:25:10.671861	\N	\N	73
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.703447	2016-12-05 18:25:10.703461	\N	\N	74
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.732291	2016-12-05 18:25:10.732302	\N	\N	75
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.755755	2016-12-05 18:25:10.755768	\N	\N	76
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.776117	2016-12-05 18:25:10.776129	\N	\N	77
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.798541	2016-12-05 18:25:10.798551	\N	\N	78
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.814578	2016-12-05 18:25:10.814587	\N	\N	79
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.836803	2016-12-05 18:25:10.836814	\N	\N	80
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.852135	2016-12-05 18:25:10.852146	\N	\N	81
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	82
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	83
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	84
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	85
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	86
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	87
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	88
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	89
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	90
\.


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 334
-- Name: dsn_pub_p1_omc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pub_p1_omc_id_seq', 90, true);


--
-- TOC entry 3378 (class 0 OID 442673)
-- Dependencies: 335
-- Data for Name: dsn_pub_pn_lmh; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pub_pn_lmh (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.528799	2016-12-05 18:25:10.528811	\N	\N	30
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.804946	2016-12-05 18:23:47.80497	\N	\N	24
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.891292	2016-12-05 17:13:06.891319	\N	\N	1
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.268383	2016-12-05 18:00:44.268394	\N	\N	9
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.251301	2016-12-05 18:16:07.251309	\N	\N	17
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.928946	2016-12-05 17:13:06.928963	\N	\N	2
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.289623	2016-12-05 18:00:44.289633	\N	\N	10
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.95845	2016-12-05 17:13:06.958465	\N	\N	3
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.537879	2016-12-05 18:24:22.537889	\N	\N	25
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.272994	2016-12-05 18:16:07.273007	\N	\N	18
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.30217	2016-12-05 18:00:44.302179	\N	\N	11
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:13:06.992265	2016-12-05 17:13:06.99228	\N	\N	4
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.560168	2016-12-05 18:25:10.560181	\N	\N	31
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.203189	2016-12-05 17:39:24.203198	\N	\N	5
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.29173	2016-12-05 18:16:07.291739	\N	\N	19
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.321632	2016-12-05 18:00:44.321643	\N	\N	12
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.559206	2016-12-05 18:24:22.559215	\N	\N	26
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.227421	2016-12-05 17:39:24.227443	\N	\N	6
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.402984	2016-12-05 18:06:12.402993	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.594772	2016-12-05 18:25:10.594782	\N	\N	32
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.256571	2016-12-05 17:39:24.256582	\N	\N	7
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.315415	2016-12-05 18:16:07.315425	\N	\N	20
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.57283	2016-12-05 18:24:22.57284	\N	\N	27
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.425745	2016-12-05 18:06:12.425763	\N	\N	14
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.290501	2016-12-05 17:39:24.290512	\N	\N	8
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.748648	2016-12-05 18:23:47.748657	\N	\N	21
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.444923	2016-12-05 18:06:12.444931	\N	\N	15
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.595614	2016-12-05 18:24:22.595623	\N	\N	28
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.770242	2016-12-05 18:23:47.770252	\N	\N	22
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.465544	2016-12-05 18:06:12.465553	\N	\N	16
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.782933	2016-12-05 18:23:47.782943	\N	\N	23
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.49835	2016-12-05 18:25:10.49836	\N	\N	29
Teaching Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	33
Provincial General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	34
District General Hospitals	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	35
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	36
\.


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 336
-- Name: dsn_pub_pn_lmh_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pub_pn_lmh_id_seq', 36, true);


--
-- TOC entry 3380 (class 0 OID 442678)
-- Dependencies: 337
-- Data for Name: dsn_pub_pn_moh; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pub_pn_moh (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.31988	2016-12-05 17:39:24.319889	\N	\N	1
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.539944	2016-12-05 18:16:07.539953	\N	\N	10
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.994648	2016-12-05 18:25:10.994659	\N	\N	19
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.348142	2016-12-05 17:39:24.348167	\N	\N	2
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.562271	2016-12-05 18:16:07.562281	\N	\N	11
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 17:39:24.36708	2016-12-05 17:39:24.367098	\N	\N	3
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:11.030845	2016-12-05 18:25:11.030856	\N	\N	20
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.58413	2016-12-05 18:16:07.584139	\N	\N	12
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.542394	2016-12-05 18:00:44.542422	\N	\N	4
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.56977	2016-12-05 18:00:44.569794	\N	\N	5
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:11.065181	2016-12-05 18:25:11.065192	\N	\N	21
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.188824	2016-12-05 18:23:48.188833	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.623702	2016-12-05 18:00:44.623713	\N	\N	6
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.218724	2016-12-05 18:23:48.218736	\N	\N	14
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.674969	2016-12-05 18:06:12.67498	\N	\N	7
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.245656	2016-12-05 18:23:48.245666	\N	\N	15
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.737631	2016-12-05 18:06:12.737643	\N	\N	8
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.756097	2016-12-05 18:06:12.756107	\N	\N	9
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.87537	2016-12-05 18:24:22.87538	\N	\N	16
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.89422	2016-12-05 18:24:22.89423	\N	\N	17
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.905943	2016-12-05 18:24:22.905952	\N	\N	18
Offices	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	22
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	23
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	24
\.


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 338
-- Name: dsn_pub_pn_moh_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pub_pn_moh_id_seq', 24, true);


--
-- TOC entry 3382 (class 0 OID 442683)
-- Dependencies: 339
-- Data for Name: dsn_pub_pn_omc; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pub_pn_omc (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.213835	2016-12-05 18:25:10.213865	\N	\N	51
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.699301	2016-12-05 18:23:47.699311	\N	\N	38
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.575325	2016-12-05 18:23:47.575334	\N	\N	33
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.144147	2016-12-05 18:16:07.144161	\N	\N	27
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.114003	2016-12-05 18:00:44.114023	\N	\N	1
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.154958	2016-12-05 18:06:12.154977	\N	\N	11
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.376644	2016-12-05 18:06:12.376653	\N	\N	20
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.129116	2016-12-05 18:00:44.129126	\N	\N	2
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.459969	2016-12-05 18:24:22.459978	\N	\N	46
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.171684	2016-12-05 18:06:12.171695	\N	\N	12
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.287131	2016-12-05 18:25:10.287142	\N	\N	53
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.144429	2016-12-05 18:00:44.144446	\N	\N	3
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.164281	2016-12-05 18:16:07.16429	\N	\N	28
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.992038	2016-12-05 18:16:06.992047	\N	\N	21
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.507228	2016-12-05 18:24:22.507237	\N	\N	49
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.199537	2016-12-05 18:06:12.199547	\N	\N	13
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.15977	2016-12-05 18:00:44.159779	\N	\N	4
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.605439	2016-12-05 18:23:47.605448	\N	\N	34
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.405012	2016-12-05 18:24:22.405022	\N	\N	43
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.714579	2016-12-05 18:23:47.71459	\N	\N	39
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.017738	2016-12-05 18:16:07.017748	\N	\N	22
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.171872	2016-12-05 18:00:44.171882	\N	\N	5
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.222446	2016-12-05 18:06:12.222458	\N	\N	14
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.194919	2016-12-05 18:16:07.194931	\N	\N	29
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.191253	2016-12-05 18:00:44.191262	\N	\N	6
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.242417	2016-12-05 18:06:12.242426	\N	\N	15
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.045908	2016-12-05 18:16:07.045916	\N	\N	23
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.203722	2016-12-05 18:00:44.203732	\N	\N	7
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.631248	2016-12-05 18:23:47.631259	\N	\N	35
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.3558	2016-12-05 18:25:10.355811	\N	\N	56
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.226575	2016-12-05 18:16:07.226585	\N	\N	30
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.272084	2016-12-05 18:06:12.272093	\N	\N	16
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.225035	2016-12-05 18:00:44.225044	\N	\N	8
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.062627	2016-12-05 18:16:07.062644	\N	\N	24
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.474852	2016-12-05 18:24:22.474863	\N	\N	47
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.236704	2016-12-05 18:00:44.236712	\N	\N	9
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.735371	2016-12-05 18:23:47.735381	\N	\N	40
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.295307	2016-12-05 18:06:12.295316	\N	\N	17
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.653085	2016-12-05 18:23:47.653099	\N	\N	36
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:00:44.256504	2016-12-05 18:00:44.25656	\N	\N	10
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.529717	2016-12-05 18:23:47.529726	\N	\N	31
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.086	2016-12-05 18:16:07.086009	\N	\N	25
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.325962	2016-12-05 18:06:12.325971	\N	\N	18
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.426447	2016-12-05 18:24:22.426456	\N	\N	44
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.452903	2016-12-05 18:25:10.452916	\N	\N	59
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.331664	2016-12-05 18:25:10.331673	\N	\N	55
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:12.356578	2016-12-05 18:06:12.356619	\N	\N	19
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.111776	2016-12-05 18:16:07.111785	\N	\N	26
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.249404	2016-12-05 18:25:10.249415	\N	\N	52
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.555002	2016-12-05 18:23:47.555012	\N	\N	32
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.369492	2016-12-05 18:24:22.369502	\N	\N	41
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.678277	2016-12-05 18:23:47.678287	\N	\N	37
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.526065	2016-12-05 18:24:22.526076	\N	\N	50
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.439325	2016-12-05 18:24:22.439334	\N	\N	45
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.4953	2016-12-05 18:24:22.49531	\N	\N	48
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.390748	2016-12-05 18:24:22.390761	\N	\N	42
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.312788	2016-12-05 18:25:10.312797	\N	\N	54
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.480351	2016-12-05 18:25:10.480361	\N	\N	60
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.380463	2016-12-05 18:25:10.380474	\N	\N	57
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.409982	2016-12-05 18:25:10.409993	\N	\N	58
Base Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	61
Rural Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	63
Divisional Hospital	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	62
Central Dispensary	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	64
PMCUs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	65
PHCCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	66
MCHCs	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	67
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	68
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	69
GRAND TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	70
\.


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 340
-- Name: dsn_pub_pn_omc_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pub_pn_omc_id_seq', 70, true);


--
-- TOC entry 3384 (class 0 OID 442688)
-- Dependencies: 341
-- Data for Name: dsn_pvt_p1; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pvt_p1 (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:11.817707	2016-12-05 18:06:11.817718	\N	\N	1
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.770673	2016-12-05 18:24:21.770685	\N	\N	10
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:11.864755	2016-12-05 18:06:11.864765	\N	\N	2
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.819509	2016-12-05 18:24:21.81952	\N	\N	11
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:06:11.895407	2016-12-05 18:06:11.895418	\N	\N	3
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:21.848963	2016-12-05 18:24:21.848974	\N	\N	12
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.724532	2016-12-05 18:16:06.724543	\N	\N	4
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.756977	2016-12-05 18:16:06.757003	\N	\N	5
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:09.830233	2016-12-05 18:25:09.830244	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:06.783271	2016-12-05 18:16:06.783279	\N	\N	6
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:09.868919	2016-12-05 18:25:09.868929	\N	\N	14
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.206268	2016-12-05 18:23:47.206291	\N	\N	7
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:09.897162	2016-12-05 18:25:09.897176	\N	\N	15
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.272675	2016-12-05 18:23:47.272687	\N	\N	8
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:47.321373	2016-12-05 18:23:47.321384	\N	\N	9
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	16
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	17
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	18
\.


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 342
-- Name: dsn_pvt_p1_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pvt_p1_id_seq', 18, true);


--
-- TOC entry 3386 (class 0 OID 442693)
-- Dependencies: 343
-- Data for Name: dsn_pvt_pn; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_pvt_pn (facilities_assets, total_num_affected, male, female, total_damages, losses_y1, losses_y2, total_losses, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.477666	2016-12-05 18:16:07.477677	\N	\N	1
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.808247	2016-12-05 18:24:22.808257	\N	\N	9
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.493986	2016-12-05 18:16:07.493995	\N	\N	2
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.82885	2016-12-05 18:24:22.828861	\N	\N	10
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.506532	2016-12-05 18:16:07.506541	\N	\N	3
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.840662	2016-12-05 18:24:22.840675	\N	\N	11
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:16:07.526269	2016-12-05 18:16:07.526279	\N	\N	4
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.080349	2016-12-05 18:23:48.080359	\N	\N	5
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:24:22.861695	2016-12-05 18:24:22.861706	\N	\N	12
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.105603	2016-12-05 18:23:48.105614	\N	\N	6
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.873282	2016-12-05 18:25:10.873292	\N	\N	13
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.134232	2016-12-05 18:23:48.134242	\N	\N	7
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.896794	2016-12-05 18:25:10.896808	\N	\N	14
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:23:48.166555	2016-12-05 18:23:48.166575	\N	\N	8
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.925748	2016-12-05 18:25:10.925759	\N	\N	15
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.959969	2016-12-05 18:25:10.959979	\N	\N	16
Private Clinics	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	17
Others	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	18
Total	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	19
TOTAL	0	0	0	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	20
\.


--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 344
-- Name: dsn_pvt_pn_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_pvt_pn_id_seq', 20, true);


--
-- TOC entry 3388 (class 0 OID 442698)
-- Dependencies: 345
-- Data for Name: dsn_tdl_owship; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY dsn_tdl_owship (ownership, damages, losses_y1, losses_y2, total, district, created_user, lmu, created_date, lmd, key, incident, id) FROM stdin;
Public Sector	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.623375	2016-12-05 18:25:10.623387	\N	\N	7
Private Sector	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.63915	2016-12-05 18:25:10.639162	\N	\N	8
TOTAL	0	0	0	0	\N	\N	\N	2016-12-05 18:25:10.656959	2016-12-05 18:25:10.656969	\N	\N	9
Public Sector	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	10
Private Sector	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	11
TOTAL	0	0	0	0	\N	\N	\N	2016-12-08 12:41:34.715164	2016-12-08 12:41:34.715164	\N	\N	12
\.


--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 346
-- Name: dsn_tdl_owship_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('dsn_tdl_owship_id_seq', 12, true);


--
-- TOC entry 3239 (class 0 OID 442274)
-- Dependencies: 196
-- Data for Name: geo_line; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY geo_line (id, assest_type, geon) FROM stdin;
\.


--
-- TOC entry 3241 (class 0 OID 442279)
-- Dependencies: 198
-- Data for Name: geo_point; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY geo_point (id, assest_type, geon) FROM stdin;
\.


--
-- TOC entry 3243 (class 0 OID 442284)
-- Dependencies: 200
-- Data for Name: geo_polygon; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY geo_polygon (id, assest_type, geon) FROM stdin;
\.


--
-- TOC entry 3245 (class 0 OID 442292)
-- Dependencies: 202
-- Data for Name: sector_tabel_col; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY sector_tabel_col (id, sector_tabel_id, col_name, value, data_type, lmu, lmd, created_date, data_entry_id, district_id) FROM stdin;
\.


--
-- TOC entry 3247 (class 0 OID 442300)
-- Dependencies: 204
-- Data for Name: sector_table; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY sector_table (id, name, description, table_type) FROM stdin;
\.


--
-- TOC entry 3249 (class 0 OID 442308)
-- Dependencies: 206
-- Data for Name: user_role_permission; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY user_role_permission (id, user_role_id, sector_property_id, permission_type_id) FROM stdin;
\.


SET search_path = public, pg_catalog;

--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 347
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_STRUCTURE_id_seq"', 1, false);


--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 348
-- Name: BUC_MAR_SUPPLIES_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_SUPPLIES_id_seq"', 1, false);


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 350
-- Name: DisasterType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DisasterType_Id_seq"', 1, true);


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 352
-- Name: District_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"District_Id_seq"', 3, true);


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 354
-- Name: Division_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Division_Id_seq"', 1, false);


--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 356
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"GramaNiladhari_Id_seq"', 1, false);


--
-- TOC entry 3646 (class 0 OID 0)
-- Dependencies: 358
-- Name: IncidentReport_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"IncidentReport_Id_seq"', 1, true);


--
-- TOC entry 3647 (class 0 OID 0)
-- Dependencies: 360
-- Name: PermissionType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"PermissionType_Id_seq"', 1, false);


--
-- TOC entry 3648 (class 0 OID 0)
-- Dependencies: 362
-- Name: Province_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Province_Id_seq"', 1, true);


--
-- TOC entry 3649 (class 0 OID 0)
-- Dependencies: 364
-- Name: Sector_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Sector_Id_seq"', 1, false);


--
-- TOC entry 3650 (class 0 OID 0)
-- Dependencies: 366
-- Name: UserDesignation_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"UserDesignation_Id_seq"', 1, false);


--
-- TOC entry 3651 (class 0 OID 0)
-- Dependencies: 368
-- Name: UserRoles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"UserRoles_Id_seq"', 1, false);


--
-- TOC entry 3652 (class 0 OID 0)
-- Dependencies: 370
-- Name: User_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"User_Id_seq"', 1, false);


--
-- TOC entry 3414 (class 0 OID 443126)
-- Dependencies: 371
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3653 (class 0 OID 0)
-- Dependencies: 372
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 3416 (class 0 OID 443131)
-- Dependencies: 373
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3654 (class 0 OID 0)
-- Dependencies: 374
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3418 (class 0 OID 443136)
-- Dependencies: 375
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
\.


--
-- TOC entry 3655 (class 0 OID 0)
-- Dependencies: 376
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 18, true);


--
-- TOC entry 3420 (class 0 OID 443141)
-- Dependencies: 377
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3421 (class 0 OID 443144)
-- Dependencies: 378
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3656 (class 0 OID 0)
-- Dependencies: 379
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3657 (class 0 OID 0)
-- Dependencies: 380
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- TOC entry 3424 (class 0 OID 443151)
-- Dependencies: 381
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3658 (class 0 OID 0)
-- Dependencies: 382
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3392 (class 0 OID 443050)
-- Dependencies: 349
-- Data for Name: disaster_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY disaster_type (id, name, description) FROM stdin;
1	Flood	
\.


--
-- TOC entry 3394 (class 0 OID 443058)
-- Dependencies: 351
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY district (id, province_id, name) FROM stdin;
1	1	Colombo
2	1	Gampaha
3	1	Kalutara
\.


--
-- TOC entry 3396 (class 0 OID 443063)
-- Dependencies: 353
-- Data for Name: division; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY division (id, district_id, name) FROM stdin;
\.


--
-- TOC entry 3426 (class 0 OID 443156)
-- Dependencies: 383
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3659 (class 0 OID 0)
-- Dependencies: 384
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 3428 (class 0 OID 443165)
-- Dependencies: 385
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
\.


--
-- TOC entry 3660 (class 0 OID 0)
-- Dependencies: 386
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 6, true);


--
-- TOC entry 3430 (class 0 OID 443170)
-- Dependencies: 387
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-11-22 23:11:05.168984+05:30
2	auth	0001_initial	2016-11-22 23:11:05.442905+05:30
3	admin	0001_initial	2016-11-22 23:11:05.503579+05:30
4	contenttypes	0002_remove_content_type_name	2016-11-22 23:11:05.57719+05:30
5	auth	0002_alter_permission_name_max_length	2016-11-22 23:11:05.628081+05:30
6	auth	0003_alter_user_email_max_length	2016-11-22 23:11:05.643494+05:30
7	auth	0004_alter_user_username_opts	2016-11-22 23:11:05.700713+05:30
8	auth	0005_alter_user_last_login_null	2016-11-22 23:11:05.729571+05:30
9	auth	0006_require_contenttypes_0002	2016-11-22 23:11:05.732028+05:30
10	sessions	0001_initial	2016-11-22 23:11:05.769485+05:30
\.


--
-- TOC entry 3661 (class 0 OID 0)
-- Dependencies: 388
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 10, true);


--
-- TOC entry 3432 (class 0 OID 443178)
-- Dependencies: 389
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3433 (class 0 OID 443184)
-- Dependencies: 390
-- Data for Name: effected_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY effected_area (incident_id, disaster_id, province_id) FROM stdin;
\.


--
-- TOC entry 3398 (class 0 OID 443068)
-- Dependencies: 355
-- Data for Name: grama_niladhari; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grama_niladhari (id, division_id, name) FROM stdin;
\.


--
-- TOC entry 3400 (class 0 OID 443073)
-- Dependencies: 357
-- Data for Name: incident_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY incident_report (id, disaster_type_id, description, reported_date_time) FROM stdin;
1	1	fdvgh	2016-12-05 10:02:41
\.


--
-- TOC entry 3402 (class 0 OID 443081)
-- Dependencies: 359
-- Data for Name: permission_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY permission_type (id, name, description) FROM stdin;
\.


--
-- TOC entry 3404 (class 0 OID 443089)
-- Dependencies: 361
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY province (id, name) FROM stdin;
1	Western
\.


--
-- TOC entry 3406 (class 0 OID 443094)
-- Dependencies: 363
-- Data for Name: sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sector (id, name, description, created_date) FROM stdin;
\.


--
-- TOC entry 3412 (class 0 OID 443118)
-- Dependencies: 369
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "user" (id, role_id, sector_id, first_name, last_name, user_name, password, email, contact_no, nic, designation_id) FROM stdin;
\.


--
-- TOC entry 3408 (class 0 OID 443102)
-- Dependencies: 365
-- Data for Name: user_designation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_designation (id, name, description) FROM stdin;
\.


--
-- TOC entry 3410 (class 0 OID 443110)
-- Dependencies: 367
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_role (id, role_name, description) FROM stdin;
\.


SET search_path = health, pg_catalog;

--
-- TOC entry 2817 (class 2606 OID 442785)
-- Name: DataEntry_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY data_entry
    ADD CONSTRAINT "DataEntry_pkey" PRIMARY KEY (id);


--
-- TOC entry 2819 (class 2606 OID 442787)
-- Name: GeoLine_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_line
    ADD CONSTRAINT "GeoLine_pkey" PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 442789)
-- Name: GeoPoint_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_point
    ADD CONSTRAINT "GeoPoint_pkey" PRIMARY KEY (id);


--
-- TOC entry 2823 (class 2606 OID 442791)
-- Name: GeoPolygon_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_polygon
    ADD CONSTRAINT "GeoPolygon_pkey" PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 442793)
-- Name: SectorTabelCol_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col
    ADD CONSTRAINT "SectorTabelCol_pkey" PRIMARY KEY (id);


--
-- TOC entry 2827 (class 2606 OID 442795)
-- Name: SectorTable_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_table
    ADD CONSTRAINT "SectorTable_pkey" PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 442797)
-- Name: UserRolePermission_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission
    ADD CONSTRAINT "UserRolePermission_pkey" PRIMARY KEY (id);


--
-- TOC entry 2805 (class 2606 OID 442799)
-- Name: assest_type_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY assest_type
    ADD CONSTRAINT assest_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 442801)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2838 (class 2606 OID 442803)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2840 (class 2606 OID 442805)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2834 (class 2606 OID 442807)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 442809)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2845 (class 2606 OID 442811)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2854 (class 2606 OID 442813)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 442815)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2847 (class 2606 OID 442817)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 442819)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 442821)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2850 (class 2606 OID 442823)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2900 (class 2606 OID 442825)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 442827)
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 2904 (class 2606 OID 442829)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2906 (class 2606 OID 442831)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 442833)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2966 (class 2606 OID 442835)
-- Name: id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_paf
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 2811 (class 2606 OID 442837)
-- Name: pk_BUC_MAR_OASSETS; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_oassets
    ADD CONSTRAINT "pk_BUC_MAR_OASSETS" PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 442839)
-- Name: pk_BUC_MAR_STRUCTURE_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_structure
    ADD CONSTRAINT "pk_BUC_MAR_STRUCTURE_id" PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 442841)
-- Name: pk_bd_session_keys_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bd_session_keys
    ADD CONSTRAINT pk_bd_session_keys_id PRIMARY KEY (id);


--
-- TOC entry 3067 (class 2606 OID 443414)
-- Name: pk_bhs_com_diseases_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_com_diseases
    ADD CONSTRAINT pk_bhs_com_diseases_id PRIMARY KEY (id);


--
-- TOC entry 3069 (class 2606 OID 443430)
-- Name: pk_bhs_oi; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_oi
    ADD CONSTRAINT pk_bhs_oi PRIMARY KEY (id);


--
-- TOC entry 3071 (class 2606 OID 443443)
-- Name: pk_bhs_plc; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_plc
    ADD CONSTRAINT pk_bhs_plc PRIMARY KEY (id);


--
-- TOC entry 3073 (class 2606 OID 443459)
-- Name: pk_bhs_vi; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_vi
    ADD CONSTRAINT pk_bhs_vi PRIMARY KEY (id);


--
-- TOC entry 2866 (class 2606 OID 442843)
-- Name: pk_bmf_pvt_mf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pvt_mf
    ADD CONSTRAINT pk_bmf_pvt_mf_id PRIMARY KEY (id);


--
-- TOC entry 2809 (class 2606 OID 442845)
-- Name: pk_buc_mar_mequipments; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_mequipment
    ADD CONSTRAINT pk_buc_mar_mequipments PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 442847)
-- Name: pk_buc_mar_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_supplies
    ADD CONSTRAINT pk_buc_mar_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2870 (class 2606 OID 442849)
-- Name: pk_buc_marc_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_mequipment
    ADD CONSTRAINT pk_buc_marc_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2872 (class 2606 OID 442851)
-- Name: pk_buc_marc_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_oassets
    ADD CONSTRAINT pk_buc_marc_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2874 (class 2606 OID 442853)
-- Name: pk_buc_marc_structure; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_structures
    ADD CONSTRAINT pk_buc_marc_structure PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 442855)
-- Name: pk_buc_marc_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_marc_crpm
    ADD CONSTRAINT pk_buc_marc_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 442857)
-- Name: pk_buc_omar_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_mequipment
    ADD CONSTRAINT pk_buc_omar_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2878 (class 2606 OID 442859)
-- Name: pk_buc_omar_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_oassets
    ADD CONSTRAINT pk_buc_omar_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 442861)
-- Name: pk_buc_omar_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_structure
    ADD CONSTRAINT pk_buc_omar_structure_id PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 442863)
-- Name: pk_buc_omar_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omar_supplies
    ADD CONSTRAINT pk_buc_omar_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2884 (class 2606 OID 442865)
-- Name: pk_buc_omarc_crpm_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_crpm
    ADD CONSTRAINT pk_buc_omarc_crpm_id PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 442867)
-- Name: pk_buc_omarc_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_mequipment
    ADD CONSTRAINT pk_buc_omarc_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2888 (class 2606 OID 442869)
-- Name: pk_buc_omarc_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_oassets
    ADD CONSTRAINT pk_buc_omarc_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 442871)
-- Name: pk_buc_omarc_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_omarc_structure
    ADD CONSTRAINT pk_buc_omarc_structure_id PRIMARY KEY (id);


--
-- TOC entry 2892 (class 2606 OID 442873)
-- Name: pk_dap_bef_other_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_bef_other
    ADD CONSTRAINT pk_dap_bef_other_id PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 442875)
-- Name: pk_dap_bef_pc1_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_bef_pc1
    ADD CONSTRAINT pk_dap_bef_pc1_id PRIMARY KEY (id);


--
-- TOC entry 2896 (class 2606 OID 442877)
-- Name: pk_dap_bef_pcn_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dap_bef_pcn
    ADD CONSTRAINT pk_dap_bef_pcn_id PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 442879)
-- Name: pk_dmf_da_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_mequipment
    ADD CONSTRAINT pk_dmf_da_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2914 (class 2606 OID 442881)
-- Name: pk_dmf_da_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_oassets
    ADD CONSTRAINT pk_dmf_da_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2918 (class 2606 OID 442883)
-- Name: pk_dmf_da_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_supplies
    ADD CONSTRAINT pk_dmf_da_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2920 (class 2606 OID 442885)
-- Name: pk_dmf_dfa_num_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_dfa_num
    ADD CONSTRAINT pk_dmf_dfa_num_id PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 442887)
-- Name: pk_dmf_dfa_paf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_dfa_paf
    ADD CONSTRAINT pk_dmf_dfa_paf_id PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 442889)
-- Name: pk_dmf_dfa_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_da_structure
    ADD CONSTRAINT pk_dmf_dfa_structure_id PRIMARY KEY (id);


--
-- TOC entry 2924 (class 2606 OID 442891)
-- Name: pk_dmf_los_cud_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_cud
    ADD CONSTRAINT pk_dmf_los_cud_id PRIMARY KEY (id);


--
-- TOC entry 2926 (class 2606 OID 442893)
-- Name: pk_dmf_los_fi_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_fi
    ADD CONSTRAINT pk_dmf_los_fi_id PRIMARY KEY (id);


--
-- TOC entry 2928 (class 2606 OID 442895)
-- Name: pk_dmf_los_hoc_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_hoc
    ADD CONSTRAINT pk_dmf_los_hoc_id PRIMARY KEY (id);


--
-- TOC entry 2930 (class 2606 OID 442897)
-- Name: pk_dmf_los_oue_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_los_oue
    ADD CONSTRAINT pk_dmf_los_oue_id PRIMARY KEY (id);


--
-- TOC entry 2932 (class 2606 OID 442899)
-- Name: pk_dmf_pda_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pda_mequipment
    ADD CONSTRAINT pk_dmf_pda_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2934 (class 2606 OID 442901)
-- Name: pk_dmf_pda_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pda_oassets
    ADD CONSTRAINT pk_dmf_pda_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2936 (class 2606 OID 442903)
-- Name: pk_dmf_pda_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pda_structure
    ADD CONSTRAINT pk_dmf_pda_structure_id PRIMARY KEY (id);


--
-- TOC entry 2938 (class 2606 OID 442905)
-- Name: pk_dmf_pdfa_num_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_num
    ADD CONSTRAINT pk_dmf_pdfa_num_id PRIMARY KEY (id);


--
-- TOC entry 2940 (class 2606 OID 442907)
-- Name: pk_dmf_pdfa_paf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmf_pdfa_paf
    ADD CONSTRAINT pk_dmf_pdfa_paf_id PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 442909)
-- Name: pk_dmh_df_num_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_num
    ADD CONSTRAINT pk_dmh_df_num_id PRIMARY KEY (id);


--
-- TOC entry 2944 (class 2606 OID 442911)
-- Name: pk_dmh_df_paf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_df_paf
    ADD CONSTRAINT pk_dmh_df_paf_id PRIMARY KEY (id);


--
-- TOC entry 2946 (class 2606 OID 442913)
-- Name: pk_dmh_los_cud_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_cud
    ADD CONSTRAINT pk_dmh_los_cud_id PRIMARY KEY (id);


--
-- TOC entry 2948 (class 2606 OID 442915)
-- Name: pk_dmh_los_fi_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_fi
    ADD CONSTRAINT pk_dmh_los_fi_id PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 442917)
-- Name: pk_dmh_los_hoc_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_hoc
    ADD CONSTRAINT pk_dmh_los_hoc_id PRIMARY KEY (id);


--
-- TOC entry 2952 (class 2606 OID 442919)
-- Name: pk_dmh_los_oue_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_los_oue
    ADD CONSTRAINT pk_dmh_los_oue_id PRIMARY KEY (id);


--
-- TOC entry 2954 (class 2606 OID 442921)
-- Name: pk_dmh_ndat_fac_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_mequipment
    ADD CONSTRAINT pk_dmh_ndat_fac_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2956 (class 2606 OID 442923)
-- Name: pk_dmh_ndat_fac_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_oassets
    ADD CONSTRAINT pk_dmh_ndat_fac_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2958 (class 2606 OID 442925)
-- Name: pk_dmh_ndat_fac_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_structure
    ADD CONSTRAINT pk_dmh_ndat_fac_structure_id PRIMARY KEY (id);


--
-- TOC entry 2960 (class 2606 OID 442927)
-- Name: pk_dmh_ndat_fac_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_ndat_fac_supplies
    ADD CONSTRAINT pk_dmh_ndat_fac_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2962 (class 2606 OID 442929)
-- Name: pk_dmh_pdfa_mequipment_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_mequipment
    ADD CONSTRAINT pk_dmh_pdfa_mequipment_id PRIMARY KEY (id);


--
-- TOC entry 2964 (class 2606 OID 442931)
-- Name: pk_dmh_pdfa_oassets_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_oassets
    ADD CONSTRAINT pk_dmh_pdfa_oassets_id PRIMARY KEY (id);


--
-- TOC entry 2968 (class 2606 OID 442933)
-- Name: pk_dmh_pdfa_structure_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dmh_pdfa_structure
    ADD CONSTRAINT pk_dmh_pdfa_structure_id PRIMARY KEY (id);


--
-- TOC entry 2970 (class 2606 OID 442935)
-- Name: pk_dsh_pub_omc_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_pub_omc
    ADD CONSTRAINT pk_dsh_pub_omc_id PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 442937)
-- Name: pk_dsh_pub_th_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_pub_th
    ADD CONSTRAINT pk_dsh_pub_th_id PRIMARY KEY (id);


--
-- TOC entry 2974 (class 2606 OID 442939)
-- Name: pk_dsh_pvt_fa_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_pvt_fa
    ADD CONSTRAINT pk_dsh_pvt_fa_id PRIMARY KEY (id);


--
-- TOC entry 2976 (class 2606 OID 442941)
-- Name: pk_dsh_tdl_owship_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsh_tdl_owship
    ADD CONSTRAINT pk_dsh_tdl_owship_id PRIMARY KEY (id);


--
-- TOC entry 2978 (class 2606 OID 442943)
-- Name: pk_dsn_pub_p1_lmh_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_p1_lmh
    ADD CONSTRAINT pk_dsn_pub_p1_lmh_id PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 442945)
-- Name: pk_dsn_pub_p1_moh_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_p1_moh
    ADD CONSTRAINT pk_dsn_pub_p1_moh_id PRIMARY KEY (id);


--
-- TOC entry 2982 (class 2606 OID 442947)
-- Name: pk_dsn_pub_p1_omc_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_p1_omc
    ADD CONSTRAINT pk_dsn_pub_p1_omc_id PRIMARY KEY (id);


--
-- TOC entry 2984 (class 2606 OID 442949)
-- Name: pk_dsn_pub_pn_lmh_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_pn_lmh
    ADD CONSTRAINT pk_dsn_pub_pn_lmh_id PRIMARY KEY (id);


--
-- TOC entry 2986 (class 2606 OID 442951)
-- Name: pk_dsn_pub_pn_moh_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_pn_moh
    ADD CONSTRAINT pk_dsn_pub_pn_moh_id PRIMARY KEY (id);


--
-- TOC entry 2988 (class 2606 OID 442953)
-- Name: pk_dsn_pub_pn_omc_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pub_pn_omc
    ADD CONSTRAINT pk_dsn_pub_pn_omc_id PRIMARY KEY (id);


--
-- TOC entry 2990 (class 2606 OID 442955)
-- Name: pk_dsn_pvt_p1_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pvt_p1
    ADD CONSTRAINT pk_dsn_pvt_p1_id PRIMARY KEY (id);


--
-- TOC entry 2992 (class 2606 OID 442957)
-- Name: pk_dsn_pvt_pn_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_pvt_pn
    ADD CONSTRAINT pk_dsn_pvt_pn_id PRIMARY KEY (id);


--
-- TOC entry 2994 (class 2606 OID 442959)
-- Name: pk_dsn_tdl_owship_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY dsn_tdl_owship
    ADD CONSTRAINT pk_dsn_tdl_owship_id PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 442961)
-- Name: pk_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pub_mf
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


SET search_path = public, pg_catalog;

--
-- TOC entry 2996 (class 2606 OID 443208)
-- Name: DisasterType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY disaster_type
    ADD CONSTRAINT "DisasterType_pkey" PRIMARY KEY (id);


--
-- TOC entry 2998 (class 2606 OID 443210)
-- Name: District_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district
    ADD CONSTRAINT "District_pkey" PRIMARY KEY (id);


--
-- TOC entry 3000 (class 2606 OID 443212)
-- Name: Division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY division
    ADD CONSTRAINT "Division_pkey" PRIMARY KEY (id);


--
-- TOC entry 3065 (class 2606 OID 443214)
-- Name: EffectedArea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "EffectedArea_pkey" PRIMARY KEY (incident_id, disaster_id, province_id);


--
-- TOC entry 3002 (class 2606 OID 443216)
-- Name: GramaNiladhari_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grama_niladhari
    ADD CONSTRAINT "GramaNiladhari_pkey" PRIMARY KEY (id);


--
-- TOC entry 3004 (class 2606 OID 443218)
-- Name: IncidentReport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_report
    ADD CONSTRAINT "IncidentReport_pkey" PRIMARY KEY (id);


--
-- TOC entry 3006 (class 2606 OID 443220)
-- Name: PermissionType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permission_type
    ADD CONSTRAINT "PermissionType_pkey" PRIMARY KEY (id);


--
-- TOC entry 3008 (class 2606 OID 443222)
-- Name: Province_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY province
    ADD CONSTRAINT "Province_pkey" PRIMARY KEY (id);


--
-- TOC entry 3010 (class 2606 OID 443224)
-- Name: Sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sector
    ADD CONSTRAINT "Sector_pkey" PRIMARY KEY (id);


--
-- TOC entry 3012 (class 2606 OID 443226)
-- Name: UserDesignation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_designation
    ADD CONSTRAINT "UserDesignation_pkey" PRIMARY KEY (id);


--
-- TOC entry 3014 (class 2606 OID 443228)
-- Name: UserRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (id);


--
-- TOC entry 3016 (class 2606 OID 443230)
-- Name: User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 3019 (class 2606 OID 443232)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3025 (class 2606 OID 443234)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 3027 (class 2606 OID 443236)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3021 (class 2606 OID 443238)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3030 (class 2606 OID 443240)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 3032 (class 2606 OID 443242)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3041 (class 2606 OID 443244)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3043 (class 2606 OID 443246)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 3034 (class 2606 OID 443248)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3047 (class 2606 OID 443250)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3049 (class 2606 OID 443252)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 3037 (class 2606 OID 443254)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3053 (class 2606 OID 443256)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3055 (class 2606 OID 443258)
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 3057 (class 2606 OID 443260)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3059 (class 2606 OID 443262)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3062 (class 2606 OID 443264)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


SET search_path = health, pg_catalog;

--
-- TOC entry 2830 (class 1259 OID 442962)
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2835 (class 1259 OID 442963)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2836 (class 1259 OID 442964)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2841 (class 1259 OID 442965)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2851 (class 1259 OID 442966)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2852 (class 1259 OID 442967)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2857 (class 1259 OID 442968)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2858 (class 1259 OID 442969)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2848 (class 1259 OID 442970)
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2897 (class 1259 OID 442971)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2898 (class 1259 OID 442972)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2907 (class 1259 OID 442973)
-- Name: django_session_de54fa62; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2910 (class 1259 OID 442974)
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


SET search_path = public, pg_catalog;

--
-- TOC entry 3017 (class 1259 OID 443265)
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3022 (class 1259 OID 443266)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 3023 (class 1259 OID 443267)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3028 (class 1259 OID 443268)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 3038 (class 1259 OID 443269)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 3039 (class 1259 OID 443270)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 3044 (class 1259 OID 443271)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3045 (class 1259 OID 443272)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3035 (class 1259 OID 443273)
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3050 (class 1259 OID 443274)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 3051 (class 1259 OID 443275)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 3060 (class 1259 OID 443276)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 3063 (class 1259 OID 443277)
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


SET search_path = health, pg_catalog;

--
-- TOC entry 3074 (class 2606 OID 442975)
-- Name: FK_Health_AssestType_Id_On_Health_GeoLine_AssestType; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_line
    ADD CONSTRAINT "FK_Health_AssestType_Id_On_Health_GeoLine_AssestType" FOREIGN KEY (assest_type) REFERENCES assest_type(id);


--
-- TOC entry 3075 (class 2606 OID 442980)
-- Name: FK_Health_AssestType_Id_On_Health_GeoPoint_AssestType; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_point
    ADD CONSTRAINT "FK_Health_AssestType_Id_On_Health_GeoPoint_AssestType" FOREIGN KEY (assest_type) REFERENCES assest_type(id);


--
-- TOC entry 3076 (class 2606 OID 442985)
-- Name: FK_Health_AssestType_Id_On_Health_GeoPolygon_AssestType; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_polygon
    ADD CONSTRAINT "FK_Health_AssestType_Id_On_Health_GeoPolygon_AssestType" FOREIGN KEY (assest_type) REFERENCES assest_type(id);


--
-- TOC entry 3078 (class 2606 OID 442990)
-- Name: FK_Health_SectorTabelCol_Id_On_Health_UserRolePermission_Sector; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission
    ADD CONSTRAINT "FK_Health_SectorTabelCol_Id_On_Health_UserRolePermission_Sector" FOREIGN KEY (sector_property_id) REFERENCES sector_tabel_col(id);


--
-- TOC entry 3077 (class 2606 OID 442995)
-- Name: FK_Health_SectorTable_Id_On_Health_SectorTabelCol_SectorTabelId; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col
    ADD CONSTRAINT "FK_Health_SectorTable_Id_On_Health_SectorTabelCol_SectorTabelId" FOREIGN KEY (sector_tabel_id) REFERENCES sector_table(id);


--
-- TOC entry 3081 (class 2606 OID 443000)
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3079 (class 2606 OID 443005)
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3080 (class 2606 OID 443010)
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3084 (class 2606 OID 443015)
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3082 (class 2606 OID 443020)
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3083 (class 2606 OID 443025)
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3085 (class 2606 OID 443030)
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3086 (class 2606 OID 443035)
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3087 (class 2606 OID 443040)
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3107 (class 2606 OID 443415)
-- Name: fk_district_bhs_com_diseases; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_com_diseases
    ADD CONSTRAINT fk_district_bhs_com_diseases FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 3108 (class 2606 OID 443431)
-- Name: fk_district_bhs_oi; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_oi
    ADD CONSTRAINT fk_district_bhs_oi FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 3109 (class 2606 OID 443444)
-- Name: fk_district_bhs_plc; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_plc
    ADD CONSTRAINT fk_district_bhs_plc FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 3110 (class 2606 OID 443460)
-- Name: fk_district_bhs_vi; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bhs_vi
    ADD CONSTRAINT fk_district_bhs_vi FOREIGN KEY (district) REFERENCES public.district(id);


SET search_path = public, pg_catalog;

--
-- TOC entry 3104 (class 2606 OID 443278)
-- Name: FK_DisasterType_Id_On_EffectedArea_DisasterId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "FK_DisasterType_Id_On_EffectedArea_DisasterId" FOREIGN KEY (disaster_id) REFERENCES disaster_type(id);


--
-- TOC entry 3091 (class 2606 OID 443283)
-- Name: FK_DisasterType_Id_On_IncidentReport_DisasterTypeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_report
    ADD CONSTRAINT "FK_DisasterType_Id_On_IncidentReport_DisasterTypeId" FOREIGN KEY (disaster_type_id) REFERENCES disaster_type(id);


--
-- TOC entry 3089 (class 2606 OID 443288)
-- Name: FK_District_Id_On_Division_DistrictId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY division
    ADD CONSTRAINT "FK_District_Id_On_Division_DistrictId" FOREIGN KEY (district_id) REFERENCES district(id);


--
-- TOC entry 3090 (class 2606 OID 443293)
-- Name: FK_Division_Id_On_GramaNiladhari_DivisionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grama_niladhari
    ADD CONSTRAINT "FK_Division_Id_On_GramaNiladhari_DivisionId" FOREIGN KEY (division_id) REFERENCES division(id);


--
-- TOC entry 3105 (class 2606 OID 443298)
-- Name: FK_IncidentReport_Id_On_EffectedArea_IncidentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "FK_IncidentReport_Id_On_EffectedArea_IncidentId" FOREIGN KEY (incident_id) REFERENCES incident_report(id);


--
-- TOC entry 3088 (class 2606 OID 443303)
-- Name: FK_Province_Id_On_District_ProvinceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district
    ADD CONSTRAINT "FK_Province_Id_On_District_ProvinceId" FOREIGN KEY (province_id) REFERENCES province(id);


--
-- TOC entry 3106 (class 2606 OID 443308)
-- Name: FK_Province_Id_On_EffectedArea_ProvinceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "FK_Province_Id_On_EffectedArea_ProvinceId" FOREIGN KEY (province_id) REFERENCES province(id);


--
-- TOC entry 3092 (class 2606 OID 443313)
-- Name: FK_Sector_Id_On_User_SectorId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "FK_Sector_Id_On_User_SectorId" FOREIGN KEY (sector_id) REFERENCES sector(id);


--
-- TOC entry 3093 (class 2606 OID 443318)
-- Name: FK_UserDesignation_Id_On_User_DesignationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "FK_UserDesignation_Id_On_User_DesignationId" FOREIGN KEY (designation_id) REFERENCES user_designation(id);


--
-- TOC entry 3094 (class 2606 OID 443323)
-- Name: FK_UserRoles_Id_On_User_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "FK_UserRoles_Id_On_User_RoleId" FOREIGN KEY (role_id) REFERENCES user_role(id);


--
-- TOC entry 3097 (class 2606 OID 443328)
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3095 (class 2606 OID 443333)
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3096 (class 2606 OID 443338)
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3100 (class 2606 OID 443343)
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3098 (class 2606 OID 443348)
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3099 (class 2606 OID 443353)
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3101 (class 2606 OID 443358)
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3102 (class 2606 OID 443363)
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3103 (class 2606 OID 443368)
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-12-08 22:22:07 +0530

--
-- PostgreSQL database dump complete
--

