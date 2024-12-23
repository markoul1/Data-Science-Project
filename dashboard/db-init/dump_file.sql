--
-- PostgreSQL database dump
--

-- Dumped from database version 13.15 (Raspbian 13.15-0+deb11u1)
-- Dumped by pg_dump version 13.15 (Raspbian 13.15-0+deb11u1)

-- Started on 2024-11-12 20:52:45 CET

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
-- TOC entry 205 (class 1259 OID 24639)
-- Name: pollutants_historics; Type: TABLE; Schema: public; Owner: colab
--

CREATE TABLE public.pollutants_historics (
    pm10 real,
    pm25 real,
    week integer,
    year integer,
    year_week character varying(255),
    "year_week_station_ID" character varying(255) NOT NULL,
    station character varying(255)
);


ALTER TABLE public.pollutants_historics OWNER TO colab;

--
-- TOC entry 204 (class 1259 OID 16433)
-- Name: pollution_sensor_data; Type: TABLE; Schema: public; Owner: colab
--

CREATE TABLE public.pollution_sensor_data (
    etl_timestamp timestamp without time zone NOT NULL,
    station_id character varying NOT NULL,
    api_timestamp timestamp without time zone NOT NULL,
    location_address character varying NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    name character varying NOT NULL,
    pm10 integer NOT NULL,
    pm25 integer NOT NULL,
    ui_url character varying NOT NULL,
    url character varying NOT NULL,
    aqi integer
);


ALTER TABLE public.pollution_sensor_data OWNER TO colab;

--
-- TOC entry 201 (class 1259 OID 16390)
-- Name: test_table; Type: TABLE; Schema: public; Owner: colab
--

CREATE TABLE public.test_table (
    id integer NOT NULL,
    name character varying,
    age integer
);


ALTER TABLE public.test_table OWNER TO colab;

--
-- TOC entry 200 (class 1259 OID 16388)
-- Name: test_table_id_seq; Type: SEQUENCE; Schema: public; Owner: colab
--

CREATE SEQUENCE public.test_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_table_id_seq OWNER TO colab;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 200
-- Name: test_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: colab
--

ALTER SEQUENCE public.test_table_id_seq OWNED BY public.test_table.id;


--
-- TOC entry 202 (class 1259 OID 16415)
-- Name: traffic_volume; Type: TABLE; Schema: public; Owner: colab
--

CREATE TABLE public.traffic_volume (
    station_id integer NOT NULL,
    etl_timestamp timestamp without time zone NOT NULL,
    traffic_volume integer
);


ALTER TABLE public.traffic_volume OWNER TO colab;

--
-- TOC entry 203 (class 1259 OID 16420)
-- Name: weather; Type: TABLE; Schema: public; Owner: colab
--

CREATE TABLE public.weather (
    date timestamp without time zone NOT NULL,
    temperature real,
    humidity smallint,
    precipitation real,
    wind real
);


ALTER TABLE public.weather OWNER TO colab;

--
-- TOC entry 2872 (class 2604 OID 16393)
-- Name: test_table id; Type: DEFAULT; Schema: public; Owner: colab
--

ALTER TABLE ONLY public.test_table ALTER COLUMN id SET DEFAULT nextval('public.test_table_id_seq'::regclass);


--
-- TOC entry 3018 (class 0 OID 24639)
-- Dependencies: 205
-- Data for Name: pollutants_historics; Type: TABLE DATA; Schema: public; Owner: colab
--

COPY public.pollutants_historics (pm10, pm25, week, year, year_week, "year_week_station_ID", station) FROM stdin;
3.03	1.12	39	2020	2020-W39	2020-W39_Lambrate	Lambrate
9.08	5.52	40	2020	2020-W40	2020-W40_Lambrate	Lambrate
9.34	5.62	41	2020	2020-W41	2020-W41_Lambrate	Lambrate
15.61	10.9	42	2020	2020-W42	2020-W42_Lambrate	Lambrate
47.84	33.62	43	2020	2020-W43	2020-W43_Lambrate	Lambrate
22.92	15.57	44	2020	2020-W44	2020-W44_Lambrate	Lambrate
64.56	37.15	45	2020	2020-W45	2020-W45_Lambrate	Lambrate
88.21	47.74	46	2020	2020-W46	2020-W46_Lambrate	Lambrate
38.94	22.03	47	2020	2020-W47	2020-W47_Lambrate	Lambrate
71.27	45.74	48	2020	2020-W48	2020-W48_Lambrate	Lambrate
31.36	17.9	49	2020	2020-W49	2020-W49_Lambrate	Lambrate
33.3	21.89	50	2020	2020-W50	2020-W50_Lambrate	Lambrate
56.33	38.32	51	2020	2020-W51	2020-W51_Lambrate	Lambrate
29.3	19.27	52	2020	2020-W52	2020-W52_Lambrate	Lambrate
35.98	25.26	53	2020	2020-W53	2020-W53_Lambrate	Lambrate
15.72	10.23	1	2021	2021-W1	2021-W1_Lambrate	Lambrate
24.87	15.14	2	2021	2021-W2	2021-W2_Lambrate	Lambrate
79.46	45.58	3	2021	2021-W3	2021-W3_Lambrate	Lambrate
18.91	12.49	4	2021	2021-W4	2021-W4_Lambrate	Lambrate
51.65	26.3	5	2021	2021-W5	2021-W5_Lambrate	Lambrate
11.32	6.86	6	2021	2021-W6	2021-W6_Lambrate	Lambrate
67.61	39.33	7	2021	2021-W7	2021-W7_Lambrate	Lambrate
50.37	23.46	8	2021	2021-W8	2021-W8_Lambrate	Lambrate
25.27	15.01	9	2021	2021-W9	2021-W9_Lambrate	Lambrate
32.95	21.28	10	2021	2021-W10	2021-W10_Lambrate	Lambrate
5.71	3.09	11	2021	2021-W11	2021-W11_Lambrate	Lambrate
15.78	9.83	12	2021	2021-W12	2021-W12_Lambrate	Lambrate
25.53	13.94	13	2021	2021-W13	2021-W13_Lambrate	Lambrate
6.05	2.32	14	2021	2021-W14	2021-W14_Lambrate	Lambrate
10.52	7.36	15	2021	2021-W15	2021-W15_Lambrate	Lambrate
17.05	12.39	16	2021	2021-W16	2021-W16_Lambrate	Lambrate
19.16	14	17	2021	2021-W17	2021-W17_Lambrate	Lambrate
6.57	2.66	18	2021	2021-W18	2021-W18_Lambrate	Lambrate
6.22	3.16	19	2021	2021-W19	2021-W19_Lambrate	Lambrate
4.72	1.74	20	2021	2021-W20	2021-W20_Lambrate	Lambrate
6.76	3.64	21	2021	2021-W21	2021-W21_Lambrate	Lambrate
6.88	3.75	22	2021	2021-W22	2021-W22_Lambrate	Lambrate
10.46	7.97	23	2021	2021-W23	2021-W23_Lambrate	Lambrate
11.76	7.09	24	2021	2021-W24	2021-W24_Lambrate	Lambrate
7.49	2.42	25	2021	2021-W25	2021-W25_Lambrate	Lambrate
6.59	2.88	26	2021	2021-W26	2021-W26_Lambrate	Lambrate
4.17	2.15	27	2021	2021-W27	2021-W27_Lambrate	Lambrate
5.99	3.1	28	2021	2021-W28	2021-W28_Lambrate	Lambrate
10.13	6.6	29	2021	2021-W29	2021-W29_Lambrate	Lambrate
9.06	5.8	30	2021	2021-W30	2021-W30_Lambrate	Lambrate
6.14	2.72	31	2021	2021-W31	2021-W31_Lambrate	Lambrate
8.84	4.91	32	2021	2021-W32	2021-W32_Lambrate	Lambrate
6.54	3.22	33	2021	2021-W33	2021-W33_Lambrate	Lambrate
4.87	2.47	34	2021	2021-W34	2021-W34_Lambrate	Lambrate
6.13	3.68	35	2021	2021-W35	2021-W35_Lambrate	Lambrate
11.84	7.73	36	2021	2021-W36	2021-W36_Lambrate	Lambrate
12.35	8.2	37	2021	2021-W37	2021-W37_Lambrate	Lambrate
23.06	14.69	38	2021	2021-W38	2021-W38_Lambrate	Lambrate
17.55	12.1	39	2021	2021-W39	2021-W39_Lambrate	Lambrate
10.45	6.01	40	2021	2021-W40	2021-W40_Lambrate	Lambrate
24.3	16.26	41	2021	2021-W41	2021-W41_Lambrate	Lambrate
40.12	27.87	42	2021	2021-W42	2021-W42_Lambrate	Lambrate
30.69	20.58	43	2021	2021-W43	2021-W43_Lambrate	Lambrate
14.43	9.49	44	2021	2021-W44	2021-W44_Lambrate	Lambrate
25	15.5	45	2021	2021-W45	2021-W45_Lambrate	Lambrate
36.77	19.56	46	2021	2021-W46	2021-W46_Lambrate	Lambrate
19.39	12.31	47	2021	2021-W47	2021-W47_Lambrate	Lambrate
20.71	12.83	48	2021	2021-W48	2021-W48_Lambrate	Lambrate
28.87	17.35	49	2021	2021-W49	2021-W49_Lambrate	Lambrate
48.78	29.53	50	2021	2021-W50	2021-W50_Lambrate	Lambrate
47.95	26.73	51	2021	2021-W51	2021-W51_Lambrate	Lambrate
60.59	33.43	52	2021	2021-W52	2021-W52_Lambrate	Lambrate
13.83	10.02	53	2021	2021-W53	2021-W53_Lambrate	Lambrate
32.06	18.41	1	2022	2022-W1	2022-W1_Lambrate	Lambrate
32.58	19.53	2	2022	2022-W2	2022-W2_Lambrate	Lambrate
71.75	36.48	3	2022	2022-W3	2022-W3_Lambrate	Lambrate
64.67	29.55	4	2022	2022-W4	2022-W4_Lambrate	Lambrate
43.17	24.06	5	2022	2022-W5	2022-W5_Lambrate	Lambrate
13.28	6.39	6	2022	2022-W6	2022-W6_Lambrate	Lambrate
50.59	29.35	7	2022	2022-W7	2022-W7_Lambrate	Lambrate
12.23	6.68	8	2022	2022-W8	2022-W8_Lambrate	Lambrate
20.81	12.9	9	2022	2022-W9	2022-W9_Lambrate	Lambrate
27.98	16.04	10	2022	2022-W10	2022-W10_Lambrate	Lambrate
31.28	19.92	11	2022	2022-W11	2022-W11_Lambrate	Lambrate
24.95	15.56	12	2022	2022-W12	2022-W12_Lambrate	Lambrate
21.66	13.08	13	2022	2022-W13	2022-W13_Lambrate	Lambrate
12.98	7.68	14	2022	2022-W14	2022-W14_Lambrate	Lambrate
14.69	7.96	15	2022	2022-W15	2022-W15_Lambrate	Lambrate
9.88	6.32	16	2022	2022-W16	2022-W16_Lambrate	Lambrate
7.98	5.11	17	2022	2022-W17	2022-W17_Lambrate	Lambrate
11.81	8.5	18	2022	2022-W18	2022-W18_Lambrate	Lambrate
8.92	4.99	19	2022	2022-W19	2022-W19_Lambrate	Lambrate
7.52	3.62	20	2022	2022-W20	2022-W20_Lambrate	Lambrate
10.03	5.39	21	2022	2022-W21	2022-W21_Lambrate	Lambrate
11.34	7.5	22	2022	2022-W22	2022-W22_Lambrate	Lambrate
4.18	1.7	23	2022	2022-W23	2022-W23_Lambrate	Lambrate
7.83	4.67	24	2022	2022-W24	2022-W24_Lambrate	Lambrate
9.32	4.14	25	2022	2022-W25	2022-W25_Lambrate	Lambrate
7.73	2.96	26	2022	2022-W26	2022-W26_Lambrate	Lambrate
4.04	1.81	27	2022	2022-W27	2022-W27_Lambrate	Lambrate
5.38	3.06	28	2022	2022-W28	2022-W28_Lambrate	Lambrate
7.64	4.69	29	2022	2022-W29	2022-W29_Lambrate	Lambrate
6.17	3.99	30	2022	2022-W30	2022-W30_Lambrate	Lambrate
3.96	2.2	31	2022	2022-W31	2022-W31_Lambrate	Lambrate
4.17	2.3	32	2022	2022-W32	2022-W32_Lambrate	Lambrate
5.18	3.06	33	2022	2022-W33	2022-W33_Lambrate	Lambrate
4.28	2.31	34	2022	2022-W34	2022-W34_Lambrate	Lambrate
7.6	5.31	35	2022	2022-W35	2022-W35_Lambrate	Lambrate
7.33	4.13	36	2022	2022-W36	2022-W36_Lambrate	Lambrate
6.08	2.26	37	2022	2022-W37	2022-W37_Lambrate	Lambrate
8.34	4.9	38	2022	2022-W38	2022-W38_Lambrate	Lambrate
7.53	5	39	2022	2022-W39	2022-W39_Lambrate	Lambrate
29.08	20.77	40	2022	2022-W40	2022-W40_Lambrate	Lambrate
35.2	23.13	41	2022	2022-W41	2022-W41_Lambrate	Lambrate
28.12	18.96	42	2022	2022-W42	2022-W42_Lambrate	Lambrate
18.13	10.47	43	2022	2022-W43	2022-W43_Lambrate	Lambrate
15.44	9.24	44	2022	2022-W44	2022-W44_Lambrate	Lambrate
21.8	15.36	45	2022	2022-W45	2022-W45_Lambrate	Lambrate
17.21	11.79	46	2022	2022-W46	2022-W46_Lambrate	Lambrate
18.09	12.24	47	2022	2022-W47	2022-W47_Lambrate	Lambrate
27.76	17.12	48	2022	2022-W48	2022-W48_Lambrate	Lambrate
28.47	16.35	49	2022	2022-W49	2022-W49_Lambrate	Lambrate
35.57	19.95	50	2022	2022-W50	2022-W50_Lambrate	Lambrate
53.82	31.84	51	2022	2022-W51	2022-W51_Lambrate	Lambrate
52.7	31.62	52	2022	2022-W52	2022-W52_Lambrate	Lambrate
33.6	19.24	1	2023	2023-W1	2023-W1_Lambrate	Lambrate
26.62	16.19	2	2023	2023-W2	2023-W2_Lambrate	Lambrate
28.71	14.4	3	2023	2023-W3	2023-W3_Lambrate	Lambrate
22.43	12.35	4	2023	2023-W4	2023-W4_Lambrate	Lambrate
23.48	12.01	5	2023	2023-W5	2023-W5_Lambrate	Lambrate
24.68	13.25	6	2023	2023-W6	2023-W6_Lambrate	Lambrate
35.5	20.08	7	2023	2023-W7	2023-W7_Lambrate	Lambrate
61.09	33.08	8	2023	2023-W8	2023-W8_Lambrate	Lambrate
24.37	15.3	9	2023	2023-W9	2023-W9_Lambrate	Lambrate
14.25	7.93	10	2023	2023-W10	2023-W10_Lambrate	Lambrate
14.41	9.03	11	2023	2023-W11	2023-W11_Lambrate	Lambrate
21.45	13.4	12	2023	2023-W12	2023-W12_Lambrate	Lambrate
6.58	2.71	13	2023	2023-W13	2023-W13_Lambrate	Lambrate
10.03	6.13	14	2023	2023-W14	2023-W14_Lambrate	Lambrate
7.21	4.2	15	2023	2023-W15	2023-W15_Lambrate	Lambrate
9.22	5.89	16	2023	2023-W16	2023-W16_Lambrate	Lambrate
9.62	6.06	17	2023	2023-W17	2023-W17_Lambrate	Lambrate
7.46	5.25	18	2023	2023-W18	2023-W18_Lambrate	Lambrate
7.05	4.87	19	2023	2023-W19	2023-W19_Lambrate	Lambrate
7.25	4.71	20	2023	2023-W20	2023-W20_Lambrate	Lambrate
10.7	7.02	21	2023	2023-W21	2023-W21_Lambrate	Lambrate
8.69	5.9	22	2023	2023-W22	2023-W22_Lambrate	Lambrate
9.22	6.49	23	2023	2023-W23	2023-W23_Lambrate	Lambrate
7.67	5.39	24	2023	2023-W24	2023-W24_Lambrate	Lambrate
7.81	4.58	25	2023	2023-W25	2023-W25_Lambrate	Lambrate
8.86	6.1	26	2023	2023-W26	2023-W26_Lambrate	Lambrate
6.58	3.59	27	2023	2023-W27	2023-W27_Lambrate	Lambrate
8.93	4.28	28	2023	2023-W28	2023-W28_Lambrate	Lambrate
10.6	5.9	29	2023	2023-W29	2023-W29_Lambrate	Lambrate
5.8	3.24	30	2023	2023-W30	2023-W30_Lambrate	Lambrate
5.68	2.77	31	2023	2023-W31	2023-W31_Lambrate	Lambrate
3.56	1.78	32	2023	2023-W32	2023-W32_Lambrate	Lambrate
6.71	4.87	33	2023	2023-W33	2023-W33_Lambrate	Lambrate
9.34	5.23	34	2023	2023-W34	2023-W34_Lambrate	Lambrate
4.95	2.39	35	2023	2023-W35	2023-W35_Lambrate	Lambrate
11.48	7.45	36	2023	2023-W36	2023-W36_Lambrate	Lambrate
15.16	11.55	37	2023	2023-W37	2023-W37_Lambrate	Lambrate
9.72	5.69	38	2023	2023-W38	2023-W38_Lambrate	Lambrate
12.38	8	39	2023	2023-W39	2023-W39_Lambrate	Lambrate
25.64	17.23	40	2023	2023-W40	2023-W40_Lambrate	Lambrate
18.29	8.98	41	2023	2023-W41	2023-W41_Lambrate	Lambrate
12.33	6.95	42	2023	2023-W42	2023-W42_Lambrate	Lambrate
19.35	10.52	43	2023	2023-W43	2023-W43_Lambrate	Lambrate
10.38	6.08	44	2023	2023-W44	2023-W44_Lambrate	Lambrate
10.17	5.78	45	2023	2023-W45	2023-W45_Lambrate	Lambrate
16.41	9.8	46	2023	2023-W46	2023-W46_Lambrate	Lambrate
18.75	10.82	47	2023	2023-W47	2023-W47_Lambrate	Lambrate
15.53	8.71	48	2023	2023-W48	2023-W48_Lambrate	Lambrate
24.91	14.39	49	2023	2023-W49	2023-W49_Lambrate	Lambrate
44.37	21.86	50	2023	2023-W50	2023-W50_Lambrate	Lambrate
26.05	15.13	51	2023	2023-W51	2023-W51_Lambrate	Lambrate
32.87	19.62	52	2023	2023-W52	2023-W52_Lambrate	Lambrate
18.9	12.09	1	2024	2024-W1	2024-W1_Lambrate	Lambrate
20	13.12	2	2024	2024-W2	2024-W2_Lambrate	Lambrate
41.38	23.49	3	2024	2024-W3	2024-W3_Lambrate	Lambrate
52.98	35.37	4	2024	2024-W4	2024-W4_Lambrate	Lambrate
46.11	30.45	5	2024	2024-W5	2024-W5_Lambrate	Lambrate
40.03	24.4	6	2024	2024-W6	2024-W6_Lambrate	Lambrate
47.81	33.61	7	2024	2024-W7	2024-W7_Lambrate	Lambrate
47.17	30.15	8	2024	2024-W8	2024-W8_Lambrate	Lambrate
8.67	5.24	9	2024	2024-W9	2024-W9_Lambrate	Lambrate
10.29	6.26	10	2024	2024-W10	2024-W10_Lambrate	Lambrate
8.13	4.44	11	2024	2024-W11	2024-W11_Lambrate	Lambrate
31.18	19.91	12	2024	2024-W12	2024-W12_Lambrate	Lambrate
13.17	6.13	13	2024	2024-W13	2024-W13_Lambrate	Lambrate
6.27	2.39	14	2024	2024-W14	2024-W14_Lambrate	Lambrate
12.5	7.82	15	2024	2024-W15	2024-W15_Lambrate	Lambrate
3.99	1.26	16	2024	2024-W16	2024-W16_Lambrate	Lambrate
6.84	4.46	17	2024	2024-W17	2024-W17_Lambrate	Lambrate
6.91	3.44	18	2024	2024-W18	2024-W18_Lambrate	Lambrate
6.74	3.91	19	2024	2024-W19	2024-W19_Lambrate	Lambrate
7.27	4.69	20	2024	2024-W20	2024-W20_Lambrate	Lambrate
6.73	3.26	21	2024	2024-W21	2024-W21_Lambrate	Lambrate
7.1	4.21	22	2024	2024-W22	2024-W22_Lambrate	Lambrate
7.89	4.72	23	2024	2024-W23	2024-W23_Lambrate	Lambrate
6.83	3.25	24	2024	2024-W24	2024-W24_Lambrate	Lambrate
10.5	4.47	25	2024	2024-W25	2024-W25_Lambrate	Lambrate
9.85	6.33	26	2024	2024-W26	2024-W26_Lambrate	Lambrate
7.54	4.89	27	2024	2024-W27	2024-W27_Lambrate	Lambrate
9.11	6.27	28	2024	2024-W28	2024-W28_Lambrate	Lambrate
8.25	5.43	29	2024	2024-W29	2024-W29_Lambrate	Lambrate
7.67	4.86	30	2024	2024-W30	2024-W30_Lambrate	Lambrate
8.61	5.5	31	2024	2024-W31	2024-W31_Lambrate	Lambrate
9.79	6.98	32	2024	2024-W32	2024-W32_Lambrate	Lambrate
8.34	5.08	33	2024	2024-W33	2024-W33_Lambrate	Lambrate
10.16	6.52	34	2024	2024-W34	2024-W34_Lambrate	Lambrate
12.95	8.95	35	2024	2024-W35	2024-W35_Lambrate	Lambrate
10.95	7.36	36	2024	2024-W36	2024-W36_Lambrate	Lambrate
3.05	1.37	37	2024	2024-W37	2024-W37_Lambrate	Lambrate
6.96	3.95	38	2024	2024-W38	2024-W38_Lambrate	Lambrate
9.78	5.79	39	2024	2024-W39	2024-W39_Lambrate	Lambrate
7.64	5.17	40	2024	2024-W40	2024-W40_Lambrate	Lambrate
11.61	7.02	41	2024	2024-W41	2024-W41_Lambrate	Lambrate
11.58	7.67	42	2024	2024-W42	2024-W42_Lambrate	Lambrate
19.91	13.1	43	2024	2024-W43	2024-W43_Lambrate	Lambrate
20.29	11.58	44	2024	2024-W44	2024-W44_Lambrate	Lambrate
40.42	23.98	45	2024	2024-W45	2024-W45_Lambrate	Lambrate
24.6	26.33	46	2024	2024-W46	2024-W46_Lambrate	Lambrate
37.77	23.05	5	2020	2020-W5	2020-W5_Corso 22 Marzo	Corso 22 Marzo
22.38	14.96	6	2020	2020-W6	2020-W6_Corso 22 Marzo	Corso 22 Marzo
33.33	21.06	7	2020	2020-W7	2020-W7_Corso 22 Marzo	Corso 22 Marzo
38.49	24	8	2020	2020-W8	2020-W8_Corso 22 Marzo	Corso 22 Marzo
22.83	13.98	9	2020	2020-W9	2020-W9_Corso 22 Marzo	Corso 22 Marzo
12.37	9.82	10	2020	2020-W10	2020-W10_Corso 22 Marzo	Corso 22 Marzo
8.08	5.43	11	2020	2020-W11	2020-W11_Corso 22 Marzo	Corso 22 Marzo
22.51	14.82	12	2020	2020-W12	2020-W12_Corso 22 Marzo	Corso 22 Marzo
17.65	5.72	13	2020	2020-W13	2020-W13_Corso 22 Marzo	Corso 22 Marzo
18.23	11.98	14	2020	2020-W14	2020-W14_Corso 22 Marzo	Corso 22 Marzo
10.86	7.71	15	2020	2020-W15	2020-W15_Corso 22 Marzo	Corso 22 Marzo
6.34	3.54	16	2020	2020-W16	2020-W16_Corso 22 Marzo	Corso 22 Marzo
5.08	3.1	19	2020	2020-W19	2020-W19_Corso 22 Marzo	Corso 22 Marzo
8.62	5.48	20	2020	2020-W20	2020-W20_Corso 22 Marzo	Corso 22 Marzo
7.68	5.28	21	2020	2020-W21	2020-W21_Corso 22 Marzo	Corso 22 Marzo
4.64	3.28	22	2020	2020-W22	2020-W22_Corso 22 Marzo	Corso 22 Marzo
4.37	3.07	23	2020	2020-W23	2020-W23_Corso 22 Marzo	Corso 22 Marzo
3.9	2.75	24	2020	2020-W24	2020-W24_Corso 22 Marzo	Corso 22 Marzo
3.52	2.38	25	2020	2020-W25	2020-W25_Corso 22 Marzo	Corso 22 Marzo
4.77	3.03	26	2020	2020-W26	2020-W26_Corso 22 Marzo	Corso 22 Marzo
3.73	2.47	27	2020	2020-W27	2020-W27_Corso 22 Marzo	Corso 22 Marzo
4.85	2.65	28	2020	2020-W28	2020-W28_Corso 22 Marzo	Corso 22 Marzo
3.33	2.03	29	2020	2020-W29	2020-W29_Corso 22 Marzo	Corso 22 Marzo
3.99	2.71	30	2020	2020-W30	2020-W30_Corso 22 Marzo	Corso 22 Marzo
6.56	4.92	31	2020	2020-W31	2020-W31_Corso 22 Marzo	Corso 22 Marzo
1.39	0.73	32	2020	2020-W32	2020-W32_Corso 22 Marzo	Corso 22 Marzo
4.71	3.37	33	2020	2020-W33	2020-W33_Corso 22 Marzo	Corso 22 Marzo
4.33	2.5	34	2020	2020-W34	2020-W34_Corso 22 Marzo	Corso 22 Marzo
5.41	3.32	35	2020	2020-W35	2020-W35_Corso 22 Marzo	Corso 22 Marzo
3.23	2.08	36	2020	2020-W36	2020-W36_Corso 22 Marzo	Corso 22 Marzo
9.11	6.37	37	2020	2020-W37	2020-W37_Corso 22 Marzo	Corso 22 Marzo
12.06	7.77	38	2020	2020-W38	2020-W38_Corso 22 Marzo	Corso 22 Marzo
9.36	6.03	39	2020	2020-W39	2020-W39_Corso 22 Marzo	Corso 22 Marzo
5.54	2.83	40	2020	2020-W40	2020-W40_Corso 22 Marzo	Corso 22 Marzo
6.68	3.65	41	2020	2020-W41	2020-W41_Corso 22 Marzo	Corso 22 Marzo
11.64	7.62	42	2020	2020-W42	2020-W42_Corso 22 Marzo	Corso 22 Marzo
38.29	22.72	43	2020	2020-W43	2020-W43_Corso 22 Marzo	Corso 22 Marzo
18.93	10.64	44	2020	2020-W44	2020-W44_Corso 22 Marzo	Corso 22 Marzo
50.12	24.59	45	2020	2020-W45	2020-W45_Corso 22 Marzo	Corso 22 Marzo
79.18	36.05	46	2020	2020-W46	2020-W46_Corso 22 Marzo	Corso 22 Marzo
33.1	15.96	47	2020	2020-W47	2020-W47_Corso 22 Marzo	Corso 22 Marzo
59.82	32.57	48	2020	2020-W48	2020-W48_Corso 22 Marzo	Corso 22 Marzo
21.55	12.18	49	2020	2020-W49	2020-W49_Corso 22 Marzo	Corso 22 Marzo
23.02	13.85	50	2020	2020-W50	2020-W50_Corso 22 Marzo	Corso 22 Marzo
45	25.98	51	2020	2020-W51	2020-W51_Corso 22 Marzo	Corso 22 Marzo
22.27	13.23	52	2020	2020-W52	2020-W52_Corso 22 Marzo	Corso 22 Marzo
15.7	10.95	53	2020	2020-W53	2020-W53_Corso 22 Marzo	Corso 22 Marzo
7.83	5.94	1	2021	2021-W1	2021-W1_Corso 22 Marzo	Corso 22 Marzo
21.11	12.06	2	2021	2021-W2	2021-W2_Corso 22 Marzo	Corso 22 Marzo
62.23	32.72	3	2021	2021-W3	2021-W3_Corso 22 Marzo	Corso 22 Marzo
13.33	8.5	4	2021	2021-W4	2021-W4_Corso 22 Marzo	Corso 22 Marzo
34.92	18.05	5	2021	2021-W5	2021-W5_Corso 22 Marzo	Corso 22 Marzo
8.26	5.46	6	2021	2021-W6	2021-W6_Corso 22 Marzo	Corso 22 Marzo
56.42	28.85	7	2021	2021-W7	2021-W7_Corso 22 Marzo	Corso 22 Marzo
45.84	17.86	8	2021	2021-W8	2021-W8_Corso 22 Marzo	Corso 22 Marzo
20.64	10.64	9	2021	2021-W9	2021-W9_Corso 22 Marzo	Corso 22 Marzo
27.37	15.27	10	2021	2021-W10	2021-W10_Corso 22 Marzo	Corso 22 Marzo
3.05	2.11	11	2021	2021-W11	2021-W11_Corso 22 Marzo	Corso 22 Marzo
10.91	6.12	12	2021	2021-W12	2021-W12_Corso 22 Marzo	Corso 22 Marzo
20.12	9.26	13	2021	2021-W13	2021-W13_Corso 22 Marzo	Corso 22 Marzo
3.24	1.55	14	2021	2021-W14	2021-W14_Corso 22 Marzo	Corso 22 Marzo
6.65	4.88	15	2021	2021-W15	2021-W15_Corso 22 Marzo	Corso 22 Marzo
11.73	8.04	16	2021	2021-W16	2021-W16_Corso 22 Marzo	Corso 22 Marzo
14.98	10.16	17	2021	2021-W17	2021-W17_Corso 22 Marzo	Corso 22 Marzo
4.09	1.94	18	2021	2021-W18	2021-W18_Corso 22 Marzo	Corso 22 Marzo
3.45	1.89	19	2021	2021-W19	2021-W19_Corso 22 Marzo	Corso 22 Marzo
2.7	1.12	20	2021	2021-W20	2021-W20_Corso 22 Marzo	Corso 22 Marzo
4.38	2.44	21	2021	2021-W21	2021-W21_Corso 22 Marzo	Corso 22 Marzo
4	2.32	22	2021	2021-W22	2021-W22_Corso 22 Marzo	Corso 22 Marzo
6.65	4.98	23	2021	2021-W23	2021-W23_Corso 22 Marzo	Corso 22 Marzo
7.17	4.26	24	2021	2021-W24	2021-W24_Corso 22 Marzo	Corso 22 Marzo
4.96	1.68	25	2021	2021-W25	2021-W25_Corso 22 Marzo	Corso 22 Marzo
3.63	1.67	26	2021	2021-W26	2021-W26_Corso 22 Marzo	Corso 22 Marzo
2.3	1.27	27	2021	2021-W27	2021-W27_Corso 22 Marzo	Corso 22 Marzo
3.58	2.08	28	2021	2021-W28	2021-W28_Corso 22 Marzo	Corso 22 Marzo
6.92	4.35	29	2021	2021-W29	2021-W29_Corso 22 Marzo	Corso 22 Marzo
6.16	3.91	30	2021	2021-W30	2021-W30_Corso 22 Marzo	Corso 22 Marzo
3.7	1.79	31	2021	2021-W31	2021-W31_Corso 22 Marzo	Corso 22 Marzo
5.63	3.25	32	2021	2021-W32	2021-W32_Corso 22 Marzo	Corso 22 Marzo
4.19	2.1	33	2021	2021-W33	2021-W33_Corso 22 Marzo	Corso 22 Marzo
2.82	1.68	34	2021	2021-W34	2021-W34_Corso 22 Marzo	Corso 22 Marzo
3.79	2.53	35	2021	2021-W35	2021-W35_Corso 22 Marzo	Corso 22 Marzo
8.07	5.32	36	2021	2021-W36	2021-W36_Corso 22 Marzo	Corso 22 Marzo
9.83	6.09	37	2021	2021-W37	2021-W37_Corso 22 Marzo	Corso 22 Marzo
1.98	1.29	38	2021	2021-W38	2021-W38_Corso 22 Marzo	Corso 22 Marzo
12.85	8	39	2021	2021-W39	2021-W39_Corso 22 Marzo	Corso 22 Marzo
66.79	33.65	3	2022	2022-W3	2022-W3_Corso 22 Marzo	Corso 22 Marzo
64.19	28.98	4	2022	2022-W4	2022-W4_Corso 22 Marzo	Corso 22 Marzo
38.75	19.96	5	2022	2022-W5	2022-W5_Corso 22 Marzo	Corso 22 Marzo
10.91	5.22	6	2022	2022-W6	2022-W6_Corso 22 Marzo	Corso 22 Marzo
46.77	24.87	7	2022	2022-W7	2022-W7_Corso 22 Marzo	Corso 22 Marzo
8.57	4.77	8	2022	2022-W8	2022-W8_Corso 22 Marzo	Corso 22 Marzo
17.73	10.22	9	2022	2022-W9	2022-W9_Corso 22 Marzo	Corso 22 Marzo
24.58	13.03	10	2022	2022-W10	2022-W10_Corso 22 Marzo	Corso 22 Marzo
27.81	16.04	11	2022	2022-W11	2022-W11_Corso 22 Marzo	Corso 22 Marzo
21.22	12.18	12	2022	2022-W12	2022-W12_Corso 22 Marzo	Corso 22 Marzo
18.83	10.52	13	2022	2022-W13	2022-W13_Corso 22 Marzo	Corso 22 Marzo
9.92	5.63	14	2022	2022-W14	2022-W14_Corso 22 Marzo	Corso 22 Marzo
11.12	5.54	15	2022	2022-W15	2022-W15_Corso 22 Marzo	Corso 22 Marzo
5.86	3.96	16	2022	2022-W16	2022-W16_Corso 22 Marzo	Corso 22 Marzo
5.2	3.56	17	2022	2022-W17	2022-W17_Corso 22 Marzo	Corso 22 Marzo
6.74	5.13	18	2022	2022-W18	2022-W18_Corso 22 Marzo	Corso 22 Marzo
6.11	3.23	19	2022	2022-W19	2022-W19_Corso 22 Marzo	Corso 22 Marzo
5.26	2.37	20	2022	2022-W20	2022-W20_Corso 22 Marzo	Corso 22 Marzo
7.23	3.73	21	2022	2022-W21	2022-W21_Corso 22 Marzo	Corso 22 Marzo
8.98	5.71	22	2022	2022-W22	2022-W22_Corso 22 Marzo	Corso 22 Marzo
2.92	1.34	23	2022	2022-W23	2022-W23_Corso 22 Marzo	Corso 22 Marzo
5.21	3	24	2022	2022-W24	2022-W24_Corso 22 Marzo	Corso 22 Marzo
6.39	2.84	25	2022	2022-W25	2022-W25_Corso 22 Marzo	Corso 22 Marzo
5.72	2.12	26	2022	2022-W26	2022-W26_Corso 22 Marzo	Corso 22 Marzo
2.6	1.26	27	2022	2022-W27	2022-W27_Corso 22 Marzo	Corso 22 Marzo
3.5	2.09	28	2022	2022-W28	2022-W28_Corso 22 Marzo	Corso 22 Marzo
5.16	3.5	29	2022	2022-W29	2022-W29_Corso 22 Marzo	Corso 22 Marzo
3.63	2.73	30	2022	2022-W30	2022-W30_Corso 22 Marzo	Corso 22 Marzo
2.65	1.54	31	2022	2022-W31	2022-W31_Corso 22 Marzo	Corso 22 Marzo
3.23	1.83	32	2022	2022-W32	2022-W32_Corso 22 Marzo	Corso 22 Marzo
5.24	3.96	35	2022	2022-W35	2022-W35_Corso 22 Marzo	Corso 22 Marzo
5.65	3.38	36	2022	2022-W36	2022-W36_Corso 22 Marzo	Corso 22 Marzo
3.95	1.63	37	2022	2022-W37	2022-W37_Corso 22 Marzo	Corso 22 Marzo
5.41	3.5	38	2022	2022-W38	2022-W38_Corso 22 Marzo	Corso 22 Marzo
5.23	3.43	39	2022	2022-W39	2022-W39_Corso 22 Marzo	Corso 22 Marzo
26.27	15.98	40	2022	2022-W40	2022-W40_Corso 22 Marzo	Corso 22 Marzo
38.04	21.15	41	2022	2022-W41	2022-W41_Corso 22 Marzo	Corso 22 Marzo
32.08	18.33	42	2022	2022-W42	2022-W42_Corso 22 Marzo	Corso 22 Marzo
22.23	11.22	43	2022	2022-W43	2022-W43_Corso 22 Marzo	Corso 22 Marzo
16.76	9.23	44	2022	2022-W44	2022-W44_Corso 22 Marzo	Corso 22 Marzo
21.93	13.67	45	2022	2022-W45	2022-W45_Corso 22 Marzo	Corso 22 Marzo
17.49	10.88	46	2022	2022-W46	2022-W46_Corso 22 Marzo	Corso 22 Marzo
18.83	11.77	47	2022	2022-W47	2022-W47_Corso 22 Marzo	Corso 22 Marzo
20.56	12.6	48	2022	2022-W48	2022-W48_Corso 22 Marzo	Corso 22 Marzo
19.59	11.9	49	2022	2022-W49	2022-W49_Corso 22 Marzo	Corso 22 Marzo
28.51	15.56	50	2022	2022-W50	2022-W50_Corso 22 Marzo	Corso 22 Marzo
46.55	24.77	51	2022	2022-W51	2022-W51_Corso 22 Marzo	Corso 22 Marzo
42.53	22.73	52	2022	2022-W52	2022-W52_Corso 22 Marzo	Corso 22 Marzo
23.5	13.51	1	2023	2023-W1	2023-W1_Corso 22 Marzo	Corso 22 Marzo
20.43	12.1	2	2023	2023-W2	2023-W2_Corso 22 Marzo	Corso 22 Marzo
20.74	10.88	3	2023	2023-W3	2023-W3_Corso 22 Marzo	Corso 22 Marzo
17.67	9.72	4	2023	2023-W4	2023-W4_Corso 22 Marzo	Corso 22 Marzo
33.7	17.4	5	2023	2023-W5	2023-W5_Corso 22 Marzo	Corso 22 Marzo
4.54	2.14	10	2023	2023-W10	2023-W10_Corso 22 Marzo	Corso 22 Marzo
10.24	6.41	11	2023	2023-W11	2023-W11_Corso 22 Marzo	Corso 22 Marzo
17.18	9.67	12	2023	2023-W12	2023-W12_Corso 22 Marzo	Corso 22 Marzo
4.42	2.2	13	2023	2023-W13	2023-W13_Corso 22 Marzo	Corso 22 Marzo
6.91	4.58	14	2023	2023-W14	2023-W14_Corso 22 Marzo	Corso 22 Marzo
4.52	3.04	15	2023	2023-W15	2023-W15_Corso 22 Marzo	Corso 22 Marzo
4.97	3.69	16	2023	2023-W16	2023-W16_Corso 22 Marzo	Corso 22 Marzo
5.52	3.66	17	2023	2023-W17	2023-W17_Corso 22 Marzo	Corso 22 Marzo
4.36	3.41	18	2023	2023-W18	2023-W18_Corso 22 Marzo	Corso 22 Marzo
3.41	2.67	19	2023	2023-W19	2023-W19_Corso 22 Marzo	Corso 22 Marzo
3.93	2.87	20	2023	2023-W20	2023-W20_Corso 22 Marzo	Corso 22 Marzo
7.27	5.1	21	2023	2023-W21	2023-W21_Corso 22 Marzo	Corso 22 Marzo
5.66	4.3	22	2023	2023-W22	2023-W22_Corso 22 Marzo	Corso 22 Marzo
5.72	4.7	23	2023	2023-W23	2023-W23_Corso 22 Marzo	Corso 22 Marzo
4.92	3.18	25	2023	2023-W25	2023-W25_Corso 22 Marzo	Corso 22 Marzo
5.95	4.43	26	2023	2023-W26	2023-W26_Corso 22 Marzo	Corso 22 Marzo
4.26	2.92	27	2023	2023-W27	2023-W27_Corso 22 Marzo	Corso 22 Marzo
6.29	3.49	28	2023	2023-W28	2023-W28_Corso 22 Marzo	Corso 22 Marzo
7.22	4.52	29	2023	2023-W29	2023-W29_Corso 22 Marzo	Corso 22 Marzo
3.57	2.3	30	2023	2023-W30	2023-W30_Corso 22 Marzo	Corso 22 Marzo
3.88	2.18	31	2023	2023-W31	2023-W31_Corso 22 Marzo	Corso 22 Marzo
2.28	1.34	32	2023	2023-W32	2023-W32_Corso 22 Marzo	Corso 22 Marzo
4.63	3.56	33	2023	2023-W33	2023-W33_Corso 22 Marzo	Corso 22 Marzo
6.52	5.04	34	2023	2023-W34	2023-W34_Corso 22 Marzo	Corso 22 Marzo
2.98	1.72	35	2023	2023-W35	2023-W35_Corso 22 Marzo	Corso 22 Marzo
7.12	5.03	36	2023	2023-W36	2023-W36_Corso 22 Marzo	Corso 22 Marzo
7.57	5.7	37	2023	2023-W37	2023-W37_Corso 22 Marzo	Corso 22 Marzo
6.44	4.1	38	2023	2023-W38	2023-W38_Corso 22 Marzo	Corso 22 Marzo
8.83	5.53	39	2023	2023-W39	2023-W39_Corso 22 Marzo	Corso 22 Marzo
8.55	5.26	42	2023	2023-W42	2023-W42_Corso 22 Marzo	Corso 22 Marzo
13.66	7.88	43	2023	2023-W43	2023-W43_Corso 22 Marzo	Corso 22 Marzo
5.2	3.47	44	2023	2023-W44	2023-W44_Corso 22 Marzo	Corso 22 Marzo
7.04	4.58	45	2023	2023-W45	2023-W45_Corso 22 Marzo	Corso 22 Marzo
12.9	7.63	46	2023	2023-W46	2023-W46_Corso 22 Marzo	Corso 22 Marzo
14.44	8.55	47	2023	2023-W47	2023-W47_Corso 22 Marzo	Corso 22 Marzo
9.41	6.17	48	2023	2023-W48	2023-W48_Corso 22 Marzo	Corso 22 Marzo
21.4	12.94	49	2023	2023-W49	2023-W49_Corso 22 Marzo	Corso 22 Marzo
34.06	18.09	50	2023	2023-W50	2023-W50_Corso 22 Marzo	Corso 22 Marzo
19.69	11.59	51	2023	2023-W51	2023-W51_Corso 22 Marzo	Corso 22 Marzo
23.98	14.55	52	2023	2023-W52	2023-W52_Corso 22 Marzo	Corso 22 Marzo
13.94	9.42	1	2024	2024-W1	2024-W1_Corso 22 Marzo	Corso 22 Marzo
16.67	10.21	2	2024	2024-W2	2024-W2_Corso 22 Marzo	Corso 22 Marzo
33.77	17.6	3	2024	2024-W3	2024-W3_Corso 22 Marzo	Corso 22 Marzo
50.16	27.18	4	2024	2024-W4	2024-W4_Corso 22 Marzo	Corso 22 Marzo
44.16	23.02	5	2024	2024-W5	2024-W5_Corso 22 Marzo	Corso 22 Marzo
33.36	17.9	6	2024	2024-W6	2024-W6_Corso 22 Marzo	Corso 22 Marzo
50.72	29.06	7	2024	2024-W7	2024-W7_Corso 22 Marzo	Corso 22 Marzo
44.84	24.58	8	2024	2024-W8	2024-W8_Corso 22 Marzo	Corso 22 Marzo
5.37	3.57	9	2024	2024-W9	2024-W9_Corso 22 Marzo	Corso 22 Marzo
6.25	4.37	10	2024	2024-W10	2024-W10_Corso 22 Marzo	Corso 22 Marzo
7.95	4.98	11	2024	2024-W11	2024-W11_Corso 22 Marzo	Corso 22 Marzo
24.8	14.11	12	2024	2024-W12	2024-W12_Corso 22 Marzo	Corso 22 Marzo
11.61	4.4	13	2024	2024-W13	2024-W13_Corso 22 Marzo	Corso 22 Marzo
3.91	1.85	14	2024	2024-W14	2024-W14_Corso 22 Marzo	Corso 22 Marzo
8.41	5.66	15	2024	2024-W15	2024-W15_Corso 22 Marzo	Corso 22 Marzo
2.14	0.96	16	2024	2024-W16	2024-W16_Corso 22 Marzo	Corso 22 Marzo
3.97	3.08	17	2024	2024-W17	2024-W17_Corso 22 Marzo	Corso 22 Marzo
3.99	2.2	18	2024	2024-W18	2024-W18_Corso 22 Marzo	Corso 22 Marzo
3.52	2.54	19	2024	2024-W19	2024-W19_Corso 22 Marzo	Corso 22 Marzo
4.39	3.23	20	2024	2024-W20	2024-W20_Corso 22 Marzo	Corso 22 Marzo
3.62	2.26	21	2024	2024-W21	2024-W21_Corso 22 Marzo	Corso 22 Marzo
4.27	3.14	22	2024	2024-W22	2024-W22_Corso 22 Marzo	Corso 22 Marzo
3.82	2.63	23	2024	2024-W23	2024-W23_Corso 22 Marzo	Corso 22 Marzo
3.89	2.19	24	2024	2024-W24	2024-W24_Corso 22 Marzo	Corso 22 Marzo
6.65	2.91	25	2024	2024-W25	2024-W25_Corso 22 Marzo	Corso 22 Marzo
5.34	3.6	26	2024	2024-W26	2024-W26_Corso 22 Marzo	Corso 22 Marzo
3.94	2.73	27	2024	2024-W27	2024-W27_Corso 22 Marzo	Corso 22 Marzo
5.08	3.63	28	2024	2024-W28	2024-W28_Corso 22 Marzo	Corso 22 Marzo
4.16	3.09	29	2024	2024-W29	2024-W29_Corso 22 Marzo	Corso 22 Marzo
4.11	3.01	30	2024	2024-W30	2024-W30_Corso 22 Marzo	Corso 22 Marzo
5.01	3.5	31	2024	2024-W31	2024-W31_Corso 22 Marzo	Corso 22 Marzo
5.44	4.39	32	2024	2024-W32	2024-W32_Corso 22 Marzo	Corso 22 Marzo
4.59	3.1	33	2024	2024-W33	2024-W33_Corso 22 Marzo	Corso 22 Marzo
5.96	4.41	34	2024	2024-W34	2024-W34_Corso 22 Marzo	Corso 22 Marzo
7.56	5.88	35	2024	2024-W35	2024-W35_Corso 22 Marzo	Corso 22 Marzo
6.17	4.65	36	2024	2024-W36	2024-W36_Corso 22 Marzo	Corso 22 Marzo
1.53	0.83	37	2024	2024-W37	2024-W37_Corso 22 Marzo	Corso 22 Marzo
4.49	3.06	38	2024	2024-W38	2024-W38_Corso 22 Marzo	Corso 22 Marzo
6.85	4.79	39	2024	2024-W39	2024-W39_Corso 22 Marzo	Corso 22 Marzo
4.51	3.43	40	2024	2024-W40	2024-W40_Corso 22 Marzo	Corso 22 Marzo
7.33	5.04	41	2024	2024-W41	2024-W41_Corso 22 Marzo	Corso 22 Marzo
9.68	6.65	42	2024	2024-W42	2024-W42_Corso 22 Marzo	Corso 22 Marzo
15.82	10.58	43	2024	2024-W43	2024-W43_Corso 22 Marzo	Corso 22 Marzo
16.22	9.46	44	2024	2024-W44	2024-W44_Corso 22 Marzo	Corso 22 Marzo
38.27	21.03	45	2024	2024-W45	2024-W45_Corso 22 Marzo	Corso 22 Marzo
18.08	16.36	46	2024	2024-W46	2024-W46_Corso 22 Marzo	Corso 22 Marzo
98.68	41.83	5	2022	2022-W5	2022-W5_Via Franco Albini	Via Franco Albini
17.74	9.09	6	2022	2022-W6	2022-W6_Via Franco Albini	Via Franco Albini
57.36	26.74	7	2022	2022-W7	2022-W7_Via Franco Albini	Via Franco Albini
15.41	7.74	8	2022	2022-W8	2022-W8_Via Franco Albini	Via Franco Albini
24.4	12.92	9	2022	2022-W9	2022-W9_Via Franco Albini	Via Franco Albini
30.59	15.15	10	2022	2022-W10	2022-W10_Via Franco Albini	Via Franco Albini
37.24	19.99	11	2022	2022-W11	2022-W11_Via Franco Albini	Via Franco Albini
28.33	16.02	12	2022	2022-W12	2022-W12_Via Franco Albini	Via Franco Albini
24.53	13.17	13	2022	2022-W13	2022-W13_Via Franco Albini	Via Franco Albini
14.36	7.7	14	2022	2022-W14	2022-W14_Via Franco Albini	Via Franco Albini
15.75	7.69	15	2022	2022-W15	2022-W15_Via Franco Albini	Via Franco Albini
11.25	6.46	16	2022	2022-W16	2022-W16_Via Franco Albini	Via Franco Albini
10.4	5.91	17	2022	2022-W17	2022-W17_Via Franco Albini	Via Franco Albini
12.47	7.71	18	2022	2022-W18	2022-W18_Via Franco Albini	Via Franco Albini
10.15	5.49	19	2022	2022-W19	2022-W19_Via Franco Albini	Via Franco Albini
8.57	4.27	20	2022	2022-W20	2022-W20_Via Franco Albini	Via Franco Albini
11.05	5.93	21	2022	2022-W21	2022-W21_Via Franco Albini	Via Franco Albini
12.75	7.85	22	2022	2022-W22	2022-W22_Via Franco Albini	Via Franco Albini
5.52	2.26	23	2022	2022-W23	2022-W23_Via Franco Albini	Via Franco Albini
9.46	5.77	24	2022	2022-W24	2022-W24_Via Franco Albini	Via Franco Albini
10.35	4.8	25	2022	2022-W25	2022-W25_Via Franco Albini	Via Franco Albini
8.81	3.68	26	2022	2022-W26	2022-W26_Via Franco Albini	Via Franco Albini
5.65	2.57	27	2022	2022-W27	2022-W27_Via Franco Albini	Via Franco Albini
7.29	4.25	28	2022	2022-W28	2022-W28_Via Franco Albini	Via Franco Albini
9.49	5.91	29	2022	2022-W29	2022-W29_Via Franco Albini	Via Franco Albini
7.59	4.53	30	2022	2022-W30	2022-W30_Via Franco Albini	Via Franco Albini
5.87	3.19	31	2022	2022-W31	2022-W31_Via Franco Albini	Via Franco Albini
6.04	3.12	32	2022	2022-W32	2022-W32_Via Franco Albini	Via Franco Albini
6.8	3.42	33	2022	2022-W33	2022-W33_Via Franco Albini	Via Franco Albini
6.18	3.1	34	2022	2022-W34	2022-W34_Via Franco Albini	Via Franco Albini
8.19	4.93	35	2022	2022-W35	2022-W35_Via Franco Albini	Via Franco Albini
8.07	4.23	36	2022	2022-W36	2022-W36_Via Franco Albini	Via Franco Albini
5.99	2.29	37	2022	2022-W37	2022-W37_Via Franco Albini	Via Franco Albini
9.02	4.81	38	2022	2022-W38	2022-W38_Via Franco Albini	Via Franco Albini
8.71	4.66	39	2022	2022-W39	2022-W39_Via Franco Albini	Via Franco Albini
28.18	16.58	40	2022	2022-W40	2022-W40_Via Franco Albini	Via Franco Albini
39.45	20.27	41	2022	2022-W41	2022-W41_Via Franco Albini	Via Franco Albini
33.88	18.04	42	2022	2022-W42	2022-W42_Via Franco Albini	Via Franco Albini
21.7	10.69	43	2022	2022-W43	2022-W43_Via Franco Albini	Via Franco Albini
21.71	10.26	44	2022	2022-W44	2022-W44_Via Franco Albini	Via Franco Albini
27.82	15.94	45	2022	2022-W45	2022-W45_Via Franco Albini	Via Franco Albini
24.78	13.32	46	2022	2022-W46	2022-W46_Via Franco Albini	Via Franco Albini
27.43	15.91	47	2022	2022-W47	2022-W47_Via Franco Albini	Via Franco Albini
29.97	16.08	48	2022	2022-W48	2022-W48_Via Franco Albini	Via Franco Albini
29.38	14.61	49	2022	2022-W49	2022-W49_Via Franco Albini	Via Franco Albini
38.9	17.86	50	2022	2022-W50	2022-W50_Via Franco Albini	Via Franco Albini
61.68	28.96	51	2022	2022-W51	2022-W51_Via Franco Albini	Via Franco Albini
55.46	25.83	52	2022	2022-W52	2022-W52_Via Franco Albini	Via Franco Albini
34.09	15.82	1	2023	2023-W1	2023-W1_Via Franco Albini	Via Franco Albini
31.62	17.46	2	2023	2023-W2	2023-W2_Via Franco Albini	Via Franco Albini
28.85	12.8	3	2023	2023-W3	2023-W3_Via Franco Albini	Via Franco Albini
25.08	12.23	4	2023	2023-W4	2023-W4_Via Franco Albini	Via Franco Albini
26.73	12.57	5	2023	2023-W5	2023-W5_Via Franco Albini	Via Franco Albini
27.94	13.3	6	2023	2023-W6	2023-W6_Via Franco Albini	Via Franco Albini
37.78	18.34	7	2023	2023-W7	2023-W7_Via Franco Albini	Via Franco Albini
62.39	26.95	8	2023	2023-W8	2023-W8_Via Franco Albini	Via Franco Albini
24.58	12.85	9	2023	2023-W9	2023-W9_Via Franco Albini	Via Franco Albini
17.08	8.36	10	2023	2023-W10	2023-W10_Via Franco Albini	Via Franco Albini
15.88	8.87	11	2023	2023-W11	2023-W11_Via Franco Albini	Via Franco Albini
20.63	11.39	12	2023	2023-W12	2023-W12_Via Franco Albini	Via Franco Albini
7.64	3.4	13	2023	2023-W13	2023-W13_Via Franco Albini	Via Franco Albini
12.18	6.74	14	2023	2023-W14	2023-W14_Via Franco Albini	Via Franco Albini
8.29	4.41	15	2023	2023-W15	2023-W15_Via Franco Albini	Via Franco Albini
9.96	5.57	16	2023	2023-W16	2023-W16_Via Franco Albini	Via Franco Albini
10.03	5.41	17	2023	2023-W17	2023-W17_Via Franco Albini	Via Franco Albini
8.99	5.57	18	2023	2023-W18	2023-W18_Via Franco Albini	Via Franco Albini
7.4	4.42	19	2023	2023-W19	2023-W19_Via Franco Albini	Via Franco Albini
8.28	4.66	20	2023	2023-W20	2023-W20_Via Franco Albini	Via Franco Albini
12.42	7.58	21	2023	2023-W21	2023-W21_Via Franco Albini	Via Franco Albini
10.33	6.14	22	2023	2023-W22	2023-W22_Via Franco Albini	Via Franco Albini
10.15	6.21	23	2023	2023-W23	2023-W23_Via Franco Albini	Via Franco Albini
9.41	5.89	24	2023	2023-W24	2023-W24_Via Franco Albini	Via Franco Albini
9	5.23	25	2023	2023-W25	2023-W25_Via Franco Albini	Via Franco Albini
10.4	6.47	26	2023	2023-W26	2023-W26_Via Franco Albini	Via Franco Albini
8.37	4.4	27	2023	2023-W27	2023-W27_Via Franco Albini	Via Franco Albini
10.82	5.71	28	2023	2023-W28	2023-W28_Via Franco Albini	Via Franco Albini
12.36	6.86	29	2023	2023-W29	2023-W29_Via Franco Albini	Via Franco Albini
7.37	3.66	30	2023	2023-W30	2023-W30_Via Franco Albini	Via Franco Albini
7.5	3.65	31	2023	2023-W31	2023-W31_Via Franco Albini	Via Franco Albini
5.62	3.05	32	2023	2023-W32	2023-W32_Via Franco Albini	Via Franco Albini
9.92	6.98	33	2023	2023-W33	2023-W33_Via Franco Albini	Via Franco Albini
12.41	8.51	34	2023	2023-W34	2023-W34_Via Franco Albini	Via Franco Albini
6.13	2.89	35	2023	2023-W35	2023-W35_Via Franco Albini	Via Franco Albini
11.83	7.41	36	2023	2023-W36	2023-W36_Via Franco Albini	Via Franco Albini
12.3	7.94	37	2023	2023-W37	2023-W37_Via Franco Albini	Via Franco Albini
10.66	5.47	38	2023	2023-W38	2023-W38_Via Franco Albini	Via Franco Albini
15.17	8.96	39	2023	2023-W39	2023-W39_Via Franco Albini	Via Franco Albini
26.51	15.91	40	2023	2023-W40	2023-W40_Via Franco Albini	Via Franco Albini
16.08	7.75	41	2023	2023-W41	2023-W41_Via Franco Albini	Via Franco Albini
12.97	6.78	42	2023	2023-W42	2023-W42_Via Franco Albini	Via Franco Albini
19.17	9.51	43	2023	2023-W43	2023-W43_Via Franco Albini	Via Franco Albini
9.88	5.16	44	2023	2023-W44	2023-W44_Via Franco Albini	Via Franco Albini
13.96	7.68	45	2023	2023-W45	2023-W45_Via Franco Albini	Via Franco Albini
19.62	11.38	46	2023	2023-W46	2023-W46_Via Franco Albini	Via Franco Albini
22.49	12.8	47	2023	2023-W47	2023-W47_Via Franco Albini	Via Franco Albini
17.25	9.29	48	2023	2023-W48	2023-W48_Via Franco Albini	Via Franco Albini
33.9	17.45	49	2023	2023-W49	2023-W49_Via Franco Albini	Via Franco Albini
45.95	20.99	50	2023	2023-W50	2023-W50_Via Franco Albini	Via Franco Albini
30.21	16.81	51	2023	2023-W51	2023-W51_Via Franco Albini	Via Franco Albini
38.86	21.24	52	2023	2023-W52	2023-W52_Via Franco Albini	Via Franco Albini
25.36	13.96	1	2024	2024-W1	2024-W1_Via Franco Albini	Via Franco Albini
27.64	14.59	2	2024	2024-W2	2024-W2_Via Franco Albini	Via Franco Albini
48.89	21.07	3	2024	2024-W3	2024-W3_Via Franco Albini	Via Franco Albini
69.24	33.6	4	2024	2024-W4	2024-W4_Via Franco Albini	Via Franco Albini
56.64	28.32	5	2024	2024-W5	2024-W5_Via Franco Albini	Via Franco Albini
48.13	21.83	6	2024	2024-W6	2024-W6_Via Franco Albini	Via Franco Albini
63.85	33.76	7	2024	2024-W7	2024-W7_Via Franco Albini	Via Franco Albini
56.73	27.03	8	2024	2024-W8	2024-W8_Via Franco Albini	Via Franco Albini
11.43	6.25	9	2024	2024-W9	2024-W9_Via Franco Albini	Via Franco Albini
12.58	6.75	10	2024	2024-W10	2024-W10_Via Franco Albini	Via Franco Albini
14.46	8.11	11	2024	2024-W11	2024-W11_Via Franco Albini	Via Franco Albini
30.3	14.96	12	2024	2024-W12	2024-W12_Via Franco Albini	Via Franco Albini
16.69	6.41	13	2024	2024-W13	2024-W13_Via Franco Albini	Via Franco Albini
7.17	2.77	14	2024	2024-W14	2024-W14_Via Franco Albini	Via Franco Albini
13.41	8.09	15	2024	2024-W15	2024-W15_Via Franco Albini	Via Franco Albini
4.86	1.78	16	2024	2024-W16	2024-W16_Via Franco Albini	Via Franco Albini
8.9	5.24	17	2024	2024-W17	2024-W17_Via Franco Albini	Via Franco Albini
7.61	3.74	18	2024	2024-W18	2024-W18_Via Franco Albini	Via Franco Albini
7.52	4.29	19	2024	2024-W19	2024-W19_Via Franco Albini	Via Franco Albini
8.78	5.2	20	2024	2024-W20	2024-W20_Via Franco Albini	Via Franco Albini
7.45	3.54	21	2024	2024-W21	2024-W21_Via Franco Albini	Via Franco Albini
8.26	4.52	22	2024	2024-W22	2024-W22_Via Franco Albini	Via Franco Albini
7.73	4.46	23	2024	2024-W23	2024-W23_Via Franco Albini	Via Franco Albini
7.75	3.64	24	2024	2024-W24	2024-W24_Via Franco Albini	Via Franco Albini
10.12	4.42	25	2024	2024-W25	2024-W25_Via Franco Albini	Via Franco Albini
10.35	6.06	26	2024	2024-W26	2024-W26_Via Franco Albini	Via Franco Albini
8.35	5.02	27	2024	2024-W27	2024-W27_Via Franco Albini	Via Franco Albini
10.21	6.4	28	2024	2024-W28	2024-W28_Via Franco Albini	Via Franco Albini
8.84	5.7	29	2024	2024-W29	2024-W29_Via Franco Albini	Via Franco Albini
8.79	5.44	30	2024	2024-W30	2024-W30_Via Franco Albini	Via Franco Albini
9.42	5.72	31	2024	2024-W31	2024-W31_Via Franco Albini	Via Franco Albini
10.67	7.16	32	2024	2024-W32	2024-W32_Via Franco Albini	Via Franco Albini
9.25	5.63	33	2024	2024-W33	2024-W33_Via Franco Albini	Via Franco Albini
10.92	6.37	34	2024	2024-W34	2024-W34_Via Franco Albini	Via Franco Albini
13.95	9.21	35	2024	2024-W35	2024-W35_Via Franco Albini	Via Franco Albini
11.16	6.73	36	2024	2024-W36	2024-W36_Via Franco Albini	Via Franco Albini
4.39	1.97	37	2024	2024-W37	2024-W37_Via Franco Albini	Via Franco Albini
8.77	5.08	38	2024	2024-W38	2024-W38_Via Franco Albini	Via Franco Albini
11.22	6.58	39	2024	2024-W39	2024-W39_Via Franco Albini	Via Franco Albini
9.41	5.64	40	2024	2024-W40	2024-W40_Via Franco Albini	Via Franco Albini
13.8	7.43	41	2024	2024-W41	2024-W41_Via Franco Albini	Via Franco Albini
16.71	9.65	42	2024	2024-W42	2024-W42_Via Franco Albini	Via Franco Albini
22.56	12.66	43	2024	2024-W43	2024-W43_Via Franco Albini	Via Franco Albini
18.6	10.31	44	2024	2024-W44	2024-W44_Via Franco Albini	Via Franco Albini
45.14	22.25	45	2024	2024-W45	2024-W45_Via Franco Albini	Via Franco Albini
92.16	51.19	1	2019	2019-W1	2019-W1_Via Federico Chopin	Via Federico Chopin
34.58	24.99	50	2019	2019-W50	2019-W50_Via Federico Chopin	Via Federico Chopin
42.37	28.59	51	2019	2019-W51	2019-W51_Via Federico Chopin	Via Federico Chopin
30.1	21.73	52	2019	2019-W52	2019-W52_Via Federico Chopin	Via Federico Chopin
69.63	48.59	1	2020	2020-W1	2020-W1_Via Federico Chopin	Via Federico Chopin
79.45	50.95	2	2020	2020-W2	2020-W2_Via Federico Chopin	Via Federico Chopin
87.05	62.03	3	2020	2020-W3	2020-W3_Via Federico Chopin	Via Federico Chopin
61.87	42.21	4	2020	2020-W4	2020-W4_Via Federico Chopin	Via Federico Chopin
77.18	51.43	5	2020	2020-W5	2020-W5_Via Federico Chopin	Via Federico Chopin
31.57	22.01	6	2020	2020-W6	2020-W6_Via Federico Chopin	Via Federico Chopin
44.31	32.13	7	2020	2020-W7	2020-W7_Via Federico Chopin	Via Federico Chopin
52.45	36.18	8	2020	2020-W8	2020-W8_Via Federico Chopin	Via Federico Chopin
30.14	20.77	9	2020	2020-W9	2020-W9_Via Federico Chopin	Via Federico Chopin
23	18.06	10	2020	2020-W10	2020-W10_Via Federico Chopin	Via Federico Chopin
13.98	9.82	11	2020	2020-W11	2020-W11_Via Federico Chopin	Via Federico Chopin
32.87	23.87	12	2020	2020-W12	2020-W12_Via Federico Chopin	Via Federico Chopin
21.84	8.95	13	2020	2020-W13	2020-W13_Via Federico Chopin	Via Federico Chopin
25.74	17.86	14	2020	2020-W14	2020-W14_Via Federico Chopin	Via Federico Chopin
16.53	12.2	15	2020	2020-W15	2020-W15_Via Federico Chopin	Via Federico Chopin
11.67	6.37	16	2020	2020-W16	2020-W16_Via Federico Chopin	Via Federico Chopin
14.38	10.66	17	2020	2020-W17	2020-W17_Via Federico Chopin	Via Federico Chopin
7.31	4.31	18	2020	2020-W18	2020-W18_Via Federico Chopin	Via Federico Chopin
8.07	4.66	19	2020	2020-W19	2020-W19_Via Federico Chopin	Via Federico Chopin
13.5	8.68	20	2020	2020-W20	2020-W20_Via Federico Chopin	Via Federico Chopin
13.84	10.01	21	2020	2020-W21	2020-W21_Via Federico Chopin	Via Federico Chopin
7.85	4.78	22	2020	2020-W22	2020-W22_Via Federico Chopin	Via Federico Chopin
8.72	5.86	23	2020	2020-W23	2020-W23_Via Federico Chopin	Via Federico Chopin
7.04	4.36	24	2020	2020-W24	2020-W24_Via Federico Chopin	Via Federico Chopin
6.08	3.5	25	2020	2020-W25	2020-W25_Via Federico Chopin	Via Federico Chopin
7.16	4.67	26	2020	2020-W26	2020-W26_Via Federico Chopin	Via Federico Chopin
7.16	4.28	27	2020	2020-W27	2020-W27_Via Federico Chopin	Via Federico Chopin
7.07	3.49	28	2020	2020-W28	2020-W28_Via Federico Chopin	Via Federico Chopin
6.26	3.81	29	2020	2020-W29	2020-W29_Via Federico Chopin	Via Federico Chopin
6.88	4.68	30	2020	2020-W30	2020-W30_Via Federico Chopin	Via Federico Chopin
10.17	8.02	31	2020	2020-W31	2020-W31_Via Federico Chopin	Via Federico Chopin
5.28	3.09	32	2020	2020-W32	2020-W32_Via Federico Chopin	Via Federico Chopin
9.5	7.14	33	2020	2020-W33	2020-W33_Via Federico Chopin	Via Federico Chopin
7.51	4.47	34	2020	2020-W34	2020-W34_Via Federico Chopin	Via Federico Chopin
8.8	5.6	35	2020	2020-W35	2020-W35_Via Federico Chopin	Via Federico Chopin
6.11	3.59	36	2020	2020-W36	2020-W36_Via Federico Chopin	Via Federico Chopin
16.98	13.52	37	2020	2020-W37	2020-W37_Via Federico Chopin	Via Federico Chopin
18.92	14.73	38	2020	2020-W38	2020-W38_Via Federico Chopin	Via Federico Chopin
15.3	11.23	39	2020	2020-W39	2020-W39_Via Federico Chopin	Via Federico Chopin
8.99	4.62	40	2020	2020-W40	2020-W40_Via Federico Chopin	Via Federico Chopin
11.05	6.65	41	2020	2020-W41	2020-W41_Via Federico Chopin	Via Federico Chopin
19.61	14.55	42	2020	2020-W42	2020-W42_Via Federico Chopin	Via Federico Chopin
62.71	43.38	43	2020	2020-W43	2020-W43_Via Federico Chopin	Via Federico Chopin
28.35	18.6	44	2020	2020-W44	2020-W44_Via Federico Chopin	Via Federico Chopin
66.25	42.02	45	2020	2020-W45	2020-W45_Via Federico Chopin	Via Federico Chopin
107.29	62.63	46	2020	2020-W46	2020-W46_Via Federico Chopin	Via Federico Chopin
46.17	26.27	47	2020	2020-W47	2020-W47_Via Federico Chopin	Via Federico Chopin
88.88	61.8	48	2020	2020-W48	2020-W48_Via Federico Chopin	Via Federico Chopin
33.51	21.48	49	2020	2020-W49	2020-W49_Via Federico Chopin	Via Federico Chopin
34.88	23.83	50	2020	2020-W50	2020-W50_Via Federico Chopin	Via Federico Chopin
58.47	41.51	53	2020	2020-W53	2020-W53_Via Federico Chopin	Via Federico Chopin
24.65	17.37	1	2021	2021-W1	2021-W1_Via Federico Chopin	Via Federico Chopin
35.53	24.88	2	2021	2021-W2	2021-W2_Via Federico Chopin	Via Federico Chopin
92.06	57.42	3	2021	2021-W3	2021-W3_Via Federico Chopin	Via Federico Chopin
24.13	17.87	4	2021	2021-W4	2021-W4_Via Federico Chopin	Via Federico Chopin
55.46	31.73	5	2021	2021-W5	2021-W5_Via Federico Chopin	Via Federico Chopin
15.98	11.31	6	2021	2021-W6	2021-W6_Via Federico Chopin	Via Federico Chopin
89.57	57.65	7	2021	2021-W7	2021-W7_Via Federico Chopin	Via Federico Chopin
57.6	29.25	8	2021	2021-W8	2021-W8_Via Federico Chopin	Via Federico Chopin
30.61	20.3	9	2021	2021-W9	2021-W9_Via Federico Chopin	Via Federico Chopin
43.18	31.36	10	2021	2021-W10	2021-W10_Via Federico Chopin	Via Federico Chopin
6.86	4.19	11	2021	2021-W11	2021-W11_Via Federico Chopin	Via Federico Chopin
18.56	11.94	12	2021	2021-W12	2021-W12_Via Federico Chopin	Via Federico Chopin
29.35	16.23	13	2021	2021-W13	2021-W13_Via Federico Chopin	Via Federico Chopin
7.02	3.02	14	2021	2021-W14	2021-W14_Via Federico Chopin	Via Federico Chopin
12.8	9.52	15	2021	2021-W15	2021-W15_Via Federico Chopin	Via Federico Chopin
21.47	16.48	16	2021	2021-W16	2021-W16_Via Federico Chopin	Via Federico Chopin
24.79	19.5	17	2021	2021-W17	2021-W17_Via Federico Chopin	Via Federico Chopin
7.89	3.4	18	2021	2021-W18	2021-W18_Via Federico Chopin	Via Federico Chopin
7.13	3.54	19	2021	2021-W19	2021-W19_Via Federico Chopin	Via Federico Chopin
5.46	2	20	2021	2021-W20	2021-W20_Via Federico Chopin	Via Federico Chopin
8.32	3.74	21	2021	2021-W21	2021-W21_Via Federico Chopin	Via Federico Chopin
7.11	4.31	22	2021	2021-W22	2021-W22_Via Federico Chopin	Via Federico Chopin
13.56	11.11	23	2021	2021-W23	2021-W23_Via Federico Chopin	Via Federico Chopin
11.58	7.84	24	2021	2021-W24	2021-W24_Via Federico Chopin	Via Federico Chopin
8.15	2.91	25	2021	2021-W25	2021-W25_Via Federico Chopin	Via Federico Chopin
7.34	3.5	26	2021	2021-W26	2021-W26_Via Federico Chopin	Via Federico Chopin
4.5	2.37	27	2021	2021-W27	2021-W27_Via Federico Chopin	Via Federico Chopin
7.58	4.34	28	2021	2021-W28	2021-W28_Via Federico Chopin	Via Federico Chopin
11.23	7.37	29	2021	2021-W29	2021-W29_Via Federico Chopin	Via Federico Chopin
11	7.35	30	2021	2021-W30	2021-W30_Via Federico Chopin	Via Federico Chopin
7.17	3.09	31	2021	2021-W31	2021-W31_Via Federico Chopin	Via Federico Chopin
9.85	5.96	32	2021	2021-W32	2021-W32_Via Federico Chopin	Via Federico Chopin
7.7	3.61	33	2021	2021-W33	2021-W33_Via Federico Chopin	Via Federico Chopin
5.48	2.51	34	2021	2021-W34	2021-W34_Via Federico Chopin	Via Federico Chopin
7.75	4.64	35	2021	2021-W35	2021-W35_Via Federico Chopin	Via Federico Chopin
13.73	9.5	36	2021	2021-W36	2021-W36_Via Federico Chopin	Via Federico Chopin
15.59	11	37	2021	2021-W37	2021-W37_Via Federico Chopin	Via Federico Chopin
20.06	15.77	38	2021	2021-W38	2021-W38_Via Federico Chopin	Via Federico Chopin
22.43	16.06	39	2021	2021-W39	2021-W39_Via Federico Chopin	Via Federico Chopin
12.99	7.84	40	2021	2021-W40	2021-W40_Via Federico Chopin	Via Federico Chopin
32.52	22.72	41	2021	2021-W41	2021-W41_Via Federico Chopin	Via Federico Chopin
52.92	38.06	42	2021	2021-W42	2021-W42_Via Federico Chopin	Via Federico Chopin
40.16	28.52	43	2021	2021-W43	2021-W43_Via Federico Chopin	Via Federico Chopin
18.9	13.81	44	2021	2021-W44	2021-W44_Via Federico Chopin	Via Federico Chopin
32.1	20.74	45	2021	2021-W45	2021-W45_Via Federico Chopin	Via Federico Chopin
46.96	26.87	46	2021	2021-W46	2021-W46_Via Federico Chopin	Via Federico Chopin
24.18	16.37	47	2021	2021-W47	2021-W47_Via Federico Chopin	Via Federico Chopin
26.9	19.32	48	2021	2021-W48	2021-W48_Via Federico Chopin	Via Federico Chopin
36.51	25.03	49	2021	2021-W49	2021-W49_Via Federico Chopin	Via Federico Chopin
72.78	48.74	50	2021	2021-W50	2021-W50_Via Federico Chopin	Via Federico Chopin
67.9	42.55	51	2021	2021-W51	2021-W51_Via Federico Chopin	Via Federico Chopin
85.4	51.83	52	2021	2021-W52	2021-W52_Via Federico Chopin	Via Federico Chopin
25.08	18.94	53	2021	2021-W53	2021-W53_Via Federico Chopin	Via Federico Chopin
46	29.35	1	2022	2022-W1	2022-W1_Via Federico Chopin	Via Federico Chopin
46.56	30.99	2	2022	2022-W2	2022-W2_Via Federico Chopin	Via Federico Chopin
97.74	55.75	3	2022	2022-W3	2022-W3_Via Federico Chopin	Via Federico Chopin
89.29	44.08	4	2022	2022-W4	2022-W4_Via Federico Chopin	Via Federico Chopin
55.09	33.84	5	2022	2022-W5	2022-W5_Via Federico Chopin	Via Federico Chopin
18.65	10.6	6	2022	2022-W6	2022-W6_Via Federico Chopin	Via Federico Chopin
71.11	44.45	7	2022	2022-W7	2022-W7_Via Federico Chopin	Via Federico Chopin
18.05	10.92	8	2022	2022-W8	2022-W8_Via Federico Chopin	Via Federico Chopin
27.65	18.58	9	2022	2022-W9	2022-W9_Via Federico Chopin	Via Federico Chopin
37.07	23.83	10	2022	2022-W10	2022-W10_Via Federico Chopin	Via Federico Chopin
42.3	29.88	11	2022	2022-W11	2022-W11_Via Federico Chopin	Via Federico Chopin
34.33	23.89	12	2022	2022-W12	2022-W12_Via Federico Chopin	Via Federico Chopin
29.39	21.18	13	2022	2022-W13	2022-W13_Via Federico Chopin	Via Federico Chopin
16.04	10.52	14	2022	2022-W14	2022-W14_Via Federico Chopin	Via Federico Chopin
16.66	9.21	15	2022	2022-W15	2022-W15_Via Federico Chopin	Via Federico Chopin
10.92	7.48	16	2022	2022-W16	2022-W16_Via Federico Chopin	Via Federico Chopin
10.58	7.01	17	2022	2022-W17	2022-W17_Via Federico Chopin	Via Federico Chopin
14.6	11.26	18	2022	2022-W18	2022-W18_Via Federico Chopin	Via Federico Chopin
10.83	6.23	19	2022	2022-W19	2022-W19_Via Federico Chopin	Via Federico Chopin
9.05	4.17	20	2022	2022-W20	2022-W20_Via Federico Chopin	Via Federico Chopin
10.83	5.9	21	2022	2022-W21	2022-W21_Via Federico Chopin	Via Federico Chopin
13	8.44	22	2022	2022-W22	2022-W22_Via Federico Chopin	Via Federico Chopin
5.44	2.2	23	2022	2022-W23	2022-W23_Via Federico Chopin	Via Federico Chopin
8.55	4.83	24	2022	2022-W24	2022-W24_Via Federico Chopin	Via Federico Chopin
10.2	4.54	25	2022	2022-W25	2022-W25_Via Federico Chopin	Via Federico Chopin
8.8	3.24	26	2022	2022-W26	2022-W26_Via Federico Chopin	Via Federico Chopin
5.14	2.08	27	2022	2022-W27	2022-W27_Via Federico Chopin	Via Federico Chopin
6.16	3.25	28	2022	2022-W28	2022-W28_Via Federico Chopin	Via Federico Chopin
8.39	5.37	29	2022	2022-W29	2022-W29_Via Federico Chopin	Via Federico Chopin
6.85	4.54	30	2022	2022-W30	2022-W30_Via Federico Chopin	Via Federico Chopin
5.11	2.51	31	2022	2022-W31	2022-W31_Via Federico Chopin	Via Federico Chopin
5.98	2.93	32	2022	2022-W32	2022-W32_Via Federico Chopin	Via Federico Chopin
16.29	12.24	38	2022	2022-W38	2022-W38_Via Federico Chopin	Via Federico Chopin
10.28	6.48	39	2022	2022-W39	2022-W39_Via Federico Chopin	Via Federico Chopin
39.14	29.51	40	2022	2022-W40	2022-W40_Via Federico Chopin	Via Federico Chopin
52.28	35.72	41	2022	2022-W41	2022-W41_Via Federico Chopin	Via Federico Chopin
43.77	30.54	42	2022	2022-W42	2022-W42_Via Federico Chopin	Via Federico Chopin
26.49	15.76	43	2022	2022-W43	2022-W43_Via Federico Chopin	Via Federico Chopin
27.22	16.13	44	2022	2022-W44	2022-W44_Via Federico Chopin	Via Federico Chopin
32.68	23.97	45	2022	2022-W45	2022-W45_Via Federico Chopin	Via Federico Chopin
29.09	21.05	46	2022	2022-W46	2022-W46_Via Federico Chopin	Via Federico Chopin
32.25	23.59	47	2022	2022-W47	2022-W47_Via Federico Chopin	Via Federico Chopin
33.85	23.76	48	2022	2022-W48	2022-W48_Via Federico Chopin	Via Federico Chopin
33.5	22.2	49	2022	2022-W49	2022-W49_Via Federico Chopin	Via Federico Chopin
47.86	29.49	50	2022	2022-W50	2022-W50_Via Federico Chopin	Via Federico Chopin
75	47.6	51	2022	2022-W51	2022-W51_Via Federico Chopin	Via Federico Chopin
65.78	42.64	52	2022	2022-W52	2022-W52_Via Federico Chopin	Via Federico Chopin
42.66	26.4	1	2023	2023-W1	2023-W1_Via Federico Chopin	Via Federico Chopin
32.78	23.82	2	2023	2023-W2	2023-W2_Via Federico Chopin	Via Federico Chopin
33.08	20.68	3	2023	2023-W3	2023-W3_Via Federico Chopin	Via Federico Chopin
28.67	18.28	4	2023	2023-W4	2023-W4_Via Federico Chopin	Via Federico Chopin
31.53	18.76	5	2023	2023-W5	2023-W5_Via Federico Chopin	Via Federico Chopin
31.39	19.84	6	2023	2023-W6	2023-W6_Via Federico Chopin	Via Federico Chopin
46.66	29.77	7	2023	2023-W7	2023-W7_Via Federico Chopin	Via Federico Chopin
83.46	50.89	8	2023	2023-W8	2023-W8_Via Federico Chopin	Via Federico Chopin
29.32	20.02	9	2023	2023-W9	2023-W9_Via Federico Chopin	Via Federico Chopin
21.18	12.52	10	2023	2023-W10	2023-W10_Via Federico Chopin	Via Federico Chopin
16.49	11.39	11	2023	2023-W11	2023-W11_Via Federico Chopin	Via Federico Chopin
24.87	17.34	12	2023	2023-W12	2023-W12_Via Federico Chopin	Via Federico Chopin
8.42	3.94	13	2023	2023-W13	2023-W13_Via Federico Chopin	Via Federico Chopin
12.6	8.16	14	2023	2023-W14	2023-W14_Via Federico Chopin	Via Federico Chopin
8.78	5.62	15	2023	2023-W15	2023-W15_Via Federico Chopin	Via Federico Chopin
10.37	7.12	16	2023	2023-W16	2023-W16_Via Federico Chopin	Via Federico Chopin
11.44	7.9	17	2023	2023-W17	2023-W17_Via Federico Chopin	Via Federico Chopin
9.6	7.19	18	2023	2023-W18	2023-W18_Via Federico Chopin	Via Federico Chopin
6.71	4.61	19	2023	2023-W19	2023-W19_Via Federico Chopin	Via Federico Chopin
8.42	5.59	20	2023	2023-W20	2023-W20_Via Federico Chopin	Via Federico Chopin
13.62	10.1	21	2023	2023-W21	2023-W21_Via Federico Chopin	Via Federico Chopin
10.55	7.32	22	2023	2023-W22	2023-W22_Via Federico Chopin	Via Federico Chopin
10.26	7.58	23	2023	2023-W23	2023-W23_Via Federico Chopin	Via Federico Chopin
9.42	6.7	24	2023	2023-W24	2023-W24_Via Federico Chopin	Via Federico Chopin
8.99	5.48	25	2023	2023-W25	2023-W25_Via Federico Chopin	Via Federico Chopin
10.79	7.39	26	2023	2023-W26	2023-W26_Via Federico Chopin	Via Federico Chopin
8.14	4.57	27	2023	2023-W27	2023-W27_Via Federico Chopin	Via Federico Chopin
11.07	5.74	28	2023	2023-W28	2023-W28_Via Federico Chopin	Via Federico Chopin
12.24	7.52	29	2023	2023-W29	2023-W29_Via Federico Chopin	Via Federico Chopin
7.09	4.04	30	2023	2023-W30	2023-W30_Via Federico Chopin	Via Federico Chopin
7.4	3.65	31	2023	2023-W31	2023-W31_Via Federico Chopin	Via Federico Chopin
4.83	2.18	32	2023	2023-W32	2023-W32_Via Federico Chopin	Via Federico Chopin
9.4	6.86	33	2023	2023-W33	2023-W33_Via Federico Chopin	Via Federico Chopin
12.1	9.22	34	2023	2023-W34	2023-W34_Via Federico Chopin	Via Federico Chopin
5.64	2.5	35	2023	2023-W35	2023-W35_Via Federico Chopin	Via Federico Chopin
12.48	8.49	36	2023	2023-W36	2023-W36_Via Federico Chopin	Via Federico Chopin
13.45	10.25	37	2023	2023-W37	2023-W37_Via Federico Chopin	Via Federico Chopin
10.58	5.99	38	2023	2023-W38	2023-W38_Via Federico Chopin	Via Federico Chopin
16.58	11.87	39	2023	2023-W39	2023-W39_Via Federico Chopin	Via Federico Chopin
32.45	24.21	40	2023	2023-W40	2023-W40_Via Federico Chopin	Via Federico Chopin
20.13	11.48	41	2023	2023-W41	2023-W41_Via Federico Chopin	Via Federico Chopin
15.22	9.27	42	2023	2023-W42	2023-W42_Via Federico Chopin	Via Federico Chopin
24.24	15.19	43	2023	2023-W43	2023-W43_Via Federico Chopin	Via Federico Chopin
9.45	6.39	44	2023	2023-W44	2023-W44_Via Federico Chopin	Via Federico Chopin
15.71	10.79	45	2023	2023-W45	2023-W45_Via Federico Chopin	Via Federico Chopin
21.76	15.23	46	2023	2023-W46	2023-W46_Via Federico Chopin	Via Federico Chopin
25.81	18.01	47	2023	2023-W47	2023-W47_Via Federico Chopin	Via Federico Chopin
19.55	13.89	48	2023	2023-W48	2023-W48_Via Federico Chopin	Via Federico Chopin
39.92	27.56	49	2023	2023-W49	2023-W49_Via Federico Chopin	Via Federico Chopin
59.7	36.68	50	2023	2023-W50	2023-W50_Via Federico Chopin	Via Federico Chopin
32.84	22.8	51	2023	2023-W51	2023-W51_Via Federico Chopin	Via Federico Chopin
45.07	32.17	52	2023	2023-W52	2023-W52_Via Federico Chopin	Via Federico Chopin
29.97	21.23	1	2024	2024-W1	2024-W1_Via Federico Chopin	Via Federico Chopin
32.07	21.92	2	2024	2024-W2	2024-W2_Via Federico Chopin	Via Federico Chopin
64.06	38.22	3	2024	2024-W3	2024-W3_Via Federico Chopin	Via Federico Chopin
84.16	56.82	4	2024	2024-W4	2024-W4_Via Federico Chopin	Via Federico Chopin
74.13	46.39	5	2024	2024-W5	2024-W5_Via Federico Chopin	Via Federico Chopin
60.74	38.24	6	2024	2024-W6	2024-W6_Via Federico Chopin	Via Federico Chopin
77.34	55.18	7	2024	2024-W7	2024-W7_Via Federico Chopin	Via Federico Chopin
71.55	47.83	8	2024	2024-W8	2024-W8_Via Federico Chopin	Via Federico Chopin
11.75	7.43	9	2024	2024-W9	2024-W9_Via Federico Chopin	Via Federico Chopin
13.27	9.01	10	2024	2024-W10	2024-W10_Via Federico Chopin	Via Federico Chopin
14.69	9.81	11	2024	2024-W11	2024-W11_Via Federico Chopin	Via Federico Chopin
36.12	24.39	12	2024	2024-W12	2024-W12_Via Federico Chopin	Via Federico Chopin
21.26	9.72	13	2024	2024-W13	2024-W13_Via Federico Chopin	Via Federico Chopin
7.92	2.7	14	2024	2024-W14	2024-W14_Via Federico Chopin	Via Federico Chopin
15.61	11.42	15	2024	2024-W15	2024-W15_Via Federico Chopin	Via Federico Chopin
4.71	1.54	16	2024	2024-W16	2024-W16_Via Federico Chopin	Via Federico Chopin
8.22	5.98	17	2024	2024-W17	2024-W17_Via Federico Chopin	Via Federico Chopin
7.34	3.58	18	2024	2024-W18	2024-W18_Via Federico Chopin	Via Federico Chopin
8.05	5.1	19	2024	2024-W19	2024-W19_Via Federico Chopin	Via Federico Chopin
10.67	7	20	2024	2024-W20	2024-W20_Via Federico Chopin	Via Federico Chopin
10.27	5.53	21	2024	2024-W21	2024-W21_Via Federico Chopin	Via Federico Chopin
12.79	7.28	22	2024	2024-W22	2024-W22_Via Federico Chopin	Via Federico Chopin
8.6	5.08	23	2024	2024-W23	2024-W23_Via Federico Chopin	Via Federico Chopin
8.3	3.79	24	2024	2024-W24	2024-W24_Via Federico Chopin	Via Federico Chopin
11.8	5.07	25	2024	2024-W25	2024-W25_Via Federico Chopin	Via Federico Chopin
11.5	7.56	26	2024	2024-W26	2024-W26_Via Federico Chopin	Via Federico Chopin
9.05	5.8	27	2024	2024-W27	2024-W27_Via Federico Chopin	Via Federico Chopin
10.31	7.3	28	2024	2024-W28	2024-W28_Via Federico Chopin	Via Federico Chopin
8.51	5.67	29	2024	2024-W29	2024-W29_Via Federico Chopin	Via Federico Chopin
8.46	5.52	30	2024	2024-W30	2024-W30_Via Federico Chopin	Via Federico Chopin
9.2	6.29	31	2024	2024-W31	2024-W31_Via Federico Chopin	Via Federico Chopin
12.19	8.63	34	2024	2024-W34	2024-W34_Via Federico Chopin	Via Federico Chopin
14.98	11.55	35	2024	2024-W35	2024-W35_Via Federico Chopin	Via Federico Chopin
12.87	9.23	36	2024	2024-W36	2024-W36_Via Federico Chopin	Via Federico Chopin
4.07	1.75	37	2024	2024-W37	2024-W37_Via Federico Chopin	Via Federico Chopin
9.84	6.32	38	2024	2024-W38	2024-W38_Via Federico Chopin	Via Federico Chopin
13.36	9.73	39	2024	2024-W39	2024-W39_Via Federico Chopin	Via Federico Chopin
10.08	7.24	40	2024	2024-W40	2024-W40_Via Federico Chopin	Via Federico Chopin
17.54	11.26	41	2024	2024-W41	2024-W41_Via Federico Chopin	Via Federico Chopin
21.7	16.1	42	2024	2024-W42	2024-W42_Via Federico Chopin	Via Federico Chopin
28.96	21.56	43	2024	2024-W43	2024-W43_Via Federico Chopin	Via Federico Chopin
23.46	15.51	44	2024	2024-W44	2024-W44_Via Federico Chopin	Via Federico Chopin
59.94	40.05	45	2024	2024-W45	2024-W45_Via Federico Chopin	Via Federico Chopin
28.17	24.32	46	2024	2024-W46	2024-W46_Via Federico Chopin	Via Federico Chopin
\.


--
-- TOC entry 3017 (class 0 OID 16433)
-- Dependencies: 204
-- Data for Name: pollution_sensor_data; Type: TABLE DATA; Schema: public; Owner: colab
--

COPY public.pollution_sensor_data (etl_timestamp, station_id, api_timestamp, location_address, latitude, longitude, name, pm10, pm25, ui_url, url, aqi) FROM stdin;
2024-10-17 12:23:47	A97507	2024-10-17 12:20:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:23:49	A156526	2024-10-17 12:21:38	Lambrate	45.478	9.224	Lambrate	12	31	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:23:51	A74863	2024-10-17 12:20:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:23:52	A246697	2024-10-17 12:20:45	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:24:46	A97507	2024-10-17 12:22:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	24	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:24:48	A156526	2024-10-17 12:21:38	Lambrate	45.478	9.224	Lambrate	12	31	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:24:50	A74863	2024-10-17 12:22:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:24:51	A246697	2024-10-17 12:20:45	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:28:05	A97507	2024-10-17 12:25:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:28:08	A156526	2024-10-17 12:24:39	Lambrate	45.478	9.224	Lambrate	13	32	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:28:09	A74863	2024-10-17 12:25:14	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 12:28:10	A246697	2024-10-17 12:23:49	Via Franco Albini	45.442	9.212	Via Franco Albini	16	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 13:10:05	A97507	2024-10-17 13:06:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 13:10:07	A156526	2024-10-17 13:05:34	Lambrate	45.478	9.224	Lambrate	13	35	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 13:10:08	A74863	2024-10-17 13:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 13:10:10	A246697	2024-10-17 13:06:01	Via Franco Albini	45.442	9.212	Via Franco Albini	14	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 14:10:05	A97507	2024-10-17 14:05:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 14:10:08	A156526	2024-10-17 14:05:35	Lambrate	45.478	9.224	Lambrate	8	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 14:10:09	A74863	2024-10-17 14:07:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 14:10:10	A246697	2024-10-17 14:05:38	Via Franco Albini	45.442	9.212	Via Franco Albini	16	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 15:10:05	A97507	2024-10-17 15:06:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 15:10:08	A156526	2024-10-17 15:07:30	Lambrate	45.478	9.224	Lambrate	14	32	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 15:10:09	A74863	2024-10-17 15:07:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	49	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 15:10:10	A246697	2024-10-17 15:07:35	Via Franco Albini	45.442	9.212	Via Franco Albini	16	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 16:10:06	A97507	2024-10-17 16:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 16:10:08	A156526	2024-10-17 16:06:27	Lambrate	45.478	9.224	Lambrate	15	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 16:10:10	A74863	2024-10-17 16:07:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 16:10:11	A246697	2024-10-17 16:06:43	Via Franco Albini	45.442	9.212	Via Franco Albini	20	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 17:10:05	A97507	2024-10-17 17:07:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	23	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 17:10:09	A156526	2024-10-17 17:04:56	Lambrate	45.478	9.224	Lambrate	11	32	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 17:10:11	A74863	2024-10-17 17:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 17:10:12	A246697	2024-10-17 17:05:13	Via Franco Albini	45.442	9.212	Via Franco Albini	13	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 18:10:05	A97507	2024-10-17 18:05:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	24	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 18:10:09	A156526	2024-10-17 18:06:38	Lambrate	45.478	9.224	Lambrate	8	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 18:10:10	A74863	2024-10-17 18:07:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 18:10:11	A246697	2024-10-17 18:06:38	Via Franco Albini	45.442	9.212	Via Franco Albini	12	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 19:10:05	A97507	2024-10-17 19:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 19:10:08	A156526	2024-10-17 19:05:02	Lambrate	45.478	9.224	Lambrate	9	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 19:10:09	A74863	2024-10-17 19:06:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 19:10:10	A246697	2024-10-17 19:07:58	Via Franco Albini	45.442	9.212	Via Franco Albini	9	28	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 20:10:05	A97507	2024-10-17 20:07:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 20:10:08	A156526	2024-10-17 20:06:29	Lambrate	45.478	9.224	Lambrate	12	38	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 20:10:09	A74863	2024-10-17 20:07:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	41	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 20:10:10	A246697	2024-10-17 20:06:20	Via Franco Albini	45.442	9.212	Via Franco Albini	14	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 21:10:05	A97507	2024-10-17 21:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 21:10:08	A156526	2024-10-17 21:05:04	Lambrate	45.478	9.224	Lambrate	10	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 21:10:10	A74863	2024-10-17 21:05:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 21:10:11	A246697	2024-10-17 21:07:43	Via Franco Albini	45.442	9.212	Via Franco Albini	13	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 22:10:05	A97507	2024-10-17 22:04:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 22:10:08	A156526	2024-10-17 22:06:37	Lambrate	45.478	9.224	Lambrate	14	47	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 22:10:09	A74863	2024-10-17 22:06:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 22:10:10	A246697	2024-10-17 22:05:53	Via Franco Albini	45.442	9.212	Via Franco Albini	11	33	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 23:10:05	A97507	2024-10-17 23:05:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 23:10:08	A156526	2024-10-17 23:05:07	Lambrate	45.478	9.224	Lambrate	13	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 23:10:09	A74863	2024-10-17 23:05:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-17 23:10:10	A246697	2024-10-17 23:07:21	Via Franco Albini	45.442	9.212	Via Franco Albini	13	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 00:10:05	A97507	2024-10-18 00:04:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	27	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 00:10:07	A156526	2024-10-18 00:06:32	Lambrate	45.478	9.224	Lambrate	12	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 00:10:08	A74863	2024-10-18 00:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 00:10:09	A246697	2024-10-18 00:05:37	Via Franco Albini	45.442	9.212	Via Franco Albini	15	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 01:10:05	A97507	2024-10-18 01:05:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 01:10:08	A156526	2024-10-18 01:05:01	Lambrate	45.478	9.224	Lambrate	58	105	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 01:10:09	A74863	2024-10-18 01:07:04	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 01:10:10	A246697	2024-10-18 01:07:05	Via Franco Albini	45.442	9.212	Via Franco Albini	12	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 02:10:05	A97507	2024-10-18 02:06:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 02:10:07	A156526	2024-10-18 02:06:31	Lambrate	45.478	9.224	Lambrate	11	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 02:10:08	A74863	2024-10-18 02:08:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 02:10:10	A246697	2024-10-18 02:05:29	Via Franco Albini	45.442	9.212	Via Franco Albini	12	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 03:10:06	A97507	2024-10-18 03:06:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 03:10:08	A156526	2024-10-18 03:04:53	Lambrate	45.478	9.224	Lambrate	9	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 03:10:09	A74863	2024-10-18 03:04:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	29	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 03:10:10	A246697	2024-10-18 03:06:57	Via Franco Albini	45.442	9.212	Via Franco Albini	10	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 04:10:06	A97507	2024-10-18 04:08:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 04:10:08	A156526	2024-10-18 04:06:44	Lambrate	45.478	9.224	Lambrate	13	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 04:10:09	A74863	2024-10-18 04:06:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 04:10:10	A246697	2024-10-18 04:05:44	Via Franco Albini	45.442	9.212	Via Franco Albini	13	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 05:10:06	A97507	2024-10-18 05:06:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 05:10:08	A156526	2024-10-18 05:05:14	Lambrate	45.478	9.224	Lambrate	13	39	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 05:10:09	A74863	2024-10-18 05:07:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 05:10:10	A246697	2024-10-18 05:07:04	Via Franco Albini	45.442	9.212	Via Franco Albini	11	33	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 06:10:05	A97507	2024-10-18 06:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 06:10:07	A156526	2024-10-18 06:06:43	Lambrate	45.478	9.224	Lambrate	6	16	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 06:10:08	A74863	2024-10-18 06:05:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 06:10:09	A246697	2024-10-18 06:05:18	Via Franco Albini	45.442	9.212	Via Franco Albini	9	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 07:10:05	A97507	2024-10-18 07:05:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	9	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 07:10:08	A156526	2024-10-18 07:05:07	Lambrate	45.478	9.224	Lambrate	4	13	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 07:10:09	A74863	2024-10-18 07:06:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	8	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 07:10:10	A246697	2024-10-18 07:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	7	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 08:10:05	A97507	2024-10-18 08:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	13	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 08:10:08	A156526	2024-10-18 08:06:36	Lambrate	45.478	9.224	Lambrate	5	18	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 08:10:09	A74863	2024-10-18 08:07:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 08:10:10	A246697	2024-10-18 08:07:55	Via Franco Albini	45.442	9.212	Via Franco Albini	12	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 09:10:06	A97507	2024-10-18 09:07:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 09:10:08	A156526	2024-10-18 09:05:10	Lambrate	45.478	9.224	Lambrate	7	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 09:10:09	A74863	2024-10-18 09:06:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 09:10:11	A246697	2024-10-18 09:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	12	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 10:10:06	A97507	2024-10-18 10:05:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	16	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 10:10:08	A156526	2024-10-18 10:06:51	Lambrate	45.478	9.224	Lambrate	4	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 10:10:09	A74863	2024-10-18 10:04:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	29	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 10:10:11	A246697	2024-10-18 10:05:30	Via Franco Albini	45.442	9.212	Via Franco Albini	7	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 11:10:05	A97507	2024-10-18 11:03:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 11:10:07	A156526	2024-10-18 11:05:57	Lambrate	45.478	9.224	Lambrate	4	16	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 11:10:08	A74863	2024-10-18 10:54:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 11:10:09	A246697	2024-10-18 11:07:18	Via Franco Albini	45.442	9.212	Via Franco Albini	9	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 12:10:06	A97507	2024-10-18 12:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	12	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 12:10:08	A156526	2024-10-18 12:05:34	Lambrate	45.478	9.224	Lambrate	6	22	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 12:10:09	A74863	2024-10-18 12:05:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	17	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 12:10:10	A246697	2024-10-18 12:05:39	Via Franco Albini	45.442	9.212	Via Franco Albini	8	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 13:10:05	A97507	2024-10-18 13:06:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 13:10:08	A156526	2024-10-18 13:04:58	Lambrate	45.478	9.224	Lambrate	4	18	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 13:10:09	A74863	2024-10-18 13:07:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	4	13	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 13:10:10	A246697	2024-10-18 13:06:02	Via Franco Albini	45.442	9.212	Via Franco Albini	5	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 14:10:05	A97507	2024-10-18 14:05:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 14:10:08	A156526	2024-10-18 14:04:19	Lambrate	45.478	9.224	Lambrate	3	10	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 14:10:09	A74863	2024-10-18 14:04:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	4	13	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 14:10:10	A246697	2024-10-18 14:06:48	Via Franco Albini	45.442	9.212	Via Franco Albini	4	12	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 15:10:06	A97507	2024-10-18 15:05:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	5	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 15:10:08	A156526	2024-10-18 15:06:23	Lambrate	45.478	9.224	Lambrate	1	5	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 15:10:09	A74863	2024-10-18 15:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	3	10	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 15:10:10	A246697	2024-10-18 15:05:33	Via Franco Albini	45.442	9.212	Via Franco Albini	5	12	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 16:10:06	A97507	2024-10-18 16:06:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	1	2	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 16:10:09	A156526	2024-10-18 16:05:17	Lambrate	45.478	9.224	Lambrate	1	2	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 16:10:10	A74863	2024-10-18 16:07:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	4	8	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 16:10:12	A246697	2024-10-18 16:07:29	Via Franco Albini	45.442	9.212	Via Franco Albini	3	7	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 17:10:06	A97507	2024-10-18 17:07:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	1	3	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 17:10:09	A156526	2024-10-18 17:03:54	Lambrate	45.478	9.224	Lambrate	1	3	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 17:10:10	A74863	2024-10-18 17:06:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	5	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 17:10:11	A246697	2024-10-18 17:05:53	Via Franco Albini	45.442	9.212	Via Franco Albini	3	7	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 18:10:06	A97507	2024-10-18 18:06:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	1	4	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 18:10:08	A156526	2024-10-18 18:06:13	Lambrate	45.478	9.224	Lambrate	2	2	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 18:10:10	A74863	2024-10-18 18:07:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	4	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 18:10:11	A246697	2024-10-18 18:07:28	Via Franco Albini	45.442	9.212	Via Franco Albini	2	6	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 19:10:05	A97507	2024-10-18 19:06:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	9	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 19:10:08	A156526	2024-10-18 19:07:48	Lambrate	45.478	9.224	Lambrate	3	8	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 19:10:10	A74863	2024-10-18 19:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	3	5	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 19:10:11	A246697	2024-10-18 19:05:45	Via Franco Albini	45.442	9.212	Via Franco Albini	4	8	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 20:10:05	A97507	2024-10-18 20:07:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	10	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 20:10:08	A156526	2024-10-18 20:06:18	Lambrate	45.478	9.224	Lambrate	4	13	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 20:10:09	A74863	2024-10-18 20:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	14	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 20:10:11	A246697	2024-10-18 20:07:00	Via Franco Albini	45.442	9.212	Via Franco Albini	6	13	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 21:10:06	A97507	2024-10-18 21:06:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	11	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 21:10:08	A156526	2024-10-18 21:07:49	Lambrate	45.478	9.224	Lambrate	5	13	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 21:10:10	A74863	2024-10-18 21:00:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	19	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 21:10:11	A246697	2024-10-18 21:05:11	Via Franco Albini	45.442	9.212	Via Franco Albini	7	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 22:10:06	A97507	2024-10-18 22:04:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 22:10:08	A156526	2024-10-18 22:03:17	Lambrate	45.478	9.224	Lambrate	7	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 22:10:09	A74863	2024-10-18 22:04:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 22:10:10	A246697	2024-10-18 22:03:39	Via Franco Albini	45.442	9.212	Via Franco Albini	7	20	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 23:10:05	A97507	2024-10-18 23:05:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 23:10:08	A156526	2024-10-18 23:07:50	Lambrate	45.478	9.224	Lambrate	11	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 23:10:09	A74863	2024-10-18 23:07:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	8	27	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-18 23:10:10	A246697	2024-10-18 23:07:56	Via Franco Albini	45.442	9.212	Via Franco Albini	11	24	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 00:10:05	A97507	2024-10-19 00:06:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 00:10:07	A156526	2024-10-19 00:06:25	Lambrate	45.478	9.224	Lambrate	7	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 00:10:09	A74863	2024-10-19 00:05:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 00:10:10	A246697	2024-10-19 00:06:18	Via Franco Albini	45.442	9.212	Via Franco Albini	10	21	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 01:10:07	A97507	2024-10-19 01:07:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 01:10:09	A156526	2024-10-19 01:07:55	Lambrate	45.478	9.224	Lambrate	7	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 01:10:10	A74863	2024-10-19 01:06:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	17	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 01:10:11	A246697	2024-10-19 01:07:33	Via Franco Albini	45.442	9.212	Via Franco Albini	7	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 02:10:05	A97507	2024-10-19 02:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 02:10:08	A156526	2024-10-19 02:06:21	Lambrate	45.478	9.224	Lambrate	4	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 02:10:09	A74863	2024-10-19 02:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	18	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 02:10:10	A246697	2024-10-19 02:05:52	Via Franco Albini	45.442	9.212	Via Franco Albini	7	12	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 03:10:05	A97507	2024-10-19 03:07:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	12	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 03:10:07	A156526	2024-10-19 03:07:59	Lambrate	45.478	9.224	Lambrate	9	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 03:10:09	A74863	2024-10-19 03:07:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	18	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 03:10:10	A246697	2024-10-19 03:07:47	Via Franco Albini	45.442	9.212	Via Franco Albini	6	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 04:10:05	A97507	2024-10-19 04:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 04:10:08	A156526	2024-10-19 04:06:27	Lambrate	45.478	9.224	Lambrate	6	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 04:10:09	A74863	2024-10-19 04:06:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	15	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 04:10:10	A246697	2024-10-19 04:06:19	Via Franco Albini	45.442	9.212	Via Franco Albini	9	19	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 05:10:06	A97507	2024-10-19 05:06:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	11	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 05:10:08	A156526	2024-10-19 05:07:56	Lambrate	45.478	9.224	Lambrate	5	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 05:10:09	A74863	2024-10-19 05:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	14	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 05:10:10	A246697	2024-10-19 05:07:37	Via Franco Albini	45.442	9.212	Via Franco Albini	9	18	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 06:10:05	A97507	2024-10-19 06:07:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 06:10:08	A156526	2024-10-19 06:06:25	Lambrate	45.478	9.224	Lambrate	4	9	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 06:10:09	A74863	2024-10-19 06:05:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	17	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 06:10:10	A246697	2024-10-19 06:06:00	Via Franco Albini	45.442	9.212	Via Franco Albini	6	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 07:10:05	A97507	2024-10-19 07:05:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 07:10:07	A156526	2024-10-19 07:07:53	Lambrate	45.478	9.224	Lambrate	4	11	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 07:10:09	A74863	2024-10-19 07:06:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	17	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 07:10:10	A246697	2024-10-19 07:04:13	Via Franco Albini	45.442	9.212	Via Franco Albini	5	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 08:10:06	A97507	2024-10-19 08:03:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	5	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 08:10:08	A156526	2024-10-19 08:06:19	Lambrate	45.478	9.224	Lambrate	3	7	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 08:10:09	A74863	2024-10-19 08:07:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	13	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 08:10:10	A246697	2024-10-19 08:05:50	Via Franco Albini	45.442	9.212	Via Franco Albini	6	11	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 09:10:05	A97507	2024-10-19 09:06:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	6	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 09:10:08	A156526	2024-10-19 09:07:53	Lambrate	45.478	9.224	Lambrate	5	8	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 09:10:09	A74863	2024-10-19 09:06:11	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	10	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 09:10:10	A246697	2024-10-19 09:07:08	Via Franco Albini	45.442	9.212	Via Franco Albini	6	14	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 10:10:06	A97507	2024-10-19 10:07:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 10:10:08	A156526	2024-10-19 10:06:24	Lambrate	45.478	9.224	Lambrate	3	8	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 10:10:10	A74863	2024-10-19 10:07:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	16	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 10:10:11	A246697	2024-10-19 10:05:19	Via Franco Albini	45.442	9.212	Via Franco Albini	7	12	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 11:10:05	A97507	2024-10-19 11:06:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	10	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 11:10:08	A156526	2024-10-19 11:05:21	Lambrate	45.478	9.224	Lambrate	4	8	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 11:10:09	A74863	2024-10-19 11:07:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	8	18	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 11:10:10	A246697	2024-10-19 11:07:59	Via Franco Albini	45.442	9.212	Via Franco Albini	6	13	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 12:10:06	A97507	2024-10-19 12:05:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 12:10:08	A156526	2024-10-19 12:07:30	Lambrate	45.478	9.224	Lambrate	3	10	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 12:10:09	A74863	2024-10-19 12:06:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	22	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 12:10:11	A246697	2024-10-19 12:05:34	Via Franco Albini	45.442	9.212	Via Franco Albini	8	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 13:10:06	A97507	2024-10-19 13:04:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 13:10:08	A156526	2024-10-19 13:06:41	Lambrate	45.478	9.224	Lambrate	5	11	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 13:10:09	A74863	2024-10-19 13:07:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	29	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 13:10:10	A246697	2024-10-19 13:06:09	Via Franco Albini	45.442	9.212	Via Franco Albini	10	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 14:10:05	A97507	2024-10-19 14:04:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 14:10:08	A156526	2024-10-19 14:03:27	Lambrate	45.478	9.224	Lambrate	11	21	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 14:10:09	A74863	2024-10-19 14:05:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	39	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 14:10:10	A246697	2024-10-19 14:04:35	Via Franco Albini	45.442	9.212	Via Franco Albini	15	28	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 15:10:05	A97507	2024-10-19 15:06:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 15:10:08	A156526	2024-10-19 15:05:39	Lambrate	45.478	9.224	Lambrate	10	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 15:10:09	A74863	2024-10-19 15:06:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	30	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 15:10:10	A246697	2024-10-19 15:07:10	Via Franco Albini	45.442	9.212	Via Franco Albini	14	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 16:10:05	A97507	2024-10-19 16:05:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	16	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 16:10:08	A156526	2024-10-19 16:05:31	Lambrate	45.478	9.224	Lambrate	9	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 16:10:09	A74863	2024-10-19 16:04:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	29	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 16:10:10	A246697	2024-10-19 16:06:04	Via Franco Albini	45.442	9.212	Via Franco Albini	15	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 17:10:05	A97507	2024-10-19 17:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	12	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 17:10:08	A156526	2024-10-19 17:07:09	Lambrate	45.478	9.224	Lambrate	4	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 17:10:09	A74863	2024-10-19 17:05:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 17:10:10	A246697	2024-10-19 17:07:30	Via Franco Albini	45.442	9.212	Via Franco Albini	11	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 18:10:05	A97507	2024-10-19 18:07:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	10	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 18:10:08	A156526	2024-10-19 18:05:39	Lambrate	45.478	9.224	Lambrate	6	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 18:10:09	A74863	2024-10-19 18:06:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 18:10:10	A246697	2024-10-19 18:06:11	Via Franco Albini	45.442	9.212	Via Franco Albini	10	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 19:10:06	A97507	2024-10-19 19:06:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 19:10:08	A156526	2024-10-19 19:07:03	Lambrate	45.478	9.224	Lambrate	5	13	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 19:10:09	A74863	2024-10-19 19:07:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	29	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 19:10:10	A246697	2024-10-19 19:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	8	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 20:10:05	A97507	2024-10-19 20:06:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	9	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 20:10:08	A156526	2024-10-19 20:05:33	Lambrate	45.478	9.224	Lambrate	6	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 20:10:09	A74863	2024-10-19 20:05:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	402	348	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 20:10:10	A246697	2024-10-19 20:06:25	Via Franco Albini	45.442	9.212	Via Franco Albini	6	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 21:10:06	A97507	2024-10-19 21:05:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	13	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 21:10:08	A156526	2024-10-19 21:04:23	Lambrate	45.478	9.224	Lambrate	5	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 21:10:09	A74863	2024-10-19 21:04:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	18	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 21:10:11	A246697	2024-10-19 21:05:11	Via Franco Albini	45.442	9.212	Via Franco Albini	7	19	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 22:10:06	A97507	2024-10-19 22:06:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	15	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 22:10:08	A156526	2024-10-19 22:05:54	Lambrate	45.478	9.224	Lambrate	6	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 22:10:09	A74863	2024-10-19 22:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 22:10:10	A246697	2024-10-19 22:06:37	Via Franco Albini	45.442	9.212	Via Franco Albini	8	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 23:10:05	A97507	2024-10-19 23:07:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 23:10:08	A156526	2024-10-19 23:07:24	Lambrate	45.478	9.224	Lambrate	8	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 23:10:09	A74863	2024-10-19 23:06:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-19 23:10:10	A246697	2024-10-19 23:05:40	Via Franco Albini	45.442	9.212	Via Franco Albini	9	28	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 00:10:05	A97507	2024-10-20 00:05:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	16	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 00:10:07	A156526	2024-10-20 00:05:45	Lambrate	45.478	9.224	Lambrate	9	26	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 00:10:08	A74863	2024-10-20 00:07:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 00:10:09	A246697	2024-10-20 00:06:56	Via Franco Albini	45.442	9.212	Via Franco Albini	10	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 01:10:05	A97507	2024-10-20 01:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	12	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 01:10:08	A156526	2024-10-20 01:04:17	Lambrate	45.478	9.224	Lambrate	10	26	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 01:10:09	A74863	2024-10-20 01:05:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 01:10:10	A246697	2024-10-20 01:05:21	Via Franco Albini	45.442	9.212	Via Franco Albini	9	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 02:10:06	A97507	2024-10-20 02:07:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	7	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 02:10:08	A156526	2024-10-20 02:08:52	Lambrate	45.478	9.224	Lambrate	5	13	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 02:10:09	A74863	2024-10-20 02:07:12	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	16	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 02:10:10	A246697	2024-10-20 02:06:44	Via Franco Albini	45.442	9.212	Via Franco Albini	6	15	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 03:10:06	A97507	2024-10-20 03:06:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	1	3	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 03:10:08	A156526	2024-10-20 03:07:27	Lambrate	45.478	9.224	Lambrate	2	6	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 03:10:09	A74863	2024-10-20 03:06:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	10	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 03:10:10	A246697	2024-10-20 03:05:15	Via Franco Albini	45.442	9.212	Via Franco Albini	4	10	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 04:10:05	A97507	2024-10-20 04:06:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	1	3	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 04:10:07	A156526	2024-10-20 04:06:16	Lambrate	45.478	9.224	Lambrate	1	4	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 04:10:08	A74863	2024-10-20 04:05:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	4	7	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 04:10:09	A246697	2024-10-20 04:04:03	Via Franco Albini	45.442	9.212	Via Franco Albini	3	8	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 05:10:05	A97507	2024-10-20 05:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	1	3	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 05:10:08	A156526	2024-10-20 05:07:38	Lambrate	45.478	9.224	Lambrate	2	4	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 05:10:09	A74863	2024-10-20 05:06:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	4	7	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 05:10:10	A246697	2024-10-20 05:05:20	Via Franco Albini	45.442	9.212	Via Franco Albini	3	8	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 06:10:05	A97507	2024-10-20 06:07:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	0	2	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 06:10:08	A156526	2024-10-20 06:06:14	Lambrate	45.478	9.224	Lambrate	2	5	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 06:10:09	A74863	2024-10-20 06:07:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	3	6	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 06:10:10	A246697	2024-10-20 06:06:41	Via Franco Albini	45.442	9.212	Via Franco Albini	5	8	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 07:10:05	A97507	2024-10-20 07:06:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 07:10:07	A156526	2024-10-20 07:07:46	Lambrate	45.478	9.224	Lambrate	4	8	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 07:10:09	A74863	2024-10-20 07:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	11	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 07:10:10	A246697	2024-10-20 07:05:01	Via Franco Albini	45.442	9.212	Via Franco Albini	5	11	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 08:10:05	A97507	2024-10-20 08:07:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	13	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 08:10:08	A156526	2024-10-20 08:06:19	Lambrate	45.478	9.224	Lambrate	8	22	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 08:10:09	A74863	2024-10-20 08:07:04	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	24	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 08:10:10	A246697	2024-10-20 08:06:15	Via Franco Albini	45.442	9.212	Via Franco Albini	9	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 09:10:05	A97507	2024-10-20 09:05:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	7	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 09:10:07	A156526	2024-10-20 09:07:56	Lambrate	45.478	9.224	Lambrate	4	7	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 09:10:09	A74863	2024-10-20 09:05:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	19	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 09:10:10	A246697	2024-10-20 09:07:38	Via Franco Albini	45.442	9.212	Via Franco Albini	7	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 10:10:06	A97507	2024-10-20 10:07:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 10:10:08	A156526	2024-10-20 10:06:31	Lambrate	45.478	9.224	Lambrate	4	8	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 10:10:09	A74863	2024-10-20 10:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	12	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 10:10:10	A246697	2024-10-20 10:06:17	Via Franco Albini	45.442	9.212	Via Franco Albini	4	11	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 11:10:06	A97507	2024-10-20 11:03:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	10	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 11:10:08	A156526	2024-10-20 11:05:24	Lambrate	45.478	9.224	Lambrate	4	9	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 11:10:09	A74863	2024-10-20 11:03:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	49	97	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 11:10:11	A246697	2024-10-20 11:04:48	Via Franco Albini	45.442	9.212	Via Franco Albini	6	12	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 12:10:06	A97507	2024-10-20 12:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	8	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 12:10:09	A156526	2024-10-20 12:05:21	Lambrate	45.478	9.224	Lambrate	7	9	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 12:10:10	A74863	2024-10-20 12:05:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	51	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 12:10:12	A246697	2024-10-20 12:06:37	Via Franco Albini	45.442	9.212	Via Franco Albini	10	15	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 13:10:06	A97507	2024-10-20 13:07:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	2	10	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 13:10:09	A156526	2024-10-20 13:05:00	Lambrate	45.478	9.224	Lambrate	3	10	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 13:10:10	A74863	2024-10-20 13:06:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	23	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 13:10:11	A246697	2024-10-20 13:05:19	Via Franco Albini	45.442	9.212	Via Franco Albini	8	21	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 14:10:05	A97507	2024-10-20 14:06:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	11	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 14:10:08	A156526	2024-10-20 14:07:28	Lambrate	45.478	9.224	Lambrate	9	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 14:10:09	A74863	2024-10-20 14:06:20	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 14:10:10	A246697	2024-10-20 14:05:30	Via Franco Albini	45.442	9.212	Via Franco Albini	11	19	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 15:10:05	A97507	2024-10-20 15:06:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	11	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 15:10:08	A156526	2024-10-20 15:06:10	Lambrate	45.478	9.224	Lambrate	6	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 15:10:09	A74863	2024-10-20 15:06:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	34	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 15:10:10	A246697	2024-10-20 15:07:24	Via Franco Albini	45.442	9.212	Via Franco Albini	10	19	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 16:10:05	A97507	2024-10-20 16:07:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	10	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 16:10:07	A156526	2024-10-20 16:07:50	Lambrate	45.478	9.224	Lambrate	8	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 16:10:08	A74863	2024-10-20 16:05:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 16:10:10	A246697	2024-10-20 16:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	10	16	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 17:10:05	A97507	2024-10-20 17:06:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	12	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 17:10:08	A156526	2024-10-20 17:06:28	Lambrate	45.478	9.224	Lambrate	9	13	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 17:10:09	A74863	2024-10-20 17:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 17:10:11	A246697	2024-10-20 17:07:23	Via Franco Albini	45.442	9.212	Via Franco Albini	10	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 18:10:06	A97507	2024-10-20 18:07:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 18:10:08	A156526	2024-10-20 18:08:00	Lambrate	45.478	9.224	Lambrate	12	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 18:10:09	A74863	2024-10-20 18:07:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 18:10:10	A246697	2024-10-20 18:05:40	Via Franco Albini	45.442	9.212	Via Franco Albini	10	20	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 19:10:05	A97507	2024-10-20 19:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	15	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 19:10:07	A156526	2024-10-20 19:06:21	Lambrate	45.478	9.224	Lambrate	11	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 19:10:09	A74863	2024-10-20 19:08:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	34	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 19:10:10	A246697	2024-10-20 19:07:04	Via Franco Albini	45.442	9.212	Via Franco Albini	9	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 20:10:05	A97507	2024-10-20 20:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 20:10:08	A156526	2024-10-20 20:07:56	Lambrate	45.478	9.224	Lambrate	11	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 20:10:09	A74863	2024-10-20 20:07:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 20:10:10	A246697	2024-10-20 20:05:37	Via Franco Albini	45.442	9.212	Via Franco Albini	11	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 21:10:05	A97507	2024-10-20 21:07:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 21:10:08	A156526	2024-10-20 21:06:30	Lambrate	45.478	9.224	Lambrate	22	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 21:10:09	A74863	2024-10-20 21:06:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	41	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 21:10:10	A246697	2024-10-20 21:07:03	Via Franco Albini	45.442	9.212	Via Franco Albini	13	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 22:10:05	A97507	2024-10-20 22:03:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 22:10:07	A156526	2024-10-20 22:05:01	Lambrate	45.478	9.224	Lambrate	12	31	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 22:10:09	A74863	2024-10-20 22:04:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	48	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 22:10:10	A246697	2024-10-20 22:05:27	Via Franco Albini	45.442	9.212	Via Franco Albini	18	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 23:10:05	A97507	2024-10-20 23:07:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 23:10:08	A156526	2024-10-20 23:06:36	Lambrate	45.478	9.224	Lambrate	13	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 23:10:09	A74863	2024-10-20 23:05:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	60	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-20 23:10:10	A246697	2024-10-20 23:06:51	Via Franco Albini	45.442	9.212	Via Franco Albini	19	44	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 00:10:06	A97507	2024-10-21 00:05:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 00:10:08	A156526	2024-10-21 00:05:03	Lambrate	45.478	9.224	Lambrate	15	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 00:10:09	A74863	2024-10-21 00:06:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 00:10:10	A246697	2024-10-21 00:05:34	Via Franco Albini	45.442	9.212	Via Franco Albini	15	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 01:10:05	A97507	2024-10-21 01:07:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 01:10:07	A156526	2024-10-21 01:06:42	Lambrate	45.478	9.224	Lambrate	15	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 01:10:08	A74863	2024-10-21 01:07:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 01:10:10	A246697	2024-10-21 01:06:50	Via Franco Albini	45.442	9.212	Via Franco Albini	14	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 02:10:05	A97507	2024-10-21 02:05:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 02:10:07	A156526	2024-10-21 02:04:54	Lambrate	45.478	9.224	Lambrate	14	35	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 02:10:09	A74863	2024-10-21 02:06:03	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	51	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 02:10:10	A246697	2024-10-21 02:05:00	Via Franco Albini	45.442	9.212	Via Franco Albini	17	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 03:10:06	A97507	2024-10-21 03:07:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 03:10:08	A156526	2024-10-21 03:06:42	Lambrate	45.478	9.224	Lambrate	11	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 03:10:09	A74863	2024-10-21 03:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	42	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 03:10:10	A246697	2024-10-21 03:06:50	Via Franco Albini	45.442	9.212	Via Franco Albini	13	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 04:10:05	A97507	2024-10-21 04:06:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 04:10:07	A156526	2024-10-21 04:05:26	Lambrate	45.478	9.224	Lambrate	9	26	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 04:10:09	A74863	2024-10-21 04:06:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	31	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 04:10:10	A246697	2024-10-21 04:05:34	Via Franco Albini	45.442	9.212	Via Franco Albini	9	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 05:10:05	A97507	2024-10-21 04:57:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 05:10:07	A156526	2024-10-21 04:57:42	Lambrate	45.478	9.224	Lambrate	7	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 05:10:08	A74863	2024-10-21 05:05:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 05:10:10	A246697	2024-10-21 04:57:39	Via Franco Albini	45.442	9.212	Via Franco Albini	10	24	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 06:10:05	A97507	2024-10-21 06:05:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 06:10:08	A156526	2024-10-21 06:05:26	Lambrate	45.478	9.224	Lambrate	9	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 06:10:09	A74863	2024-10-21 06:06:02	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 06:10:10	A246697	2024-10-21 06:05:14	Via Franco Albini	45.442	9.212	Via Franco Albini	10	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 07:10:06	A97507	2024-10-21 07:06:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 07:10:08	A156526	2024-10-21 07:06:59	Lambrate	45.478	9.224	Lambrate	13	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 07:10:09	A74863	2024-10-21 07:06:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	34	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 07:10:11	A246697	2024-10-21 07:06:35	Via Franco Albini	45.442	9.212	Via Franco Albini	9	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 08:10:05	A97507	2024-10-21 08:07:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 08:10:07	A156526	2024-10-21 08:05:21	Lambrate	45.478	9.224	Lambrate	13	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 08:10:08	A74863	2024-10-21 08:07:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	94	174	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 08:10:09	A246697	2024-10-21 08:07:49	Via Franco Albini	45.442	9.212	Via Franco Albini	12	28	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 09:10:06	A97507	2024-10-21 09:05:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 09:10:08	A156526	2024-10-21 09:06:50	Lambrate	45.478	9.224	Lambrate	11	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 09:10:09	A74863	2024-10-21 09:05:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	117	186	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 09:10:10	A246697	2024-10-21 09:06:24	Via Franco Albini	45.442	9.212	Via Franco Albini	12	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 10:10:05	A97507	2024-10-21 10:06:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	15	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 10:10:07	A156526	2024-10-21 10:05:17	Lambrate	45.478	9.224	Lambrate	9	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 10:10:09	A74863	2024-10-21 10:04:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	44	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 10:10:10	A246697	2024-10-21 10:04:42	Via Franco Albini	45.442	9.212	Via Franco Albini	10	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 11:10:05	A97507	2024-10-21 11:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 11:10:08	A156526	2024-10-21 11:06:55	Lambrate	45.478	9.224	Lambrate	9	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 11:10:09	A74863	2024-10-21 11:06:07	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 11:10:10	A246697	2024-10-21 11:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	14	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 12:10:06	A97507	2024-10-21 12:04:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 12:10:08	A156526	2024-10-21 12:05:47	Lambrate	45.478	9.224	Lambrate	10	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 12:10:09	A74863	2024-10-21 12:06:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	51	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 12:10:10	A246697	2024-10-21 12:05:49	Via Franco Albini	45.442	9.212	Via Franco Albini	14	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 13:10:06	A97507	2024-10-21 13:05:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 13:10:08	A156526	2024-10-21 13:04:51	Lambrate	45.478	9.224	Lambrate	8	21	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 13:10:10	A74863	2024-10-21 13:03:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 13:10:11	A246697	2024-10-21 13:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	14	28	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 14:10:06	A97507	2024-10-21 14:07:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 14:10:08	A156526	2024-10-21 14:06:34	Lambrate	45.478	9.224	Lambrate	11	18	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 14:10:09	A74863	2024-10-21 14:07:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	32	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 14:10:10	A246697	2024-10-21 14:07:36	Via Franco Albini	45.442	9.212	Via Franco Albini	9	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 15:10:05	A97507	2024-10-21 15:06:26	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	12	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 15:10:07	A156526	2024-10-21 15:08:01	Lambrate	45.478	9.224	Lambrate	7	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 15:10:09	A74863	2024-10-21 15:06:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	23	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 15:10:10	A246697	2024-10-21 15:06:08	Via Franco Albini	45.442	9.212	Via Franco Albini	9	20	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 16:10:06	A97507	2024-10-21 16:07:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	16	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 16:10:08	A156526	2024-10-21 16:06:50	Lambrate	45.478	9.224	Lambrate	12	12	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 16:10:09	A74863	2024-10-21 16:07:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	22	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 16:10:10	A246697	2024-10-21 16:07:52	Via Franco Albini	45.442	9.212	Via Franco Albini	12	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 17:10:05	A97507	2024-10-21 17:06:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	17	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 17:10:08	A156526	2024-10-21 17:05:19	Lambrate	45.478	9.224	Lambrate	4	11	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 17:10:09	A74863	2024-10-21 17:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	25	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 17:10:10	A246697	2024-10-21 17:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	16	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 18:10:05	A97507	2024-10-21 18:05:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 18:10:08	A156526	2024-10-21 18:03:56	Lambrate	45.478	9.224	Lambrate	11	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 18:10:09	A74863	2024-10-21 18:05:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	37	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 18:10:10	A246697	2024-10-21 18:07:52	Via Franco Albini	45.442	9.212	Via Franco Albini	10	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 19:10:05	A97507	2024-10-21 19:08:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 19:10:08	A156526	2024-10-21 19:05:35	Lambrate	45.478	9.224	Lambrate	12	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 19:10:09	A74863	2024-10-21 19:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	44	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 19:10:10	A246697	2024-10-21 19:06:18	Via Franco Albini	45.442	9.212	Via Franco Albini	12	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 20:10:05	A97507	2024-10-21 20:07:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 20:10:07	A156526	2024-10-21 20:07:33	Lambrate	45.478	9.224	Lambrate	13	35	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 20:10:09	A74863	2024-10-21 20:06:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	56	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 20:10:10	A246697	2024-10-21 20:07:48	Via Franco Albini	45.442	9.212	Via Franco Albini	14	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 21:10:05	A97507	2024-10-21 21:07:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 21:10:08	A156526	2024-10-21 21:07:30	Lambrate	45.478	9.224	Lambrate	16	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 21:10:09	A74863	2024-10-21 21:08:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	64	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 21:10:10	A246697	2024-10-21 21:06:28	Via Franco Albini	45.442	9.212	Via Franco Albini	21	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 22:10:06	A97507	2024-10-21 22:06:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 22:10:08	A156526	2024-10-21 22:07:58	Lambrate	45.478	9.224	Lambrate	17	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 22:10:09	A74863	2024-10-21 22:07:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 22:10:11	A246697	2024-10-21 22:04:58	Via Franco Albini	45.442	9.212	Via Franco Albini	21	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 23:10:06	A97507	2024-10-21 23:05:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	45	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 23:10:08	A156526	2024-10-21 23:05:04	Lambrate	45.478	9.224	Lambrate	20	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 23:10:09	A74863	2024-10-21 23:06:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-21 23:10:10	A246697	2024-10-21 23:04:30	Via Franco Albini	45.442	9.212	Via Franco Albini	21	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 00:10:05	A97507	2024-10-22 00:05:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 00:10:07	A156526	2024-10-22 00:04:22	Lambrate	45.478	9.224	Lambrate	24	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 00:10:09	A74863	2024-10-22 00:02:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 00:10:10	A246697	2024-10-22 00:05:54	Via Franco Albini	45.442	9.212	Via Franco Albini	22	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 01:10:05	A97507	2024-10-22 01:06:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 01:10:08	A156526	2024-10-22 01:06:30	Lambrate	45.478	9.224	Lambrate	19	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 01:10:09	A74863	2024-10-22 01:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 01:10:10	A246697	2024-10-22 01:04:44	Via Franco Albini	45.442	9.212	Via Franco Albini	21	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 02:10:05	A97507	2024-10-22 02:07:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 02:10:07	A156526	2024-10-22 02:08:01	Lambrate	45.478	9.224	Lambrate	19	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 02:10:08	A74863	2024-10-22 02:05:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 02:10:09	A246697	2024-10-22 02:06:19	Via Franco Albini	45.442	9.212	Via Franco Albini	18	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 03:10:05	A97507	2024-10-22 03:04:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 03:10:07	A156526	2024-10-22 03:06:38	Lambrate	45.478	9.224	Lambrate	21	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 03:10:08	A74863	2024-10-22 03:07:20	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 03:10:09	A246697	2024-10-22 03:05:35	Via Franco Albini	45.442	9.212	Via Franco Albini	21	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 04:10:05	A97507	2024-10-22 04:07:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 04:10:08	A156526	2024-10-22 04:05:34	Lambrate	45.478	9.224	Lambrate	25	58	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 04:10:09	A74863	2024-10-22 04:07:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 04:10:10	A246697	2024-10-22 04:05:05	Via Franco Albini	45.442	9.212	Via Franco Albini	23	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 05:10:05	A97507	2024-10-22 05:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 05:10:08	A156526	2024-10-22 05:07:01	Lambrate	45.478	9.224	Lambrate	27	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 05:10:09	A74863	2024-10-22 05:03:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 05:10:10	A246697	2024-10-22 05:06:30	Via Franco Albini	45.442	9.212	Via Franco Albini	22	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 06:10:05	A97507	2024-10-22 06:06:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 06:10:07	A156526	2024-10-22 06:08:38	Lambrate	45.478	9.224	Lambrate	26	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 06:10:08	A74863	2024-10-22 06:06:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 06:10:09	A246697	2024-10-22 06:07:54	Via Franco Albini	45.442	9.212	Via Franco Albini	24	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 07:10:05	A97507	2024-10-22 07:07:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 07:10:08	A156526	2024-10-22 07:07:05	Lambrate	45.478	9.224	Lambrate	20	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 07:10:09	A74863	2024-10-22 07:07:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 07:10:10	A246697	2024-10-22 07:06:12	Via Franco Albini	45.442	9.212	Via Franco Albini	25	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 08:10:06	A97507	2024-10-22 08:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 08:10:08	A156526	2024-10-22 08:05:29	Lambrate	45.478	9.224	Lambrate	23	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 08:10:09	A74863	2024-10-22 08:06:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	88	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 08:10:10	A246697	2024-10-22 08:07:44	Via Franco Albini	45.442	9.212	Via Franco Albini	29	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 09:10:06	A97507	2024-10-22 09:07:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 09:10:08	A156526	2024-10-22 09:07:06	Lambrate	45.478	9.224	Lambrate	24	62	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 09:10:09	A74863	2024-10-22 09:06:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 09:10:10	A246697	2024-10-22 09:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	24	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 10:10:05	A97507	2024-10-22 10:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 10:10:08	A156526	2024-10-22 10:05:29	Lambrate	45.478	9.224	Lambrate	33	66	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 10:10:09	A74863	2024-10-22 10:07:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	46	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 10:10:10	A246697	2024-10-22 10:07:42	Via Franco Albini	45.442	9.212	Via Franco Albini	25	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 11:10:05	A97507	2024-10-22 11:00:26	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 11:10:07	A156526	2024-10-22 11:07:37	Lambrate	45.478	9.224	Lambrate	28	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 11:10:08	A74863	2024-10-22 11:08:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	104	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 11:10:09	A246697	2024-10-22 11:04:07	Via Franco Albini	45.442	9.212	Via Franco Albini	31	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 12:10:05	A97507	2024-10-22 12:07:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 12:10:08	A156526	2024-10-22 12:06:40	Lambrate	45.478	9.224	Lambrate	34	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 12:10:09	A74863	2024-10-22 12:03:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	114	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 12:10:10	A246697	2024-10-22 12:05:35	Via Franco Albini	45.442	9.212	Via Franco Albini	40	74	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 13:10:06	A97507	2024-10-22 13:04:21	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	38	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 13:10:08	A156526	2024-10-22 13:04:00	Lambrate	45.478	9.224	Lambrate	30	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 13:10:09	A74863	2024-10-22 13:05:09	Via Federico Chopin	45.426	9.206	Via Federico Chopin	40	94	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 13:10:10	A246697	2024-10-22 13:04:35	Via Franco Albini	45.442	9.212	Via Franco Albini	25	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 14:10:05	A97507	2024-10-22 14:07:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 14:10:08	A156526	2024-10-22 14:07:03	Lambrate	45.478	9.224	Lambrate	23	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 14:10:09	A74863	2024-10-22 14:07:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 14:10:10	A246697	2024-10-22 14:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	28	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 15:10:05	A97507	2024-10-22 15:06:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 15:10:07	A156526	2024-10-22 15:06:23	Lambrate	45.478	9.224	Lambrate	19	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 15:10:08	A74863	2024-10-22 15:05:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 15:10:09	A246697	2024-10-22 15:06:00	Via Franco Albini	45.442	9.212	Via Franco Albini	13	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 16:10:05	A97507	2024-10-22 16:06:05	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 16:10:08	A156526	2024-10-22 16:05:11	Lambrate	45.478	9.224	Lambrate	14	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 16:10:09	A74863	2024-10-22 16:07:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 16:10:10	A246697	2024-10-22 16:07:45	Via Franco Albini	45.442	9.212	Via Franco Albini	14	28	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 17:10:05	A97507	2024-10-22 17:07:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 17:10:08	A156526	2024-10-22 17:06:43	Lambrate	45.478	9.224	Lambrate	8	26	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 17:10:09	A74863	2024-10-22 17:05:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 17:10:10	A246697	2024-10-22 17:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	12	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 18:10:05	A97507	2024-10-22 18:05:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 18:10:07	A156526	2024-10-22 18:05:11	Lambrate	45.478	9.224	Lambrate	11	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 18:10:08	A74863	2024-10-22 18:04:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 18:10:10	A246697	2024-10-22 18:04:28	Via Franco Albini	45.442	9.212	Via Franco Albini	12	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 19:10:06	A97507	2024-10-22 19:06:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 19:10:08	A156526	2024-10-22 19:06:41	Lambrate	45.478	9.224	Lambrate	14	40	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 19:10:09	A74863	2024-10-22 19:07:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	41	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 19:10:11	A246697	2024-10-22 19:05:59	Via Franco Albini	45.442	9.212	Via Franco Albini	17	44	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 20:10:05	A97507	2024-10-22 20:07:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 20:10:08	A156526	2024-10-22 20:05:16	Lambrate	45.478	9.224	Lambrate	19	50	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 20:10:09	A74863	2024-10-22 20:06:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 20:10:11	A246697	2024-10-22 20:07:24	Via Franco Albini	45.442	9.212	Via Franco Albini	19	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 21:10:05	A97507	2024-10-22 21:06:28	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 21:10:08	A156526	2024-10-22 21:06:50	Lambrate	45.478	9.224	Lambrate	20	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 21:10:09	A74863	2024-10-22 21:04:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 21:10:10	A246697	2024-10-22 21:05:44	Via Franco Albini	45.442	9.212	Via Franco Albini	21	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 22:10:05	A97507	2024-10-22 22:07:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 22:10:08	A156526	2024-10-22 22:05:39	Lambrate	45.478	9.224	Lambrate	26	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 22:10:09	A74863	2024-10-22 22:05:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	81	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 22:10:10	A246697	2024-10-22 22:07:09	Via Franco Albini	45.442	9.212	Via Franco Albini	22	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 23:10:05	A97507	2024-10-22 23:05:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 23:10:08	A156526	2024-10-22 23:04:06	Lambrate	45.478	9.224	Lambrate	24	63	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 23:10:09	A74863	2024-10-22 23:04:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	84	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-22 23:10:10	A246697	2024-10-22 23:05:28	Via Franco Albini	45.442	9.212	Via Franco Albini	28	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 00:10:05	A97507	2024-10-23 00:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 00:10:08	A156526	2024-10-23 00:05:40	Lambrate	45.478	9.224	Lambrate	31	70	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 00:10:09	A74863	2024-10-23 00:07:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	42	95	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 00:10:10	A246697	2024-10-23 00:06:51	Via Franco Albini	45.442	9.212	Via Franco Albini	33	67	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 01:10:06	A97507	2024-10-23 01:07:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	32	70	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 01:10:08	A156526	2024-10-23 01:07:16	Lambrate	45.478	9.224	Lambrate	30	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 01:10:09	A74863	2024-10-23 01:06:07	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	107	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 01:10:10	A246697	2024-10-23 01:05:12	Via Franco Albini	45.442	9.212	Via Franco Albini	36	70	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 02:10:05	A97507	2024-10-23 02:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 02:10:07	A156526	2024-10-23 02:05:42	Lambrate	45.478	9.224	Lambrate	35	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 02:10:08	A74863	2024-10-23 02:06:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	110	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 02:10:10	A246697	2024-10-23 02:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	32	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 03:10:06	A97507	2024-10-23 03:07:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 03:10:08	A156526	2024-10-23 03:04:58	Lambrate	45.478	9.224	Lambrate	31	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 03:10:09	A74863	2024-10-23 03:06:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	53	127	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 03:10:10	A246697	2024-10-23 03:05:33	Via Franco Albini	45.442	9.212	Via Franco Albini	37	72	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 04:10:05	A97507	2024-10-23 04:06:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	67	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 04:10:07	A156526	2024-10-23 04:04:28	Lambrate	45.478	9.224	Lambrate	36	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 04:10:09	A74863	2024-10-23 04:05:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	122	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 04:10:10	A246697	2024-10-23 04:04:51	Via Franco Albini	45.442	9.212	Via Franco Albini	42	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 05:10:05	A97507	2024-10-23 05:07:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 05:10:08	A156526	2024-10-23 05:05:56	Lambrate	45.478	9.224	Lambrate	38	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 05:10:09	A74863	2024-10-23 05:06:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	131	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 05:10:10	A246697	2024-10-23 05:06:08	Via Franco Albini	45.442	9.212	Via Franco Albini	40	75	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 06:10:05	A97507	2024-10-23 06:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	33	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 06:10:07	A156526	2024-10-23 06:07:38	Lambrate	45.478	9.224	Lambrate	38	84	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 06:10:08	A74863	2024-10-23 06:07:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	122	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 06:10:10	A246697	2024-10-23 06:07:27	Via Franco Albini	45.442	9.212	Via Franco Albini	39	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 07:10:05	A97507	2024-10-23 07:07:08	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	32	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 07:10:07	A156526	2024-10-23 07:05:58	Lambrate	45.478	9.224	Lambrate	38	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 07:10:09	A74863	2024-10-23 07:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	118	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 07:10:10	A246697	2024-10-23 07:05:40	Via Franco Albini	45.442	9.212	Via Franco Albini	42	78	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 08:10:06	A97507	2024-10-23 08:07:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 08:10:08	A156526	2024-10-23 08:07:35	Lambrate	45.478	9.224	Lambrate	46	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 08:10:09	A74863	2024-10-23 08:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	121	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 08:10:11	A246697	2024-10-23 08:07:01	Via Franco Albini	45.442	9.212	Via Franco Albini	43	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 09:10:05	A97507	2024-10-23 09:06:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	35	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 09:10:07	A156526	2024-10-23 09:06:00	Lambrate	45.478	9.224	Lambrate	40	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 09:10:08	A74863	2024-10-23 09:05:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	120	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 09:10:09	A246697	2024-10-23 09:05:38	Via Franco Albini	45.442	9.212	Via Franco Albini	46	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 10:10:06	A97507	2024-10-23 10:05:05	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	70	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 10:10:08	A156526	2024-10-23 10:04:32	Lambrate	45.478	9.224	Lambrate	34	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 10:10:09	A74863	2024-10-23 10:06:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	131	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 10:10:10	A246697	2024-10-23 10:04:02	Via Franco Albini	45.442	9.212	Via Franco Albini	44	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 11:10:05	A97507	2024-10-23 11:07:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	35	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 11:10:08	A156526	2024-10-23 11:06:27	Lambrate	45.478	9.224	Lambrate	38	81	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 11:10:09	A74863	2024-10-23 11:06:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	132	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 11:10:10	A246697	2024-10-23 11:07:00	Via Franco Albini	45.442	9.212	Via Franco Albini	40	78	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 12:10:05	A97507	2024-10-23 12:06:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	76	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 12:10:08	A156526	2024-10-23 12:05:31	Lambrate	45.478	9.224	Lambrate	42	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 12:10:09	A74863	2024-10-23 12:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	64	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 12:10:10	A246697	2024-10-23 12:06:39	Via Franco Albini	45.442	9.212	Via Franco Albini	48	89	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 13:10:05	A97507	2024-10-23 13:06:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 13:10:08	A156526	2024-10-23 13:04:34	Lambrate	45.478	9.224	Lambrate	38	79	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 13:10:09	A74863	2024-10-23 13:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	148	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 13:10:10	A246697	2024-10-23 13:06:11	Via Franco Albini	45.442	9.212	Via Franco Albini	47	83	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 14:10:05	A97507	2024-10-23 14:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	66	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 14:10:07	A156526	2024-10-23 14:06:28	Lambrate	45.478	9.224	Lambrate	36	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 14:10:08	A74863	2024-10-23 14:05:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	45	104	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 14:10:10	A246697	2024-10-23 14:05:39	Via Franco Albini	45.442	9.212	Via Franco Albini	42	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 15:10:06	A97507	2024-10-23 15:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 15:10:08	A156526	2024-10-23 15:05:16	Lambrate	45.478	9.224	Lambrate	23	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 15:10:10	A74863	2024-10-23 15:04:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 15:10:11	A246697	2024-10-23 15:04:59	Via Franco Albini	45.442	9.212	Via Franco Albini	25	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 16:10:06	A97507	2024-10-23 16:07:06	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 16:10:08	A156526	2024-10-23 16:06:43	Lambrate	45.478	9.224	Lambrate	15	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 16:10:10	A74863	2024-10-23 16:06:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 16:10:11	A246697	2024-10-23 16:06:30	Via Franco Albini	45.442	9.212	Via Franco Albini	13	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 17:10:05	A97507	2024-10-23 17:05:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 17:10:08	A156526	2024-10-23 17:05:05	Lambrate	45.478	9.224	Lambrate	10	35	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 17:10:09	A74863	2024-10-23 17:04:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 17:10:10	A246697	2024-10-23 17:07:54	Via Franco Albini	45.442	9.212	Via Franco Albini	16	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 18:10:05	A97507	2024-10-23 18:06:35	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 18:10:08	A156526	2024-10-23 18:06:35	Lambrate	45.478	9.224	Lambrate	12	47	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 18:10:09	A74863	2024-10-23 18:05:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 18:10:11	A246697	2024-10-23 18:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	17	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 19:10:06	A97507	2024-10-23 19:04:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 19:10:08	A156526	2024-10-23 19:05:17	Lambrate	45.478	9.224	Lambrate	42	93	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 19:10:10	A74863	2024-10-23 19:06:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 19:10:11	A246697	2024-10-23 19:04:27	Via Franco Albini	45.442	9.212	Via Franco Albini	17	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 20:10:06	A97507	2024-10-23 20:06:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 20:10:08	A156526	2024-10-23 20:06:52	Lambrate	45.478	9.224	Lambrate	21	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 20:10:10	A74863	2024-10-23 20:05:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 20:10:11	A246697	2024-10-23 20:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	21	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 21:10:06	A97507	2024-10-23 21:06:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 21:10:08	A156526	2024-10-23 21:05:16	Lambrate	45.478	9.224	Lambrate	30	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 21:10:09	A74863	2024-10-23 21:06:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	88	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 21:10:11	A246697	2024-10-23 21:07:20	Via Franco Albini	45.442	9.212	Via Franco Albini	24	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 22:10:05	A97507	2024-10-23 22:05:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 22:10:08	A156526	2024-10-23 22:06:56	Lambrate	45.478	9.224	Lambrate	17	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 22:10:09	A74863	2024-10-23 22:07:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 22:10:10	A246697	2024-10-23 22:05:40	Via Franco Albini	45.442	9.212	Via Franco Albini	23	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 23:10:05	A97507	2024-10-23 23:06:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	45	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 23:10:07	A156526	2024-10-23 23:05:14	Lambrate	45.478	9.224	Lambrate	18	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 23:10:08	A74863	2024-10-23 23:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-23 23:10:10	A246697	2024-10-23 23:07:12	Via Franco Albini	45.442	9.212	Via Franco Albini	17	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 00:10:05	A97507	2024-10-24 00:07:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 00:10:07	A156526	2024-10-24 00:06:39	Lambrate	45.478	9.224	Lambrate	12	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 00:10:08	A74863	2024-10-24 00:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 00:10:10	A246697	2024-10-24 00:05:28	Via Franco Albini	45.442	9.212	Via Franco Albini	17	47	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 01:10:05	A97507	2024-10-24 01:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 01:10:07	A156526	2024-10-24 01:05:38	Lambrate	45.478	9.224	Lambrate	13	40	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 01:10:08	A74863	2024-10-24 01:05:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	62	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 01:10:10	A246697	2024-10-24 01:04:15	Via Franco Albini	45.442	9.212	Via Franco Albini	15	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 02:10:05	A97507	2024-10-24 02:05:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 02:10:07	A156526	2024-10-24 02:07:11	Lambrate	45.478	9.224	Lambrate	15	47	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 02:10:09	A74863	2024-10-24 02:06:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 02:10:10	A246697	2024-10-24 02:05:37	Via Franco Albini	45.442	9.212	Via Franco Albini	14	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 03:10:05	A97507	2024-10-24 03:07:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 03:10:07	A156526	2024-10-24 03:06:02	Lambrate	45.478	9.224	Lambrate	17	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 03:10:08	A74863	2024-10-24 03:07:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 03:10:10	A246697	2024-10-24 03:03:59	Via Franco Albini	45.442	9.212	Via Franco Albini	11	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 04:10:05	A97507	2024-10-24 04:06:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 04:10:07	A156526	2024-10-24 04:07:32	Lambrate	45.478	9.224	Lambrate	12	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 04:10:08	A74863	2024-10-24 04:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 04:10:10	A246697	2024-10-24 04:05:17	Via Franco Albini	45.442	9.212	Via Franco Albini	12	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 05:10:05	A97507	2024-10-24 05:06:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 05:10:07	A156526	2024-10-24 05:06:01	Lambrate	45.478	9.224	Lambrate	11	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 05:10:08	A74863	2024-10-24 05:07:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 05:10:10	A246697	2024-10-24 05:06:43	Via Franco Albini	45.442	9.212	Via Franco Albini	12	33	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 06:10:05	A97507	2024-10-24 06:07:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 06:10:07	A156526	2024-10-24 06:07:37	Lambrate	45.478	9.224	Lambrate	14	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 06:10:09	A74863	2024-10-24 06:05:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 06:10:10	A246697	2024-10-24 06:08:00	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 07:10:05	A97507	2024-10-24 07:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 07:10:08	A156526	2024-10-24 07:06:12	Lambrate	45.478	9.224	Lambrate	11	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 07:10:09	A74863	2024-10-24 07:06:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 07:10:10	A246697	2024-10-24 07:06:16	Via Franco Albini	45.442	9.212	Via Franco Albini	14	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 08:10:05	A97507	2024-10-24 08:07:08	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 08:10:08	A156526	2024-10-24 08:07:49	Lambrate	45.478	9.224	Lambrate	11	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 08:10:09	A74863	2024-10-24 08:07:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 08:10:11	A246697	2024-10-24 08:07:36	Via Franco Albini	45.442	9.212	Via Franco Albini	28	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 09:10:06	A97507	2024-10-24 09:05:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	44	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 09:10:09	A156526	2024-10-24 09:06:19	Lambrate	45.478	9.224	Lambrate	20	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 09:10:10	A74863	2024-10-24 09:08:02	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 09:10:11	A246697	2024-10-24 09:06:07	Via Franco Albini	45.442	9.212	Via Franco Albini	22	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 10:10:06	A97507	2024-10-24 10:06:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 10:10:09	A156526	2024-10-24 10:07:55	Lambrate	45.478	9.224	Lambrate	16	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 10:10:14	A74863	2024-10-24 10:08:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	60	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 10:10:15	A246697	2024-10-24 10:07:32	Via Franco Albini	45.442	9.212	Via Franco Albini	16	44	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 11:10:06	A97507	2024-10-24 11:07:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	17	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 11:10:09	A156526	2024-10-24 11:06:54	Lambrate	45.478	9.224	Lambrate	7	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 11:10:10	A74863	2024-10-24 11:06:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	37	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 11:10:12	A246697	2024-10-24 11:06:54	Via Franco Albini	45.442	9.212	Via Franco Albini	10	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 12:10:05	A97507	2024-10-24 12:07:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 12:10:08	A156526	2024-10-24 12:06:35	Lambrate	45.478	9.224	Lambrate	6	21	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 12:10:09	A74863	2024-10-24 12:07:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	47	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 12:10:10	A246697	2024-10-24 12:07:32	Via Franco Albini	45.442	9.212	Via Franco Albini	12	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 13:10:05	A97507	2024-10-24 13:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 13:10:08	A156526	2024-10-24 13:06:31	Lambrate	45.478	9.224	Lambrate	11	32	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 13:10:09	A74863	2024-10-24 13:09:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 13:10:10	A246697	2024-10-24 13:07:11	Via Franco Albini	45.442	9.212	Via Franco Albini	12	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 14:10:05	A97507	2024-10-24 14:07:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 14:10:08	A156526	2024-10-24 14:05:53	Lambrate	45.478	9.224	Lambrate	13	39	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 14:10:09	A74863	2024-10-24 14:08:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	49	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 14:10:11	A246697	2024-10-24 14:06:44	Via Franco Albini	45.442	9.212	Via Franco Albini	13	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 15:10:05	A97507	2024-10-24 15:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 15:10:08	A156526	2024-10-24 15:05:05	Lambrate	45.478	9.224	Lambrate	11	32	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 15:10:09	A74863	2024-10-24 15:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	37	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 15:10:10	A246697	2024-10-24 15:06:04	Via Franco Albini	45.442	9.212	Via Franco Albini	12	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 16:10:05	A97507	2024-10-24 16:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 16:10:08	A156526	2024-10-24 16:06:46	Lambrate	45.478	9.224	Lambrate	7	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 16:10:10	A74863	2024-10-24 16:04:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	23	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 16:10:11	A246697	2024-10-24 16:07:39	Via Franco Albini	45.442	9.212	Via Franco Albini	7	24	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 17:10:06	A97507	2024-10-24 17:06:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 17:10:08	A156526	2024-10-24 17:05:18	Lambrate	45.478	9.224	Lambrate	5	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 17:10:10	A74863	2024-10-24 17:05:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 17:10:11	A246697	2024-10-24 17:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	11	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 18:10:06	A97507	2024-10-24 18:07:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 18:10:09	A156526	2024-10-24 18:06:54	Lambrate	45.478	9.224	Lambrate	8	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 18:10:10	A74863	2024-10-24 18:06:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 18:10:11	A246697	2024-10-24 18:07:26	Via Franco Albini	45.442	9.212	Via Franco Albini	12	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 20:10:06	A97507	2024-10-24 20:04:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 20:10:08	A156526	2024-10-24 20:06:58	Lambrate	45.478	9.224	Lambrate	9	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 20:10:10	A74863	2024-10-24 20:06:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	29	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 20:10:11	A246697	2024-10-24 20:03:59	Via Franco Albini	45.442	9.212	Via Franco Albini	12	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 21:10:05	A97507	2024-10-24 21:05:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	24	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 21:10:08	A156526	2024-10-24 21:05:31	Lambrate	45.478	9.224	Lambrate	8	30	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 21:10:10	A74863	2024-10-24 21:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	39	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 21:10:11	A246697	2024-10-24 21:05:28	Via Franco Albini	45.442	9.212	Via Franco Albini	10	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 22:10:05	A97507	2024-10-24 22:04:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 22:10:07	A156526	2024-10-24 22:04:01	Lambrate	45.478	9.224	Lambrate	12	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 22:10:09	A74863	2024-10-24 22:05:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 22:10:10	A246697	2024-10-24 22:06:53	Via Franco Albini	45.442	9.212	Via Franco Albini	15	47	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 23:10:05	A97507	2024-10-24 23:05:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 23:10:08	A156526	2024-10-24 23:05:30	Lambrate	45.478	9.224	Lambrate	17	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 23:10:09	A74863	2024-10-24 23:06:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-24 23:10:10	A246697	2024-10-24 23:05:07	Via Franco Albini	45.442	9.212	Via Franco Albini	20	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 00:10:05	A97507	2024-10-25 00:06:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 00:10:07	A156526	2024-10-25 00:07:05	Lambrate	45.478	9.224	Lambrate	19	63	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 00:10:08	A74863	2024-10-25 00:07:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 00:10:09	A246697	2024-10-25 00:06:23	Via Franco Albini	45.442	9.212	Via Franco Albini	24	62	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 01:10:05	A97507	2024-10-25 01:07:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 01:10:07	A156526	2024-10-25 01:05:35	Lambrate	45.478	9.224	Lambrate	21	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 01:10:08	A74863	2024-10-25 01:06:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	83	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 01:10:09	A246697	2024-10-25 01:07:47	Via Franco Albini	45.442	9.212	Via Franco Albini	26	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 02:10:05	A97507	2024-10-25 02:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 02:10:08	A156526	2024-10-25 02:07:19	Lambrate	45.478	9.224	Lambrate	23	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 02:10:09	A74863	2024-10-25 02:07:22	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 02:10:10	A246697	2024-10-25 02:06:08	Via Franco Albini	45.442	9.212	Via Franco Albini	27	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 03:10:06	A97507	2024-10-25 03:07:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 03:10:08	A156526	2024-10-25 03:06:01	Lambrate	45.478	9.224	Lambrate	25	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 03:10:09	A74863	2024-10-25 03:06:03	Via Federico Chopin	45.426	9.206	Via Federico Chopin	43	103	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 03:10:10	A246697	2024-10-25 03:07:37	Via Franco Albini	45.442	9.212	Via Franco Albini	36	70	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 04:10:05	A97507	2024-10-25 04:07:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 04:10:07	A156526	2024-10-25 04:07:54	Lambrate	45.478	9.224	Lambrate	28	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 04:10:09	A74863	2024-10-25 04:07:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	99	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 04:10:10	A246697	2024-10-25 04:06:35	Via Franco Albini	45.442	9.212	Via Franco Albini	28	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 05:10:05	A97507	2024-10-25 05:06:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 05:10:07	A156526	2024-10-25 05:06:46	Lambrate	45.478	9.224	Lambrate	29	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 05:10:08	A74863	2024-10-25 05:06:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	100	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 05:10:10	A246697	2024-10-25 05:07:55	Via Franco Albini	45.442	9.212	Via Franco Albini	27	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 06:10:06	A97507	2024-10-25 06:07:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	60	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 06:10:08	A156526	2024-10-25 06:07:42	Lambrate	45.478	9.224	Lambrate	29	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 06:10:09	A74863	2024-10-25 06:07:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	101	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 06:10:10	A246697	2024-10-25 06:06:19	Via Franco Albini	45.442	9.212	Via Franco Albini	33	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 07:10:05	A97507	2024-10-25 06:11:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 07:10:07	A156526	2024-10-25 06:10:56	Lambrate	45.478	9.224	Lambrate	27	72	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 07:10:08	A74863	2024-10-25 06:12:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	98	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 07:10:09	A246697	2024-10-25 06:12:26	Via Franco Albini	45.442	9.212	Via Franco Albini	31	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 08:10:05	A97507	2024-10-25 08:04:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	66	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 08:10:08	A156526	2024-10-25 08:02:51	Lambrate	45.478	9.224	Lambrate	29	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 08:10:09	A74863	2024-10-25 08:04:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	110	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 08:10:10	A246697	2024-10-25 08:05:51	Via Franco Albini	45.442	9.212	Via Franco Albini	31	67	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 09:10:05	A97507	2024-10-25 09:07:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 09:10:07	A156526	2024-10-25 09:03:45	Lambrate	45.478	9.224	Lambrate	29	72	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 09:10:09	A74863	2024-10-25 09:07:31	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	109	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 09:10:10	A246697	2024-10-25 09:07:18	Via Franco Albini	45.442	9.212	Via Franco Albini	41	78	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 10:10:06	A97507	2024-10-25 10:06:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 10:10:08	A156526	2024-10-25 10:04:24	Lambrate	45.478	9.224	Lambrate	25	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 10:10:10	A74863	2024-10-25 10:05:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	97	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 10:10:11	A246697	2024-10-25 10:05:30	Via Franco Albini	45.442	9.212	Via Franco Albini	30	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 11:10:05	A97507	2024-10-25 11:03:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 11:10:07	A156526	2024-10-25 11:08:58	Lambrate	45.478	9.224	Lambrate	25	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 11:10:09	A74863	2024-10-25 11:06:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	94	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 11:10:10	A246697	2024-10-25 11:07:23	Via Franco Albini	45.442	9.212	Via Franco Albini	29	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 12:10:04	A97507	2024-10-25 11:58:35	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 12:10:06	A156526	2024-10-25 12:07:14	Lambrate	45.478	9.224	Lambrate	20	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 12:10:08	A74863	2024-10-25 12:06:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 12:10:09	A246697	2024-10-25 12:07:34	Via Franco Albini	45.442	9.212	Via Franco Albini	25	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 13:10:06	A97507	2024-10-25 13:05:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 13:10:08	A156526	2024-10-25 13:06:05	Lambrate	45.478	9.224	Lambrate	24	65	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 13:10:09	A74863	2024-10-25 13:04:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	81	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 13:10:10	A246697	2024-10-25 13:04:08	Via Franco Albini	45.442	9.212	Via Franco Albini	21	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 14:10:06	A97507	2024-10-25 14:04:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 14:10:08	A156526	2024-10-25 14:04:32	Lambrate	45.478	9.224	Lambrate	25	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 14:10:09	A74863	2024-10-25 14:05:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 14:10:10	A246697	2024-10-25 14:07:27	Via Franco Albini	45.442	9.212	Via Franco Albini	21	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 15:10:05	A97507	2024-10-25 15:07:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 15:10:08	A156526	2024-10-25 15:05:59	Lambrate	45.478	9.224	Lambrate	14	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 15:10:09	A74863	2024-10-25 15:07:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 15:10:10	A246697	2024-10-25 15:06:04	Via Franco Albini	45.442	9.212	Via Franco Albini	17	45	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 16:10:05	A97507	2024-10-25 16:05:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 16:10:07	A156526	2024-10-25 16:03:39	Lambrate	45.478	9.224	Lambrate	15	49	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 16:10:08	A74863	2024-10-25 16:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 16:10:10	A246697	2024-10-25 16:04:17	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 17:10:04	A97507	2024-10-25 17:06:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	45	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 17:10:07	A156526	2024-10-25 17:07:55	Lambrate	45.478	9.224	Lambrate	16	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 17:10:09	A74863	2024-10-25 17:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 17:10:10	A246697	2024-10-25 17:08:44	Via Franco Albini	45.442	9.212	Via Franco Albini	17	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 18:10:05	A97507	2024-10-25 18:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 18:10:07	A156526	2024-10-25 18:05:18	Lambrate	45.478	9.224	Lambrate	16	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 18:10:09	A74863	2024-10-25 18:07:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 18:10:10	A246697	2024-10-25 18:07:55	Via Franco Albini	45.442	9.212	Via Franco Albini	19	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 19:10:05	A97507	2024-10-25 19:05:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 19:10:08	A156526	2024-10-25 19:02:56	Lambrate	45.478	9.224	Lambrate	17	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 19:10:09	A74863	2024-10-25 19:03:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	79	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 19:10:10	A246697	2024-10-25 19:04:24	Via Franco Albini	45.442	9.212	Via Franco Albini	20	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 20:10:06	A97507	2024-10-25 20:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 20:10:08	A156526	2024-10-25 20:07:07	Lambrate	45.478	9.224	Lambrate	19	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 20:10:09	A74863	2024-10-25 20:07:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 20:10:11	A246697	2024-10-25 20:05:48	Via Franco Albini	45.442	9.212	Via Franco Albini	19	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 21:10:05	A97507	2024-10-25 21:05:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 21:10:07	A156526	2024-10-25 21:08:01	Lambrate	45.478	9.224	Lambrate	18	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 21:10:09	A74863	2024-10-25 21:07:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 21:10:10	A246697	2024-10-25 21:07:08	Via Franco Albini	45.442	9.212	Via Franco Albini	22	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 22:10:05	A97507	2024-10-25 22:06:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 22:10:08	A156526	2024-10-25 22:05:37	Lambrate	45.478	9.224	Lambrate	16	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 22:10:09	A74863	2024-10-25 22:06:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	66	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 22:10:11	A246697	2024-10-25 22:05:28	Via Franco Albini	45.442	9.212	Via Franco Albini	14	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 23:10:05	A97507	2024-10-25 23:07:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 23:10:07	A156526	2024-10-25 23:06:26	Lambrate	45.478	9.224	Lambrate	12	39	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 23:10:08	A74863	2024-10-25 23:07:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	62	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-25 23:10:09	A246697	2024-10-25 23:06:49	Via Franco Albini	45.442	9.212	Via Franco Albini	14	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 00:10:05	A97507	2024-10-26 00:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 00:10:07	A156526	2024-10-26 00:07:18	Lambrate	45.478	9.224	Lambrate	13	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 00:10:09	A74863	2024-10-26 00:08:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 00:10:10	A246697	2024-10-26 00:05:00	Via Franco Albini	45.442	9.212	Via Franco Albini	9	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 01:10:05	A97507	2024-10-26 01:07:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 01:10:08	A156526	2024-10-26 01:05:00	Lambrate	45.478	9.224	Lambrate	9	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 01:10:09	A74863	2024-10-26 01:06:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	34	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 01:10:10	A246697	2024-10-26 01:06:20	Via Franco Albini	45.442	9.212	Via Franco Albini	12	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 02:10:05	A97507	2024-10-26 02:08:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	24	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 02:10:07	A156526	2024-10-26 02:05:43	Lambrate	45.478	9.224	Lambrate	10	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 02:10:08	A74863	2024-10-26 02:04:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 02:10:09	A246697	2024-10-26 02:04:34	Via Franco Albini	45.442	9.212	Via Franco Albini	11	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 03:10:05	A97507	2024-10-26 03:07:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 03:10:07	A156526	2024-10-26 03:07:23	Lambrate	45.478	9.224	Lambrate	8	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 03:10:08	A74863	2024-10-26 03:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	49	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 03:10:09	A246697	2024-10-26 03:06:27	Via Franco Albini	45.442	9.212	Via Franco Albini	12	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 04:10:05	A97507	2024-10-26 04:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 04:10:07	A156526	2024-10-26 04:06:47	Lambrate	45.478	9.224	Lambrate	6	20	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 04:10:08	A74863	2024-10-26 04:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	32	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 04:10:09	A246697	2024-10-26 04:05:10	Via Franco Albini	45.442	9.212	Via Franco Albini	10	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 05:10:05	A97507	2024-10-26 05:07:21	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	17	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 05:10:07	A156526	2024-10-26 05:05:13	Lambrate	45.478	9.224	Lambrate	7	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 05:10:08	A74863	2024-10-26 05:06:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	34	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 05:10:09	A246697	2024-10-26 05:06:26	Via Franco Albini	45.442	9.212	Via Franco Albini	9	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 06:10:05	A97507	2024-10-26 06:05:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 06:10:07	A156526	2024-10-26 06:06:44	Lambrate	45.478	9.224	Lambrate	6	21	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 06:10:08	A74863	2024-10-26 06:07:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	40	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 06:10:09	A246697	2024-10-26 06:07:44	Via Franco Albini	45.442	9.212	Via Franco Albini	10	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 07:10:04	A97507	2024-10-26 07:06:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 07:10:07	A156526	2024-10-26 07:05:09	Lambrate	45.478	9.224	Lambrate	12	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 07:10:08	A74863	2024-10-26 07:07:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 07:10:09	A246697	2024-10-26 07:05:56	Via Franco Albini	45.442	9.212	Via Franco Albini	12	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 08:10:05	A97507	2024-10-26 08:07:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	38	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 08:10:08	A156526	2024-10-26 08:06:39	Lambrate	45.478	9.224	Lambrate	11	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 08:10:09	A74863	2024-10-26 08:06:16	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	63	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 08:10:10	A246697	2024-10-26 08:07:24	Via Franco Albini	45.442	9.212	Via Franco Albini	22	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 09:10:05	A97507	2024-10-26 09:06:06	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 09:10:08	A156526	2024-10-26 09:05:00	Lambrate	45.478	9.224	Lambrate	20	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 09:10:09	A74863	2024-10-26 09:07:08	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 09:10:10	A246697	2024-10-26 09:05:40	Via Franco Albini	45.442	9.212	Via Franco Albini	30	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 10:10:06	A97507	2024-10-26 10:06:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 10:10:08	A156526	2024-10-26 10:06:40	Lambrate	45.478	9.224	Lambrate	16	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 10:10:09	A74863	2024-10-26 10:05:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 10:10:10	A246697	2024-10-26 10:07:10	Via Franco Albini	45.442	9.212	Via Franco Albini	23	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 11:10:05	A97507	2024-10-26 11:02:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 11:10:07	A156526	2024-10-26 11:05:25	Lambrate	45.478	9.224	Lambrate	13	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 11:10:09	A74863	2024-10-26 11:06:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 11:10:10	A246697	2024-10-26 11:07:45	Via Franco Albini	45.442	9.212	Via Franco Albini	16	44	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 12:10:05	A97507	2024-10-26 12:05:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	15	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 12:10:07	A156526	2024-10-26 12:07:53	Lambrate	45.478	9.224	Lambrate	8	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 12:10:09	A74863	2024-10-26 12:05:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	41	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 12:10:10	A246697	2024-10-26 12:05:14	Via Franco Albini	45.442	9.212	Via Franco Albini	13	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 13:10:05	A97507	2024-10-26 12:58:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	23	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 13:10:08	A156526	2024-10-26 13:04:15	Lambrate	45.478	9.224	Lambrate	9	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 13:10:09	A74863	2024-10-26 13:05:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 13:10:10	A246697	2024-10-26 13:06:14	Via Franco Albini	45.442	9.212	Via Franco Albini	14	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 14:10:05	A97507	2024-10-26 14:07:08	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 14:10:08	A156526	2024-10-26 14:07:22	Lambrate	45.478	9.224	Lambrate	7	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 14:10:09	A74863	2024-10-26 14:06:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 14:10:10	A246697	2024-10-26 14:05:44	Via Franco Albini	45.442	9.212	Via Franco Albini	14	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 15:10:05	A97507	2024-10-26 15:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 15:10:08	A156526	2024-10-26 15:06:22	Lambrate	45.478	9.224	Lambrate	8	32	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 15:10:09	A74863	2024-10-26 15:06:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	48	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 15:10:10	A246697	2024-10-26 15:04:54	Via Franco Albini	45.442	9.212	Via Franco Albini	15	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 16:10:05	A97507	2024-10-26 16:04:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 16:10:07	A156526	2024-10-26 16:04:54	Lambrate	45.478	9.224	Lambrate	12	38	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 16:10:08	A74863	2024-10-26 16:06:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 16:10:09	A246697	2024-10-26 16:04:03	Via Franco Albini	45.442	9.212	Via Franco Albini	15	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 17:10:05	A97507	2024-10-26 17:05:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 17:10:07	A156526	2024-10-26 17:06:27	Lambrate	45.478	9.224	Lambrate	10	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 17:10:09	A74863	2024-10-26 17:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 17:10:10	A246697	2024-10-26 17:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	14	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 18:10:06	A97507	2024-10-26 18:05:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 18:10:08	A156526	2024-10-26 18:07:59	Lambrate	45.478	9.224	Lambrate	10	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 18:10:10	A74863	2024-10-26 18:05:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	56	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 18:10:11	A246697	2024-10-26 18:07:45	Via Franco Albini	45.442	9.212	Via Franco Albini	16	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 19:10:05	A97507	2024-10-26 19:06:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 19:10:08	A156526	2024-10-26 19:06:21	Lambrate	45.478	9.224	Lambrate	9	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 19:10:09	A74863	2024-10-26 19:06:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 19:10:10	A246697	2024-10-26 19:06:06	Via Franco Albini	45.442	9.212	Via Franco Albini	14	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 20:10:05	A97507	2024-10-26 20:07:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 20:10:08	A156526	2024-10-26 20:07:53	Lambrate	45.478	9.224	Lambrate	11	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 20:10:09	A74863	2024-10-26 20:07:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 20:10:10	A246697	2024-10-26 20:07:26	Via Franco Albini	45.442	9.212	Via Franco Albini	14	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 21:10:05	A97507	2024-10-26 21:06:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 21:10:08	A156526	2024-10-26 21:06:18	Lambrate	45.478	9.224	Lambrate	13	40	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 21:10:10	A74863	2024-10-26 21:05:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 21:10:11	A246697	2024-10-26 21:05:46	Via Franco Albini	45.442	9.212	Via Franco Albini	16	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 22:10:06	A97507	2024-10-26 22:07:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 22:10:09	A156526	2024-10-26 22:07:53	Lambrate	45.478	9.224	Lambrate	15	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 22:10:10	A74863	2024-10-26 22:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 22:10:11	A246697	2024-10-26 22:07:21	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 23:10:06	A97507	2024-10-26 23:05:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 23:10:08	A156526	2024-10-26 23:06:24	Lambrate	45.478	9.224	Lambrate	13	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 23:10:10	A74863	2024-10-26 23:07:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-26 23:10:11	A246697	2024-10-26 23:05:33	Via Franco Albini	45.442	9.212	Via Franco Albini	18	46	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 00:10:05	A97507	2024-10-27 00:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 00:10:08	A156526	2024-10-27 00:04:48	Lambrate	45.478	9.224	Lambrate	14	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 00:10:09	A74863	2024-10-27 00:05:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 00:10:10	A246697	2024-10-27 00:06:51	Via Franco Albini	45.442	9.212	Via Franco Albini	16	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 01:10:05	A97507	2024-10-27 01:05:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 01:10:08	A156526	2024-10-27 01:06:21	Lambrate	45.478	9.224	Lambrate	16	46	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 01:10:09	A74863	2024-10-27 01:04:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	66	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 01:10:10	A246697	2024-10-27 01:05:08	Via Franco Albini	45.442	9.212	Via Franco Albini	20	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 02:10:05	A97507	2024-10-27 02:06:27	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 02:10:07	A156526	2024-10-27 02:07:52	Lambrate	45.478	9.224	Lambrate	14	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 02:10:08	A74863	2024-10-27 02:05:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 02:10:09	A246697	2024-10-27 02:06:32	Via Franco Albini	45.442	9.212	Via Franco Albini	20	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 03:10:05	A97507	2024-11-08 03:03:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 03:10:05	A97507	2024-10-27 03:07:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 03:10:08	A156526	2024-10-27 03:05:05	Lambrate	45.478	9.224	Lambrate	18	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 03:10:09	A74863	2024-10-27 03:05:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 03:10:10	A246697	2024-10-27 03:06:31	Via Franco Albini	45.442	9.212	Via Franco Albini	29	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 04:10:05	A97507	2024-10-27 04:06:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 04:10:07	A156526	2024-10-27 04:06:39	Lambrate	45.478	9.224	Lambrate	22	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 04:10:08	A74863	2024-10-27 04:06:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 04:10:09	A246697	2024-10-27 04:07:46	Via Franco Albini	45.442	9.212	Via Franco Albini	27	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 05:10:05	A97507	2024-10-27 05:07:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 05:10:08	A156526	2024-10-27 05:05:04	Lambrate	45.478	9.224	Lambrate	16	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 05:10:09	A74863	2024-10-27 05:07:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	87	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 05:10:10	A246697	2024-10-27 05:06:20	Via Franco Albini	45.442	9.212	Via Franco Albini	27	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 06:10:06	A97507	2024-10-27 06:07:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 06:10:08	A156526	2024-10-27 06:06:33	Lambrate	45.478	9.224	Lambrate	19	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 06:10:09	A74863	2024-10-27 06:08:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	82	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 06:10:10	A246697	2024-10-27 06:07:42	Via Franco Albini	45.442	9.212	Via Franco Albini	19	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 07:10:05	A97507	2024-10-27 07:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 07:10:07	A156526	2024-10-27 07:05:09	Lambrate	45.478	9.224	Lambrate	18	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 07:10:08	A74863	2024-10-27 07:07:12	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 07:10:10	A246697	2024-10-27 07:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	29	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 08:10:05	A97507	2024-10-27 08:07:31	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 08:10:07	A156526	2024-10-27 08:06:37	Lambrate	45.478	9.224	Lambrate	20	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 08:10:08	A74863	2024-10-27 08:05:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	43	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 08:10:09	A246697	2024-10-27 08:07:33	Via Franco Albini	45.442	9.212	Via Franco Albini	35	62	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 09:10:06	A97507	2024-10-27 09:05:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 09:10:08	A156526	2024-10-27 09:04:59	Lambrate	45.478	9.224	Lambrate	19	50	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 09:10:09	A74863	2024-10-27 09:06:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	42	88	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 09:10:10	A246697	2024-10-27 09:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	27	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 10:10:05	A97507	2024-10-27 10:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 10:10:07	A156526	2024-10-27 10:06:33	Lambrate	45.478	9.224	Lambrate	26	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 10:10:08	A74863	2024-10-27 10:04:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	46	90	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 10:10:10	A246697	2024-10-27 10:04:11	Via Franco Albini	45.442	9.212	Via Franco Albini	39	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 11:10:05	A97507	2024-10-27 11:04:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 11:10:07	A156526	2024-10-27 11:05:37	Lambrate	45.478	9.224	Lambrate	22	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 11:10:08	A74863	2024-10-27 10:48:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	43	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 11:10:10	A246697	2024-10-27 10:57:21	Via Franco Albini	45.442	9.212	Via Franco Albini	26	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 12:10:05	A97507	2024-10-27 12:07:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 12:10:07	A156526	2024-10-27 12:05:58	Lambrate	45.478	9.224	Lambrate	20	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 12:10:09	A74863	2024-10-27 12:05:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	42	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 12:10:10	A246697	2024-10-27 12:07:01	Via Franco Albini	45.442	9.212	Via Franco Albini	29	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 13:10:05	A97507	2024-10-27 13:04:06	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 13:10:08	A156526	2024-10-27 13:05:40	Lambrate	45.478	9.224	Lambrate	22	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 13:10:09	A74863	2024-10-27 13:00:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	82	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 13:10:10	A246697	2024-10-27 13:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	25	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 14:10:05	A97507	2024-10-27 14:06:08	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 14:10:07	A156526	2024-10-27 14:05:42	Lambrate	45.478	9.224	Lambrate	17	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 14:10:09	A74863	2024-10-27 14:06:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 14:10:10	A246697	2024-10-27 14:00:54	Via Franco Albini	45.442	9.212	Via Franco Albini	21	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 15:10:05	A97507	2024-10-27 15:07:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 15:10:07	A156526	2024-10-27 15:07:59	Lambrate	45.478	9.224	Lambrate	12	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 15:10:08	A74863	2024-10-27 15:07:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 15:10:10	A246697	2024-10-27 15:07:18	Via Franco Albini	45.442	9.212	Via Franco Albini	18	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 16:10:06	A97507	2024-10-27 16:07:21	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 16:10:08	A156526	2024-10-27 16:06:38	Lambrate	45.478	9.224	Lambrate	13	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 16:10:09	A74863	2024-10-27 16:05:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 16:10:11	A246697	2024-10-27 16:06:28	Via Franco Albini	45.442	9.212	Via Franco Albini	15	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 17:10:05	A97507	2024-10-27 17:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 17:10:07	A156526	2024-10-27 17:05:18	Lambrate	45.478	9.224	Lambrate	11	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 17:10:08	A74863	2024-10-27 17:04:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	21	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 17:10:10	A246697	2024-10-27 17:05:00	Via Franco Albini	45.442	9.212	Via Franco Albini	16	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 18:10:05	A97507	2024-10-27 18:07:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 18:10:08	A156526	2024-10-27 18:06:51	Lambrate	45.478	9.224	Lambrate	21	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 18:10:10	A74863	2024-10-27 18:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	65	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 18:10:11	A246697	2024-10-27 18:06:41	Via Franco Albini	45.442	9.212	Via Franco Albini	19	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 19:10:05	A97507	2024-10-27 19:06:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 19:10:08	A156526	2024-10-27 19:05:18	Lambrate	45.478	9.224	Lambrate	19	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 19:10:09	A74863	2024-10-27 19:05:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 19:10:10	A246697	2024-10-27 19:04:59	Via Franco Albini	45.442	9.212	Via Franco Albini	19	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 20:10:06	A97507	2024-10-27 20:05:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 20:10:08	A156526	2024-10-27 19:26:53	Lambrate	45.478	9.224	Lambrate	28	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 20:10:10	A74863	2024-10-27 20:06:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 20:10:11	A246697	2024-10-27 20:06:23	Via Franco Albini	45.442	9.212	Via Franco Albini	30	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 21:10:05	A97507	2024-10-27 21:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 21:10:07	A156526	2024-10-27 21:05:13	Lambrate	45.478	9.224	Lambrate	26	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 21:10:09	A74863	2024-10-27 21:07:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 21:10:10	A246697	2024-10-27 21:07:52	Via Franco Albini	45.442	9.212	Via Franco Albini	25	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 22:10:06	A97507	2024-10-27 22:04:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 22:10:08	A156526	2024-10-27 22:06:44	Lambrate	45.478	9.224	Lambrate	23	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 22:10:09	A74863	2024-10-27 22:06:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 22:10:10	A246697	2024-10-27 22:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	27	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 23:10:05	A97507	2024-10-27 23:05:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 23:10:08	A156526	2024-10-27 23:05:17	Lambrate	45.478	9.224	Lambrate	21	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 23:10:09	A74863	2024-10-27 23:07:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-27 23:10:10	A246697	2024-10-27 23:04:27	Via Franco Albini	45.442	9.212	Via Franco Albini	22	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 00:10:05	A97507	2024-10-28 00:06:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 00:10:08	A156526	2024-10-28 00:06:45	Lambrate	45.478	9.224	Lambrate	19	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 00:10:09	A74863	2024-10-28 00:06:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	47	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 00:10:10	A246697	2024-10-28 00:05:50	Via Franco Albini	45.442	9.212	Via Franco Albini	17	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 01:10:05	A97507	2024-10-28 01:07:26	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 01:10:07	A156526	2024-10-28 01:05:11	Lambrate	45.478	9.224	Lambrate	19	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 01:10:09	A74863	2024-10-28 01:06:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	38	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 01:10:10	A246697	2024-10-28 01:07:08	Via Franco Albini	45.442	9.212	Via Franco Albini	14	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 02:10:06	A97507	2024-10-28 02:06:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 02:10:08	A156526	2024-10-28 02:06:48	Lambrate	45.478	9.224	Lambrate	18	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 02:10:09	A74863	2024-10-28 02:08:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 02:10:10	A246697	2024-10-28 02:05:25	Via Franco Albini	45.442	9.212	Via Franco Albini	17	45	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 03:10:06	A97507	2024-10-28 03:05:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 03:10:08	A156526	2024-10-28 03:05:20	Lambrate	45.478	9.224	Lambrate	18	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 03:10:09	A74863	2024-10-28 03:06:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 03:10:10	A246697	2024-10-28 03:06:47	Via Franco Albini	45.442	9.212	Via Franco Albini	13	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 04:10:05	A97507	2024-10-28 04:04:05	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 04:10:07	A156526	2024-10-28 04:04:38	Lambrate	45.478	9.224	Lambrate	23	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 04:10:08	A74863	2024-10-28 04:03:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 04:10:10	A246697	2024-10-28 04:04:33	Via Franco Albini	45.442	9.212	Via Franco Albini	14	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 05:10:06	A97507	2024-10-28 05:03:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 05:10:08	A156526	2024-10-28 05:03:25	Lambrate	45.478	9.224	Lambrate	15	50	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 05:10:09	A74863	2024-10-28 05:03:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 05:10:10	A246697	2024-10-28 05:03:51	Via Franco Albini	45.442	9.212	Via Franco Albini	14	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 06:10:05	A97507	2024-10-28 06:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 06:10:07	A156526	2024-10-28 06:05:12	Lambrate	45.478	9.224	Lambrate	17	49	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 06:10:08	A74863	2024-10-28 06:07:12	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 06:10:09	A246697	2024-10-28 06:05:21	Via Franco Albini	45.442	9.212	Via Franco Albini	15	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 07:10:05	A97507	2024-10-28 07:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 07:10:08	A156526	2024-10-28 07:06:46	Lambrate	45.478	9.224	Lambrate	17	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 07:10:09	A74863	2024-10-28 07:05:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	41	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 07:10:10	A246697	2024-10-28 07:06:38	Via Franco Albini	45.442	9.212	Via Franco Albini	12	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 08:10:05	A97507	2024-10-28 08:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 08:10:08	A156526	2024-10-28 08:05:07	Lambrate	45.478	9.224	Lambrate	17	50	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 08:10:09	A74863	2024-10-28 08:06:26	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 08:10:10	A246697	2024-10-28 08:07:57	Via Franco Albini	45.442	9.212	Via Franco Albini	18	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 09:10:05	A97507	2024-10-28 09:07:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 09:10:07	A156526	2024-10-28 09:06:35	Lambrate	45.478	9.224	Lambrate	16	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 09:10:08	A74863	2024-10-28 09:07:16	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 09:10:10	A246697	2024-10-28 09:06:22	Via Franco Albini	45.442	9.212	Via Franco Albini	18	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 10:10:05	A97507	2024-10-28 10:06:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 10:10:07	A156526	2024-10-28 10:05:10	Lambrate	45.478	9.224	Lambrate	13	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 10:10:09	A74863	2024-10-28 10:06:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 10:10:10	A246697	2024-10-28 10:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	17	45	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 11:10:05	A97507	2024-10-28 11:06:31	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 11:10:08	A156526	2024-10-28 11:07:24	Lambrate	45.478	9.224	Lambrate	15	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 11:10:09	A74863	2024-10-28 10:58:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 11:10:10	A246697	2024-10-28 11:06:58	Via Franco Albini	45.442	9.212	Via Franco Albini	14	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 12:10:05	A97507	2024-10-28 12:08:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 12:10:08	A156526	2024-10-28 12:06:44	Lambrate	45.478	9.224	Lambrate	14	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 12:10:09	A74863	2024-10-28 12:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	99	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 12:10:10	A246697	2024-10-28 12:06:47	Via Franco Albini	45.442	9.212	Via Franco Albini	23	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 13:10:05	A97507	2024-10-28 13:07:18	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 13:10:07	A156526	2024-10-28 13:07:00	Lambrate	45.478	9.224	Lambrate	17	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 13:10:08	A74863	2024-10-28 13:05:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 13:10:10	A246697	2024-10-28 13:05:37	Via Franco Albini	45.442	9.212	Via Franco Albini	23	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 14:10:05	A97507	2024-10-28 14:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 14:10:07	A156526	2024-10-28 14:06:38	Lambrate	45.478	9.224	Lambrate	14	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 14:10:09	A74863	2024-10-28 14:06:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 14:10:10	A246697	2024-10-28 14:05:56	Via Franco Albini	45.442	9.212	Via Franco Albini	18	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 15:10:05	A97507	2024-10-28 15:06:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 15:10:08	A156526	2024-10-28 15:05:50	Lambrate	45.478	9.224	Lambrate	14	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 15:10:09	A74863	2024-10-28 15:06:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 15:10:11	A246697	2024-10-28 15:05:43	Via Franco Albini	45.442	9.212	Via Franco Albini	12	33	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 16:10:06	A97507	2024-10-28 16:06:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	23	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 16:10:09	A156526	2024-10-28 16:04:48	Lambrate	45.478	9.224	Lambrate	9	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 16:10:10	A74863	2024-10-28 16:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 16:10:11	A246697	2024-10-28 16:04:53	Via Franco Albini	45.442	9.212	Via Franco Albini	12	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 17:10:05	A97507	2024-10-28 17:07:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 17:10:08	A156526	2024-10-28 17:06:23	Lambrate	45.478	9.224	Lambrate	11	31	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 17:10:09	A74863	2024-10-28 17:07:04	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 17:10:10	A246697	2024-10-28 17:07:22	Via Franco Albini	45.442	9.212	Via Franco Albini	10	24	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 18:10:06	A97507	2024-10-28 18:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 18:10:08	A156526	2024-10-28 18:04:49	Lambrate	45.478	9.224	Lambrate	17	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 18:10:09	A74863	2024-10-28 18:05:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	31	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 18:10:10	A246697	2024-10-28 18:05:45	Via Franco Albini	45.442	9.212	Via Franco Albini	10	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 19:10:05	A97507	2024-10-28 19:06:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 19:10:08	A156526	2024-10-28 19:06:19	Lambrate	45.478	9.224	Lambrate	15	38	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 19:10:09	A74863	2024-10-28 19:06:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 19:10:11	A246697	2024-10-28 19:04:04	Via Franco Albini	45.442	9.212	Via Franco Albini	10	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 20:10:06	A97507	2024-10-28 20:05:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 20:10:08	A156526	2024-10-28 20:04:49	Lambrate	45.478	9.224	Lambrate	16	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 20:10:10	A74863	2024-10-28 20:05:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 20:10:11	A246697	2024-10-28 20:05:26	Via Franco Albini	45.442	9.212	Via Franco Albini	14	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 21:10:05	A97507	2024-10-28 21:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 21:10:07	A156526	2024-10-28 21:06:26	Lambrate	45.478	9.224	Lambrate	16	38	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 21:10:08	A74863	2024-10-28 21:06:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 21:10:10	A246697	2024-10-28 21:07:04	Via Franco Albini	45.442	9.212	Via Franco Albini	11	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 22:10:05	A97507	2024-10-28 22:07:31	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	23	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 22:10:08	A156526	2024-10-28 22:05:03	Lambrate	45.478	9.224	Lambrate	12	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 22:10:09	A74863	2024-10-28 22:07:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	51	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 22:10:10	A246697	2024-10-28 22:05:33	Via Franco Albini	45.442	9.212	Via Franco Albini	14	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 23:10:05	A97507	2024-10-28 23:06:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 23:10:08	A156526	2024-10-28 23:06:42	Lambrate	45.478	9.224	Lambrate	21	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 23:10:09	A74863	2024-10-28 23:06:14	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	42	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-28 23:10:10	A246697	2024-10-28 23:07:12	Via Franco Albini	45.442	9.212	Via Franco Albini	16	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 00:10:06	A97507	2024-10-29 00:07:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 00:10:08	A156526	2024-10-29 00:05:16	Lambrate	45.478	9.224	Lambrate	24	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 00:10:09	A74863	2024-10-29 00:07:02	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 00:10:10	A246697	2024-10-29 00:05:27	Via Franco Albini	45.442	9.212	Via Franco Albini	15	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 01:10:05	A97507	2024-10-29 01:06:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 01:10:07	A156526	2024-10-29 01:06:40	Lambrate	45.478	9.224	Lambrate	22	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 01:10:08	A74863	2024-10-29 01:06:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	44	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 01:10:10	A246697	2024-10-29 01:06:51	Via Franco Albini	45.442	9.212	Via Franco Albini	15	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 02:10:05	A97507	2024-10-29 02:06:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 02:10:08	A156526	2024-10-29 02:05:06	Lambrate	45.478	9.224	Lambrate	21	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 02:10:09	A74863	2024-10-29 02:08:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 02:10:10	A246697	2024-10-29 02:05:10	Via Franco Albini	45.442	9.212	Via Franco Albini	15	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 03:10:06	A97507	2024-10-29 03:05:31	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 03:10:08	A156526	2024-10-29 03:04:11	Lambrate	45.478	9.224	Lambrate	19	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 03:10:09	A74863	2024-10-29 03:06:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 03:10:10	A246697	2024-10-29 03:04:03	Via Franco Albini	45.442	9.212	Via Franco Albini	19	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 04:10:05	A97507	2024-10-29 04:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 04:10:08	A156526	2024-10-29 04:06:35	Lambrate	45.478	9.224	Lambrate	22	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 04:10:09	A74863	2024-10-29 04:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	28	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 04:10:10	A246697	2024-10-29 04:07:00	Via Franco Albini	45.442	9.212	Via Franco Albini	13	33	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 05:10:05	A97507	2024-10-29 05:07:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 05:10:08	A156526	2024-10-29 05:04:58	Lambrate	45.478	9.224	Lambrate	22	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 05:10:09	A74863	2024-10-29 05:07:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 05:10:10	A246697	2024-10-29 05:05:15	Via Franco Albini	45.442	9.212	Via Franco Albini	18	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 06:10:05	A97507	2024-10-29 06:05:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 06:10:08	A156526	2024-10-29 06:06:29	Lambrate	45.478	9.224	Lambrate	20	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 06:10:09	A74863	2024-10-29 06:06:16	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	27	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 06:10:11	A246697	2024-10-29 06:06:35	Via Franco Albini	45.442	9.212	Via Franco Albini	17	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 07:10:05	A97507	2024-10-29 07:06:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 07:10:08	A156526	2024-10-29 07:07:58	Lambrate	45.478	9.224	Lambrate	16	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 07:10:09	A74863	2024-10-29 07:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 07:10:10	A246697	2024-10-29 07:04:58	Via Franco Albini	45.442	9.212	Via Franco Albini	17	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 08:10:05	A97507	2024-10-29 08:07:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 08:10:07	A156526	2024-10-29 08:06:19	Lambrate	45.478	9.224	Lambrate	20	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 08:10:08	A74863	2024-10-29 08:07:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	49	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 08:10:10	A246697	2024-10-29 08:06:18	Via Franco Albini	45.442	9.212	Via Franco Albini	31	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 09:10:05	A97507	2024-10-29 09:06:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 09:10:08	A156526	2024-10-29 09:07:49	Lambrate	45.478	9.224	Lambrate	20	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 09:10:09	A74863	2024-10-29 09:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	64	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 09:10:10	A246697	2024-10-29 09:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	22	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 10:10:05	A97507	2024-10-29 10:05:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 10:10:07	A156526	2024-10-29 10:06:25	Lambrate	45.478	9.224	Lambrate	31	62	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 10:10:09	A74863	2024-10-29 10:06:07	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	81	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 10:10:10	A246697	2024-10-29 10:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	23	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 11:10:06	A97507	2024-10-29 11:05:31	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	38	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 11:10:08	A156526	2024-10-29 11:05:10	Lambrate	45.478	9.224	Lambrate	24	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 11:10:09	A74863	2024-10-29 11:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 11:10:10	A246697	2024-10-29 11:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	20	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 12:10:05	A97507	2024-10-29 12:06:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 12:10:08	A156526	2024-10-29 12:04:16	Lambrate	45.478	9.224	Lambrate	15	38	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 12:10:09	A74863	2024-10-29 12:06:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	40	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 12:10:10	A246697	2024-10-29 12:04:58	Via Franco Albini	45.442	9.212	Via Franco Albini	9	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 13:10:05	A97507	2024-10-29 13:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 13:10:07	A156526	2024-10-29 13:06:56	Lambrate	45.478	9.224	Lambrate	11	30	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 13:10:09	A74863	2024-10-29 13:06:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 13:10:10	A246697	2024-10-29 13:05:50	Via Franco Albini	45.442	9.212	Via Franco Albini	11	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 14:10:05	A97507	2024-10-29 14:06:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	19	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 14:10:07	A156526	2024-10-29 14:06:13	Lambrate	45.478	9.224	Lambrate	12	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 14:10:08	A74863	2024-10-29 14:06:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	8	23	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 14:10:09	A246697	2024-10-29 14:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	10	20	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 15:10:06	A97507	2024-10-29 15:06:34	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	16	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 15:10:08	A156526	2024-10-29 15:04:54	Lambrate	45.478	9.224	Lambrate	12	26	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 15:10:09	A74863	2024-10-29 15:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	15	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 15:10:10	A246697	2024-10-29 15:07:53	Via Franco Albini	45.442	9.212	Via Franco Albini	10	17	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 16:10:05	A97507	2024-10-29 16:05:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	13	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 16:10:10	A156526	2024-10-29 16:06:33	Lambrate	45.478	9.224	Lambrate	12	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 16:10:11	A74863	2024-10-29 16:05:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	16	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 16:10:13	A246697	2024-10-29 16:06:21	Via Franco Albini	45.442	9.212	Via Franco Albini	6	12	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 17:10:05	A97507	2024-10-29 17:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	11	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 17:10:08	A156526	2024-10-29 17:05:20	Lambrate	45.478	9.224	Lambrate	8	15	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 17:10:09	A74863	2024-10-29 17:06:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	25	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 17:10:10	A246697	2024-10-29 17:07:47	Via Franco Albini	45.442	9.212	Via Franco Albini	6	15	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 18:10:05	A97507	2024-10-29 18:05:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	23	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 18:10:07	A156526	2024-10-29 18:03:58	Lambrate	45.478	9.224	Lambrate	11	19	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 18:10:08	A74863	2024-10-29 18:08:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 18:10:09	A246697	2024-10-29 18:03:43	Via Franco Albini	45.442	9.212	Via Franco Albini	13	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 19:10:05	A97507	2024-10-29 19:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 19:10:09	A156526	2024-10-29 19:05:24	Lambrate	45.478	9.224	Lambrate	10	31	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 19:10:10	A74863	2024-10-29 19:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 19:10:12	A246697	2024-10-29 19:05:08	Via Franco Albini	45.442	9.212	Via Franco Albini	14	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 20:10:06	A97507	2024-10-29 20:07:35	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 20:10:09	A156526	2024-10-29 20:07:04	Lambrate	45.478	9.224	Lambrate	12	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 20:10:10	A74863	2024-10-29 20:07:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	65	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 20:10:11	A246697	2024-10-29 20:06:35	Via Franco Albini	45.442	9.212	Via Franco Albini	16	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 21:10:05	A97507	2024-10-29 21:06:06	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 21:10:08	A156526	2024-10-29 21:05:37	Lambrate	45.478	9.224	Lambrate	14	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 21:10:09	A74863	2024-10-29 21:06:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	65	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 21:10:10	A246697	2024-10-29 21:05:01	Via Franco Albini	45.442	9.212	Via Franco Albini	20	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 22:10:05	A97507	2024-10-29 22:07:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 22:10:07	A156526	2024-10-29 22:07:09	Lambrate	45.478	9.224	Lambrate	20	47	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 22:10:08	A74863	2024-10-29 22:06:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 22:10:09	A246697	2024-10-29 22:06:27	Via Franco Albini	45.442	9.212	Via Franco Albini	17	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 23:10:06	A97507	2024-10-29 23:06:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 23:10:08	A156526	2024-10-29 23:05:37	Lambrate	45.478	9.224	Lambrate	21	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 23:10:09	A74863	2024-10-29 23:05:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-29 23:10:10	A246697	2024-10-29 23:05:15	Via Franco Albini	45.442	9.212	Via Franco Albini	21	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 00:10:05	A97507	2024-10-30 00:06:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 00:10:07	A156526	2024-10-30 00:04:05	Lambrate	45.478	9.224	Lambrate	16	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 00:10:08	A74863	2024-10-30 00:04:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 00:10:10	A246697	2024-10-30 00:06:38	Via Franco Albini	45.442	9.212	Via Franco Albini	20	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 01:10:05	A97507	2024-10-30 01:07:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 01:10:07	A156526	2024-10-30 01:05:38	Lambrate	45.478	9.224	Lambrate	15	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 01:10:08	A74863	2024-10-30 01:06:08	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 01:10:10	A246697	2024-10-30 01:05:16	Via Franco Albini	45.442	9.212	Via Franco Albini	21	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 02:10:05	A97507	2024-10-30 02:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 02:10:08	A156526	2024-10-30 02:04:18	Lambrate	45.478	9.224	Lambrate	16	46	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 02:10:09	A74863	2024-10-30 02:04:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	64	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 02:10:10	A246697	2024-10-30 02:06:35	Via Franco Albini	45.442	9.212	Via Franco Albini	20	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 03:10:06	A97507	2024-10-30 03:07:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 03:10:08	A156526	2024-10-30 03:05:59	Lambrate	45.478	9.224	Lambrate	17	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 03:10:09	A74863	2024-10-30 03:06:16	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 03:10:10	A246697	2024-10-30 03:05:12	Via Franco Albini	45.442	9.212	Via Franco Albini	18	49	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 04:10:05	A97507	2024-10-30 04:05:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	38	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 04:10:08	A156526	2024-10-30 04:05:33	Lambrate	45.478	9.224	Lambrate	15	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 04:10:09	A74863	2024-10-30 04:02:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	12	40	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 04:10:10	A246697	2024-10-30 04:05:49	Via Franco Albini	45.442	9.212	Via Franco Albini	15	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 05:10:05	A97507	2024-10-30 05:07:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 05:10:07	A156526	2024-10-30 05:07:19	Lambrate	45.478	9.224	Lambrate	16	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 05:10:09	A74863	2024-10-30 05:06:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 05:10:10	A246697	2024-10-30 05:07:44	Via Franco Albini	45.442	9.212	Via Franco Albini	9	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 06:10:05	A97507	2024-10-30 06:06:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 06:10:08	A156526	2024-10-30 06:06:01	Lambrate	45.478	9.224	Lambrate	15	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 06:10:09	A74863	2024-10-30 06:07:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	6	25	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 06:10:10	A246697	2024-10-30 06:05:58	Via Franco Albini	45.442	9.212	Via Franco Albini	8	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 07:10:05	A97507	2024-10-30 07:07:34	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 07:10:07	A156526	2024-10-30 07:07:43	Lambrate	45.478	9.224	Lambrate	14	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 07:10:08	A74863	2024-10-30 07:06:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	5	20	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 07:10:10	A246697	2024-10-30 07:07:26	Via Franco Albini	45.442	9.212	Via Franco Albini	7	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 08:10:05	A97507	2024-10-30 08:06:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	3	14	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 08:10:07	A156526	2024-10-30 08:06:19	Lambrate	45.478	9.224	Lambrate	12	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 08:10:09	A74863	2024-10-30 08:07:14	Via Federico Chopin	45.426	9.206	Via Federico Chopin	7	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 08:10:10	A246697	2024-10-30 08:05:56	Via Franco Albini	45.442	9.212	Via Franco Albini	7	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 09:10:06	A97507	2024-10-30 09:07:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 09:10:08	A156526	2024-10-30 09:07:48	Lambrate	45.478	9.224	Lambrate	20	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 09:10:10	A74863	2024-10-30 09:06:07	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	45	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 09:10:11	A246697	2024-10-30 09:07:27	Via Franco Albini	45.442	9.212	Via Franco Albini	8	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 10:10:05	A97507	2024-10-30 10:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 10:10:07	A156526	2024-10-30 10:06:13	Lambrate	45.478	9.224	Lambrate	19	49	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 10:10:08	A74863	2024-10-30 10:07:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	51	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 10:10:10	A246697	2024-10-30 10:06:14	Via Franco Albini	45.442	9.212	Via Franco Albini	9	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 11:10:05	A97507	2024-10-30 11:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 11:10:08	A156526	2024-10-30 11:05:28	Lambrate	45.478	9.224	Lambrate	23	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 11:10:09	A74863	2024-10-30 11:03:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	39	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 11:10:10	A246697	2024-10-30 11:05:52	Via Franco Albini	45.442	9.212	Via Franco Albini	15	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 12:10:05	A97507	2024-10-30 12:06:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 12:10:08	A156526	2024-10-30 12:07:50	Lambrate	45.478	9.224	Lambrate	15	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 12:10:09	A74863	2024-10-30 12:07:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 12:10:10	A246697	2024-10-30 12:02:47	Via Franco Albini	45.442	9.212	Via Franco Albini	12	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 13:10:05	A97507	2024-10-30 13:06:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 13:10:08	A156526	2024-10-30 13:07:55	Lambrate	45.478	9.224	Lambrate	17	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 13:10:09	A74863	2024-10-30 13:06:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 13:10:11	A246697	2024-10-30 13:06:48	Via Franco Albini	45.442	9.212	Via Franco Albini	12	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 14:10:05	A97507	2024-10-30 13:57:34	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 14:10:07	A156526	2024-10-30 14:04:55	Lambrate	45.478	9.224	Lambrate	18	39	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 14:10:09	A74863	2024-10-30 14:03:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 14:10:10	A246697	2024-10-30 14:07:29	Via Franco Albini	45.442	9.212	Via Franco Albini	16	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 15:10:05	A97507	2024-10-30 15:06:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	44	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 15:10:08	A156526	2024-10-30 15:06:59	Lambrate	45.478	9.224	Lambrate	15	36	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 15:10:09	A74863	2024-10-30 15:06:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	65	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 15:10:11	A246697	2024-10-30 15:07:38	Via Franco Albini	45.442	9.212	Via Franco Albini	21	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 16:10:06	A97507	2024-10-30 16:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 16:10:08	A156526	2024-10-30 16:06:02	Lambrate	45.478	9.224	Lambrate	14	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 16:10:09	A74863	2024-10-30 16:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	66	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 16:10:11	A246697	2024-10-30 16:06:45	Via Franco Albini	45.442	9.212	Via Franco Albini	16	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 17:10:06	A97507	2024-10-30 17:07:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 17:10:08	A156526	2024-10-30 17:07:46	Lambrate	45.478	9.224	Lambrate	19	47	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 17:10:09	A74863	2024-10-30 17:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 17:10:10	A246697	2024-10-30 17:05:21	Via Franco Albini	45.442	9.212	Via Franco Albini	21	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 18:10:06	A97507	2024-10-30 18:06:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 18:10:08	A156526	2024-10-30 18:06:22	Lambrate	45.478	9.224	Lambrate	22	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 18:10:10	A74863	2024-10-30 18:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	84	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 18:10:11	A246697	2024-10-30 18:06:56	Via Franco Albini	45.442	9.212	Via Franco Albini	25	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 19:10:05	A97507	2024-10-30 19:05:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 19:10:08	A156526	2024-10-30 19:07:57	Lambrate	45.478	9.224	Lambrate	23	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 19:10:10	A74863	2024-10-30 19:06:08	Via Federico Chopin	45.426	9.206	Via Federico Chopin	44	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 19:10:11	A246697	2024-10-30 19:05:44	Via Franco Albini	45.442	9.212	Via Franco Albini	26	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 20:10:05	A97507	2024-10-30 20:04:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 20:10:07	A156526	2024-10-30 20:06:34	Lambrate	45.478	9.224	Lambrate	25	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 20:10:08	A74863	2024-10-30 20:05:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	44	97	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 20:10:10	A246697	2024-10-30 20:04:08	Via Franco Albini	45.442	9.212	Via Franco Albini	30	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 21:10:05	A97507	2024-10-30 21:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 21:10:08	A156526	2024-10-30 21:05:06	Lambrate	45.478	9.224	Lambrate	26	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 21:10:09	A74863	2024-10-30 21:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	98	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 21:10:10	A246697	2024-10-30 21:05:34	Via Franco Albini	45.442	9.212	Via Franco Albini	30	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 22:10:05	A97507	2024-10-30 22:05:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 22:10:08	A156526	2024-10-30 22:06:43	Lambrate	45.478	9.224	Lambrate	29	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 22:10:09	A74863	2024-10-30 22:05:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	42	94	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 22:10:10	A246697	2024-10-30 22:04:18	Via Franco Albini	45.442	9.212	Via Franco Albini	31	62	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 23:10:05	A97507	2024-10-30 23:06:05	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 23:10:07	A156526	2024-10-30 23:05:06	Lambrate	45.478	9.224	Lambrate	24	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 23:10:08	A74863	2024-10-30 23:06:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	74	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-30 23:10:09	A246697	2024-10-30 23:05:36	Via Franco Albini	45.442	9.212	Via Franco Albini	35	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 00:10:05	A97507	2024-10-31 00:07:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 00:10:08	A156526	2024-10-31 00:06:37	Lambrate	45.478	9.224	Lambrate	30	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 00:10:09	A74863	2024-10-31 00:05:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 00:10:10	A246697	2024-10-31 00:07:30	Via Franco Albini	45.442	9.212	Via Franco Albini	26	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 01:10:06	A97507	2024-10-31 01:06:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 01:10:08	A156526	2024-10-31 01:05:05	Lambrate	45.478	9.224	Lambrate	21	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 01:10:09	A74863	2024-10-31 01:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 01:10:10	A246697	2024-10-31 01:05:54	Via Franco Albini	45.442	9.212	Via Franco Albini	33	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 02:10:05	A97507	2024-10-31 02:07:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 02:10:07	A156526	2024-10-31 02:06:46	Lambrate	45.478	9.224	Lambrate	23	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 02:10:08	A74863	2024-10-31 02:06:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 02:10:09	A246697	2024-10-31 02:07:21	Via Franco Albini	45.442	9.212	Via Franco Albini	25	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 03:10:05	A97507	2024-10-31 03:06:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 03:10:08	A156526	2024-10-31 03:05:54	Lambrate	45.478	9.224	Lambrate	25	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 03:10:09	A74863	2024-10-31 03:07:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 03:10:10	A246697	2024-10-31 03:06:06	Via Franco Albini	45.442	9.212	Via Franco Albini	21	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 04:10:05	A97507	2024-10-31 04:07:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 04:10:08	A156526	2024-10-31 04:05:09	Lambrate	45.478	9.224	Lambrate	22	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 04:10:09	A74863	2024-10-31 04:07:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 04:10:10	A246697	2024-10-31 04:06:26	Via Franco Albini	45.442	9.212	Via Franco Albini	21	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 05:10:05	A97507	2024-10-31 05:06:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 05:10:07	A156526	2024-10-31 05:06:45	Lambrate	45.478	9.224	Lambrate	19	46	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 05:10:09	A74863	2024-10-31 05:05:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	39	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 05:10:10	A246697	2024-10-31 05:04:43	Via Franco Albini	45.442	9.212	Via Franco Albini	16	46	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 06:10:06	A97507	2024-10-31 06:08:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 06:10:08	A156526	2024-10-31 06:08:17	Lambrate	45.478	9.224	Lambrate	18	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 06:10:09	A74863	2024-10-31 06:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	38	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 06:10:10	A246697	2024-10-31 06:06:11	Via Franco Albini	45.442	9.212	Via Franco Albini	12	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 07:10:05	A97507	2024-10-31 07:06:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 07:10:07	A156526	2024-10-31 07:06:44	Lambrate	45.478	9.224	Lambrate	17	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 07:10:08	A74863	2024-10-31 07:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	37	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 07:10:09	A246697	2024-10-31 07:07:33	Via Franco Albini	45.442	9.212	Via Franco Albini	13	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 08:10:05	A97507	2024-10-31 08:05:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 08:10:07	A156526	2024-10-31 08:05:09	Lambrate	45.478	9.224	Lambrate	25	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 08:10:08	A74863	2024-10-31 08:06:22	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 08:10:09	A246697	2024-10-31 08:06:26	Via Franco Albini	45.442	9.212	Via Franco Albini	12	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 09:10:05	A97507	2024-10-31 09:07:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 09:10:08	A156526	2024-10-31 09:06:43	Lambrate	45.478	9.224	Lambrate	17	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 09:10:09	A74863	2024-10-31 09:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	48	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 09:10:10	A246697	2024-10-31 09:05:09	Via Franco Albini	45.442	9.212	Via Franco Albini	8	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 10:10:05	A97507	2024-10-31 10:06:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 10:10:07	A156526	2024-10-31 10:05:26	Lambrate	45.478	9.224	Lambrate	21	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 10:10:09	A74863	2024-10-31 10:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 10:10:10	A246697	2024-10-31 10:06:55	Via Franco Albini	45.442	9.212	Via Franco Albini	13	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 11:10:05	A97507	2024-10-31 11:07:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 11:10:08	A156526	2024-10-31 11:07:20	Lambrate	45.478	9.224	Lambrate	25	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 11:10:09	A74863	2024-10-31 10:59:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 11:10:10	A246697	2024-10-31 11:03:41	Via Franco Albini	45.442	9.212	Via Franco Albini	22	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 12:10:05	A97507	2024-10-31 12:05:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 12:10:08	A156526	2024-10-31 12:07:05	Lambrate	45.478	9.224	Lambrate	20	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 12:10:09	A74863	2024-10-31 12:06:03	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	84	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 12:10:10	A246697	2024-10-31 12:07:09	Via Franco Albini	45.442	9.212	Via Franco Albini	22	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 13:10:05	A97507	2024-10-31 13:05:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	70	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 13:10:07	A156526	2024-10-31 13:06:35	Lambrate	45.478	9.224	Lambrate	22	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 13:10:08	A74863	2024-10-31 13:05:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	83	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 13:10:09	A246697	2024-10-31 12:55:17	Via Franco Albini	45.442	9.212	Via Franco Albini	21	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 14:10:06	A97507	2024-10-31 14:03:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 14:10:08	A156526	2024-10-31 14:03:09	Lambrate	45.478	9.224	Lambrate	21	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 14:10:10	A74863	2024-10-31 13:59:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 14:10:11	A246697	2024-10-31 14:03:30	Via Franco Albini	45.442	9.212	Via Franco Albini	25	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 15:10:05	A97507	2024-10-31 15:06:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 15:10:08	A156526	2024-10-31 15:05:07	Lambrate	45.478	9.224	Lambrate	17	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 15:10:09	A74863	2024-10-31 15:06:16	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 15:10:10	A246697	2024-10-31 15:06:40	Via Franco Albini	45.442	9.212	Via Franco Albini	21	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 16:10:05	A97507	2024-10-31 16:06:35	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 16:10:07	A156526	2024-10-31 16:07:20	Lambrate	45.478	9.224	Lambrate	23	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 16:10:09	A74863	2024-10-31 16:06:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	64	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 16:10:10	A246697	2024-10-31 16:05:49	Via Franco Albini	45.442	9.212	Via Franco Albini	19	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 17:10:05	A97507	2024-10-31 17:07:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 17:10:08	A156526	2024-10-31 17:05:41	Lambrate	45.478	9.224	Lambrate	17	46	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 17:10:09	A74863	2024-10-31 17:07:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 17:10:10	A246697	2024-10-31 17:07:15	Via Franco Albini	45.442	9.212	Via Franco Albini	27	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 18:10:04	A97507	2024-10-31 18:06:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 18:10:07	A156526	2024-10-31 18:07:15	Lambrate	45.478	9.224	Lambrate	27	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 18:10:08	A74863	2024-10-31 18:06:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 18:10:09	A246697	2024-10-31 18:05:37	Via Franco Albini	45.442	9.212	Via Franco Albini	28	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 19:10:05	A97507	2024-10-31 19:07:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 19:10:07	A156526	2024-10-31 19:05:39	Lambrate	45.478	9.224	Lambrate	32	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 19:10:09	A74863	2024-10-31 19:07:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	82	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 19:10:10	A246697	2024-10-31 19:07:05	Via Franco Albini	45.442	9.212	Via Franco Albini	29	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 20:10:06	A97507	2024-10-31 20:05:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 20:10:08	A156526	2024-10-31 20:07:13	Lambrate	45.478	9.224	Lambrate	30	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 20:10:09	A74863	2024-10-31 20:05:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	81	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 20:10:10	A246697	2024-10-31 20:05:35	Via Franco Albini	45.442	9.212	Via Franco Albini	27	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 21:10:05	A97507	2024-10-31 21:04:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 21:10:07	A156526	2024-10-31 21:06:41	Lambrate	45.478	9.224	Lambrate	27	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 21:10:08	A74863	2024-10-31 21:06:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	45	81	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 21:10:09	A246697	2024-10-31 21:06:53	Via Franco Albini	45.442	9.212	Via Franco Albini	31	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 22:10:05	A97507	2024-10-31 22:05:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	33	63	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 22:10:08	A156526	2024-10-31 22:05:05	Lambrate	45.478	9.224	Lambrate	39	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 22:10:09	A74863	2024-10-31 22:07:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	98	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 22:10:10	A246697	2024-10-31 22:05:32	Via Franco Albini	45.442	9.212	Via Franco Albini	31	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 23:10:06	A97507	2024-10-31 23:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	67	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 23:10:08	A156526	2024-10-31 23:06:35	Lambrate	45.478	9.224	Lambrate	38	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 23:10:09	A74863	2024-10-31 23:06:12	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	88	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-10-31 23:10:10	A246697	2024-10-31 23:06:54	Via Franco Albini	45.442	9.212	Via Franco Albini	30	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 00:10:06	A97507	2024-11-01 00:07:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	38	69	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 00:10:08	A156526	2024-11-01 00:08:00	Lambrate	45.478	9.224	Lambrate	37	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 00:10:09	A74863	2024-11-01 00:07:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	82	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 00:10:10	A246697	2024-11-01 00:05:09	Via Franco Albini	45.442	9.212	Via Franco Albini	36	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 01:10:05	A97507	2024-11-01 01:06:21	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	42	67	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 01:10:07	A156526	2024-11-01 01:06:28	Lambrate	45.478	9.224	Lambrate	39	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 01:10:09	A74863	2024-11-01 01:05:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	95	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 01:10:10	A246697	2024-11-01 01:06:41	Via Franco Albini	45.442	9.212	Via Franco Albini	35	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 02:10:05	A97507	2024-11-01 02:05:08	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	38	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 02:10:08	A156526	2024-11-01 02:04:55	Lambrate	45.478	9.224	Lambrate	37	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 02:10:09	A74863	2024-11-01 02:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	79	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 02:10:10	A246697	2024-11-01 02:04:56	Via Franco Albini	45.442	9.212	Via Franco Albini	35	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 03:10:06	A97507	2024-11-01 03:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 03:10:08	A156526	2024-11-01 03:06:35	Lambrate	45.478	9.224	Lambrate	35	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 03:10:09	A74863	2024-11-01 03:06:09	Via Federico Chopin	45.426	9.206	Via Federico Chopin	21	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 03:10:10	A246697	2024-11-01 03:06:39	Via Franco Albini	45.442	9.212	Via Franco Albini	33	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 04:10:05	A97507	2024-11-01 04:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	33	70	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 04:10:07	A156526	2024-11-01 04:05:18	Lambrate	45.478	9.224	Lambrate	36	72	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 04:10:09	A74863	2024-11-01 04:08:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 04:10:10	A246697	2024-11-01 04:06:29	Via Franco Albini	45.442	9.212	Via Franco Albini	23	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 05:10:05	A97507	2024-11-01 05:03:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 05:10:08	A156526	2024-11-01 05:06:47	Lambrate	45.478	9.224	Lambrate	34	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 05:10:09	A74863	2024-11-01 05:07:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 05:10:10	A246697	2024-11-01 05:07:56	Via Franco Albini	45.442	9.212	Via Franco Albini	13	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 06:10:05	A97507	2024-11-01 06:05:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 06:10:08	A156526	2024-11-01 06:05:19	Lambrate	45.478	9.224	Lambrate	30	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 06:10:09	A74863	2024-11-01 06:06:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	49	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 06:10:10	A246697	2024-11-01 06:04:08	Via Franco Albini	45.442	9.212	Via Franco Albini	15	46	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 07:10:05	A97507	2024-11-01 07:06:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	44	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 07:10:08	A156526	2024-11-01 07:06:57	Lambrate	45.478	9.224	Lambrate	28	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 07:10:09	A74863	2024-11-01 07:05:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	41	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 07:10:10	A246697	2024-11-01 07:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	12	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 08:10:05	A97507	2024-11-01 08:05:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 08:10:08	A156526	2024-11-01 08:05:22	Lambrate	45.478	9.224	Lambrate	26	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 08:10:09	A74863	2024-11-01 08:06:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	44	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 08:10:10	A246697	2024-11-01 08:07:20	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 09:10:05	A97507	2024-11-01 09:05:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	27	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 09:10:07	A156526	2024-11-01 09:06:54	Lambrate	45.478	9.224	Lambrate	16	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 09:10:08	A74863	2024-11-01 09:05:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 09:10:09	A246697	2024-11-01 09:05:53	Via Franco Albini	45.442	9.212	Via Franco Albini	11	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 10:10:06	A97507	2024-11-01 10:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 10:10:08	A156526	2024-11-01 10:05:20	Lambrate	45.478	9.224	Lambrate	26	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 10:10:09	A74863	2024-11-01 10:06:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 10:10:10	A246697	2024-11-01 10:07:18	Via Franco Albini	45.442	9.212	Via Franco Albini	14	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 11:10:05	A97507	2024-11-01 11:06:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 11:10:08	A156526	2024-11-01 11:07:12	Lambrate	45.478	9.224	Lambrate	29	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 11:10:09	A74863	2024-11-01 11:01:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	60	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 11:10:10	A246697	2024-11-01 11:03:30	Via Franco Albini	45.442	9.212	Via Franco Albini	15	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 12:10:05	A97507	2024-11-01 12:07:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 12:10:08	A156526	2024-11-01 12:06:42	Lambrate	45.478	9.224	Lambrate	18	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 12:10:09	A74863	2024-11-01 12:06:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 12:10:10	A246697	2024-11-01 12:07:29	Via Franco Albini	45.442	9.212	Via Franco Albini	14	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 13:10:05	A97507	2024-11-01 13:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 13:10:08	A156526	2024-11-01 13:04:24	Lambrate	45.478	9.224	Lambrate	10	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 13:10:09	A74863	2024-11-01 13:06:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	44	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 13:10:10	A246697	2024-11-01 13:05:38	Via Franco Albini	45.442	9.212	Via Franco Albini	14	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 14:10:05	A97507	2024-11-01 14:06:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 14:10:07	A156526	2024-11-01 14:06:54	Lambrate	45.478	9.224	Lambrate	9	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 14:10:09	A74863	2024-11-01 14:06:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	38	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 14:10:10	A246697	2024-11-01 14:07:53	Via Franco Albini	45.442	9.212	Via Franco Albini	13	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 15:10:06	A97507	2024-11-01 15:06:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 15:10:08	A156526	2024-11-01 15:05:35	Lambrate	45.478	9.224	Lambrate	13	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 15:10:09	A74863	2024-11-01 15:06:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	39	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 15:10:10	A246697	2024-11-01 15:06:44	Via Franco Albini	45.442	9.212	Via Franco Albini	13	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 16:10:05	A97507	2024-11-01 16:05:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 16:10:08	A156526	2024-11-01 16:04:17	Lambrate	45.478	9.224	Lambrate	11	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 16:10:09	A74863	2024-11-01 16:05:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	35	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 16:10:10	A246697	2024-11-01 16:05:39	Via Franco Albini	45.442	9.212	Via Franco Albini	11	21	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 17:10:06	A97507	2024-11-01 17:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 17:10:08	A156526	2024-11-01 17:06:41	Lambrate	45.478	9.224	Lambrate	13	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 17:10:09	A74863	2024-11-01 17:07:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	32	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 17:10:10	A246697	2024-11-01 17:05:46	Via Franco Albini	45.442	9.212	Via Franco Albini	12	24	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 18:10:05	A97507	2024-11-01 18:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	24	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 18:10:08	A156526	2024-11-01 18:06:28	Lambrate	45.478	9.224	Lambrate	12	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 18:10:09	A74863	2024-11-01 17:56:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	39	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 18:10:11	A246697	2024-11-01 18:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	11	24	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 19:10:05	A97507	2024-11-01 19:06:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	35	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 19:10:08	A156526	2024-11-01 19:05:38	Lambrate	45.478	9.224	Lambrate	18	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 19:10:09	A74863	2024-11-01 19:07:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 19:10:10	A246697	2024-11-01 19:05:32	Via Franco Albini	45.442	9.212	Via Franco Albini	13	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 20:10:06	A97507	2024-11-01 20:06:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 20:10:08	A156526	2024-11-01 20:04:57	Lambrate	45.478	9.224	Lambrate	19	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 20:10:10	A74863	2024-11-01 20:05:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 20:10:11	A246697	2024-11-01 20:05:03	Via Franco Albini	45.442	9.212	Via Franco Albini	17	39	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 21:10:05	A97507	2024-11-01 21:05:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 21:10:08	A156526	2024-11-01 21:06:37	Lambrate	45.478	9.224	Lambrate	20	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 21:10:09	A74863	2024-11-01 21:05:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	60	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 21:10:10	A246697	2024-11-01 21:06:43	Via Franco Albini	45.442	9.212	Via Franco Albini	20	43	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 22:10:05	A97507	2024-11-01 22:04:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 22:10:08	A156526	2024-11-01 22:05:16	Lambrate	45.478	9.224	Lambrate	24	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 22:10:09	A74863	2024-11-01 22:06:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	64	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 22:10:10	A246697	2024-11-01 22:05:23	Via Franco Albini	45.442	9.212	Via Franco Albini	28	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 23:10:05	A97507	2024-11-01 23:08:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 23:10:08	A156526	2024-11-01 23:06:44	Lambrate	45.478	9.224	Lambrate	23	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 23:10:09	A74863	2024-11-01 23:07:26	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-01 23:10:10	A246697	2024-11-01 23:06:46	Via Franco Albini	45.442	9.212	Via Franco Albini	22	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 00:10:06	A97507	2024-11-02 00:05:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 00:10:08	A156526	2024-11-02 00:05:51	Lambrate	45.478	9.224	Lambrate	23	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 00:10:09	A74863	2024-11-02 00:05:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 00:10:10	A246697	2024-11-02 00:06:45	Via Franco Albini	45.442	9.212	Via Franco Albini	22	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 01:10:05	A97507	2024-11-02 00:59:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 01:10:08	A156526	2024-11-02 01:08:48	Lambrate	45.478	9.224	Lambrate	17	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 01:10:09	A74863	2024-11-02 01:05:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 01:10:10	A246697	2024-11-02 01:08:58	Via Franco Albini	45.442	9.212	Via Franco Albini	22	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 02:10:05	A97507	2024-11-02 02:06:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 02:10:07	A156526	2024-11-02 02:07:18	Lambrate	45.478	9.224	Lambrate	17	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 02:10:08	A74863	2024-11-02 02:07:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 02:10:10	A246697	2024-11-02 02:07:24	Via Franco Albini	45.442	9.212	Via Franco Albini	23	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 03:10:05	A97507	2024-11-02 03:07:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 03:10:08	A156526	2024-11-02 03:06:23	Lambrate	45.478	9.224	Lambrate	13	39	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 03:10:09	A74863	2024-11-02 03:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	43	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 03:10:10	A246697	2024-11-02 03:06:18	Via Franco Albini	45.442	9.212	Via Franco Albini	18	44	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 04:10:06	A97507	2024-11-02 04:05:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 04:10:08	A156526	2024-11-02 04:05:07	Lambrate	45.478	9.224	Lambrate	14	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 04:10:09	A74863	2024-11-02 04:05:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	36	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 04:10:10	A246697	2024-11-02 04:06:45	Via Franco Albini	45.442	9.212	Via Franco Albini	17	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 05:10:05	A97507	2024-11-02 05:07:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	45	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 05:10:07	A156526	2024-11-02 05:06:54	Lambrate	45.478	9.224	Lambrate	15	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 05:10:08	A74863	2024-11-02 05:07:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 05:10:10	A246697	2024-11-02 05:05:15	Via Franco Albini	45.442	9.212	Via Franco Albini	11	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 06:10:06	A97507	2024-11-02 06:07:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 06:10:08	A156526	2024-11-02 06:05:43	Lambrate	45.478	9.224	Lambrate	17	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 06:10:09	A74863	2024-11-02 06:04:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	8	26	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 06:10:10	A246697	2024-11-02 06:04:02	Via Franco Albini	45.442	9.212	Via Franco Albini	13	36	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 07:10:05	A97507	2024-11-02 07:06:21	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 07:10:08	A156526	2024-11-02 07:07:18	Lambrate	45.478	9.224	Lambrate	22	46	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 07:10:09	A74863	2024-11-02 07:05:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	10	33	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 07:10:10	A246697	2024-11-02 07:05:28	Via Franco Albini	45.442	9.212	Via Franco Albini	11	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 08:10:05	A97507	2024-11-02 08:07:26	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 08:10:08	A156526	2024-11-02 08:05:46	Lambrate	45.478	9.224	Lambrate	15	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 08:10:09	A74863	2024-11-02 08:07:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	9	24	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 08:10:10	A246697	2024-11-02 08:06:59	Via Franco Albini	45.442	9.212	Via Franco Albini	13	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 09:10:05	A97507	2024-11-02 09:06:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 09:10:08	A156526	2024-11-02 09:07:29	Lambrate	45.478	9.224	Lambrate	19	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 09:10:09	A74863	2024-11-02 09:06:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	14	40	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 09:10:10	A246697	2024-11-02 09:05:31	Via Franco Albini	45.442	9.212	Via Franco Albini	10	32	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 10:10:06	A97507	2024-11-02 10:07:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	34	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 10:10:08	A156526	2024-11-02 10:05:47	Lambrate	45.478	9.224	Lambrate	16	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 10:10:09	A74863	2024-11-02 10:05:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 10:10:11	A246697	2024-11-02 10:06:58	Via Franco Albini	45.442	9.212	Via Franco Albini	16	47	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 11:10:05	A97507	2024-11-02 11:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 11:10:08	A156526	2024-11-02 11:07:39	Lambrate	45.478	9.224	Lambrate	17	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 11:10:09	A74863	2024-11-02 11:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	62	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 11:10:10	A246697	2024-11-02 11:06:14	Via Franco Albini	45.442	9.212	Via Franco Albini	17	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 12:10:05	A97507	2024-11-02 12:05:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 12:10:08	A156526	2024-11-02 12:04:21	Lambrate	45.478	9.224	Lambrate	18	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 12:10:09	A74863	2024-11-02 12:06:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	23	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 12:10:10	A246697	2024-11-02 12:06:52	Via Franco Albini	45.442	9.212	Via Franco Albini	15	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 13:10:05	A97507	2024-11-02 13:06:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 13:10:08	A156526	2024-11-02 13:05:14	Lambrate	45.478	9.224	Lambrate	17	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 13:10:09	A74863	2024-11-02 13:07:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 13:10:10	A246697	2024-11-02 13:05:15	Via Franco Albini	45.442	9.212	Via Franco Albini	17	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 14:10:06	A97507	2024-11-02 14:04:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	25	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 14:10:08	A156526	2024-11-02 14:05:43	Lambrate	45.478	9.224	Lambrate	9	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 14:10:09	A74863	2024-11-02 14:05:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	48	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 14:10:10	A246697	2024-11-02 14:05:49	Via Franco Albini	45.442	9.212	Via Franco Albini	10	25	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 15:10:05	A97507	2024-11-02 15:05:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	23	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 15:10:08	A156526	2024-11-02 15:05:14	Lambrate	45.478	9.224	Lambrate	9	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 15:10:09	A74863	2024-11-02 15:07:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	70	162	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 15:10:11	A246697	2024-11-02 15:05:09	Via Franco Albini	45.442	9.212	Via Franco Albini	10	23	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 16:10:06	A97507	2024-11-02 16:07:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	21	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 16:10:08	A156526	2024-11-02 16:06:46	Lambrate	45.478	9.224	Lambrate	10	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 16:10:10	A74863	2024-11-02 16:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	8	23	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 16:10:11	A246697	2024-11-02 16:06:40	Via Franco Albini	45.442	9.212	Via Franco Albini	10	22	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 17:10:05	A97507	2024-11-02 17:06:28	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	4	17	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 17:10:08	A156526	2024-11-02 17:05:42	Lambrate	45.478	9.224	Lambrate	11	21	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 17:10:10	A74863	2024-11-02 17:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	32	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 17:10:11	A246697	2024-11-02 17:05:50	Via Franco Albini	45.442	9.212	Via Franco Albini	13	33	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 18:10:05	A97507	2024-11-02 18:05:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 18:10:08	A156526	2024-11-02 18:04:16	Lambrate	45.478	9.224	Lambrate	14	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 18:10:09	A74863	2024-11-02 18:05:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 18:10:10	A246697	2024-11-02 18:04:35	Via Franco Albini	45.442	9.212	Via Franco Albini	13	34	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 19:10:06	A97507	2024-11-02 19:06:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	44	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 19:10:08	A156526	2024-11-02 19:05:47	Lambrate	45.478	9.224	Lambrate	16	37	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 19:10:09	A74863	2024-11-02 19:06:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	66	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 19:10:10	A246697	2024-11-02 19:05:59	Via Franco Albini	45.442	9.212	Via Franco Albini	19	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 20:10:06	A97507	2024-11-02 20:07:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 20:10:08	A156526	2024-11-02 20:07:26	Lambrate	45.478	9.224	Lambrate	29	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 20:10:10	A74863	2024-11-02 20:07:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 20:10:11	A246697	2024-11-02 20:07:34	Via Franco Albini	45.442	9.212	Via Franco Albini	22	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 21:10:06	A97507	2024-11-02 21:04:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 21:10:08	A156526	2024-11-02 21:06:38	Lambrate	45.478	9.224	Lambrate	32	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 21:10:09	A74863	2024-11-02 21:04:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 21:10:10	A246697	2024-11-02 21:06:55	Via Franco Albini	45.442	9.212	Via Franco Albini	24	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 22:10:05	A97507	2024-11-02 22:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 22:10:08	A156526	2024-11-02 22:05:16	Lambrate	45.478	9.224	Lambrate	29	62	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 22:10:09	A74863	2024-11-02 22:06:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 22:10:10	A246697	2024-11-02 22:06:08	Via Franco Albini	45.442	9.212	Via Franco Albini	26	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 23:10:05	A97507	2024-11-02 23:05:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 23:10:08	A156526	2024-11-02 23:06:55	Lambrate	45.478	9.224	Lambrate	30	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 23:10:09	A74863	2024-11-02 23:05:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-02 23:10:10	A246697	2024-11-02 23:07:44	Via Franco Albini	45.442	9.212	Via Franco Albini	33	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 00:10:06	A97507	2024-11-03 00:05:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 00:10:08	A156526	2024-11-03 00:05:56	Lambrate	45.478	9.224	Lambrate	27	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 00:10:09	A74863	2024-11-03 00:06:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 00:10:11	A246697	2024-11-03 00:06:46	Via Franco Albini	45.442	9.212	Via Franco Albini	33	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 01:10:06	A97507	2024-11-03 01:06:21	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 01:10:08	A156526	2024-11-03 01:05:28	Lambrate	45.478	9.224	Lambrate	31	66	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 01:10:09	A74863	2024-11-03 01:07:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 01:10:10	A246697	2024-11-03 01:06:13	Via Franco Albini	45.442	9.212	Via Franco Albini	31	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 02:10:05	A97507	2024-11-03 02:06:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 02:10:07	A156526	2024-11-03 02:07:19	Lambrate	45.478	9.224	Lambrate	30	65	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 02:10:09	A74863	2024-11-03 02:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 02:10:10	A246697	2024-11-03 02:05:20	Via Franco Albini	45.442	9.212	Via Franco Albini	31	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 03:10:06	A97507	2024-11-03 03:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	49	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 03:10:08	A156526	2024-11-03 03:06:36	Lambrate	45.478	9.224	Lambrate	27	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 03:10:09	A74863	2024-11-03 03:07:16	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 03:10:10	A246697	2024-11-03 03:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	28	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 04:10:05	A97507	2024-11-03 04:04:27	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 04:10:08	A156526	2024-11-03 04:06:24	Lambrate	45.478	9.224	Lambrate	17	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 04:10:09	A74863	2024-11-03 04:04:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 04:10:10	A246697	2024-11-03 04:05:39	Via Franco Albini	45.442	9.212	Via Franco Albini	22	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 05:10:05	A97507	2024-11-03 05:07:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 05:10:08	A156526	2024-11-03 05:06:05	Lambrate	45.478	9.224	Lambrate	18	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 05:10:09	A74863	2024-11-03 05:07:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 05:10:10	A246697	2024-11-03 05:03:19	Via Franco Albini	45.442	9.212	Via Franco Albini	21	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 06:10:06	A97507	2024-11-03 06:06:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 06:10:08	A156526	2024-11-03 06:05:52	Lambrate	45.478	9.224	Lambrate	18	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 06:10:09	A74863	2024-11-03 06:06:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	63	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 06:10:10	A246697	2024-11-03 06:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	18	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 07:10:06	A97507	2024-11-03 07:06:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 07:10:08	A156526	2024-11-03 07:05:20	Lambrate	45.478	9.224	Lambrate	20	49	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 07:10:09	A74863	2024-11-03 07:06:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	72	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 07:10:10	A246697	2024-11-03 07:04:20	Via Franco Albini	45.442	9.212	Via Franco Albini	23	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 08:10:05	A97507	2024-11-03 08:05:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 08:10:08	A156526	2024-11-03 08:07:58	Lambrate	45.478	9.224	Lambrate	19	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 08:10:09	A74863	2024-11-03 08:05:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 08:10:10	A246697	2024-11-03 08:05:32	Via Franco Albini	45.442	9.212	Via Franco Albini	23	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 09:10:05	A97507	2024-11-03 09:07:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 09:10:08	A156526	2024-11-03 09:06:28	Lambrate	45.478	9.224	Lambrate	20	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 09:10:09	A74863	2024-11-03 09:07:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 09:10:10	A246697	2024-11-03 09:07:45	Via Franco Albini	45.442	9.212	Via Franco Albini	15	41	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 10:10:05	A97507	2024-11-03 10:05:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 10:10:07	A156526	2024-11-03 10:04:56	Lambrate	45.478	9.224	Lambrate	13	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 10:10:08	A74863	2024-11-03 10:06:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 10:10:10	A246697	2024-11-03 10:06:37	Via Franco Albini	45.442	9.212	Via Franco Albini	15	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 11:10:05	A97507	2024-11-03 11:05:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	18	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 11:10:08	A156526	2024-11-03 11:06:56	Lambrate	45.478	9.224	Lambrate	11	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 11:10:09	A74863	2024-11-03 11:07:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 11:10:10	A246697	2024-11-03 11:07:19	Via Franco Albini	45.442	9.212	Via Franco Albini	13	27	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 12:10:05	A97507	2024-11-03 12:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 12:10:08	A156526	2024-11-03 12:05:57	Lambrate	45.478	9.224	Lambrate	11	27	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 12:10:09	A74863	2024-11-03 12:06:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	47	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 12:10:10	A246697	2024-11-03 12:07:43	Via Franco Albini	45.442	9.212	Via Franco Albini	12	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 13:10:06	A97507	2024-11-03 13:06:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	5	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 13:10:08	A156526	2024-11-03 13:05:39	Lambrate	45.478	9.224	Lambrate	30	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 13:10:09	A74863	2024-11-03 13:07:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	46	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 13:10:10	A246697	2024-11-03 13:06:25	Via Franco Albini	45.442	9.212	Via Franco Albini	12	26	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 14:10:05	A97507	2024-11-03 14:05:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 14:10:08	A156526	2024-11-03 14:01:51	Lambrate	45.478	9.224	Lambrate	8	23	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 14:10:09	A74863	2024-11-03 14:06:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	56	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 14:10:10	A246697	2024-11-03 14:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	13	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 15:10:06	A97507	2024-11-03 15:04:05	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	22	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 15:10:08	A156526	2024-11-03 15:07:43	Lambrate	45.478	9.224	Lambrate	9	25	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 15:10:09	A74863	2024-11-03 15:06:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	11	42	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 15:10:10	A246697	2024-11-03 15:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	14	29	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 16:10:06	A97507	2024-11-03 16:05:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	30	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 16:10:08	A156526	2024-11-03 16:06:05	Lambrate	45.478	9.224	Lambrate	7	26	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 16:10:09	A74863	2024-11-03 16:05:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	44	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 16:10:10	A246697	2024-11-03 16:07:43	Via Franco Albini	45.442	9.212	Via Franco Albini	11	30	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 17:10:06	A97507	2024-11-03 17:07:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	27	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 17:10:08	A156526	2024-11-03 17:07:39	Lambrate	45.478	9.224	Lambrate	11	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 17:10:09	A74863	2024-11-03 17:06:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	50	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 17:10:11	A246697	2024-11-03 17:06:26	Via Franco Albini	45.442	9.212	Via Franco Albini	13	31	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 18:10:05	A97507	2024-11-03 18:07:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 18:10:08	A156526	2024-11-03 18:06:38	Lambrate	45.478	9.224	Lambrate	13	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 18:10:09	A74863	2024-11-03 18:06:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 18:10:10	A246697	2024-11-03 18:07:53	Via Franco Albini	45.442	9.212	Via Franco Albini	16	35	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 19:10:05	A97507	2024-11-03 19:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 19:10:08	A156526	2024-11-03 19:05:20	Lambrate	45.478	9.224	Lambrate	13	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 19:10:10	A74863	2024-11-03 19:05:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	56	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 19:10:11	A246697	2024-11-03 19:06:40	Via Franco Albini	45.442	9.212	Via Franco Albini	16	38	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 20:10:05	A97507	2024-11-03 20:05:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 20:10:08	A156526	2024-11-03 20:06:58	Lambrate	45.478	9.224	Lambrate	13	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 20:10:09	A74863	2024-11-03 20:06:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	58	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 20:10:10	A246697	2024-11-03 20:06:14	Via Franco Albini	45.442	9.212	Via Franco Albini	14	40	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 21:10:06	A97507	2024-11-03 21:04:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 21:10:08	A156526	2024-11-03 21:05:29	Lambrate	45.478	9.224	Lambrate	15	44	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 21:10:09	A74863	2024-11-03 21:05:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	21	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 21:10:10	A246697	2024-11-03 21:04:40	Via Franco Albini	45.442	9.212	Via Franco Albini	17	46	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 22:10:05	A97507	2024-11-03 22:06:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 22:10:07	A156526	2024-11-03 22:07:18	Lambrate	45.478	9.224	Lambrate	17	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 22:10:08	A74863	2024-11-03 22:08:02	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 22:10:10	A246697	2024-11-03 22:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	19	50	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 23:10:05	A97507	2024-11-03 23:06:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 23:10:08	A156526	2024-11-03 23:05:59	Lambrate	45.478	9.224	Lambrate	22	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 23:10:09	A74863	2024-11-03 23:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-03 23:10:10	A246697	2024-11-03 23:05:25	Via Franco Albini	45.442	9.212	Via Franco Albini	23	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 00:10:05	A97507	2024-11-04 00:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 00:10:07	A156526	2024-11-04 00:07:54	Lambrate	45.478	9.224	Lambrate	21	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 00:10:09	A74863	2024-11-04 00:07:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 00:10:10	A246697	2024-11-04 00:07:49	Via Franco Albini	45.442	9.212	Via Franco Albini	21	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 01:10:06	A97507	2024-11-04 01:06:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 01:10:08	A156526	2024-11-04 01:06:45	Lambrate	45.478	9.224	Lambrate	22	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 01:10:09	A74863	2024-11-04 01:05:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 01:10:10	A246697	2024-11-04 01:07:19	Via Franco Albini	45.442	9.212	Via Franco Albini	23	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 02:10:06	A97507	2024-11-04 02:05:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 02:10:08	A156526	2024-11-04 02:05:36	Lambrate	45.478	9.224	Lambrate	22	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 02:10:09	A74863	2024-11-04 02:07:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	17	55	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 02:10:10	A246697	2024-11-04 02:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	22	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 03:10:05	A97507	2024-11-04 03:05:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	39	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 03:10:08	A156526	2024-11-04 03:07:24	Lambrate	45.478	9.224	Lambrate	25	58	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 03:10:09	A74863	2024-11-04 03:06:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	19	56	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 03:10:10	A246697	2024-11-04 03:07:42	Via Franco Albini	45.442	9.212	Via Franco Albini	15	45	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 04:10:06	A97507	2024-11-04 04:07:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	6	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 04:10:08	A156526	2024-11-04 04:06:44	Lambrate	45.478	9.224	Lambrate	21	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 04:10:09	A74863	2024-11-04 04:00:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	13	53	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 04:10:10	A246697	2024-11-04 04:05:54	Via Franco Albini	45.442	9.212	Via Franco Albini	11	37	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 05:10:05	A97507	2024-11-04 05:07:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	7	26	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 05:10:07	A156526	2024-11-04 05:06:23	Lambrate	45.478	9.224	Lambrate	26	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 05:10:08	A74863	2024-11-04 05:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	15	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 05:10:09	A246697	2024-11-04 05:06:47	Via Franco Albini	45.442	9.212	Via Franco Albini	14	42	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 06:10:05	A97507	2024-11-04 06:06:34	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 06:10:08	A156526	2024-11-04 06:06:02	Lambrate	45.478	9.224	Lambrate	16	49	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 06:10:09	A74863	2024-11-04 06:06:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	57	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 06:10:10	A246697	2024-11-04 06:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	24	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 07:10:05	A97507	2024-11-04 07:07:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	45	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 07:10:08	A156526	2024-11-04 07:05:57	Lambrate	45.478	9.224	Lambrate	21	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 07:10:09	A74863	2024-11-04 07:06:07	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 07:10:10	A246697	2024-11-04 07:06:04	Via Franco Albini	45.442	9.212	Via Franco Albini	18	46	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 08:10:05	A97507	2024-11-04 08:03:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	49	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 08:10:08	A156526	2024-11-04 08:05:34	Lambrate	45.478	9.224	Lambrate	49	72	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 08:10:09	A74863	2024-11-04 08:07:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	53	65	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 08:10:10	A246697	2024-11-04 08:06:01	Via Franco Albini	45.442	9.212	Via Franco Albini	17	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 09:10:05	A97507	2024-11-04 09:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 09:10:07	A156526	2024-11-04 09:08:01	Lambrate	45.478	9.224	Lambrate	52	80	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 09:10:09	A74863	2024-11-04 09:06:14	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 09:10:10	A246697	2024-11-04 09:05:15	Via Franco Albini	45.442	9.212	Via Franco Albini	19	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 10:10:06	A97507	2024-11-04 10:05:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	45	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 10:10:08	A156526	2024-11-04 10:06:51	Lambrate	45.478	9.224	Lambrate	43	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 10:10:09	A74863	2024-11-04 10:06:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 10:10:10	A246697	2024-11-04 10:07:47	Via Franco Albini	45.442	9.212	Via Franco Albini	32	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 11:10:05	A97507	2024-11-04 11:07:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	44	75	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 11:10:08	A156526	2024-11-04 11:06:04	Lambrate	45.478	9.224	Lambrate	41	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 11:10:09	A74863	2024-11-04 11:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	56	125	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 11:10:10	A246697	2024-11-04 11:04:54	Via Franco Albini	45.442	9.212	Via Franco Albini	58	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 12:10:05	A97507	2024-11-04 12:03:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 12:10:08	A156526	2024-11-04 12:07:58	Lambrate	45.478	9.224	Lambrate	48	85	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 12:10:09	A74863	2024-11-04 12:07:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	109	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 12:10:10	A246697	2024-11-04 12:07:32	Via Franco Albini	45.442	9.212	Via Franco Albini	40	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 13:10:05	A97507	2024-11-04 13:06:30	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	35	72	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 13:10:07	A156526	2024-11-04 13:06:11	Lambrate	45.478	9.224	Lambrate	45	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 13:10:09	A74863	2024-11-04 12:57:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	122	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 13:10:10	A246697	2024-11-04 12:34:28	Via Franco Albini	45.442	9.212	Via Franco Albini	41	72	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 14:10:06	A97507	2024-11-04 14:04:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 14:10:08	A156526	2024-11-04 14:05:49	Lambrate	45.478	9.224	Lambrate	30	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 14:10:09	A74863	2024-11-04 14:05:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	124	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 14:10:11	A246697	2024-11-04 14:07:13	Via Franco Albini	45.442	9.212	Via Franco Albini	38	70	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 15:10:05	A97507	2024-11-04 15:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	44	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 15:10:08	A156526	2024-11-04 15:04:57	Lambrate	45.478	9.224	Lambrate	30	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 15:10:09	A74863	2024-11-04 15:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	136	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 15:10:10	A246697	2024-11-04 15:04:41	Via Franco Albini	45.442	9.212	Via Franco Albini	47	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 16:10:05	A97507	2024-11-04 16:07:09	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	75	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 16:10:08	A156526	2024-11-04 16:07:09	Lambrate	45.478	9.224	Lambrate	33	80	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 16:10:09	A74863	2024-11-04 16:06:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	139	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 16:10:10	A246697	2024-11-04 16:06:49	Via Franco Albini	45.442	9.212	Via Franco Albini	53	83	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 17:10:05	A97507	2024-11-04 17:05:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	72	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 17:10:07	A156526	2024-11-04 17:05:49	Lambrate	45.478	9.224	Lambrate	37	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 17:10:09	A74863	2024-11-04 17:05:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	64	149	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 17:10:10	A246697	2024-11-04 17:05:53	Via Franco Albini	45.442	9.212	Via Franco Albini	43	75	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 18:10:05	A97507	2024-11-04 18:05:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 18:10:08	A156526	2024-11-04 18:04:30	Lambrate	45.478	9.224	Lambrate	40	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 18:10:09	A74863	2024-11-04 18:03:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	63	146	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 18:10:10	A246697	2024-11-04 18:04:59	Via Franco Albini	45.442	9.212	Via Franco Albini	41	70	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 19:10:05	A97507	2024-11-04 19:03:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	46	80	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 19:10:07	A156526	2024-11-04 19:07:20	Lambrate	45.478	9.224	Lambrate	44	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 19:10:09	A74863	2024-11-04 19:03:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	66	141	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 19:10:10	A246697	2024-11-04 19:07:58	Via Franco Albini	45.442	9.212	Via Franco Albini	51	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 20:10:05	A97507	2024-11-04 20:04:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	51	84	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 20:10:08	A156526	2024-11-04 20:05:56	Lambrate	45.478	9.224	Lambrate	51	93	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 20:10:09	A74863	2024-11-04 20:06:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	65	147	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 20:10:10	A246697	2024-11-04 20:07:37	Via Franco Albini	45.442	9.212	Via Franco Albini	55	83	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 21:10:05	A97507	2024-11-04 21:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	53	84	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 21:10:08	A156526	2024-11-04 21:04:58	Lambrate	45.478	9.224	Lambrate	52	93	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 21:10:09	A74863	2024-11-04 21:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	76	135	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 21:10:10	A246697	2024-11-04 21:06:47	Via Franco Albini	45.442	9.212	Via Franco Albini	43	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 22:10:05	A97507	2024-11-04 22:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	52	89	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 22:10:07	A156526	2024-11-04 22:04:40	Lambrate	45.478	9.224	Lambrate	57	96	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 22:10:09	A74863	2024-11-04 22:05:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	142	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 22:10:10	A246697	2024-11-04 22:04:00	Via Franco Albini	45.442	9.212	Via Franco Albini	53	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 23:10:05	A97507	2024-11-04 23:05:16	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	46	82	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 23:10:08	A156526	2024-11-04 23:06:57	Lambrate	45.478	9.224	Lambrate	35	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 23:10:09	A74863	2024-11-04 23:06:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	120	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-04 23:10:10	A246697	2024-11-04 23:06:52	Via Franco Albini	45.442	9.212	Via Franco Albini	48	75	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 00:10:05	A97507	2024-11-05 00:06:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	44	79	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 00:10:07	A156526	2024-11-05 00:06:43	Lambrate	45.478	9.224	Lambrate	46	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 00:10:09	A74863	2024-11-05 00:04:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	87	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 00:10:10	A246697	2024-11-05 00:06:52	Via Franco Albini	45.442	9.212	Via Franco Albini	32	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 01:10:05	A97507	2024-11-05 01:07:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	40	76	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 01:10:08	A156526	2024-11-05 01:07:01	Lambrate	45.478	9.224	Lambrate	48	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 01:10:09	A74863	2024-11-05 01:07:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	88	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 01:10:10	A246697	2024-11-05 01:07:08	Via Franco Albini	45.442	9.212	Via Franco Albini	29	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 02:10:05	A97507	2024-11-05 02:06:27	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 02:10:07	A156526	2024-11-05 02:06:56	Lambrate	45.478	9.224	Lambrate	45	82	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 02:10:08	A74863	2024-11-05 02:01:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	90	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 02:10:10	A246697	2024-11-05 02:06:46	Via Franco Albini	45.442	9.212	Via Franco Albini	31	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 03:10:05	A97507	2024-11-05 03:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 03:10:07	A156526	2024-11-05 03:05:14	Lambrate	45.478	9.224	Lambrate	39	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 03:10:09	A74863	2024-11-05 03:00:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	82	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 03:10:10	A246697	2024-11-05 03:05:00	Via Franco Albini	45.442	9.212	Via Franco Albini	28	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 04:10:05	A97507	2024-11-05 04:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 04:10:08	A156526	2024-11-05 04:08:02	Lambrate	45.478	9.224	Lambrate	35	70	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 04:10:09	A74863	2024-11-05 04:03:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 04:10:10	A246697	2024-11-05 04:05:35	Via Franco Albini	45.442	9.212	Via Franco Albini	28	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 05:10:06	A97507	2024-11-05 05:04:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 05:10:08	A156526	2024-11-05 05:04:32	Lambrate	45.478	9.224	Lambrate	34	70	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 05:10:09	A74863	2024-11-05 05:05:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 05:10:10	A246697	2024-11-05 05:06:36	Via Franco Albini	45.442	9.212	Via Franco Albini	32	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 06:10:05	A97507	2024-11-05 06:05:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 06:10:08	A156526	2024-11-05 06:07:44	Lambrate	45.478	9.224	Lambrate	32	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 06:10:09	A74863	2024-11-05 06:07:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 06:10:10	A246697	2024-11-05 06:07:35	Via Franco Albini	45.442	9.212	Via Franco Albini	35	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 07:10:05	A97507	2024-11-05 07:05:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 07:10:08	A156526	2024-11-05 07:07:56	Lambrate	45.478	9.224	Lambrate	36	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 07:10:09	A74863	2024-11-05 07:03:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	50	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 07:10:10	A246697	2024-11-05 07:05:29	Via Franco Albini	45.442	9.212	Via Franco Albini	26	54	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 08:10:05	A97507	2024-11-05 08:05:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	49	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 08:10:08	A156526	2024-11-05 08:06:52	Lambrate	45.478	9.224	Lambrate	43	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 08:10:09	A74863	2024-11-05 08:06:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 08:10:10	A246697	2024-11-05 08:04:10	Via Franco Albini	45.442	9.212	Via Franco Albini	18	45	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 09:10:06	A97507	2024-11-05 09:06:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 09:10:08	A156526	2024-11-05 09:06:22	Lambrate	45.478	9.224	Lambrate	53	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 09:10:09	A74863	2024-11-05 09:05:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	44	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 09:10:10	A246697	2024-11-05 09:04:52	Via Franco Albini	45.442	9.212	Via Franco Albini	29	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 10:10:06	A97507	2024-11-05 10:07:28	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 10:10:08	A156526	2024-11-05 10:07:45	Lambrate	45.478	9.224	Lambrate	48	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 10:10:09	A74863	2024-11-05 10:06:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	103	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 10:10:10	A246697	2024-11-05 10:06:47	Via Franco Albini	45.442	9.212	Via Franco Albini	49	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 11:10:05	A97507	2024-11-05 11:02:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 11:10:08	A156526	2024-11-05 11:05:42	Lambrate	45.478	9.224	Lambrate	33	66	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 11:10:09	A74863	2024-11-05 10:48:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	101	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 11:10:10	A246697	2024-11-05 11:04:45	Via Franco Albini	45.442	9.212	Via Franco Albini	48	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 12:10:05	A97507	2024-11-05 12:05:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	33	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 12:10:07	A156526	2024-11-05 12:05:56	Lambrate	45.478	9.224	Lambrate	43	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 12:10:09	A74863	2024-11-05 12:04:31	Via Federico Chopin	45.426	9.206	Via Federico Chopin	53	106	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 12:10:10	A246697	2024-11-05 11:53:50	Via Franco Albini	45.442	9.212	Via Franco Albini	39	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 13:10:05	A97507	2024-11-05 12:59:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 13:10:07	A156526	2024-11-05 13:02:22	Lambrate	45.478	9.224	Lambrate	35	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 13:10:08	A74863	2024-11-05 13:03:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	118	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 13:10:10	A246697	2024-11-05 13:02:50	Via Franco Albini	45.442	9.212	Via Franco Albini	42	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 14:10:06	A97507	2024-11-05 14:03:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	60	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 14:10:08	A156526	2024-11-05 14:00:58	Lambrate	45.478	9.224	Lambrate	29	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 14:10:09	A74863	2024-11-05 14:01:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	122	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 14:10:11	A246697	2024-11-05 14:05:55	Via Franco Albini	45.442	9.212	Via Franco Albini	42	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 15:10:06	A97507	2024-11-05 15:04:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	66	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 15:10:08	A156526	2024-11-05 15:05:50	Lambrate	45.478	9.224	Lambrate	29	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 15:10:09	A74863	2024-11-05 15:04:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	56	117	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 15:10:10	A246697	2024-11-05 15:05:54	Via Franco Albini	45.442	9.212	Via Franco Albini	40	70	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 16:10:06	A97507	2024-11-05 16:01:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	67	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 16:10:08	A156526	2024-11-05 16:05:40	Lambrate	45.478	9.224	Lambrate	33	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 16:10:09	A74863	2024-11-05 16:04:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	126	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 16:10:11	A246697	2024-11-05 16:04:35	Via Franco Albini	45.442	9.212	Via Franco Albini	42	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 17:10:06	A97507	2024-11-05 17:03:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 17:10:08	A156526	2024-11-05 17:06:57	Lambrate	45.478	9.224	Lambrate	39	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 17:10:09	A74863	2024-11-05 17:07:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	124	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 17:10:10	A246697	2024-11-05 17:05:46	Via Franco Albini	45.442	9.212	Via Franco Albini	44	72	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 18:10:05	A97507	2024-11-05 18:06:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 18:10:08	A156526	2024-11-05 18:07:47	Lambrate	45.478	9.224	Lambrate	47	79	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 18:10:09	A74863	2024-11-05 18:06:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	126	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 18:10:10	A246697	2024-11-05 18:06:47	Via Franco Albini	45.442	9.212	Via Franco Albini	49	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 19:10:05	A97507	2024-11-05 19:06:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	45	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 19:10:08	A156526	2024-11-05 19:06:31	Lambrate	45.478	9.224	Lambrate	46	82	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 19:10:09	A74863	2024-11-05 19:07:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	66	140	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 19:10:10	A246697	2024-11-05 19:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	51	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 20:10:05	A97507	2024-11-05 20:04:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	45	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 20:10:08	A156526	2024-11-05 20:02:09	Lambrate	45.478	9.224	Lambrate	42	79	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 20:10:09	A74863	2024-11-05 20:06:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	61	128	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 20:10:10	A246697	2024-11-05 20:04:17	Via Franco Albini	45.442	9.212	Via Franco Albini	50	77	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 21:10:05	A97507	2024-11-05 21:07:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	45	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 21:10:07	A156526	2024-11-05 21:03:59	Lambrate	45.478	9.224	Lambrate	48	81	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 21:10:08	A74863	2024-11-05 21:03:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	135	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 21:10:10	A246697	2024-11-05 21:05:46	Via Franco Albini	45.442	9.212	Via Franco Albini	50	75	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 22:10:05	A97507	2024-11-05 22:05:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 22:10:08	A156526	2024-11-05 22:06:05	Lambrate	45.478	9.224	Lambrate	51	85	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 22:10:09	A74863	2024-11-05 22:05:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	119	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 22:10:10	A246697	2024-11-05 22:07:41	Via Franco Albini	45.442	9.212	Via Franco Albini	43	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 23:10:05	A97507	2024-11-05 23:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 23:10:07	A156526	2024-11-05 23:07:47	Lambrate	45.478	9.224	Lambrate	46	80	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 23:10:08	A74863	2024-11-05 23:05:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	124	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-05 23:10:10	A246697	2024-11-05 23:06:59	Via Franco Albini	45.442	9.212	Via Franco Albini	37	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 00:10:06	A97507	2024-11-06 00:03:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 00:10:08	A156526	2024-11-06 00:04:04	Lambrate	45.478	9.224	Lambrate	35	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 00:10:09	A74863	2024-11-06 00:06:22	Via Federico Chopin	45.426	9.206	Via Federico Chopin	72	112	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 00:10:10	A246697	2024-11-06 00:06:33	Via Franco Albini	45.442	9.212	Via Franco Albini	32	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 01:10:05	A97507	2024-11-06 01:05:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 01:10:08	A156526	2024-11-06 01:07:37	Lambrate	45.478	9.224	Lambrate	34	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 01:10:09	A74863	2024-11-06 00:54:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	115	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 01:10:10	A246697	2024-11-06 00:57:38	Via Franco Albini	45.442	9.212	Via Franco Albini	35	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 02:10:06	A97507	2024-11-06 02:01:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 02:10:08	A156526	2024-11-06 02:08:00	Lambrate	45.478	9.224	Lambrate	30	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 02:10:09	A74863	2024-11-06 01:54:22	Via Federico Chopin	45.426	9.206	Via Federico Chopin	73	101	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 02:10:10	A246697	2024-11-06 02:07:37	Via Franco Albini	45.442	9.212	Via Franco Albini	30	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 03:10:06	A97507	2024-11-06 03:03:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 03:10:08	A156526	2024-11-06 03:06:52	Lambrate	45.478	9.224	Lambrate	31	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 03:10:09	A74863	2024-11-06 03:06:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	44	93	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 03:10:10	A246697	2024-11-06 03:06:38	Via Franco Albini	45.442	9.212	Via Franco Albini	27	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 04:10:05	A97507	2024-11-06 03:55:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 04:10:07	A156526	2024-11-06 04:06:43	Lambrate	45.478	9.224	Lambrate	24	58	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 04:10:09	A74863	2024-11-06 04:06:30	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	84	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 04:10:10	A246697	2024-11-06 04:07:30	Via Franco Albini	45.442	9.212	Via Franco Albini	33	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 05:10:05	A97507	2024-11-06 05:05:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 05:10:08	A156526	2024-11-06 05:05:33	Lambrate	45.478	9.224	Lambrate	24	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 05:10:09	A74863	2024-11-06 05:06:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	46	95	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 05:10:10	A246697	2024-11-06 05:05:33	Via Franco Albini	45.442	9.212	Via Franco Albini	31	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 06:10:05	A97507	2024-11-06 06:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 06:10:08	A156526	2024-11-06 06:06:08	Lambrate	45.478	9.224	Lambrate	25	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 06:10:09	A74863	2024-11-06 06:06:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	94	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 06:10:10	A246697	2024-11-06 06:06:21	Via Franco Albini	45.442	9.212	Via Franco Albini	26	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 07:10:06	A97507	2024-11-06 07:07:56	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 07:10:08	A156526	2024-11-06 07:02:23	Lambrate	45.478	9.224	Lambrate	18	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 07:10:09	A74863	2024-11-06 07:05:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	43	87	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 07:10:10	A246697	2024-11-06 07:07:50	Via Franco Albini	45.442	9.212	Via Franco Albini	24	53	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 08:10:06	A97507	2024-11-06 08:05:43	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	44	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 08:10:08	A156526	2024-11-06 08:05:25	Lambrate	45.478	9.224	Lambrate	20	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 08:10:09	A74863	2024-11-06 07:59:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	95	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 08:10:10	A246697	2024-11-06 08:07:46	Via Franco Albini	45.442	9.212	Via Franco Albini	35	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 09:10:06	A97507	2024-11-06 09:06:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 09:10:08	A156526	2024-11-06 09:07:25	Lambrate	45.478	9.224	Lambrate	25	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 09:10:09	A74863	2024-11-06 09:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	98	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 09:10:10	A246697	2024-11-06 09:07:23	Via Franco Albini	45.442	9.212	Via Franco Albini	33	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 10:10:05	A97507	2024-11-06 09:56:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 10:10:07	A156526	2024-11-06 09:58:58	Lambrate	45.478	9.224	Lambrate	31	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 10:10:08	A74863	2024-11-06 09:47:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	112	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 10:10:09	A246697	2024-11-06 09:55:47	Via Franco Albini	45.442	9.212	Via Franco Albini	42	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 11:10:05	A97507	2024-11-06 11:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 11:10:08	A156526	2024-11-06 11:02:55	Lambrate	45.478	9.224	Lambrate	28	63	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 11:10:09	A74863	2024-11-06 11:03:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	121	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 11:10:10	A246697	2024-11-06 10:57:29	Via Franco Albini	45.442	9.212	Via Franco Albini	53	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 12:10:05	A97507	2024-11-06 11:58:18	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	75	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 12:10:08	A156526	2024-11-06 12:01:21	Lambrate	45.478	9.224	Lambrate	36	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 12:10:09	A74863	2024-11-06 12:08:02	Via Federico Chopin	45.426	9.206	Via Federico Chopin	59	125	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 12:10:10	A246697	2024-11-06 12:07:59	Via Franco Albini	45.442	9.212	Via Franco Albini	46	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 13:10:06	A97507	2024-11-06 13:02:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	35	70	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 13:10:08	A156526	2024-11-06 12:59:50	Lambrate	45.478	9.224	Lambrate	33	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 13:10:09	A74863	2024-11-06 12:57:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	111	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 13:10:10	A246697	2024-11-06 13:01:55	Via Franco Albini	45.442	9.212	Via Franco Albini	40	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 14:10:06	A97507	2024-11-06 13:51:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	60	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 14:10:08	A156526	2024-11-06 14:04:21	Lambrate	45.478	9.224	Lambrate	30	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 14:10:09	A74863	2024-11-06 14:02:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	103	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 14:10:11	A246697	2024-11-06 13:48:50	Via Franco Albini	45.442	9.212	Via Franco Albini	35	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 15:10:06	A97507	2024-11-06 14:59:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 15:10:08	A156526	2024-11-06 14:41:19	Lambrate	45.478	9.224	Lambrate	27	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 15:10:09	A74863	2024-11-06 14:58:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	101	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 15:10:10	A246697	2024-11-06 15:01:37	Via Franco Albini	45.442	9.212	Via Franco Albini	37	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 16:10:06	A97507	2024-11-06 16:05:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	32	66	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 16:10:09	A156526	2024-11-06 16:06:47	Lambrate	45.478	9.224	Lambrate	33	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 16:10:10	A74863	2024-11-06 16:06:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	103	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 16:10:12	A246697	2024-11-06 16:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	38	67	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 17:10:06	A97507	2024-11-06 17:06:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	76	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 17:10:08	A156526	2024-11-06 17:03:20	Lambrate	45.478	9.224	Lambrate	38	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 17:10:10	A74863	2024-11-06 17:06:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	109	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 17:10:11	A246697	2024-11-06 17:06:53	Via Franco Albini	45.442	9.212	Via Franco Albini	45	74	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 18:10:06	A97507	2024-11-06 18:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 18:10:09	A156526	2024-11-06 18:05:51	Lambrate	45.478	9.224	Lambrate	37	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 18:10:10	A74863	2024-11-06 18:06:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	117	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 18:10:11	A246697	2024-11-06 18:05:50	Via Franco Albini	45.442	9.212	Via Franco Albini	46	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 19:10:05	A97507	2024-11-06 19:07:08	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	43	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 19:10:08	A156526	2024-11-06 19:07:49	Lambrate	45.478	9.224	Lambrate	41	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 19:10:09	A74863	2024-11-06 19:07:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	102	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 19:10:11	A246697	2024-11-06 19:07:41	Via Franco Albini	45.442	9.212	Via Franco Albini	43	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 20:10:05	A97507	2024-11-06 20:06:35	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	40	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 20:10:08	A156526	2024-11-06 20:06:58	Lambrate	45.478	9.224	Lambrate	43	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 20:10:10	A74863	2024-11-06 20:01:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	74	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 20:10:11	A246697	2024-11-06 20:06:51	Via Franco Albini	45.442	9.212	Via Franco Albini	49	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 21:10:05	A97507	2024-11-06 21:04:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	47	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 21:10:08	A156526	2024-11-06 21:05:42	Lambrate	45.478	9.224	Lambrate	39	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 21:10:09	A74863	2024-11-06 21:06:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	94	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 21:10:10	A246697	2024-11-06 21:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	43	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 22:10:06	A97507	2024-11-06 22:05:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 22:10:08	A156526	2024-11-06 22:04:08	Lambrate	45.478	9.224	Lambrate	47	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 22:10:09	A74863	2024-11-06 22:05:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 22:10:10	A246697	2024-11-06 22:03:59	Via Franco Albini	45.442	9.212	Via Franco Albini	39	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 23:10:05	A97507	2024-11-06 23:05:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	76	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 23:10:07	A156526	2024-11-06 23:06:14	Lambrate	45.478	9.224	Lambrate	40	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 23:10:09	A74863	2024-11-06 23:07:09	Via Federico Chopin	45.426	9.206	Via Federico Chopin	40	95	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-06 23:10:10	A246697	2024-11-06 23:05:57	Via Franco Albini	45.442	9.212	Via Franco Albini	41	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 00:10:05	A97507	2024-11-07 00:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	72	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 00:10:07	A156526	2024-11-07 00:08:13	Lambrate	45.478	9.224	Lambrate	41	77	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 00:10:08	A74863	2024-11-07 00:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 00:10:09	A246697	2024-11-07 00:06:38	Via Franco Albini	45.442	9.212	Via Franco Albini	33	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 01:10:05	A97507	2024-11-07 01:06:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	50	83	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 01:10:08	A156526	2024-11-07 01:04:57	Lambrate	45.478	9.224	Lambrate	50	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 01:10:09	A74863	2024-11-07 01:05:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	116	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 01:10:10	A246697	2024-11-07 01:06:34	Via Franco Albini	45.442	9.212	Via Franco Albini	53	82	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 02:10:06	A97507	2024-11-07 02:06:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	45	76	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 02:10:08	A156526	2024-11-07 02:04:57	Lambrate	45.478	9.224	Lambrate	48	85	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 02:10:09	A74863	2024-11-07 02:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	103	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 02:10:10	A246697	2024-11-07 02:06:45	Via Franco Albini	45.442	9.212	Via Franco Albini	45	74	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 03:10:06	A97507	2024-11-07 03:06:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 03:10:08	A156526	2024-11-07 03:07:00	Lambrate	45.478	9.224	Lambrate	32	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 03:10:09	A74863	2024-11-07 03:06:09	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	90	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 03:10:10	A246697	2024-11-07 03:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	33	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 04:10:05	A97507	2024-11-07 04:05:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 04:10:08	A156526	2024-11-07 04:05:50	Lambrate	45.478	9.224	Lambrate	21	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 04:10:09	A74863	2024-11-07 04:07:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	84	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 04:10:10	A246697	2024-11-07 04:08:02	Via Franco Albini	45.442	9.212	Via Franco Albini	25	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 05:10:05	A97507	2024-11-07 05:06:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 05:10:07	A156526	2024-11-07 05:07:40	Lambrate	45.478	9.224	Lambrate	16	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 05:10:08	A74863	2024-11-07 05:05:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 05:10:09	A246697	2024-11-07 05:04:10	Via Franco Albini	45.442	9.212	Via Franco Albini	30	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 06:10:06	A97507	2024-11-07 06:06:26	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	60	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 06:10:08	A156526	2024-11-07 06:04:11	Lambrate	45.478	9.224	Lambrate	16	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 06:10:09	A74863	2024-11-07 06:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 06:10:10	A246697	2024-11-07 06:06:51	Via Franco Albini	45.442	9.212	Via Franco Albini	24	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 07:10:05	A97507	2024-11-07 07:07:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	25	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 07:10:07	A156526	2024-11-07 07:05:40	Lambrate	45.478	9.224	Lambrate	30	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 07:10:09	A74863	2024-11-07 07:07:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 07:10:10	A246697	2024-11-07 07:05:25	Via Franco Albini	45.442	9.212	Via Franco Albini	31	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 08:10:05	A97507	2024-11-07 08:06:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 08:10:07	A156526	2024-11-07 08:07:38	Lambrate	45.478	9.224	Lambrate	26	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 08:10:09	A74863	2024-11-07 08:07:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 08:10:10	A246697	2024-11-07 08:07:18	Via Franco Albini	45.442	9.212	Via Franco Albini	29	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 09:10:05	A97507	2024-11-07 09:07:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 09:10:07	A156526	2024-11-07 09:06:56	Lambrate	45.478	9.224	Lambrate	30	62	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 09:10:08	A74863	2024-11-07 09:05:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	79	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 09:10:10	A246697	2024-11-07 09:06:30	Via Franco Albini	45.442	9.212	Via Franco Albini	32	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 10:10:06	A97507	2024-11-07 10:07:15	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	52	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 10:10:08	A156526	2024-11-07 10:05:32	Lambrate	45.478	9.224	Lambrate	28	65	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 10:10:09	A74863	2024-11-07 10:07:18	Via Federico Chopin	45.426	9.206	Via Federico Chopin	71	81	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 10:10:10	A246697	2024-11-07 10:05:37	Via Franco Albini	45.442	9.212	Via Franco Albini	30	56	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 11:10:06	A97507	2024-11-07 11:07:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	60	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 11:10:08	A156526	2024-11-07 11:07:53	Lambrate	45.478	9.224	Lambrate	36	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 11:10:09	A74863	2024-11-07 11:07:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	42	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 11:10:10	A246697	2024-11-07 11:05:46	Via Franco Albini	45.442	9.212	Via Franco Albini	41	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 12:10:05	A97507	2024-11-07 12:06:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 12:10:08	A156526	2024-11-07 12:04:39	Lambrate	45.478	9.224	Lambrate	29	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 12:10:09	A74863	2024-11-07 12:04:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	59	131	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 12:10:10	A246697	2024-11-07 12:03:53	Via Franco Albini	45.442	9.212	Via Franco Albini	48	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 13:10:05	A97507	2024-11-07 13:07:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 13:10:07	A156526	2024-11-07 13:05:48	Lambrate	45.478	9.224	Lambrate	31	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 13:10:08	A74863	2024-11-07 13:04:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	115	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 13:10:09	A246697	2024-11-07 13:07:53	Via Franco Albini	45.442	9.212	Via Franco Albini	38	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 14:10:05	A97507	2024-11-07 14:06:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 14:10:08	A156526	2024-11-07 14:06:00	Lambrate	45.478	9.224	Lambrate	33	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 14:10:09	A74863	2024-11-07 14:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	45	102	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 14:10:10	A246697	2024-11-07 14:07:44	Via Franco Albini	45.442	9.212	Via Franco Albini	35	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 15:10:05	A97507	2024-11-07 15:06:27	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 15:10:08	A156526	2024-11-07 15:05:33	Lambrate	45.478	9.224	Lambrate	23	63	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 15:10:10	A74863	2024-11-07 15:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	44	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 15:10:11	A246697	2024-11-07 15:06:48	Via Franco Albini	45.442	9.212	Via Franco Albini	37	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 16:10:07	A97507	2024-11-07 16:04:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 16:10:10	A156526	2024-11-07 16:05:12	Lambrate	45.478	9.224	Lambrate	25	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 16:10:11	A74863	2024-11-07 16:03:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	43	98	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 16:10:13	A246697	2024-11-07 16:03:00	Via Franco Albini	45.442	9.212	Via Franco Albini	34	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 17:10:06	A97507	2024-11-07 17:04:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 17:10:09	A156526	2024-11-07 17:04:54	Lambrate	45.478	9.224	Lambrate	36	72	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 17:10:11	A74863	2024-11-07 17:03:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	49	103	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 17:10:12	A246697	2024-11-07 17:05:55	Via Franco Albini	45.442	9.212	Via Franco Albini	38	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 18:10:05	A97507	2024-11-07 18:05:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 18:10:07	A156526	2024-11-07 18:07:47	Lambrate	45.478	9.224	Lambrate	32	71	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 18:10:09	A74863	2024-11-07 18:06:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	53	113	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 18:10:10	A246697	2024-11-07 18:05:24	Via Franco Albini	45.442	9.212	Via Franco Albini	40	73	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 19:10:05	A97507	2024-11-07 19:06:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 19:10:08	A156526	2024-11-07 19:04:40	Lambrate	45.478	9.224	Lambrate	35	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 19:10:09	A74863	2024-11-07 19:04:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	127	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 19:10:10	A246697	2024-11-07 19:04:41	Via Franco Albini	45.442	9.212	Via Franco Albini	52	86	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 20:10:05	A97507	2024-11-07 20:03:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	72	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 20:10:08	A156526	2024-11-07 20:04:46	Lambrate	45.478	9.224	Lambrate	37	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 20:10:09	A74863	2024-11-07 20:04:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	45	104	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 20:10:10	A246697	2024-11-07 20:06:56	Via Franco Albini	45.442	9.212	Via Franco Albini	50	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 21:10:05	A97507	2024-11-07 21:07:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	38	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 21:10:07	A156526	2024-11-07 21:06:51	Lambrate	45.478	9.224	Lambrate	40	79	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 21:10:08	A74863	2024-11-07 21:03:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 21:10:10	A246697	2024-11-07 21:02:23	Via Franco Albini	45.442	9.212	Via Franco Albini	30	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:10:06	A97507	2024-11-07 22:03:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	73	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:10:08	A156526	2024-11-07 22:02:59	Lambrate	45.478	9.224	Lambrate	42	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:10:09	A74863	2024-11-07 22:05:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:10:10	A246697	2024-11-07 22:07:52	Via Franco Albini	45.442	9.212	Via Franco Albini	26	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 23:10:05	A97507	2024-11-07 23:06:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 23:10:07	A156526	2024-11-07 23:05:07	Lambrate	45.478	9.224	Lambrate	21	61	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 23:10:09	A74863	2024-11-07 23:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 23:10:10	A246697	2024-11-07 23:06:39	Via Franco Albini	45.442	9.212	Via Franco Albini	23	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:51:03	A97507	2024-11-07 22:44:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:51:04	A156526	2024-11-07 22:48:49	Lambrate	45.478	9.224	Lambrate	20	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:51:05	A74863	2024-11-07 22:45:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-07 22:51:06	A246697	2024-11-07 22:47:10	Via Franco Albini	45.442	9.212	Via Franco Albini	22	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 00:10:05	A97507	2024-11-08 00:06:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	49	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 00:10:08	A156526	2024-11-08 00:04:33	Lambrate	45.478	9.224	Lambrate	17	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 00:10:09	A74863	2024-11-08 00:06:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	83	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 00:10:10	A246697	2024-11-08 00:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	26	57	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 01:10:05	A97507	2024-11-08 01:06:26	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	27	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 01:10:07	A156526	2024-11-08 01:05:11	Lambrate	45.478	9.224	Lambrate	20	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 01:10:08	A74863	2024-11-08 01:06:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 01:10:10	A246697	2024-11-08 01:05:45	Via Franco Albini	45.442	9.212	Via Franco Albini	31	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 02:10:06	A97507	2024-11-08 02:01:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 02:10:08	A156526	2024-11-08 02:05:10	Lambrate	45.478	9.224	Lambrate	17	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 02:10:09	A74863	2024-11-08 02:04:02	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 02:10:10	A246697	2024-11-08 02:03:00	Via Franco Albini	45.442	9.212	Via Franco Albini	30	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 03:10:08	A156526	2024-11-08 03:05:48	Lambrate	45.478	9.224	Lambrate	17	52	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 03:10:09	A74863	2024-11-08 03:00:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	121	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 03:10:10	A246697	2024-11-08 03:07:02	Via Franco Albini	45.442	9.212	Via Franco Albini	31	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 04:10:05	A97507	2024-11-08 04:07:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	21	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 04:10:07	A156526	2024-11-08 04:07:54	Lambrate	45.478	9.224	Lambrate	21	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 04:10:09	A74863	2024-11-08 04:06:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	95	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 04:10:10	A246697	2024-11-08 04:07:57	Via Franco Albini	45.442	9.212	Via Franco Albini	34	67	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 05:10:05	A97507	2024-11-08 05:05:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	67	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 05:10:08	A156526	2024-11-08 05:02:37	Lambrate	45.478	9.224	Lambrate	24	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 05:10:09	A74863	2024-11-08 05:01:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 05:10:10	A246697	2024-11-08 05:07:29	Via Franco Albini	45.442	9.212	Via Franco Albini	36	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 06:10:06	A97507	2024-11-08 06:06:12	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 06:10:08	A156526	2024-11-08 06:04:36	Lambrate	45.478	9.224	Lambrate	38	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 06:10:09	A74863	2024-11-08 06:05:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 06:10:10	A246697	2024-11-08 06:06:49	Via Franco Albini	45.442	9.212	Via Franco Albini	28	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 07:10:06	A97507	2024-11-08 07:06:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	31	70	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 07:10:08	A156526	2024-11-08 07:05:40	Lambrate	45.478	9.224	Lambrate	41	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 07:10:09	A74863	2024-11-08 07:06:54	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 07:10:10	A246697	2024-11-08 07:05:51	Via Franco Albini	45.442	9.212	Via Franco Albini	31	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 08:10:05	A97507	2024-11-08 08:08:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 08:10:08	A156526	2024-11-08 08:05:50	Lambrate	45.478	9.224	Lambrate	32	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 08:10:09	A74863	2024-11-08 08:06:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	41	93	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 08:10:10	A246697	2024-11-08 08:06:28	Via Franco Albini	45.442	9.212	Via Franco Albini	30	62	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 09:10:06	A97507	2024-11-08 09:04:47	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	28	62	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 09:10:08	A156526	2024-11-08 09:04:58	Lambrate	45.478	9.224	Lambrate	30	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 09:10:09	A74863	2024-11-08 09:06:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	91	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 09:10:10	A246697	2024-11-08 09:06:54	Via Franco Albini	45.442	9.212	Via Franco Albini	34	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 10:10:05	A97507	2024-11-08 10:07:50	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 10:10:08	A156526	2024-11-08 10:06:02	Lambrate	45.478	9.224	Lambrate	29	66	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 10:10:09	A74863	2024-11-08 10:07:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	52	99	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 10:10:10	A246697	2024-11-08 10:01:44	Via Franco Albini	45.442	9.212	Via Franco Albini	31	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 11:10:06	A97507	2024-11-08 11:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 11:10:08	A156526	2024-11-08 11:05:18	Lambrate	45.478	9.224	Lambrate	27	65	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 11:10:09	A74863	2024-11-08 11:06:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	149	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 11:10:10	A246697	2024-11-08 11:07:17	Via Franco Albini	45.442	9.212	Via Franco Albini	31	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 12:10:06	A97507	2024-11-08 12:06:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	59	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 12:10:08	A156526	2024-11-08 12:06:58	Lambrate	45.478	9.224	Lambrate	29	67	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 12:10:09	A74863	2024-11-08 12:07:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	116	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 12:10:10	A246697	2024-11-08 12:07:31	Via Franco Albini	45.442	9.212	Via Franco Albini	37	71	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 13:10:06	A97507	2024-11-08 13:07:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	23	61	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 13:10:08	A156526	2024-11-08 13:07:03	Lambrate	45.478	9.224	Lambrate	29	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 13:10:09	A74863	2024-11-08 13:06:14	Via Federico Chopin	45.426	9.206	Via Federico Chopin	50	117	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 13:10:10	A246697	2024-11-08 13:07:46	Via Franco Albini	45.442	9.212	Via Franco Albini	34	72	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:10:05	A97507	2024-11-08 14:07:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	67	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:10:08	A156526	2024-11-08 14:06:24	Lambrate	45.478	9.224	Lambrate	35	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:10:09	A74863	2024-11-08 14:06:44	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	124	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:10:10	A246697	2024-11-08 14:07:25	Via Franco Albini	45.442	9.212	Via Franco Albini	44	81	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:10:05	A97507	2024-11-08 15:06:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	32	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:10:08	A156526	2024-11-08 15:05:49	Lambrate	45.478	9.224	Lambrate	31	78	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:10:09	A74863	2024-11-08 15:07:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	56	133	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:10:10	A246697	2024-11-08 15:06:02	Via Franco Albini	45.442	9.212	Via Franco Albini	46	82	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:54:48	A97507	2024-11-08 14:51:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	32	72	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:54:50	A156526	2024-11-08 14:52:01	Lambrate	45.478	9.224	Lambrate	40	82	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:54:50	A74863	2024-11-08 14:51:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	56	136	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:54:51	A246697	2024-11-08 14:49:37	Via Franco Albini	45.442	9.212	Via Franco Albini	47	84	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:57:56	A97507	2024-11-08 14:54:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:57:58	A156526	2024-11-08 14:52:01	Lambrate	45.478	9.224	Lambrate	40	82	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:57:58	A74863	2024-11-08 14:54:20	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	136	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:57:59	A246697	2024-11-08 14:55:46	Via Franco Albini	45.442	9.212	Via Franco Albini	51	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:58:35	A97507	2024-11-08 14:54:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:58:36	A156526	2024-11-08 14:55:07	Lambrate	45.478	9.224	Lambrate	38	84	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:58:37	A74863	2024-11-08 14:54:20	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	136	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:58:37	A246697	2024-11-08 14:55:46	Via Franco Albini	45.442	9.212	Via Franco Albini	51	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:59:40	A97507	2024-11-08 14:56:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:59:42	A156526	2024-11-08 14:55:07	Lambrate	45.478	9.224	Lambrate	38	84	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:59:42	A74863	2024-11-08 14:56:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	140	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 14:59:43	A246697	2024-11-08 14:55:46	Via Franco Albini	45.442	9.212	Via Franco Albini	51	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:00:39	A97507	2024-11-08 14:56:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	34	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:00:40	A156526	2024-11-08 14:55:07	Lambrate	45.478	9.224	Lambrate	38	84	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:00:41	A74863	2024-11-08 14:56:47	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	140	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:00:41	A246697	2024-11-08 14:55:46	Via Franco Albini	45.442	9.212	Via Franco Albini	51	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 15:04:21	A97507	2024-11-08 14:59:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	71
2024-11-08 15:04:22	A156526	2024-11-08 14:58:09	Lambrate	45.478	9.224	Lambrate	48	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-08 15:04:23	A74863	2024-11-08 14:59:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	142	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	142
2024-11-08 15:04:23	A246697	2024-11-08 14:58:50	Via Franco Albini	45.442	9.212	Via Franco Albini	48	84	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	84
2024-11-08 15:04:44	A97507	2024-11-08 14:59:17	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	71
2024-11-08 15:04:45	A156526	2024-11-08 14:58:09	Lambrate	45.478	9.224	Lambrate	48	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-08 15:04:46	A74863	2024-11-08 14:59:17	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	142	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	142
2024-11-08 15:04:47	A246697	2024-11-08 14:58:50	Via Franco Albini	45.442	9.212	Via Franco Albini	48	84	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	84
2024-11-08 16:10:06	A97507	2024-11-08 16:06:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	40	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 16:10:08	A156526	2024-11-08 16:07:32	Lambrate	45.478	9.224	Lambrate	41	83	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 16:10:09	A74863	2024-11-08 16:06:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	139	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 16:10:10	A246697	2024-11-08 16:04:59	Via Franco Albini	45.442	9.212	Via Franco Albini	50	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	\N
2024-11-08 17:10:06	A97507	2024-11-08 17:06:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	40	79	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	79
2024-11-08 17:10:08	A156526	2024-11-08 17:06:30	Lambrate	45.478	9.224	Lambrate	42	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-08 17:10:10	A74863	2024-11-08 17:06:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	135	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	135
2024-11-08 17:10:11	A246697	2024-11-08 17:07:52	Via Franco Albini	45.442	9.212	Via Franco Albini	49	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-08 18:10:05	A97507	2024-11-08 18:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	33	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-08 18:10:08	A156526	2024-11-08 18:05:12	Lambrate	45.478	9.224	Lambrate	46	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-08 18:10:09	A74863	2024-11-08 18:06:48	Via Federico Chopin	45.426	9.206	Via Federico Chopin	56	129	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	129
2024-11-08 18:10:10	A246697	2024-11-08 18:06:45	Via Franco Albini	45.442	9.212	Via Franco Albini	52	87	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-08 19:10:06	A97507	2024-11-08 19:06:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	32	71	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	71
2024-11-08 19:10:09	A156526	2024-11-08 19:06:55	Lambrate	45.478	9.224	Lambrate	42	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-08 19:10:10	A74863	2024-11-08 19:06:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	136	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	136
2024-11-08 19:10:11	A246697	2024-11-08 19:06:24	Via Franco Albini	45.442	9.212	Via Franco Albini	51	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-08 20:10:06	A97507	2024-11-08 20:05:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	76	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	76
2024-11-08 20:10:09	A156526	2024-11-08 20:05:55	Lambrate	45.478	9.224	Lambrate	49	92	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	92
2024-11-08 20:10:10	A74863	2024-11-08 20:07:11	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	142	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	142
2024-11-08 20:10:11	A246697	2024-11-08 20:05:07	Via Franco Albini	45.442	9.212	Via Franco Albini	51	82	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-08 21:10:06	A97507	2024-11-08 21:06:28	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	83	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	83
2024-11-08 21:10:08	A156526	2024-11-08 21:05:00	Lambrate	45.478	9.224	Lambrate	52	97	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	97
2024-11-08 21:10:09	A74863	2024-11-08 21:07:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	140	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	140
2024-11-08 21:10:10	A246697	2024-11-08 21:07:35	Via Franco Albini	45.442	9.212	Via Franco Albini	53	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-08 22:10:05	A97507	2024-11-08 22:04:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	80	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	80
2024-11-08 22:10:08	A156526	2024-11-08 22:05:22	Lambrate	45.478	9.224	Lambrate	49	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-08 22:10:09	A74863	2024-11-08 22:04:11	Via Federico Chopin	45.426	9.206	Via Federico Chopin	67	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-08 22:10:10	A246697	2024-11-08 22:04:51	Via Franco Albini	45.442	9.212	Via Franco Albini	54	87	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-08 23:10:05	A97507	2024-11-08 23:05:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	60	99	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	99
2024-11-08 23:10:08	A156526	2024-11-08 23:04:28	Lambrate	45.478	9.224	Lambrate	47	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-08 23:10:09	A74863	2024-11-08 23:05:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	72	154	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	154
2024-11-08 23:10:10	A246697	2024-11-08 23:01:10	Via Franco Albini	45.442	9.212	Via Franco Albini	60	96	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-09 00:10:06	A97507	2024-11-09 00:04:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	42	83	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	83
2024-11-09 00:10:08	A156526	2024-11-09 00:03:56	Lambrate	45.478	9.224	Lambrate	53	92	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	92
2024-11-09 00:10:09	A74863	2024-11-09 00:02:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	67	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 00:10:10	A246697	2024-11-09 00:04:26	Via Franco Albini	45.442	9.212	Via Franco Albini	52	86	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 01:10:05	A97507	2024-11-09 00:58:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	43	84	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	84
2024-11-09 01:10:08	A156526	2024-11-09 01:02:09	Lambrate	45.478	9.224	Lambrate	54	99	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	99
2024-11-09 01:10:09	A74863	2024-11-09 00:55:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	70	152	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	152
2024-11-09 01:10:10	A246697	2024-11-09 00:58:50	Via Franco Albini	45.442	9.212	Via Franco Albini	52	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-09 02:10:05	A97507	2024-11-09 02:02:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	50	82	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-09 02:10:07	A156526	2024-11-09 02:03:00	Lambrate	45.478	9.224	Lambrate	57	101	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	101
2024-11-09 02:10:09	A74863	2024-11-09 01:57:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	133	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	133
2024-11-09 02:10:10	A246697	2024-11-09 02:02:32	Via Franco Albini	45.442	9.212	Via Franco Albini	55	86	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 03:10:05	A97507	2024-11-09 02:57:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	48	82	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-09 03:10:08	A156526	2024-11-09 02:57:02	Lambrate	45.478	9.224	Lambrate	55	95	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	95
2024-11-09 03:10:09	A74863	2024-11-09 02:57:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	132	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	132
2024-11-09 03:10:10	A246697	2024-11-09 02:57:36	Via Franco Albini	45.442	9.212	Via Franco Albini	54	86	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 04:10:05	A97507	2024-11-09 04:03:41	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	55	90	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	90
2024-11-09 04:10:08	A156526	2024-11-09 04:07:03	Lambrate	45.478	9.224	Lambrate	68	112	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	112
2024-11-09 04:10:09	A74863	2024-11-09 04:07:22	Via Federico Chopin	45.426	9.206	Via Federico Chopin	78	154	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	154
2024-11-09 04:10:10	A246697	2024-11-09 04:07:47	Via Franco Albini	45.442	9.212	Via Franco Albini	66	92	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	92
2024-11-09 05:10:06	A97507	2024-11-09 05:07:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	53	89	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-09 05:10:08	A156526	2024-11-09 05:06:07	Lambrate	45.478	9.224	Lambrate	57	95	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	95
2024-11-09 05:10:09	A74863	2024-11-09 05:03:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	86	157	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	157
2024-11-09 05:10:11	A246697	2024-11-09 05:07:00	Via Franco Albini	45.442	9.212	Via Franco Albini	63	94	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	94
2024-11-09 06:10:05	A97507	2024-11-09 06:02:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	52	86	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 06:10:08	A156526	2024-11-09 06:03:25	Lambrate	45.478	9.224	Lambrate	54	94	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	94
2024-11-09 06:10:09	A74863	2024-11-09 06:03:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	70	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 06:10:10	A246697	2024-11-09 05:57:30	Via Franco Albini	45.442	9.212	Via Franco Albini	60	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-09 07:10:05	A97507	2024-11-09 07:07:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	43	75	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	75
2024-11-09 07:10:08	A156526	2024-11-09 07:06:56	Lambrate	45.478	9.224	Lambrate	53	93	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	93
2024-11-09 07:10:09	A74863	2024-11-09 07:05:43	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	131	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	131
2024-11-09 07:10:11	A246697	2024-11-09 07:05:16	Via Franco Albini	45.442	9.212	Via Franco Albini	52	80	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	80
2024-11-09 08:10:06	A97507	2024-11-09 08:04:57	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	47	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	77
2024-11-09 08:10:08	A156526	2024-11-09 08:03:18	Lambrate	45.478	9.224	Lambrate	50	89	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-09 08:10:09	A74863	2024-11-09 08:03:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	69	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 08:10:10	A246697	2024-11-09 08:01:26	Via Franco Albini	45.442	9.212	Via Franco Albini	52	77	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	77
2024-11-09 09:10:05	A97507	2024-11-09 09:06:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	57	86	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 09:10:07	A156526	2024-11-09 09:06:04	Lambrate	45.478	9.224	Lambrate	53	94	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	94
2024-11-09 09:10:09	A74863	2024-11-09 09:04:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	136	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	136
2024-11-09 09:10:10	A246697	2024-11-09 09:05:45	Via Franco Albini	45.442	9.212	Via Franco Albini	56	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-09 10:10:06	A97507	2024-11-09 10:05:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	79	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	79
2024-11-09 10:10:08	A156526	2024-11-09 10:07:06	Lambrate	45.478	9.224	Lambrate	53	91	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-09 10:10:09	A74863	2024-11-09 10:04:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	76	152	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	152
2024-11-09 10:10:10	A246697	2024-11-09 10:06:27	Via Franco Albini	45.442	9.212	Via Franco Albini	57	87	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-09 11:10:06	A97507	2024-11-09 10:58:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	77	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	77
2024-11-09 11:10:08	A156526	2024-11-09 11:05:43	Lambrate	45.478	9.224	Lambrate	44	89	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-09 11:10:10	A74863	2024-11-09 11:07:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	69	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 11:10:11	A246697	2024-11-09 11:05:36	Via Franco Albini	45.442	9.212	Via Franco Albini	47	83	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	83
2024-11-09 12:10:05	A97507	2024-11-09 12:07:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	40	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-09 12:10:08	A156526	2024-11-09 12:07:23	Lambrate	45.478	9.224	Lambrate	49	96	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-09 12:10:09	A74863	2024-11-09 11:57:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	65	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 12:10:10	A246697	2024-11-09 11:57:06	Via Franco Albini	45.442	9.212	Via Franco Albini	47	83	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	83
2024-11-09 13:10:05	A97507	2024-11-09 13:03:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	48	85	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-09 13:10:08	A156526	2024-11-09 13:05:40	Lambrate	45.478	9.224	Lambrate	38	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 13:10:10	A74863	2024-11-09 13:05:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	68	152	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	152
2024-11-09 13:10:11	A246697	2024-11-09 13:04:58	Via Franco Albini	45.442	9.212	Via Franco Albini	56	96	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-09 14:10:05	A97507	2024-11-09 14:03:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	58	95	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	95
2024-11-09 14:10:08	A156526	2024-11-09 14:05:41	Lambrate	45.478	9.224	Lambrate	53	104	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	104
2024-11-09 14:10:09	A74863	2024-11-09 13:57:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	143	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	143
2024-11-09 14:10:10	A246697	2024-11-09 13:58:52	Via Franco Albini	45.442	9.212	Via Franco Albini	47	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-09 15:10:05	A97507	2024-11-09 15:06:58	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	39	80	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	80
2024-11-09 15:10:08	A156526	2024-11-09 15:07:32	Lambrate	45.478	9.224	Lambrate	44	91	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-09 15:10:09	A74863	2024-11-09 15:07:00	Via Federico Chopin	45.426	9.206	Via Federico Chopin	59	143	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	143
2024-11-09 15:10:10	A246697	2024-11-09 15:06:31	Via Franco Albini	45.442	9.212	Via Franco Albini	47	84	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	84
2024-11-09 16:10:06	A97507	2024-11-09 16:04:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	82	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-09 16:10:09	A156526	2024-11-09 16:05:52	Lambrate	45.478	9.224	Lambrate	43	87	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-09 16:10:10	A74863	2024-11-09 16:04:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	67	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 16:10:11	A246697	2024-11-09 16:05:52	Via Franco Albini	45.442	9.212	Via Franco Albini	53	87	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-09 17:10:05	A97507	2024-11-09 17:01:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	46	81	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	81
2024-11-09 17:10:09	A156526	2024-11-09 17:07:24	Lambrate	45.478	9.224	Lambrate	47	89	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-09 17:10:10	A74863	2024-11-09 17:07:20	Via Federico Chopin	45.426	9.206	Via Federico Chopin	67	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 17:10:12	A246697	2024-11-09 17:07:20	Via Franco Albini	45.442	9.212	Via Franco Albini	55	89	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-09 18:10:06	A97507	2024-11-09 18:06:40	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	50	83	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	83
2024-11-09 18:10:08	A156526	2024-11-09 18:05:44	Lambrate	45.478	9.224	Lambrate	43	86	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 18:10:09	A74863	2024-11-09 18:06:41	Via Federico Chopin	45.426	9.206	Via Federico Chopin	67	151	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	151
2024-11-09 18:10:10	A246697	2024-11-09 18:07:51	Via Franco Albini	45.442	9.212	Via Franco Albini	55	87	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-09 19:10:06	A97507	2024-11-09 19:05:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	46	86	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-09 19:10:08	A156526	2024-11-09 19:04:46	Lambrate	45.478	9.224	Lambrate	53	96	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-09 19:10:09	A74863	2024-11-09 19:04:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	148	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	148
2024-11-09 19:10:11	A246697	2024-11-09 19:04:20	Via Franco Albini	45.442	9.212	Via Franco Albini	54	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-09 20:10:05	A97507	2024-11-09 20:02:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	42	87	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-09 20:10:08	A156526	2024-11-09 20:06:54	Lambrate	45.478	9.224	Lambrate	52	96	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-09 20:10:09	A74863	2024-11-09 20:05:24	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	137	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	137
2024-11-09 20:10:11	A246697	2024-11-09 20:07:02	Via Franco Albini	45.442	9.212	Via Franco Albini	56	96	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-09 21:10:06	A97507	2024-11-09 21:07:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	53	95	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	95
2024-11-09 21:10:08	A156526	2024-11-09 21:07:08	Lambrate	45.478	9.224	Lambrate	54	105	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	105
2024-11-09 21:10:10	A74863	2024-11-09 21:06:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	62	148	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	148
2024-11-09 21:10:11	A246697	2024-11-09 21:06:52	Via Franco Albini	45.442	9.212	Via Franco Albini	56	98	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	98
2024-11-09 22:10:06	A97507	2024-11-09 22:06:35	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	58	106	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	106
2024-11-09 22:10:08	A156526	2024-11-09 22:05:40	Lambrate	45.478	9.224	Lambrate	57	111	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	111
2024-11-09 22:10:09	A74863	2024-11-09 22:05:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	76	159	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	159
2024-11-09 22:10:10	A246697	2024-11-09 22:05:05	Via Franco Albini	45.442	9.212	Via Franco Albini	63	105	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	105
2024-11-09 23:10:05	A97507	2024-11-09 23:06:29	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	61	103	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	103
2024-11-09 23:10:07	A156526	2024-11-09 23:07:22	Lambrate	45.478	9.224	Lambrate	61	123	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	123
2024-11-09 23:10:09	A74863	2024-11-09 23:07:05	Via Federico Chopin	45.426	9.206	Via Federico Chopin	77	158	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	158
2024-11-09 23:10:10	A246697	2024-11-09 23:07:12	Via Franco Albini	45.442	9.212	Via Franco Albini	66	107	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	107
2024-11-10 00:10:05	A97507	2024-11-10 00:04:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	60	102	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	102
2024-11-10 00:10:07	A156526	2024-11-10 00:03:43	Lambrate	45.478	9.224	Lambrate	66	129	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	129
2024-11-10 00:10:08	A74863	2024-11-10 00:01:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	61	142	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	142
2024-11-10 00:10:10	A246697	2024-11-10 00:03:40	Via Franco Albini	45.442	9.212	Via Franco Albini	67	104	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	104
2024-11-10 01:10:05	A97507	2024-11-10 01:07:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	55	99	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	99
2024-11-10 01:10:08	A156526	2024-11-10 01:05:58	Lambrate	45.478	9.224	Lambrate	59	116	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	116
2024-11-10 01:10:09	A74863	2024-11-10 01:07:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	93	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	93
2024-11-10 01:10:10	A246697	2024-11-10 01:05:03	Via Franco Albini	45.442	9.212	Via Franco Albini	54	90	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	90
2024-11-10 02:10:05	A97507	2024-11-10 02:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	56	101	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	101
2024-11-10 02:10:07	A156526	2024-11-10 02:06:56	Lambrate	45.478	9.224	Lambrate	56	108	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	108
2024-11-10 02:10:09	A74863	2024-11-10 02:06:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	97	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	97
2024-11-10 02:10:10	A246697	2024-11-10 02:07:01	Via Franco Albini	45.442	9.212	Via Franco Albini	51	88	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-10 03:10:05	A97507	2024-11-10 02:58:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	52	91	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-10 03:10:07	A156526	2024-11-10 03:02:24	Lambrate	45.478	9.224	Lambrate	45	90	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	90
2024-11-10 03:10:08	A74863	2024-11-10 02:58:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	92
2024-11-10 03:10:10	A246697	2024-11-10 02:59:30	Via Franco Albini	45.442	9.212	Via Franco Albini	38	76	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	76
2024-11-10 04:10:05	A97507	2024-11-10 04:01:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	26	64	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	64
2024-11-10 04:10:08	A156526	2024-11-10 04:03:52	Lambrate	45.478	9.224	Lambrate	31	70	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	70
2024-11-10 04:10:09	A74863	2024-11-10 04:01:21	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	100	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	100
2024-11-10 04:10:10	A246697	2024-11-10 04:02:36	Via Franco Albini	45.442	9.212	Via Franco Albini	28	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	64
2024-11-10 05:10:05	A97507	2024-11-10 05:03:34	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	56	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	56
2024-11-10 05:10:07	A156526	2024-11-10 05:02:13	Lambrate	45.478	9.224	Lambrate	24	62	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	62
2024-11-10 05:10:08	A74863	2024-11-10 04:56:40	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-10 05:10:10	A246697	2024-11-10 05:03:24	Via Franco Albini	45.442	9.212	Via Franco Albini	30	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-10 06:10:05	A97507	2024-11-10 06:03:19	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	55	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-10 06:10:07	A156526	2024-11-10 06:06:15	Lambrate	45.478	9.224	Lambrate	24	64	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	64
2024-11-10 06:10:09	A74863	2024-11-10 06:05:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	92
2024-11-10 06:10:10	A246697	2024-11-10 06:05:35	Via Franco Albini	45.442	9.212	Via Franco Albini	32	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-10 07:10:06	A97507	2024-11-10 07:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	54	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	54
2024-11-10 07:10:08	A156526	2024-11-10 07:05:04	Lambrate	45.478	9.224	Lambrate	18	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	57
2024-11-10 07:10:09	A74863	2024-11-10 07:05:06	Via Federico Chopin	45.426	9.206	Via Federico Chopin	57	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-10 07:10:10	A246697	2024-11-10 07:04:01	Via Franco Albini	45.442	9.212	Via Franco Albini	31	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-10 08:10:05	A97507	2024-11-10 08:04:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	57
2024-11-10 08:10:07	A156526	2024-11-10 08:03:46	Lambrate	45.478	9.224	Lambrate	18	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	57
2024-11-10 08:10:09	A74863	2024-11-10 08:03:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	31	87	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-10 08:10:10	A246697	2024-11-10 08:05:43	Via Franco Albini	45.442	9.212	Via Franco Albini	33	69	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-10 09:10:05	A97507	2024-11-10 09:05:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	58
2024-11-10 09:10:08	A156526	2024-11-10 09:03:53	Lambrate	45.478	9.224	Lambrate	22	62	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	62
2024-11-10 09:10:09	A74863	2024-11-10 09:04:08	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	89	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-10 09:10:10	A246697	2024-11-10 09:03:56	Via Franco Albini	45.442	9.212	Via Franco Albini	27	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 10:10:05	A97507	2024-11-10 09:54:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	50
2024-11-10 10:10:07	A156526	2024-11-10 10:07:01	Lambrate	45.478	9.224	Lambrate	23	65	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 10:10:09	A74863	2024-11-10 10:02:29	Via Federico Chopin	45.426	9.206	Via Federico Chopin	54	99	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	99
2024-11-10 10:10:10	A246697	2024-11-10 10:06:41	Via Franco Albini	45.442	9.212	Via Franco Albini	28	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	64
2024-11-10 11:10:06	A97507	2024-11-10 10:57:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	57
2024-11-10 11:10:08	A156526	2024-11-10 11:06:13	Lambrate	45.478	9.224	Lambrate	23	66	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	66
2024-11-10 11:10:09	A74863	2024-11-10 11:05:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	93	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	93
2024-11-10 11:10:10	A246697	2024-11-10 11:02:51	Via Franco Albini	45.442	9.212	Via Franco Albini	29	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 12:10:05	A97507	2024-11-10 12:06:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	60	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	60
2024-11-10 12:10:08	A156526	2024-11-10 12:07:49	Lambrate	45.478	9.224	Lambrate	26	69	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-10 12:10:09	A74863	2024-11-10 12:07:59	Via Federico Chopin	45.426	9.206	Via Federico Chopin	48	111	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	111
2024-11-10 12:10:10	A246697	2024-11-10 12:06:06	Via Franco Albini	45.442	9.212	Via Franco Albini	29	64	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	64
2024-11-10 13:10:05	A97507	2024-11-10 13:03:07	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 13:10:08	A156526	2024-11-10 13:07:36	Lambrate	45.478	9.224	Lambrate	35	82	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-10 13:10:09	A74863	2024-11-10 13:06:23	Via Federico Chopin	45.426	9.206	Via Federico Chopin	38	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-10 13:10:10	A246697	2024-11-10 13:06:48	Via Franco Albini	45.442	9.212	Via Franco Albini	31	70	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	70
2024-11-10 14:10:05	A97507	2024-11-10 13:59:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	58
2024-11-10 14:10:07	A156526	2024-11-10 14:06:38	Lambrate	45.478	9.224	Lambrate	28	74	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-10 14:10:08	A74863	2024-11-10 14:08:03	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	90	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	90
2024-11-10 14:10:10	A246697	2024-11-10 14:08:03	Via Franco Albini	45.442	9.212	Via Franco Albini	29	65	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 15:10:06	A97507	2024-11-10 14:58:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	58	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	58
2024-11-10 15:10:09	A156526	2024-11-10 15:05:59	Lambrate	45.478	9.224	Lambrate	18	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	56
2024-11-10 15:10:10	A74863	2024-11-10 15:06:09	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	97	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	97
2024-11-10 15:10:11	A246697	2024-11-10 15:06:24	Via Franco Albini	45.442	9.212	Via Franco Albini	32	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	66
2024-11-10 16:10:05	A97507	2024-11-10 16:07:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	22	57	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	57
2024-11-10 16:10:08	A156526	2024-11-10 16:05:56	Lambrate	45.478	9.224	Lambrate	23	60	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	60
2024-11-10 16:10:10	A74863	2024-11-10 16:04:26	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	107	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	107
2024-11-10 16:10:11	A246697	2024-11-10 16:03:44	Via Franco Albini	45.442	9.212	Via Franco Albini	34	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-10 17:10:05	A97507	2024-11-10 16:59:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	68	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-10 17:10:08	A156526	2024-11-10 17:04:12	Lambrate	45.478	9.224	Lambrate	27	65	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 17:10:09	A74863	2024-11-10 16:58:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	55	127	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	127
2024-11-10 17:10:12	A246697	2024-11-10 17:01:12	Via Franco Albini	45.442	9.212	Via Franco Albini	45	74	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-10 18:10:06	A97507	2024-11-10 18:05:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	30	65	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	65
2024-11-10 18:10:09	A156526	2024-11-10 18:06:19	Lambrate	45.478	9.224	Lambrate	33	73	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	73
2024-11-10 18:10:12	A74863	2024-11-10 18:05:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	60	135	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	135
2024-11-10 18:10:13	A246697	2024-11-10 18:05:53	Via Franco Albini	45.442	9.212	Via Franco Albini	50	74	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-10 19:10:05	A97507	2024-11-10 19:04:03	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	37	69	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-10 19:10:08	A156526	2024-11-10 19:05:30	Lambrate	45.478	9.224	Lambrate	35	75	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	75
2024-11-10 19:10:10	A74863	2024-11-10 19:04:09	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	131	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	131
2024-11-10 19:10:11	A246697	2024-11-10 19:01:39	Via Franco Albini	45.442	9.212	Via Franco Albini	45	74	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-10 20:10:05	A97507	2024-11-10 20:03:54	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-10 20:10:08	A156526	2024-11-10 20:04:01	Lambrate	45.478	9.224	Lambrate	34	76	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	76
2024-11-10 20:10:09	A74863	2024-11-10 20:04:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	58	139	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	139
2024-11-10 20:10:10	A246697	2024-11-10 20:05:59	Via Franco Albini	45.442	9.212	Via Franco Albini	52	86	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-10 21:10:05	A97507	2024-11-10 21:06:23	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	48	87	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-10 21:10:07	A156526	2024-11-10 21:05:26	Lambrate	45.478	9.224	Lambrate	45	87	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	87
2024-11-10 21:10:08	A74863	2024-11-10 21:05:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-10 21:10:10	A246697	2024-11-10 21:08:00	Via Franco Albini	45.442	9.212	Via Franco Albini	52	89	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	89
2024-11-10 22:10:05	A97507	2024-11-10 22:03:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	43	82	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-10 22:10:08	A156526	2024-11-10 22:06:54	Lambrate	45.478	9.224	Lambrate	51	93	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	93
2024-11-10 22:10:09	A74863	2024-11-10 22:04:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	82	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	82
2024-11-10 22:10:10	A246697	2024-11-10 22:05:59	Via Franco Albini	45.442	9.212	Via Franco Albini	33	68	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-10 23:10:05	A97507	2024-11-10 23:06:18	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	45	85	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-10 23:10:07	A156526	2024-11-10 23:05:24	Lambrate	45.478	9.224	Lambrate	50	95	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	95
2024-11-10 23:10:08	A74863	2024-11-10 23:07:38	Via Federico Chopin	45.426	9.206	Via Federico Chopin	47	118	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	118
2024-11-10 23:10:10	A246697	2024-11-10 23:06:44	Via Franco Albini	45.442	9.212	Via Franco Albini	43	78	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-11 00:10:05	A97507	2024-11-11 00:06:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-11 00:10:08	A156526	2024-11-11 00:04:21	Lambrate	45.478	9.224	Lambrate	49	94	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	94
2024-11-11 00:10:09	A74863	2024-11-11 00:07:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	51	124	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	124
2024-11-11 00:10:10	A246697	2024-11-11 00:05:51	Via Franco Albini	45.442	9.212	Via Franco Albini	48	86	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-11 01:10:05	A97507	2024-11-11 00:58:24	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	80	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	80
2024-11-11 01:10:08	A156526	2024-11-11 01:03:34	Lambrate	45.478	9.224	Lambrate	43	88	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	88
2024-11-11 01:10:09	A74863	2024-11-11 01:04:01	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	91	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-11 01:10:10	A246697	2024-11-11 01:02:42	Via Franco Albini	45.442	9.212	Via Franco Albini	51	85	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-11 02:10:05	A97507	2024-11-11 02:06:36	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	41	78	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-11 02:10:08	A156526	2024-11-11 02:05:57	Lambrate	45.478	9.224	Lambrate	45	91	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-11 02:10:09	A74863	2024-11-11 02:05:57	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	92	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	92
2024-11-11 02:10:10	A246697	2024-11-11 02:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	28	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	66
2024-11-11 03:10:05	A97507	2024-11-11 02:55:02	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	38	72	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	72
2024-11-11 03:10:08	A156526	2024-11-11 02:55:54	Lambrate	45.478	9.224	Lambrate	45	91	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-11 03:10:09	A74863	2024-11-11 03:01:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-11 03:10:10	A246697	2024-11-11 02:59:50	Via Franco Albini	45.442	9.212	Via Franco Albini	28	66	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	66
2024-11-11 04:10:05	A97507	2024-11-11 04:07:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	36	74	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-11 04:10:07	A156526	2024-11-11 04:07:49	Lambrate	45.478	9.224	Lambrate	45	91	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	91
2024-11-11 04:10:09	A74863	2024-11-11 04:07:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	76
2024-11-11 04:10:10	A246697	2024-11-11 03:51:00	Via Franco Albini	45.442	9.212	Via Franco Albini	25	63	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	63
2024-11-11 05:10:06	A97507	2024-11-11 05:06:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	29	63	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	63
2024-11-11 05:10:08	A156526	2024-11-11 05:07:43	Lambrate	45.478	9.224	Lambrate	36	79	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	79
2024-11-11 05:10:09	A74863	2024-11-11 05:06:13	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	71	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	71
2024-11-11 05:10:10	A246697	2024-11-11 05:07:29	Via Franco Albini	45.442	9.212	Via Franco Albini	24	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	59
2024-11-11 06:10:06	A97507	2024-11-11 06:05:46	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	50
2024-11-11 06:10:08	A156526	2024-11-11 06:06:54	Lambrate	45.478	9.224	Lambrate	25	63	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	63
2024-11-11 06:10:09	A74863	2024-11-11 06:06:37	Via Federico Chopin	45.426	9.206	Via Federico Chopin	21	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-11 06:10:10	A246697	2024-11-11 06:04:35	Via Franco Albini	45.442	9.212	Via Franco Albini	23	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	60
2024-11-11 07:10:06	A97507	2024-11-11 07:06:01	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	43
2024-11-11 07:10:08	A156526	2024-11-11 07:06:04	Lambrate	45.478	9.224	Lambrate	22	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	56
2024-11-11 07:10:09	A74863	2024-11-11 07:06:35	Via Federico Chopin	45.426	9.206	Via Federico Chopin	21	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	70
2024-11-11 07:10:10	A246697	2024-11-11 07:04:16	Via Franco Albini	45.442	9.212	Via Franco Albini	21	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	59
2024-11-11 08:10:06	A97507	2024-11-11 08:06:37	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-11 08:10:08	A156526	2024-11-11 08:04:57	Lambrate	45.478	9.224	Lambrate	23	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	59
2024-11-11 08:10:09	A74863	2024-11-11 08:04:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	74	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-11 08:10:10	A246697	2024-11-11 08:06:10	Via Franco Albini	45.442	9.212	Via Franco Albini	24	59	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	59
2024-11-11 09:10:05	A97507	2024-11-11 09:02:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	45	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	45
2024-11-11 09:10:07	A156526	2024-11-11 09:04:34	Lambrate	45.478	9.224	Lambrate	18	50	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	50
2024-11-11 09:10:09	A74863	2024-11-11 09:02:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	26	78	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	78
2024-11-11 09:10:10	A246697	2024-11-11 09:02:10	Via Franco Albini	45.442	9.212	Via Franco Albini	16	55	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-11 10:10:05	A97507	2024-11-11 09:57:42	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	40	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	40
2024-11-11 10:10:08	A156526	2024-11-11 10:00:47	Lambrate	45.478	9.224	Lambrate	20	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	54
2024-11-11 10:10:09	A74863	2024-11-11 10:04:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-11 10:10:10	A246697	2024-11-11 10:00:53	Via Franco Albini	45.442	9.212	Via Franco Albini	21	61	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	61
2024-11-11 11:10:05	A97507	2024-11-11 11:05:52	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	50	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	50
2024-11-11 11:10:08	A156526	2024-11-11 11:07:44	Lambrate	45.478	9.224	Lambrate	17	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-11 11:10:09	A74863	2024-11-11 11:07:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	96	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	96
2024-11-11 11:10:10	A246697	2024-11-11 11:07:42	Via Franco Albini	45.442	9.212	Via Franco Albini	24	62	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	62
2024-11-11 12:10:05	A97507	2024-11-11 12:05:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-11 12:10:07	A156526	2024-11-11 12:04:53	Lambrate	45.478	9.224	Lambrate	29	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-11 12:10:09	A74863	2024-11-11 12:06:26	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	94	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	94
2024-11-11 12:10:10	A246697	2024-11-11 12:05:42	Via Franco Albini	45.442	9.212	Via Franco Albini	22	60	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	60
2024-11-11 13:10:06	A97507	2024-11-11 13:05:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-11 13:10:08	A156526	2024-11-11 13:04:53	Lambrate	45.478	9.224	Lambrate	10	39	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	39
2024-11-11 13:10:09	A74863	2024-11-11 13:01:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	76
2024-11-11 13:10:11	A246697	2024-11-11 13:04:30	Via Franco Albini	45.442	9.212	Via Franco Albini	24	58	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	58
2024-11-11 14:10:05	A97507	2024-11-11 14:03:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	28
2024-11-11 14:10:08	A156526	2024-11-11 14:04:02	Lambrate	45.478	9.224	Lambrate	30	68	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-11 14:10:09	A74863	2024-11-11 14:04:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-11 14:10:11	A246697	2024-11-11 14:03:32	Via Franco Albini	45.442	9.212	Via Franco Albini	18	47	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-11 15:10:06	A97507	2024-11-11 15:02:22	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	10	28	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	28
2024-11-11 15:10:08	A156526	2024-11-11 15:05:28	Lambrate	45.478	9.224	Lambrate	10	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	34
2024-11-11 15:10:09	A74863	2024-11-11 15:07:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	60	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	60
2024-11-11 15:10:11	A246697	2024-11-11 15:07:58	Via Franco Albini	45.442	9.212	Via Franco Albini	20	47	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-11 16:10:06	A97507	2024-11-11 16:07:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	37
2024-11-11 16:10:08	A156526	2024-11-11 16:05:26	Lambrate	45.478	9.224	Lambrate	14	41	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-11 16:10:09	A74863	2024-11-11 15:52:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	66	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	66
2024-11-11 16:10:10	A246697	2024-11-11 16:05:47	Via Franco Albini	45.442	9.212	Via Franco Albini	20	52	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	52
2024-11-11 17:10:05	A97507	2024-11-11 17:05:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	37
2024-11-11 17:10:08	A156526	2024-11-11 17:05:25	Lambrate	45.478	9.224	Lambrate	19	48	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	48
2024-11-11 17:10:09	A74863	2024-11-11 17:02:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	67
2024-11-11 17:10:10	A246697	2024-11-11 17:02:42	Via Franco Albini	45.442	9.212	Via Franco Albini	22	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 18:10:05	A97507	2024-11-11 18:06:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	15	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-11 18:10:08	A156526	2024-11-11 18:05:42	Lambrate	45.478	9.224	Lambrate	24	47	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-11 18:10:09	A74863	2024-11-11 18:07:10	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	73
2024-11-11 18:10:10	A246697	2024-11-11 18:05:50	Via Franco Albini	45.442	9.212	Via Franco Albini	20	48	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	48
2024-11-11 19:10:05	A97507	2024-11-11 19:01:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-11 19:10:07	A156526	2024-11-11 19:04:18	Lambrate	45.478	9.224	Lambrate	24	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 19:10:08	A74863	2024-11-11 19:01:27	Via Federico Chopin	45.426	9.206	Via Federico Chopin	25	67	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	67
2024-11-11 19:10:10	A246697	2024-11-11 19:04:40	Via Franco Albini	45.442	9.212	Via Franco Albini	23	51	https://aqicn.org/station/@A246697/	https://api.waqi.info/feed/A246697/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 19:25:11	A97507	2024-11-11 19:21:59	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	43
2024-11-11 19:25:13	A156526	2024-11-11 19:20:15	Lambrate	45.478	9.224	Lambrate	26	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 19:25:15	A74863	2024-11-11 19:21:25	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-11 19:25:16	A66889	2024-11-11 19:22:58	Oggiaro	45.486	9.19	Oggiaro	13	40	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	40
2024-11-11 20:10:05	A97507	2024-11-11 20:06:25	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	41	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-11 20:10:08	A156526	2024-11-11 20:06:24	Lambrate	45.478	9.224	Lambrate	23	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 20:10:09	A74863	2024-11-11 20:07:55	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-11 20:10:10	A66889	2024-11-11 20:07:01	Oggiaro	45.486	9.19	Oggiaro	22	47	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-11 21:10:06	A97507	2024-11-11 21:02:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	52
2024-11-11 21:10:08	A156526	2024-11-11 21:07:59	Lambrate	45.478	9.224	Lambrate	23	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 21:10:09	A74863	2024-11-11 21:04:46	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	74	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	74
2024-11-11 21:10:11	A66889	2024-11-11 21:06:29	Oggiaro	45.486	9.19	Oggiaro	16	49	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	49
2024-11-11 22:10:09	A97507	2024-11-11 22:07:14	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	49	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	49
2024-11-11 22:10:20	A156526	2024-11-11 22:06:58	Lambrate	45.478	9.224	Lambrate	25	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-11 22:10:23	A74863	2024-11-11 22:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	77
2024-11-11 22:10:27	A66889	2024-11-11 22:05:44	Oggiaro	45.486	9.19	Oggiaro	21	51	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-11 23:10:05	A97507	2024-11-11 23:03:10	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	48	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	48
2024-11-11 23:10:08	A156526	2024-11-11 23:05:47	Lambrate	45.478	9.224	Lambrate	20	54	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	54
2024-11-11 23:10:09	A74863	2024-11-11 23:06:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	77	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	77
2024-11-11 23:10:10	A66889	2024-11-11 23:07:55	Oggiaro	45.486	9.19	Oggiaro	16	45	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	45
2024-11-12 00:10:07	A97507	2024-11-12 00:06:48	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-12 00:11:15	A156526	2024-11-12 00:05:31	Lambrate	45.478	9.224	Lambrate	26	59	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	59
2024-11-12 00:11:16	A74863	2024-11-12 00:05:53	Via Federico Chopin	45.426	9.206	Via Federico Chopin	35	79	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	79
2024-11-12 00:11:17	A66889	2024-11-12 00:05:30	Oggiaro	45.486	9.19	Oggiaro	20	53	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	53
2024-11-12 01:10:05	A97507	2024-11-12 00:47:51	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	52	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	52
2024-11-12 01:10:07	A156526	2024-11-12 01:04:41	Lambrate	45.478	9.224	Lambrate	23	58	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	58
2024-11-12 01:10:09	A74863	2024-11-12 00:58:56	Via Federico Chopin	45.426	9.206	Via Federico Chopin	37	84	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	84
2024-11-12 01:10:10	A66889	2024-11-12 01:01:58	Oggiaro	45.486	9.19	Oggiaro	17	50	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	50
2024-11-12 02:10:06	A97507	2024-11-12 01:57:53	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	53	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	53
2024-11-12 02:10:08	A156526	2024-11-12 02:02:44	Lambrate	45.478	9.224	Lambrate	22	56	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	56
2024-11-12 02:10:09	A74863	2024-11-12 02:03:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	39	86	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	86
2024-11-12 02:10:10	A66889	2024-11-12 02:03:44	Oggiaro	45.486	9.19	Oggiaro	16	46	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	46
2024-11-12 03:10:05	A97507	2024-11-12 02:50:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	51	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-12 03:10:07	A156526	2024-11-12 03:02:13	Lambrate	45.478	9.224	Lambrate	25	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-12 03:10:08	A74863	2024-11-12 02:37:32	Via Federico Chopin	45.426	9.206	Via Federico Chopin	40	85	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	85
2024-11-12 03:10:10	A66889	2024-11-12 03:06:06	Oggiaro	45.486	9.19	Oggiaro	15	46	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	46
2024-11-12 04:10:06	A97507	2024-11-12 04:06:32	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	19	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-12 04:10:08	A156526	2024-11-12 04:06:48	Lambrate	45.478	9.224	Lambrate	20	53	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	53
2024-11-12 04:10:09	A74863	2024-11-12 04:01:58	Via Federico Chopin	45.426	9.206	Via Federico Chopin	36	80	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	80
2024-11-12 04:10:10	A66889	2024-11-12 04:05:47	Oggiaro	45.486	9.19	Oggiaro	14	41	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	41
2024-11-12 05:10:10	A97507	2024-11-12 05:07:04	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	42
2024-11-12 05:10:12	A156526	2024-11-12 05:05:58	Lambrate	45.478	9.224	Lambrate	20	49	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	49
2024-11-12 05:10:14	A74863	2024-11-12 05:03:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	34	76	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	76
2024-11-12 05:10:17	A66889	2024-11-12 05:07:35	Oggiaro	45.486	9.19	Oggiaro	10	31	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	31
2024-11-12 06:10:06	A97507	2024-11-12 06:06:20	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	16	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	42
2024-11-12 06:10:08	A156526	2024-11-12 06:05:29	Lambrate	45.478	9.224	Lambrate	18	45	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	45
2024-11-12 06:10:09	A74863	2024-11-12 06:03:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	69	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	69
2024-11-12 06:10:10	A66889	2024-11-12 06:07:35	Oggiaro	45.486	9.19	Oggiaro	12	38	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	38
2024-11-12 07:10:05	A97507	2024-11-12 07:06:45	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	24	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	46
2024-11-12 07:10:08	A156526	2024-11-12 07:07:13	Lambrate	45.478	9.224	Lambrate	23	51	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-12 07:10:09	A74863	2024-11-12 07:06:33	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	70
2024-11-12 07:10:10	A66889	2024-11-12 07:06:58	Oggiaro	45.486	9.19	Oggiaro	14	36	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	36
2024-11-12 08:10:06	A97507	2024-11-12 08:04:55	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	20	43	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	43
2024-11-12 08:10:08	A156526	2024-11-12 08:06:25	Lambrate	45.478	9.224	Lambrate	23	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-12 08:10:09	A74863	2024-11-12 08:04:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	32	73	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	73
2024-11-12 08:10:10	A66889	2024-11-12 08:04:28	Oggiaro	45.486	9.19	Oggiaro	17	43	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	43
2024-11-12 09:10:05	A97507	2024-11-12 09:07:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	42	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	42
2024-11-12 09:10:07	A156526	2024-11-12 09:02:10	Lambrate	45.478	9.224	Lambrate	23	50	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	50
2024-11-12 09:10:09	A74863	2024-11-12 09:06:28	Via Federico Chopin	45.426	9.206	Via Federico Chopin	29	70	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	70
2024-11-12 09:10:10	A66889	2024-11-12 09:05:32	Oggiaro	45.486	9.19	Oggiaro	15	46	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	46
2024-11-12 10:10:45	A97507	2024-11-12 10:04:28	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	11	31	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	31
2024-11-12 10:10:53	A156526	2024-11-12 10:06:09	Lambrate	45.478	9.224	Lambrate	19	38	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	38
2024-11-12 10:10:55	A74863	2024-11-12 10:02:42	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	62	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	62
2024-11-12 10:11:11	A66889	2024-11-12 10:04:21	Oggiaro	45.486	9.19	Oggiaro	13	37	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	37
2024-11-12 11:10:06	A97507	2024-11-12 11:00:00	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	12	36	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	36
2024-11-12 11:10:26	A156526	2024-11-12 10:58:43	Lambrate	45.478	9.224	Lambrate	19	42	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	42
2024-11-12 11:10:32	A74863	2024-11-12 10:59:49	Via Federico Chopin	45.426	9.206	Via Federico Chopin	27	63	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	63
2024-11-12 11:10:44	A66889	2024-11-12 10:59:53	Oggiaro	45.486	9.19	Oggiaro	20	44	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	44
2024-11-12 12:10:07	A97507	2024-11-12 12:04:18	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	47	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	47
2024-11-12 12:10:34	A156526	2024-11-12 11:58:36	Lambrate	45.478	9.224	Lambrate	27	57	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	57
2024-11-12 12:10:45	A74863	2024-11-12 11:53:15	Via Federico Chopin	45.426	9.206	Via Federico Chopin	30	68	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	68
2024-11-12 12:10:59	A66889	2024-11-12 11:59:44	Oggiaro	45.486	9.19	Oggiaro	20	51	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-12 13:10:15	A97507	2024-11-12 13:05:11	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	18	46	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	46
2024-11-12 13:10:34	A156526	2024-11-12 13:05:50	Lambrate	45.478	9.224	Lambrate	21	55	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	55
2024-11-12 13:10:43	A74863	2024-11-12 13:01:45	Via Federico Chopin	45.426	9.206	Via Federico Chopin	33	75	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	75
2024-11-12 13:10:48	A66889	2024-11-12 13:07:15	Oggiaro	45.486	9.19	Oggiaro	19	42	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	42
2024-11-12 14:10:05	A97507	2024-11-12 14:04:38	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	29	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	29
2024-11-12 14:10:07	A156526	2024-11-12 13:58:10	Lambrate	45.478	9.224	Lambrate	12	33	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	33
2024-11-12 14:10:08	A74863	2024-11-12 13:56:34	Via Federico Chopin	45.426	9.206	Via Federico Chopin	28	61	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	61
2024-11-12 14:10:10	A66889	2024-11-12 13:56:18	Oggiaro	45.486	9.19	Oggiaro	11	30	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	30
2024-11-12 15:10:06	A97507	2024-11-12 15:06:44	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	27	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	27
2024-11-12 15:10:08	A156526	2024-11-12 15:07:16	Lambrate	45.478	9.224	Lambrate	14	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	34
2024-11-12 15:10:09	A74863	2024-11-12 15:06:50	Via Federico Chopin	45.426	9.206	Via Federico Chopin	21	52	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	52
2024-11-12 15:10:11	A66889	2024-11-12 15:06:17	Oggiaro	45.486	9.19	Oggiaro	12	30	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	30
2024-11-12 16:10:05	A97507	2024-11-12 15:52:06	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	8	20	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	20
2024-11-12 16:10:08	A156526	2024-11-12 16:05:48	Lambrate	45.478	9.224	Lambrate	12	28	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	28
2024-11-12 16:10:09	A74863	2024-11-12 16:05:39	Via Federico Chopin	45.426	9.206	Via Federico Chopin	16	48	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	48
2024-11-12 16:10:10	A66889	2024-11-12 16:04:40	Oggiaro	45.486	9.19	Oggiaro	8	22	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	22
2024-11-12 17:10:05	A97507	2024-11-12 17:02:39	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	9	27	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	27
2024-11-12 17:10:07	A156526	2024-11-12 17:02:35	Lambrate	45.478	9.224	Lambrate	12	29	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	29
2024-11-12 17:10:08	A74863	2024-11-12 17:02:51	Via Federico Chopin	45.426	9.206	Via Federico Chopin	18	51	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	51
2024-11-12 17:10:10	A66889	2024-11-12 17:03:52	Oggiaro	45.486	9.19	Oggiaro	10	24	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	24
2024-11-12 18:10:06	A97507	2024-11-12 18:06:33	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	14	33	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	33
2024-11-12 18:10:08	A156526	2024-11-12 17:54:38	Lambrate	45.478	9.224	Lambrate	13	34	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	34
2024-11-12 18:10:09	A74863	2024-11-12 18:00:52	Via Federico Chopin	45.426	9.206	Via Federico Chopin	20	54	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	54
2024-11-12 18:10:10	A66889	2024-11-12 18:04:13	Oggiaro	45.486	9.19	Oggiaro	9	27	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	27
2024-11-12 19:10:05	A97507	2024-11-12 19:04:13	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	13	32	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	32
2024-11-12 19:10:08	A156526	2024-11-12 19:07:25	Lambrate	45.478	9.224	Lambrate	16	40	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	40
2024-11-12 19:10:09	A74863	2024-11-12 19:03:19	Via Federico Chopin	45.426	9.206	Via Federico Chopin	22	56	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	56
2024-11-12 19:10:10	A66889	2024-11-12 19:04:33	Oggiaro	45.486	9.19	Oggiaro	11	29	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	29
2024-11-12 20:10:05	A97507	2024-11-12 20:05:49	Corso 22 Marzo	45.462	9.21	Corso 22 Marzo	17	37	https://aqicn.org/station/@A97507/	https://api.waqi.info/feed/A97507/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	37
2024-11-12 20:10:07	A156526	2024-11-12 20:04:55	Lambrate	45.478	9.224	Lambrate	19	43	https://aqicn.org/station/@A156526/	https://api.waqi.info/feed/A156526/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	43
2024-11-12 20:10:08	A74863	2024-11-12 20:06:36	Via Federico Chopin	45.426	9.206	Via Federico Chopin	24	59	https://aqicn.org/station/@A74863/	https://api.waqi.info/feed/A74863/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	59
2024-11-12 20:10:10	A66889	2024-11-12 20:07:01	Oggiaro	45.486	9.19	Oggiaro	15	48	https://aqicn.org/station/@A66889/	https://api.waqi.info/feed/A66889/?token=d45fda67589e376593853b0fba950fc6d0dcbb65	48
\.


--
-- TOC entry 3014 (class 0 OID 16390)
-- Dependencies: 201
-- Data for Name: test_table; Type: TABLE DATA; Schema: public; Owner: colab
--

COPY public.test_table (id, name, age) FROM stdin;
11	Alice	30
12	Bob	25
13	Alice	30
14	Bob	25
15	Alice	30
16	Bob	25
17	Alice	30
18	Bob	25
19	Alice	30
20	Bob	25
21	Alice	30
22	Bob	25
23	Alice	30
24	Bob	25
25	Alice	30
26	Bob	25
27	Alice	30
28	Bob	25
29	Alice	30
30	Bob	25
31	Alice	30
32	Bob	25
33	Alice	30
34	Bob	25
35	Alice	30
36	Bob	25
37	Alice	30
38	Bob	25
39	Alice	30
40	Bob	25
41	Alice	30
42	Bob	25
43	\N	\N
44	\N	\N
45	\N	\N
46	\N	\N
47	Alice	30
48	Bob	25
49	Alice	30
50	Bob	25
\.


--
-- TOC entry 3015 (class 0 OID 16415)
-- Dependencies: 202
-- Data for Name: traffic_volume; Type: TABLE DATA; Schema: public; Owner: colab
--

COPY public.traffic_volume (station_id, etl_timestamp, traffic_volume) FROM stdin;
246697	2024-10-15 01:01:04.810165	707
21373	2024-10-15 01:01:05.127703	400
156526	2024-10-15 01:01:05.394971	430
74863	2024-10-15 01:01:05.668063	822
97507	2024-10-15 01:01:05.976379	562
246697	2024-10-15 02:01:04.856188	779
21373	2024-10-15 02:01:05.190027	421
156526	2024-10-15 02:01:05.461476	492
74863	2024-10-15 02:01:05.734002	835
97507	2024-10-15 02:01:06.04717	613
246697	2024-10-15 03:01:07.094702	673
21373	2024-10-15 03:01:07.433164	443
156526	2024-10-15 03:01:07.719149	493
74863	2024-10-15 03:01:07.97827	874
97507	2024-10-15 03:01:08.278802	598
246697	2024-10-15 04:01:05.318851	750
21373	2024-10-15 04:01:05.682474	527
156526	2024-10-15 04:01:05.960473	415
74863	2024-10-15 04:01:06.233857	884
97507	2024-10-15 04:01:06.552505	548
246697	2024-10-15 05:01:05.389065	791
21373	2024-10-15 05:01:05.730104	537
156526	2024-10-15 05:01:06.004563	421
74863	2024-10-15 05:01:06.268747	830
97507	2024-10-15 05:01:06.587567	699
246697	2024-10-15 06:01:05.28653	904
21373	2024-10-15 06:01:05.65103	515
156526	2024-10-15 06:01:05.930846	507
74863	2024-10-15 06:01:06.197219	793
97507	2024-10-15 06:01:06.52329	578
246697	2024-10-15 07:01:05.076923	467
21373	2024-10-15 07:01:05.414069	314
156526	2024-10-15 07:01:05.817632	294
74863	2024-10-15 07:01:06.098486	652
97507	2024-10-15 07:01:06.431164	340
246697	2024-10-15 08:01:05.277348	248
21373	2024-10-15 08:01:05.74629	165
156526	2024-10-15 08:01:06.111775	156
74863	2024-10-15 08:01:06.376871	629
97507	2024-10-15 08:01:06.769639	238
246697	2024-10-15 09:01:05.018736	184
21373	2024-10-15 09:01:05.481282	173
156526	2024-10-15 09:01:05.850754	139
74863	2024-10-15 09:01:06.12706	646
97507	2024-10-15 09:01:06.548548	164
246697	2024-10-15 10:01:05.29693	221
21373	2024-10-15 10:01:05.724885	186
156526	2024-10-15 10:01:06.164434	154
74863	2024-10-15 10:01:06.448113	648
97507	2024-10-15 10:01:06.859066	186
246697	2024-10-15 11:01:04.710779	301
21373	2024-10-15 11:01:05.23169	177
156526	2024-10-15 11:01:05.586804	208
74863	2024-10-15 11:01:05.873312	558
97507	2024-10-15 11:01:06.289488	197
246697	2024-10-15 12:01:05.036707	252
21373	2024-10-15 12:01:05.454732	201
156526	2024-10-15 12:01:05.802167	192
74863	2024-10-15 12:01:06.138821	618
97507	2024-10-15 12:01:06.570639	196
246697	2024-10-15 13:01:05.29061	370
21373	2024-10-15 13:01:05.722875	205
156526	2024-10-15 13:01:06.066716	243
74863	2024-10-15 13:01:06.331176	668
97507	2024-10-15 13:01:06.717541	235
246697	2024-10-15 14:01:05.160562	346
21373	2024-10-15 14:01:05.540216	214
156526	2024-10-15 14:01:05.863439	233
74863	2024-10-15 14:01:06.143948	752
97507	2024-10-15 14:01:06.543215	241
246697	2024-10-15 15:01:04.338715	360
21373	2024-10-15 15:01:04.737313	186
156526	2024-10-15 15:01:05.060596	237
74863	2024-10-15 15:01:05.341948	597
97507	2024-10-15 15:01:05.807016	211
246697	2024-10-15 16:01:04.741344	279
21373	2024-10-15 16:01:05.184099	202
156526	2024-10-15 16:01:05.51799	180
74863	2024-10-15 16:01:05.786558	616
97507	2024-10-15 16:01:06.190327	208
246697	2024-10-15 17:01:05.16297	254
21373	2024-10-15 17:01:05.582565	163
156526	2024-10-15 17:01:05.943065	172
74863	2024-10-15 17:01:06.226521	605
97507	2024-10-15 17:01:06.604016	218
246697	2024-10-15 18:01:05.32972	206
21373	2024-10-15 18:01:05.777026	185
156526	2024-10-15 18:01:06.149595	156
74863	2024-10-15 18:01:06.436764	524
97507	2024-10-15 18:01:06.839875	207
246697	2024-10-15 19:01:04.683581	210
21373	2024-10-15 19:01:05.127582	167
156526	2024-10-15 19:01:05.532671	145
74863	2024-10-15 19:01:05.818932	567
97507	2024-10-15 19:01:06.222897	168
246697	2024-10-15 20:01:04.870768	244
21373	2024-10-15 20:01:05.324932	189
156526	2024-10-15 20:01:05.679081	179
74863	2024-10-15 20:01:05.954019	616
97507	2024-10-15 20:01:06.373068	186
246697	2024-10-15 21:01:04.966057	542
21373	2024-10-15 21:01:05.363178	242
156526	2024-10-15 21:01:05.724154	274
74863	2024-10-15 21:01:05.994896	698
97507	2024-10-15 21:01:06.374568	285
246697	2024-10-15 22:01:05.088812	577
21373	2024-10-15 22:01:05.413426	331
156526	2024-10-15 22:01:05.720097	318
74863	2024-10-15 22:01:06.057212	799
97507	2024-10-15 22:01:06.397161	366
246697	2024-10-15 23:01:05.205002	574
21373	2024-10-15 23:01:05.539289	275
156526	2024-10-15 23:01:05.933398	287
74863	2024-10-15 23:01:06.213395	738
97507	2024-10-15 23:01:06.545971	435
246697	2024-10-16 00:01:04.504835	692
21373	2024-10-16 00:01:04.86672	369
156526	2024-10-16 00:01:05.142147	439
74863	2024-10-16 00:01:05.425672	813
97507	2024-10-16 00:01:05.769489	421
246697	2024-10-16 01:01:04.587946	778
21373	2024-10-16 01:01:04.869922	372
156526	2024-10-16 01:01:05.363826	397
74863	2024-10-16 01:01:05.64981	783
97507	2024-10-16 01:01:05.960996	463
246697	2024-10-16 02:01:04.813156	777
21373	2024-10-16 02:01:05.109197	437
156526	2024-10-16 02:01:05.397606	481
74863	2024-10-16 02:01:05.680136	852
97507	2024-10-16 02:01:05.988006	533
246697	2024-10-16 03:01:05.057568	648
21373	2024-10-16 03:01:05.36368	498
156526	2024-10-16 03:01:05.640101	447
74863	2024-10-16 03:01:05.918433	874
97507	2024-10-16 03:01:06.241034	608
246697	2024-10-16 04:01:05.09077	740
21373	2024-10-16 04:01:05.375751	501
156526	2024-10-16 04:01:05.750526	413
74863	2024-10-16 04:01:06.026226	839
97507	2024-10-16 04:01:06.328662	548
246697	2024-10-16 05:01:05.140751	946
21373	2024-10-16 05:01:05.45244	520
156526	2024-10-16 05:01:05.736136	460
74863	2024-10-16 05:01:06.015093	833
97507	2024-10-16 05:01:06.322294	584
246697	2024-10-16 06:01:04.999661	891
21373	2024-10-16 06:01:05.284388	462
156526	2024-10-16 06:01:05.614092	495
74863	2024-10-16 06:01:05.880722	858
97507	2024-10-16 06:01:06.203887	581
246697	2024-10-16 07:01:05.247032	447
21373	2024-10-16 07:01:05.645889	313
156526	2024-10-16 07:01:05.937816	285
74863	2024-10-16 07:01:06.218259	691
97507	2024-10-16 07:01:06.575236	327
246697	2024-10-16 08:01:05.530839	265
21373	2024-10-16 08:01:06.080757	135
156526	2024-10-16 08:01:06.435412	167
74863	2024-10-16 08:01:06.724115	653
97507	2024-10-16 08:01:07.150447	181
246697	2024-10-16 09:01:05.181398	181
21373	2024-10-16 09:01:05.779701	146
156526	2024-10-16 09:01:06.162956	124
74863	2024-10-16 09:01:06.456364	552
97507	2024-10-16 09:01:06.854341	133
246697	2024-10-16 10:01:05.088723	265
21373	2024-10-16 10:01:05.517655	165
156526	2024-10-16 10:01:05.975194	167
74863	2024-10-16 10:01:06.265927	662
97507	2024-10-16 10:01:06.695406	187
246697	2024-10-16 11:01:04.909778	246
21373	2024-10-16 11:01:05.3212	182
156526	2024-10-16 11:01:05.660242	181
74863	2024-10-16 11:01:05.996496	726
97507	2024-10-16 11:01:06.420628	169
246697	2024-10-16 12:01:05.153364	254
21373	2024-10-16 12:01:05.586101	167
156526	2024-10-16 12:01:05.996082	245
74863	2024-10-16 12:01:06.305149	630
97507	2024-10-16 12:01:06.715235	161
246697	2024-10-16 13:01:04.769897	321
21373	2024-10-16 13:01:05.173874	189
156526	2024-10-16 13:01:05.642111	209
74863	2024-10-16 13:01:05.911627	666
97507	2024-10-16 13:01:06.308449	183
246697	2024-10-16 14:01:05.208374	289
21373	2024-10-16 14:01:05.670368	196
156526	2024-10-16 14:01:06.008788	205
74863	2024-10-16 14:01:06.294653	578
97507	2024-10-16 14:01:06.691283	219
246697	2024-10-16 15:01:05.413117	310
21373	2024-10-16 15:01:05.796183	216
156526	2024-10-16 15:01:06.146629	187
74863	2024-10-16 15:01:06.492978	575
97507	2024-10-16 15:01:06.879782	201
246697	2024-10-16 16:01:05.019205	288
21373	2024-10-16 16:01:05.41751	193
156526	2024-10-16 16:01:05.728324	204
74863	2024-10-16 16:01:06.010178	610
97507	2024-10-16 16:01:06.411895	192
246697	2024-10-16 17:01:05.322211	225
21373	2024-10-16 17:01:05.730099	161
156526	2024-10-16 17:01:06.125325	147
74863	2024-10-16 17:01:06.459654	621
97507	2024-10-16 17:01:06.866646	174
246697	2024-10-16 18:01:04.927889	202
21373	2024-10-16 18:01:05.419818	153
156526	2024-10-16 18:01:05.777544	157
74863	2024-10-16 18:01:06.053508	564
97507	2024-10-16 18:01:06.468721	179
246697	2024-10-16 19:01:05.306891	218
21373	2024-10-16 19:01:05.734646	145
156526	2024-10-16 19:01:06.167664	137
74863	2024-10-16 19:01:06.447944	535
97507	2024-10-16 19:01:06.881344	141
246697	2024-10-16 20:01:04.898157	274
21373	2024-10-16 20:01:05.38523	170
156526	2024-10-16 20:01:05.783071	124
74863	2024-10-16 20:01:06.067556	586
97507	2024-10-16 20:01:06.484717	197
246697	2024-10-16 21:01:05.349921	495
21373	2024-10-16 21:01:05.79403	197
156526	2024-10-16 21:01:06.105318	328
74863	2024-10-16 21:01:06.384752	677
97507	2024-10-16 21:01:06.733322	255
246697	2024-10-16 22:01:04.70261	662
21373	2024-10-16 22:01:05.089622	315
156526	2024-10-16 22:01:05.390318	284
74863	2024-10-16 22:01:05.674205	774
97507	2024-10-16 22:01:06.01819	396
246697	2024-10-16 23:01:04.846247	546
21373	2024-10-16 23:01:05.246966	278
156526	2024-10-16 23:01:05.552	397
74863	2024-10-16 23:01:05.825388	758
97507	2024-10-16 23:01:06.163579	407
246697	2024-10-17 00:01:04.921874	628
21373	2024-10-17 00:01:05.31215	295
156526	2024-10-17 00:01:05.603752	405
74863	2024-10-17 00:01:05.871232	748
97507	2024-10-17 00:01:06.207949	391
246697	2024-10-17 01:01:04.916239	635
21373	2024-10-17 01:01:05.21471	407
156526	2024-10-17 01:01:05.503392	386
74863	2024-10-17 01:01:05.775593	836
97507	2024-10-17 01:01:06.096278	465
246697	2024-10-17 02:01:05.002713	702
21373	2024-10-17 02:01:05.282871	465
156526	2024-10-17 02:01:05.573305	436
74863	2024-10-17 02:01:05.887565	788
97507	2024-10-17 02:01:06.196302	557
246697	2024-10-17 03:01:04.630149	740
21373	2024-10-17 03:01:04.957224	509
156526	2024-10-17 03:01:05.250698	466
74863	2024-10-17 03:01:05.524683	842
97507	2024-10-17 03:01:05.834359	580
246697	2024-10-17 04:01:04.567669	733
21373	2024-10-17 04:01:04.843746	547
156526	2024-10-17 04:01:05.132818	413
74863	2024-10-17 04:01:05.465824	839
97507	2024-10-17 04:01:05.778255	572
246697	2024-10-17 05:01:04.627965	934
21373	2024-10-17 05:01:04.96794	601
156526	2024-10-17 05:01:05.256286	519
74863	2024-10-17 05:01:05.542402	799
97507	2024-10-17 05:01:05.853757	602
246697	2024-10-17 06:01:04.60126	785
21373	2024-10-17 06:01:04.939736	528
156526	2024-10-17 06:01:05.234198	476
74863	2024-10-17 06:01:05.51614	856
97507	2024-10-17 06:01:05.831472	527
246697	2024-10-17 07:01:04.778842	521
21373	2024-10-17 07:01:05.222607	334
156526	2024-10-17 07:01:05.530363	300
74863	2024-10-17 07:01:05.819029	729
97507	2024-10-17 07:01:06.145592	409
246697	2024-10-17 08:01:05.240766	258
21373	2024-10-17 08:01:05.733609	143
156526	2024-10-17 08:01:06.100214	145
74863	2024-10-17 08:01:06.383866	528
97507	2024-10-17 08:01:06.804335	164
246697	2024-10-17 09:01:04.927363	220
21373	2024-10-17 09:01:05.358704	136
156526	2024-10-17 09:01:05.777829	130
74863	2024-10-17 09:01:06.05978	619
97507	2024-10-17 09:01:06.480733	141
246697	2024-10-17 10:01:05.238629	231
21373	2024-10-17 10:01:05.661861	163
156526	2024-10-17 10:01:06.026874	222
74863	2024-10-17 10:01:06.320674	516
97507	2024-10-17 10:01:06.731081	202
246697	2024-10-17 11:01:05.05381	297
21373	2024-10-17 11:01:05.65732	191
156526	2024-10-17 11:01:06.061787	195
74863	2024-10-17 11:01:06.350911	638
97507	2024-10-17 11:01:06.787318	190
246697	2024-10-17 12:01:04.649999	339
21373	2024-10-17 12:01:05.092405	188
156526	2024-10-17 12:01:05.463811	191
74863	2024-10-17 12:01:05.742075	622
97507	2024-10-17 12:01:06.162426	183
246697	2024-10-17 13:01:05.315945	343
21373	2024-10-17 13:01:05.852029	193
156526	2024-10-17 13:01:06.17394	283
74863	2024-10-17 13:01:06.446384	653
97507	2024-10-17 13:01:06.866921	212
246697	2024-10-17 14:01:05.545972	326
21373	2024-10-17 14:01:05.929247	195
156526	2024-10-17 14:01:06.362369	207
74863	2024-10-17 14:01:06.639039	675
97507	2024-10-17 14:01:07.027027	219
246697	2024-10-17 15:01:04.888753	357
21373	2024-10-17 15:01:05.296623	185
156526	2024-10-17 15:01:05.689321	204
74863	2024-10-17 15:01:05.971635	576
97507	2024-10-17 15:01:06.38843	176
246697	2024-10-17 16:01:05.011463	289
21373	2024-10-17 16:01:05.405301	179
156526	2024-10-17 16:01:05.791073	174
74863	2024-10-17 16:01:06.076497	645
97507	2024-10-17 16:01:06.545895	171
246697	2024-10-17 17:01:04.996897	225
21373	2024-10-17 17:01:05.461618	129
156526	2024-10-17 17:01:05.824737	152
74863	2024-10-17 17:01:06.103781	697
97507	2024-10-17 17:01:06.523934	179
246697	2024-10-17 18:01:04.840149	213
21373	2024-10-17 18:01:05.263248	188
156526	2024-10-17 18:01:05.676054	159
74863	2024-10-17 18:01:05.953971	599
97507	2024-10-17 18:01:06.368641	179
246697	2024-10-17 19:01:04.937084	234
21373	2024-10-17 19:01:05.382889	155
156526	2024-10-17 19:01:05.863951	143
74863	2024-10-17 19:01:06.135035	634
97507	2024-10-17 19:01:06.556647	164
246697	2024-10-17 20:01:04.797795	294
21373	2024-10-17 20:01:05.270165	190
156526	2024-10-17 20:01:05.640142	166
74863	2024-10-17 20:01:05.932554	648
97507	2024-10-17 20:01:06.323767	206
246697	2024-10-17 21:01:04.792705	496
21373	2024-10-17 21:01:05.147461	237
156526	2024-10-17 21:01:05.473896	238
74863	2024-10-17 21:01:05.754357	668
97507	2024-10-17 21:01:06.144915	255
246697	2024-10-17 22:01:04.647473	626
21373	2024-10-17 22:01:05.015609	290
156526	2024-10-17 22:01:05.31557	318
74863	2024-10-17 22:01:05.629849	642
97507	2024-10-17 22:01:05.988864	317
246697	2024-10-17 23:01:04.842139	580
21373	2024-10-17 23:01:05.326268	310
156526	2024-10-17 23:01:05.634487	322
74863	2024-10-17 23:01:05.912133	796
97507	2024-10-17 23:01:06.246897	400
246697	2024-10-18 00:01:04.814276	693
21373	2024-10-18 00:01:05.148894	286
156526	2024-10-18 00:01:05.477794	350
74863	2024-10-18 00:01:05.758401	844
97507	2024-10-18 00:01:06.084158	435
246697	2024-10-18 01:01:05.084701	624
21373	2024-10-18 01:01:05.439389	285
156526	2024-10-18 01:01:05.733624	417
74863	2024-10-18 01:01:06.006112	835
97507	2024-10-18 01:01:06.334162	411
246697	2024-10-18 02:01:04.835059	698
21373	2024-10-18 02:01:05.21117	496
156526	2024-10-18 02:01:05.49163	418
74863	2024-10-18 02:01:05.770177	903
97507	2024-10-18 02:01:06.083728	553
246697	2024-10-18 03:01:04.502649	805
21373	2024-10-18 03:01:04.784949	529
156526	2024-10-18 03:01:05.138636	471
74863	2024-10-18 03:01:05.413967	847
97507	2024-10-18 03:01:05.728392	594
246697	2024-10-18 04:01:05.300484	733
21373	2024-10-18 04:01:05.584851	569
156526	2024-10-18 04:01:05.877187	444
74863	2024-10-18 04:01:06.225912	890
97507	2024-10-18 04:01:06.5434	517
246697	2024-10-18 05:01:04.693413	927
21373	2024-10-18 05:01:04.977706	592
156526	2024-10-18 05:01:05.265955	496
74863	2024-10-18 05:01:05.577118	851
97507	2024-10-18 05:01:05.895789	644
246697	2024-10-18 06:01:04.78977	818
21373	2024-10-18 06:01:05.143237	539
156526	2024-10-18 06:01:05.430151	482
74863	2024-10-18 06:01:05.703677	884
97507	2024-10-18 06:01:06.029873	490
246697	2024-10-18 07:01:05.174255	572
21373	2024-10-18 07:01:05.524652	266
156526	2024-10-18 07:01:05.876148	296
74863	2024-10-18 07:01:06.148381	713
97507	2024-10-18 07:01:06.487664	425
246697	2024-10-18 08:01:04.847235	267
21373	2024-10-18 08:01:05.361867	159
156526	2024-10-18 08:01:05.715566	156
74863	2024-10-18 08:01:05.999932	579
97507	2024-10-18 08:01:06.418269	197
246697	2024-10-18 09:01:05.133446	179
21373	2024-10-18 09:01:05.566089	156
156526	2024-10-18 09:01:05.978354	120
74863	2024-10-18 09:01:06.25923	622
97507	2024-10-18 09:01:06.67116	167
246697	2024-10-18 10:01:05.275173	268
21373	2024-10-18 10:01:05.68346	159
156526	2024-10-18 10:01:06.057184	148
74863	2024-10-18 10:01:06.405876	649
97507	2024-10-18 10:01:06.823432	168
246697	2024-10-18 11:01:05.368864	229
21373	2024-10-18 11:01:05.802267	154
156526	2024-10-18 11:01:06.276742	170
74863	2024-10-18 11:01:06.563905	549
97507	2024-10-18 11:01:06.987503	169
246697	2024-10-18 12:01:05.044458	296
21373	2024-10-18 12:01:05.506767	162
156526	2024-10-18 12:01:05.847709	185
74863	2024-10-18 12:01:06.132581	621
97507	2024-10-18 12:01:06.532836	156
246697	2024-10-18 13:01:05.751711	261
21373	2024-10-18 13:01:06.173303	148
156526	2024-10-18 13:01:06.589365	168
74863	2024-10-18 13:01:06.877613	667
97507	2024-10-18 13:01:07.279785	184
246697	2024-10-18 14:01:04.706695	249
21373	2024-10-18 14:01:05.132995	177
156526	2024-10-18 14:01:05.483757	170
74863	2024-10-18 14:01:05.765741	679
97507	2024-10-18 14:01:06.157438	213
246697	2024-10-18 15:01:04.886588	322
21373	2024-10-18 15:01:05.300567	168
156526	2024-10-18 15:01:05.671936	170
74863	2024-10-18 15:01:06.047499	678
97507	2024-10-18 15:01:06.457583	176
246697	2024-10-18 16:01:05.078471	260
21373	2024-10-18 16:01:05.582929	150
156526	2024-10-18 16:01:05.949258	189
74863	2024-10-18 16:01:06.226009	704
97507	2024-10-18 16:01:06.657488	215
246697	2024-10-18 17:01:05.231207	232
21373	2024-10-18 17:01:05.731707	158
156526	2024-10-18 17:01:06.124549	155
74863	2024-10-18 17:01:06.406958	608
97507	2024-10-18 17:01:06.834094	171
246697	2024-10-18 18:01:05.12887	224
21373	2024-10-18 18:01:05.634023	176
156526	2024-10-18 18:01:06.003968	172
74863	2024-10-18 18:01:06.283262	623
97507	2024-10-18 18:01:06.681169	211
246697	2024-10-18 19:01:05.017771	195
21373	2024-10-18 19:01:05.43128	155
156526	2024-10-18 19:01:05.823166	163
74863	2024-10-18 19:01:06.116519	613
97507	2024-10-18 19:01:06.532547	175
246697	2024-10-18 20:01:04.912009	257
21373	2024-10-18 20:01:05.404973	135
156526	2024-10-18 20:01:05.775329	172
74863	2024-10-18 20:01:06.047793	700
97507	2024-10-18 20:01:06.478181	173
246697	2024-10-18 21:01:05.220762	373
21373	2024-10-18 21:01:05.651184	161
156526	2024-10-18 21:01:06.047834	192
74863	2024-10-18 21:01:06.323248	765
97507	2024-10-18 21:01:06.744758	198
246697	2024-10-18 22:01:05.236927	570
21373	2024-10-18 22:01:05.601886	249
156526	2024-10-18 22:01:05.973528	308
74863	2024-10-18 22:01:06.256247	735
97507	2024-10-18 22:01:06.624449	260
246697	2024-10-18 23:01:04.969184	628
21373	2024-10-18 23:01:05.418286	261
156526	2024-10-18 23:01:05.734896	281
74863	2024-10-18 23:01:06.01072	798
97507	2024-10-18 23:01:06.381274	276
246697	2024-10-19 00:01:04.496509	429
21373	2024-10-19 00:01:04.90025	273
156526	2024-10-19 00:01:05.196801	338
74863	2024-10-19 00:01:05.487228	768
97507	2024-10-19 00:01:05.828864	295
246697	2024-10-19 01:01:04.89638	631
21373	2024-10-19 01:01:05.28543	268
156526	2024-10-19 01:01:05.583901	350
74863	2024-10-19 01:01:05.855236	692
97507	2024-10-19 01:01:06.199769	371
246697	2024-10-19 02:01:04.843956	623
21373	2024-10-19 02:01:05.162439	334
156526	2024-10-19 02:01:05.514164	432
74863	2024-10-19 02:01:05.782312	883
97507	2024-10-19 02:01:06.111515	562
246697	2024-10-19 03:01:05.043851	805
21373	2024-10-19 03:01:05.425293	484
156526	2024-10-19 03:01:05.716355	408
74863	2024-10-19 03:01:05.993137	790
97507	2024-10-19 03:01:06.317244	553
246697	2024-10-19 04:01:05.308351	830
21373	2024-10-19 04:01:05.631753	600
156526	2024-10-19 04:01:05.910504	478
74863	2024-10-19 04:01:06.187423	847
97507	2024-10-19 04:01:06.504345	610
246697	2024-10-19 05:01:04.578962	795
21373	2024-10-19 05:01:04.8831	528
156526	2024-10-19 05:01:05.1697	452
74863	2024-10-19 05:01:05.44365	863
97507	2024-10-19 05:01:05.762693	584
246697	2024-10-19 06:01:05.094809	806
21373	2024-10-19 06:01:05.382889	480
156526	2024-10-19 06:01:05.713769	489
74863	2024-10-19 06:01:05.996783	837
97507	2024-10-19 06:01:06.315103	454
246697	2024-10-19 07:01:04.785054	472
21373	2024-10-19 07:01:05.149875	355
156526	2024-10-19 07:01:05.429434	388
74863	2024-10-19 07:01:05.699373	790
97507	2024-10-19 07:01:06.060872	344
246697	2024-10-19 08:01:05.291177	505
21373	2024-10-19 08:01:05.660056	256
156526	2024-10-19 08:01:05.944118	403
74863	2024-10-19 08:01:06.243877	678
97507	2024-10-19 08:01:06.581858	417
246697	2024-10-19 09:01:05.123829	419
21373	2024-10-19 09:01:05.538469	300
156526	2024-10-19 09:01:05.840125	324
74863	2024-10-19 09:01:06.11291	753
97507	2024-10-19 09:01:06.473189	334
246697	2024-10-19 10:01:05.267849	348
21373	2024-10-19 10:01:05.653077	230
156526	2024-10-19 10:01:06.003036	261
74863	2024-10-19 10:01:06.280809	628
97507	2024-10-19 10:01:06.673861	256
246697	2024-10-19 11:01:04.986585	265
21373	2024-10-19 11:01:05.383232	212
156526	2024-10-19 11:01:05.714214	241
74863	2024-10-19 11:01:06.061389	608
97507	2024-10-19 11:01:06.453148	208
246697	2024-10-19 12:01:05.064852	278
21373	2024-10-19 12:01:05.508233	173
156526	2024-10-19 12:01:05.938796	218
74863	2024-10-19 12:01:06.223965	627
97507	2024-10-19 12:01:06.627017	189
246697	2024-10-19 13:01:05.186931	270
21373	2024-10-19 13:01:05.672557	181
156526	2024-10-19 13:01:06.036234	224
74863	2024-10-19 13:01:06.31941	716
97507	2024-10-19 13:01:06.712541	193
246697	2024-10-19 14:01:04.91303	455
21373	2024-10-19 14:01:05.293913	220
156526	2024-10-19 14:01:05.59379	333
74863	2024-10-19 14:01:05.872114	711
97507	2024-10-19 14:01:06.286616	299
246697	2024-10-19 15:01:04.895422	404
21373	2024-10-19 15:01:05.289163	211
156526	2024-10-19 15:01:05.620003	230
74863	2024-10-19 15:01:05.958471	573
97507	2024-10-19 15:01:06.34638	244
246697	2024-10-19 16:01:04.872351	295
21373	2024-10-19 16:01:05.277315	179
156526	2024-10-19 16:01:05.598291	213
74863	2024-10-19 16:01:05.942012	634
97507	2024-10-19 16:01:06.304778	235
246697	2024-10-19 17:01:04.714115	281
21373	2024-10-19 17:01:05.146064	194
156526	2024-10-19 17:01:05.47411	265
74863	2024-10-19 17:01:05.778439	621
97507	2024-10-19 17:01:06.16734	210
246697	2024-10-19 18:01:04.836941	277
21373	2024-10-19 18:01:05.247697	199
156526	2024-10-19 18:01:05.638556	253
74863	2024-10-19 18:01:05.918615	534
97507	2024-10-19 18:01:06.311169	232
246697	2024-10-19 19:01:05.014816	303
21373	2024-10-19 19:01:05.474043	192
156526	2024-10-19 19:01:05.810551	230
74863	2024-10-19 19:01:06.09347	625
97507	2024-10-19 19:01:06.495698	194
246697	2024-10-19 20:01:05.022334	278
21373	2024-10-19 20:01:05.41367	194
156526	2024-10-19 20:01:05.781957	228
74863	2024-10-19 20:01:06.068268	620
97507	2024-10-19 20:01:06.448015	198
246697	2024-10-19 21:01:04.896	389
21373	2024-10-19 21:01:05.438178	158
156526	2024-10-19 21:01:05.790854	242
74863	2024-10-19 21:01:06.076738	673
97507	2024-10-19 21:01:06.476159	215
246697	2024-10-19 22:01:05.198905	553
21373	2024-10-19 22:01:05.644909	198
156526	2024-10-19 22:01:05.9746	237
74863	2024-10-19 22:01:06.250949	786
97507	2024-10-19 22:01:06.641341	279
246697	2024-10-19 23:01:05.015016	582
21373	2024-10-19 23:01:05.439296	244
156526	2024-10-19 23:01:05.74998	327
74863	2024-10-19 23:01:06.036518	817
97507	2024-10-19 23:01:06.396768	295
246697	2024-10-20 00:01:04.553369	389
21373	2024-10-20 00:01:04.948391	235
156526	2024-10-20 00:01:05.281324	249
74863	2024-10-20 00:01:05.55383	747
97507	2024-10-20 00:01:05.909692	297
246697	2024-10-20 01:01:04.995131	529
21373	2024-10-20 01:01:05.366202	244
156526	2024-10-20 01:01:05.677741	333
74863	2024-10-20 01:01:05.949435	708
97507	2024-10-20 01:01:06.306689	322
246697	2024-10-20 02:01:04.595036	661
21373	2024-10-20 02:01:04.917951	302
156526	2024-10-20 02:01:05.204208	497
74863	2024-10-20 02:01:05.486569	851
97507	2024-10-20 02:01:05.818432	457
246697	2024-10-20 03:01:04.364128	773
21373	2024-10-20 03:01:04.703997	512
156526	2024-10-20 03:01:04.98295	460
74863	2024-10-20 03:01:05.263583	807
97507	2024-10-20 03:01:05.581563	495
246697	2024-10-20 04:01:04.763172	776
21373	2024-10-20 04:01:05.057281	471
156526	2024-10-20 04:01:05.392324	468
74863	2024-10-20 04:01:05.66219	842
97507	2024-10-20 04:01:05.979737	656
246697	2024-10-20 05:01:05.041981	835
21373	2024-10-20 05:01:05.341433	597
156526	2024-10-20 05:01:05.631804	550
74863	2024-10-20 05:01:05.905467	888
97507	2024-10-20 05:01:06.220073	623
246697	2024-10-20 06:01:04.399865	837
21373	2024-10-20 06:01:04.711255	513
156526	2024-10-20 06:01:05.093745	535
74863	2024-10-20 06:01:05.360849	867
97507	2024-10-20 06:01:05.682645	595
246697	2024-10-20 07:01:04.969727	657
21373	2024-10-20 07:01:05.254048	433
156526	2024-10-20 07:01:05.536041	364
74863	2024-10-20 07:01:06.032307	864
97507	2024-10-20 07:01:06.343226	519
246697	2024-10-20 08:01:05.302416	685
21373	2024-10-20 08:01:05.590096	388
156526	2024-10-20 08:01:05.939282	435
74863	2024-10-20 08:01:06.215797	735
97507	2024-10-20 08:01:06.528211	571
246697	2024-10-20 09:01:05.050218	626
21373	2024-10-20 09:01:05.368578	395
156526	2024-10-20 09:01:05.683688	477
74863	2024-10-20 09:01:05.964966	737
97507	2024-10-20 09:01:06.288562	539
246697	2024-10-20 10:01:05.553235	580
21373	2024-10-20 10:01:05.953996	316
156526	2024-10-20 10:01:06.240971	424
74863	2024-10-20 10:01:06.523432	729
97507	2024-10-20 10:01:06.849502	408
246697	2024-10-20 11:01:04.844483	413
21373	2024-10-20 11:01:05.226248	268
156526	2024-10-20 11:01:05.970667	342
74863	2024-10-20 11:01:06.246131	726
97507	2024-10-20 11:01:06.619246	308
246697	2024-10-20 12:01:05.224744	479
21373	2024-10-20 12:01:05.65574	198
156526	2024-10-20 12:01:05.972796	274
74863	2024-10-20 12:01:06.257332	766
97507	2024-10-20 12:01:06.690425	280
246697	2024-10-20 13:01:05.334672	532
21373	2024-10-20 13:01:05.791452	191
156526	2024-10-20 13:01:06.092724	270
74863	2024-10-20 13:01:06.385823	637
97507	2024-10-20 13:01:06.747599	273
246697	2024-10-20 14:01:05.098351	565
21373	2024-10-20 14:01:05.467127	243
156526	2024-10-20 14:01:05.853973	405
74863	2024-10-20 14:01:06.121722	776
97507	2024-10-20 14:01:06.478429	325
246697	2024-10-20 15:01:05.049164	626
21373	2024-10-20 15:01:05.459813	248
156526	2024-10-20 15:01:05.759614	376
74863	2024-10-20 15:01:06.025137	683
97507	2024-10-20 15:01:06.366584	346
246697	2024-10-20 16:01:04.693222	372
21373	2024-10-20 16:01:05.08937	229
156526	2024-10-20 16:01:05.475438	316
74863	2024-10-20 16:01:05.747555	737
97507	2024-10-20 16:01:06.102912	244
246697	2024-10-20 17:01:05.094285	456
21373	2024-10-20 17:01:05.593489	198
156526	2024-10-20 17:01:05.894595	297
74863	2024-10-20 17:01:06.167859	589
97507	2024-10-20 17:01:06.543881	253
246697	2024-10-20 18:01:05.333967	396
21373	2024-10-20 18:01:05.738236	204
156526	2024-10-20 18:01:06.078784	249
74863	2024-10-20 18:01:06.35189	726
97507	2024-10-20 18:01:06.722689	235
246697	2024-10-20 19:01:04.758273	356
21373	2024-10-20 19:01:05.18925	223
156526	2024-10-20 19:01:05.522479	246
74863	2024-10-20 19:01:05.797468	659
97507	2024-10-20 19:01:06.168477	252
246697	2024-10-20 20:01:04.750969	350
21373	2024-10-20 20:01:05.204101	216
156526	2024-10-20 20:01:05.539372	229
74863	2024-10-20 20:01:05.819018	713
97507	2024-10-20 20:01:06.200548	295
246697	2024-10-20 21:01:04.83567	442
21373	2024-10-20 21:01:05.256595	247
156526	2024-10-20 21:01:05.54994	350
74863	2024-10-20 21:01:05.816734	735
97507	2024-10-20 21:01:06.158546	314
246697	2024-10-20 22:01:04.887389	624
21373	2024-10-20 22:01:05.261654	332
156526	2024-10-20 22:01:05.563198	366
74863	2024-10-20 22:01:05.832386	766
97507	2024-10-20 22:01:06.157669	345
246697	2024-10-20 23:01:05.329313	577
21373	2024-10-20 23:01:05.735075	320
156526	2024-10-20 23:01:06.028247	363
74863	2024-10-20 23:01:06.29645	859
97507	2024-10-20 23:01:06.640432	365
246697	2024-10-21 00:01:04.579376	616
21373	2024-10-21 00:01:04.942927	312
156526	2024-10-21 00:01:05.231482	362
74863	2024-10-21 00:01:05.49889	789
97507	2024-10-21 00:01:05.83093	385
246697	2024-10-21 01:01:04.76391	819
21373	2024-10-21 01:01:05.048802	405
156526	2024-10-21 01:01:05.374132	527
74863	2024-10-21 01:01:05.642344	846
97507	2024-10-21 01:01:05.959326	579
246697	2024-10-21 02:01:04.974099	730
21373	2024-10-21 02:01:05.260103	450
156526	2024-10-21 02:01:05.532089	510
74863	2024-10-21 02:01:05.834675	817
97507	2024-10-21 02:01:06.146828	575
246697	2024-10-21 03:01:04.771408	765
21373	2024-10-21 03:01:05.051264	495
156526	2024-10-21 03:01:05.321741	470
74863	2024-10-21 03:01:05.660657	834
97507	2024-10-21 03:01:05.962946	658
246697	2024-10-21 04:01:04.952668	797
21373	2024-10-21 04:01:05.321007	531
156526	2024-10-21 04:01:05.611829	416
74863	2024-10-21 04:01:05.881619	838
97507	2024-10-21 04:01:06.183412	540
246697	2024-10-21 05:01:04.697702	854
21373	2024-10-21 05:01:05.034006	591
156526	2024-10-21 05:01:05.312226	431
74863	2024-10-21 05:01:05.590357	825
97507	2024-10-21 05:01:05.893761	587
246697	2024-10-21 06:01:05.14821	822
21373	2024-10-21 06:01:05.459626	565
156526	2024-10-21 06:01:05.735593	567
74863	2024-10-21 06:01:06.013425	818
97507	2024-10-21 06:01:06.324866	607
246697	2024-10-21 07:01:04.558637	520
21373	2024-10-21 07:01:04.972031	353
156526	2024-10-21 07:01:05.255015	319
74863	2024-10-21 07:01:05.534009	663
97507	2024-10-21 07:01:05.859526	414
246697	2024-10-21 08:01:05.375955	242
21373	2024-10-21 08:01:05.857938	175
156526	2024-10-21 08:01:06.267972	166
74863	2024-10-21 08:01:06.540821	636
97507	2024-10-21 08:01:06.926085	180
246697	2024-10-21 09:01:05.175727	192
21373	2024-10-21 09:01:05.660501	154
156526	2024-10-21 09:01:06.032988	169
74863	2024-10-21 09:01:06.326436	719
97507	2024-10-21 09:01:06.732236	171
246697	2024-10-21 10:01:04.729986	282
21373	2024-10-21 10:01:05.197865	191
156526	2024-10-21 10:01:05.56633	167
74863	2024-10-21 10:01:05.8356	659
97507	2024-10-21 10:01:06.227479	187
246697	2024-10-21 11:01:05.968418	327
21373	2024-10-21 11:01:06.328865	205
156526	2024-10-21 11:01:06.749975	222
74863	2024-10-21 11:01:07.035433	594
97507	2024-10-21 11:01:07.417257	185
246697	2024-10-21 12:01:05.234079	310
21373	2024-10-21 12:01:05.63199	193
156526	2024-10-21 12:01:05.960058	196
74863	2024-10-21 12:01:06.228882	672
97507	2024-10-21 12:01:06.657919	198
246697	2024-10-21 13:01:05.258318	308
21373	2024-10-21 13:01:05.630683	206
156526	2024-10-21 13:01:05.947612	230
74863	2024-10-21 13:01:06.295428	683
97507	2024-10-21 13:01:06.671525	203
246697	2024-10-21 14:01:05.40645	303
21373	2024-10-21 14:01:05.807871	227
156526	2024-10-21 14:01:06.129793	236
74863	2024-10-21 14:01:06.394909	666
97507	2024-10-21 14:01:06.756555	267
246697	2024-10-21 15:01:04.803247	318
21373	2024-10-21 15:01:05.170611	208
156526	2024-10-21 15:01:05.57583	218
74863	2024-10-21 15:01:05.849674	629
97507	2024-10-21 15:01:06.216949	212
246697	2024-10-21 16:01:05.387274	320
21373	2024-10-21 16:01:05.924557	186
156526	2024-10-21 16:01:06.248303	315
74863	2024-10-21 16:01:06.519622	716
97507	2024-10-21 16:01:06.897406	201
246697	2024-10-21 17:01:04.895777	277
21373	2024-10-21 17:01:05.31071	182
156526	2024-10-21 17:01:05.712619	159
74863	2024-10-21 17:01:05.98832	626
97507	2024-10-21 17:01:06.367961	203
246697	2024-10-21 18:01:04.895842	207
21373	2024-10-21 18:01:05.31891	173
156526	2024-10-21 18:01:05.762649	166
74863	2024-10-21 18:01:06.030832	663
97507	2024-10-21 18:01:06.417485	192
246697	2024-10-21 19:01:04.657854	267
21373	2024-10-21 19:01:05.136725	170
156526	2024-10-21 19:01:05.48838	178
74863	2024-10-21 19:01:05.764973	734
97507	2024-10-21 19:01:06.154991	177
246697	2024-10-21 20:01:04.560401	314
21373	2024-10-21 20:01:05.026432	176
156526	2024-10-21 20:01:05.392747	177
74863	2024-10-21 20:01:05.670122	702
97507	2024-10-21 20:01:06.067606	220
246697	2024-10-21 21:01:04.772484	428
21373	2024-10-21 21:01:05.222238	273
156526	2024-10-21 21:01:05.55071	225
74863	2024-10-21 21:01:05.820389	736
97507	2024-10-21 21:01:06.20016	315
246697	2024-10-21 22:01:04.616386	640
21373	2024-10-21 22:01:05.009305	325
156526	2024-10-21 22:01:05.30141	389
74863	2024-10-21 22:01:05.566085	719
97507	2024-10-21 22:01:05.891269	484
246697	2024-10-21 23:01:05.255163	701
21373	2024-10-21 23:01:05.913094	293
156526	2024-10-21 23:01:06.206657	357
74863	2024-10-21 23:01:06.484096	780
97507	2024-10-21 23:01:06.820782	439
246697	2024-10-22 00:01:04.832366	741
21373	2024-10-22 00:01:05.147041	348
156526	2024-10-22 00:01:05.537432	394
74863	2024-10-22 00:01:05.81451	881
97507	2024-10-22 00:01:06.138872	435
246697	2024-10-22 01:01:05.196173	745
21373	2024-10-22 01:01:05.558562	344
156526	2024-10-22 01:01:05.833026	376
74863	2024-10-22 01:01:06.108938	859
97507	2024-10-22 01:01:06.431849	471
246697	2024-10-22 02:01:04.767438	762
21373	2024-10-22 02:01:05.053376	390
156526	2024-10-22 02:01:05.338497	468
74863	2024-10-22 02:01:05.602707	844
97507	2024-10-22 02:01:05.962228	656
246697	2024-10-22 03:01:04.749855	734
21373	2024-10-22 03:01:05.0306	491
156526	2024-10-22 03:01:05.371786	472
74863	2024-10-22 03:01:05.645636	840
97507	2024-10-22 03:01:05.956016	591
246697	2024-10-22 04:01:05.174222	722
21373	2024-10-22 04:01:05.455715	434
156526	2024-10-22 04:01:05.760727	393
74863	2024-10-22 04:01:06.028762	844
97507	2024-10-22 04:01:06.348108	532
246697	2024-10-22 05:01:04.414189	939
21373	2024-10-22 05:01:04.736222	481
156526	2024-10-22 05:01:05.021306	496
74863	2024-10-22 05:01:05.293782	844
97507	2024-10-22 05:01:05.593954	614
246697	2024-10-22 06:01:04.703285	914
21373	2024-10-22 06:01:05.081038	560
156526	2024-10-22 06:01:05.375292	454
74863	2024-10-22 06:01:05.642811	824
97507	2024-10-22 06:01:05.964429	498
246697	2024-10-22 07:01:05.05756	499
21373	2024-10-22 07:01:05.376158	336
156526	2024-10-22 07:01:05.682017	315
74863	2024-10-22 07:01:06.008338	720
97507	2024-10-22 07:01:06.351768	366
246697	2024-10-22 08:01:05.258521	250
21373	2024-10-22 08:01:05.673772	177
156526	2024-10-22 08:01:06.121226	167
74863	2024-10-22 08:01:06.393802	592
97507	2024-10-22 08:01:06.806216	186
246697	2024-10-22 09:01:05.259041	169
21373	2024-10-22 09:01:05.724905	159
156526	2024-10-22 09:01:06.117828	157
74863	2024-10-22 09:01:06.3886	636
97507	2024-10-22 09:01:06.798535	169
246697	2024-10-22 10:01:04.814267	193
21373	2024-10-22 10:01:05.239762	181
156526	2024-10-22 10:01:05.626343	168
74863	2024-10-22 10:01:05.908158	594
97507	2024-10-22 10:01:06.296259	173
246697	2024-10-22 11:01:05.43766	247
21373	2024-10-22 11:01:05.925762	209
156526	2024-10-22 11:01:06.26534	215
74863	2024-10-22 11:01:06.54518	542
97507	2024-10-22 11:01:06.952579	187
246697	2024-10-22 12:01:04.949374	263
21373	2024-10-22 12:01:05.447692	191
156526	2024-10-22 12:01:05.793051	205
74863	2024-10-22 12:01:06.071285	579
97507	2024-10-22 12:01:06.469048	180
246697	2024-10-22 13:01:05.00599	337
21373	2024-10-22 13:01:05.76087	207
156526	2024-10-22 13:01:06.101628	206
74863	2024-10-22 13:01:06.378553	710
97507	2024-10-22 13:01:06.787342	226
246697	2024-10-22 14:01:04.900633	413
21373	2024-10-22 14:01:05.320444	203
156526	2024-10-22 14:01:05.689887	189
74863	2024-10-22 14:01:05.956801	665
97507	2024-10-22 14:01:06.356974	195
246697	2024-10-22 15:01:05.417333	241
21373	2024-10-22 15:01:05.925746	189
156526	2024-10-22 15:01:06.279848	229
74863	2024-10-22 15:01:06.559868	709
97507	2024-10-22 15:01:06.953959	194
246697	2024-10-22 16:01:04.983274	348
21373	2024-10-22 16:01:05.400996	173
156526	2024-10-22 16:01:05.743131	204
74863	2024-10-22 16:01:06.069495	666
97507	2024-10-22 16:01:06.494204	188
246697	2024-10-22 17:01:04.572213	248
21373	2024-10-22 17:01:05.002202	165
156526	2024-10-22 17:01:05.358984	192
74863	2024-10-22 17:01:05.6947	590
97507	2024-10-22 17:01:06.089769	174
246697	2024-10-22 18:01:04.621633	218
21373	2024-10-22 18:01:05.047209	163
156526	2024-10-22 18:01:05.470129	175
74863	2024-10-22 18:01:05.753334	721
97507	2024-10-22 18:01:06.157288	206
246697	2024-10-22 19:01:05.208926	187
21373	2024-10-22 19:01:05.635329	139
156526	2024-10-22 19:01:06.052262	167
74863	2024-10-22 19:01:06.334501	554
97507	2024-10-22 19:01:06.762356	180
246697	2024-10-22 20:01:04.538701	248
21373	2024-10-22 20:01:05.005584	175
156526	2024-10-22 20:01:05.366134	185
74863	2024-10-22 20:01:05.650512	644
97507	2024-10-22 20:01:06.058997	193
246697	2024-10-22 21:01:05.006858	508
21373	2024-10-22 21:01:05.371394	282
156526	2024-10-22 21:01:05.690243	231
74863	2024-10-22 21:01:05.982092	650
97507	2024-10-22 21:01:06.354305	276
246697	2024-10-22 22:01:04.778459	583
21373	2024-10-22 22:01:05.133368	283
156526	2024-10-22 22:01:05.473237	333
74863	2024-10-22 22:01:05.747604	744
97507	2024-10-22 22:01:06.082241	423
246697	2024-10-22 23:01:04.934975	540
21373	2024-10-22 23:01:05.266174	326
156526	2024-10-22 23:01:05.554995	369
74863	2024-10-22 23:01:05.89185	853
97507	2024-10-22 23:01:06.214253	438
246697	2024-10-23 00:01:04.939188	648
21373	2024-10-23 00:01:05.341192	334
156526	2024-10-23 00:01:05.634433	370
74863	2024-10-23 00:01:05.903034	758
97507	2024-10-23 00:01:06.254273	400
246697	2024-10-23 01:01:04.498735	667
21373	2024-10-23 01:01:04.792239	422
156526	2024-10-23 01:01:05.089695	444
74863	2024-10-23 01:01:05.403104	864
97507	2024-10-23 01:01:05.714335	506
246697	2024-10-23 02:01:04.814556	790
21373	2024-10-23 02:01:05.168519	429
156526	2024-10-23 02:01:05.445012	461
74863	2024-10-23 02:01:05.727458	866
97507	2024-10-23 02:01:06.044586	582
246697	2024-10-23 03:01:04.76492	794
21373	2024-10-23 03:01:05.068097	469
156526	2024-10-23 03:01:05.358461	424
74863	2024-10-23 03:01:05.629299	846
97507	2024-10-23 03:01:05.944842	594
246697	2024-10-23 04:01:04.961677	734
21373	2024-10-23 04:01:05.334931	543
156526	2024-10-23 04:01:05.62121	458
74863	2024-10-23 04:01:05.882299	850
97507	2024-10-23 04:01:06.191691	567
246697	2024-10-23 05:01:05.253906	849
21373	2024-10-23 05:01:05.530354	558
156526	2024-10-23 05:01:05.806063	489
74863	2024-10-23 05:01:06.105292	931
97507	2024-10-23 05:01:06.407517	581
246697	2024-10-23 06:01:04.902928	859
21373	2024-10-23 06:01:05.195328	570
156526	2024-10-23 06:01:05.472272	534
74863	2024-10-23 06:01:05.749462	847
97507	2024-10-23 06:01:06.071422	486
246697	2024-10-23 07:01:05.493813	578
21373	2024-10-23 07:01:05.914382	297
156526	2024-10-23 07:01:06.220162	258
74863	2024-10-23 07:01:06.493632	737
97507	2024-10-23 07:01:06.847615	354
246697	2024-10-23 08:01:05.293644	295
21373	2024-10-23 08:01:05.733019	165
156526	2024-10-23 08:01:06.102745	162
74863	2024-10-23 08:01:06.472313	546
97507	2024-10-23 08:01:06.876973	198
246697	2024-10-23 09:01:05.231289	253
21373	2024-10-23 09:01:05.679474	132
156526	2024-10-23 09:01:06.081648	141
74863	2024-10-23 09:01:06.551527	619
97507	2024-10-23 09:01:06.948774	158
246697	2024-10-23 10:01:04.989043	260
21373	2024-10-23 10:01:05.513094	164
156526	2024-10-23 10:01:05.886812	174
74863	2024-10-23 10:01:06.160016	637
97507	2024-10-23 10:01:06.573268	181
246697	2024-10-23 11:01:04.910418	357
21373	2024-10-23 11:01:05.317832	171
156526	2024-10-23 11:01:05.659042	190
74863	2024-10-23 11:01:05.991813	661
97507	2024-10-23 11:01:06.403884	160
246697	2024-10-23 12:01:05.448842	302
21373	2024-10-23 12:01:05.924925	184
156526	2024-10-23 12:01:06.277834	194
74863	2024-10-23 12:01:06.544009	600
97507	2024-10-23 12:01:06.962284	174
246697	2024-10-23 13:01:04.606352	318
21373	2024-10-23 13:01:04.977104	196
156526	2024-10-23 13:01:05.300783	239
74863	2024-10-23 13:01:05.607986	689
97507	2024-10-23 13:01:06.009266	201
246697	2024-10-23 14:01:04.554374	295
21373	2024-10-23 14:01:04.980951	180
156526	2024-10-23 14:01:05.322362	190
74863	2024-10-23 14:01:05.599372	596
97507	2024-10-23 14:01:05.992495	198
246697	2024-10-23 15:01:05.166736	294
21373	2024-10-23 15:01:05.572737	190
156526	2024-10-23 15:01:05.911985	164
74863	2024-10-23 15:01:06.246607	612
97507	2024-10-23 15:01:06.642156	170
246697	2024-10-23 16:01:05.342107	271
21373	2024-10-23 16:01:05.68844	193
156526	2024-10-23 16:01:06.124561	212
74863	2024-10-23 16:01:06.404665	684
97507	2024-10-23 16:01:06.813351	178
246697	2024-10-23 17:01:04.647193	345
21373	2024-10-23 17:01:05.110588	187
156526	2024-10-23 17:01:05.457227	206
74863	2024-10-23 17:01:05.731	597
97507	2024-10-23 17:01:06.118815	200
246697	2024-10-23 18:01:05.017158	267
21373	2024-10-23 18:01:05.412607	202
156526	2024-10-23 18:01:05.780233	172
74863	2024-10-23 18:01:06.049428	606
97507	2024-10-23 18:01:06.438022	178
246697	2024-10-23 19:01:05.098437	212
21373	2024-10-23 19:01:05.5542	138
156526	2024-10-23 19:01:05.942442	158
74863	2024-10-23 19:01:06.223146	561
97507	2024-10-23 19:01:06.620937	158
246697	2024-10-23 20:01:04.848457	272
21373	2024-10-23 20:01:05.355182	160
156526	2024-10-23 20:01:05.725725	162
74863	2024-10-23 20:01:06.000515	634
97507	2024-10-23 20:01:06.421513	182
246697	2024-10-23 21:01:05.255306	561
21373	2024-10-23 21:01:05.723476	201
156526	2024-10-23 21:01:06.02251	323
74863	2024-10-23 21:01:06.292219	656
97507	2024-10-23 21:01:06.653261	282
246697	2024-10-23 22:01:05.217263	624
21373	2024-10-23 22:01:05.545845	287
156526	2024-10-23 22:01:05.917294	387
74863	2024-10-23 22:01:06.198272	743
97507	2024-10-23 22:01:06.541341	392
246697	2024-10-23 23:01:04.653831	746
21373	2024-10-23 23:01:04.98757	293
156526	2024-10-23 23:01:05.288286	352
74863	2024-10-23 23:01:05.561891	695
97507	2024-10-23 23:01:05.897672	342
246697	2024-10-24 00:01:04.951845	662
21373	2024-10-24 00:01:05.279919	302
156526	2024-10-24 00:01:05.569858	289
74863	2024-10-24 00:01:05.836073	796
97507	2024-10-24 00:01:06.147574	461
246697	2024-10-24 01:01:04.885745	716
21373	2024-10-24 01:01:05.189733	312
156526	2024-10-24 01:01:05.476444	341
74863	2024-10-24 01:01:05.751012	838
97507	2024-10-24 01:01:06.069469	500
246697	2024-10-24 02:01:04.937428	781
21373	2024-10-24 02:01:05.240562	442
156526	2024-10-24 02:01:05.564213	454
74863	2024-10-24 02:01:05.832844	823
97507	2024-10-24 02:01:06.141964	588
246697	2024-10-24 03:01:04.660235	829
21373	2024-10-24 03:01:04.933202	562
156526	2024-10-24 03:01:05.284017	410
74863	2024-10-24 03:01:05.553362	811
97507	2024-10-24 03:01:05.860615	593
246697	2024-10-24 04:01:04.961042	655
21373	2024-10-24 04:01:05.238849	524
156526	2024-10-24 04:01:05.52512	410
74863	2024-10-24 04:01:05.796429	838
97507	2024-10-24 04:01:06.103979	552
246697	2024-10-24 05:01:04.911452	893
21373	2024-10-24 05:01:05.180793	555
156526	2024-10-24 05:01:05.466648	460
74863	2024-10-24 05:01:05.729148	839
97507	2024-10-24 05:01:06.042217	587
246697	2024-10-24 06:01:04.914877	891
21373	2024-10-24 06:01:05.211413	549
156526	2024-10-24 06:01:05.492214	499
74863	2024-10-24 06:01:05.7597	764
97507	2024-10-24 06:01:06.082706	599
246697	2024-10-24 07:01:04.408133	548
21373	2024-10-24 07:01:04.74218	314
156526	2024-10-24 07:01:05.036879	338
74863	2024-10-24 07:01:05.317276	694
97507	2024-10-24 07:01:05.659361	400
246697	2024-10-24 08:01:04.992013	282
21373	2024-10-24 08:01:05.393267	179
156526	2024-10-24 08:01:05.810225	177
74863	2024-10-24 08:01:06.084531	579
97507	2024-10-24 08:01:06.484226	198
246697	2024-10-24 09:01:05.348354	185
21373	2024-10-24 09:01:05.760669	169
156526	2024-10-24 09:01:06.129388	141
74863	2024-10-24 09:01:06.445479	601
97507	2024-10-24 09:01:06.851864	141
246697	2024-10-24 10:01:05.93148	266
21373	2024-10-24 10:01:06.352187	185
156526	2024-10-24 10:01:06.730146	202
74863	2024-10-24 10:01:07.011809	588
97507	2024-10-24 10:01:07.445881	182
246697	2024-10-24 11:01:05.388464	233
21373	2024-10-24 11:01:05.816367	180
156526	2024-10-24 11:01:06.170066	175
74863	2024-10-24 11:01:06.442536	743
97507	2024-10-24 11:01:06.861297	164
246697	2024-10-24 12:01:05.074075	285
21373	2024-10-24 12:01:05.491492	180
156526	2024-10-24 12:01:05.831572	192
74863	2024-10-24 12:01:06.120641	643
97507	2024-10-24 12:01:06.610002	180
246697	2024-10-24 13:01:04.844491	313
21373	2024-10-24 13:01:05.237437	204
156526	2024-10-24 13:01:05.593548	204
74863	2024-10-24 13:01:05.874309	540
97507	2024-10-24 13:01:06.288478	187
246697	2024-10-24 14:01:04.937524	292
21373	2024-10-24 14:01:05.360362	196
156526	2024-10-24 14:01:05.763006	202
74863	2024-10-24 14:01:06.094167	752
97507	2024-10-24 14:01:06.487252	191
246697	2024-10-24 15:01:05.126858	352
21373	2024-10-24 15:01:05.566785	183
156526	2024-10-24 15:01:05.884578	215
74863	2024-10-24 15:01:06.175983	646
97507	2024-10-24 15:01:06.550423	190
246697	2024-10-24 16:01:04.44283	368
21373	2024-10-24 16:01:04.926868	178
156526	2024-10-24 16:01:05.267064	193
74863	2024-10-24 16:01:05.54326	691
97507	2024-10-24 16:01:05.953032	185
246697	2024-10-24 17:01:04.469215	344
21373	2024-10-24 17:01:04.93984	188
156526	2024-10-24 17:01:05.275251	202
74863	2024-10-24 17:01:05.555709	670
97507	2024-10-24 17:01:05.946834	186
246697	2024-10-24 18:01:05.850203	272
21373	2024-10-24 18:01:06.290175	167
156526	2024-10-24 18:01:06.656021	150
74863	2024-10-24 18:01:06.935822	597
97507	2024-10-24 18:01:07.337828	195
246697	2024-10-24 20:01:12.971608	362
21373	2024-10-24 20:01:13.474068	173
156526	2024-10-24 20:01:13.857001	184
74863	2024-10-24 20:01:14.142508	643
97507	2024-10-24 20:01:14.532015	178
246697	2024-10-24 21:01:06.074043	424
21373	2024-10-24 21:01:06.443226	236
156526	2024-10-24 21:01:06.763596	329
74863	2024-10-24 21:01:07.034035	702
97507	2024-10-24 21:01:07.332326	253
246697	2024-10-24 22:01:09.444753	576
21373	2024-10-24 22:01:09.779163	322
156526	2024-10-24 22:01:10.064539	337
74863	2024-10-24 22:01:10.41271	756
97507	2024-10-24 22:01:10.739033	446
246697	2024-10-24 23:01:06.419647	522
21373	2024-10-24 23:01:06.820392	248
156526	2024-10-24 23:01:07.146908	258
74863	2024-10-24 23:01:07.416504	722
97507	2024-10-24 23:01:07.771505	366
246697	2024-10-25 00:01:04.575143	519
21373	2024-10-25 00:01:04.900587	278
156526	2024-10-25 00:01:05.188236	336
74863	2024-10-25 00:01:05.457949	754
97507	2024-10-25 00:01:05.838484	450
246697	2024-10-25 01:01:04.607661	600
21373	2024-10-25 01:01:04.92757	381
156526	2024-10-25 01:01:05.149663	313
74863	2024-10-25 01:01:05.342569	797
97507	2024-10-25 01:01:05.55961	475
246697	2024-10-25 02:01:04.558789	811
21373	2024-10-25 02:01:04.858581	394
156526	2024-10-25 02:01:05.249237	427
74863	2024-10-25 02:01:05.539656	869
97507	2024-10-25 02:01:05.855124	482
246697	2024-10-25 03:01:04.690637	739
21373	2024-10-25 03:01:04.937803	567
156526	2024-10-25 03:01:05.133474	477
74863	2024-10-25 03:01:05.337264	878
97507	2024-10-25 03:01:05.540738	565
246697	2024-10-25 04:01:04.720951	793
21373	2024-10-25 04:01:04.977365	484
156526	2024-10-25 04:01:05.221754	539
74863	2024-10-25 04:01:05.499355	840
97507	2024-10-25 04:01:05.807034	577
246697	2024-10-25 05:01:04.791689	882
21373	2024-10-25 05:01:05.012971	472
156526	2024-10-25 05:01:05.199161	449
74863	2024-10-25 05:01:05.377312	840
97507	2024-10-25 05:01:05.600625	650
246697	2024-10-25 06:01:05.242606	765
21373	2024-10-25 06:01:05.529432	542
156526	2024-10-25 06:01:05.816529	419
74863	2024-10-25 06:01:06.082589	759
97507	2024-10-25 06:01:06.400225	585
246697	2024-10-25 07:01:04.374456	412
21373	2024-10-25 07:01:04.714351	286
156526	2024-10-25 07:01:05.077798	284
74863	2024-10-25 07:01:05.349481	656
97507	2024-10-25 07:01:05.638538	387
246697	2024-10-25 08:01:04.989638	318
21373	2024-10-25 08:01:05.330585	175
156526	2024-10-25 08:01:05.574172	157
74863	2024-10-25 08:01:05.752653	584
97507	2024-10-25 08:01:06.086886	210
246697	2024-10-25 09:01:05.303151	208
21373	2024-10-25 09:01:05.740687	166
156526	2024-10-25 09:01:06.109454	148
74863	2024-10-25 09:01:06.395672	611
97507	2024-10-25 09:01:06.799486	170
246697	2024-10-25 10:01:04.933017	223
21373	2024-10-25 10:01:05.425193	195
156526	2024-10-25 10:01:05.665093	171
74863	2024-10-25 10:01:05.941424	646
97507	2024-10-25 10:01:06.345667	185
246697	2024-10-25 11:01:04.864204	251
21373	2024-10-25 11:01:05.280952	173
156526	2024-10-25 11:01:05.62128	176
74863	2024-10-25 11:01:05.885227	541
97507	2024-10-25 11:01:06.288465	199
246697	2024-10-25 12:01:06.000185	241
21373	2024-10-25 12:01:06.261562	173
156526	2024-10-25 12:01:06.52672	191
74863	2024-10-25 12:01:06.811946	649
97507	2024-10-25 12:01:07.226013	199
246697	2024-10-25 13:01:05.021855	306
21373	2024-10-25 13:01:05.398695	218
156526	2024-10-25 13:01:05.817974	201
74863	2024-10-25 13:01:06.087386	641
97507	2024-10-25 13:01:06.480273	219
246697	2024-10-25 14:01:04.926424	369
21373	2024-10-25 14:01:05.306155	213
156526	2024-10-25 14:01:05.528271	203
74863	2024-10-25 14:01:05.727512	633
97507	2024-10-25 14:01:05.974827	197
246697	2024-10-25 15:01:04.588585	328
21373	2024-10-25 15:01:05.008547	182
156526	2024-10-25 15:01:05.371681	171
74863	2024-10-25 15:01:05.644679	544
97507	2024-10-25 15:01:06.056723	167
246697	2024-10-25 16:01:05.256007	279
21373	2024-10-25 16:01:05.63334	182
156526	2024-10-25 16:01:06.009975	235
74863	2024-10-25 16:01:06.296684	640
97507	2024-10-25 16:01:06.688735	160
246697	2024-10-25 17:01:05.079606	271
21373	2024-10-25 17:01:05.52125	156
156526	2024-10-25 17:01:05.896928	165
74863	2024-10-25 17:01:06.176789	599
97507	2024-10-25 17:01:06.45166	178
246697	2024-10-25 18:01:04.911424	265
21373	2024-10-25 18:01:05.319454	170
156526	2024-10-25 18:01:05.694502	144
74863	2024-10-25 18:01:06.042181	685
97507	2024-10-25 18:01:06.46241	180
246697	2024-10-25 19:01:04.666152	244
21373	2024-10-25 19:01:05.158518	171
156526	2024-10-25 19:01:05.509454	141
74863	2024-10-25 19:01:05.754831	572
97507	2024-10-25 19:01:06.020752	155
246697	2024-10-25 20:01:04.88658	211
21373	2024-10-25 20:01:05.360017	162
156526	2024-10-25 20:01:05.708598	166
74863	2024-10-25 20:01:05.978905	561
97507	2024-10-25 20:01:06.405024	179
246697	2024-10-25 21:01:04.37422	487
21373	2024-10-25 21:01:04.880806	158
156526	2024-10-25 21:01:05.197563	249
74863	2024-10-25 21:01:05.463908	733
97507	2024-10-25 21:01:05.857596	222
246697	2024-10-25 22:01:04.717945	512
21373	2024-10-25 22:01:05.16767	185
156526	2024-10-25 22:01:05.512842	273
74863	2024-10-25 22:01:05.779236	731
97507	2024-10-25 22:01:06.156525	275
246697	2024-10-25 23:01:04.999101	496
21373	2024-10-25 23:01:05.253701	243
156526	2024-10-25 23:01:05.480212	277
74863	2024-10-25 23:01:05.67353	757
97507	2024-10-25 23:01:05.905553	277
246697	2024-10-26 00:01:04.823412	441
21373	2024-10-26 00:01:05.199655	198
156526	2024-10-26 00:01:05.578084	300
74863	2024-10-26 00:01:05.845867	730
97507	2024-10-26 00:01:06.204155	304
246697	2024-10-26 01:01:05.000747	462
21373	2024-10-26 01:01:05.322617	289
156526	2024-10-26 01:01:05.693077	382
74863	2024-10-26 01:01:05.961888	720
97507	2024-10-26 01:01:06.320455	315
246697	2024-10-26 02:01:05.17717	765
21373	2024-10-26 02:01:05.498914	335
156526	2024-10-26 02:01:05.805595	412
74863	2024-10-26 02:01:05.998016	855
97507	2024-10-26 02:01:06.204576	556
246697	2024-10-26 03:01:05.302373	814
21373	2024-10-26 03:01:05.630091	459
156526	2024-10-26 03:01:05.931142	450
74863	2024-10-26 03:01:06.225814	854
97507	2024-10-26 03:01:06.578607	581
246697	2024-10-26 04:01:04.548187	824
21373	2024-10-26 04:01:04.824174	528
156526	2024-10-26 04:01:05.103949	464
74863	2024-10-26 04:01:05.373858	868
97507	2024-10-26 04:01:05.680109	603
246697	2024-10-26 05:01:04.616249	910
21373	2024-10-26 05:01:04.897032	559
156526	2024-10-26 05:01:05.183189	421
74863	2024-10-26 05:01:05.44671	831
97507	2024-10-26 05:01:05.751752	630
246697	2024-10-26 06:01:04.401291	857
21373	2024-10-26 06:01:04.721894	534
156526	2024-10-26 06:01:04.993874	476
74863	2024-10-26 06:01:05.263582	866
97507	2024-10-26 06:01:05.579782	521
246697	2024-10-26 07:01:04.678109	661
21373	2024-10-26 07:01:04.988651	284
156526	2024-10-26 07:01:05.344109	414
74863	2024-10-26 07:01:05.548257	799
97507	2024-10-26 07:01:05.843368	369
246697	2024-10-26 08:01:04.402697	601
21373	2024-10-26 08:01:04.769144	291
156526	2024-10-26 08:01:05.046577	368
74863	2024-10-26 08:01:05.310964	675
97507	2024-10-26 08:01:05.713369	358
246697	2024-10-26 09:01:04.867281	490
21373	2024-10-26 09:01:05.201975	314
156526	2024-10-26 09:01:05.511009	257
74863	2024-10-26 09:01:05.864708	682
97507	2024-10-26 09:01:06.19844	363
246697	2024-10-26 10:01:05.014083	302
21373	2024-10-26 10:01:05.453676	198
156526	2024-10-26 10:01:05.79873	261
74863	2024-10-26 10:01:06.086136	592
97507	2024-10-26 10:01:06.442253	250
246697	2024-10-26 11:01:04.837023	345
21373	2024-10-26 11:01:05.355174	187
156526	2024-10-26 11:01:05.697558	214
74863	2024-10-26 11:01:05.966141	654
97507	2024-10-26 11:01:06.362994	165
246697	2024-10-26 12:01:05.167272	237
21373	2024-10-26 12:01:05.544839	186
156526	2024-10-26 12:01:05.888262	175
74863	2024-10-26 12:01:06.244986	674
97507	2024-10-26 12:01:06.638011	177
246697	2024-10-26 13:01:05.223149	257
21373	2024-10-26 13:01:05.528907	209
156526	2024-10-26 13:01:05.930395	224
74863	2024-10-26 13:01:06.198099	659
97507	2024-10-26 13:01:06.600948	185
246697	2024-10-26 14:01:04.767622	436
21373	2024-10-26 14:01:05.218314	207
156526	2024-10-26 14:01:05.624542	283
74863	2024-10-26 14:01:05.893181	689
97507	2024-10-26 14:01:06.263677	214
246697	2024-10-26 15:01:04.671413	383
21373	2024-10-26 15:01:05.155233	177
156526	2024-10-26 15:01:05.453622	290
74863	2024-10-26 15:01:05.731658	628
97507	2024-10-26 15:01:06.117056	285
246697	2024-10-26 16:01:05.288285	388
21373	2024-10-26 16:01:05.702636	154
156526	2024-10-26 16:01:06.093106	211
74863	2024-10-26 16:01:06.375791	683
97507	2024-10-26 16:01:06.74919	237
246697	2024-10-26 17:01:04.971443	296
21373	2024-10-26 17:01:05.289063	201
156526	2024-10-26 17:01:05.623837	223
74863	2024-10-26 17:01:05.891148	677
97507	2024-10-26 17:01:06.34888	245
246697	2024-10-26 18:01:04.7168	285
21373	2024-10-26 18:01:05.110402	223
156526	2024-10-26 18:01:05.520658	261
74863	2024-10-26 18:01:05.793331	653
97507	2024-10-26 18:01:06.190543	181
246697	2024-10-26 19:01:04.558246	329
21373	2024-10-26 19:01:04.837073	212
156526	2024-10-26 19:01:05.091613	199
74863	2024-10-26 19:01:05.277338	552
97507	2024-10-26 19:01:05.619019	209
246697	2024-10-26 20:01:04.508801	380
21373	2024-10-26 20:01:04.940204	161
156526	2024-10-26 20:01:05.342213	181
74863	2024-10-26 20:01:05.635003	613
97507	2024-10-26 20:01:06.052285	194
246697	2024-10-26 21:01:05.256292	428
21373	2024-10-26 21:01:05.669936	172
156526	2024-10-26 21:01:06.04973	228
74863	2024-10-26 21:01:06.330007	754
97507	2024-10-26 21:01:06.752594	187
246697	2024-10-26 22:01:05.144819	551
21373	2024-10-26 22:01:05.594678	229
156526	2024-10-26 22:01:05.8876	326
74863	2024-10-26 22:01:06.166524	791
97507	2024-10-26 22:01:06.567405	260
246697	2024-10-26 23:01:04.686042	529
21373	2024-10-26 23:01:05.095758	209
156526	2024-10-26 23:01:05.390369	360
74863	2024-10-26 23:01:05.668844	762
97507	2024-10-26 23:01:06.025859	299
246697	2024-10-27 00:01:05.100937	591
21373	2024-10-27 00:01:05.469003	223
156526	2024-10-27 00:01:05.864232	315
74863	2024-10-27 00:01:06.144543	714
97507	2024-10-27 00:01:06.504722	295
246697	2024-10-27 01:01:04.672329	621
21373	2024-10-27 01:01:05.122369	246
156526	2024-10-27 01:01:05.44054	313
74863	2024-10-27 01:01:05.713973	808
97507	2024-10-27 01:01:06.054295	403
246697	2024-10-27 02:01:05.390572	748
21373	2024-10-27 02:01:05.668346	286
156526	2024-10-27 02:01:05.966188	481
74863	2024-10-27 02:01:06.241784	880
97507	2024-10-27 02:01:06.57166	437
246697	2024-10-27 02:01:04.475977	796
21373	2024-10-27 02:01:04.849756	496
156526	2024-10-27 02:01:05.133438	429
74863	2024-10-27 02:01:05.411422	827
97507	2024-10-27 02:01:05.723908	609
246697	2024-10-27 03:01:05.019281	876
21373	2024-10-27 03:01:05.312606	428
156526	2024-10-27 03:01:05.614234	531
74863	2024-10-27 03:01:05.837356	845
97507	2024-10-27 03:01:06.151412	560
246697	2024-10-27 04:01:04.429463	825
21373	2024-10-27 04:01:04.764757	567
156526	2024-10-27 04:01:05.05434	529
74863	2024-10-27 04:01:05.31959	874
97507	2024-10-27 04:01:05.628537	684
246697	2024-10-27 05:01:04.745233	779
21373	2024-10-27 05:01:05.028952	519
156526	2024-10-27 05:01:05.309703	440
74863	2024-10-27 05:01:05.576647	852
97507	2024-10-27 05:01:05.89824	573
246697	2024-10-27 06:01:05.168736	817
21373	2024-10-27 06:01:05.489318	519
156526	2024-10-27 06:01:05.778584	451
74863	2024-10-27 06:01:06.047477	911
97507	2024-10-27 06:01:06.355788	556
246697	2024-10-27 07:01:04.972663	567
21373	2024-10-27 07:01:05.180717	407
156526	2024-10-27 07:01:05.423828	405
74863	2024-10-27 07:01:05.788283	813
97507	2024-10-27 07:01:06.094402	607
246697	2024-10-27 08:01:04.751406	743
21373	2024-10-27 08:01:05.021017	419
156526	2024-10-27 08:01:05.308358	477
74863	2024-10-27 08:01:05.591218	849
97507	2024-10-27 08:01:05.910451	485
246697	2024-10-27 09:01:04.845154	528
21373	2024-10-27 09:01:05.155006	333
156526	2024-10-27 09:01:05.486664	365
74863	2024-10-27 09:01:05.757434	760
97507	2024-10-27 09:01:06.071388	427
246697	2024-10-27 10:01:05.01616	509
21373	2024-10-27 10:01:05.331301	340
156526	2024-10-27 10:01:05.673919	311
74863	2024-10-27 10:01:05.949107	682
97507	2024-10-27 10:01:06.273381	372
246697	2024-10-27 11:01:05.205954	385
21373	2024-10-27 11:01:05.576486	240
156526	2024-10-27 11:01:05.974853	269
74863	2024-10-27 11:01:06.202064	780
97507	2024-10-27 11:01:06.426095	331
246697	2024-10-27 12:01:05.26985	362
21373	2024-10-27 12:01:05.503135	232
156526	2024-10-27 12:01:05.846064	283
74863	2024-10-27 12:01:06.126813	753
97507	2024-10-27 12:01:06.492581	237
246697	2024-10-27 13:01:05.438487	441
21373	2024-10-27 13:01:05.93993	215
156526	2024-10-27 13:01:06.268233	278
74863	2024-10-27 13:01:06.551382	703
97507	2024-10-27 13:01:06.922055	259
246697	2024-10-27 14:01:05.301048	517
21373	2024-10-27 14:01:05.701366	251
156526	2024-10-27 14:01:05.998118	375
74863	2024-10-27 14:01:06.28045	800
97507	2024-10-27 14:01:06.625019	367
246697	2024-10-27 15:01:05.121261	488
21373	2024-10-27 15:01:05.473242	270
156526	2024-10-27 15:01:05.796969	259
74863	2024-10-27 15:01:06.072756	657
97507	2024-10-27 15:01:06.384763	317
246697	2024-10-27 16:01:05.101206	434
21373	2024-10-27 16:01:05.490872	244
156526	2024-10-27 16:01:05.892299	348
74863	2024-10-27 16:01:06.160575	639
97507	2024-10-27 16:01:06.555817	266
246697	2024-10-27 17:01:05.203151	389
21373	2024-10-27 17:01:05.686576	184
156526	2024-10-27 17:01:05.986339	330
74863	2024-10-27 17:01:06.257024	677
97507	2024-10-27 17:01:06.628456	264
246697	2024-10-27 18:01:05.094152	266
21373	2024-10-27 18:01:05.39264	190
156526	2024-10-27 18:01:05.649523	199
74863	2024-10-27 18:01:05.843209	646
97507	2024-10-27 18:01:06.121918	234
246697	2024-10-27 19:01:04.588929	346
21373	2024-10-27 19:01:05.006924	218
156526	2024-10-27 19:01:05.358899	224
74863	2024-10-27 19:01:05.634682	706
97507	2024-10-27 19:01:06.026006	224
246697	2024-10-27 20:01:04.884423	438
21373	2024-10-27 20:01:05.217062	257
156526	2024-10-27 20:01:05.531025	285
74863	2024-10-27 20:01:05.80149	707
97507	2024-10-27 20:01:06.155649	356
246697	2024-10-27 21:01:05.181325	612
21373	2024-10-27 21:01:05.531699	258
156526	2024-10-27 21:01:05.835096	337
74863	2024-10-27 21:01:06.159804	793
97507	2024-10-27 21:01:06.504334	327
246697	2024-10-27 22:01:04.862872	607
21373	2024-10-27 22:01:05.194512	313
156526	2024-10-27 22:01:05.482812	312
74863	2024-10-27 22:01:05.767497	855
97507	2024-10-27 22:01:06.098811	431
246697	2024-10-27 23:01:04.757692	542
21373	2024-10-27 23:01:05.010155	276
156526	2024-10-27 23:01:05.257631	386
74863	2024-10-27 23:01:05.595679	737
97507	2024-10-27 23:01:05.921217	421
246697	2024-10-28 00:01:04.649652	751
21373	2024-10-28 00:01:04.99974	401
156526	2024-10-28 00:01:05.282231	468
74863	2024-10-28 00:01:05.549883	850
97507	2024-10-28 00:01:05.88817	361
246697	2024-10-28 01:01:04.552052	679
21373	2024-10-28 01:01:04.917003	411
156526	2024-10-28 01:01:05.205394	413
74863	2024-10-28 01:01:05.47221	822
97507	2024-10-28 01:01:05.798381	578
246697	2024-10-28 02:01:05.080882	711
21373	2024-10-28 02:01:05.365215	442
156526	2024-10-28 02:01:05.66934	525
74863	2024-10-28 02:01:05.874567	798
97507	2024-10-28 02:01:06.125076	633
246697	2024-10-28 03:01:05.003269	763
21373	2024-10-28 03:01:05.244677	563
156526	2024-10-28 03:01:05.479601	459
74863	2024-10-28 03:01:05.755886	825
97507	2024-10-28 03:01:06.085205	623
246697	2024-10-28 04:01:04.629409	742
21373	2024-10-28 04:01:04.870546	503
156526	2024-10-28 04:01:05.178515	420
74863	2024-10-28 04:01:05.443077	848
97507	2024-10-28 04:01:05.761499	548
246697	2024-10-28 05:01:04.961639	904
21373	2024-10-28 05:01:05.239382	534
156526	2024-10-28 05:01:05.53487	426
74863	2024-10-28 05:01:05.794749	881
97507	2024-10-28 05:01:06.099355	651
246697	2024-10-28 06:01:05.053804	823
21373	2024-10-28 06:01:05.42153	591
156526	2024-10-28 06:01:05.703497	478
74863	2024-10-28 06:01:05.983461	837
97507	2024-10-28 06:01:06.29222	556
246697	2024-10-28 07:01:05.243151	566
21373	2024-10-28 07:01:05.58244	354
156526	2024-10-28 07:01:05.883934	387
74863	2024-10-28 07:01:06.172741	746
97507	2024-10-28 07:01:06.551506	369
246697	2024-10-28 08:01:05.168529	244
21373	2024-10-28 08:01:05.592329	173
156526	2024-10-28 08:01:06.073528	147
74863	2024-10-28 08:01:06.377894	533
97507	2024-10-28 08:01:06.748231	184
246697	2024-10-28 09:01:05.229826	278
21373	2024-10-28 09:01:05.65856	163
156526	2024-10-28 09:01:06.004685	191
74863	2024-10-28 09:01:06.376069	556
97507	2024-10-28 09:01:06.712688	163
246697	2024-10-28 10:01:04.734118	229
21373	2024-10-28 10:01:05.121654	201
156526	2024-10-28 10:01:05.52387	179
74863	2024-10-28 10:01:05.811544	594
97507	2024-10-28 10:01:06.226478	196
246697	2024-10-28 11:01:05.247608	279
21373	2024-10-28 11:01:05.69216	202
156526	2024-10-28 11:01:06.067337	196
74863	2024-10-28 11:01:06.338681	631
97507	2024-10-28 11:01:06.748749	188
246697	2024-10-28 12:01:05.273252	353
21373	2024-10-28 12:01:05.8225	192
156526	2024-10-28 12:01:06.147916	215
74863	2024-10-28 12:01:06.393453	582
97507	2024-10-28 12:01:06.761127	211
246697	2024-10-28 13:01:05.07555	341
21373	2024-10-28 13:01:05.49898	230
156526	2024-10-28 13:01:05.838649	242
74863	2024-10-28 13:01:06.111297	637
97507	2024-10-28 13:01:06.482742	241
246697	2024-10-28 14:01:04.7892	380
21373	2024-10-28 14:01:05.147089	267
156526	2024-10-28 14:01:05.4862	227
74863	2024-10-28 14:01:05.836982	610
97507	2024-10-28 14:01:06.302726	235
246697	2024-10-28 15:01:04.882829	355
21373	2024-10-28 15:01:05.276095	222
156526	2024-10-28 15:01:05.63692	175
74863	2024-10-28 15:01:05.91026	639
97507	2024-10-28 15:01:06.292134	247
246697	2024-10-28 16:01:04.995749	345
21373	2024-10-28 16:01:05.314748	196
156526	2024-10-28 16:01:05.657663	236
74863	2024-10-28 16:01:05.968677	579
97507	2024-10-28 16:01:06.367489	225
246697	2024-10-28 17:01:04.307076	280
21373	2024-10-28 17:01:04.722665	190
156526	2024-10-28 17:01:05.009386	199
74863	2024-10-28 17:01:05.278678	683
97507	2024-10-28 17:01:05.674406	214
246697	2024-10-28 18:01:04.574953	250
21373	2024-10-28 18:01:04.991472	176
156526	2024-10-28 18:01:05.352397	165
74863	2024-10-28 18:01:05.639745	569
97507	2024-10-28 18:01:06.028618	216
246697	2024-10-28 19:01:04.645753	228
21373	2024-10-28 19:01:05.068669	161
156526	2024-10-28 19:01:05.457512	146
74863	2024-10-28 19:01:05.734528	605
97507	2024-10-28 19:01:06.142608	194
246697	2024-10-28 20:01:05.126977	365
21373	2024-10-28 20:01:05.497326	211
156526	2024-10-28 20:01:05.752185	193
74863	2024-10-28 20:01:05.947547	729
97507	2024-10-28 20:01:06.230832	220
246697	2024-10-28 21:01:04.866733	512
21373	2024-10-28 21:01:05.281805	250
156526	2024-10-28 21:01:05.598825	274
74863	2024-10-28 21:01:05.875524	694
97507	2024-10-28 21:01:06.188406	361
246697	2024-10-28 22:01:05.085488	589
21373	2024-10-28 22:01:05.36535	338
156526	2024-10-28 22:01:05.652801	291
74863	2024-10-28 22:01:06.005112	696
97507	2024-10-28 22:01:06.318061	427
246697	2024-10-28 23:01:04.710949	603
21373	2024-10-28 23:01:05.03462	290
156526	2024-10-28 23:01:05.381518	391
74863	2024-10-28 23:01:05.661798	814
97507	2024-10-28 23:01:05.981206	430
246697	2024-10-29 00:01:04.358841	676
21373	2024-10-29 00:01:04.635225	351
156526	2024-10-29 00:01:04.919332	350
74863	2024-10-29 00:01:05.185052	658
97507	2024-10-29 00:01:05.511278	397
246697	2024-10-29 01:01:04.927791	551
21373	2024-10-29 01:01:05.228742	369
156526	2024-10-29 01:01:05.567796	397
74863	2024-10-29 01:01:05.793434	851
97507	2024-10-29 01:01:06.101631	513
246697	2024-10-29 02:01:05.086868	868
21373	2024-10-29 02:01:05.362945	466
156526	2024-10-29 02:01:05.651437	474
74863	2024-10-29 02:01:05.968265	832
97507	2024-10-29 02:01:06.271601	574
246697	2024-10-29 03:01:04.510016	762
21373	2024-10-29 03:01:04.7909	436
156526	2024-10-29 03:01:05.079072	485
74863	2024-10-29 03:01:05.356976	827
97507	2024-10-29 03:01:05.6721	542
246697	2024-10-29 04:01:04.110874	744
21373	2024-10-29 04:01:04.308174	410
156526	2024-10-29 04:01:04.508719	412
74863	2024-10-29 04:01:04.699566	840
97507	2024-10-29 04:01:04.994026	549
246697	2024-10-29 05:01:03.952209	802
21373	2024-10-29 05:01:04.145554	517
156526	2024-10-29 05:01:04.382121	422
74863	2024-10-29 05:01:04.65541	860
97507	2024-10-29 05:01:04.981952	639
246697	2024-10-29 06:01:04.631201	880
21373	2024-10-29 06:01:04.973078	546
156526	2024-10-29 06:01:05.268986	508
74863	2024-10-29 06:01:05.553625	806
97507	2024-10-29 06:01:05.766646	565
246697	2024-10-29 07:01:07.525769	432
21373	2024-10-29 07:01:08.054428	323
156526	2024-10-29 07:01:08.337837	274
74863	2024-10-29 07:01:08.614465	764
97507	2024-10-29 07:01:08.948874	413
246697	2024-10-29 08:01:05.159724	230
21373	2024-10-29 08:01:05.518986	183
156526	2024-10-29 08:01:05.845878	204
74863	2024-10-29 08:01:06.132864	588
97507	2024-10-29 08:01:06.535817	190
246697	2024-10-29 09:01:05.042217	238
21373	2024-10-29 09:01:05.538914	144
156526	2024-10-29 09:01:05.932548	148
74863	2024-10-29 09:01:06.214099	706
97507	2024-10-29 09:01:06.630111	177
246697	2024-10-29 10:01:05.216263	243
21373	2024-10-29 10:01:05.664556	170
156526	2024-10-29 10:01:05.916136	193
74863	2024-10-29 10:01:06.138433	659
97507	2024-10-29 10:01:06.556107	192
246697	2024-10-29 11:01:04.747839	262
21373	2024-10-29 11:01:05.143951	186
156526	2024-10-29 11:01:05.50053	218
74863	2024-10-29 11:01:05.832994	605
97507	2024-10-29 11:01:06.224975	182
246697	2024-10-29 12:01:04.707109	346
21373	2024-10-29 12:01:05.030934	192
156526	2024-10-29 12:01:05.372362	200
74863	2024-10-29 12:01:05.659591	718
97507	2024-10-29 12:01:06.079666	186
246697	2024-10-29 13:01:05.016378	389
21373	2024-10-29 13:01:05.340589	233
156526	2024-10-29 13:01:05.56615	233
74863	2024-10-29 13:01:05.839635	601
97507	2024-10-29 13:01:06.243445	190
246697	2024-10-29 14:01:05.118395	336
21373	2024-10-29 14:01:05.596835	198
156526	2024-10-29 14:01:06.018308	226
74863	2024-10-29 14:01:06.295054	682
97507	2024-10-29 14:01:06.567366	213
246697	2024-10-29 15:01:04.573368	303
21373	2024-10-29 15:01:05.051323	220
156526	2024-10-29 15:01:05.400574	213
74863	2024-10-29 15:01:05.686565	621
97507	2024-10-29 15:01:06.06967	212
246697	2024-10-29 16:01:04.745275	334
21373	2024-10-29 16:01:05.090948	225
156526	2024-10-29 16:01:05.437341	167
74863	2024-10-29 16:01:05.714776	601
97507	2024-10-29 16:01:06.102192	194
246697	2024-10-29 17:01:05.187322	320
21373	2024-10-29 17:01:05.633328	171
156526	2024-10-29 17:01:05.968707	208
74863	2024-10-29 17:01:06.254467	649
97507	2024-10-29 17:01:06.658421	201
246697	2024-10-29 18:01:04.621163	216
21373	2024-10-29 18:01:05.05583	147
156526	2024-10-29 18:01:05.442616	139
74863	2024-10-29 18:01:05.717945	589
97507	2024-10-29 18:01:06.130195	189
246697	2024-10-29 19:01:04.861524	251
21373	2024-10-29 19:01:05.33283	153
156526	2024-10-29 19:01:05.676896	171
74863	2024-10-29 19:01:05.950715	608
97507	2024-10-29 19:01:06.376374	144
246697	2024-10-29 20:01:04.657411	257
21373	2024-10-29 20:01:04.937011	161
156526	2024-10-29 20:01:05.163807	193
74863	2024-10-29 20:01:05.412278	622
97507	2024-10-29 20:01:05.804108	200
246697	2024-10-29 21:01:04.736643	625
21373	2024-10-29 21:01:05.139239	267
156526	2024-10-29 21:01:05.460472	253
74863	2024-10-29 21:01:05.735203	618
97507	2024-10-29 21:01:06.097193	292
246697	2024-10-29 22:01:05.295151	625
21373	2024-10-29 22:01:05.589362	366
156526	2024-10-29 22:01:05.928849	297
74863	2024-10-29 22:01:06.201833	803
97507	2024-10-29 22:01:06.563936	361
246697	2024-10-29 23:01:05.01604	712
21373	2024-10-29 23:01:05.333605	313
156526	2024-10-29 23:01:05.632849	349
74863	2024-10-29 23:01:05.906308	835
97507	2024-10-29 23:01:06.251933	322
246697	2024-10-30 00:01:05.06654	655
21373	2024-10-30 00:01:05.480374	314
156526	2024-10-30 00:01:05.783839	344
74863	2024-10-30 00:01:06.057385	745
97507	2024-10-30 00:01:06.388993	421
246697	2024-10-30 01:01:06.452051	750
21373	2024-10-30 01:01:06.676262	435
156526	2024-10-30 01:01:06.86226	465
74863	2024-10-30 01:01:07.078973	862
97507	2024-10-30 01:01:07.392694	508
246697	2024-10-30 02:01:04.72976	765
21373	2024-10-30 02:01:05.024633	421
156526	2024-10-30 02:01:05.243613	546
74863	2024-10-30 02:01:05.425026	867
97507	2024-10-30 02:01:05.64165	626
246697	2024-10-30 03:01:05.446279	701
21373	2024-10-30 03:01:05.696808	470
156526	2024-10-30 03:01:06.126349	438
74863	2024-10-30 03:01:06.408695	856
97507	2024-10-30 03:01:06.729049	557
246697	2024-10-30 04:01:04.607188	781
21373	2024-10-30 04:01:04.906721	475
156526	2024-10-30 04:01:05.195178	410
74863	2024-10-30 04:01:05.479642	845
97507	2024-10-30 04:01:05.794132	544
246697	2024-10-30 05:01:04.742264	876
21373	2024-10-30 05:01:05.092543	521
156526	2024-10-30 05:01:05.326294	407
74863	2024-10-30 05:01:05.566086	839
97507	2024-10-30 05:01:05.880329	614
246697	2024-10-30 06:01:04.992257	817
21373	2024-10-30 06:01:05.333313	522
156526	2024-10-30 06:01:05.619863	518
74863	2024-10-30 06:01:05.886991	844
97507	2024-10-30 06:01:06.201939	541
246697	2024-10-30 07:01:04.861782	475
21373	2024-10-30 07:01:05.189617	307
156526	2024-10-30 07:01:05.543601	391
74863	2024-10-30 07:01:05.815219	701
97507	2024-10-30 07:01:06.16358	369
246697	2024-10-30 08:01:05.557901	278
21373	2024-10-30 08:01:05.981137	166
156526	2024-10-30 08:01:06.324836	201
74863	2024-10-30 08:01:06.701418	651
97507	2024-10-30 08:01:07.095153	173
246697	2024-10-30 09:01:04.825191	232
21373	2024-10-30 09:01:05.210924	169
156526	2024-10-30 09:01:05.58583	140
74863	2024-10-30 09:01:05.870386	626
97507	2024-10-30 09:01:06.280903	178
246697	2024-10-30 10:01:05.061639	238
21373	2024-10-30 10:01:05.577954	178
156526	2024-10-30 10:01:05.950509	164
74863	2024-10-30 10:01:06.234789	607
97507	2024-10-30 10:01:06.572481	184
246697	2024-10-30 11:01:05.04033	312
21373	2024-10-30 11:01:05.432707	179
156526	2024-10-30 11:01:05.770323	175
74863	2024-10-30 11:01:06.048599	615
97507	2024-10-30 11:01:06.402479	183
246697	2024-10-30 12:01:04.817054	304
21373	2024-10-30 12:01:05.24977	191
156526	2024-10-30 12:01:05.648513	169
74863	2024-10-30 12:01:05.929018	631
97507	2024-10-30 12:01:06.342662	181
246697	2024-10-30 13:01:05.256577	348
21373	2024-10-30 13:01:05.67155	203
156526	2024-10-30 13:01:06.007432	202
74863	2024-10-30 13:01:06.295613	605
97507	2024-10-30 13:01:06.692388	197
246697	2024-10-30 14:01:05.306485	357
21373	2024-10-30 14:01:05.635739	203
156526	2024-10-30 14:01:06.061752	201
74863	2024-10-30 14:01:06.343409	689
97507	2024-10-30 14:01:06.885092	240
246697	2024-10-30 15:01:04.522037	389
21373	2024-10-30 15:01:04.865967	192
156526	2024-10-30 15:01:05.249659	187
74863	2024-10-30 15:01:05.539156	642
97507	2024-10-30 15:01:05.921642	222
246697	2024-10-30 16:01:04.772728	304
21373	2024-10-30 16:01:05.0177	188
156526	2024-10-30 16:01:05.409609	224
74863	2024-10-30 16:01:05.690532	666
97507	2024-10-30 16:01:06.089388	221
246697	2024-10-30 17:01:04.854454	263
21373	2024-10-30 17:01:05.323844	174
156526	2024-10-30 17:01:05.682966	168
74863	2024-10-30 17:01:05.964553	680
97507	2024-10-30 17:01:06.360541	181
246697	2024-10-30 18:01:04.80758	227
21373	2024-10-30 18:01:05.281043	157
156526	2024-10-30 18:01:05.630777	166
74863	2024-10-30 18:01:05.911968	570
97507	2024-10-30 18:01:06.316961	182
246697	2024-10-30 19:01:04.811995	220
21373	2024-10-30 19:01:05.308586	152
156526	2024-10-30 19:01:05.675417	140
74863	2024-10-30 19:01:05.960816	604
97507	2024-10-30 19:01:06.377244	178
246697	2024-10-30 20:01:04.675192	335
21373	2024-10-30 20:01:04.931698	190
156526	2024-10-30 20:01:05.228959	181
74863	2024-10-30 20:01:05.425077	692
97507	2024-10-30 20:01:05.750091	236
246697	2024-10-30 21:01:04.728112	523
21373	2024-10-30 21:01:05.14886	269
156526	2024-10-30 21:01:05.473009	276
74863	2024-10-30 21:01:05.752092	715
97507	2024-10-30 21:01:06.154566	247
246697	2024-10-30 22:01:05.004792	673
21373	2024-10-30 22:01:05.397819	278
156526	2024-10-30 22:01:05.700136	350
74863	2024-10-30 22:01:05.980481	739
97507	2024-10-30 22:01:06.327809	325
246697	2024-10-30 23:01:04.223298	671
21373	2024-10-30 23:01:04.670908	277
156526	2024-10-30 23:01:04.955646	336
74863	2024-10-30 23:01:05.225845	802
97507	2024-10-30 23:01:05.56667	371
246697	2024-10-31 00:01:04.951621	657
21373	2024-10-31 00:01:05.371264	284
156526	2024-10-31 00:01:05.671639	313
74863	2024-10-31 00:01:05.939135	771
97507	2024-10-31 00:01:06.270272	378
246697	2024-10-31 01:01:05.389219	635
21373	2024-10-31 01:01:05.941098	366
156526	2024-10-31 01:01:06.139276	416
74863	2024-10-31 01:01:06.324501	789
97507	2024-10-31 01:01:06.638003	513
246697	2024-10-31 02:01:04.783814	874
21373	2024-10-31 02:01:05.075482	434
156526	2024-10-31 02:01:05.297187	488
74863	2024-10-31 02:01:05.496301	827
97507	2024-10-31 02:01:05.702853	531
246697	2024-10-31 03:01:04.857071	729
21373	2024-10-31 03:01:05.141619	487
156526	2024-10-31 03:01:05.452754	531
74863	2024-10-31 03:01:05.646358	823
97507	2024-10-31 03:01:05.860612	606
246697	2024-10-31 04:01:04.84974	772
21373	2024-10-31 04:01:05.130304	417
156526	2024-10-31 04:01:05.385144	415
74863	2024-10-31 04:01:05.655674	843
97507	2024-10-31 04:01:06.017121	538
246697	2024-10-31 05:01:04.566687	816
21373	2024-10-31 05:01:04.780401	585
156526	2024-10-31 05:01:05.061461	431
74863	2024-10-31 05:01:05.345129	832
97507	2024-10-31 05:01:05.659107	679
246697	2024-10-31 06:01:04.899022	765
21373	2024-10-31 06:01:05.196125	568
156526	2024-10-31 06:01:05.495601	565
74863	2024-10-31 06:01:05.769972	858
97507	2024-10-31 06:01:06.091781	529
246697	2024-10-31 07:01:04.607264	549
21373	2024-10-31 07:01:04.972094	286
156526	2024-10-31 07:01:05.316868	386
74863	2024-10-31 07:01:05.598477	700
97507	2024-10-31 07:01:05.936092	446
246697	2024-10-31 08:01:04.995314	385
21373	2024-10-31 08:01:05.410593	200
156526	2024-10-31 08:01:05.767749	214
74863	2024-10-31 08:01:06.120243	577
97507	2024-10-31 08:01:06.547527	223
246697	2024-10-31 09:01:04.966468	261
21373	2024-10-31 09:01:05.379124	191
156526	2024-10-31 09:01:05.732343	178
74863	2024-10-31 09:01:06.0097	675
97507	2024-10-31 09:01:06.539347	186
246697	2024-10-31 10:01:05.019405	322
21373	2024-10-31 10:01:05.421225	211
156526	2024-10-31 10:01:05.859979	179
74863	2024-10-31 10:01:06.144166	570
97507	2024-10-31 10:01:06.566375	189
246697	2024-10-31 11:01:05.227095	281
21373	2024-10-31 11:01:05.693014	187
156526	2024-10-31 11:01:06.00973	174
74863	2024-10-31 11:01:06.285174	666
97507	2024-10-31 11:01:06.69901	165
246697	2024-10-31 12:01:04.723186	277
21373	2024-10-31 12:01:05.20626	171
156526	2024-10-31 12:01:05.547869	198
74863	2024-10-31 12:01:05.820843	667
97507	2024-10-31 12:01:06.222152	177
246697	2024-10-31 13:01:05.019966	298
21373	2024-10-31 13:01:05.421418	201
156526	2024-10-31 13:01:05.838121	237
74863	2024-10-31 13:01:06.107705	660
97507	2024-10-31 13:01:06.508556	181
246697	2024-10-31 14:01:04.92781	332
21373	2024-10-31 14:01:05.395051	223
156526	2024-10-31 14:01:05.715193	248
74863	2024-10-31 14:01:06.029066	619
97507	2024-10-31 14:01:06.458034	210
246697	2024-10-31 15:01:05.062228	378
21373	2024-10-31 15:01:05.471431	194
156526	2024-10-31 15:01:05.8521	187
74863	2024-10-31 15:01:06.142454	695
97507	2024-10-31 15:01:06.550114	247
246697	2024-10-31 16:01:04.860664	293
21373	2024-10-31 16:01:05.307068	173
156526	2024-10-31 16:01:05.656537	232
74863	2024-10-31 16:01:05.933974	649
97507	2024-10-31 16:01:06.34064	190
246697	2024-10-31 17:01:05.140702	278
21373	2024-10-31 17:01:05.545559	202
156526	2024-10-31 17:01:05.924631	186
74863	2024-10-31 17:01:06.221306	659
97507	2024-10-31 17:01:06.645421	192
246697	2024-10-31 18:01:04.786312	272
21373	2024-10-31 18:01:05.239548	151
156526	2024-10-31 18:01:05.611035	136
74863	2024-10-31 18:01:05.899943	551
97507	2024-10-31 18:01:06.257196	172
246697	2024-10-31 19:01:04.862752	246
21373	2024-10-31 19:01:05.324587	188
156526	2024-10-31 19:01:05.679559	172
74863	2024-10-31 19:01:05.975091	496
97507	2024-10-31 19:01:06.38596	174
246697	2024-10-31 20:01:04.950282	288
21373	2024-10-31 20:01:05.400457	205
156526	2024-10-31 20:01:05.742034	215
74863	2024-10-31 20:01:06.01988	656
97507	2024-10-31 20:01:06.391219	206
246697	2024-10-31 21:01:04.896735	416
21373	2024-10-31 21:01:05.389566	184
156526	2024-10-31 21:01:05.711958	253
74863	2024-10-31 21:01:05.988683	717
97507	2024-10-31 21:01:06.350394	273
246697	2024-10-31 22:01:04.89315	589
21373	2024-10-31 22:01:05.271428	207
156526	2024-10-31 22:01:05.586695	310
74863	2024-10-31 22:01:05.863958	734
97507	2024-10-31 22:01:06.240967	270
246697	2024-10-31 23:01:05.158002	672
21373	2024-10-31 23:01:05.528152	224
156526	2024-10-31 23:01:05.860996	406
74863	2024-10-31 23:01:06.140529	736
97507	2024-10-31 23:01:06.50049	309
246697	2024-11-01 00:01:05.136675	573
21373	2024-11-01 00:01:05.64283	214
156526	2024-11-01 00:01:05.942705	346
74863	2024-11-01 00:01:06.217969	787
97507	2024-11-01 00:01:06.560187	388
246697	2024-11-01 01:01:04.739879	583
21373	2024-11-01 01:01:05.094188	284
156526	2024-11-01 01:01:05.398603	275
74863	2024-11-01 01:01:05.676453	853
97507	2024-11-01 01:01:06.00351	425
246697	2024-11-01 02:01:05.207312	750
21373	2024-11-01 02:01:05.552943	339
156526	2024-11-01 02:01:05.945118	491
74863	2024-11-01 02:01:06.227644	856
97507	2024-11-01 02:01:06.560926	568
246697	2024-11-01 03:01:04.596182	733
21373	2024-11-01 03:01:04.923113	435
156526	2024-11-01 03:01:05.215547	520
74863	2024-11-01 03:01:05.549245	864
97507	2024-11-01 03:01:05.879966	544
246697	2024-11-01 04:01:04.398438	779
21373	2024-11-01 04:01:04.7696	514
156526	2024-11-01 04:01:05.057081	442
74863	2024-11-01 04:01:05.249985	887
97507	2024-11-01 04:01:05.571815	579
246697	2024-11-01 05:01:05.040968	744
21373	2024-11-01 05:01:05.361998	541
156526	2024-11-01 05:01:05.649699	464
74863	2024-11-01 05:01:05.925702	812
97507	2024-11-01 05:01:06.240352	720
246697	2024-11-01 06:01:04.646601	716
21373	2024-11-01 06:01:05.052279	578
156526	2024-11-01 06:01:05.340336	456
74863	2024-11-01 06:01:05.620657	868
97507	2024-11-01 06:01:05.948539	579
246697	2024-11-01 07:01:05.343451	722
21373	2024-11-01 07:01:05.650282	366
156526	2024-11-01 07:01:06.00321	379
74863	2024-11-01 07:01:06.280901	841
97507	2024-11-01 07:01:06.611014	512
246697	2024-11-01 08:01:04.685026	658
21373	2024-11-01 08:01:05.062239	335
156526	2024-11-01 08:01:05.370258	288
74863	2024-11-01 08:01:05.652202	799
97507	2024-11-01 08:01:05.969448	570
246697	2024-11-01 09:01:05.046332	419
21373	2024-11-01 09:01:05.321279	344
156526	2024-11-01 09:01:05.54252	323
74863	2024-11-01 09:01:05.824112	695
97507	2024-11-01 09:01:06.1764	391
246697	2024-11-01 10:01:05.343643	432
21373	2024-11-01 10:01:05.685938	293
156526	2024-11-01 10:01:06.103356	282
74863	2024-11-01 10:01:06.383682	804
97507	2024-11-01 10:01:06.738881	283
246697	2024-11-01 11:01:04.899922	383
21373	2024-11-01 11:01:05.232586	268
156526	2024-11-01 11:01:05.549238	308
74863	2024-11-01 11:01:05.827938	728
97507	2024-11-01 11:01:06.186788	264
246697	2024-11-01 12:01:05.381614	420
21373	2024-11-01 12:01:05.852935	248
156526	2024-11-01 12:01:06.075763	273
74863	2024-11-01 12:01:06.351422	688
97507	2024-11-01 12:01:06.728185	276
246697	2024-11-01 13:01:04.61324	414
21373	2024-11-01 13:01:04.87886	257
156526	2024-11-01 13:01:05.17371	362
74863	2024-11-01 13:01:05.458291	753
97507	2024-11-01 13:01:05.819554	303
246697	2024-11-01 14:01:04.85487	377
21373	2024-11-01 14:01:05.27202	319
156526	2024-11-01 14:01:05.567763	347
74863	2024-11-01 14:01:05.845264	732
97507	2024-11-01 14:01:06.188107	396
246697	2024-11-01 15:01:05.23956	529
21373	2024-11-01 15:01:05.594396	243
156526	2024-11-01 15:01:05.944318	308
74863	2024-11-01 15:01:06.226684	635
97507	2024-11-01 15:01:06.493971	343
246697	2024-11-01 16:01:04.815514	574
21373	2024-11-01 16:01:05.226203	246
156526	2024-11-01 16:01:05.537575	371
74863	2024-11-01 16:01:05.816905	711
97507	2024-11-01 16:01:06.165865	323
246697	2024-11-01 17:01:04.557294	607
21373	2024-11-01 17:01:04.962044	276
156526	2024-11-01 17:01:05.265307	351
74863	2024-11-01 17:01:05.545616	726
97507	2024-11-01 17:01:05.899757	319
246697	2024-11-01 18:01:04.699067	344
21373	2024-11-01 18:01:05.00164	217
156526	2024-11-01 18:01:05.348717	256
74863	2024-11-01 18:01:05.636475	601
97507	2024-11-01 18:01:05.959959	326
246697	2024-11-01 19:01:04.856682	505
21373	2024-11-01 19:01:05.204292	243
156526	2024-11-01 19:01:05.498799	327
74863	2024-11-01 19:01:05.823993	653
97507	2024-11-01 19:01:06.151537	303
246697	2024-11-01 20:01:04.763959	577
21373	2024-11-01 20:01:05.127334	250
156526	2024-11-01 20:01:05.417059	294
74863	2024-11-01 20:01:05.689733	740
97507	2024-11-01 20:01:06.085121	316
246697	2024-11-01 21:01:05.222731	615
21373	2024-11-01 21:01:05.552703	252
156526	2024-11-01 21:01:05.904261	425
74863	2024-11-01 21:01:06.168393	774
97507	2024-11-01 21:01:06.504417	373
246697	2024-11-01 22:01:04.553655	600
21373	2024-11-01 22:01:04.908351	287
156526	2024-11-01 22:01:05.188362	415
74863	2024-11-01 22:01:05.455111	801
97507	2024-11-01 22:01:05.807178	388
246697	2024-11-01 23:01:05.247111	644
21373	2024-11-01 23:01:05.586334	282
156526	2024-11-01 23:01:05.876899	375
74863	2024-11-01 23:01:06.182923	784
97507	2024-11-01 23:01:06.506093	444
246697	2024-11-02 00:01:04.785081	646
21373	2024-11-02 00:01:05.212383	298
156526	2024-11-02 00:01:05.492744	398
74863	2024-11-02 00:01:05.756549	784
97507	2024-11-02 00:01:06.090042	510
246697	2024-11-02 01:01:04.820983	752
21373	2024-11-02 01:01:05.118615	323
156526	2024-11-02 01:01:05.435842	437
74863	2024-11-02 01:01:05.719998	835
97507	2024-11-02 01:01:06.033397	541
246697	2024-11-02 02:01:04.502188	744
21373	2024-11-02 02:01:04.808395	364
156526	2024-11-02 02:01:05.054148	435
74863	2024-11-02 02:01:05.322811	864
97507	2024-11-02 02:01:05.593591	661
246697	2024-11-02 03:01:04.544191	712
21373	2024-11-02 03:01:04.859644	507
156526	2024-11-02 03:01:05.140778	458
74863	2024-11-02 03:01:05.422827	850
97507	2024-11-02 03:01:05.727973	615
246697	2024-11-02 04:01:05.08401	851
21373	2024-11-02 04:01:05.474743	566
156526	2024-11-02 04:01:05.67733	445
74863	2024-11-02 04:01:05.881979	897
97507	2024-11-02 04:01:06.13018	614
246697	2024-11-02 05:01:04.555749	769
21373	2024-11-02 05:01:04.87896	575
156526	2024-11-02 05:01:05.165418	492
74863	2024-11-02 05:01:05.432855	851
97507	2024-11-02 05:01:05.745586	620
246697	2024-11-02 06:01:05.034367	816
21373	2024-11-02 06:01:05.324505	530
156526	2024-11-02 06:01:05.62196	467
74863	2024-11-02 06:01:05.887188	856
97507	2024-11-02 06:01:06.241255	562
246697	2024-11-02 07:01:04.637525	711
21373	2024-11-02 07:01:04.990539	289
156526	2024-11-02 07:01:05.27924	509
74863	2024-11-02 07:01:05.545277	769
97507	2024-11-02 07:01:05.868895	353
246697	2024-11-02 08:01:04.951128	671
21373	2024-11-02 08:01:05.236728	363
156526	2024-11-02 08:01:05.590124	378
74863	2024-11-02 08:01:05.857237	682
97507	2024-11-02 08:01:06.182132	388
246697	2024-11-02 09:01:05.130277	509
21373	2024-11-02 09:01:05.464595	333
156526	2024-11-02 09:01:05.856076	445
74863	2024-11-02 09:01:06.129016	737
97507	2024-11-02 09:01:06.455189	404
246697	2024-11-02 10:01:05.48549	443
21373	2024-11-02 10:01:05.887243	258
156526	2024-11-02 10:01:06.205907	301
74863	2024-11-02 10:01:06.484652	689
97507	2024-11-02 10:01:06.845973	359
246697	2024-11-02 11:01:06.108572	414
21373	2024-11-02 11:01:06.405247	255
156526	2024-11-02 11:01:06.741821	266
74863	2024-11-02 11:01:07.017989	734
97507	2024-11-02 11:01:07.393432	263
246697	2024-11-02 12:01:05.633693	377
21373	2024-11-02 12:01:06.176329	210
156526	2024-11-02 12:01:06.787963	296
74863	2024-11-02 12:01:07.260965	627
97507	2024-11-02 12:01:07.762155	306
246697	2024-11-02 13:01:05.037081	467
21373	2024-11-02 13:01:05.427026	232
156526	2024-11-02 13:01:05.89238	298
74863	2024-11-02 13:01:06.351665	747
97507	2024-11-02 13:01:06.72705	278
246697	2024-11-02 14:01:05.010383	613
21373	2024-11-02 14:01:05.381652	285
156526	2024-11-02 14:01:05.680582	295
74863	2024-11-02 14:01:05.954444	736
97507	2024-11-02 14:01:06.277641	478
246697	2024-11-02 15:01:06.087033	534
21373	2024-11-02 15:01:06.515678	274
156526	2024-11-02 15:01:06.840355	284
74863	2024-11-02 15:01:07.116249	622
97507	2024-11-02 15:01:07.492964	318
246697	2024-11-02 16:01:05.256939	555
21373	2024-11-02 16:01:05.63963	235
156526	2024-11-02 16:01:05.955235	344
74863	2024-11-02 16:01:06.231645	749
97507	2024-11-02 16:01:06.604854	324
246697	2024-11-02 17:01:05.257664	387
21373	2024-11-02 17:01:05.671646	277
156526	2024-11-02 17:01:05.957201	277
74863	2024-11-02 17:01:06.227199	694
97507	2024-11-02 17:01:06.569226	363
246697	2024-11-02 18:01:04.688413	390
21373	2024-11-02 18:01:05.00523	229
156526	2024-11-02 18:01:05.31662	319
74863	2024-11-02 18:01:05.587687	707
97507	2024-11-02 18:01:05.951476	320
246697	2024-11-02 19:01:04.893016	451
21373	2024-11-02 19:01:05.243079	248
156526	2024-11-02 19:01:05.546805	288
74863	2024-11-02 19:01:05.867759	590
97507	2024-11-02 19:01:06.224195	278
246697	2024-11-02 20:01:04.861912	456
21373	2024-11-02 20:01:05.268045	256
156526	2024-11-02 20:01:05.561916	299
74863	2024-11-02 20:01:05.826791	725
97507	2024-11-02 20:01:06.175624	351
246697	2024-11-02 21:01:04.948952	417
21373	2024-11-02 21:01:05.224395	250
156526	2024-11-02 21:01:05.525952	386
74863	2024-11-02 21:01:05.808996	653
97507	2024-11-02 21:01:06.153262	315
246697	2024-11-02 22:01:04.522377	524
21373	2024-11-02 22:01:04.90913	301
156526	2024-11-02 22:01:05.21421	287
74863	2024-11-02 22:01:05.482986	827
97507	2024-11-02 22:01:05.801159	453
246697	2024-11-02 23:01:04.623572	621
21373	2024-11-02 23:01:04.953824	245
156526	2024-11-02 23:01:05.304871	385
74863	2024-11-02 23:01:05.574158	708
97507	2024-11-02 23:01:05.892613	389
246697	2024-11-03 00:01:04.858318	546
21373	2024-11-03 00:01:05.262118	276
156526	2024-11-03 00:01:05.571677	329
74863	2024-11-03 00:01:05.842403	691
97507	2024-11-03 00:01:06.171621	392
246697	2024-11-03 01:01:04.917195	672
21373	2024-11-03 01:01:05.234705	328
156526	2024-11-03 01:01:05.536308	298
74863	2024-11-03 01:01:05.80401	811
97507	2024-11-03 01:01:06.122661	426
246697	2024-11-03 02:01:05.4365	821
21373	2024-11-03 02:01:05.736306	330
156526	2024-11-03 02:01:06.029371	458
74863	2024-11-03 02:01:06.295266	845
97507	2024-11-03 02:01:06.656708	612
246697	2024-11-03 03:01:04.799957	848
21373	2024-11-03 03:01:05.133211	528
156526	2024-11-03 03:01:05.407344	524
74863	2024-11-03 03:01:05.706254	856
97507	2024-11-03 03:01:06.02441	610
246697	2024-11-03 04:01:04.73592	762
21373	2024-11-03 04:01:05.013664	551
156526	2024-11-03 04:01:05.302726	449
74863	2024-11-03 04:01:05.568596	925
97507	2024-11-03 04:01:05.918922	524
246697	2024-11-03 05:01:04.5884	777
21373	2024-11-03 05:01:04.827084	614
156526	2024-11-03 05:01:05.12965	406
74863	2024-11-03 05:01:05.396869	884
97507	2024-11-03 05:01:05.714717	624
246697	2024-11-03 06:01:04.520266	724
21373	2024-11-03 06:01:04.844353	481
156526	2024-11-03 06:01:05.116161	419
74863	2024-11-03 06:01:05.384052	819
97507	2024-11-03 06:01:05.705435	586
246697	2024-11-03 07:01:04.75182	707
21373	2024-11-03 07:01:05.085585	408
156526	2024-11-03 07:01:05.363327	411
74863	2024-11-03 07:01:05.638872	847
97507	2024-11-03 07:01:05.947125	566
246697	2024-11-03 08:01:04.874688	660
21373	2024-11-03 08:01:05.190011	365
156526	2024-11-03 08:01:05.465884	444
74863	2024-11-03 08:01:05.73069	759
97507	2024-11-03 08:01:06.044938	489
246697	2024-11-03 09:01:04.790262	667
21373	2024-11-03 09:01:05.074891	385
156526	2024-11-03 09:01:05.358124	465
74863	2024-11-03 09:01:05.686288	779
97507	2024-11-03 09:01:05.993051	541
246697	2024-11-03 10:01:05.161473	539
21373	2024-11-03 10:01:05.487747	358
156526	2024-11-03 10:01:05.787477	383
74863	2024-11-03 10:01:06.056046	670
97507	2024-11-03 10:01:06.324303	397
246697	2024-11-03 11:01:05.197319	483
21373	2024-11-03 11:01:05.577509	298
156526	2024-11-03 11:01:05.891638	348
74863	2024-11-03 11:01:06.176923	732
97507	2024-11-03 11:01:06.499661	391
246697	2024-11-03 12:01:05.350152	474
21373	2024-11-03 12:01:05.783342	246
156526	2024-11-03 12:01:06.085157	330
74863	2024-11-03 12:01:06.332429	784
97507	2024-11-03 12:01:06.664432	342
246697	2024-11-03 13:01:05.503674	475
21373	2024-11-03 13:01:05.864321	253
156526	2024-11-03 13:01:06.139077	311
74863	2024-11-03 13:01:06.409659	741
97507	2024-11-03 13:01:06.775844	285
246697	2024-11-03 14:01:05.13721	527
21373	2024-11-03 14:01:05.526158	300
156526	2024-11-03 14:01:05.821693	397
74863	2024-11-03 14:01:06.098192	738
97507	2024-11-03 14:01:06.484869	372
246697	2024-11-03 15:01:05.427242	435
21373	2024-11-03 15:01:05.836261	257
156526	2024-11-03 15:01:06.086175	321
74863	2024-11-03 15:01:06.369555	747
97507	2024-11-03 15:01:06.760027	328
246697	2024-11-03 16:01:05.260564	405
21373	2024-11-03 16:01:05.761558	224
156526	2024-11-03 16:01:06.09508	257
74863	2024-11-03 16:01:06.373229	737
97507	2024-11-03 16:01:06.84482	334
246697	2024-11-03 17:01:04.985402	423
21373	2024-11-03 17:01:05.500907	211
156526	2024-11-03 17:01:05.827267	267
74863	2024-11-03 17:01:06.173787	691
97507	2024-11-03 17:01:06.472387	321
246697	2024-11-03 18:01:05.269071	480
21373	2024-11-03 18:01:05.64592	209
156526	2024-11-03 18:01:06.038933	296
74863	2024-11-03 18:01:06.317946	587
97507	2024-11-03 18:01:06.672049	295
246697	2024-11-03 19:01:04.809983	368
21373	2024-11-03 19:01:05.166825	227
156526	2024-11-03 19:01:05.483384	319
74863	2024-11-03 19:01:05.791535	599
97507	2024-11-03 19:01:06.191603	340
246697	2024-11-03 20:01:04.644675	425
21373	2024-11-03 20:01:05.0256	255
156526	2024-11-03 20:01:05.371936	257
74863	2024-11-03 20:01:05.760753	788
97507	2024-11-03 20:01:06.118388	291
246697	2024-11-03 21:01:05.047485	692
21373	2024-11-03 21:01:05.504329	283
156526	2024-11-03 21:01:05.806673	416
74863	2024-11-03 21:01:06.08663	770
97507	2024-11-03 21:01:06.438378	381
246697	2024-11-03 22:01:04.993562	642
21373	2024-11-03 22:01:05.326526	302
156526	2024-11-03 22:01:05.694208	296
74863	2024-11-03 22:01:05.966755	762
97507	2024-11-03 22:01:06.299537	394
246697	2024-11-03 23:01:05.14464	656
21373	2024-11-03 23:01:05.480944	368
156526	2024-11-03 23:01:05.776053	418
74863	2024-11-03 23:01:06.057822	845
97507	2024-11-03 23:01:06.372667	482
246697	2024-11-04 00:01:04.868049	621
21373	2024-11-04 00:01:05.231682	355
156526	2024-11-04 00:01:05.519778	350
74863	2024-11-04 00:01:05.797025	809
97507	2024-11-04 00:01:06.143329	436
246697	2024-11-04 01:01:04.716129	787
21373	2024-11-04 01:01:05.004976	502
156526	2024-11-04 01:01:05.320753	387
74863	2024-11-04 01:01:05.594138	840
97507	2024-11-04 01:01:05.921073	567
246697	2024-11-04 02:01:04.901635	782
21373	2024-11-04 02:01:05.230289	400
156526	2024-11-04 02:01:05.518791	478
74863	2024-11-04 02:01:05.794302	828
97507	2024-11-04 02:01:06.102101	644
246697	2024-11-04 03:01:05.291149	722
21373	2024-11-04 03:01:05.577749	426
156526	2024-11-04 03:01:05.858691	377
74863	2024-11-04 03:01:06.164102	878
97507	2024-11-04 03:01:06.487624	595
246697	2024-11-04 04:01:04.591536	726
21373	2024-11-04 04:01:04.890497	499
156526	2024-11-04 04:01:05.169376	487
74863	2024-11-04 04:01:05.451261	838
97507	2024-11-04 04:01:05.769097	520
246697	2024-11-04 05:01:04.785288	816
21373	2024-11-04 05:01:05.068464	533
156526	2024-11-04 05:01:05.355876	479
74863	2024-11-04 05:01:05.757652	921
97507	2024-11-04 05:01:06.067843	677
246697	2024-11-04 06:01:05.073766	831
21373	2024-11-04 06:01:05.444963	569
156526	2024-11-04 06:01:05.7325	481
74863	2024-11-04 06:01:06.000999	800
97507	2024-11-04 06:01:06.323535	532
246697	2024-11-04 07:01:05.021851	397
21373	2024-11-04 07:01:05.341787	359
156526	2024-11-04 07:01:05.719643	342
74863	2024-11-04 07:01:06.002716	628
97507	2024-11-04 07:01:06.324747	446
246697	2024-11-04 08:01:05.184546	279
21373	2024-11-04 08:01:05.608051	172
156526	2024-11-04 08:01:05.999275	179
74863	2024-11-04 08:01:06.267371	665
97507	2024-11-04 08:01:06.565407	221
246697	2024-11-04 09:01:05.42222	270
21373	2024-11-04 09:01:05.966467	164
156526	2024-11-04 09:01:06.317573	178
74863	2024-11-04 09:01:06.596894	595
97507	2024-11-04 09:01:06.949907	161
246697	2024-11-04 10:01:05.348973	326
21373	2024-11-04 10:01:05.851791	202
156526	2024-11-04 10:01:06.193903	170
74863	2024-11-04 10:01:06.469443	645
97507	2024-11-04 10:01:06.874828	177
246697	2024-11-04 11:01:05.056224	350
21373	2024-11-04 11:01:05.462521	193
156526	2024-11-04 11:01:05.797029	202
74863	2024-11-04 11:01:06.072422	651
97507	2024-11-04 11:01:06.481687	179
246697	2024-11-04 12:01:05.028529	293
21373	2024-11-04 12:01:05.514526	208
156526	2024-11-04 12:01:05.852117	207
74863	2024-11-04 12:01:06.129065	649
97507	2024-11-04 12:01:06.520291	218
246697	2024-11-04 13:01:04.875952	412
21373	2024-11-04 13:01:05.244533	215
156526	2024-11-04 13:01:05.597883	193
74863	2024-11-04 13:01:05.874794	660
97507	2024-11-04 13:01:06.282189	271
246697	2024-11-04 14:01:04.484788	357
21373	2024-11-04 14:01:04.858547	213
156526	2024-11-04 14:01:05.17808	234
74863	2024-11-04 14:01:05.463327	625
97507	2024-11-04 14:01:05.830213	256
246697	2024-11-04 15:01:05.019316	380
21373	2024-11-04 15:01:05.391324	217
156526	2024-11-04 15:01:05.719549	235
74863	2024-11-04 15:01:06.004896	570
97507	2024-11-04 15:01:06.370399	246
246697	2024-11-04 16:01:04.879945	324
21373	2024-11-04 16:01:05.281961	214
156526	2024-11-04 16:01:05.698947	208
74863	2024-11-04 16:01:05.97863	669
97507	2024-11-04 16:01:06.355161	247
246697	2024-11-04 17:01:04.643387	300
21373	2024-11-04 17:01:05.110637	188
156526	2024-11-04 17:01:05.450796	190
74863	2024-11-04 17:01:05.721889	686
97507	2024-11-04 17:01:06.103303	236
246697	2024-11-04 18:01:04.653651	266
21373	2024-11-04 18:01:05.077749	177
156526	2024-11-04 18:01:05.493131	176
74863	2024-11-04 18:01:05.770594	616
97507	2024-11-04 18:01:06.167376	219
246697	2024-11-04 19:01:04.830238	244
21373	2024-11-04 19:01:05.271319	186
156526	2024-11-04 19:01:05.606455	172
74863	2024-11-04 19:01:05.87638	644
97507	2024-11-04 19:01:06.327019	198
246697	2024-11-04 20:01:04.853617	414
21373	2024-11-04 20:01:05.300028	206
156526	2024-11-04 20:01:05.65399	200
74863	2024-11-04 20:01:05.927271	673
97507	2024-11-04 20:01:06.304633	235
246697	2024-11-04 21:01:05.020397	560
21373	2024-11-04 21:01:05.36834	299
156526	2024-11-04 21:01:05.691397	295
74863	2024-11-04 21:01:05.967299	692
97507	2024-11-04 21:01:06.314748	343
246697	2024-11-04 22:01:04.790186	631
21373	2024-11-04 22:01:05.126876	334
156526	2024-11-04 22:01:05.413427	301
74863	2024-11-04 22:01:05.692237	757
97507	2024-11-04 22:01:06.025438	425
246697	2024-11-04 23:01:05.307023	661
21373	2024-11-04 23:01:05.680795	280
156526	2024-11-04 23:01:05.972976	367
74863	2024-11-04 23:01:06.245857	729
97507	2024-11-04 23:01:06.561338	440
246697	2024-11-05 00:01:04.832573	706
21373	2024-11-05 00:01:05.150217	423
156526	2024-11-05 00:01:05.441734	442
74863	2024-11-05 00:01:05.716431	824
97507	2024-11-05 00:01:06.037084	525
246697	2024-11-05 01:01:05.264855	664
21373	2024-11-05 01:01:05.553516	408
156526	2024-11-05 01:01:05.876417	402
74863	2024-11-05 01:01:06.146808	844
97507	2024-11-05 01:01:06.458123	443
246697	2024-11-05 02:01:04.748359	764
21373	2024-11-05 02:01:05.038243	440
156526	2024-11-05 02:01:05.314845	475
74863	2024-11-05 02:01:05.592083	887
97507	2024-11-05 02:01:05.901594	530
246697	2024-11-05 03:01:04.855205	731
21373	2024-11-05 03:01:05.130412	503
156526	2024-11-05 03:01:05.420368	402
74863	2024-11-05 03:01:05.696212	838
97507	2024-11-05 03:01:06.029249	549
246697	2024-11-05 04:01:05.27011	775
21373	2024-11-05 04:01:05.55228	460
156526	2024-11-05 04:01:05.888192	434
74863	2024-11-05 04:01:06.157342	840
97507	2024-11-05 04:01:06.475618	537
246697	2024-11-05 05:01:04.632762	829
21373	2024-11-05 05:01:04.92233	550
156526	2024-11-05 05:01:05.206051	476
74863	2024-11-05 05:01:05.476974	824
97507	2024-11-05 05:01:05.823174	620
246697	2024-11-05 06:01:05.051801	804
21373	2024-11-05 06:01:05.331345	518
156526	2024-11-05 06:01:05.615009	586
74863	2024-11-05 06:01:05.89147	816
97507	2024-11-05 06:01:06.243641	575
246697	2024-11-05 07:01:04.912177	468
21373	2024-11-05 07:01:05.236873	334
156526	2024-11-05 07:01:05.551548	321
74863	2024-11-05 07:01:05.819813	827
97507	2024-11-05 07:01:06.191357	423
246697	2024-11-05 08:01:04.977249	259
21373	2024-11-05 08:01:05.405729	175
156526	2024-11-05 08:01:05.799684	155
74863	2024-11-05 08:01:06.135923	527
97507	2024-11-05 08:01:06.537514	195
246697	2024-11-05 09:01:05.116971	195
21373	2024-11-05 09:01:05.605581	145
156526	2024-11-05 09:01:06.000093	136
74863	2024-11-05 09:01:06.277233	562
97507	2024-11-05 09:01:06.683092	175
246697	2024-11-05 10:01:04.980108	264
21373	2024-11-05 10:01:05.390266	183
156526	2024-11-05 10:01:05.826724	162
74863	2024-11-05 10:01:06.104527	681
97507	2024-11-05 10:01:06.517816	195
246697	2024-11-05 11:01:04.912491	322
21373	2024-11-05 11:01:05.309773	197
156526	2024-11-05 11:01:05.622681	236
74863	2024-11-05 11:01:05.89682	716
97507	2024-11-05 11:01:06.346011	188
246697	2024-11-05 12:01:04.607181	448
21373	2024-11-05 12:01:05.099586	186
156526	2024-11-05 12:01:05.460314	210
74863	2024-11-05 12:01:05.739965	610
97507	2024-11-05 12:01:06.158069	210
246697	2024-11-05 13:01:05.363776	325
21373	2024-11-05 13:01:05.808111	195
156526	2024-11-05 13:01:06.156778	197
74863	2024-11-05 13:01:06.439731	731
97507	2024-11-05 13:01:06.837472	203
246697	2024-11-05 14:01:05.25298	324
21373	2024-11-05 14:01:05.651003	185
156526	2024-11-05 14:01:06.072162	198
74863	2024-11-05 14:01:06.354545	609
97507	2024-11-05 14:01:06.739608	215
246697	2024-11-05 15:01:05.145844	393
21373	2024-11-05 15:01:05.60218	215
156526	2024-11-05 15:01:05.938191	217
74863	2024-11-05 15:01:06.214713	708
97507	2024-11-05 15:01:06.596551	229
246697	2024-11-05 16:01:04.821926	348
21373	2024-11-05 16:01:05.236403	187
156526	2024-11-05 16:01:05.576497	242
74863	2024-11-05 16:01:05.85565	594
97507	2024-11-05 16:01:06.261405	182
246697	2024-11-05 17:01:05.226543	251
21373	2024-11-05 17:01:05.737427	145
156526	2024-11-05 17:01:06.094752	165
74863	2024-11-05 17:01:06.367742	592
97507	2024-11-05 17:01:06.776512	194
246697	2024-11-05 18:01:04.918425	214
21373	2024-11-05 18:01:05.294482	189
156526	2024-11-05 18:01:05.646903	180
74863	2024-11-05 18:01:05.977705	651
97507	2024-11-05 18:01:06.376598	186
246697	2024-11-05 19:01:04.735755	272
21373	2024-11-05 19:01:05.168119	166
156526	2024-11-05 19:01:05.534166	159
74863	2024-11-05 19:01:05.817008	629
97507	2024-11-05 19:01:06.239047	175
246697	2024-11-05 20:01:04.833675	337
21373	2024-11-05 20:01:05.362794	173
156526	2024-11-05 20:01:05.711132	172
74863	2024-11-05 20:01:05.988248	700
97507	2024-11-05 20:01:06.390784	203
246697	2024-11-05 21:01:04.560143	440
21373	2024-11-05 21:01:04.912348	273
156526	2024-11-05 21:01:05.277895	304
74863	2024-11-05 21:01:05.555509	657
97507	2024-11-05 21:01:05.926204	315
246697	2024-11-05 22:01:05.306042	644
21373	2024-11-05 22:01:05.632642	277
156526	2024-11-05 22:01:05.99348	362
74863	2024-11-05 22:01:06.269165	701
97507	2024-11-05 22:01:06.602466	409
246697	2024-11-05 23:01:04.834062	843
21373	2024-11-05 23:01:05.198598	310
156526	2024-11-05 23:01:05.490689	424
74863	2024-11-05 23:01:05.76927	814
97507	2024-11-05 23:01:06.098552	382
246697	2024-11-06 00:01:05.279221	640
21373	2024-11-06 00:01:05.626266	354
156526	2024-11-06 00:01:05.925633	320
74863	2024-11-06 00:01:06.253393	794
97507	2024-11-06 00:01:06.589667	455
246697	2024-11-06 01:01:05.170189	684
21373	2024-11-06 01:01:05.466767	356
156526	2024-11-06 01:01:05.79026	410
74863	2024-11-06 01:01:06.068989	761
97507	2024-11-06 01:01:06.389208	623
246697	2024-11-06 02:01:04.519326	824
21373	2024-11-06 02:01:04.86914	423
156526	2024-11-06 02:01:05.145902	406
74863	2024-11-06 02:01:05.420016	831
97507	2024-11-06 02:01:05.732481	644
246697	2024-11-06 03:01:05.374945	742
21373	2024-11-06 03:01:05.710156	520
156526	2024-11-06 03:01:05.993118	415
74863	2024-11-06 03:01:06.266791	830
97507	2024-11-06 03:01:06.578277	603
246697	2024-11-06 04:01:04.754586	742
21373	2024-11-06 04:01:05.032492	454
156526	2024-11-06 04:01:05.319189	422
74863	2024-11-06 04:01:05.589729	882
97507	2024-11-06 04:01:05.910051	551
246697	2024-11-06 05:01:05.144545	761
21373	2024-11-06 05:01:05.445599	497
156526	2024-11-06 05:01:05.727391	573
74863	2024-11-06 05:01:06.000903	839
97507	2024-11-06 05:01:06.314757	580
246697	2024-11-06 06:01:05.299741	883
21373	2024-11-06 06:01:05.60201	524
156526	2024-11-06 06:01:05.878884	510
74863	2024-11-06 06:01:06.153757	853
97507	2024-11-06 06:01:06.573267	494
246697	2024-11-06 07:01:05.211434	368
21373	2024-11-06 07:01:05.610919	327
156526	2024-11-06 07:01:05.904349	332
74863	2024-11-06 07:01:06.185601	715
97507	2024-11-06 07:01:06.563849	300
246697	2024-11-06 08:01:05.113892	282
21373	2024-11-06 08:01:05.589682	174
156526	2024-11-06 08:01:05.944674	182
74863	2024-11-06 08:01:06.225702	700
97507	2024-11-06 08:01:06.634123	197
246697	2024-11-06 09:01:04.974699	229
21373	2024-11-06 09:01:05.508614	139
156526	2024-11-06 09:01:05.872303	166
74863	2024-11-06 09:01:06.161583	550
97507	2024-11-06 09:01:06.554844	178
246697	2024-11-06 10:01:05.407367	297
21373	2024-11-06 10:01:05.861068	196
156526	2024-11-06 10:01:06.206404	187
74863	2024-11-06 10:01:06.492021	583
97507	2024-11-06 10:01:06.8961	185
246697	2024-11-06 11:01:05.012814	344
21373	2024-11-06 11:01:05.441444	166
156526	2024-11-06 11:01:05.811499	181
74863	2024-11-06 11:01:06.1341	732
97507	2024-11-06 11:01:06.533938	176
246697	2024-11-06 12:01:04.678406	393
21373	2024-11-06 12:01:05.149329	184
156526	2024-11-06 12:01:05.483033	217
74863	2024-11-06 12:01:05.764439	647
97507	2024-11-06 12:01:06.140346	208
246697	2024-11-06 13:01:04.770185	356
21373	2024-11-06 13:01:05.198173	196
156526	2024-11-06 13:01:05.540863	188
74863	2024-11-06 13:01:05.824533	641
97507	2024-11-06 13:01:06.211829	190
246697	2024-11-06 14:01:04.96202	374
21373	2024-11-06 14:01:05.339877	219
156526	2024-11-06 14:01:05.67506	193
74863	2024-11-06 14:01:05.946449	647
97507	2024-11-06 14:01:06.333001	237
246697	2024-11-06 15:01:05.134807	418
21373	2024-11-06 15:01:05.50799	190
156526	2024-11-06 15:01:05.837069	221
74863	2024-11-06 15:01:06.114902	697
97507	2024-11-06 15:01:06.53103	189
246697	2024-11-06 16:01:04.966426	397
21373	2024-11-06 16:01:05.362624	211
156526	2024-11-06 16:01:05.682577	215
74863	2024-11-06 16:01:06.029047	567
97507	2024-11-06 16:01:06.417275	193
246697	2024-11-06 17:01:04.811703	273
21373	2024-11-06 17:01:05.220396	166
156526	2024-11-06 17:01:05.568619	183
74863	2024-11-06 17:01:05.845	652
97507	2024-11-06 17:01:06.240035	176
246697	2024-11-06 18:01:05.0227	190
21373	2024-11-06 18:01:05.486795	185
156526	2024-11-06 18:01:05.847044	155
74863	2024-11-06 18:01:06.134867	559
97507	2024-11-06 18:01:06.554764	182
246697	2024-11-06 19:01:05.658098	168
21373	2024-11-06 19:01:06.86711	179
156526	2024-11-06 19:01:07.230402	162
74863	2024-11-06 19:01:07.515829	552
97507	2024-11-06 19:01:07.933272	172
246697	2024-11-06 20:01:04.846338	314
21373	2024-11-06 20:01:05.292578	160
156526	2024-11-06 20:01:05.656693	182
74863	2024-11-06 20:01:05.937797	619
97507	2024-11-06 20:01:06.313618	198
246697	2024-11-06 21:01:05.946579	450
21373	2024-11-06 21:01:06.314459	274
156526	2024-11-06 21:01:06.661983	227
74863	2024-11-06 21:01:06.932273	683
97507	2024-11-06 21:01:07.278378	273
246697	2024-11-06 22:01:05.061042	601
21373	2024-11-06 22:01:05.494063	349
156526	2024-11-06 22:01:05.796309	401
74863	2024-11-06 22:01:06.073448	698
97507	2024-11-06 22:01:06.423698	398
246697	2024-11-06 23:01:07.783648	643
21373	2024-11-06 23:01:08.136477	286
156526	2024-11-06 23:01:08.434577	379
74863	2024-11-06 23:01:08.705158	853
97507	2024-11-06 23:01:09.098127	359
246697	2024-11-07 00:01:05.46504	657
21373	2024-11-07 00:01:05.820513	328
156526	2024-11-07 00:01:06.154327	352
74863	2024-11-07 00:01:06.427584	732
97507	2024-11-07 00:01:06.761198	387
246697	2024-11-07 01:01:05.060807	778
21373	2024-11-07 01:01:05.384361	352
156526	2024-11-07 01:01:05.666908	451
74863	2024-11-07 01:01:05.943287	845
97507	2024-11-07 01:01:06.263706	447
246697	2024-11-07 02:01:04.637883	805
21373	2024-11-07 02:01:04.991316	398
156526	2024-11-07 02:01:05.276652	516
74863	2024-11-07 02:01:05.551337	816
97507	2024-11-07 02:01:05.86449	670
246697	2024-11-07 03:01:04.548922	766
21373	2024-11-07 03:01:04.829125	502
156526	2024-11-07 03:01:05.149519	412
74863	2024-11-07 03:01:05.414325	833
97507	2024-11-07 03:01:05.726427	560
246697	2024-11-07 04:01:05.106866	733
21373	2024-11-07 04:01:05.378711	544
156526	2024-11-07 04:01:05.666102	428
74863	2024-11-07 04:01:05.937643	885
97507	2024-11-07 04:01:06.271954	590
246697	2024-11-07 05:01:04.702478	928
21373	2024-11-07 05:01:04.984598	578
156526	2024-11-07 05:01:05.326182	420
74863	2024-11-07 05:01:05.603728	825
97507	2024-11-07 05:01:05.92207	659
246697	2024-11-07 06:01:05.309774	854
21373	2024-11-07 06:01:05.650971	537
156526	2024-11-07 06:01:05.942869	490
74863	2024-11-07 06:01:06.211676	802
97507	2024-11-07 06:01:06.530574	637
246697	2024-11-07 07:01:04.835657	557
21373	2024-11-07 07:01:05.218355	364
156526	2024-11-07 07:01:05.515651	335
74863	2024-11-07 07:01:05.799402	663
97507	2024-11-07 07:01:06.128602	443
246697	2024-11-07 08:01:05.499567	295
21373	2024-11-07 08:01:05.944915	177
156526	2024-11-07 08:01:06.32956	176
74863	2024-11-07 08:01:06.608051	612
97507	2024-11-07 08:01:06.988421	218
246697	2024-11-07 09:01:05.474657	223
21373	2024-11-07 09:01:05.932332	159
156526	2024-11-07 09:01:06.317523	176
74863	2024-11-07 09:01:06.604883	624
97507	2024-11-07 09:01:07.005787	175
246697	2024-11-07 10:01:05.161053	215
21373	2024-11-07 10:01:05.631023	193
156526	2024-11-07 10:01:05.975458	217
74863	2024-11-07 10:01:06.258959	637
97507	2024-11-07 10:01:06.661823	179
246697	2024-11-07 11:01:05.113631	280
21373	2024-11-07 11:01:05.521708	179
156526	2024-11-07 11:01:05.887536	182
74863	2024-11-07 11:01:06.241735	620
97507	2024-11-07 11:01:06.632423	169
246697	2024-11-07 12:01:04.700044	359
21373	2024-11-07 12:01:05.113972	183
156526	2024-11-07 12:01:05.472108	161
74863	2024-11-07 12:01:05.75223	645
97507	2024-11-07 12:01:06.203918	185
246697	2024-11-07 13:01:04.423266	436
21373	2024-11-07 13:01:04.84995	206
156526	2024-11-07 13:01:05.16243	231
74863	2024-11-07 13:01:05.441021	692
97507	2024-11-07 13:01:05.836926	210
246697	2024-11-07 14:01:04.941789	415
21373	2024-11-07 14:01:05.377357	190
156526	2024-11-07 14:01:05.696769	208
74863	2024-11-07 14:01:05.983788	558
97507	2024-11-07 14:01:06.389109	229
246697	2024-11-07 15:01:04.852669	398
21373	2024-11-07 15:01:05.293459	190
156526	2024-11-07 15:01:05.598926	209
74863	2024-11-07 15:01:05.878881	607
97507	2024-11-07 15:01:06.264128	215
246697	2024-11-07 16:01:04.606497	284
21373	2024-11-07 16:01:05.028126	211
156526	2024-11-07 16:01:05.349395	224
74863	2024-11-07 16:01:05.621677	622
97507	2024-11-07 16:01:05.999424	196
246697	2024-11-07 17:01:05.087483	317
21373	2024-11-07 17:01:05.513785	151
156526	2024-11-07 17:01:05.864323	157
74863	2024-11-07 17:01:06.19244	637
97507	2024-11-07 17:01:06.5788	198
246697	2024-11-07 18:01:05.476559	232
21373	2024-11-07 18:01:05.875164	165
156526	2024-11-07 18:01:06.24946	137
74863	2024-11-07 18:01:06.594896	605
97507	2024-11-07 18:01:07.001568	192
246697	2024-11-07 19:01:05.286815	228
21373	2024-11-07 19:01:05.720786	157
156526	2024-11-07 19:01:06.144134	165
74863	2024-11-07 19:01:06.416964	713
97507	2024-11-07 19:01:06.83118	162
246697	2024-11-07 20:01:04.803889	276
21373	2024-11-07 20:01:05.2178	182
156526	2024-11-07 20:01:05.572959	214
74863	2024-11-07 20:01:05.9082	611
97507	2024-11-07 20:01:06.303156	195
246697	2024-11-07 21:01:04.526523	540
21373	2024-11-07 21:01:04.959242	225
156526	2024-11-07 21:01:05.279765	250
74863	2024-11-07 21:01:05.555866	663
97507	2024-11-07 21:01:05.931379	286
246697	2024-11-07 22:01:05.146803	668
21373	2024-11-07 22:01:05.705433	278
156526	2024-11-07 22:01:05.998548	421
74863	2024-11-07 22:01:06.270242	771
97507	2024-11-07 22:01:06.610768	402
246697	2024-11-07 23:01:04.713944	496
21373	2024-11-07 23:01:05.102573	307
156526	2024-11-07 23:01:05.397924	348
74863	2024-11-07 23:01:05.686286	667
97507	2024-11-07 23:01:06.031844	393
246697	2024-11-08 00:01:06.033274	665
21373	2024-11-08 00:01:06.368565	288
156526	2024-11-08 00:01:06.672963	348
74863	2024-11-08 00:01:06.942018	812
97507	2024-11-08 00:01:07.279804	429
246697	2024-11-08 01:01:05.73095	774
21373	2024-11-08 01:01:06.046068	368
156526	2024-11-08 01:01:06.334455	481
74863	2024-11-08 01:01:06.603649	833
97507	2024-11-08 01:01:06.946304	452
246697	2024-11-08 02:01:05.238254	749
21373	2024-11-08 02:01:05.573085	446
156526	2024-11-08 02:01:05.857343	451
74863	2024-11-08 02:01:06.132016	842
97507	2024-11-08 02:01:06.452869	659
246697	2024-11-08 03:01:05.212047	648
21373	2024-11-08 03:01:05.56995	561
156526	2024-11-08 03:01:05.847041	373
74863	2024-11-08 03:01:06.123626	844
97507	2024-11-08 03:01:06.439558	526
246697	2024-11-08 04:01:04.803654	713
21373	2024-11-08 04:01:05.139738	576
156526	2024-11-08 04:01:05.428702	461
74863	2024-11-08 04:01:05.703471	832
97507	2024-11-08 04:01:06.01518	591
246697	2024-11-08 05:01:04.933928	820
21373	2024-11-08 05:01:05.209669	613
156526	2024-11-08 05:01:05.529522	413
74863	2024-11-08 05:01:05.808576	847
97507	2024-11-08 05:01:06.126605	623
246697	2024-11-08 06:01:05.600715	927
21373	2024-11-08 06:01:05.884128	505
156526	2024-11-08 06:01:06.173935	418
74863	2024-11-08 06:01:06.494283	850
97507	2024-11-08 06:01:06.809688	563
246697	2024-11-08 07:01:05.18633	463
21373	2024-11-08 07:01:05.772198	314
156526	2024-11-08 07:01:06.081326	276
74863	2024-11-08 07:01:06.3546	723
97507	2024-11-08 07:01:06.702276	409
246697	2024-11-08 08:01:05.467925	236
21373	2024-11-08 08:01:05.894433	162
156526	2024-11-08 08:01:06.338284	153
74863	2024-11-08 08:01:06.617166	639
97507	2024-11-08 08:01:07.017199	171
246697	2024-11-08 09:01:04.967852	223
21373	2024-11-08 09:01:05.485114	157
156526	2024-11-08 09:01:05.886265	148
74863	2024-11-08 09:01:06.177612	561
97507	2024-11-08 09:01:06.603368	162
246697	2024-11-08 10:01:04.716969	241
21373	2024-11-08 10:01:05.147851	178
156526	2024-11-08 10:01:05.518848	157
74863	2024-11-08 10:01:05.787556	669
97507	2024-11-08 10:01:06.273865	154
246697	2024-11-08 11:01:05.068787	255
21373	2024-11-08 11:01:05.505984	150
156526	2024-11-08 11:01:05.983946	155
74863	2024-11-08 11:01:06.26495	631
97507	2024-11-08 11:01:06.686131	171
246697	2024-11-08 12:01:05.077975	289
21373	2024-11-08 12:01:05.521384	137
156526	2024-11-08 12:01:05.928361	191
74863	2024-11-08 12:01:06.206273	663
97507	2024-11-08 12:01:06.630965	173
246697	2024-11-08 13:01:04.874413	334
21373	2024-11-08 13:01:05.325118	160
156526	2024-11-08 13:01:05.667851	196
74863	2024-11-08 13:01:05.944752	713
97507	2024-11-08 13:01:06.365764	171
246697	2024-11-08 14:01:04.97949	341
21373	2024-11-08 14:01:05.371216	141
156526	2024-11-08 14:01:05.685082	188
74863	2024-11-08 14:01:05.968618	617
97507	2024-11-08 14:01:06.421696	177
246697	2024-11-08 15:01:04.830277	336
21373	2024-11-08 15:01:05.258153	147
156526	2024-11-08 15:01:05.620334	162
74863	2024-11-08 15:01:05.898387	616
97507	2024-11-08 15:01:06.328996	155
246697	2024-11-08 16:01:04.834599	251
21373	2024-11-08 16:01:05.281205	166
156526	2024-11-08 16:01:05.638287	168
74863	2024-11-08 16:01:05.929683	576
97507	2024-11-08 16:01:06.330842	173
246697	2024-11-08 17:01:04.816022	274
21373	2024-11-08 17:01:05.269048	141
156526	2024-11-08 17:01:05.631524	126
74863	2024-11-08 17:01:05.909674	599
97507	2024-11-08 17:01:06.338152	152
246697	2024-11-08 18:01:05.284814	238
21373	2024-11-08 18:01:05.728884	128
156526	2024-11-08 18:01:06.094853	111
74863	2024-11-08 18:01:06.373005	675
97507	2024-11-08 18:01:06.821249	140
246697	2024-11-08 19:01:04.982394	257
21373	2024-11-08 19:01:05.477483	142
156526	2024-11-08 19:01:05.8596	115
74863	2024-11-08 19:01:06.139526	592
97507	2024-11-08 19:01:06.552287	170
246697	2024-11-08 20:01:04.95309	258
21373	2024-11-08 20:01:05.431545	118
156526	2024-11-08 20:01:05.825658	142
74863	2024-11-08 20:01:06.108042	680
97507	2024-11-08 20:01:06.542649	139
246697	2024-11-08 21:01:05.209715	335
21373	2024-11-08 21:01:05.634916	154
156526	2024-11-08 21:01:06.010429	223
74863	2024-11-08 21:01:06.282622	759
97507	2024-11-08 21:01:06.677955	192
246697	2024-11-08 22:01:04.799549	539
21373	2024-11-08 22:01:05.176673	227
156526	2024-11-08 22:01:05.483983	313
74863	2024-11-08 22:01:05.764888	834
97507	2024-11-08 22:01:06.198775	246
246697	2024-11-08 23:01:05.00206	468
21373	2024-11-08 23:01:05.344546	252
156526	2024-11-08 23:01:05.657678	300
74863	2024-11-08 23:01:05.930965	808
97507	2024-11-08 23:01:06.287785	263
246697	2024-11-09 00:01:06.378664	652
21373	2024-11-09 00:01:06.802231	243
156526	2024-11-09 00:01:07.097187	370
74863	2024-11-09 00:01:07.374321	740
97507	2024-11-09 00:01:07.738564	232
246697	2024-11-09 01:01:04.920387	669
21373	2024-11-09 01:01:05.270571	258
156526	2024-11-09 01:01:05.571194	371
74863	2024-11-09 01:01:05.837923	820
97507	2024-11-09 01:01:06.17972	347
246697	2024-11-09 02:01:04.855914	814
21373	2024-11-09 02:01:05.179983	362
156526	2024-11-09 02:01:05.471078	504
74863	2024-11-09 02:01:05.750243	862
97507	2024-11-09 02:01:06.098522	614
246697	2024-11-09 03:01:05.015876	823
21373	2024-11-09 03:01:05.328775	512
156526	2024-11-09 03:01:05.616819	452
74863	2024-11-09 03:01:05.940352	808
97507	2024-11-09 03:01:06.255219	616
246697	2024-11-09 04:01:04.747687	876
21373	2024-11-09 04:01:05.095611	531
156526	2024-11-09 04:01:05.376609	533
74863	2024-11-09 04:01:05.648818	825
97507	2024-11-09 04:01:05.967808	589
246697	2024-11-09 05:01:04.403324	811
21373	2024-11-09 05:01:04.729171	598
156526	2024-11-09 05:01:05.011379	526
74863	2024-11-09 05:01:05.284872	844
97507	2024-11-09 05:01:05.596829	612
246697	2024-11-09 06:01:05.061	894
21373	2024-11-09 06:01:05.402445	503
156526	2024-11-09 06:01:05.690083	491
74863	2024-11-09 06:01:05.966943	850
97507	2024-11-09 06:01:06.283344	499
246697	2024-11-09 07:01:05.036152	551
21373	2024-11-09 07:01:05.383989	328
156526	2024-11-09 07:01:05.671769	462
74863	2024-11-09 07:01:05.951855	781
97507	2024-11-09 07:01:06.294226	375
246697	2024-11-09 08:01:05.277461	645
21373	2024-11-09 08:01:05.605658	302
156526	2024-11-09 08:01:05.951218	303
74863	2024-11-09 08:01:06.222883	610
97507	2024-11-09 08:01:06.559632	365
246697	2024-11-09 09:01:04.768619	421
21373	2024-11-09 09:01:05.145768	251
156526	2024-11-09 09:01:05.458665	232
74863	2024-11-09 09:01:05.740941	670
97507	2024-11-09 09:01:06.185504	280
246697	2024-11-09 10:01:05.348142	390
21373	2024-11-09 10:01:05.778476	224
156526	2024-11-09 10:01:06.093873	243
74863	2024-11-09 10:01:06.377436	639
97507	2024-11-09 10:01:06.78899	205
246697	2024-11-09 11:01:04.984329	264
21373	2024-11-09 11:01:05.397951	183
156526	2024-11-09 11:01:05.777766	243
74863	2024-11-09 11:01:06.058072	655
97507	2024-11-09 11:01:06.481601	198
246697	2024-11-09 12:01:05.384532	285
21373	2024-11-09 12:01:05.892296	178
156526	2024-11-09 12:01:06.234658	189
74863	2024-11-09 12:01:06.517863	612
97507	2024-11-09 12:01:06.927033	219
246697	2024-11-09 13:01:04.984156	326
21373	2024-11-09 13:01:05.415707	207
156526	2024-11-09 13:01:05.746441	230
74863	2024-11-09 13:01:06.019168	701
97507	2024-11-09 13:01:06.424406	205
246697	2024-11-09 14:01:05.017087	438
21373	2024-11-09 14:01:05.393259	221
156526	2024-11-09 14:01:05.75992	212
74863	2024-11-09 14:01:06.042327	648
97507	2024-11-09 14:01:06.409604	282
246697	2024-11-09 15:01:04.600713	502
21373	2024-11-09 15:01:05.081123	205
156526	2024-11-09 15:01:05.406399	256
74863	2024-11-09 15:01:05.680382	650
97507	2024-11-09 15:01:06.057641	232
246697	2024-11-09 16:01:04.652123	423
21373	2024-11-09 16:01:05.070477	167
156526	2024-11-09 16:01:05.384091	315
74863	2024-11-09 16:01:05.655583	748
97507	2024-11-09 16:01:06.047911	252
246697	2024-11-09 17:01:04.595153	326
21373	2024-11-09 17:01:05.059944	201
156526	2024-11-09 17:01:05.405625	202
74863	2024-11-09 17:01:05.684298	730
97507	2024-11-09 17:01:06.064177	210
246697	2024-11-09 18:01:05.025352	357
21373	2024-11-09 18:01:05.470342	195
156526	2024-11-09 18:01:05.827701	193
74863	2024-11-09 18:01:06.117281	552
97507	2024-11-09 18:01:06.513957	198
246697	2024-11-09 19:01:04.956863	322
21373	2024-11-09 19:01:05.370334	184
156526	2024-11-09 19:01:05.762376	237
74863	2024-11-09 19:01:06.048305	561
97507	2024-11-09 19:01:06.448903	195
246697	2024-11-09 20:01:05.112872	277
21373	2024-11-09 20:01:05.581143	183
156526	2024-11-09 20:01:05.927784	221
74863	2024-11-09 20:01:06.198224	595
97507	2024-11-09 20:01:06.594569	203
246697	2024-11-09 21:01:05.165336	334
21373	2024-11-09 21:01:05.616681	166
156526	2024-11-09 21:01:05.980128	294
74863	2024-11-09 21:01:06.256219	711
97507	2024-11-09 21:01:06.640981	233
246697	2024-11-09 22:01:05.240348	483
21373	2024-11-09 22:01:05.679159	191
156526	2024-11-09 22:01:05.991845	260
74863	2024-11-09 22:01:06.261733	681
97507	2024-11-09 22:01:06.624651	307
246697	2024-11-09 23:01:04.868371	626
21373	2024-11-09 23:01:05.285959	251
156526	2024-11-09 23:01:05.633081	266
74863	2024-11-09 23:01:05.912073	721
97507	2024-11-09 23:01:06.271985	324
246697	2024-11-10 00:01:05.507744	431
21373	2024-11-10 00:01:05.935653	208
156526	2024-11-10 00:01:06.24955	300
74863	2024-11-10 00:01:06.529224	701
97507	2024-11-10 00:01:06.879356	325
246697	2024-11-10 01:01:05.109349	540
21373	2024-11-10 01:01:05.46969	281
156526	2024-11-10 01:01:05.843801	280
74863	2024-11-10 01:01:06.116938	730
97507	2024-11-10 01:01:06.460362	334
246697	2024-11-10 02:01:04.690101	661
21373	2024-11-10 02:01:05.077109	340
156526	2024-11-10 02:01:05.376635	485
74863	2024-11-10 02:01:05.643473	849
97507	2024-11-10 02:01:05.966137	524
246697	2024-11-10 03:01:04.880777	844
21373	2024-11-10 03:01:05.174632	544
156526	2024-11-10 03:01:05.456464	503
74863	2024-11-10 03:01:05.816304	860
97507	2024-11-10 03:01:06.129187	579
246697	2024-11-10 04:01:05.17721	798
21373	2024-11-10 04:01:05.540357	619
156526	2024-11-10 04:01:05.821319	409
74863	2024-11-10 04:01:06.09555	831
97507	2024-11-10 04:01:06.403155	602
246697	2024-11-10 05:01:04.707738	703
21373	2024-11-10 05:01:05.082927	488
156526	2024-11-10 05:01:05.366355	458
74863	2024-11-10 05:01:05.635599	858
97507	2024-11-10 05:01:05.946941	623
246697	2024-11-10 06:01:05.167241	845
21373	2024-11-10 06:01:05.443459	590
156526	2024-11-10 06:01:05.748992	488
74863	2024-11-10 06:01:06.022155	826
97507	2024-11-10 06:01:06.333096	544
246697	2024-11-10 07:01:04.50587	675
21373	2024-11-10 07:01:04.880249	377
156526	2024-11-10 07:01:05.163188	362
74863	2024-11-10 07:01:05.429215	821
97507	2024-11-10 07:01:05.746067	549
246697	2024-11-10 08:01:04.895131	590
21373	2024-11-10 08:01:05.256776	459
156526	2024-11-10 08:01:05.536548	413
74863	2024-11-10 08:01:05.814765	805
97507	2024-11-10 08:01:06.131328	470
246697	2024-11-10 09:01:05.284933	563
21373	2024-11-10 09:01:05.612651	432
156526	2024-11-10 09:01:05.901084	429
74863	2024-11-10 09:01:06.175308	781
97507	2024-11-10 09:01:06.496803	461
246697	2024-11-10 10:01:04.976778	504
21373	2024-11-10 10:01:05.307669	317
156526	2024-11-10 10:01:05.600026	378
74863	2024-11-10 10:01:05.876724	715
97507	2024-11-10 10:01:06.208689	504
246697	2024-11-10 11:01:05.289905	565
21373	2024-11-10 11:01:05.676492	233
156526	2024-11-10 11:01:06.038316	302
74863	2024-11-10 11:01:06.317553	662
97507	2024-11-10 11:01:06.663917	310
246697	2024-11-10 12:01:04.991626	452
21373	2024-11-10 12:01:05.522758	192
156526	2024-11-10 12:01:05.853476	272
74863	2024-11-10 12:01:06.134931	705
97507	2024-11-10 12:01:06.495149	256
246697	2024-11-10 13:01:04.658602	527
21373	2024-11-10 13:01:05.132092	194
156526	2024-11-10 13:01:05.477868	243
74863	2024-11-10 13:01:05.750028	710
97507	2024-11-10 13:01:06.144841	270
246697	2024-11-10 14:01:05.528848	643
21373	2024-11-10 14:01:05.879472	237
156526	2024-11-10 14:01:06.30622	357
74863	2024-11-10 14:01:06.585604	791
97507	2024-11-10 14:01:06.94847	287
246697	2024-11-10 15:01:05.167483	504
21373	2024-11-10 15:01:05.536874	225
156526	2024-11-10 15:01:05.905058	357
74863	2024-11-10 15:01:06.182519	669
97507	2024-11-10 15:01:06.543874	283
246697	2024-11-10 16:01:04.864718	324
21373	2024-11-10 16:01:05.288401	183
156526	2024-11-10 16:01:05.706564	292
74863	2024-11-10 16:01:05.978253	725
97507	2024-11-10 16:01:06.369017	267
246697	2024-11-10 17:01:05.038992	311
21373	2024-11-10 17:01:05.439554	183
156526	2024-11-10 17:01:05.821442	214
74863	2024-11-10 17:01:06.101205	736
97507	2024-11-10 17:01:06.482609	221
246697	2024-11-10 18:01:04.719382	332
21373	2024-11-10 18:01:05.212069	179
156526	2024-11-10 18:01:05.572315	190
74863	2024-11-10 18:01:05.85059	645
97507	2024-11-10 18:01:06.249868	235
246697	2024-11-10 19:01:04.577713	362
21373	2024-11-10 19:01:04.987125	191
156526	2024-11-10 19:01:05.345446	220
74863	2024-11-10 19:01:05.629109	648
97507	2024-11-10 19:01:06.04661	204
246697	2024-11-10 20:01:05.089026	393
21373	2024-11-10 20:01:05.495075	200
156526	2024-11-10 20:01:05.859491	246
74863	2024-11-10 20:01:06.131663	586
97507	2024-11-10 20:01:06.523172	261
246697	2024-11-10 21:01:04.676887	574
21373	2024-11-10 21:01:05.107832	304
156526	2024-11-10 21:01:05.409522	346
74863	2024-11-10 21:01:05.687858	720
97507	2024-11-10 21:01:06.050813	297
246697	2024-11-10 22:01:05.10842	717
21373	2024-11-10 22:01:05.425459	307
156526	2024-11-10 22:01:05.755711	398
74863	2024-11-10 22:01:06.033445	802
97507	2024-11-10 22:01:06.374463	407
246697	2024-11-10 23:01:04.75939	669
21373	2024-11-10 23:01:05.097876	326
156526	2024-11-10 23:01:05.396764	317
74863	2024-11-10 23:01:05.713837	712
97507	2024-11-10 23:01:06.039516	438
246697	2024-11-11 00:01:05.243276	655
21373	2024-11-11 00:01:05.561285	367
156526	2024-11-11 00:01:05.873012	353
74863	2024-11-11 00:01:06.147937	794
97507	2024-11-11 00:01:06.47045	473
246697	2024-11-11 01:01:05.16094	674
21373	2024-11-11 01:01:05.461574	392
156526	2024-11-11 01:01:05.790792	436
74863	2024-11-11 01:01:06.063756	861
97507	2024-11-11 01:01:06.396993	454
246697	2024-11-11 02:01:06.063169	741
21373	2024-11-11 02:01:06.445957	401
156526	2024-11-11 02:01:06.742062	424
74863	2024-11-11 02:01:07.02065	842
97507	2024-11-11 02:01:07.327277	578
246697	2024-11-11 03:01:05.011124	743
21373	2024-11-11 03:01:05.371466	528
156526	2024-11-11 03:01:05.660804	484
74863	2024-11-11 03:01:05.936854	878
97507	2024-11-11 03:01:06.248634	601
246697	2024-11-11 04:01:04.720799	747
21373	2024-11-11 04:01:05.096485	456
156526	2024-11-11 04:01:05.375531	442
74863	2024-11-11 04:01:05.64723	875
97507	2024-11-11 04:01:05.961787	529
246697	2024-11-11 05:01:05.303645	881
21373	2024-11-11 05:01:05.593299	600
156526	2024-11-11 05:01:05.8798	456
74863	2024-11-11 05:01:06.149159	864
97507	2024-11-11 05:01:06.472418	600
246697	2024-11-11 06:01:05.259546	852
21373	2024-11-11 06:01:05.664087	523
156526	2024-11-11 06:01:05.977636	495
74863	2024-11-11 06:01:06.250233	816
97507	2024-11-11 06:01:06.570223	605
246697	2024-11-11 07:01:05.337983	570
21373	2024-11-11 07:01:05.796345	340
156526	2024-11-11 07:01:06.098542	342
74863	2024-11-11 07:01:06.367659	745
97507	2024-11-11 07:01:06.705603	442
246697	2024-11-11 08:01:05.089058	297
21373	2024-11-11 08:01:05.574385	169
156526	2024-11-11 08:01:05.916692	182
74863	2024-11-11 08:01:06.196089	643
97507	2024-11-11 08:01:06.597095	202
246697	2024-11-11 09:01:05.447334	258
21373	2024-11-11 09:01:05.87843	150
156526	2024-11-11 09:01:06.269422	154
74863	2024-11-11 09:01:06.649833	516
97507	2024-11-11 09:01:07.113548	181
246697	2024-11-11 10:01:05.661501	233
21373	2024-11-11 10:01:06.199905	175
156526	2024-11-11 10:01:06.541685	197
74863	2024-11-11 10:01:06.818967	608
97507	2024-11-11 10:01:07.223298	184
246697	2024-11-11 11:01:04.840281	266
21373	2024-11-11 11:01:05.307679	187
156526	2024-11-11 11:01:05.665638	177
74863	2024-11-11 11:01:05.956781	543
97507	2024-11-11 11:01:06.339386	201
246697	2024-11-11 12:01:05.400219	282
21373	2024-11-11 12:01:05.867114	190
156526	2024-11-11 12:01:06.274502	227
74863	2024-11-11 12:01:06.60839	676
97507	2024-11-11 12:01:07.028599	199
246697	2024-11-11 13:01:05.329929	447
21373	2024-11-11 13:01:05.705145	230
156526	2024-11-11 13:01:06.050103	257
74863	2024-11-11 13:01:06.404841	644
97507	2024-11-11 13:01:06.792146	245
246697	2024-11-11 14:01:04.893776	425
21373	2024-11-11 14:01:05.29706	209
156526	2024-11-11 14:01:05.695163	254
74863	2024-11-11 14:01:05.994438	665
97507	2024-11-11 14:01:06.387498	237
246697	2024-11-11 15:01:05.049859	341
21373	2024-11-11 15:01:05.549881	206
156526	2024-11-11 15:01:05.897517	252
74863	2024-11-11 15:01:06.194917	618
97507	2024-11-11 15:01:06.582723	253
246697	2024-11-11 16:01:04.988445	352
21373	2024-11-11 16:01:05.478037	198
156526	2024-11-11 16:01:05.819792	220
74863	2024-11-11 16:01:06.103098	567
97507	2024-11-11 16:01:06.498552	233
246697	2024-11-11 17:01:04.720199	280
21373	2024-11-11 17:01:05.163687	208
156526	2024-11-11 17:01:05.513957	172
74863	2024-11-11 17:01:05.797028	651
97507	2024-11-11 17:01:06.223966	166
246697	2024-11-11 18:01:05.33834	242
21373	2024-11-11 18:01:05.7301	186
156526	2024-11-11 18:01:06.175138	174
74863	2024-11-11 18:01:06.466132	515
97507	2024-11-11 18:01:06.854157	192
246697	2024-11-11 19:01:04.406849	308
21373	2024-11-11 19:01:04.944229	185
156526	2024-11-11 19:01:05.289309	170
74863	2024-11-11 19:01:05.570242	645
97507	2024-11-11 19:01:05.969907	213
246697	2024-11-11 20:01:04.523543	247
21373	2024-11-11 20:01:04.933138	197
156526	2024-11-11 20:01:05.34257	181
74863	2024-11-11 20:01:05.642033	584
97507	2024-11-11 20:01:06.054754	230
246697	2024-11-11 21:01:04.449401	452
21373	2024-11-11 21:01:04.875439	275
156526	2024-11-11 21:01:05.192883	342
74863	2024-11-11 21:01:05.480588	679
97507	2024-11-11 21:01:05.839367	307
246697	2024-11-11 22:01:05.035216	651
21373	2024-11-11 22:01:05.358422	363
156526	2024-11-11 22:01:05.668547	384
74863	2024-11-11 22:01:05.954273	756
97507	2024-11-11 22:01:06.287807	397
246697	2024-11-11 23:01:05.949903	734
21373	2024-11-11 23:01:06.287347	308
156526	2024-11-11 23:01:13.8034	428
74863	2024-11-11 23:01:14.089954	828
97507	2024-11-11 23:01:17.524904	440
246697	2024-11-12 00:01:04.540729	603
21373	2024-11-12 00:01:04.862482	411
156526	2024-11-12 00:01:05.152743	446
74863	2024-11-12 00:01:05.489525	836
97507	2024-11-12 00:01:05.814323	540
246697	2024-11-12 01:01:04.641986	675
21373	2024-11-12 01:01:04.924082	382
156526	2024-11-12 01:01:05.227743	406
74863	2024-11-12 01:01:05.510006	872
97507	2024-11-12 01:01:05.83192	458
246697	2024-11-12 02:01:05.196282	636
21373	2024-11-12 02:01:05.575286	433
156526	2024-11-12 02:01:05.882038	457
74863	2024-11-12 02:01:06.152145	791
97507	2024-11-12 02:01:06.471908	577
246697	2024-11-12 03:01:04.536143	777
21373	2024-11-12 03:01:04.827346	405
156526	2024-11-12 03:01:05.172212	412
74863	2024-11-12 03:01:05.455386	848
97507	2024-11-12 03:01:05.78078	630
246697	2024-11-12 04:01:06.263317	721
21373	2024-11-12 04:01:06.550931	541
156526	2024-11-12 04:01:07.891438	415
74863	2024-11-12 04:01:08.172748	874
97507	2024-11-12 04:01:09.577816	523
246697	2024-11-12 05:01:05.772108	940
21373	2024-11-12 05:01:06.06657	532
156526	2024-11-12 05:01:13.572969	496
74863	2024-11-12 05:01:22.065887	834
97507	2024-11-12 05:01:23.413377	710
246697	2024-11-12 06:01:05.143457	910
21373	2024-11-12 06:01:08.581786	541
156526	2024-11-12 06:01:09.994629	493
74863	2024-11-12 06:01:10.281428	868
97507	2024-11-12 06:01:13.742334	531
246697	2024-11-12 07:01:05.037214	402
21373	2024-11-12 07:01:05.377228	332
156526	2024-11-12 07:01:05.670032	308
74863	2024-11-12 07:01:05.953422	655
97507	2024-11-12 07:01:06.300953	381
246697	2024-11-12 08:01:05.034393	213
21373	2024-11-12 08:01:05.510559	165
156526	2024-11-12 08:01:05.879373	154
74863	2024-11-12 08:01:06.172972	613
97507	2024-11-12 08:01:06.584282	207
246697	2024-11-12 09:01:05.157168	155
21373	2024-11-12 09:01:05.653315	154
156526	2024-11-12 09:01:06.067897	151
74863	2024-11-12 09:01:06.36328	604
97507	2024-11-12 09:01:06.761919	195
246697	2024-11-12 10:01:05.082315	196
21373	2024-11-12 10:01:05.537392	162
156526	2024-11-12 10:01:05.896993	164
74863	2024-11-12 10:01:06.188451	668
97507	2024-11-12 10:01:06.59712	183
246697	2024-11-12 11:01:05.379073	270
21373	2024-11-12 11:01:05.755465	205
156526	2024-11-12 11:01:06.14223	178
74863	2024-11-12 11:01:06.422654	613
97507	2024-11-12 11:01:06.825267	192
246697	2024-11-12 12:01:04.496378	201
21373	2024-11-12 12:01:04.912308	185
156526	2024-11-12 12:01:05.280422	212
74863	2024-11-12 12:01:05.574141	610
97507	2024-11-12 12:01:05.965032	190
246697	2024-11-12 13:01:04.630975	354
21373	2024-11-12 13:01:05.036814	227
156526	2024-11-12 13:01:05.382714	204
74863	2024-11-12 13:01:05.658875	560
97507	2024-11-12 13:01:06.079985	247
246697	2024-11-12 14:01:05.22128	347
21373	2024-11-12 14:01:05.656716	218
156526	2024-11-12 14:01:05.976689	212
74863	2024-11-12 14:01:06.248183	645
97507	2024-11-12 14:01:06.665308	192
246697	2024-11-12 15:01:05.401863	320
21373	2024-11-12 15:01:05.876995	193
156526	2024-11-12 15:01:06.235439	220
74863	2024-11-12 15:01:06.53446	707
97507	2024-11-12 15:01:06.950053	238
246697	2024-11-12 16:01:05.029439	314
21373	2024-11-12 16:01:05.409359	205
156526	2024-11-12 16:01:05.733602	245
74863	2024-11-12 16:01:06.020874	679
97507	2024-11-12 16:01:06.414316	214
246697	2024-11-12 17:01:04.577915	329
21373	2024-11-12 17:01:04.992277	186
156526	2024-11-12 17:01:05.429816	205
74863	2024-11-12 17:01:05.702877	623
97507	2024-11-12 17:01:06.075647	218
246697	2024-11-12 18:01:05.144823	264
21373	2024-11-12 18:01:05.561273	177
156526	2024-11-12 18:01:05.923955	187
74863	2024-11-12 18:01:06.209994	538
97507	2024-11-12 18:01:06.590806	187
246697	2024-11-12 19:01:04.884384	195
21373	2024-11-12 19:01:05.315981	170
156526	2024-11-12 19:01:05.723796	165
74863	2024-11-12 19:01:06.011253	517
97507	2024-11-12 19:01:06.452634	181
246697	2024-11-12 20:01:04.414155	349
21373	2024-11-12 20:01:04.863892	168
156526	2024-11-12 20:01:05.252351	172
74863	2024-11-12 20:01:05.533145	701
97507	2024-11-12 20:01:05.933028	190
\.


--
-- TOC entry 3016 (class 0 OID 16420)
-- Dependencies: 203
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: colab
--

COPY public.weather (date, temperature, humidity, precipitation, wind) FROM stdin;
2024-10-15 02:05:13.243632	13.8	94	0	3.4
2024-10-15 03:05:08.703624	13.4	94	0	3
2024-10-15 04:05:08.893585	13	92	0	4.1
2024-10-15 05:05:08.825966	12.8	93	0	2.9
2024-10-15 06:05:08.870873	12.7	92	0	1
2024-10-15 07:05:08.652037	13.4	90	0	2.7
2024-10-15 08:05:07.988226	15	86	0	3
2024-10-15 09:05:08.761784	16.4	81	0	3.5
2024-10-15 10:05:08.052262	17.8	76	0	3.6
2024-10-15 11:05:08.525743	18.6	77	0	4.3
2024-10-15 12:05:08.836432	19.6	72	0	4.1
2024-10-15 13:05:07.891278	19.9	71	0	1.5
2024-10-15 14:05:08.9284	20.1	72	0	3.5
2024-10-15 15:05:08.03402	19.8	75	0	4.5
2024-10-15 16:05:08.564559	18.8	81	0	4
2024-10-15 17:05:08.857922	17.8	86	0	2.6
2024-10-15 18:05:08.043944	16.8	92	0	4.3
2024-10-15 19:05:08.40952	16.7	93	0	4.8
2024-10-15 20:05:08.509852	16.4	93	0	5.2
2024-10-15 21:05:08.584516	16.3	91	0	5.9
2024-10-15 22:05:08.703305	16.6	91	0	7.2
2024-10-15 23:05:08.931731	16.6	91	0	6.8
2024-10-16 00:05:08.059849	14.7	95	0	4.7
2024-10-16 01:05:08.242305	14.2	94	0	5.2
2024-10-16 02:05:08.206771	16	92	0	7
2024-10-16 03:05:08.472732	15.7	91	0	7
2024-10-16 04:05:08.684305	15.9	89	0	9
2024-10-16 05:05:08.585011	15.6	91	0.2	10.9
2024-10-16 06:05:08.493102	15.3	92	0.7	11.5
2024-10-16 07:05:08.902349	15.4	94	1.2	10.1
2024-10-16 08:05:08.47704	15.2	94	1.4	15.5
2024-10-16 09:05:08.040616	15.3	93	0.6	17.6
2024-10-16 10:05:07.905124	16	89	0.1	18.7
2024-10-16 11:05:08.650595	16.1	89	0.2	19.8
2024-10-16 12:05:07.990652	16	90	0.5	16.3
2024-10-16 13:05:08.59278	15.7	94	2.5	17.6
2024-10-16 14:05:07.901301	15.6	94	1.8	16.2
2024-10-16 15:05:08.16152	15.3	93	5.5	16.9
2024-10-16 16:05:08.682458	15	93	0.5	15.1
2024-10-16 17:05:08.116403	14.9	93	0.3	15.1
2024-10-16 18:05:08.770705	14.9	93	0.8	15.1
2024-10-16 19:05:08.119939	14.8	93	0.2	14.8
2024-10-16 20:05:08.864326	14.8	93	0	14
2024-10-16 21:05:07.993621	14.8	93	0.1	14.4
2024-10-16 22:05:08.323178	14.7	95	0.4	10.5
2024-10-16 23:05:08.398194	14.7	96	0.5	8.6
2024-10-17 00:05:08.555215	16.9	93	0	6.4
2024-10-17 01:05:09.382786	16.7	92	0	5.8
2024-10-17 02:05:08.523836	15	96	0	4.5
2024-10-17 03:05:08.06022	15.1	96	0	6.2
2024-10-17 04:05:08.014914	15.1	97	0.3	8.6
2024-10-17 05:05:08.075282	15	97	2.6	8.7
2024-10-17 06:05:08.061883	15	97	0	9.5
2024-10-17 07:05:08.336456	15.2	96	0	16.2
2024-10-17 08:05:08.110138	15.3	95	0	16.3
2024-10-17 09:05:08.730634	15.4	95	0	15.2
2024-10-17 10:05:08.139468	15.6	95	0	16.2
2024-10-17 11:05:08.081254	15.9	93	0	21.9
2024-10-17 12:05:08.546131	16.5	91	0.1	17.7
2024-10-17 13:05:08.223502	16.2	94	0.2	14.9
2024-10-17 14:05:08.242068	16	95	0.6	13.4
2024-10-17 15:05:08.749371	16.1	95	0	13.5
2024-10-17 16:05:08.878882	15.7	95	0	5.3
2024-10-17 17:05:08.70979	15.8	97	0	4.5
2024-10-17 18:05:08.625851	16	97	0.1	7.2
2024-10-17 19:05:08.723389	16	96	0.3	13.1
2024-10-17 20:05:08.520847	15.9	96	0.4	12.6
2024-10-17 21:05:08.427176	15.8	96	0.4	15.2
2024-10-17 22:05:08.211029	15.9	96	0.2	15.4
2024-10-17 23:05:08.499544	15.9	97	1.2	16.6
2024-10-18 00:05:08.294825	15.3	95	0	10.9
2024-10-18 01:05:08.630398	15.2	95	0	9.1
2024-10-18 02:05:08.326875	15.7	97	0	10.8
2024-10-18 03:05:07.995052	15.7	97	0	11.5
2024-10-18 04:05:08.876461	15.9	97	0	11.4
2024-10-18 05:05:08.109943	16	97	0.5	17.4
2024-10-18 06:05:08.221956	15.8	98	4.6	17.1
2024-10-18 07:05:08.731152	15.9	98	4.2	19.2
2024-10-18 08:05:08.676112	16	98	3.4	17
2024-10-18 09:05:08.875506	16.6	94	0.1	21.9
2024-10-18 10:05:08.145487	16.9	94	0	13.7
2024-10-18 11:05:08.248338	17.4	93	0.2	11.6
2024-10-18 12:05:08.861891	18.1	90	0	10.2
2024-10-18 13:05:08.508975	18.4	89	0	11.5
2024-10-18 14:05:08.459624	18.3	90	0	11.9
2024-10-18 15:05:08.832443	18.1	91	0	9.7
2024-10-18 16:05:07.912773	18.1	89	0	11.7
2024-10-18 17:05:08.131069	17.1	96	0	9.1
2024-10-18 18:05:07.927457	16.6	97	0	8.9
2024-10-18 19:05:08.810679	16	97	0	5.8
2024-10-18 20:05:08.796419	15.6	97	0	6.3
2024-10-18 21:05:08.024109	15.2	97	0	5.6
2024-10-18 22:05:08.876078	15.1	98	0	1.8
2024-10-18 23:05:08.709055	14.8	99	0	2.5
2024-10-19 00:05:08.187823	15.9	97	0.6	13.9
2024-10-19 01:05:08.430528	15.9	96	0.8	10.7
2024-10-19 02:05:08.318359	13.5	99	0	3.4
2024-10-19 03:05:08.553097	13.1	100	0	1.5
2024-10-19 04:05:08.81702	13.7	96	0	5.4
2024-10-19 05:05:08.07322	13.3	95	0	6.1
2024-10-19 06:05:08.636665	13	93	0	7.9
2024-10-19 07:05:08.390488	13.8	89	0	7.1
2024-10-19 08:05:08.888999	15.2	83	0	8.4
2024-10-19 09:05:08.673061	16.3	78	0	4.3
2024-10-19 10:05:07.97607	15.4	85	2	2.4
2024-10-19 11:05:08.706487	15.4	84	1.3	4.9
2024-10-19 12:05:08.933062	16	85	0.3	7.2
2024-10-19 13:05:08.911559	16.8	81	0.6	6.1
2024-10-19 14:05:08.597022	16.6	84	0.8	5.7
2024-10-19 15:05:08.738126	16.3	85	0.3	4.2
2024-10-19 16:05:08.52082	15.7	91	0.4	3.8
2024-10-19 17:05:08.335265	15.3	93	0.4	5.7
2024-10-19 18:05:08.575819	15	94	0.5	7.6
2024-10-19 19:05:08.906503	15.2	95	1.3	7
2024-10-19 20:05:08.734359	15	94	2.1	5.1
2024-10-19 21:05:08.782815	14.7	95	2.8	6.8
2024-10-19 22:05:09.078181	14.7	93	2.4	8.9
2024-10-19 23:05:08.683362	14.8	93	1.3	10.4
2024-10-20 00:05:08.235793	13.9	97	0	3.2
2024-10-20 01:05:08.603059	13.8	98	0	5.4
2024-10-20 02:05:08.123228	15.6	88	0.1	10.9
2024-10-20 03:05:08.91035	15.4	92	1.1	10.8
2024-10-20 04:05:08.206243	16	88	0	7.3
2024-10-20 05:05:08.581184	15.6	92	0	6.9
2024-10-20 06:05:07.877526	15.6	91	0.1	7.6
2024-10-20 07:05:08.539361	15.6	92	0.5	7.7
2024-10-20 08:05:08.846589	16.2	90	0	7.7
2024-10-20 09:05:08.504763	17	89	0	5.8
2024-10-20 10:05:08.07047	17.9	89	0	2.8
2024-10-20 11:05:08.91282	18.7	82	0	1.1
2024-10-20 12:05:08.028523	18.9	82	0	2.5
2024-10-20 13:05:08.079401	19.6	80	0	14.2
2024-10-20 14:05:08.729466	19.7	83	0	10.2
2024-10-20 15:05:08.552644	20.3	81	0	4.7
2024-10-20 16:05:08.312348	19.3	83	0	5.7
2024-10-20 17:05:08.773175	18	86	0	5.4
2024-10-20 18:05:07.958409	17.3	87	0	4.7
2024-10-20 19:05:08.500854	16.5	92	0	4.3
2024-10-20 20:05:08.394458	16	93	0	4
2024-10-20 21:05:08.474281	15.4	95	0	5.6
2024-10-20 22:05:08.335143	14.9	96	0	5
2024-10-20 23:05:08.852489	14.5	96	0	4.8
2024-10-21 00:05:08.057379	15.4	90	1	11.9
2024-10-21 01:05:08.312964	15.6	87	0.3	13
2024-10-21 02:05:08.40644	13.7	95	0	4.3
2024-10-21 03:05:08.179485	13.5	95	0	3.3
2024-10-21 04:05:08.542996	13	98	0	2.6
2024-10-21 05:05:08.324753	12.7	99	0	2.2
2024-10-21 06:05:08.573419	12.4	100	0	2.1
2024-10-21 07:05:08.062848	12.6	100	0	1.6
2024-10-21 08:05:08.255264	13.4	100	0	3.3
2024-10-21 09:05:08.004463	15.2	96	0	2.9
2024-10-21 10:05:08.441381	17.4	89	0	1.4
2024-10-21 11:05:08.591304	19.3	80	0	1.4
2024-10-21 12:05:08.878291	20	73	0	5.6
2024-10-21 13:05:08.889872	20.7	67	0	6.2
2024-10-21 14:05:07.986733	20.7	66	0	5.6
2024-10-21 15:05:08.441513	20.1	65	0	6.3
2024-10-21 16:05:08.135118	19.5	69	0	5.2
2024-10-21 17:05:08.884307	18	77	0	4.2
2024-10-21 18:05:08.691537	17.2	82	0	4.7
2024-10-21 19:05:08.345244	16.5	85	0	4
2024-10-21 20:05:08.307504	16.3	86	0	2.6
2024-10-21 21:05:08.498882	15.9	88	0	2.2
2024-10-21 22:05:08.134689	16.6	87	0	1.8
2024-10-21 23:05:08.169721	16.3	88	0	1.8
2024-10-22 00:05:08.34638	13.7	100	0	3.6
2024-10-22 01:05:08.730686	13.6	99	0	3.6
2024-10-22 02:05:08.221331	15.6	90	0	2.1
2024-10-22 03:05:08.204128	15.4	90	0	1.4
2024-10-22 04:05:08.580528	15	94	0	2.3
2024-10-22 05:05:08.828311	15	94	0	2.6
2024-10-22 06:05:08.254951	14.8	94	0	2.5
2024-10-22 07:05:08.679291	15	97	0	2.1
2024-10-22 08:05:08.134238	16.2	93	0	1.1
2024-10-22 09:05:08.070802	17.6	88	0	3.6
2024-10-22 10:05:08.510953	19.1	79	0	3.3
2024-10-22 11:05:08.237323	20	74	0	3.4
2024-10-22 12:05:08.821307	20.4	72	0	3.6
2024-10-22 13:05:08.087046	20.8	74	0	6.4
2024-10-22 14:05:08.621164	20.8	73	0	5.6
2024-10-22 15:05:08.193082	20.6	73	0	4.2
2024-10-22 16:05:08.788677	19.9	75	0	5.5
2024-10-22 17:05:08.409664	18.6	84	0	3.8
2024-10-22 18:05:08.367077	17.9	87	0	3.7
2024-10-22 19:05:08.058511	17.5	87	0	2.9
2024-10-22 20:05:08.386283	17.2	89	0	3.2
2024-10-22 21:05:08.602234	17	91	0	4.1
2024-10-22 22:05:08.415082	17	92	0	4.5
2024-10-22 23:05:08.494806	16.8	93	0	4.2
2024-10-23 00:05:08.622862	16.1	89	0	4
2024-10-23 01:05:08.044927	15.9	90	0	2.9
2024-10-23 02:05:08.298247	16.3	98	1.7	4
2024-10-23 03:05:08.178322	16.2	98	2.9	2.3
2024-10-23 04:05:08.365606	16.3	97	0.2	2.7
2024-10-23 05:05:08.651104	16.3	98	0.9	2.9
2024-10-23 06:05:08.344517	16.3	98	1.5	3.1
2024-10-23 07:05:08.496166	16.2	97	0.8	1.4
2024-10-23 08:05:08.179087	16.4	97	0.5	3.3
2024-10-23 09:05:08.222138	16.4	97	3.9	5
2024-10-23 10:05:09.055728	17	95	0.3	4.6
2024-10-23 11:05:08.654031	17.3	93	0.1	5.7
2024-10-23 12:05:08.283946	17.4	92	0.2	5.6
2024-10-23 13:05:08.337005	17.3	86	0.7	10.3
2024-10-23 14:05:08.297078	17.4	93	0.5	15.5
2024-10-23 15:05:08.969164	16.9	90	0.2	14.4
2024-10-23 16:05:08.042186	16.8	92	0	11.5
2024-10-23 17:05:08.411502	16.4	94	0	11.3
2024-10-23 18:05:08.722121	16.1	94	0	8.7
2024-10-23 19:05:08.813506	15.8	96	0.2	6.2
2024-10-23 20:05:08.624563	15.8	96	0	6.8
2024-10-23 21:05:08.913176	15.8	95	0	7.6
2024-10-23 22:05:08.77014	15.8	95	0.1	5.9
2024-10-23 23:05:08.236058	15.8	95	0.3	9.7
2024-10-24 00:05:08.440339	16.8	94	0	5.2
2024-10-24 01:05:08.339415	16.7	95	0	2.6
2024-10-24 02:05:08.520016	15.7	94	0	13
2024-10-24 03:05:08.254645	15.5	94	0	12
2024-10-24 04:05:08.358385	15.5	95	0.1	8.1
2024-10-24 05:05:08.291532	15.5	95	0.2	8.3
2024-10-24 06:05:08.511915	15.4	95	0.2	8.9
2024-10-24 07:05:07.941176	15.5	93	0	9.4
2024-10-24 08:05:08.673563	15.7	92	0	10.1
2024-10-24 09:05:08.095279	16	90	0	11.9
2024-10-24 10:05:08.692102	16.1	89	0	10.5
2024-10-24 11:05:08.088314	16.3	88	0	9.4
2024-10-24 12:05:08.823778	16.7	86	0	8.5
2024-10-24 13:05:08.600697	16.9	86	0	7.2
2024-10-24 14:05:08.679445	16.7	87	0	11.7
2024-10-24 15:05:08.736812	16.3	86	0	10.1
2024-10-24 16:05:08.225674	16	88	0	8.7
2024-10-24 17:05:08.175403	15.7	92	0	7.8
2024-10-24 18:05:09.038744	15.4	92	0	7.1
2024-10-24 20:05:07.185972	15.3	95	0	7.2
2024-10-24 21:05:08.458891	15.2	95	0	7.2
2024-10-24 22:05:08.810907	15.1	95	0	7.4
2024-10-24 23:05:07.596618	15	95	0	6.9
2024-10-25 00:05:08.548445	15.9	95	0	4.1
2024-10-25 01:05:08.307458	15.9	95	0	4.2
2024-10-25 02:05:08.731265	14.6	95	0.4	6.8
2024-10-25 03:05:06.947755	14.4	94	0	5.5
2024-10-25 04:05:08.141727	14.5	94	0.1	6.6
2024-10-25 05:05:07.549103	14.5	94	0.1	7.1
2024-10-25 06:05:08.168408	14.5	94	0	6.8
2024-10-25 07:05:07.434894	14.8	97	0.1	6.3
2024-10-25 08:05:07.668527	15	96	0	7.1
2024-10-25 09:05:07.904829	15.1	95	0	7.9
2024-10-25 10:05:08.163456	15.3	94	0	6.4
2024-10-25 11:05:07.613281	15.3	94	0.1	6.9
2024-10-25 12:05:07.563197	15.4	94	0	8.6
2024-10-25 13:05:07.955869	15.9	92	0	7.3
2024-10-25 14:05:08.16235	15.9	92	0	7.3
2024-10-25 15:05:08.014716	15.7	93	0	6.6
2024-10-25 16:05:08.239375	15.3	95	0.4	4
2024-10-25 17:05:08.577268	15.2	96	0	4.8
2024-10-25 18:05:06.500199	15.1	96	0	3.8
2024-10-25 19:05:07.56751	15.2	96	0.1	4
2024-10-25 20:05:08.171087	15.2	96	0	2.5
2024-10-25 21:05:07.19025	15.1	96	0	3.4
2024-10-25 22:05:07.385956	15.5	99	0.1	3.6
2024-10-25 23:05:08.215202	15.4	99	0	3.4
2024-10-26 00:05:07.907942	14.9	96	0.3	6.3
2024-10-26 01:05:07.83908	14.9	96	0.1	5.6
2024-10-26 02:05:07.748613	15.6	98	0	4.7
2024-10-26 03:05:07.829593	15.6	98	0	5.5
2024-10-26 04:05:08.246982	15.7	97	0.1	3.6
2024-10-26 05:05:07.320552	15.7	98	0.1	4.3
2024-10-26 06:05:08.291586	15.6	98	0	5.9
2024-10-26 07:05:08.587424	15.7	98	0	10.8
2024-10-26 08:05:08.201941	15.8	97	1	9.7
2024-10-26 09:05:07.515808	15.9	97	2	10.8
2024-10-26 10:05:08.162111	16.4	93	0	12
2024-10-26 11:05:07.896728	16.8	92	0.1	12.2
2024-10-26 12:05:08.214605	16.7	94	0.6	10.5
2024-10-26 13:05:07.946961	16.8	91	0	14.4
2024-10-26 14:05:08.021217	16.5	96	3.2	10.9
2024-10-26 15:05:07.874629	16.4	96	10.7	11.7
2024-10-26 16:05:08.309603	16.6	95	0	12.4
2024-10-26 17:05:08.48269	16.4	96	0	10.5
2024-10-26 18:05:08.148872	16.3	96	0	10.9
2024-10-26 19:05:08.735997	16.4	94	0	14.1
2024-10-26 20:05:08.684546	16.2	94	0	13.6
2024-10-26 21:05:08.47783	16.2	95	0	16.3
2024-10-26 22:05:08.045858	16.1	95	0	14.9
2024-10-26 23:05:08.045038	15.8	95	0	15.5
2024-10-27 00:05:07.990422	15.8	98	0	4.4
2024-10-27 01:05:07.936736	15.8	98	0	4.4
2024-10-27 02:05:08.519711	16.2	95	0	16.9
2024-10-27 02:05:08.682022	16.2	95	0	16.9
2024-10-27 03:05:07.860724	16.1	96	0.2	19.1
2024-10-27 04:05:08.432453	15.9	97	0.5	17
2024-10-27 05:05:07.885201	15.8	97	0	14.8
2024-10-27 06:05:08.037642	16	98	0	12.2
2024-10-27 07:05:08.287876	16	98	0	11.6
2024-10-27 08:05:08.211652	16.2	96	0	11.2
2024-10-27 09:05:08.024349	16.4	96	0.1	11.3
2024-10-27 10:05:08.23404	17.1	92	0	11.2
2024-10-27 11:05:08.482877	18.1	90	0	10.1
2024-10-27 12:05:08.472788	18.3	88	0	7.8
2024-10-27 13:05:07.694248	18.7	88	0	5
2024-10-27 14:05:08.674174	18.9	85	0	3.6
2024-10-27 15:05:08.533304	18.9	81	0	1
2024-10-27 16:05:08.112765	18.4	83	0	1.9
2024-10-27 17:05:08.269997	17.6	86	0	2.5
2024-10-27 18:05:08.274803	16.7	93	0	4.2
2024-10-27 19:05:07.883363	16.1	94	0	4.2
2024-10-27 20:05:07.993429	15.3	97	0	5.4
2024-10-27 21:05:08.321549	14.5	95	0	5.4
2024-10-27 22:05:08.120761	14	95	0	5.3
2024-10-27 23:05:07.897171	13.5	95	0	5.1
2024-10-28 00:05:08.767856	16.1	96	0.1	16.2
2024-10-28 01:05:08.571118	13.2	97	0	5.8
2024-10-28 02:05:08.116422	12.9	97	0	3.9
2024-10-28 03:05:08.077845	12.9	96	0	5.1
2024-10-28 04:05:08.480502	12.6	97	0	5.9
2024-10-28 05:05:08.168671	12.4	97	0	4.8
2024-10-28 06:05:08.201586	12.4	95	0	3.7
2024-10-28 07:05:08.461838	12.6	94	0	3.6
2024-10-28 08:05:07.893734	13.9	90	0	3.4
2024-10-28 09:05:08.515635	16.1	85	0	4.3
2024-10-28 10:05:07.715803	17.7	79	0	5.5
2024-10-28 11:05:07.804738	19	76	0	7.3
2024-10-28 12:05:07.846621	19.6	73	0	5.5
2024-10-28 13:05:08.217553	19.9	70	0	6.2
2024-10-28 14:05:08.302471	19.9	70	0	5.4
2024-10-28 15:05:07.707395	19.4	72	0	6.2
2024-10-28 16:05:08.346711	18.1	79	0	5.8
2024-10-28 17:05:08.760338	16.9	87	0	4.4
2024-10-28 18:05:07.828283	16.5	90	0	3.3
2024-10-28 19:05:07.551311	15.8	93	0	5
2024-10-28 20:05:08.151534	15.2	93	0	5.3
2024-10-28 21:05:08.497916	14.5	92	0	4
2024-10-28 22:05:07.803087	14	92	0	4.4
2024-10-28 23:05:07.941433	13.6	94	0	3.4
2024-10-29 00:05:08.091454	13.7	96	0	6.3
2024-10-29 01:05:08.303938	12.8	93	0	4.3
2024-10-29 02:05:07.975665	12.7	93	0	4.1
2024-10-29 03:05:08.025644	12.1	94	0	4.7
2024-10-29 04:05:07.818045	11.5	96	0	5.2
2024-10-29 05:05:07.78888	10.6	100	0	5.4
2024-10-29 06:05:08.835423	10.3	100	0	4.9
2024-10-29 07:05:07.660111	10.3	100	0	5.1
2024-10-29 08:05:08.351928	11.6	98	0	4.8
2024-10-29 09:05:07.880901	13.3	91	0	6.8
2024-10-29 10:05:08.29433	15.4	85	0	7.6
2024-10-29 11:05:08.070763	17.3	82	0	9.4
2024-10-29 12:05:07.917358	18.6	76	0	8.6
2024-10-29 13:05:07.715236	19	73	0	7.2
2024-10-29 14:05:08.235086	19.1	73	0	6.2
2024-10-29 15:05:08.048533	19	70	0	4.9
2024-10-29 16:05:07.884519	18	75	0	5
2024-10-29 17:05:08.264823	16.6	83	0	4.3
2024-10-29 18:05:07.5927	16.1	88	0	4.2
2024-10-29 19:05:08.046956	15.4	90	0	3.7
2024-10-29 20:05:08.129956	14.9	92	0	3.1
2024-10-29 21:05:07.957556	14	96	0	3.6
2024-10-29 22:05:08.279853	13.5	97	0	4
2024-10-29 23:05:08.038897	13.1	97	0	4.7
2024-10-30 00:05:07.788833	12.9	91	0	4.3
2024-10-30 01:05:08.287042	12.1	98	0	5.1
2024-10-30 02:05:07.97936	11.8	97	0	4.7
2024-10-30 03:05:07.918163	11.3	100	0	5.5
2024-10-30 04:05:07.926565	11.6	100	0	6.4
2024-10-30 05:05:07.434725	11.3	100	0	6.5
2024-10-30 06:05:07.937233	10.1	100	0	5
2024-10-30 07:05:07.782134	10.3	100	0	5.8
2024-10-30 08:05:07.257077	10.6	100	0	5.7
2024-10-30 09:05:07.903218	12.6	89	0	5.2
2024-10-30 10:05:08.4401	14.7	82	0	5.6
2024-10-30 11:05:07.958116	16.7	76	0	5.8
2024-10-30 12:05:08.568385	19	68	0	4.1
2024-10-30 13:05:08.291505	19.8	66	0	3.7
2024-10-30 14:05:08.186371	20	67	0	3.1
2024-10-30 15:05:07.726883	19.9	65	0	3.5
2024-10-30 16:05:08.041083	18.6	72	0	3.6
2024-10-30 17:05:07.742343	16.8	82	0	4.1
2024-10-30 18:05:08.029118	15.9	85	0	3.6
2024-10-30 19:05:08.050351	15	87	0	3.8
2024-10-30 20:05:08.418713	14.3	90	0	3.7
2024-10-30 21:05:07.973029	13.8	95	0	4.4
2024-10-30 22:05:07.954435	13.2	96	0	3.8
2024-10-30 23:05:08.519545	12.7	97	0	2.5
2024-10-31 00:05:08.037332	12.4	98	0	4.7
2024-10-31 01:05:08.150938	11.5	98	0	2.9
2024-10-31 02:05:08.353221	11.1	97	0	3
2024-10-31 03:05:07.744747	10.3	100	0	3.7
2024-10-31 04:05:08.048717	9.7	100	0	3.8
2024-10-31 05:05:08.488496	9.8	100	0	4.3
2024-10-31 06:05:08.210388	9.3	100	0	2.7
2024-10-31 07:05:08.231173	9.2	100	0	2.3
2024-10-31 08:05:08.271496	9.8	100	0	2.6
2024-10-31 09:05:08.602778	12.2	89	0	4.1
2024-10-31 10:05:08.497842	14.5	81	0	4.6
2024-10-31 11:05:08.790026	16.9	73	0	3.6
2024-10-31 12:05:07.943347	18.8	67	0	4.8
2024-10-31 13:05:08.472417	19.6	64	0	3.4
2024-10-31 14:05:08.302667	19.9	64	0	2.2
2024-10-31 15:05:08.758056	19.5	67	0	3.2
2024-10-31 16:05:08.241408	18.1	74	0	3.7
2024-10-31 17:05:08.607701	16.6	82	0	2.6
2024-10-31 18:05:08.212513	16.1	84	0	1.6
2024-10-31 19:05:08.453857	14.9	89	0	2.9
2024-10-31 20:05:08.038625	13.8	93	0	3.3
2024-10-31 21:05:08.292266	13.5	97	0	1.5
2024-10-31 22:05:07.797122	12.5	99	0	3.4
2024-10-31 23:05:08.117563	11.7	100	0	4
2024-11-01 00:05:08.159595	12	96	0	3.3
2024-11-01 01:05:07.809465	11	100	0	2.7
2024-11-01 02:05:08.077445	11.5	100	0	3.6
2024-11-01 03:05:07.996693	11	100	0	4
2024-11-01 04:05:08.625086	10.7	100	0	3.3
2024-11-01 05:05:07.973796	10.4	100	0	3.3
2024-11-01 06:05:07.807901	9.5	98	0	4.1
2024-11-01 07:05:08.712966	9.5	98	0	4
2024-11-01 08:05:07.96546	10.9	92	0	3.9
2024-11-01 09:05:08.378393	13.7	77	0	4.7
2024-11-01 10:05:08.736236	15.9	69	0	6.4
2024-11-01 11:05:07.922781	17.7	61	0	7.5
2024-11-01 12:05:07.916828	18.8	63	0	7.3
2024-11-01 13:05:08.347074	19.5	62	0	7.3
2024-11-01 14:05:07.719238	19.6	61	0	7
2024-11-01 15:05:08.115277	18.9	61	0	6.8
2024-11-01 16:05:08.000774	17.3	74	0	5.2
2024-11-01 17:05:08.086602	15.8	81	0	4.7
2024-11-01 18:05:07.991911	15	84	0	4.7
2024-11-01 19:05:08.206597	14.2	88	0	4.8
2024-11-01 20:05:08.03681	13.6	91	0	4.9
2024-11-01 21:05:08.523218	12.9	91	0	4.8
2024-11-01 22:05:08.589557	12.4	91	0	4.8
2024-11-01 23:05:07.907235	11.9	92	0	4.6
2024-11-02 00:05:08.168183	11.9	100	0	3.1
2024-11-02 01:05:07.982658	10.9	94	0	4.9
2024-11-02 02:05:08.557221	10.6	94	0	5.2
2024-11-02 03:05:07.790731	10.2	94	0	4.8
2024-11-02 04:05:08.133081	10	94	0	4.6
2024-11-02 05:05:08.452736	9.7	94	0	4.1
2024-11-02 06:05:08.117228	9.1	95	0	4.5
2024-11-02 07:05:07.801272	8.8	97	0	4.6
2024-11-02 08:05:08.013436	10	94	0	4.7
2024-11-02 09:05:08.228849	12.2	87	0	4.3
2024-11-02 10:05:07.909636	14	81	0	4.9
2024-11-02 11:05:08.257637	16	72	0	4.4
2024-11-02 12:05:08.795509	18.3	59	0	6
2024-11-02 13:05:08.598792	19	55	0	4.5
2024-11-02 14:05:08.121067	19.1	55	0	3.6
2024-11-02 15:05:08.459132	18.4	56	0	3.6
2024-11-02 16:05:08.513601	16.7	67	0	2.8
2024-11-02 17:05:08.460131	15.7	71	0	1.8
2024-11-02 18:05:07.997624	14.5	82	0	3.2
2024-11-02 19:05:08.071457	13.5	83	0	3.1
2024-11-02 20:05:08.167051	12.4	85	0	3.6
2024-11-02 21:05:08.019408	12.3	87	0	3.1
2024-11-02 22:05:08.717561	11.4	91	0	3.8
2024-11-02 23:05:08.798187	11.3	90	0	3.3
2024-11-03 00:05:08.176802	11	93	0	5.2
2024-11-03 01:05:08.083753	11	91	0	4.4
2024-11-03 02:05:08.589383	10.8	92	0	4.3
2024-11-03 03:05:08.034242	10.8	92	0	4.2
2024-11-03 04:05:07.871631	10.8	94	0	5.3
2024-11-03 05:05:07.832713	10.6	93	0	5.2
2024-11-03 06:05:08.918414	9	100	0	4.7
2024-11-03 07:05:08.021917	9.4	100	0	6.7
2024-11-03 08:05:08.003641	10.3	94	0	6.5
2024-11-03 09:05:07.907062	12.2	84	0	6.1
2024-11-03 10:05:08.454166	13.6	78	0	7.8
2024-11-03 11:05:08.598082	14.7	77	0	7.6
2024-11-03 12:05:08.848048	16	72	0	6.2
2024-11-03 13:05:07.931051	16.5	69	0	5.1
2024-11-03 14:05:08.62164	16.6	69	0	5.4
2024-11-03 15:05:07.975487	16.3	67	0	6.3
2024-11-03 16:05:08.059949	15.1	73	0	4.4
2024-11-03 17:05:08.479042	13.7	81	0	3.3
2024-11-03 18:05:08.682593	13.1	87	0	2.9
2024-11-03 19:05:08.235148	12.3	90	0	3.7
2024-11-03 20:05:08.196652	11.7	90	0	3.7
2024-11-03 21:05:08.844664	11	91	0	4.2
2024-11-03 22:05:08.358579	10.5	91	0	4.2
2024-11-03 23:05:08.734181	10.2	91	0	3.5
2024-11-04 00:05:08.389667	11.8	91	0	2.9
2024-11-04 01:05:08.179649	9.4	94	0	3.1
2024-11-04 02:05:08.121597	9	94	0	3.2
2024-11-04 03:05:08.63485	8.3	96	0	4.7
2024-11-04 04:05:08.945788	7.8	98	0	4.2
2024-11-04 05:05:08.197454	7	100	0	5
2024-11-04 06:05:08.584435	6.6	100	0	6
2024-11-04 07:05:08.532869	6.8	100	0	6.2
2024-11-04 08:05:08.757487	7.5	98	0	6
2024-11-04 09:05:08.436808	9.1	97	0	6.7
2024-11-04 10:05:08.105565	10.5	92	0	6.3
2024-11-04 11:05:08.671776	12.3	86	0	7.6
2024-11-04 12:05:08.684352	13.4	82	0	7.3
2024-11-04 13:05:08.459965	14.7	77	0	5.8
2024-11-04 14:05:08.156375	15.5	75	0	3.8
2024-11-04 15:05:08.686529	14.3	80	0	4.7
2024-11-04 16:05:08.639112	13.4	85	0	3.7
2024-11-04 17:05:08.420172	12.1	91	0	3.1
2024-11-04 18:05:08.491623	10.3	98	0	3.1
2024-11-04 19:05:08.470277	9.7	99	0	4.4
2024-11-04 20:05:08.564169	9.2	100	0	4.3
2024-11-04 21:05:08.624297	8.6	100	0	3
2024-11-04 22:05:08.456718	8.6	100	0	2.5
2024-11-04 23:05:08.834422	8.5	100	0	2.5
2024-11-05 00:05:08.345397	9.6	93	0	3.3
2024-11-05 01:05:08.752161	8.6	100	0	3.1
2024-11-05 02:05:08.330716	8.8	100	0	3.2
2024-11-05 03:05:08.424448	7.8	100	0	3.3
2024-11-05 04:05:08.816725	7.2	100	0	4
2024-11-05 05:05:08.070346	6.9	100	0	4
2024-11-05 06:05:08.612217	6.5	100	0	5.1
2024-11-05 07:05:08.675892	6.3	100	0	4.7
2024-11-05 08:05:08.859466	6.3	100	0	4.3
2024-11-05 09:05:08.003445	6.7	99	0	4
2024-11-05 10:05:08.989615	7.5	93	0	3.8
2024-11-05 11:05:08.576839	9.4	85	0	3.9
2024-11-05 12:05:08.495462	12.1	75	0	3.8
2024-11-05 13:05:08.187928	13.7	70	0	2.4
2024-11-05 14:05:08.137023	14.4	70	0	2.2
2024-11-05 15:05:08.903943	12.7	79	0	2.6
2024-11-05 16:05:08.807974	11.9	83	0	2.6
2024-11-05 17:05:08.081546	10.6	89	0	2.9
2024-11-05 18:05:08.751252	8.7	97	0	3.2
2024-11-05 19:05:08.620649	8.1	99	0	3.1
2024-11-05 20:05:08.690457	7.5	100	0	4.2
2024-11-05 21:05:08.222608	6.5	100	0	4
2024-11-05 22:05:08.880193	6.3	100	0	5.1
2024-11-05 23:05:08.40033	6	100	0	5.1
2024-11-06 00:05:07.951018	8.1	100	0	3.4
2024-11-06 01:05:08.72053	5.8	100	0	5.4
2024-11-06 02:05:07.987746	6.4	100	0	5.5
2024-11-06 03:05:08.918965	6.7	100	0	6
2024-11-06 04:05:08.342257	6.3	100	0	6.1
2024-11-06 05:05:08.687994	6.4	100	0	5.9
2024-11-06 06:05:08.868356	5.4	100	0	5.4
2024-11-06 07:05:08.052496	5.4	100	0	4.7
2024-11-06 08:05:07.962169	5.7	100	0	4.3
2024-11-06 09:05:08.976393	6.2	99	0	3.6
2024-11-06 10:05:08.220636	7.4	94	0	3.8
2024-11-06 11:05:08.893799	9.3	87	0	3.5
2024-11-06 12:05:08.475572	11.9	80	0	4
2024-11-06 13:05:08.557243	13.1	78	0	3
2024-11-06 14:05:08.662752	13.6	76	0	2.5
2024-11-06 15:05:08.882101	11.9	84	0	3.9
2024-11-06 16:05:08.767953	10.8	90	0	2.4
2024-11-06 17:05:08.692384	9.9	92	0	2.7
2024-11-06 18:05:08.970632	9.6	93	0	2.9
2024-11-06 19:05:08.267083	9	96	0	2.7
2024-11-06 20:05:08.661184	8.2	98	0	2.8
2024-11-06 21:05:08.663341	6.4	100	0	1.1
2024-11-06 22:05:08.825032	6.3	100	0	2.8
2024-11-06 23:05:08.366156	6.8	100	0	3.1
2024-11-07 00:05:08.198489	6.2	100	0	5.9
2024-11-07 01:05:08.575819	5.9	100	0	2.5
2024-11-07 02:05:08.155808	5.4	100	0	2.2
2024-11-07 03:05:08.099537	4.6	100	0	2.6
2024-11-07 04:05:08.685336	4.8	100	0	3.1
2024-11-07 05:05:08.284719	4.8	100	0	3.1
2024-11-07 06:05:08.838944	4.8	100	0	1.3
2024-11-07 07:05:08.447355	4.1	100	0	2.3
2024-11-07 08:05:08.374925	4.1	100	0	1.5
2024-11-07 09:05:08.24188	5.3	100	0	1.6
2024-11-07 10:05:08.946619	7.3	95	0	1.3
2024-11-07 11:05:08.918077	9.3	87	0	1.5
2024-11-07 12:05:08.534145	11.9	79	0	2.4
2024-11-07 13:05:08.202771	12.7	79	0	3
2024-11-07 14:05:08.82737	13.2	79	0	3.2
2024-11-07 15:05:08.638582	12	82	0	2.2
2024-11-07 16:05:08.195648	11	87	0	1.5
2024-11-07 17:05:08.979278	10.1	89	0	0.8
2024-11-07 18:05:08.310905	9.7	91	0	3
2024-11-07 19:05:08.546133	9.1	95	0	3.1
2024-11-07 20:05:08.671425	8.5	97	0	2.3
2024-11-07 21:05:08.30137	7.2	100	0	2.9
2024-11-07 22:05:08.894295	6.6	100	0	1.3
2024-11-07 23:05:08.493486	5.1	100	0	2.6
2024-11-08 00:05:08.77913	5.3	100	0	4.1
2024-11-08 01:05:08.291243	4.9	100	0	3.7
2024-11-08 02:05:08.829966	5.4	100	0	3.1
2024-11-08 03:05:08.752407	4.3	100	0	1.8
2024-11-08 04:05:08.523833	4.6	100	0	0.8
2024-11-08 05:05:08.623699	4.5	100	0	1.6
2024-11-08 06:05:08.126273	4.9	100	0	1.8
2024-11-08 07:05:08.137893	4.6	100	0	2.8
2024-11-08 08:05:08.370554	4.9	100	0	1.3
2024-11-08 09:05:08.980078	5.1	100	0	2.2
2024-11-08 10:05:08.60326	6.3	98	0	0.7
2024-11-08 11:05:07.967458	7.7	92	0	1.8
2024-11-08 12:05:08.039335	9.5	83	0	2.3
2024-11-08 13:05:08.82097	10.5	81	0	1.6
2024-11-08 14:05:08.799596	11.2	79	0	0.5
2024-11-08 15:05:08.726083	10.7	81	0	1.8
2024-11-08 16:05:08.799672	10.4	83	0	0.4
2024-11-08 17:05:08.751377	9.3	90	0	2.9
2024-11-08 18:05:08.184409	8.7	94	0	3.6
2024-11-08 19:05:08.810078	8.4	95	0	3.7
2024-11-08 20:05:08.886097	8	96	0	3.1
2024-11-08 21:05:08.015317	7.8	98	0	3.3
2024-11-08 22:05:08.533254	7.4	99	0	1.9
2024-11-08 23:05:08.741014	6.8	100	0	1.5
2024-11-09 00:05:08.045183	5.2	100	0	1
2024-11-09 01:05:08.524663	5.9	100	0	2.1
2024-11-09 02:05:08.367418	6	100	0	1
2024-11-09 03:05:08.672325	6.2	100	0	2.5
2024-11-09 04:05:08.555207	6.4	100	0	1.8
2024-11-09 05:05:08.04746	6.4	100	0	1.8
2024-11-09 06:05:08.695908	5.5	100	0	2.8
2024-11-09 07:05:08.635078	5.8	100	0	3.5
2024-11-09 08:05:08.880022	6.4	100	0	3.1
2024-11-09 09:05:08.522478	7.1	99	0	2.5
2024-11-09 10:05:08.099363	9.6	89	0	3.3
2024-11-09 11:05:08.776362	11.4	80	0	4.1
2024-11-09 12:05:08.286141	12.6	76	0	3.6
2024-11-09 13:05:08.724813	13.1	75	0	5.4
2024-11-09 14:05:08.76272	13.2	75	0	5.2
2024-11-09 15:05:08.42528	11.5	80	0	5.4
2024-11-09 16:05:08.430121	10.4	87	0	4
2024-11-09 17:05:08.542126	9.5	92	0	3.5
2024-11-09 18:05:08.823254	9	97	0	4.6
2024-11-09 19:05:08.778702	8.6	98	0	4.5
2024-11-09 20:05:08.895458	8.2	98	0	3.8
2024-11-09 21:05:07.966531	7.5	98	0	4.5
2024-11-09 22:05:08.960596	7.2	98	0	3.4
2024-11-09 23:05:08.547962	6.5	100	0	2.9
2024-11-10 00:05:08.200568	6.7	100	0	0.8
2024-11-10 01:05:08.764787	6.1	99	0	3.6
2024-11-10 02:05:08.287154	5.8	100	0	4.5
2024-11-10 03:05:08.45713	5.5	100	0	5.8
2024-11-10 04:05:08.753514	5.3	100	0	4.4
2024-11-10 05:05:08.30858	5.3	100	0	4.5
2024-11-10 06:05:08.610751	4.4	100	0	3.7
2024-11-10 07:05:08.003723	4.5	100	0	4
2024-11-10 08:05:08.398699	4.9	100	0	5.4
2024-11-10 09:05:08.842189	7.1	89	0	4.8
2024-11-10 10:05:08.526612	8.8	84	0	4.2
2024-11-10 11:05:07.985771	10.9	77	0	4.4
2024-11-10 12:05:08.717243	12.5	72	0	4.5
2024-11-10 13:05:08.493889	13.7	66	0	4.3
2024-11-10 14:05:08.244607	14.3	66	0	3.2
2024-11-10 15:05:08.977109	13.2	77	0	4
2024-11-10 16:05:08.800886	11.8	84	0	3.8
2024-11-10 17:05:08.768571	10.6	89	0	3.3
2024-11-10 18:05:08.536887	10	88	0	2.2
2024-11-10 19:05:08.470929	9.5	89	0	2.5
2024-11-10 20:05:08.809875	9	91	0	1.9
2024-11-10 21:05:08.404855	8.3	90	0	2.5
2024-11-10 22:05:08.763037	7.2	93	0	4.5
2024-11-10 23:05:08.310787	6.8	95	0	3.4
2024-11-11 00:05:08.877758	6.2	100	0	4.6
2024-11-11 01:05:08.737217	5.7	98	0	3.6
2024-11-11 02:05:08.667357	5.6	97	0	3.3
2024-11-11 03:05:08.554025	5.2	100	0	3.4
2024-11-11 04:05:08.458452	4.7	100	0	4.6
2024-11-11 05:05:08.87903	4.5	100	0	4.2
2024-11-11 06:05:08.834622	3.2	100	0	3.2
2024-11-11 07:05:08.090301	3.3	100	0	2.4
2024-11-11 08:05:09.038504	4.3	100	0	0.7
2024-11-11 09:05:08.496641	7.6	92	0	3.3
2024-11-11 10:05:08.525323	9.7	86	0	1.8
2024-11-11 11:05:08.611224	11.9	73	0	4.2
2024-11-11 12:05:08.443023	13.1	58	0	7.1
2024-11-11 13:05:08.133106	13.2	61	0	8
2024-11-11 14:05:08.766555	13.1	64	0	8.6
2024-11-11 15:05:08.875482	12.2	71	0	7
2024-11-11 16:05:08.941156	10.6	78	0	5.8
2024-11-11 17:05:08.538783	9.1	85	0	5.6
2024-11-11 18:05:08.307176	8.7	84	0	5.4
2024-11-11 19:05:08.28133	8	85	0	4.9
2024-11-11 20:05:08.511848	7.5	87	0	4.9
2024-11-11 21:05:08.117362	7	86	0	4.7
2024-11-11 22:05:08.682047	7.1	86	0	5.6
2024-11-11 23:05:24.660805	7	88	0	7.4
2024-11-12 00:05:08.134912	4.2	100	0	2.5
2024-11-12 01:05:11.293404	7.1	83	0	6.7
2024-11-12 02:05:09.849038	6.9	81	0	6.9
2024-11-12 03:05:08.215973	6.8	80	0	5.8
2024-11-12 04:05:08.929773	6.6	77	0	6.6
2024-11-12 05:05:09.860193	6.6	70	0	8.1
2024-11-12 06:05:08.12059	6.3	71	0	6.6
2024-11-12 07:05:08.806538	6.2	68	0	7.3
2024-11-12 08:05:08.881759	6.4	68	0	6.6
2024-11-12 09:05:08.204329	7.6	66	0	9.1
2024-11-12 10:05:09.937995	10.2	60	0	9
2024-11-12 11:05:08.191931	11.1	49	0	12.8
2024-11-12 12:05:08.296454	11.5	52	0	10.5
2024-11-12 13:05:08.455374	11.2	54	0	12.8
2024-11-12 14:05:08.255504	10.7	61	0	8.7
2024-11-12 15:05:08.93539	10.7	62	0	6.8
2024-11-12 16:05:08.776427	9.7	61	0	6.2
2024-11-12 17:05:08.363583	8.5	68	0	5.4
2024-11-12 18:05:08.871251	8.3	65	0	3.9
2024-11-12 19:05:08.726943	7.6	69	0	4.1
2024-11-12 20:05:08.286448	7.1	71	0	3.2
\.


--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 200
-- Name: test_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: colab
--

SELECT pg_catalog.setval('public.test_table_id_seq', 50, true);


--
-- TOC entry 2882 (class 2606 OID 24646)
-- Name: pollutants_historics pollutants_historics_pkey; Type: CONSTRAINT; Schema: public; Owner: colab
--

ALTER TABLE ONLY public.pollutants_historics
    ADD CONSTRAINT pollutants_historics_pkey PRIMARY KEY ("year_week_station_ID");


--
-- TOC entry 2880 (class 2606 OID 16440)
-- Name: pollution_sensor_data pollution_sensor_data_pkey; Type: CONSTRAINT; Schema: public; Owner: colab
--

ALTER TABLE ONLY public.pollution_sensor_data
    ADD CONSTRAINT pollution_sensor_data_pkey PRIMARY KEY (etl_timestamp, station_id);


--
-- TOC entry 2874 (class 2606 OID 16398)
-- Name: test_table test_table_pkey; Type: CONSTRAINT; Schema: public; Owner: colab
--

ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (id);


--
-- TOC entry 2876 (class 2606 OID 16419)
-- Name: traffic_volume traffic_volume_pkey; Type: CONSTRAINT; Schema: public; Owner: colab
--

ALTER TABLE ONLY public.traffic_volume
    ADD CONSTRAINT traffic_volume_pkey PRIMARY KEY (station_id, etl_timestamp);


--
-- TOC entry 2878 (class 2606 OID 16424)
-- Name: weather weather_pkey; Type: CONSTRAINT; Schema: public; Owner: colab
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT weather_pkey PRIMARY KEY (date);


-- Completed on 2024-11-12 20:52:46 CET

--
-- PostgreSQL database dump complete
--

