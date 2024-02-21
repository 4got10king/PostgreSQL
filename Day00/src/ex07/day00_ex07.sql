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
-- Name: day00_ex07; Type: TABLE; Schema: public; Owner: king4got10
--

CREATE TABLE public.day00_ex07 (
    id bigint,
    name character varying,
    age integer,
    interval_info text
);


ALTER TABLE public.day00_ex07 OWNER TO king4got10;

--
-- Data for Name: day00_ex07; Type: TABLE DATA; Schema: public; Owner: king4got10
--

COPY public.day00_ex07 (id, name, age, interval_info) FROM stdin;
1	Anna	16	interval #1
4	Denis	13	interval #1
9	Dmitriy	18	interval #1
6	Irina	21	interval #2
2	Andrey	21	interval #2
8	Nataly	30	interval #3
5	Elvira	45	interval #3
7	Peter	24	interval #3
3	Kate	33	interval #3
\.


--
-- PostgreSQL database dump complete
--

