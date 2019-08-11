--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-1.pgdg18.04+1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-1.pgdg18.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.products_connector DROP CONSTRAINT products_productfora_product_id_0be04874_fk_products_;
ALTER TABLE ONLY public.products_product DROP CONSTRAINT products_product_network_id_87bd91a8_fk_products_network_id;
ALTER TABLE ONLY public.products_product DROP CONSTRAINT products_product_category_id_9b594869_fk_products_category_id;
ALTER TABLE ONLY public.products_organization_district DROP CONSTRAINT products_organizatio_organization_id_82e2945e_fk_products_;
ALTER TABLE ONLY public.products_organization DROP CONSTRAINT products_organizatio_network_id_3ff7ae57_fk_products_;
ALTER TABLE ONLY public.products_connector DROP CONSTRAINT products_connector_organization_id_086c55a4_fk_products_;
ALTER TABLE ONLY public.products_organization_district DROP CONSTRAINT products_agency_dist_district_id_beb6d53d_fk_products_;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX public.products_productforagency_product_id_0be04874;
DROP INDEX public.products_productforagency_agency_id_77613186;
DROP INDEX public.products_product_network_id_87bd91a8;
DROP INDEX public.products_product_category_id_9b594869;
DROP INDEX public.products_agency_network_id_6bdca904;
DROP INDEX public.products_agency_district_district_id_beb6d53d;
DROP INDEX public.products_agency_district_agency_id_cdb3699a;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.products_connector DROP CONSTRAINT products_productforagency_pkey;
ALTER TABLE ONLY public.products_product DROP CONSTRAINT products_product_pkey;
ALTER TABLE ONLY public.products_network DROP CONSTRAINT products_networkofenterprises_pkey;
ALTER TABLE ONLY public.products_district DROP CONSTRAINT products_district_pkey;
ALTER TABLE ONLY public.products_category DROP CONSTRAINT products_category_pkey;
ALTER TABLE ONLY public.products_organization DROP CONSTRAINT products_agency_pkey;
ALTER TABLE ONLY public.products_organization_district DROP CONSTRAINT products_agency_district_pkey;
ALTER TABLE ONLY public.products_organization_district DROP CONSTRAINT products_agency_district_agency_id_district_id_76f4492f_uniq;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.products_product ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products_organization_district ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products_organization ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products_network ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products_district ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products_connector ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.products_category ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.products_productforagency_id_seq;
DROP SEQUENCE public.products_product_id_seq;
DROP TABLE public.products_product;
DROP SEQUENCE public.products_networkofenterprises_id_seq;
DROP TABLE public.products_network;
DROP SEQUENCE public.products_district_id_seq;
DROP TABLE public.products_district;
DROP TABLE public.products_connector;
DROP SEQUENCE public.products_category_id_seq;
DROP TABLE public.products_category;
DROP SEQUENCE public.products_agency_id_seq;
DROP TABLE public.products_organization;
DROP SEQUENCE public.products_agency_district_id_seq;
DROP TABLE public.products_organization_district;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO "testUser_db";

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO "testUser_db";

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO "testUser_db";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO "testUser_db";

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO "testUser_db";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO "testUser_db";

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO "testUser_db";

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO "testUser_db";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO "testUser_db";

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO "testUser_db";

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO "testUser_db";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO "testUser_db";

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO "testUser_db";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO "testUser_db";

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO "testUser_db";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO "testUser_db";

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO "testUser_db";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO "testUser_db";

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO "testUser_db";

--
-- Name: products_organization_district; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_organization_district (
    id integer NOT NULL,
    organization_id integer NOT NULL,
    district_id integer NOT NULL
);


ALTER TABLE public.products_organization_district OWNER TO "testUser_db";

--
-- Name: products_agency_district_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_agency_district_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_agency_district_id_seq OWNER TO "testUser_db";

--
-- Name: products_agency_district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_agency_district_id_seq OWNED BY public.products_organization_district.id;


--
-- Name: products_organization; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_organization (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    network_id integer
);


ALTER TABLE public.products_organization OWNER TO "testUser_db";

--
-- Name: products_agency_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_agency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_agency_id_seq OWNER TO "testUser_db";

--
-- Name: products_agency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_agency_id_seq OWNED BY public.products_organization.id;


--
-- Name: products_category; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.products_category OWNER TO "testUser_db";

--
-- Name: products_category_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_category_id_seq OWNER TO "testUser_db";

--
-- Name: products_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_category_id_seq OWNED BY public.products_category.id;


--
-- Name: products_connector; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_connector (
    id integer NOT NULL,
    price numeric(10,2) NOT NULL,
    organization_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.products_connector OWNER TO "testUser_db";

--
-- Name: products_district; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_district (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.products_district OWNER TO "testUser_db";

--
-- Name: products_district_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_district_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_district_id_seq OWNER TO "testUser_db";

--
-- Name: products_district_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_district_id_seq OWNED BY public.products_district.id;


--
-- Name: products_network; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_network (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.products_network OWNER TO "testUser_db";

--
-- Name: products_networkofenterprises_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_networkofenterprises_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_networkofenterprises_id_seq OWNER TO "testUser_db";

--
-- Name: products_networkofenterprises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_networkofenterprises_id_seq OWNED BY public.products_network.id;


--
-- Name: products_product; Type: TABLE; Schema: public; Owner: testUser_db
--

CREATE TABLE public.products_product (
    id integer NOT NULL,
    name character varying(120) NOT NULL,
    category_id integer,
    network_id integer
);


ALTER TABLE public.products_product OWNER TO "testUser_db";

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_product_id_seq OWNER TO "testUser_db";

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products_product.id;


--
-- Name: products_productforagency_id_seq; Type: SEQUENCE; Schema: public; Owner: testUser_db
--

CREATE SEQUENCE public.products_productforagency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_productforagency_id_seq OWNER TO "testUser_db";

--
-- Name: products_productforagency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: testUser_db
--

ALTER SEQUENCE public.products_productforagency_id_seq OWNED BY public.products_connector.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: products_category id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_category ALTER COLUMN id SET DEFAULT nextval('public.products_category_id_seq'::regclass);


--
-- Name: products_connector id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_connector ALTER COLUMN id SET DEFAULT nextval('public.products_productforagency_id_seq'::regclass);


--
-- Name: products_district id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_district ALTER COLUMN id SET DEFAULT nextval('public.products_district_id_seq'::regclass);


--
-- Name: products_network id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_network ALTER COLUMN id SET DEFAULT nextval('public.products_networkofenterprises_id_seq'::regclass);


--
-- Name: products_organization id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization ALTER COLUMN id SET DEFAULT nextval('public.products_agency_id_seq'::regclass);


--
-- Name: products_organization_district id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization_district ALTER COLUMN id SET DEFAULT nextval('public.products_agency_district_id_seq'::regclass);


--
-- Name: products_product id; Type: DEFAULT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_product ALTER COLUMN id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Предприятие	7	add_agency
26	Can change Предприятие	7	change_agency
27	Can delete Предприятие	7	delete_agency
28	Can view Предприятие	7	view_agency
29	Can add Район	8	add_district
30	Can change Район	8	change_district
31	Can delete Район	8	delete_district
32	Can view Район	8	view_district
33	Can add product for agency	9	add_productforagency
34	Can change product for agency	9	change_productforagency
35	Can delete product for agency	9	delete_productforagency
36	Can view product for agency	9	view_productforagency
37	Can add Товар	10	add_product
38	Can change Товар	10	change_product
39	Can delete Товар	10	delete_product
40	Can view Товар	10	view_product
41	Can add Категория	11	add_category
42	Can change Категория	11	change_category
43	Can delete Категория	11	delete_category
44	Can view Категория	11	view_category
45	Can add Сеть предприятий	12	add_networkofenterprises
46	Can change Сеть предприятий	12	change_networkofenterprises
47	Can delete Сеть предприятий	12	delete_networkofenterprises
48	Can view Сеть предприятий	12	view_networkofenterprises
49	Can add Товар в представительстве	9	add_connector
50	Can change Товар в представительстве	9	change_connector
51	Can delete Товар в представительстве	9	delete_connector
52	Can view Товар в представительстве	9	view_connector
53	Can add Сеть предприятий	12	add_network
54	Can change Сеть предприятий	12	change_network
55	Can delete Сеть предприятий	12	delete_network
56	Can view Сеть предприятий	12	view_network
57	Can add Предприятие	7	add_organization
58	Can change Предприятие	7	change_organization
59	Can delete Предприятие	7	delete_organization
60	Can view Предприятие	7	view_organization
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$MUOfLQDj1sFg$TTe+Cf6BSM8eZg+B/PPTEBmFC8HfVG32lpQZlVuxvzQ=	2019-08-11 14:40:04.0017+03	t	admin				t	t	2019-08-07 13:42:51.739+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-08-07 13:53:48.145+03	1	District object (1)	1	[{"added": {}}]	8	1
2	2019-08-07 13:57:10.841+03	2	Центральный	1	[{"added": {}}]	8	1
3	2019-08-07 13:57:17.22+03	3	Юбилейный	1	[{"added": {}}]	8	1
4	2019-08-07 13:58:02.379+03	1	NetworkOfEnterprises object (1)	1	[{"added": {}}]	12	1
5	2019-08-07 13:58:07.768+03	2	NetworkOfEnterprises object (2)	1	[{"added": {}}]	12	1
6	2019-08-07 13:58:11.828+03	3	NetworkOfEnterprises object (3)	1	[{"added": {}}]	12	1
7	2019-08-07 14:00:55.546+03	1	Магнит: Test_1	1	[{"added": {}}]	7	1
8	2019-08-07 14:11:45.209+03	1	Продукты	1	[{"added": {}}]	11	1
9	2019-08-07 14:11:52.201+03	1	Product object (1)	1	[{"added": {}}]	10	1
10	2019-08-07 14:15:01.519+03	2	Молоко	1	[{"added": {}}]	10	1
11	2019-08-07 14:15:48.2+03	1	Магнит: Test_1	2	[{"added": {"name": "product for agency", "object": "ProductForAgency object (1)"}}]	7	1
12	2019-08-07 14:16:13.995+03	1	Магнит: Test_1	2	[{"added": {"name": "product for agency", "object": "ProductForAgency object (2)"}}, {"changed": {"name": "product for agency", "object": "ProductForAgency object (1)", "fields": ["price"]}}]	7	1
13	2019-08-07 14:21:18.941+03	2	Молоко	2	[{"changed": {"fields": ["network"]}}]	10	1
14	2019-08-07 14:24:28.179+03	4	Фестивальный	1	[{"added": {}}]	8	1
15	2019-08-07 14:24:47.466+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"fields": ["name", "district"]}}]	7	1
16	2019-08-07 14:29:49.359+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	1	[{"added": {}}]	7	1
17	2019-08-07 14:42:25.292+03	3	Багет	1	[{"added": {}}]	10	1
18	2019-08-07 14:48:14.382+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[]	7	1
19	2019-08-07 14:49:50.068+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e"}}]	7	1
20	2019-08-07 14:51:04.23+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[]	7	1
21	2019-08-07 14:51:14.861+03	2	Молоко	2	[]	10	1
22	2019-08-07 14:51:36.123+03	4	zxc	1	[{"added": {}}]	10	1
23	2019-08-07 14:51:48.896+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: zxc"}}]	7	1
24	2019-08-07 14:52:23.263+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e", "fields": ["price"]}}]	7	1
25	2019-08-07 14:58:18.046+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442"}}]	7	1
26	2019-08-07 15:53:42.146+03	3	Магнит: Ещё магнит	1	[{"added": {}}]	7	1
27	2019-08-07 15:53:56.904+03	4	None: И ещё	1	[{"added": {}}]	7	1
28	2019-08-07 16:33:42.799+03	4	Табрис: И ещё	2	[{"changed": {"fields": ["network"]}}]	7	1
29	2019-08-07 16:49:38.582+03	4	Лимонад	2	[{"changed": {"fields": ["name"]}}]	10	1
30	2019-08-07 16:50:18.072+03	2	Мобильные телефоны	1	[{"added": {}}]	11	1
31	2019-08-07 16:50:22.376+03	5	Xiaomi redmi 4	1	[{"added": {}}]	10	1
32	2019-08-07 16:51:00.641+03	6	Смартфон Xiaomi Mi 9 SE 6/64GB	1	[{"added": {}}]	10	1
33	2019-08-07 16:51:12.317+03	7	Смартфон Samsung Galaxy A50 64GB	1	[{"added": {}}]	10	1
34	2019-08-07 16:51:26.728+03	8	Смартфон Xiaomi Mi 9 6/64GB	1	[{"added": {}}]	10	1
35	2019-08-07 16:51:40.92+03	9	Смартфон Xiaomi Mi 9 6/128GB	1	[{"added": {}}]	10	1
36	2019-08-07 16:52:06.542+03	3	Ноутбуки	1	[{"added": {}}]	11	1
37	2019-08-07 16:52:09.175+03	10	15.6" Ноутбук Acer Aspire 3 A315-33-C9B2 черный	1	[{"added": {}}]	10	1
38	2019-08-07 16:53:01.565+03	11	10.1" Нетбук Irbis NB105 белый	1	[{"added": {}}]	10	1
39	2019-08-07 16:54:12.957+03	5	DNS: В ТЦ «Западный»	1	[{"added": {}}]	7	1
40	2019-08-07 16:55:42.033+03	5	DNS: В ТЦ «Западный»	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: Xiaomi redmi 4"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 SE 6/64GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung Galaxy A50 64GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/128GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/64GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: 15.6\\" \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a Acer Aspire 3 A315-33-C9B2 \\u0447\\u0435\\u0440\\u043d\\u044b\\u0439"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: 10.1\\" \\u041d\\u0435\\u0442\\u0431\\u0443\\u043a Irbis NB105 \\u0431\\u0435\\u043b\\u044b\\u0439"}}]	7	1
41	2019-08-07 16:57:24.832+03	12	13.3" Нетбук DEXP Navis PX100 синий	1	[{"added": {}}]	10	1
42	2019-08-07 16:57:34.829+03	5	DNS: В ТЦ «Западный»	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: 13.3\\" \\u041d\\u0435\\u0442\\u0431\\u0443\\u043a DEXP Navis PX100 \\u0441\\u0438\\u043d\\u0438\\u0439"}}]	7	1
43	2019-08-07 16:59:13.341+03	5	DNS: В ТЦ «Западный»	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: Xiaomi redmi 4"}}]	7	1
44	2019-08-07 16:59:36.062+03	5	DNS: В ТЦ «Западный»	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 SE 6/64GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/64GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/128GB"}}]	7	1
78	2019-08-07 17:22:02.443+03	9	Табрис: Супермаркет "Табрис" №2	2	[]	7	1
45	2019-08-07 17:00:03.456+03	5	DNS: В ТЦ «Западный»	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung Galaxy A50 64GB"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: 10.1\\" \\u041d\\u0435\\u0442\\u0431\\u0443\\u043a Irbis NB105 \\u0431\\u0435\\u043b\\u044b\\u0439"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: 13.3\\" \\u041d\\u0435\\u0442\\u0431\\u0443\\u043a DEXP Navis PX100 \\u0441\\u0438\\u043d\\u0438\\u0439"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: 15.6\\" \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a Acer Aspire 3 A315-33-C9B2 \\u0447\\u0435\\u0440\\u043d\\u044b\\u0439"}}]	7	1
46	2019-08-07 17:02:51.66+03	5	DNS: ТЦ «Западный»	2	[{"changed": {"fields": ["name"]}}]	7	1
47	2019-08-07 17:03:06.49+03	1	Табрис: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"fields": ["network"]}}]	7	1
48	2019-08-07 17:03:58.754+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"fields": ["network"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442", "fields": ["product"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442", "fields": ["product"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442", "fields": ["product"]}}]	7	1
49	2019-08-07 17:04:14.42+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431", "fields": ["product"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e", "fields": ["product"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e", "fields": ["product"]}}]	7	1
50	2019-08-07 17:07:58.259+03	13	Лимонад	1	[{"added": {}}]	10	1
51	2019-08-07 17:08:08.452+03	3	Магнит: 'Магнит у дома' 2	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e"}}]	7	1
52	2019-08-07 17:08:23.027+03	3	Магнит: 'Магнит у дома' 2	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434"}}]	7	1
53	2019-08-07 17:09:30.115+03	4	Табрис: 'Магнит у дома' 2	2	[{"changed": {"fields": ["name", "description"]}}]	7	1
54	2019-08-07 17:09:34.471+03	5	DNS: ТЦ «Западный»	2	[{"changed": {"fields": ["description"]}}]	7	1
55	2019-08-07 17:09:38.642+03	3	Магнит: 'Магнит у дома' 2	2	[{"changed": {"fields": ["description"]}}]	7	1
56	2019-08-07 17:09:43.985+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[{"changed": {"fields": ["description"]}}]	7	1
57	2019-08-07 17:09:48.213+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"fields": ["description"]}}]	7	1
58	2019-08-07 17:16:41.115+03	8	DNS: ТЦ «Центр Города»	2	[{"changed": {"fields": ["district"]}}]	7	1
59	2019-08-07 17:16:54.234+03	5	Адыгея	1	[{"added": {}}]	8	1
60	2019-08-07 17:16:56.068+03	7	DNS: ТЦ «Мега Адыгея»	2	[{"changed": {"fields": ["district"]}}]	7	1
61	2019-08-07 17:17:11.75+03	6	Комсомольский	1	[{"added": {}}]	8	1
62	2019-08-07 17:17:32.942+03	6	КМС	2	[{"changed": {"fields": ["name"]}}]	8	1
63	2019-08-07 17:18:17.251+03	6	Комсомольский микрорайон (КМР)	2	[{"changed": {"fields": ["name"]}}]	8	1
64	2019-08-07 17:18:30.06+03	4	Фестивальный микрорайон (ФМР)	2	[{"changed": {"fields": ["name"]}}]	8	1
65	2019-08-07 17:18:40.917+03	3	Юбилейный микрорайон (ЮМР)	2	[{"changed": {"fields": ["name"]}}]	8	1
66	2019-08-07 17:19:12.396+03	2	Центральный район (ЦМР)	2	[{"changed": {"fields": ["name"]}}]	8	1
67	2019-08-07 17:19:22.257+03	1	Славянский микрорайон (СМР)	2	[{"changed": {"fields": ["name"]}}]	8	1
68	2019-08-07 17:19:33.506+03	7	Пашковский микрорайон (ПМР)	1	[{"added": {}}]	8	1
69	2019-08-07 17:19:39.715+03	8	Микрорайон Черемушки (ЧМР)	1	[{"added": {}}]	8	1
70	2019-08-07 17:19:45.696+03	9	Район Микрохирургии глаза (МХГ)	1	[{"added": {}}]	8	1
71	2019-08-07 17:19:53.301+03	10	Район Энка (п. Жукова)	1	[{"added": {}}]	8	1
72	2019-08-07 17:20:00.339+03	11	Район Гидрострой (ГМР)	1	[{"added": {}}]	8	1
73	2019-08-07 17:20:41.222+03	6	DNS: ТЦ «5 Звезд»	2	[{"changed": {"fields": ["district"]}}]	7	1
74	2019-08-07 17:20:58.051+03	5	DNS: ТЦ «Западный»	2	[{"changed": {"fields": ["district"]}}]	7	1
75	2019-08-07 17:21:20.136+03	8	DNS: ТЦ «Центр Города»	2	[]	7	1
76	2019-08-07 17:21:36.51+03	7	DNS: ТЦ «Мега Адыгея»	2	[{"changed": {"fields": ["district"]}}]	7	1
77	2019-08-07 17:21:59.142+03	9	Табрис: Супермаркет "Табрис" №2	2	[{"changed": {"fields": ["district"]}}]	7	1
79	2019-08-07 17:22:12.671+03	10	Табрис: Супермаркет "Табрис" №3	2	[{"changed": {"fields": ["district"]}}]	7	1
80	2019-08-07 17:22:25.773+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[{"changed": {"fields": ["district"]}}]	7	1
81	2019-08-07 17:22:35.205+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[{"changed": {"fields": ["district"]}}]	7	1
82	2019-08-07 17:22:40.599+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[]	7	1
83	2019-08-07 17:22:54.875+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"fields": ["district"]}}]	7	1
84	2019-08-07 17:23:28.259+03	1	Магнит: 'Магнит у дома' на ул. ул. Академика Трубилина	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434", "fields": ["price", "product"]}}]	7	1
85	2019-08-07 17:23:47.777+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434"}}]	7	1
86	2019-08-07 17:24:02.459+03	14	Соус	1	[{"added": {}}]	10	1
87	2019-08-07 17:24:10.174+03	2	Табрис: Супермаркет "Табрис", ул. Красных Партизан, 173	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043e\\u0443\\u0441"}}]	7	1
88	2019-08-07 17:24:31.961+03	15	Ноутбук №3	1	[{"added": {}}]	10	1
89	2019-08-07 17:25:12.088+03	5	DNS: DNS ТЦ «Западный»	2	[{"changed": {"fields": ["name"]}}]	7	1
90	2019-08-07 17:25:17.012+03	6	DNS: DNS ТЦ «5 Звезд»	2	[{"changed": {"fields": ["name"]}}]	7	1
91	2019-08-07 17:25:21.54+03	7	DNS: DNS ТЦ «Мега Адыгея»	2	[{"changed": {"fields": ["name"]}}]	7	1
92	2019-08-07 17:25:27.007+03	8	DNS: DNS ТЦ «Центр Города»	2	[{"changed": {"fields": ["name"]}}]	7	1
93	2019-08-07 17:25:52.13+03	8	DNS: DNS ТЦ «Центр Города»	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a \\u21163"}}]	7	1
94	2019-08-07 17:26:02.923+03	8	DNS: DNS ТЦ «Центр Города»	2	[{"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 SE 6/64GB"}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/64GB"}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/128GB"}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung Galaxy A50 64GB"}}]	7	1
95	2019-08-07 17:40:06.206+03	10	Табрис: Супермаркет "Табрис" №3	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442", "fields": ["price"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434", "fields": ["price"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043e\\u0443\\u0441", "fields": ["price"]}}]	7	1
96	2019-08-07 17:48:07.485+03	4	Магнит: 'Магнит у дома' 2	2	[{"changed": {"fields": ["network"]}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431"}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e"}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434"}}]	7	1
97	2019-08-07 17:48:30.648+03	4	Магнит: 'Магнит у дома' 2	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434"}}]	7	1
98	2019-08-07 17:49:08.583+03	15	Ноутбук №3	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a \\u21163"}}]	10	1
99	2019-08-07 17:52:32.251+03	4	Хозяйственные принадлежности	1	[{"added": {}}]	11	1
100	2019-08-07 17:53:12.599+03	16	Мыло "Dove" №2	1	[{"added": {}}]	10	1
101	2019-08-07 17:53:44.927+03	16	Мыло "Dove" №2	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162"}}]	10	1
102	2019-08-07 17:54:08.119+03	4	Магнит: 'Магнит у дома' №3	2	[{"changed": {"fields": ["name"]}}]	7	1
103	2019-08-07 17:54:15.532+03	3	Магнит: 'Магнит у дома' №2	2	[{"changed": {"fields": ["name"]}}]	7	1
104	2019-08-07 17:54:46.339+03	4	Магнит: 'Магнит у дома' №3	2	[{"changed": {"fields": ["district"]}}]	7	1
105	2019-08-07 17:59:16.65+03	11	Магнит: йцу	1	[{"added": {}}]	7	1
106	2019-08-07 17:59:20.934+03	11	Магнит: йцу	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431"}}]	7	1
107	2019-08-07 18:00:07.916+03	11	Магнит: йцу	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431", "fields": ["price"]}}]	7	1
108	2019-08-07 18:00:12.821+03	11	Табрис: йцу	2	[{"changed": {"fields": ["network"]}}]	7	1
109	2019-08-07 18:01:50.995+03	11	Табрис: йцу	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442", "fields": ["product"]}}]	7	1
110	2019-08-07 18:02:07.404+03	11	DNS: йцу	2	[{"changed": {"fields": ["network"]}}]	7	1
111	2019-08-07 18:23:28.471+03	17	aaa	1	[{"added": {}}]	10	1
112	2019-08-07 18:27:36.876+03	11	DNS: йцу	3		7	1
113	2019-08-08 13:50:45.305+03	17	aaa	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa"}}]	10	1
114	2019-08-08 13:51:10.58+03	17	aaa	2	[]	10	1
115	2019-08-08 13:51:20.277+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
116	2019-08-08 13:52:36.36+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
117	2019-08-08 13:52:52.865+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
118	2019-08-08 13:53:59.639+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
119	2019-08-08 13:56:03.429+03	16	Мыло "Dove" №2	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162", "fields": ["price"]}}]	10	1
120	2019-08-08 13:56:12.072+03	16	Мыло "Dove" №2	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162", "fields": ["price"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162", "fields": ["price"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162", "fields": ["price"]}}]	10	1
121	2019-08-08 14:04:03.37+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
122	2019-08-08 14:04:30.145+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
123	2019-08-08 14:05:05.153+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
124	2019-08-08 14:05:40.728+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
125	2019-08-08 14:06:10.397+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
126	2019-08-08 14:07:50.295+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
127	2019-08-08 14:09:05.055+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
128	2019-08-08 14:09:22.589+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
129	2019-08-08 14:10:01.041+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
130	2019-08-08 14:10:15.809+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
131	2019-08-08 14:10:55.513+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
132	2019-08-08 14:11:38.371+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
133	2019-08-08 14:11:42.551+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
134	2019-08-08 14:12:18.133+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
135	2019-08-08 14:12:44.738+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
136	2019-08-08 14:16:18.596+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["price"]}}]	10	1
137	2019-08-08 14:16:28.158+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
138	2019-08-08 14:20:54.75+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["agency"]}}]	10	1
139	2019-08-08 14:20:59.036+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
140	2019-08-08 14:22:07.002+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["agency"]}}]	10	1
141	2019-08-08 14:22:10.921+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
142	2019-08-08 14:31:06.709+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["agency"]}}]	10	1
143	2019-08-08 14:31:43.223+03	17	aaa	2	[]	10	1
144	2019-08-08 14:33:51.215+03	16	Мыло "Dove" №2	2	[]	10	1
145	2019-08-08 14:35:25.44+03	16	Мыло "Dove" №2	2	[]	10	1
146	2019-08-08 14:37:25.898+03	16	Мыло "Dove" №2	2	[]	10	1
147	2019-08-08 14:38:03.38+03	17	aaa	2	[]	10	1
148	2019-08-08 14:39:39.925+03	16	Мыло "Dove" №2	2	[]	10	1
149	2019-08-08 14:40:08.906+03	16	Мыло "Dove" №2	2	[]	10	1
150	2019-08-08 14:41:28.025+03	16	Мыло "Dove" №2	2	[]	10	1
151	2019-08-08 14:41:51.32+03	16	Мыло "Dove" №2	2	[]	10	1
152	2019-08-08 14:43:39.348+03	16	Мыло "Dove" №2	2	[]	10	1
153	2019-08-08 14:43:45.802+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
154	2019-08-08 14:45:59.406+03	16	Мыло "Dove" №2	2	[]	10	1
155	2019-08-08 14:46:14.377+03	16	Мыло "Dove" №2	2	[]	10	1
156	2019-08-08 14:47:13.812+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["agency"]}}]	10	1
157	2019-08-08 14:47:27.767+03	17	aaa	2	[]	10	1
158	2019-08-08 14:47:32.42+03	17	aaa	2	[]	10	1
159	2019-08-08 14:47:41.396+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
160	2019-08-08 14:48:38.768+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["agency"]}}]	10	1
161	2019-08-08 14:48:42.895+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
162	2019-08-08 14:48:47.792+03	17	aaa	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u0422\\u043e\\u0432\\u0430\\u0440: aaa", "fields": ["agency"]}}]	10	1
163	2019-08-08 14:48:52.811+03	17	aaa	2	[{"changed": {"fields": ["network"]}}]	10	1
164	2019-08-09 13:17:44.115+03	18	Консервы 222	1	[{"added": {}}]	10	1
165	2019-08-09 13:18:04.123+03	9	Табрис: Супермаркет "Табрис" №2	2	[{"changed": {"fields": ["district"]}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 222\\n\\u0426\\u0435\\u043d\\u0430: 52.4"}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0411\\u0430\\u0433\\u0435\\u0442\\n\\u0426\\u0435\\u043d\\u0430: 76", "fields": ["price"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\n\\u0426\\u0435\\u043d\\u0430: 42", "fields": ["price"]}}, {"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043e\\u0443\\u0441\\n\\u0426\\u0435\\u043d\\u0430: 15", "fields": ["price"]}}]	7	1
166	2019-08-09 13:19:52.038+03	17	Стиральный порошок "Ariel"	2	[{"changed": {"fields": ["name", "category", "network"]}}, {"deleted": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u043d\\u0430 \\u0443\\u043b. \\u0443\\u043b. \\u0410\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u043a\\u0430 \\u0422\\u0440\\u0443\\u0431\\u0438\\u043b\\u0438\\u043d\\u0430\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a \\"Ariel\\"\\n\\u0426\\u0435\\u043d\\u0430: 112.91"}}]	10	1
167	2019-08-09 13:20:20.688+03	17	Стиральный порошок "Ariel"	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21163\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a \\"Ariel\\"\\n\\u0426\\u0435\\u043d\\u0430: 123"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u043d\\u0430 \\u0443\\u043b. \\u0443\\u043b. \\u0410\\u043a\\u0430\\u0434\\u0435\\u043c\\u0438\\u043a\\u0430 \\u0422\\u0440\\u0443\\u0431\\u0438\\u043b\\u0438\\u043d\\u0430\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a \\"Ariel\\"\\n\\u0426\\u0435\\u043d\\u0430: 156"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a \\"Ariel\\"\\n\\u0426\\u0435\\u043d\\u0430: 147"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a \\"Ariel\\"\\n\\u0426\\u0435\\u043d\\u0430: 154"}}]	10	1
168	2019-08-09 13:22:15.968+03	18	Консервы 222	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21163\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 222\\n\\u0426\\u0435\\u043d\\u0430: 65.4"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\", \\u0443\\u043b. \\u041a\\u0440\\u0430\\u0441\\u043d\\u044b\\u0445 \\u041f\\u0430\\u0440\\u0442\\u0438\\u0437\\u0430\\u043d, 173\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 222\\n\\u0426\\u0435\\u043d\\u0430: 44.2"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 222\\n\\u0426\\u0435\\u043d\\u0430: 55"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 222\\n\\u0426\\u0435\\u043d\\u0430: 45"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 222\\n\\u0426\\u0435\\u043d\\u0430: 51"}}]	10	1
169	2019-08-09 13:22:44.472+03	19	Консервы 333	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\", \\u0443\\u043b. \\u041a\\u0440\\u0430\\u0441\\u043d\\u044b\\u0445 \\u041f\\u0430\\u0440\\u0442\\u0438\\u0437\\u0430\\u043d, 173\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 333\\n\\u0426\\u0435\\u043d\\u0430: 88"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 333\\n\\u0426\\u0435\\u043d\\u0430: 87"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21163\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 333\\n\\u0426\\u0435\\u043d\\u0430: 78"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 333\\n\\u0426\\u0435\\u043d\\u0430: 82"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 333\\n\\u0426\\u0435\\u043d\\u0430: 81"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 333\\n\\u0426\\u0435\\u043d\\u0430: 80"}}]	10	1
170	2019-08-09 13:23:07.565+03	20	Консервы 444	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\", \\u0443\\u043b. \\u041a\\u0440\\u0430\\u0441\\u043d\\u044b\\u0445 \\u041f\\u0430\\u0440\\u0442\\u0438\\u0437\\u0430\\u043d, 173\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 444\\n\\u0426\\u0435\\u043d\\u0430: 65"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 444\\n\\u0426\\u0435\\u043d\\u0430: 64"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21163\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 444\\n\\u0426\\u0435\\u043d\\u0430: 63"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 444\\n\\u0426\\u0435\\u043d\\u0430: 65"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 444\\n\\u0426\\u0435\\u043d\\u0430: 66"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u044b 444\\n\\u0426\\u0435\\u043d\\u0430: 60"}}]	10	1
171	2019-08-09 13:24:10.682+03	21	Стиральный порошок BiMax Color Automat	1	[{"added": {}}]	10	1
172	2019-08-09 13:24:34.738+03	21	Стиральный порошок BiMax Color Automat	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\", \\u0443\\u043b. \\u041a\\u0440\\u0430\\u0441\\u043d\\u044b\\u0445 \\u041f\\u0430\\u0440\\u0442\\u0438\\u0437\\u0430\\u043d, 173\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a BiMax Color Automat\\n\\u0426\\u0435\\u043d\\u0430: 222"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21162\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a BiMax Color Automat\\n\\u0426\\u0435\\u043d\\u0430: 212"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21163\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a BiMax Color Automat\\n\\u0426\\u0435\\u043d\\u0430: 243"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a BiMax Color Automat\\n\\u0426\\u0435\\u043d\\u0430: 251"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a BiMax Color Automat\\n\\u0426\\u0435\\u043d\\u0430: 233"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u0422\\u0430\\u0431\\u0440\\u0438\\u0441: \\u0421\\u0443\\u043f\\u0435\\u0440\\u043c\\u0430\\u0440\\u043a\\u0435\\u0442 \\"\\u0422\\u0430\\u0431\\u0440\\u0438\\u0441\\" \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a BiMax Color Automat\\n\\u0426\\u0435\\u043d\\u0430: 213.4"}}]	10	1
173	2019-08-09 13:25:55.934+03	11	Магнит: 'Магнит у дома' №4	2	[{"changed": {"fields": ["district"]}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431\\n\\u0426\\u0435\\u043d\\u0430: 22"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e\\n\\u0426\\u0435\\u043d\\u0430: 44"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\n\\u0426\\u0435\\u043d\\u0430: 26"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162\\n\\u0426\\u0435\\u043d\\u0430: 66"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21164\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u0442\\u0438\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0440\\u043e\\u0448\\u043e\\u043a \\"Ariel\\"\\n\\u0426\\u0435\\u043d\\u0430: 134"}}]	7	1
174	2019-08-09 13:26:22.566+03	12	Магнит: 'Магнит у дома' №5	2	[{"changed": {"fields": ["district"]}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e\\n\\u0426\\u0435\\u043d\\u0430: 65"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431\\n\\u0426\\u0435\\u043d\\u0430: 15"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\n\\u0426\\u0435\\u043d\\u0430: 44"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162\\n\\u0426\\u0435\\u043d\\u0430: 43"}}]	7	1
175	2019-08-09 13:26:52.993+03	13	Магнит: 'Магнит у дома' №6	2	[{"changed": {"fields": ["district"]}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u044b\\u043b\\u043e \\"Dove\\" \\u21162\\n\\u0426\\u0435\\u043d\\u0430: 64"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0425\\u043b\\u0435\\u0431\\n\\u0426\\u0435\\u043d\\u0430: 32"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041c\\u043e\\u043b\\u043e\\u043a\\u043e\\n\\u0426\\u0435\\u043d\\u0430: 64.3"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: \\u041c\\u0430\\u0433\\u043d\\u0438\\u0442: '\\u041c\\u0430\\u0433\\u043d\\u0438\\u0442 \\u0443 \\u0434\\u043e\\u043c\\u0430' \\u21166\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041b\\u0438\\u043c\\u043e\\u043d\\u0430\\u0434\\n\\u0426\\u0435\\u043d\\u0430: 33.15"}}]	7	1
176	2019-08-09 13:27:02.35+03	14	Табрис: Супермаркет "Табрис" №4	2	[{"changed": {"fields": ["district"]}}]	7	1
177	2019-08-09 13:27:06.984+03	15	Табрис: Супермаркет "Табрис" №5	2	[{"changed": {"fields": ["district"]}}]	7	1
178	2019-08-09 13:27:12.062+03	16	Табрис: Супермаркет "Табрис" №6	2	[{"changed": {"fields": ["district"]}}]	7	1
179	2019-08-09 13:27:17.129+03	17	DNS: DNS №5	2	[{"changed": {"fields": ["district"]}}]	7	1
180	2019-08-09 13:27:56.337+03	17	DNS: DNS №5	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: Xiaomi redmi 4\\n\\u0426\\u0435\\u043d\\u0430: 6500"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Samsung Galaxy A50 64GB\\n\\u0426\\u0435\\u043d\\u0430: 22300"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: 15.6\\" \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a Acer Aspire 3 A315-33-C9B2 \\u0447\\u0435\\u0440\\u043d\\u044b\\u0439\\n\\u0426\\u0435\\u043d\\u0430: 46000"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: 10.1\\" \\u041d\\u0435\\u0442\\u0431\\u0443\\u043a Irbis NB105 \\u0431\\u0435\\u043b\\u044b\\u0439\\n\\u0426\\u0435\\u043d\\u0430: 15300"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a \\u21163\\n\\u0426\\u0435\\u043d\\u0430: 96500"}}]	7	1
181	2019-08-09 13:28:29.874+03	18	DNS: DNS №6	2	[{"changed": {"fields": ["district"]}}]	7	1
182	2019-08-09 13:28:33.384+03	18	DNS: DNS №6	2	[]	7	1
183	2019-08-09 13:28:38.056+03	19	DNS: DNS №7	2	[{"changed": {"fields": ["district"]}}]	7	1
184	2019-08-09 13:28:41.798+03	20	DNS: DNS №8	2	[{"changed": {"fields": ["district"]}}]	7	1
185	2019-08-09 13:28:47.365+03	21	DNS: DNS №9	2	[{"changed": {"fields": ["district"]}}]	7	1
186	2019-08-09 13:32:38.225+03	20	DNS: DNS №8	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21168\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 SE 6/64GB\\n\\u0426\\u0435\\u043d\\u0430: 23500"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21168\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/64GB\\n\\u0426\\u0435\\u043d\\u0430: 24100"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21168\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/128GB\\n\\u0426\\u0435\\u043d\\u0430: 22300"}}]	7	1
187	2019-08-09 13:32:52.035+03	19	DNS: DNS №7	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21167\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/64GB\\n\\u0426\\u0435\\u043d\\u0430: 22100"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21167\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/128GB\\n\\u0426\\u0435\\u043d\\u0430: 24500"}}]	7	1
188	2019-08-09 13:33:13.548+03	17	DNS: DNS №5	2	[{"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: 13.3\\" \\u041d\\u0435\\u0442\\u0431\\u0443\\u043a DEXP Navis PX100 \\u0441\\u0438\\u043d\\u0438\\u0439\\n\\u0426\\u0435\\u043d\\u0430: 15400"}}, {"added": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21165\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u0421\\u043c\\u0430\\u0440\\u0442\\u0444\\u043e\\u043d Xiaomi Mi 9 6/128GB\\n\\u0426\\u0435\\u043d\\u0430: 22200"}}]	7	1
189	2019-08-09 14:56:21.437+03	21	DNS: DNS №9	2	[{"changed": {"name": "\\u0422\\u043e\\u0432\\u0430\\u0440 \\u0432 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u0435", "object": "\\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u044f: DNS: DNS \\u21169\\n\\u0422\\u043e\\u0432\\u0430\\u0440: \\u041d\\u043e\\u0443\\u0442\\u0431\\u0443\\u043a \\u21163\\n\\u0426\\u0435\\u043d\\u0430: 94000.00", "fields": ["price"]}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	products	organization
8	products	district
9	products	connector
10	products	product
11	products	category
12	products	network
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-08-11 14:36:20.444594+03
2	auth	0001_initial	2019-08-11 14:36:20.497824+03
3	admin	0001_initial	2019-08-11 14:36:20.561115+03
4	admin	0002_logentry_remove_auto_add	2019-08-11 14:36:20.58036+03
5	admin	0003_logentry_add_action_flag_choices	2019-08-11 14:36:20.59147+03
6	contenttypes	0002_remove_content_type_name	2019-08-11 14:36:20.610145+03
7	auth	0002_alter_permission_name_max_length	2019-08-11 14:36:20.615671+03
8	auth	0003_alter_user_email_max_length	2019-08-11 14:36:20.624457+03
9	auth	0004_alter_user_username_opts	2019-08-11 14:36:20.633292+03
10	auth	0005_alter_user_last_login_null	2019-08-11 14:36:20.643937+03
11	auth	0006_require_contenttypes_0002	2019-08-11 14:36:20.646443+03
12	auth	0007_alter_validators_add_error_messages	2019-08-11 14:36:20.654555+03
13	auth	0008_alter_user_username_max_length	2019-08-11 14:36:20.666322+03
14	auth	0009_alter_user_last_name_max_length	2019-08-11 14:36:20.674741+03
15	auth	0010_alter_group_name_max_length	2019-08-11 14:36:20.683441+03
16	auth	0011_update_proxy_permissions	2019-08-11 14:36:20.69491+03
17	products	0001_initial	2019-08-11 14:36:20.74409+03
18	products	0002_auto_20190807_1413	2019-08-11 14:36:20.811964+03
19	products	0003_auto_20190807_1433	2019-08-11 14:36:20.844408+03
20	products	0004_auto_20190807_1503	2019-08-11 14:36:20.857145+03
21	products	0005_auto_20190807_2135	2019-08-11 14:36:20.883599+03
22	products	0006_auto_20190808_1511	2019-08-11 14:36:20.905583+03
23	products	0007_auto_20190808_2214	2019-08-11 14:36:20.927576+03
24	products	0008_auto_20190809_1236	2019-08-11 14:36:20.976857+03
25	products	0009_auto_20190809_1301	2019-08-11 14:36:21.02206+03
26	products	0010_auto_20190809_1303	2019-08-11 14:36:21.03443+03
27	products	0011_auto_20190809_1305	2019-08-11 14:36:21.048007+03
28	sessions	0001_initial	2019-08-11 14:36:21.057892+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
62xrib8sivjqmwkk4c8r0gk6ctyr4xi5	NDhiMjMwNDllMzdmYWUyY2VjY2IyMTgwMDU3OTE0Y2Y1ZDUzMjY4NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NWIzNDE2ODI2MDA1ODgwNDIwNDk5MzI4NzQxNjRlMmEwZjQ0YWM5In0=	2019-08-23 18:52:22.952+03
chsz3m1hbb4y0gt9iplmnbxxgpl0luyo	NDhiMjMwNDllMzdmYWUyY2VjY2IyMTgwMDU3OTE0Y2Y1ZDUzMjY4NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NWIzNDE2ODI2MDA1ODgwNDIwNDk5MzI4NzQxNjRlMmEwZjQ0YWM5In0=	2019-08-22 15:10:39.979+03
6vnkbfl5abe3jh3v1863k1vhpow9ku2f	NDhiMjMwNDllMzdmYWUyY2VjY2IyMTgwMDU3OTE0Y2Y1ZDUzMjY4NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NWIzNDE2ODI2MDA1ODgwNDIwNDk5MzI4NzQxNjRlMmEwZjQ0YWM5In0=	2019-08-25 14:40:04.004249+03
\.


--
-- Data for Name: products_category; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_category (id, name) FROM stdin;
1	Продукты
2	Мобильные телефоны
3	Ноутбуки
4	Хозяйственные принадлежности
\.


--
-- Data for Name: products_connector; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_connector (id, price, organization_id, product_id) FROM stdin;
1	16.49	1	1
2	68.74	1	2
3	32.40	1	13
4	6000.00	5	5
5	15200.00	5	6
6	16800.00	5	8
7	18300.00	5	9
8	23500.00	5	7
9	13200.00	5	11
10	15600.00	5	12
11	34600.00	5	10
12	14.50	3	1
13	48.72	3	2
14	26.82	3	13
15	5800.00	6	5
16	16100.00	6	6
17	16400.00	6	8
18	18100.00	6	9
19	23300.00	6	7
20	12100.00	6	11
21	14800.00	6	12
22	35800.00	6	10
23	5800.00	7	5
24	16100.00	7	6
25	15800.00	7	8
26	18100.00	7	9
27	22300.00	7	7
28	12100.00	7	11
29	14100.00	7	12
30	35800.00	7	10
31	6300.00	8	5
36	12100.00	8	11
37	13300.00	8	12
38	35800.00	8	10
39	62.80	2	3
40	44.10	2	4
41	13.70	2	14
42	68300.00	8	15
43	76.00	9	3
44	42.00	9	4
45	15.00	9	14
46	61.30	10	3
47	41.10	10	4
48	13.40	10	14
52	12.00	4	1
53	44.00	4	2
54	33.00	4	13
55	65200.00	6	15
56	47.49	1	16
57	44.95	3	16
58	45.76	4	16
60	52.40	9	18
61	123.00	4	17
62	156.00	1	17
63	147.00	12	17
64	154.00	13	17
65	65.40	10	18
66	44.20	2	18
67	55.00	14	18
68	45.00	15	18
69	51.00	16	18
70	88.00	2	19
71	87.00	9	19
72	78.00	10	19
73	82.00	14	19
74	81.00	15	19
75	80.00	16	19
76	65.00	2	20
77	64.00	9	20
78	63.00	10	20
79	65.00	14	20
80	66.00	15	20
81	60.00	16	20
82	222.00	2	21
83	212.00	9	21
84	243.00	10	21
85	251.00	14	21
86	233.00	15	21
87	213.40	16	21
88	22.00	11	1
89	44.00	11	2
90	26.00	11	13
91	66.00	11	16
92	134.00	11	17
93	65.00	12	2
94	15.00	12	1
95	44.00	12	13
96	43.00	12	16
97	64.00	13	16
98	32.00	13	1
99	64.30	13	2
100	33.15	13	13
101	6500.00	17	5
102	22300.00	17	7
103	46000.00	17	10
104	15300.00	17	11
105	96500.00	17	15
106	6600.00	18	5
107	24300.00	18	7
108	46200.00	18	10
109	15300.00	18	11
110	94500.00	18	15
111	7200.00	19	5
112	25100.00	19	7
113	47400.00	19	10
114	16300.00	19	11
115	92300.00	19	15
116	6200.00	20	5
117	25100.00	20	7
118	42400.00	20	10
119	14300.00	20	11
120	94300.00	20	15
121	6300.00	21	5
122	22100.00	21	7
123	42700.00	21	10
124	15300.00	21	11
125	94000.00	21	15
126	23500.00	20	6
127	24100.00	20	8
128	22300.00	20	9
129	22100.00	19	8
130	24500.00	19	9
131	15400.00	17	12
132	22200.00	17	9
\.


--
-- Data for Name: products_district; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_district (id, name) FROM stdin;
1	Славянский микрорайон (СМР)
2	Центральный район (ЦМР)
3	Юбилейный микрорайон (ЮМР)
4	Фестивальный микрорайон (ФМР)
5	Адыгея
6	Комсомольский микрорайон (КМР)
7	Пашковский микрорайон (ПМР)
8	Микрорайон Черемушки (ЧМР)
9	Район Микрохирургии глаза (МХГ)
10	Район Энка (п. Жукова)
11	Район Гидрострой (ГМР)
\.


--
-- Data for Name: products_network; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_network (id, name) FROM stdin;
1	Магнит
2	Табрис
3	DNS
\.


--
-- Data for Name: products_organization; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_organization (id, name, description, network_id) FROM stdin;
1	'Магнит у дома' на ул. ул. Академика Трубилина	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	1
2	Супермаркет "Табрис", ул. Красных Партизан, 173	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
3	'Магнит у дома' №2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	1
4	'Магнит у дома' №3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	1
5	DNS ТЦ «Западный»	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
6	DNS ТЦ «5 Звезд»	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
7	DNS ТЦ «Мега Адыгея»	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
8	DNS ТЦ «Центр Города»	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
9	Супермаркет "Табрис" №2	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
10	Супермаркет "Табрис" №3	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
11	'Магнит у дома' №4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	1
12	'Магнит у дома' №5	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	1
13	'Магнит у дома' №6	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	1
14	Супермаркет "Табрис" №4	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
15	Супермаркет "Табрис" №5	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
16	Супермаркет "Табрис" №6	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
17	DNS №5	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
18	DNS №6	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
19	DNS №7	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
20	DNS №8	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
21	DNS №9	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	3
\.


--
-- Data for Name: products_organization_district; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_organization_district (id, organization_id, district_id) FROM stdin;
1	1	8
2	1	1
3	1	3
4	1	4
5	2	1
6	2	3
7	2	4
8	2	9
9	3	2
10	4	2
11	4	3
12	4	7
13	5	1
14	5	10
15	5	9
16	6	8
17	6	11
18	6	6
19	6	7
20	7	2
21	7	3
22	7	5
23	8	2
24	9	1
25	9	2
26	9	3
27	9	4
28	9	5
29	9	11
30	10	1
31	10	3
32	10	4
33	10	9
34	11	8
35	11	9
36	11	4
37	11	6
38	12	1
39	12	3
40	12	6
41	12	8
42	12	11
43	13	7
44	13	8
45	13	9
46	13	10
47	13	11
48	14	3
49	14	4
50	14	6
51	14	8
52	14	9
53	15	1
54	15	3
55	15	5
56	15	6
57	15	7
58	15	8
59	16	1
60	16	4
61	16	7
62	16	8
63	16	9
64	17	7
65	17	8
66	17	9
67	17	10
68	17	11
69	18	2
70	18	4
71	18	6
72	18	9
73	18	11
74	19	2
75	19	5
76	19	7
77	19	10
78	19	11
79	20	1
80	20	4
81	20	6
82	21	8
83	21	4
84	21	5
85	21	7
\.


--
-- Data for Name: products_product; Type: TABLE DATA; Schema: public; Owner: testUser_db
--

COPY public.products_product (id, name, category_id, network_id) FROM stdin;
1	Хлеб	1	1
2	Молоко	1	1
3	Багет	1	2
4	Лимонад	1	2
5	Xiaomi redmi 4	2	3
6	Смартфон Xiaomi Mi 9 SE 6/64GB	2	3
7	Смартфон Samsung Galaxy A50 64GB	2	3
8	Смартфон Xiaomi Mi 9 6/64GB	2	3
9	Смартфон Xiaomi Mi 9 6/128GB	2	3
10	15.6" Ноутбук Acer Aspire 3 A315-33-C9B2 черный	3	3
11	10.1" Нетбук Irbis NB105 белый	3	3
12	13.3" Нетбук DEXP Navis PX100 синий	3	3
13	Лимонад	1	1
14	Соус	1	2
15	Ноутбук №3	3	3
16	Мыло "Dove" №2	4	1
17	Стиральный порошок "Ariel"	4	1
18	Консервы 222	1	2
19	Консервы 333	1	2
20	Консервы 444	1	2
21	Стиральный порошок BiMax Color Automat	4	2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 189, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: products_agency_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_agency_district_id_seq', 85, true);


--
-- Name: products_agency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_agency_id_seq', 21, true);


--
-- Name: products_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_category_id_seq', 4, true);


--
-- Name: products_district_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_district_id_seq', 11, true);


--
-- Name: products_networkofenterprises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_networkofenterprises_id_seq', 3, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_product_id_seq', 21, true);


--
-- Name: products_productforagency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: testUser_db
--

SELECT pg_catalog.setval('public.products_productforagency_id_seq', 132, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: products_organization_district products_agency_district_agency_id_district_id_76f4492f_uniq; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization_district
    ADD CONSTRAINT products_agency_district_agency_id_district_id_76f4492f_uniq UNIQUE (organization_id, district_id);


--
-- Name: products_organization_district products_agency_district_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization_district
    ADD CONSTRAINT products_agency_district_pkey PRIMARY KEY (id);


--
-- Name: products_organization products_agency_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization
    ADD CONSTRAINT products_agency_pkey PRIMARY KEY (id);


--
-- Name: products_category products_category_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_category
    ADD CONSTRAINT products_category_pkey PRIMARY KEY (id);


--
-- Name: products_district products_district_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_district
    ADD CONSTRAINT products_district_pkey PRIMARY KEY (id);


--
-- Name: products_network products_networkofenterprises_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_network
    ADD CONSTRAINT products_networkofenterprises_pkey PRIMARY KEY (id);


--
-- Name: products_product products_product_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_pkey PRIMARY KEY (id);


--
-- Name: products_connector products_productforagency_pkey; Type: CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_connector
    ADD CONSTRAINT products_productforagency_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: products_agency_district_agency_id_cdb3699a; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_agency_district_agency_id_cdb3699a ON public.products_organization_district USING btree (organization_id);


--
-- Name: products_agency_district_district_id_beb6d53d; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_agency_district_district_id_beb6d53d ON public.products_organization_district USING btree (district_id);


--
-- Name: products_agency_network_id_6bdca904; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_agency_network_id_6bdca904 ON public.products_organization USING btree (network_id);


--
-- Name: products_product_category_id_9b594869; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_product_category_id_9b594869 ON public.products_product USING btree (category_id);


--
-- Name: products_product_network_id_87bd91a8; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_product_network_id_87bd91a8 ON public.products_product USING btree (network_id);


--
-- Name: products_productforagency_agency_id_77613186; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_productforagency_agency_id_77613186 ON public.products_connector USING btree (organization_id);


--
-- Name: products_productforagency_product_id_0be04874; Type: INDEX; Schema: public; Owner: testUser_db
--

CREATE INDEX products_productforagency_product_id_0be04874 ON public.products_connector USING btree (product_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_organization_district products_agency_dist_district_id_beb6d53d_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization_district
    ADD CONSTRAINT products_agency_dist_district_id_beb6d53d_fk_products_ FOREIGN KEY (district_id) REFERENCES public.products_district(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_connector products_connector_organization_id_086c55a4_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_connector
    ADD CONSTRAINT products_connector_organization_id_086c55a4_fk_products_ FOREIGN KEY (organization_id) REFERENCES public.products_organization(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_organization products_organizatio_network_id_3ff7ae57_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization
    ADD CONSTRAINT products_organizatio_network_id_3ff7ae57_fk_products_ FOREIGN KEY (network_id) REFERENCES public.products_network(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_organization_district products_organizatio_organization_id_82e2945e_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_organization_district
    ADD CONSTRAINT products_organizatio_organization_id_82e2945e_fk_products_ FOREIGN KEY (organization_id) REFERENCES public.products_organization(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_category_id_9b594869_fk_products_category_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_category_id_9b594869_fk_products_category_id FOREIGN KEY (category_id) REFERENCES public.products_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_product products_product_network_id_87bd91a8_fk_products_network_id; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_product
    ADD CONSTRAINT products_product_network_id_87bd91a8_fk_products_network_id FOREIGN KEY (network_id) REFERENCES public.products_network(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_connector products_productfora_product_id_0be04874_fk_products_; Type: FK CONSTRAINT; Schema: public; Owner: testUser_db
--

ALTER TABLE ONLY public.products_connector
    ADD CONSTRAINT products_productfora_product_id_0be04874_fk_products_ FOREIGN KEY (product_id) REFERENCES public.products_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

