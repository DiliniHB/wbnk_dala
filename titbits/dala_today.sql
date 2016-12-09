--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-11-24 11:58:28 +0530

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 7 (class 2615 OID 45318)
-- Name: WaterSupply; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "WaterSupply";


ALTER SCHEMA "WaterSupply" OWNER TO postgres;

--
-- TOC entry 9 (class 2615 OID 45317)
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
-- TOC entry 2837 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = "WaterSupply", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 210 (class 1259 OID 45400)
-- Name: AssestType; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "AssestType" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "Description" character varying,
    "GeoSpatialType" character varying
);


ALTER TABLE "AssestType" OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 45406)
-- Name: AssestType_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "AssestType_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "AssestType_Id_seq" OWNER TO postgres;

--
-- TOC entry 2838 (class 0 OID 0)
-- Dependencies: 211
-- Name: AssestType_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "AssestType_Id_seq" OWNED BY "AssestType"."Id";


--
-- TOC entry 212 (class 1259 OID 45408)
-- Name: GeoLine; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "GeoLine" (
    "Id" integer NOT NULL,
    "AssestType" bigint NOT NULL,
    "Geon" line
);


ALTER TABLE "GeoLine" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 45411)
-- Name: GeoLine_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "GeoLine_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GeoLine_Id_seq" OWNER TO postgres;

--
-- TOC entry 2839 (class 0 OID 0)
-- Dependencies: 213
-- Name: GeoLine_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "GeoLine_Id_seq" OWNED BY "GeoLine"."Id";


--
-- TOC entry 214 (class 1259 OID 45413)
-- Name: GeoPoint; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "GeoPoint" (
    "Id" integer NOT NULL,
    "AssestType" bigint NOT NULL,
    "Geon" point
);


ALTER TABLE "GeoPoint" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 45416)
-- Name: GeoPoint_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "GeoPoint_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GeoPoint_Id_seq" OWNER TO postgres;

--
-- TOC entry 2840 (class 0 OID 0)
-- Dependencies: 215
-- Name: GeoPoint_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "GeoPoint_Id_seq" OWNED BY "GeoPoint"."Id";


--
-- TOC entry 216 (class 1259 OID 45418)
-- Name: GeoPolygon; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "GeoPolygon" (
    "Id" integer NOT NULL,
    "AssestType" bigint NOT NULL,
    "Geon" polygon
);


ALTER TABLE "GeoPolygon" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 45424)
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "GeoPolygon_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "GeoPolygon_Id_seq" OWNER TO postgres;

--
-- TOC entry 2841 (class 0 OID 0)
-- Dependencies: 217
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "GeoPolygon_Id_seq" OWNED BY "GeoPolygon"."Id";


--
-- TOC entry 218 (class 1259 OID 45426)
-- Name: SectorTabelCol; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "SectorTabelCol" (
    "Id" integer NOT NULL,
    "SectorTabelId" bigint NOT NULL,
    "ColName" character varying,
    "Value" character varying,
    "DataType" character varying,
    "LMU" bigint,
    "LMD" time without time zone,
    "CreatedDate" time without time zone
);


ALTER TABLE "SectorTabelCol" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 45432)
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "SectorTabelCol_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SectorTabelCol_Id_seq" OWNER TO postgres;

--
-- TOC entry 2842 (class 0 OID 0)
-- Dependencies: 219
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "SectorTabelCol_Id_seq" OWNED BY "SectorTabelCol"."Id";


--
-- TOC entry 220 (class 1259 OID 45434)
-- Name: SectorTable; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "SectorTable" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "Description" character varying,
    "TableType" boolean
);


ALTER TABLE "SectorTable" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 45440)
-- Name: SectorTable_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "SectorTable_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "SectorTable_Id_seq" OWNER TO postgres;

--
-- TOC entry 2843 (class 0 OID 0)
-- Dependencies: 221
-- Name: SectorTable_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "SectorTable_Id_seq" OWNED BY "SectorTable"."Id";


--
-- TOC entry 222 (class 1259 OID 45442)
-- Name: UserRolePermission; Type: TABLE; Schema: WaterSupply; Owner: postgres
--

CREATE TABLE "UserRolePermission" (
    "Id" integer NOT NULL,
    "UserRoleId" bigint,
    "SectorPropertyId" bigint,
    "PermissionTypeId" bigint
);


ALTER TABLE "UserRolePermission" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 45445)
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE; Schema: WaterSupply; Owner: postgres
--

CREATE SEQUENCE "UserRolePermission_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "UserRolePermission_Id_seq" OWNER TO postgres;

--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 223
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE OWNED BY; Schema: WaterSupply; Owner: postgres
--

ALTER SEQUENCE "UserRolePermission_Id_seq" OWNED BY "UserRolePermission"."Id";


SET search_path = health, pg_catalog;

--
-- TOC entry 183 (class 1259 OID 45319)
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
-- TOC entry 184 (class 1259 OID 45325)
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
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 184
-- Name: AssestType_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "AssestType_Id_seq" OWNED BY assest_type.id;


--
-- TOC entry 185 (class 1259 OID 45327)
-- Name: bmf_pub_mf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bmf_pub_mf (
    id integer NOT NULL,
    type_bub_mf character varying(255),
    number integer,
    male integer,
    female integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    district integer
);


ALTER TABLE bmf_pub_mf OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 45330)
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
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 186
-- Name: BMF_PUB_MF_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BMF_PUB_MF_id_seq" OWNED BY bmf_pub_mf.id;


--
-- TOC entry 188 (class 1259 OID 45336)
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
-- TOC entry 189 (class 1259 OID 45339)
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
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 189
-- Name: BUC_MAR_MEQUIPMENT_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_MEQUIPMENT_Id_seq" OWNED BY buc_mar_mequipment.id;


--
-- TOC entry 190 (class 1259 OID 45341)
-- Name: buc_mar_oasset; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_mar_oasset (
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


ALTER TABLE buc_mar_oasset OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 45344)
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
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 191
-- Name: BUC_MAR_OASSETS_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_OASSETS_Id_seq" OWNED BY buc_mar_oasset.id;


--
-- TOC entry 192 (class 1259 OID 45346)
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
    key bigint
);


ALTER TABLE buc_mar_structure OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 45349)
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
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 193
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_STRUCTURE_id_seq" OWNED BY buc_mar_structure.id;


--
-- TOC entry 194 (class 1259 OID 45351)
-- Name: buc_mar_supply; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE buc_mar_supply (
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


ALTER TABLE buc_mar_supply OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 45354)
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
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 195
-- Name: BUC_MAR_SUPPLIES_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "BUC_MAR_SUPPLIES_Id_seq" OWNED BY buc_mar_supply.id;


--
-- TOC entry 196 (class 1259 OID 45356)
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
-- TOC entry 197 (class 1259 OID 45359)
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
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 197
-- Name: DataEntry_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "DataEntry_Id_seq" OWNED BY data_entry.id;


--
-- TOC entry 198 (class 1259 OID 45361)
-- Name: geo_line; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE geo_line (
    id integer NOT NULL,
    assest_type bigint,
    geon line
);


ALTER TABLE geo_line OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 45364)
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
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 199
-- Name: GeoLine_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "GeoLine_Id_seq" OWNED BY geo_line.id;


--
-- TOC entry 200 (class 1259 OID 45366)
-- Name: geo_point; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE geo_point (
    id integer NOT NULL,
    assest_type bigint,
    geon point
);


ALTER TABLE geo_point OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 45369)
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
-- TOC entry 2853 (class 0 OID 0)
-- Dependencies: 201
-- Name: GeoPoint_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "GeoPoint_Id_seq" OWNED BY geo_point.id;


--
-- TOC entry 202 (class 1259 OID 45371)
-- Name: geo_polygon; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE geo_polygon (
    id integer NOT NULL,
    assest_type bigint,
    geon polygon
);


ALTER TABLE geo_polygon OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 45377)
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
-- TOC entry 2854 (class 0 OID 0)
-- Dependencies: 203
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "GeoPolygon_Id_seq" OWNED BY geo_polygon.id;


--
-- TOC entry 204 (class 1259 OID 45379)
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
-- TOC entry 205 (class 1259 OID 45385)
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
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 205
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "SectorTabelCol_Id_seq" OWNED BY sector_tabel_col.id;


--
-- TOC entry 206 (class 1259 OID 45387)
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
-- TOC entry 207 (class 1259 OID 45393)
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
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 207
-- Name: SectorTable_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "SectorTable_Id_seq" OWNED BY sector_table.id;


--
-- TOC entry 208 (class 1259 OID 45395)
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
-- TOC entry 209 (class 1259 OID 45398)
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
-- TOC entry 2857 (class 0 OID 0)
-- Dependencies: 209
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE "UserRolePermission_Id_seq" OWNED BY user_role_permission.id;


--
-- TOC entry 275 (class 1259 OID 61720)
-- Name: auth_group; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 61718)
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
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 274
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 277 (class 1259 OID 61730)
-- Name: auth_group_permissions; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 61728)
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
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 276
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 273 (class 1259 OID 61710)
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
-- TOC entry 272 (class 1259 OID 61708)
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
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 272
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 279 (class 1259 OID 61740)
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
-- TOC entry 281 (class 1259 OID 61750)
-- Name: auth_user_groups; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 61748)
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
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 280
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 278 (class 1259 OID 61738)
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
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 278
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 283 (class 1259 OID 61760)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 282 (class 1259 OID 61758)
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
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 282
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 187 (class 1259 OID 45332)
-- Name: bmf_pvt_mf; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE bmf_pvt_mf (
    id integer DEFAULT nextval('"BMF_PUB_MF_id_seq"'::regclass) NOT NULL,
    type_bub_mf character varying(255),
    number integer,
    male integer,
    female integer,
    created_user integer,
    lmu integer,
    created_date timestamp without time zone,
    lmd timestamp without time zone,
    key bigint,
    district integer
);


ALTER TABLE bmf_pvt_mf OWNER TO postgres;

--
-- TOC entry 285 (class 1259 OID 61814)
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
-- TOC entry 284 (class 1259 OID 61812)
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
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 284
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 271 (class 1259 OID 61700)
-- Name: django_content_type; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 61698)
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
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 270
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 269 (class 1259 OID 53664)
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
-- TOC entry 268 (class 1259 OID 53662)
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
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 268
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: health; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 286 (class 1259 OID 61836)
-- Name: django_session; Type: TABLE; Schema: health; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- TOC entry 224 (class 1259 OID 45447)
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
-- TOC entry 225 (class 1259 OID 45449)
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
-- TOC entry 226 (class 1259 OID 45451)
-- Name: DisasterType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "DisasterType" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "Description" character varying
);


ALTER TABLE "DisasterType" OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 45457)
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
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 227
-- Name: DisasterType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DisasterType_Id_seq" OWNED BY "DisasterType"."Id";


--
-- TOC entry 228 (class 1259 OID 45459)
-- Name: district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE district (
    id integer NOT NULL,
    province_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE district OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 45465)
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
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 229
-- Name: District_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "District_Id_seq" OWNED BY district.id;


--
-- TOC entry 230 (class 1259 OID 45467)
-- Name: Division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Division" (
    "Id" integer NOT NULL,
    "DistrictId" bigint NOT NULL,
    "Name" character varying
);


ALTER TABLE "Division" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 45473)
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
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 231
-- Name: Division_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Division_Id_seq" OWNED BY "Division"."Id";


--
-- TOC entry 232 (class 1259 OID 45475)
-- Name: EffectedArea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "EffectedArea" (
    "IncidentId" bigint NOT NULL,
    "DisasterId" bigint NOT NULL,
    "ProvinceId" bigint NOT NULL
);


ALTER TABLE "EffectedArea" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 45478)
-- Name: GramaNiladhari; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "GramaNiladhari" (
    "Id" integer NOT NULL,
    "DivisionId" bigint NOT NULL,
    "Name" character varying
);


ALTER TABLE "GramaNiladhari" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 45484)
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
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 234
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "GramaNiladhari_Id_seq" OWNED BY "GramaNiladhari"."Id";


--
-- TOC entry 235 (class 1259 OID 45486)
-- Name: IncidentReport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "IncidentReport" (
    "Id" integer NOT NULL,
    "DisasterTypeId" bigint NOT NULL,
    "ReportedDateTime" time without time zone,
    "Description" character varying
);


ALTER TABLE "IncidentReport" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 45492)
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
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 236
-- Name: IncidentReport_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "IncidentReport_Id_seq" OWNED BY "IncidentReport"."Id";


--
-- TOC entry 237 (class 1259 OID 45494)
-- Name: PermissionType; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "PermissionType" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "Description" character varying
);


ALTER TABLE "PermissionType" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 45500)
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
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 238
-- Name: PermissionType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "PermissionType_Id_seq" OWNED BY "PermissionType"."Id";


--
-- TOC entry 239 (class 1259 OID 45502)
-- Name: Province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Province" (
    "Id" integer NOT NULL,
    "Name" character varying(255)
);


ALTER TABLE "Province" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 45508)
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
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 240
-- Name: Province_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Province_Id_seq" OWNED BY "Province"."Id";


--
-- TOC entry 241 (class 1259 OID 45510)
-- Name: Sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Sector" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "Description" character varying,
    "CreatedDate" time without time zone
);


ALTER TABLE "Sector" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 45516)
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
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 242
-- Name: Sector_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Sector_Id_seq" OWNED BY "Sector"."Id";


--
-- TOC entry 243 (class 1259 OID 45518)
-- Name: User; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "User" (
    "Id" integer NOT NULL,
    "RoleId" bigint NOT NULL,
    "SectorId" bigint NOT NULL,
    "FirstName" character varying,
    "LastName" character varying,
    "UserName" character varying,
    "Password" character varying,
    "Email" character varying,
    "ContactNo" character varying,
    "NIC" character varying,
    "DesignationId" bigint
);


ALTER TABLE "User" OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 45524)
-- Name: UserDesignation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "UserDesignation" (
    "Id" integer NOT NULL,
    "Name" character varying,
    "Description" character varying
);


ALTER TABLE "UserDesignation" OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 45530)
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
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 245
-- Name: UserDesignation_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "UserDesignation_Id_seq" OWNED BY "UserDesignation"."Id";


--
-- TOC entry 246 (class 1259 OID 45532)
-- Name: UserRole; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "UserRole" (
    "Id" integer NOT NULL,
    "RoleName" character varying,
    "Description" character varying
);


ALTER TABLE "UserRole" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 45538)
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
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 247
-- Name: UserRoles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "UserRoles_Id_seq" OWNED BY "UserRole"."Id";


--
-- TOC entry 248 (class 1259 OID 45540)
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
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 248
-- Name: User_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "User_Id_seq" OWNED BY "User"."Id";


--
-- TOC entry 256 (class 1259 OID 53535)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 53533)
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
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 255
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 258 (class 1259 OID 53545)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 53543)
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
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 257
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 254 (class 1259 OID 53525)
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
-- TOC entry 253 (class 1259 OID 53523)
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
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 253
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 260 (class 1259 OID 53555)
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
-- TOC entry 262 (class 1259 OID 53565)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 53563)
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
-- TOC entry 2881 (class 0 OID 0)
-- Dependencies: 261
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 259 (class 1259 OID 53553)
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
-- TOC entry 2882 (class 0 OID 0)
-- Dependencies: 259
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 264 (class 1259 OID 53575)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 53573)
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
-- TOC entry 2883 (class 0 OID 0)
-- Dependencies: 263
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 266 (class 1259 OID 53629)
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
-- TOC entry 265 (class 1259 OID 53627)
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
-- TOC entry 2884 (class 0 OID 0)
-- Dependencies: 265
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 252 (class 1259 OID 53515)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 53513)
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
-- TOC entry 2885 (class 0 OID 0)
-- Dependencies: 251
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 250 (class 1259 OID 53500)
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
-- TOC entry 249 (class 1259 OID 53498)
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
-- TOC entry 2886 (class 0 OID 0)
-- Dependencies: 249
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 267 (class 1259 OID 53651)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

SET search_path = "WaterSupply", pg_catalog;

--
-- TOC entry 2364 (class 2604 OID 45809)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "AssestType" ALTER COLUMN "Id" SET DEFAULT nextval('"AssestType_Id_seq"'::regclass);


--
-- TOC entry 2365 (class 2604 OID 45810)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoLine" ALTER COLUMN "Id" SET DEFAULT nextval('"GeoLine_Id_seq"'::regclass);


--
-- TOC entry 2366 (class 2604 OID 45811)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoPoint" ALTER COLUMN "Id" SET DEFAULT nextval('"GeoPoint_Id_seq"'::regclass);


--
-- TOC entry 2367 (class 2604 OID 45812)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoPolygon" ALTER COLUMN "Id" SET DEFAULT nextval('"GeoPolygon_Id_seq"'::regclass);


--
-- TOC entry 2368 (class 2604 OID 45813)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "SectorTabelCol" ALTER COLUMN "Id" SET DEFAULT nextval('"SectorTabelCol_Id_seq"'::regclass);


--
-- TOC entry 2369 (class 2604 OID 45814)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "SectorTable" ALTER COLUMN "Id" SET DEFAULT nextval('"SectorTable_Id_seq"'::regclass);


--
-- TOC entry 2370 (class 2604 OID 45815)
-- Name: Id; Type: DEFAULT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "UserRolePermission" ALTER COLUMN "Id" SET DEFAULT nextval('"UserRolePermission_Id_seq"'::regclass);


SET search_path = health, pg_catalog;

--
-- TOC entry 2350 (class 2604 OID 45796)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY assest_type ALTER COLUMN id SET DEFAULT nextval('"AssestType_Id_seq"'::regclass);


--
-- TOC entry 2395 (class 2604 OID 61723)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2396 (class 2604 OID 61733)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2394 (class 2604 OID 61713)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2397 (class 2604 OID 61743)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2398 (class 2604 OID 61753)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2399 (class 2604 OID 61763)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2351 (class 2604 OID 45797)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pub_mf ALTER COLUMN id SET DEFAULT nextval('"BMF_PUB_MF_id_seq"'::regclass);


--
-- TOC entry 2353 (class 2604 OID 45798)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_mequipment ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_MEQUIPMENT_Id_seq"'::regclass);


--
-- TOC entry 2354 (class 2604 OID 45799)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_oasset ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_OASSETS_Id_seq"'::regclass);


--
-- TOC entry 2355 (class 2604 OID 45800)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_structure ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_STRUCTURE_id_seq"'::regclass);


--
-- TOC entry 2356 (class 2604 OID 45801)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_supply ALTER COLUMN id SET DEFAULT nextval('"BUC_MAR_SUPPLIES_Id_seq"'::regclass);


--
-- TOC entry 2357 (class 2604 OID 45802)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY data_entry ALTER COLUMN id SET DEFAULT nextval('"DataEntry_Id_seq"'::regclass);


--
-- TOC entry 2400 (class 2604 OID 61817)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2393 (class 2604 OID 61703)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2392 (class 2604 OID 53667)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2358 (class 2604 OID 45803)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_line ALTER COLUMN id SET DEFAULT nextval('"GeoLine_Id_seq"'::regclass);


--
-- TOC entry 2359 (class 2604 OID 45804)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_point ALTER COLUMN id SET DEFAULT nextval('"GeoPoint_Id_seq"'::regclass);


--
-- TOC entry 2360 (class 2604 OID 45805)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_polygon ALTER COLUMN id SET DEFAULT nextval('"GeoPolygon_Id_seq"'::regclass);


--
-- TOC entry 2361 (class 2604 OID 45806)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col ALTER COLUMN id SET DEFAULT nextval('"SectorTabelCol_Id_seq"'::regclass);


--
-- TOC entry 2362 (class 2604 OID 45807)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_table ALTER COLUMN id SET DEFAULT nextval('"SectorTable_Id_seq"'::regclass);


--
-- TOC entry 2363 (class 2604 OID 45808)
-- Name: id; Type: DEFAULT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission ALTER COLUMN id SET DEFAULT nextval('"UserRolePermission_Id_seq"'::regclass);


SET search_path = public, pg_catalog;

--
-- TOC entry 2371 (class 2604 OID 45816)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DisasterType" ALTER COLUMN "Id" SET DEFAULT nextval('"DisasterType_Id_seq"'::regclass);


--
-- TOC entry 2373 (class 2604 OID 45818)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Division" ALTER COLUMN "Id" SET DEFAULT nextval('"Division_Id_seq"'::regclass);


--
-- TOC entry 2374 (class 2604 OID 45819)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "GramaNiladhari" ALTER COLUMN "Id" SET DEFAULT nextval('"GramaNiladhari_Id_seq"'::regclass);


--
-- TOC entry 2375 (class 2604 OID 45820)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "IncidentReport" ALTER COLUMN "Id" SET DEFAULT nextval('"IncidentReport_Id_seq"'::regclass);


--
-- TOC entry 2376 (class 2604 OID 45821)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PermissionType" ALTER COLUMN "Id" SET DEFAULT nextval('"PermissionType_Id_seq"'::regclass);


--
-- TOC entry 2377 (class 2604 OID 45822)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Province" ALTER COLUMN "Id" SET DEFAULT nextval('"Province_Id_seq"'::regclass);


--
-- TOC entry 2378 (class 2604 OID 45823)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Sector" ALTER COLUMN "Id" SET DEFAULT nextval('"Sector_Id_seq"'::regclass);


--
-- TOC entry 2379 (class 2604 OID 45824)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "User" ALTER COLUMN "Id" SET DEFAULT nextval('"User_Id_seq"'::regclass);


--
-- TOC entry 2380 (class 2604 OID 45825)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserDesignation" ALTER COLUMN "Id" SET DEFAULT nextval('"UserDesignation_Id_seq"'::regclass);


--
-- TOC entry 2381 (class 2604 OID 45826)
-- Name: Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserRole" ALTER COLUMN "Id" SET DEFAULT nextval('"UserRoles_Id_seq"'::regclass);


--
-- TOC entry 2385 (class 2604 OID 53538)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2386 (class 2604 OID 53548)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2384 (class 2604 OID 53528)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2387 (class 2604 OID 53558)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2388 (class 2604 OID 53568)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2389 (class 2604 OID 53578)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2372 (class 2604 OID 45817)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district ALTER COLUMN id SET DEFAULT nextval('"District_Id_seq"'::regclass);


--
-- TOC entry 2390 (class 2604 OID 53632)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2383 (class 2604 OID 53518)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2382 (class 2604 OID 53503)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


SET search_path = "WaterSupply", pg_catalog;

--
-- TOC entry 2753 (class 0 OID 45400)
-- Dependencies: 210
-- Data for Name: AssestType; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "AssestType" ("Id", "Name", "Description", "GeoSpatialType") FROM stdin;
\.


--
-- TOC entry 2887 (class 0 OID 0)
-- Dependencies: 211
-- Name: AssestType_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"AssestType_Id_seq"', 1, false);


--
-- TOC entry 2755 (class 0 OID 45408)
-- Dependencies: 212
-- Data for Name: GeoLine; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "GeoLine" ("Id", "AssestType", "Geon") FROM stdin;
\.


--
-- TOC entry 2888 (class 0 OID 0)
-- Dependencies: 213
-- Name: GeoLine_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"GeoLine_Id_seq"', 1, false);


--
-- TOC entry 2757 (class 0 OID 45413)
-- Dependencies: 214
-- Data for Name: GeoPoint; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "GeoPoint" ("Id", "AssestType", "Geon") FROM stdin;
\.


--
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 215
-- Name: GeoPoint_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"GeoPoint_Id_seq"', 1, false);


--
-- TOC entry 2759 (class 0 OID 45418)
-- Dependencies: 216
-- Data for Name: GeoPolygon; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "GeoPolygon" ("Id", "AssestType", "Geon") FROM stdin;
\.


--
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 217
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"GeoPolygon_Id_seq"', 1, false);


--
-- TOC entry 2761 (class 0 OID 45426)
-- Dependencies: 218
-- Data for Name: SectorTabelCol; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "SectorTabelCol" ("Id", "SectorTabelId", "ColName", "Value", "DataType", "LMU", "LMD", "CreatedDate") FROM stdin;
\.


--
-- TOC entry 2891 (class 0 OID 0)
-- Dependencies: 219
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"SectorTabelCol_Id_seq"', 1, false);


--
-- TOC entry 2763 (class 0 OID 45434)
-- Dependencies: 220
-- Data for Name: SectorTable; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "SectorTable" ("Id", "Name", "Description", "TableType") FROM stdin;
\.


--
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 221
-- Name: SectorTable_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"SectorTable_Id_seq"', 1, false);


--
-- TOC entry 2765 (class 0 OID 45442)
-- Dependencies: 222
-- Data for Name: UserRolePermission; Type: TABLE DATA; Schema: WaterSupply; Owner: postgres
--

COPY "UserRolePermission" ("Id", "UserRoleId", "SectorPropertyId", "PermissionTypeId") FROM stdin;
\.


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 223
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE SET; Schema: WaterSupply; Owner: postgres
--

SELECT pg_catalog.setval('"UserRolePermission_Id_seq"', 1, false);


SET search_path = health, pg_catalog;

--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 184
-- Name: AssestType_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"AssestType_Id_seq"', 1, false);


--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 186
-- Name: BMF_PUB_MF_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BMF_PUB_MF_id_seq"', 1, false);


--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 189
-- Name: BUC_MAR_MEQUIPMENT_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_MEQUIPMENT_Id_seq"', 1, false);


--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 191
-- Name: BUC_MAR_OASSETS_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_OASSETS_Id_seq"', 1, false);


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 193
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_STRUCTURE_id_seq"', 1, false);


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 195
-- Name: BUC_MAR_SUPPLIES_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_SUPPLIES_Id_seq"', 1, false);


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 197
-- Name: DataEntry_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"DataEntry_Id_seq"', 1, false);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 199
-- Name: GeoLine_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"GeoLine_Id_seq"', 1, false);


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 201
-- Name: GeoPoint_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"GeoPoint_Id_seq"', 1, false);


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 203
-- Name: GeoPolygon_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"GeoPolygon_Id_seq"', 1, false);


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 205
-- Name: SectorTabelCol_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"SectorTabelCol_Id_seq"', 1, false);


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 207
-- Name: SectorTable_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"SectorTable_Id_seq"', 1, false);


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 209
-- Name: UserRolePermission_Id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('"UserRolePermission_Id_seq"', 1, false);


--
-- TOC entry 2726 (class 0 OID 45319)
-- Dependencies: 183
-- Data for Name: assest_type; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY assest_type (id, name, description, geo_spatial_type) FROM stdin;
\.


--
-- TOC entry 2818 (class 0 OID 61720)
-- Dependencies: 275
-- Data for Name: auth_group; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 274
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2820 (class 0 OID 61730)
-- Dependencies: 277
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 276
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2816 (class 0 OID 61710)
-- Dependencies: 273
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
19	Can add province	7	add_province
20	Can change province	7	change_province
21	Can delete province	7	delete_province
22	Can add district	8	add_district
23	Can change district	8	change_district
24	Can delete district	8	delete_district
25	Can add bmf pub mf	9	add_bmfpubmf
26	Can change bmf pub mf	9	change_bmfpubmf
27	Can delete bmf pub mf	9	delete_bmfpubmf
\.


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 272
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 27, true);


--
-- TOC entry 2822 (class 0 OID 61740)
-- Dependencies: 279
-- Data for Name: auth_user; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$5h8dlN7FRs7e$xG4lnYHFYQLpEJzIellN+HfeUoMesSWuqyhNmrbEsaM=	2016-11-23 14:56:23.669373+05:30	t	admin			admin@gmail.com	t	t	2016-11-23 14:49:09.394649+05:30
\.


--
-- TOC entry 2824 (class 0 OID 61750)
-- Dependencies: 281
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 280
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 278
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- TOC entry 2826 (class 0 OID 61760)
-- Dependencies: 283
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 282
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2728 (class 0 OID 45327)
-- Dependencies: 185
-- Data for Name: bmf_pub_mf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bmf_pub_mf (id, type_bub_mf, number, male, female, created_user, lmu, created_date, lmd, key, district) FROM stdin;
\.


--
-- TOC entry 2730 (class 0 OID 45332)
-- Dependencies: 187
-- Data for Name: bmf_pvt_mf; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY bmf_pvt_mf (id, type_bub_mf, number, male, female, created_user, lmu, created_date, lmd, key, district) FROM stdin;
\.


--
-- TOC entry 2731 (class 0 OID 45336)
-- Dependencies: 188
-- Data for Name: buc_mar_mequipment; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_mequipment (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
\.


--
-- TOC entry 2733 (class 0 OID 45341)
-- Dependencies: 190
-- Data for Name: buc_mar_oasset; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_oasset (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
\.


--
-- TOC entry 2735 (class 0 OID 45346)
-- Dependencies: 192
-- Data for Name: buc_mar_structure; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_structure (id, particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, office, other, district, created_user, lmu, created_date, lmd, key) FROM stdin;
\.


--
-- TOC entry 2737 (class 0 OID 45351)
-- Dependencies: 194
-- Data for Name: buc_mar_supply; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY buc_mar_supply (particulars, teaching_hospital, provincial_general_hospital, district_general_hospital, district, created_user, lmu, created_date, lmd, key, id) FROM stdin;
\.


--
-- TOC entry 2739 (class 0 OID 45356)
-- Dependencies: 196
-- Data for Name: data_entry; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY data_entry (added_date, id, table_id, user_id, district_id) FROM stdin;
\.


--
-- TOC entry 2828 (class 0 OID 61814)
-- Dependencies: 285
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2016-11-23 14:58:15.612944+05:30	1	Province object	1		7	1
2	2016-11-23 15:00:06.584106+05:30	1	Colombo	1		8	1
3	2016-11-23 15:17:48.666996+05:30	2	Gampaha	1		8	1
4	2016-11-23 15:18:03.321282+05:30	3	Kaluthara	1		8	1
5	2016-11-23 15:18:16.561101+05:30	3	Kalutara	2	Changed name.	8	1
\.


--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 284
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 5, true);


--
-- TOC entry 2814 (class 0 OID 61700)
-- Dependencies: 271
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	base_line	province
8	base_line	district
9	base_line	bmfpubmf
\.


--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 270
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 9, true);


--
-- TOC entry 2812 (class 0 OID 53664)
-- Dependencies: 269
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-11-23 14:28:30.453078+05:30
2	auth	0001_initial	2016-11-23 14:28:30.831747+05:30
3	admin	0001_initial	2016-11-23 14:28:31.047774+05:30
4	contenttypes	0002_remove_content_type_name	2016-11-23 14:28:31.374727+05:30
5	auth	0002_alter_permission_name_max_length	2016-11-23 14:28:31.422043+05:30
6	auth	0003_alter_user_email_max_length	2016-11-23 14:28:31.469845+05:30
7	auth	0004_alter_user_username_opts	2016-11-23 14:28:31.502607+05:30
8	auth	0005_alter_user_last_login_null	2016-11-23 14:28:31.555311+05:30
9	auth	0006_require_contenttypes_0002	2016-11-23 14:28:31.561+05:30
10	sessions	0001_initial	2016-11-23 14:28:31.606436+05:30
11	base_line	0001_initial	2016-11-23 15:20:07.321994+05:30
\.


--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 268
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: health; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 11, true);


--
-- TOC entry 2829 (class 0 OID 61836)
-- Dependencies: 286
-- Data for Name: django_session; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
d9060jjj2mqgjy6ma1d19jx132vvgm34	MjA3OTg5ZGY2OTI2NDFhNDlhNjFhY2U4YzQyNGFkMmRhZmY3YjFjMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhlZDVhZjJkYTdiNTI2NTk1NDI1ODIxMGY2MTNlMDQ0ZGIzNDY1NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-07 14:56:23.70156+05:30
\.


--
-- TOC entry 2741 (class 0 OID 45361)
-- Dependencies: 198
-- Data for Name: geo_line; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY geo_line (id, assest_type, geon) FROM stdin;
\.


--
-- TOC entry 2743 (class 0 OID 45366)
-- Dependencies: 200
-- Data for Name: geo_point; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY geo_point (id, assest_type, geon) FROM stdin;
\.


--
-- TOC entry 2745 (class 0 OID 45371)
-- Dependencies: 202
-- Data for Name: geo_polygon; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY geo_polygon (id, assest_type, geon) FROM stdin;
\.


--
-- TOC entry 2747 (class 0 OID 45379)
-- Dependencies: 204
-- Data for Name: sector_tabel_col; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY sector_tabel_col (id, sector_tabel_id, col_name, value, data_type, lmu, lmd, created_date, data_entry_id, district_id) FROM stdin;
\.


--
-- TOC entry 2749 (class 0 OID 45387)
-- Dependencies: 206
-- Data for Name: sector_table; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY sector_table (id, name, description, table_type) FROM stdin;
\.


--
-- TOC entry 2751 (class 0 OID 45395)
-- Dependencies: 208
-- Data for Name: user_role_permission; Type: TABLE DATA; Schema: health; Owner: postgres
--

COPY user_role_permission (id, user_role_id, sector_property_id, permission_type_id) FROM stdin;
\.


SET search_path = public, pg_catalog;

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 224
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_STRUCTURE_id_seq"', 1, false);


--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 225
-- Name: BUC_MAR_SUPPLIES_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_SUPPLIES_id_seq"', 1, false);


--
-- TOC entry 2769 (class 0 OID 45451)
-- Dependencies: 226
-- Data for Name: DisasterType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "DisasterType" ("Id", "Name", "Description") FROM stdin;
\.


--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 227
-- Name: DisasterType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DisasterType_Id_seq"', 1, false);


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 229
-- Name: District_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"District_Id_seq"', 3, true);


--
-- TOC entry 2773 (class 0 OID 45467)
-- Dependencies: 230
-- Data for Name: Division; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Division" ("Id", "DistrictId", "Name") FROM stdin;
\.


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 231
-- Name: Division_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Division_Id_seq"', 1, false);


--
-- TOC entry 2775 (class 0 OID 45475)
-- Dependencies: 232
-- Data for Name: EffectedArea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "EffectedArea" ("IncidentId", "DisasterId", "ProvinceId") FROM stdin;
\.


--
-- TOC entry 2776 (class 0 OID 45478)
-- Dependencies: 233
-- Data for Name: GramaNiladhari; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "GramaNiladhari" ("Id", "DivisionId", "Name") FROM stdin;
\.


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 234
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"GramaNiladhari_Id_seq"', 1, false);


--
-- TOC entry 2778 (class 0 OID 45486)
-- Dependencies: 235
-- Data for Name: IncidentReport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "IncidentReport" ("Id", "DisasterTypeId", "ReportedDateTime", "Description") FROM stdin;
\.


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 236
-- Name: IncidentReport_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"IncidentReport_Id_seq"', 1, false);


--
-- TOC entry 2780 (class 0 OID 45494)
-- Dependencies: 237
-- Data for Name: PermissionType; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "PermissionType" ("Id", "Name", "Description") FROM stdin;
\.


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 238
-- Name: PermissionType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"PermissionType_Id_seq"', 1, false);


--
-- TOC entry 2782 (class 0 OID 45502)
-- Dependencies: 239
-- Data for Name: Province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Province" ("Id", "Name") FROM stdin;
1	Western
\.


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 240
-- Name: Province_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Province_Id_seq"', 1, true);


--
-- TOC entry 2784 (class 0 OID 45510)
-- Dependencies: 241
-- Data for Name: Sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Sector" ("Id", "Name", "Description", "CreatedDate") FROM stdin;
\.


--
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 242
-- Name: Sector_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Sector_Id_seq"', 1, false);


--
-- TOC entry 2786 (class 0 OID 45518)
-- Dependencies: 243
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "User" ("Id", "RoleId", "SectorId", "FirstName", "LastName", "UserName", "Password", "Email", "ContactNo", "NIC", "DesignationId") FROM stdin;
\.


--
-- TOC entry 2787 (class 0 OID 45524)
-- Dependencies: 244
-- Data for Name: UserDesignation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "UserDesignation" ("Id", "Name", "Description") FROM stdin;
\.


--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 245
-- Name: UserDesignation_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"UserDesignation_Id_seq"', 1, false);


--
-- TOC entry 2789 (class 0 OID 45532)
-- Dependencies: 246
-- Data for Name: UserRole; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "UserRole" ("Id", "RoleName", "Description") FROM stdin;
\.


--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 247
-- Name: UserRoles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"UserRoles_Id_seq"', 1, false);


--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 248
-- Name: User_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"User_Id_seq"', 1, false);


--
-- TOC entry 2799 (class 0 OID 53535)
-- Dependencies: 256
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 255
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2801 (class 0 OID 53545)
-- Dependencies: 258
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 257
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2797 (class 0 OID 53525)
-- Dependencies: 254
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
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 253
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 18, true);


--
-- TOC entry 2803 (class 0 OID 53555)
-- Dependencies: 260
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 2805 (class 0 OID 53565)
-- Dependencies: 262
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 261
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 259
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- TOC entry 2807 (class 0 OID 53575)
-- Dependencies: 264
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 263
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2771 (class 0 OID 45459)
-- Dependencies: 228
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY district (id, province_id, name) FROM stdin;
1	1	Colombo
2	1	Gampaha
3	1	Kalutara
\.


--
-- TOC entry 2809 (class 0 OID 53629)
-- Dependencies: 266
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 265
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 2795 (class 0 OID 53515)
-- Dependencies: 252
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
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 251
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 6, true);


--
-- TOC entry 2793 (class 0 OID 53500)
-- Dependencies: 250
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
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 249
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 10, true);


--
-- TOC entry 2810 (class 0 OID 53651)
-- Dependencies: 267
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


SET search_path = "WaterSupply", pg_catalog;

--
-- TOC entry 2431 (class 2606 OID 45598)
-- Name: AssestType_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "AssestType"
    ADD CONSTRAINT "AssestType_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2433 (class 2606 OID 45600)
-- Name: GeoLine_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoLine"
    ADD CONSTRAINT "GeoLine_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2435 (class 2606 OID 45602)
-- Name: GeoPoint_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoPoint"
    ADD CONSTRAINT "GeoPoint_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2437 (class 2606 OID 45604)
-- Name: GeoPolygon_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoPolygon"
    ADD CONSTRAINT "GeoPolygon_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2439 (class 2606 OID 45606)
-- Name: SectorTabelCol_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "SectorTabelCol"
    ADD CONSTRAINT "SectorTabelCol_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2441 (class 2606 OID 45608)
-- Name: SectorTable_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "SectorTable"
    ADD CONSTRAINT "SectorTable_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2443 (class 2606 OID 45610)
-- Name: UserRolePermission_pkey; Type: CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "UserRolePermission"
    ADD CONSTRAINT "UserRolePermission_pkey" PRIMARY KEY ("Id");


SET search_path = health, pg_catalog;

--
-- TOC entry 2417 (class 2606 OID 45576)
-- Name: DataEntry_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY data_entry
    ADD CONSTRAINT "DataEntry_pkey" PRIMARY KEY (id);


--
-- TOC entry 2419 (class 2606 OID 45578)
-- Name: GeoLine_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_line
    ADD CONSTRAINT "GeoLine_pkey" PRIMARY KEY (id);


--
-- TOC entry 2421 (class 2606 OID 45580)
-- Name: GeoPoint_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_point
    ADD CONSTRAINT "GeoPoint_pkey" PRIMARY KEY (id);


--
-- TOC entry 2423 (class 2606 OID 45582)
-- Name: GeoPolygon_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_polygon
    ADD CONSTRAINT "GeoPolygon_pkey" PRIMARY KEY (id);


--
-- TOC entry 2425 (class 2606 OID 45584)
-- Name: SectorTabelCol_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col
    ADD CONSTRAINT "SectorTabelCol_pkey" PRIMARY KEY (id);


--
-- TOC entry 2427 (class 2606 OID 45586)
-- Name: SectorTable_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_table
    ADD CONSTRAINT "SectorTable_pkey" PRIMARY KEY (id);


--
-- TOC entry 2429 (class 2606 OID 45588)
-- Name: UserRolePermission_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission
    ADD CONSTRAINT "UserRolePermission_pkey" PRIMARY KEY (id);


--
-- TOC entry 2403 (class 2606 OID 45574)
-- Name: assest_type_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY assest_type
    ADD CONSTRAINT assest_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2528 (class 2606 OID 61727)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2534 (class 2606 OID 61737)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2536 (class 2606 OID 61735)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2530 (class 2606 OID 61725)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2523 (class 2606 OID 61717)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2525 (class 2606 OID 61715)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2545 (class 2606 OID 61755)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2547 (class 2606 OID 61757)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2538 (class 2606 OID 61745)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2551 (class 2606 OID 61765)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2553 (class 2606 OID 61767)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2541 (class 2606 OID 61747)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2557 (class 2606 OID 61823)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2518 (class 2606 OID 61707)
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 2520 (class 2606 OID 61705)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2516 (class 2606 OID 53672)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2560 (class 2606 OID 61843)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2411 (class 2606 OID 45590)
-- Name: pk_BUC_MAR_OASSETS; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_oasset
    ADD CONSTRAINT "pk_BUC_MAR_OASSETS" PRIMARY KEY (id);


--
-- TOC entry 2413 (class 2606 OID 45592)
-- Name: pk_BUC_MAR_STRUCTURE_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_structure
    ADD CONSTRAINT "pk_BUC_MAR_STRUCTURE_id" PRIMARY KEY (id);


--
-- TOC entry 2407 (class 2606 OID 45594)
-- Name: pk_bmf_pvt_mf_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pvt_mf
    ADD CONSTRAINT pk_bmf_pvt_mf_id PRIMARY KEY (id);


--
-- TOC entry 2409 (class 2606 OID 53510)
-- Name: pk_buc_mar_mequipments; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_mequipment
    ADD CONSTRAINT pk_buc_mar_mequipments PRIMARY KEY (id);


--
-- TOC entry 2415 (class 2606 OID 53512)
-- Name: pk_buc_mar_supplies_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_supply
    ADD CONSTRAINT pk_buc_mar_supplies_id PRIMARY KEY (id);


--
-- TOC entry 2405 (class 2606 OID 45596)
-- Name: pk_id; Type: CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pub_mf
    ADD CONSTRAINT pk_id PRIMARY KEY (id);


SET search_path = public, pg_catalog;

--
-- TOC entry 2445 (class 2606 OID 45612)
-- Name: DisasterType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "DisasterType"
    ADD CONSTRAINT "DisasterType_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2447 (class 2606 OID 45614)
-- Name: District_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district
    ADD CONSTRAINT "District_pkey" PRIMARY KEY (id);


--
-- TOC entry 2449 (class 2606 OID 45616)
-- Name: Division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Division"
    ADD CONSTRAINT "Division_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2451 (class 2606 OID 45618)
-- Name: EffectedArea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EffectedArea"
    ADD CONSTRAINT "EffectedArea_pkey" PRIMARY KEY ("IncidentId", "DisasterId", "ProvinceId");


--
-- TOC entry 2453 (class 2606 OID 45620)
-- Name: GramaNiladhari_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "GramaNiladhari"
    ADD CONSTRAINT "GramaNiladhari_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2455 (class 2606 OID 45622)
-- Name: IncidentReport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "IncidentReport"
    ADD CONSTRAINT "IncidentReport_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2457 (class 2606 OID 45624)
-- Name: PermissionType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "PermissionType"
    ADD CONSTRAINT "PermissionType_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2459 (class 2606 OID 45626)
-- Name: Province_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Province"
    ADD CONSTRAINT "Province_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2461 (class 2606 OID 45628)
-- Name: Sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Sector"
    ADD CONSTRAINT "Sector_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2465 (class 2606 OID 45630)
-- Name: UserDesignation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserDesignation"
    ADD CONSTRAINT "UserDesignation_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2467 (class 2606 OID 45632)
-- Name: UserRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "UserRole"
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2463 (class 2606 OID 45634)
-- Name: User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2481 (class 2606 OID 53542)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2487 (class 2606 OID 53552)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2489 (class 2606 OID 53550)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2483 (class 2606 OID 53540)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2476 (class 2606 OID 53532)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2478 (class 2606 OID 53530)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2498 (class 2606 OID 53570)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2500 (class 2606 OID 53572)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2491 (class 2606 OID 53560)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2504 (class 2606 OID 53580)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2506 (class 2606 OID 53582)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2494 (class 2606 OID 53562)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2510 (class 2606 OID 53638)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2471 (class 2606 OID 53522)
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 2473 (class 2606 OID 53520)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2469 (class 2606 OID 53508)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2513 (class 2606 OID 53658)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


SET search_path = health, pg_catalog;

--
-- TOC entry 2526 (class 1259 OID 61774)
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2531 (class 1259 OID 61785)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2532 (class 1259 OID 61786)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2521 (class 1259 OID 61773)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2542 (class 1259 OID 61799)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2543 (class 1259 OID 61798)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2548 (class 1259 OID 61811)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2549 (class 1259 OID 61810)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2539 (class 1259 OID 61787)
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2554 (class 1259 OID 61834)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2555 (class 1259 OID 61835)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2558 (class 1259 OID 61844)
-- Name: django_session_de54fa62; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2561 (class 1259 OID 61845)
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: health; Owner: postgres
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


SET search_path = public, pg_catalog;

--
-- TOC entry 2479 (class 1259 OID 53589)
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2484 (class 1259 OID 53600)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2485 (class 1259 OID 53601)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2474 (class 1259 OID 53588)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2495 (class 1259 OID 53614)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2496 (class 1259 OID 53613)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2501 (class 1259 OID 53626)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2502 (class 1259 OID 53625)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2492 (class 1259 OID 53602)
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2507 (class 1259 OID 53649)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2508 (class 1259 OID 53650)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2511 (class 1259 OID 53659)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2514 (class 1259 OID 53660)
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


SET search_path = "WaterSupply", pg_catalog;

--
-- TOC entry 2581 (class 2606 OID 45705)
-- Name: FK_PermissionType_Id_On_PermissionType_UserRolePermission_Permi; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "UserRolePermission"
    ADD CONSTRAINT "FK_PermissionType_Id_On_PermissionType_UserRolePermission_Permi" FOREIGN KEY ("PermissionTypeId") REFERENCES public."PermissionType"("Id");


--
-- TOC entry 2579 (class 2606 OID 45710)
-- Name: FK_Public_User_Id_On_WaterSupply_SectorTabelCol_LMU; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "SectorTabelCol"
    ADD CONSTRAINT "FK_Public_User_Id_On_WaterSupply_SectorTabelCol_LMU" FOREIGN KEY ("LMU") REFERENCES public."User"("Id");


--
-- TOC entry 2582 (class 2606 OID 45715)
-- Name: FK_UserRoles_Id_On_UserRolePermission_UserRoleId; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "UserRolePermission"
    ADD CONSTRAINT "FK_UserRoles_Id_On_UserRolePermission_UserRoleId" FOREIGN KEY ("UserRoleId") REFERENCES public."UserRole"("Id");


--
-- TOC entry 2576 (class 2606 OID 45720)
-- Name: FK_WaterSupply_AssestType_Id_On_WaterSupply_GeoLine_AssestType; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoLine"
    ADD CONSTRAINT "FK_WaterSupply_AssestType_Id_On_WaterSupply_GeoLine_AssestType" FOREIGN KEY ("AssestType") REFERENCES "AssestType"("Id");


--
-- TOC entry 2578 (class 2606 OID 45725)
-- Name: FK_WaterSupply_AssestType_Id_On_WaterSupply_GeoPolygon_AssestTy; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoPolygon"
    ADD CONSTRAINT "FK_WaterSupply_AssestType_Id_On_WaterSupply_GeoPolygon_AssestTy" FOREIGN KEY ("AssestType") REFERENCES "AssestType"("Id");


--
-- TOC entry 2577 (class 2606 OID 45730)
-- Name: FK_WaterSupply_AssestType_Id_On_WaterSupply_GeoPolygon_AssestTy; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "GeoPoint"
    ADD CONSTRAINT "FK_WaterSupply_AssestType_Id_On_WaterSupply_GeoPolygon_AssestTy" FOREIGN KEY ("AssestType") REFERENCES "AssestType"("Id");


--
-- TOC entry 2583 (class 2606 OID 45735)
-- Name: FK_WaterSupply_SectorTabelCol_Id_On_WaterSupply_UserRolePermiss; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "UserRolePermission"
    ADD CONSTRAINT "FK_WaterSupply_SectorTabelCol_Id_On_WaterSupply_UserRolePermiss" FOREIGN KEY ("SectorPropertyId") REFERENCES "SectorTabelCol"("Id");


--
-- TOC entry 2580 (class 2606 OID 45740)
-- Name: FK_WaterSupply_SectorTable_Id_On_WaterSupply_SectorTabelCol_Sec; Type: FK CONSTRAINT; Schema: WaterSupply; Owner: postgres
--

ALTER TABLE ONLY "SectorTabelCol"
    ADD CONSTRAINT "FK_WaterSupply_SectorTable_Id_On_WaterSupply_SectorTabelCol_Sec" FOREIGN KEY ("SectorTabelId") REFERENCES "SectorTable"("Id");


SET search_path = health, pg_catalog;

--
-- TOC entry 2568 (class 2606 OID 45635)
-- Name: FK_Health_AssestType_Id_On_Health_GeoLine_AssestType; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_line
    ADD CONSTRAINT "FK_Health_AssestType_Id_On_Health_GeoLine_AssestType" FOREIGN KEY (assest_type) REFERENCES assest_type(id);


--
-- TOC entry 2569 (class 2606 OID 45640)
-- Name: FK_Health_AssestType_Id_On_Health_GeoPoint_AssestType; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_point
    ADD CONSTRAINT "FK_Health_AssestType_Id_On_Health_GeoPoint_AssestType" FOREIGN KEY (assest_type) REFERENCES assest_type(id);


--
-- TOC entry 2570 (class 2606 OID 45645)
-- Name: FK_Health_AssestType_Id_On_Health_GeoPolygon_AssestType; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY geo_polygon
    ADD CONSTRAINT "FK_Health_AssestType_Id_On_Health_GeoPolygon_AssestType" FOREIGN KEY (assest_type) REFERENCES assest_type(id);


--
-- TOC entry 2573 (class 2606 OID 45650)
-- Name: FK_Health_SectorTabelCol_Id_On_Health_UserRolePermission_Sector; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission
    ADD CONSTRAINT "FK_Health_SectorTabelCol_Id_On_Health_UserRolePermission_Sector" FOREIGN KEY (sector_property_id) REFERENCES sector_tabel_col(id);


--
-- TOC entry 2571 (class 2606 OID 45655)
-- Name: FK_Health_SectorTable_Id_On_Health_SectorTabelCol_SectorTabelId; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col
    ADD CONSTRAINT "FK_Health_SectorTable_Id_On_Health_SectorTabelCol_SectorTabelId" FOREIGN KEY (sector_tabel_id) REFERENCES sector_table(id);


--
-- TOC entry 2574 (class 2606 OID 45660)
-- Name: FK_PermissionType_Id_On_UserRolePermission_PermissionTypeId; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission
    ADD CONSTRAINT "FK_PermissionType_Id_On_UserRolePermission_PermissionTypeId" FOREIGN KEY (permission_type_id) REFERENCES public."PermissionType"("Id");


--
-- TOC entry 2572 (class 2606 OID 45665)
-- Name: FK_Public_User_Id_On_Health_SectorTabelCol_LMU; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY sector_tabel_col
    ADD CONSTRAINT "FK_Public_User_Id_On_Health_SectorTabelCol_LMU" FOREIGN KEY (sector_tabel_id) REFERENCES public."User"("Id");


--
-- TOC entry 2575 (class 2606 OID 45670)
-- Name: FK_UserRoles_UserRoleId_On_Health_UserRolePermission_UserRoleId; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY user_role_permission
    ADD CONSTRAINT "FK_UserRoles_UserRoleId_On_Health_UserRolePermission_UserRoleId" FOREIGN KEY (user_role_id) REFERENCES public."UserRole"("Id");


--
-- TOC entry 2603 (class 2606 OID 61768)
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2604 (class 2606 OID 61775)
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2605 (class 2606 OID 61780)
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2609 (class 2606 OID 61805)
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2607 (class 2606 OID 61793)
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2606 (class 2606 OID 61788)
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2608 (class 2606 OID 61800)
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2610 (class 2606 OID 61824)
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2611 (class 2606 OID 61829)
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2563 (class 2606 OID 45675)
-- Name: fk_BMF_PVT_MF; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pvt_mf
    ADD CONSTRAINT "fk_BMF_PVT_MF" FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2562 (class 2606 OID 45680)
-- Name: fk_district_BMF_PUB_MF; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY bmf_pub_mf
    ADD CONSTRAINT "fk_district_BMF_PUB_MF" FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2564 (class 2606 OID 45685)
-- Name: fk_district_BUC_MAR_MEQUIPMENT; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_mequipment
    ADD CONSTRAINT "fk_district_BUC_MAR_MEQUIPMENT" FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2565 (class 2606 OID 45690)
-- Name: fk_district_BUC_MAR_OASSETS; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_oasset
    ADD CONSTRAINT "fk_district_BUC_MAR_OASSETS" FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2566 (class 2606 OID 45695)
-- Name: fk_district_BUC_MAR_STRUCTURE; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_structure
    ADD CONSTRAINT "fk_district_BUC_MAR_STRUCTURE" FOREIGN KEY (district) REFERENCES public.district(id);


--
-- TOC entry 2567 (class 2606 OID 45700)
-- Name: fk_district_BUC_MAR_SUPPLIES; Type: FK CONSTRAINT; Schema: health; Owner: postgres
--

ALTER TABLE ONLY buc_mar_supply
    ADD CONSTRAINT "fk_district_BUC_MAR_SUPPLIES" FOREIGN KEY (district) REFERENCES public.district(id);


SET search_path = public, pg_catalog;

--
-- TOC entry 2586 (class 2606 OID 45745)
-- Name: FK_DisasterType_Id_On_EffectedArea_DisasterId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EffectedArea"
    ADD CONSTRAINT "FK_DisasterType_Id_On_EffectedArea_DisasterId" FOREIGN KEY ("DisasterId") REFERENCES "DisasterType"("Id");


--
-- TOC entry 2590 (class 2606 OID 45750)
-- Name: FK_DisasterType_Id_On_IncidentReport_DisasterTypeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "IncidentReport"
    ADD CONSTRAINT "FK_DisasterType_Id_On_IncidentReport_DisasterTypeId" FOREIGN KEY ("DisasterTypeId") REFERENCES "DisasterType"("Id");


--
-- TOC entry 2585 (class 2606 OID 45755)
-- Name: FK_District_Id_On_Division_DistrictId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Division"
    ADD CONSTRAINT "FK_District_Id_On_Division_DistrictId" FOREIGN KEY ("DistrictId") REFERENCES district(id);


--
-- TOC entry 2589 (class 2606 OID 45760)
-- Name: FK_Division_Id_On_GramaNiladhari_DivisionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "GramaNiladhari"
    ADD CONSTRAINT "FK_Division_Id_On_GramaNiladhari_DivisionId" FOREIGN KEY ("DivisionId") REFERENCES "Division"("Id");


--
-- TOC entry 2587 (class 2606 OID 45765)
-- Name: FK_IncidentReport_Id_On_EffectedArea_IncidentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EffectedArea"
    ADD CONSTRAINT "FK_IncidentReport_Id_On_EffectedArea_IncidentId" FOREIGN KEY ("IncidentId") REFERENCES "IncidentReport"("Id");


--
-- TOC entry 2584 (class 2606 OID 45770)
-- Name: FK_Province_Id_On_District_ProvinceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district
    ADD CONSTRAINT "FK_Province_Id_On_District_ProvinceId" FOREIGN KEY (province_id) REFERENCES "Province"("Id");


--
-- TOC entry 2588 (class 2606 OID 45775)
-- Name: FK_Province_Id_On_EffectedArea_ProvinceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "EffectedArea"
    ADD CONSTRAINT "FK_Province_Id_On_EffectedArea_ProvinceId" FOREIGN KEY ("ProvinceId") REFERENCES "Province"("Id");


--
-- TOC entry 2591 (class 2606 OID 45780)
-- Name: FK_Sector_Id_On_User_SectorId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "User"
    ADD CONSTRAINT "FK_Sector_Id_On_User_SectorId" FOREIGN KEY ("SectorId") REFERENCES "Sector"("Id");


--
-- TOC entry 2592 (class 2606 OID 45785)
-- Name: FK_UserDesignation_Id_On_User_DesignationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "User"
    ADD CONSTRAINT "FK_UserDesignation_Id_On_User_DesignationId" FOREIGN KEY ("DesignationId") REFERENCES "UserDesignation"("Id");


--
-- TOC entry 2593 (class 2606 OID 45790)
-- Name: FK_UserRoles_Id_On_User_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "User"
    ADD CONSTRAINT "FK_UserRoles_Id_On_User_RoleId" FOREIGN KEY ("RoleId") REFERENCES "UserRole"("Id");


--
-- TOC entry 2594 (class 2606 OID 53583)
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2595 (class 2606 OID 53590)
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2596 (class 2606 OID 53595)
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2600 (class 2606 OID 53620)
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2598 (class 2606 OID 53608)
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2597 (class 2606 OID 53603)
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2599 (class 2606 OID 53615)
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2601 (class 2606 OID 53639)
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2602 (class 2606 OID 53644)
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2836 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-11-24 11:58:29 +0530

--
-- PostgreSQL database dump complete
--

