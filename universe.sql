--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,2)
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,2),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric(5,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'name01', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (2, 'name02', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (3, '03', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (4, '4', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (5, '5', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (6, '6', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (7, '7', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (8, '8', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (9, '9', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (10, '10', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (11, '11', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (12, '12', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (13, '13', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (14, '14', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (15, '15', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (16, '16', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (17, '17', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (18, '18', NULL, true, NULL, NULL);
INSERT INTO public.fifth_table VALUES (19, '19', NULL, false, NULL, NULL);
INSERT INTO public.fifth_table VALUES (20, '20', NULL, false, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'name01', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'name02', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, '03', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, '4', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, '5', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, '6', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, '7', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, '8', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, '9', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, '10', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, '11', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, '12', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, '13', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, '14', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, '15', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, '16', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, '17', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, '18', NULL, true, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, '19', NULL, false, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, '20', NULL, false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'name01', NULL, true, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'name02', NULL, true, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, '03', NULL, true, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, '4', NULL, false, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, '5', NULL, false, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, '6', NULL, true, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, '7', NULL, false, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, '8', NULL, false, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, '9', NULL, true, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, '10', NULL, false, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, '11', NULL, true, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, '12', NULL, false, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, '13', NULL, false, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, '14', NULL, false, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, '15', NULL, true, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, '16', NULL, false, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, '17', NULL, true, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, '18', NULL, true, NULL, NULL, 18);
INSERT INTO public.moon VALUES (19, '19', NULL, false, NULL, NULL, 19);
INSERT INTO public.moon VALUES (20, '20', NULL, false, NULL, NULL, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'name01', NULL, true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'name02', NULL, true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, '03', NULL, true, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, '4', NULL, false, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, '5', NULL, false, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, '6', NULL, true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, '7', NULL, false, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, '8', NULL, false, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, '9', NULL, true, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, '10', NULL, false, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, '11', NULL, true, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, '12', NULL, false, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, '13', NULL, false, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, '14', NULL, false, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, '15', NULL, true, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, '16', NULL, false, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, '17', NULL, true, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, '18', NULL, true, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, '19', NULL, false, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, '20', NULL, false, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'name01', NULL, true, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'name02', NULL, true, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, '03', NULL, true, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, '4', NULL, false, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, '5', NULL, false, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, '6', NULL, true, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, '7', NULL, false, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, '8', NULL, false, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, '9', NULL, true, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, '10', NULL, false, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, '11', NULL, true, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, '12', NULL, false, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, '13', NULL, false, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, '14', NULL, false, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, '15', NULL, true, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, '16', NULL, false, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, '17', NULL, true, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, '18', NULL, true, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, '19', NULL, false, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, '20', NULL, false, NULL, NULL, 20);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

