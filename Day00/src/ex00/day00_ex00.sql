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
-- Name: day00_ex00; Type: TABLE; Schema: public; Owner: king4got10
--

CREATE TABLE public.day00_ex00 (
    name character varying,
    age integer
);


ALTER TABLE public.day00_ex00 OWNER TO king4got10;

--
-- Data for Name: day00_ex00; Type: TABLE DATA; Schema: public; Owner: king4got10
--

COPY public.day00_ex00 (name, age) FROM stdin;
Kate	33
Denis	13
Elvira	45
\.


--
-- PostgreSQL database dump complete
--

