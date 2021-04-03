--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6
-- Dumped by pg_dump version 12.6

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "HB";

--
-- Name: cats; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.cats (
    id bigint NOT NULL,
    name character varying,
    breed character varying,
    age character varying,
    gender character varying,
    coat_length character varying,
    size character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.cats OWNER TO "HB";

--
-- Name: cats_id_seq; Type: SEQUENCE; Schema: public; Owner: HB
--

CREATE SEQUENCE public.cats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cats_id_seq OWNER TO "HB";

--
-- Name: cats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: HB
--

ALTER SEQUENCE public.cats_id_seq OWNED BY public.cats.id;


--
-- Name: dogs; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.dogs (
    id bigint NOT NULL,
    name character varying,
    breed character varying,
    age character varying,
    gender character varying,
    coat_length character varying,
    size character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.dogs OWNER TO "HB";

--
-- Name: dogs_id_seq; Type: SEQUENCE; Schema: public; Owner: HB
--

CREATE SEQUENCE public.dogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dogs_id_seq OWNER TO "HB";

--
-- Name: dogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: HB
--

ALTER SEQUENCE public.dogs_id_seq OWNED BY public.dogs.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: HB
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "HB";

--
-- Name: cats id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.cats ALTER COLUMN id SET DEFAULT nextval('public.cats_id_seq'::regclass);


--
-- Name: dogs id; Type: DEFAULT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.dogs ALTER COLUMN id SET DEFAULT nextval('public.dogs_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2021-04-02 17:20:56.996913	2021-04-02 17:20:56.996913
\.


--
-- Data for Name: cats; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.cats (id, name, breed, age, gender, coat_length, size, created_at, updated_at) FROM stdin;
51	Misty	Oriental Shorthair	Senior	Female	medium	extra large	2021-04-02 18:31:33.052989	2021-04-02 18:31:33.052989
52	Smokey	Birman	Adult	Female	wire	small	2021-04-02 18:31:33.055337	2021-04-02 18:31:33.055337
53	Lucky	Minskin	Senior	Female	curly	large	2021-04-02 18:31:33.056999	2021-04-02 18:31:33.056999
54	Max	Oriental Shorthair	Adult	Female	long	extra large	2021-04-02 18:31:33.058553	2021-04-02 18:31:33.058553
56	Jasper	Peterbald	Senior	Female	wire	small	2021-04-02 18:31:33.061635	2021-04-02 18:31:33.061635
57	Sam	Korean Bobtail	Adult	Male	hairless	extra large	2021-04-02 18:31:33.063128	2021-04-02 18:31:33.063128
58	Oliver	Russian Blue	Senior	Female	curly	extra large	2021-04-02 18:31:33.064789	2021-04-02 18:31:33.064789
59	Daisy	Korn Ja	Kitten	Female	medium	large	2021-04-02 18:31:33.066308	2021-04-02 18:31:33.066308
60	Alfie	Kurilian Bobtail	Adult	Female	long	large	2021-04-02 18:31:33.067832	2021-04-02 18:31:33.067832
61	Angel	American Curl	Kitten	Female	curly	small	2021-04-02 18:31:33.069407	2021-04-02 18:31:33.069407
62	Smudge	British Shorthair	Adult	Female	short	medium	2021-04-02 18:31:33.070965	2021-04-02 18:31:33.070965
63	Bella	California Spangled	Senior	Female	wire	medium	2021-04-02 18:31:33.072464	2021-04-02 18:31:33.072464
64	Angel	Russian White, Black and Tabby	Kitten	Male	curly	large	2021-04-02 18:31:33.073984	2021-04-02 18:31:33.073984
66	Sam	Burmese	Kitten	Male	wire	medium	2021-04-02 18:31:33.076955	2021-04-02 18:31:33.076955
67	Lily	Chartreux	Senior	Female	hairless	extra large	2021-04-02 18:31:33.078356	2021-04-02 18:31:33.078356
68	Felix	Exotic Shorthair	Adult	Female	hairless	small	2021-04-02 18:31:33.07983	2021-04-02 18:31:33.07983
69	Shadow	American Curl	Adult	Male	wire	medium	2021-04-02 18:31:33.08121	2021-04-02 18:31:33.08121
70	Chloe	Khao Manee	Senior	Male	medium	large	2021-04-02 18:31:33.082621	2021-04-02 18:31:33.082621
71	Coco	Chartreux	Adult	Male	short	small	2021-04-02 18:31:33.084138	2021-04-02 18:31:33.084138
72	Shadow	Chantilly-Tiffany	Kitten	Female	curly	extra large	2021-04-02 18:31:33.085684	2021-04-02 18:31:33.085684
73	Oscar	Birman	Kitten	Female	long	medium	2021-04-02 18:31:33.087336	2021-04-02 18:31:33.087336
74	Alfie	Mekong Bobtail	Adult	Female	long	medium	2021-04-02 18:31:33.088829	2021-04-02 18:31:33.088829
75	Jasper	Burmilla	Senior	Male	hairless	small	2021-04-02 18:31:33.090249	2021-04-02 18:31:33.090249
76	Max	Persian (Modern Persian Cat)	Kitten	Female	hairless	large	2021-04-02 18:31:33.091694	2021-04-02 18:31:33.091694
77	Millie	British Semipi-longhair	Adult	Female	wire	extra large	2021-04-02 18:31:33.093205	2021-04-02 18:31:33.093205
78	Sam	Egyptian Mau	Adult	Male	curly	large	2021-04-02 18:31:33.094889	2021-04-02 18:31:33.094889
79	Sooty	Turkish Van	Senior	Female	hairless	extra large	2021-04-02 18:31:33.097234	2021-04-02 18:31:33.097234
65	Molly	Brazilian Shorthair	OLD	Female	wire	large	2021-04-02 18:31:33.075469	2021-04-02 21:57:54.114745
80	Jasper	PerFold Cat (Experimental Breed - WCF)	Senior	Male	hairless	small	2021-04-02 18:31:33.0992	2021-04-02 18:31:33.0992
81	Lucky	Russian Blue	Senior	Female	short	extra large	2021-04-02 18:31:33.102722	2021-04-02 18:31:33.102722
82	Molly	Dwarf cat, or Dwelf	Adult	Male	medium	large	2021-04-02 18:31:33.105014	2021-04-02 18:31:33.105014
83	Sooty	Cymric, or Manx Longhair	Senior	Male	short	medium	2021-04-02 18:31:33.106825	2021-04-02 18:31:33.106825
84	Molly	Cornish Rex	Kitten	Male	curly	medium	2021-04-02 18:31:33.108462	2021-04-02 18:31:33.108462
85	Smudge	Suphalak	Adult	Female	hairless	large	2021-04-02 18:31:33.110053	2021-04-02 18:31:33.110053
86	Molly	Highlander	Senior	Male	hairless	large	2021-04-02 18:31:33.111694	2021-04-02 18:31:33.111694
87	Chloe	Scottish Fold	Senior	Female	curly	small	2021-04-02 18:31:33.113196	2021-04-02 18:31:33.113196
88	Millie	Tonkinese	Kitten	Female	short	extra large	2021-04-02 18:31:33.114756	2021-04-02 18:31:33.114756
89	Sooty	Lykoi	Senior	Female	short	medium	2021-04-02 18:31:33.116384	2021-04-02 18:31:33.116384
90	Daisy	Snowshoe	Kitten	Female	long	medium	2021-04-02 18:31:33.117876	2021-04-02 18:31:33.117876
91	Coco	Australian Mist	Adult	Male	wire	extra large	2021-04-02 18:31:33.119531	2021-04-02 18:31:33.119531
92	Charlie	Peterbald	Kitten	Male	medium	extra large	2021-04-02 18:31:33.121109	2021-04-02 18:31:33.121109
93	Jasper	Donskoy, or Don Sphynx	Kitten	Male	medium	large	2021-04-02 18:31:33.12261	2021-04-02 18:31:33.12261
94	Felix	Nebelung	Senior	Female	short	extra large	2021-04-02 18:31:33.124036	2021-04-02 18:31:33.124036
95	Misty	Chantilly-Tiffany	Kitten	Female	long	large	2021-04-02 18:31:33.125473	2021-04-02 18:31:33.125473
96	Poppy	Chausie	Senior	Female	long	large	2021-04-02 18:31:33.127039	2021-04-02 18:31:33.127039
97	Jasper	Egyptian Mau	Adult	Female	long	medium	2021-04-02 18:31:33.128518	2021-04-02 18:31:33.128518
98	Missy	Highlander	Senior	Male	curly	large	2021-04-02 18:31:33.130031	2021-04-02 18:31:33.130031
99	Lucy	Colorpoint Shorthair	Kitten	Female	medium	medium	2021-04-02 18:31:33.131497	2021-04-02 18:31:33.131497
100	Bella	Chausie	Kitten	Female	curly	small	2021-04-02 18:31:33.133155	2021-04-02 18:31:33.133155
101	Misty	Oriental Shorthair	Senior	Female	medium	extra large	2021-04-02 21:54:45.333173	2021-04-02 21:54:45.333173
102	Misty	Oriental Shorthair	Senior	Female	medium	extra large	2021-04-02 23:03:51.906687	2021-04-02 23:03:51.906687
\.


--
-- Data for Name: dogs; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.dogs (id, name, breed, age, gender, coat_length, size, created_at, updated_at) FROM stdin;
53	Diesel	Toy Terrier	Senior	Female	curly	extra large	2021-04-02 18:31:33.147432	2021-04-02 18:31:33.147432
54	Coco	Keeshond	Senior	Male	medium	small	2021-04-02 18:31:33.149016	2021-04-02 18:31:33.149016
56	Lady	German Pointer	Puppy	Female	short	small	2021-04-02 18:31:33.152348	2021-04-02 18:31:33.152348
57	Sophie	Silky Terrier	Puppy	Female	wire	medium	2021-04-02 18:31:33.153972	2021-04-02 18:31:33.153972
58	Sassy	Norwegian Elkhound	Puppy	Male	wire	large	2021-04-02 18:31:33.155534	2021-04-02 18:31:33.155534
59	Jasper	Bull Mastiff	Senior	Female	curly	large	2021-04-02 18:31:33.157618	2021-04-02 18:31:33.157618
60	Precious	Whippet	Senior	Male	curly	small	2021-04-02 18:31:33.159386	2021-04-02 18:31:33.159386
61	Cocoa	Wheaten Terrier	Puppy	Male	long	small	2021-04-02 18:31:33.160986	2021-04-02 18:31:33.160986
62	Sasha	Kuvasz	Senior	Male	medium	large	2021-04-02 18:31:33.162473	2021-04-02 18:31:33.162473
63	Tank	English Springer	Puppy	Male	medium	large	2021-04-02 18:31:33.163977	2021-04-02 18:31:33.163977
64	Bandit	English Sheepdog	Adult	Male	long	large	2021-04-02 18:31:33.165389	2021-04-02 18:31:33.165389
65	Rusty	Afghan Hound	Puppy	Female	medium	large	2021-04-02 18:31:33.166745	2021-04-02 18:31:33.166745
66	Jasper	Brittany Spaniel	Senior	Male	medium	large	2021-04-02 18:31:33.168136	2021-04-02 18:31:33.168136
67	Oscar	Irish Spaniel	Adult	Female	hairless	medium	2021-04-02 18:31:33.169808	2021-04-02 18:31:33.169808
68	Bailey	German Pointer	Adult	Male	wire	large	2021-04-02 18:31:33.17137	2021-04-02 18:31:33.17137
69	Cocoa	Entlebucher	Adult	Male	medium	extra large	2021-04-02 18:31:33.173001	2021-04-02 18:31:33.173001
70	Ruby	Italian Greyhound	Puppy	Male	short	extra large	2021-04-02 18:31:33.174478	2021-04-02 18:31:33.174478
71	Sandy	Coonhound	Adult	Male	hairless	medium	2021-04-02 18:31:33.175978	2021-04-02 18:31:33.175978
72	Belle	Basset Hound	Puppy	Female	curly	medium	2021-04-02 18:31:33.177881	2021-04-02 18:31:33.177881
73	Sasha	Walker Hound	Senior	Female	medium	small	2021-04-02 18:31:33.179538	2021-04-02 18:31:33.179538
74	Jack	Sealyham Terrier	Adult	Male	long	small	2021-04-02 18:31:33.181103	2021-04-02 18:31:33.181103
75	Dakota	Dandie Terrier	Senior	Male	long	medium	2021-04-02 18:31:33.18262	2021-04-02 18:31:33.18262
76	Rascal	Chow	Adult	Female	medium	large	2021-04-02 18:31:33.184026	2021-04-02 18:31:33.184026
77	Lucky	Pug	Senior	Female	curly	medium	2021-04-02 18:31:33.185458	2021-04-02 18:31:33.185458
78	Bruno	Borzoi	Senior	Female	medium	extra large	2021-04-02 18:31:33.187018	2021-04-02 18:31:33.187018
79	Scooter	Akita	Puppy	Male	short	small	2021-04-02 18:31:33.188658	2021-04-02 18:31:33.188658
80	Bailey	German Pointer	Senior	Female	curly	large	2021-04-02 18:31:33.191996	2021-04-02 18:31:33.191996
81	Rascal	Stbernard	Adult	Male	hairless	extra large	2021-04-02 18:31:33.195666	2021-04-02 18:31:33.195666
55	George	Pug	 OLD	Male	short	medium	2021-04-02 18:31:33.150588	2021-04-02 21:52:48.676163
82	Snickers	Staffordshire Bullterrier	Adult	Female	short	small	2021-04-02 18:31:33.19883	2021-04-02 18:31:33.19883
83	Peanut	Coonhound	Puppy	Female	short	large	2021-04-02 18:31:33.203861	2021-04-02 18:31:33.203861
84	Coco	Malamute	Senior	Female	wire	small	2021-04-02 18:31:33.206651	2021-04-02 18:31:33.206651
85	Sparky	Pyrenees	Senior	Male	long	extra large	2021-04-02 18:31:33.208913	2021-04-02 18:31:33.208913
86	Annie	Malamute	Puppy	Male	short	small	2021-04-02 18:31:33.212308	2021-04-02 18:31:33.212308
87	Riley	Dingo	Senior	Female	short	small	2021-04-02 18:31:33.21525	2021-04-02 18:31:33.21525
88	Brutus	Rhodesian Ridgeback	Puppy	Female	long	extra large	2021-04-02 18:31:33.218609	2021-04-02 18:31:33.218609
89	Buster	Walker Hound	Puppy	Female	curly	small	2021-04-02 18:31:33.22041	2021-04-02 18:31:33.22041
90	Blue	Borzoi	Adult	Female	short	large	2021-04-02 18:31:33.222316	2021-04-02 18:31:33.222316
91	Penny	Chow	Senior	Female	wire	medium	2021-04-02 18:31:33.22393	2021-04-02 18:31:33.22393
92	Bear	Scottish Deerhound	Adult	Male	hairless	large	2021-04-02 18:31:33.225964	2021-04-02 18:31:33.225964
93	Chloe	Curly Retriever	Adult	Male	long	small	2021-04-02 18:31:33.227696	2021-04-02 18:31:33.227696
94	Sadie	Husky	Senior	Male	long	large	2021-04-02 18:31:33.229327	2021-04-02 18:31:33.229327
95	Bruno	Rottweiler	Adult	Male	curly	small	2021-04-02 18:31:33.230964	2021-04-02 18:31:33.230964
96	Patches	Akita	Senior	Male	hairless	extra large	2021-04-02 18:31:33.232464	2021-04-02 18:31:33.232464
97	Sassy	Chesapeake Retriever	Adult	Female	short	small	2021-04-02 18:31:33.234204	2021-04-02 18:31:33.234204
98	Brutus	Ibizan Hound	Puppy	Male	medium	small	2021-04-02 18:31:33.235847	2021-04-02 18:31:33.235847
99	Teddy	Husky	Puppy	Male	hairless	extra large	2021-04-02 18:31:33.237675	2021-04-02 18:31:33.237675
100	Scooter	Dachshund	Puppy	Female	hairless	small	2021-04-02 18:31:33.239401	2021-04-02 18:31:33.239401
101	Charles	Pug	Old	Male	Long	Large	2021-04-02 20:48:50.060502	2021-04-02 20:48:50.060502
102	George	Pug	Senior	Male	short	medium	2021-04-02 21:50:00.547084	2021-04-02 21:50:00.547084
103	George	Pug	Senior	Male	short	medium	2021-04-02 23:02:48.862902	2021-04-02 23:02:48.862902
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: HB
--

COPY public.schema_migrations (version) FROM stdin;
20210402160901
20210402160952
\.


--
-- Name: cats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.cats_id_seq', 102, true);


--
-- Name: dogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: HB
--

SELECT pg_catalog.setval('public.dogs_id_seq', 103, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cats cats_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.cats
    ADD CONSTRAINT cats_pkey PRIMARY KEY (id);


--
-- Name: dogs dogs_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.dogs
    ADD CONSTRAINT dogs_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: HB
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

