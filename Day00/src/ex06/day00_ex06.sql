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
-- Name: day00_ex06; Type: TABLE; Schema: public; Owner: king4got10
--

CREATE TABLE public.day00_ex06 (
    id bigint,
    name character varying,
    age integer,
    gender character varying,
    address character varying,
    check_name text
);


ALTER TABLE public.day00_ex06 OWNER TO king4got10;

--
-- Data for Name: day00_ex06; Type: TABLE DATA; Schema: public; Owner: king4got10
--

COPY public.day00_ex06 (id, name, age, gender, address, check_name) FROM stdin;
1	Anna	16	female	Moscow	false
2	Andrey	21	male	Moscow	false
3	Kate	33	female	Kazan	false
4	Denis	13	male	Kazan	true
5	Elvira	45	female	Kazan	false
6	Irina	21	female	Saint-Petersburg	false
7	Peter	24	male	Saint-Petersburg	false
8	Nataly	30	female	Novosibirsk	false
9	Dmitriy	18	male	Samara	false
\.


--
-- PostgreSQL database dump complete
--

