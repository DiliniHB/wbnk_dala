--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-12-08 17:29:10 +0530

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 243 (class 1259 OID 361300)
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
-- TOC entry 244 (class 1259 OID 361302)
-- Name: BUC_MAR_SUPPLIES_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "BUC_MAR_SUPPLIES_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "BUC_MAR_SUPPLIES_id_seq" OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 245 (class 1259 OID 361304)
-- Name: disaster_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE disaster_type (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE disaster_type OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 361310)
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
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 246
-- Name: DisasterType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "DisasterType_Id_seq" OWNED BY disaster_type.id;


--
-- TOC entry 247 (class 1259 OID 361312)
-- Name: district; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE district (
    id integer NOT NULL,
    province_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE district OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 361315)
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
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 248
-- Name: District_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "District_Id_seq" OWNED BY district.id;


--
-- TOC entry 249 (class 1259 OID 361317)
-- Name: division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE division (
    id integer NOT NULL,
    district_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE division OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 361323)
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
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 250
-- Name: Division_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Division_Id_seq" OWNED BY division.id;


--
-- TOC entry 252 (class 1259 OID 361328)
-- Name: grama_niladhari; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE grama_niladhari (
    id integer NOT NULL,
    division_id bigint NOT NULL,
    name character varying(255)
);


ALTER TABLE grama_niladhari OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 361334)
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
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 253
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "GramaNiladhari_Id_seq" OWNED BY grama_niladhari.id;


--
-- TOC entry 254 (class 1259 OID 361336)
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
-- TOC entry 255 (class 1259 OID 361342)
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
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 255
-- Name: IncidentReport_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "IncidentReport_Id_seq" OWNED BY incident_report.id;


--
-- TOC entry 256 (class 1259 OID 361344)
-- Name: permission_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE permission_type (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE permission_type OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 361350)
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
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 257
-- Name: PermissionType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "PermissionType_Id_seq" OWNED BY permission_type.id;


--
-- TOC entry 258 (class 1259 OID 361352)
-- Name: province; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE province (
    id integer NOT NULL,
    name character varying(255)
);


ALTER TABLE province OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 361355)
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
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 259
-- Name: Province_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Province_Id_seq" OWNED BY province.id;


--
-- TOC entry 260 (class 1259 OID 361357)
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
-- TOC entry 261 (class 1259 OID 361363)
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
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 261
-- Name: Sector_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Sector_Id_seq" OWNED BY sector.id;


--
-- TOC entry 263 (class 1259 OID 361371)
-- Name: user_designation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_designation (
    id integer NOT NULL,
    name character varying(255),
    description text
);


ALTER TABLE user_designation OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 361377)
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
-- TOC entry 2969 (class 0 OID 0)
-- Dependencies: 264
-- Name: UserDesignation_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "UserDesignation_Id_seq" OWNED BY user_designation.id;


--
-- TOC entry 265 (class 1259 OID 361379)
-- Name: user_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_role (
    id integer NOT NULL,
    role_name character varying(255),
    description text
);


ALTER TABLE user_role OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 361385)
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
-- TOC entry 2970 (class 0 OID 0)
-- Dependencies: 266
-- Name: UserRoles_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "UserRoles_Id_seq" OWNED BY user_role.id;


--
-- TOC entry 262 (class 1259 OID 361365)
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
-- TOC entry 267 (class 1259 OID 361387)
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
-- TOC entry 2971 (class 0 OID 0)
-- Dependencies: 267
-- Name: User_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "User_Id_seq" OWNED BY "user".id;


--
-- TOC entry 268 (class 1259 OID 361389)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 361392)
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
-- TOC entry 2972 (class 0 OID 0)
-- Dependencies: 269
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 270 (class 1259 OID 361394)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 361397)
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
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 271
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 272 (class 1259 OID 361399)
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
-- TOC entry 273 (class 1259 OID 361402)
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
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 273
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 274 (class 1259 OID 361404)
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
-- TOC entry 275 (class 1259 OID 361407)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- TOC entry 276 (class 1259 OID 361410)
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
-- TOC entry 2975 (class 0 OID 0)
-- Dependencies: 276
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 277 (class 1259 OID 361412)
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
-- TOC entry 2976 (class 0 OID 0)
-- Dependencies: 277
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 278 (class 1259 OID 361414)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 361417)
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
-- TOC entry 2977 (class 0 OID 0)
-- Dependencies: 279
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 280 (class 1259 OID 361419)
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
-- TOC entry 281 (class 1259 OID 361426)
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
-- TOC entry 2978 (class 0 OID 0)
-- Dependencies: 281
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 282 (class 1259 OID 361428)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- TOC entry 283 (class 1259 OID 361431)
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
-- TOC entry 2979 (class 0 OID 0)
-- Dependencies: 283
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 284 (class 1259 OID 361433)
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
-- TOC entry 285 (class 1259 OID 361439)
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
-- TOC entry 2980 (class 0 OID 0)
-- Dependencies: 285
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 286 (class 1259 OID 361441)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 361325)
-- Name: effected_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE effected_area (
    incident_id bigint NOT NULL,
    disaster_id bigint NOT NULL,
    province_id bigint NOT NULL
);


ALTER TABLE effected_area OWNER TO postgres;

--
-- TOC entry 2697 (class 2604 OID 361486)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2698 (class 2604 OID 361487)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2699 (class 2604 OID 361488)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2700 (class 2604 OID 361489)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2701 (class 2604 OID 361490)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2702 (class 2604 OID 361491)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2686 (class 2604 OID 361476)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY disaster_type ALTER COLUMN id SET DEFAULT nextval('"DisasterType_Id_seq"'::regclass);


--
-- TOC entry 2687 (class 2604 OID 361492)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district ALTER COLUMN id SET DEFAULT nextval('"District_Id_seq"'::regclass);


--
-- TOC entry 2688 (class 2604 OID 361477)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY division ALTER COLUMN id SET DEFAULT nextval('"Division_Id_seq"'::regclass);


--
-- TOC entry 2703 (class 2604 OID 361493)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2705 (class 2604 OID 361494)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2706 (class 2604 OID 361495)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2689 (class 2604 OID 361478)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grama_niladhari ALTER COLUMN id SET DEFAULT nextval('"GramaNiladhari_Id_seq"'::regclass);


--
-- TOC entry 2690 (class 2604 OID 361479)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_report ALTER COLUMN id SET DEFAULT nextval('"IncidentReport_Id_seq"'::regclass);


--
-- TOC entry 2691 (class 2604 OID 361480)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permission_type ALTER COLUMN id SET DEFAULT nextval('"PermissionType_Id_seq"'::regclass);


--
-- TOC entry 2692 (class 2604 OID 361481)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY province ALTER COLUMN id SET DEFAULT nextval('"Province_Id_seq"'::regclass);


--
-- TOC entry 2693 (class 2604 OID 361482)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sector ALTER COLUMN id SET DEFAULT nextval('"Sector_Id_seq"'::regclass);


--
-- TOC entry 2694 (class 2604 OID 361483)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('"User_Id_seq"'::regclass);


--
-- TOC entry 2695 (class 2604 OID 361484)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_designation ALTER COLUMN id SET DEFAULT nextval('"UserDesignation_Id_seq"'::regclass);


--
-- TOC entry 2696 (class 2604 OID 361485)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role ALTER COLUMN id SET DEFAULT nextval('"UserRoles_Id_seq"'::regclass);


--
-- TOC entry 2981 (class 0 OID 0)
-- Dependencies: 243
-- Name: BUC_MAR_STRUCTURE_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_STRUCTURE_id_seq"', 1, false);


--
-- TOC entry 2982 (class 0 OID 0)
-- Dependencies: 244
-- Name: BUC_MAR_SUPPLIES_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"BUC_MAR_SUPPLIES_id_seq"', 1, false);


--
-- TOC entry 2983 (class 0 OID 0)
-- Dependencies: 246
-- Name: DisasterType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"DisasterType_Id_seq"', 1, true);


--
-- TOC entry 2984 (class 0 OID 0)
-- Dependencies: 248
-- Name: District_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"District_Id_seq"', 3, true);


--
-- TOC entry 2985 (class 0 OID 0)
-- Dependencies: 250
-- Name: Division_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Division_Id_seq"', 1, false);


--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 253
-- Name: GramaNiladhari_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"GramaNiladhari_Id_seq"', 1, false);


--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 255
-- Name: IncidentReport_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"IncidentReport_Id_seq"', 1, true);


--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 257
-- Name: PermissionType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"PermissionType_Id_seq"', 1, false);


--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 259
-- Name: Province_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Province_Id_seq"', 1, true);


--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 261
-- Name: Sector_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Sector_Id_seq"', 1, false);


--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 264
-- Name: UserDesignation_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"UserDesignation_Id_seq"', 1, false);


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 266
-- Name: UserRoles_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"UserRoles_Id_seq"', 1, false);


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 267
-- Name: User_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"User_Id_seq"', 1, false);


--
-- TOC entry 2936 (class 0 OID 361389)
-- Dependencies: 268
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 269
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2938 (class 0 OID 361394)
-- Dependencies: 270
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 271
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2940 (class 0 OID 361399)
-- Dependencies: 272
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
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 273
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 18, true);


--
-- TOC entry 2942 (class 0 OID 361404)
-- Dependencies: 274
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 2943 (class 0 OID 361407)
-- Dependencies: 275
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 276
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 277
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- TOC entry 2946 (class 0 OID 361414)
-- Dependencies: 278
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 279
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2913 (class 0 OID 361304)
-- Dependencies: 245
-- Data for Name: disaster_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY disaster_type (id, name, description) FROM stdin;
1	Flood	
\.


--
-- TOC entry 2915 (class 0 OID 361312)
-- Dependencies: 247
-- Data for Name: district; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY district (id, province_id, name) FROM stdin;
1	1	Colombo
2	1	Gampaha
3	1	Kalutara
\.


--
-- TOC entry 2917 (class 0 OID 361317)
-- Dependencies: 249
-- Data for Name: division; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY division (id, district_id, name) FROM stdin;
\.


--
-- TOC entry 2948 (class 0 OID 361419)
-- Dependencies: 280
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 281
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 2950 (class 0 OID 361428)
-- Dependencies: 282
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
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 283
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 6, true);


--
-- TOC entry 2952 (class 0 OID 361433)
-- Dependencies: 284
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
-- TOC entry 3002 (class 0 OID 0)
-- Dependencies: 285
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 10, true);


--
-- TOC entry 2954 (class 0 OID 361441)
-- Dependencies: 286
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 2919 (class 0 OID 361325)
-- Dependencies: 251
-- Data for Name: effected_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY effected_area (incident_id, disaster_id, province_id) FROM stdin;
\.


--
-- TOC entry 2920 (class 0 OID 361328)
-- Dependencies: 252
-- Data for Name: grama_niladhari; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY grama_niladhari (id, division_id, name) FROM stdin;
\.


--
-- TOC entry 2922 (class 0 OID 361336)
-- Dependencies: 254
-- Data for Name: incident_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY incident_report (id, disaster_type_id, description, reported_date_time) FROM stdin;
1	1	fdvgh	2016-12-05 10:02:41
\.


--
-- TOC entry 2924 (class 0 OID 361344)
-- Dependencies: 256
-- Data for Name: permission_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY permission_type (id, name, description) FROM stdin;
\.


--
-- TOC entry 2926 (class 0 OID 361352)
-- Dependencies: 258
-- Data for Name: province; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY province (id, name) FROM stdin;
1	Western
\.


--
-- TOC entry 2928 (class 0 OID 361357)
-- Dependencies: 260
-- Data for Name: sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sector (id, name, description, created_date) FROM stdin;
\.


--
-- TOC entry 2930 (class 0 OID 361365)
-- Dependencies: 262
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "user" (id, role_id, sector_id, first_name, last_name, user_name, password, email, contact_no, nic, designation_id) FROM stdin;
\.


--
-- TOC entry 2931 (class 0 OID 361371)
-- Dependencies: 263
-- Data for Name: user_designation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_designation (id, name, description) FROM stdin;
\.


--
-- TOC entry 2933 (class 0 OID 361379)
-- Dependencies: 265
-- Data for Name: user_role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_role (id, role_name, description) FROM stdin;
\.


--
-- TOC entry 2708 (class 2606 OID 361573)
-- Name: DisasterType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY disaster_type
    ADD CONSTRAINT "DisasterType_pkey" PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 361575)
-- Name: District_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district
    ADD CONSTRAINT "District_pkey" PRIMARY KEY (id);


--
-- TOC entry 2712 (class 2606 OID 361577)
-- Name: Division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY division
    ADD CONSTRAINT "Division_pkey" PRIMARY KEY (id);


--
-- TOC entry 2714 (class 2606 OID 361579)
-- Name: EffectedArea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "EffectedArea_pkey" PRIMARY KEY (incident_id, disaster_id, province_id);


--
-- TOC entry 2716 (class 2606 OID 361581)
-- Name: GramaNiladhari_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grama_niladhari
    ADD CONSTRAINT "GramaNiladhari_pkey" PRIMARY KEY (id);


--
-- TOC entry 2718 (class 2606 OID 361583)
-- Name: IncidentReport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_report
    ADD CONSTRAINT "IncidentReport_pkey" PRIMARY KEY (id);


--
-- TOC entry 2720 (class 2606 OID 361585)
-- Name: PermissionType_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permission_type
    ADD CONSTRAINT "PermissionType_pkey" PRIMARY KEY (id);


--
-- TOC entry 2722 (class 2606 OID 361587)
-- Name: Province_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY province
    ADD CONSTRAINT "Province_pkey" PRIMARY KEY (id);


--
-- TOC entry 2724 (class 2606 OID 361589)
-- Name: Sector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sector
    ADD CONSTRAINT "Sector_pkey" PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 361591)
-- Name: UserDesignation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_designation
    ADD CONSTRAINT "UserDesignation_pkey" PRIMARY KEY (id);


--
-- TOC entry 2730 (class 2606 OID 361593)
-- Name: UserRoles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_role
    ADD CONSTRAINT "UserRoles_pkey" PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 361595)
-- Name: User_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);


--
-- TOC entry 2733 (class 2606 OID 361597)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2739 (class 2606 OID 361599)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2741 (class 2606 OID 361601)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2735 (class 2606 OID 361603)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2744 (class 2606 OID 361605)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2746 (class 2606 OID 361607)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2755 (class 2606 OID 361609)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2757 (class 2606 OID 361611)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2748 (class 2606 OID 361613)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2761 (class 2606 OID 361615)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2763 (class 2606 OID 361617)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2751 (class 2606 OID 361619)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2767 (class 2606 OID 361621)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2769 (class 2606 OID 361623)
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 2771 (class 2606 OID 361625)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2773 (class 2606 OID 361627)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2776 (class 2606 OID 361629)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2731 (class 1259 OID 361643)
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2736 (class 1259 OID 361644)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2737 (class 1259 OID 361645)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2742 (class 1259 OID 361646)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2752 (class 1259 OID 361647)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2753 (class 1259 OID 361648)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2758 (class 1259 OID 361649)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2759 (class 1259 OID 361650)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2749 (class 1259 OID 361651)
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2764 (class 1259 OID 361652)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2765 (class 1259 OID 361653)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2774 (class 1259 OID 361654)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2777 (class 1259 OID 361655)
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2780 (class 2606 OID 361811)
-- Name: FK_DisasterType_Id_On_EffectedArea_DisasterId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "FK_DisasterType_Id_On_EffectedArea_DisasterId" FOREIGN KEY (disaster_id) REFERENCES disaster_type(id);


--
-- TOC entry 2784 (class 2606 OID 361816)
-- Name: FK_DisasterType_Id_On_IncidentReport_DisasterTypeId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY incident_report
    ADD CONSTRAINT "FK_DisasterType_Id_On_IncidentReport_DisasterTypeId" FOREIGN KEY (disaster_type_id) REFERENCES disaster_type(id);


--
-- TOC entry 2779 (class 2606 OID 361821)
-- Name: FK_District_Id_On_Division_DistrictId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY division
    ADD CONSTRAINT "FK_District_Id_On_Division_DistrictId" FOREIGN KEY (district_id) REFERENCES district(id);


--
-- TOC entry 2783 (class 2606 OID 361826)
-- Name: FK_Division_Id_On_GramaNiladhari_DivisionId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY grama_niladhari
    ADD CONSTRAINT "FK_Division_Id_On_GramaNiladhari_DivisionId" FOREIGN KEY (division_id) REFERENCES division(id);


--
-- TOC entry 2781 (class 2606 OID 361831)
-- Name: FK_IncidentReport_Id_On_EffectedArea_IncidentId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "FK_IncidentReport_Id_On_EffectedArea_IncidentId" FOREIGN KEY (incident_id) REFERENCES incident_report(id);


--
-- TOC entry 2778 (class 2606 OID 361836)
-- Name: FK_Province_Id_On_District_ProvinceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY district
    ADD CONSTRAINT "FK_Province_Id_On_District_ProvinceId" FOREIGN KEY (province_id) REFERENCES province(id);


--
-- TOC entry 2782 (class 2606 OID 361841)
-- Name: FK_Province_Id_On_EffectedArea_ProvinceId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY effected_area
    ADD CONSTRAINT "FK_Province_Id_On_EffectedArea_ProvinceId" FOREIGN KEY (province_id) REFERENCES province(id);


--
-- TOC entry 2785 (class 2606 OID 361846)
-- Name: FK_Sector_Id_On_User_SectorId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "FK_Sector_Id_On_User_SectorId" FOREIGN KEY (sector_id) REFERENCES sector(id);


--
-- TOC entry 2786 (class 2606 OID 361851)
-- Name: FK_UserDesignation_Id_On_User_DesignationId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "FK_UserDesignation_Id_On_User_DesignationId" FOREIGN KEY (designation_id) REFERENCES user_designation(id);


--
-- TOC entry 2787 (class 2606 OID 361856)
-- Name: FK_UserRoles_Id_On_User_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT "FK_UserRoles_Id_On_User_RoleId" FOREIGN KEY (role_id) REFERENCES user_role(id);


--
-- TOC entry 2790 (class 2606 OID 361861)
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2788 (class 2606 OID 361866)
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2789 (class 2606 OID 361871)
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2793 (class 2606 OID 361876)
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2791 (class 2606 OID 361881)
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2792 (class 2606 OID 361886)
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2794 (class 2606 OID 361891)
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2795 (class 2606 OID 361896)
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2796 (class 2606 OID 361901)
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 8
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-12-08 17:29:11 +0530

--
-- PostgreSQL database dump complete
--

