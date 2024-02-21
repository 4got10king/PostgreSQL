--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.1 (Ubuntu 16.1-1.pgdg22.04+1)

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
-- Name: day00_e08; Type: TABLE; Schema: public; Owner: king4got10
--

CREATE TABLE public.day00_e08 (
    id bigint,
    person_id bigint,
    menu_id bigint,
    order_date date
);


ALTER TABLE public.day00_e08 OWNER TO king4got10;

--
-- Data for Name: day00_e08; Type: TABLE DATA; Schema: public; Owner: king4got10
--

COPY public.day00_e08 (id, person_id, menu_id, order_date) FROM stdin;
2	1	2	2022-01-01
4	2	9	2022-01-01
6	4	16	2022-01-07
8	4	18	2022-01-07
10	4	7	2022-01-08
12	5	7	2022-01-09
14	7	3	2022-01-03
16	7	4	2022-01-05
18	8	14	2022-01-07
20	9	6	2022-01-10
\.


--
-- PostgreSQL database dump complete
--

