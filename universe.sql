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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_mio_years numeric(3,2),
    predicted_mio_years_left integer,
    size_in_lightyears integer
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
    inhabitants integer,
    vibe_essay text,
    planet_id integer DEFAULT 1
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
    star_id integer DEFAULT 1,
    has_humanoids boolean,
    capital character varying(30) DEFAULT 'Dietike'::character varying NOT NULL
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
-- Name: planetlanguage; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetlanguage (
    planetlanguage_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.planetlanguage OWNER TO freecodecamp;

--
-- Name: planetlanguages_language_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetlanguages_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetlanguages_language_id_seq OWNER TO freecodecamp;

--
-- Name: planetlanguages_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetlanguages_language_id_seq OWNED BY public.planetlanguage.planetlanguage_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_hollywood_stars integer DEFAULT 0,
    galaxy_id integer DEFAULT 1,
    is_blue_star boolean,
    color character varying(30),
    age integer NOT NULL
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
-- Name: planetlanguage planetlanguage_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetlanguage ALTER COLUMN planetlanguage_id SET DEFAULT nextval('public.planetlanguages_language_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Silky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Wilky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Silky Say', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Wilky Say', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky May', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (14, 'a', NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'b', NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'c', NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'd', NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'e', NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'f', NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'g', NULL, NULL, 1);
INSERT INTO public.moon VALUES (21, 'h', NULL, NULL, 1);
INSERT INTO public.moon VALUES (22, 'i', NULL, NULL, 1);
INSERT INTO public.moon VALUES (23, 'j', NULL, NULL, 1);
INSERT INTO public.moon VALUES (24, 'k', NULL, NULL, 1);
INSERT INTO public.moon VALUES (25, 'l', NULL, NULL, 1);
INSERT INTO public.moon VALUES (26, 'm', NULL, NULL, 1);
INSERT INTO public.moon VALUES (27, 'n', NULL, NULL, 1);
INSERT INTO public.moon VALUES (28, 'o', NULL, NULL, 1);
INSERT INTO public.moon VALUES (29, 'p', NULL, NULL, 1);
INSERT INTO public.moon VALUES (30, 'q', NULL, NULL, 1);
INSERT INTO public.moon VALUES (31, 'r', NULL, NULL, 1);
INSERT INTO public.moon VALUES (32, 's', NULL, NULL, 1);
INSERT INTO public.moon VALUES (33, 't', NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (3, 'Bearth', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (4, 'Warht', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (5, 'Mars', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (6, 'Darth', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (7, 'Jupyter', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (8, 'ISS STATION', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (9, 'Nebula', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (10, 'Neptune', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (11, 'Venus', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (12, 'Anus', 1, NULL, 'Dietike');
INSERT INTO public.planet VALUES (13, 'Yo Momma', 1, NULL, 'Dietike');


--
-- Data for Name: planetlanguage; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetlanguage VALUES (1, 'a', NULL);
INSERT INTO public.planetlanguage VALUES (2, 'b', NULL);
INSERT INTO public.planetlanguage VALUES (3, 'c', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 1, NULL, NULL, 300);
INSERT INTO public.star VALUES (2, 'Fun', 0, 1, NULL, NULL, 400);
INSERT INTO public.star VALUES (3, 'Yun', 0, 1, NULL, NULL, 599);
INSERT INTO public.star VALUES (4, 'Lun', 0, 1, NULL, NULL, 5885);
INSERT INTO public.star VALUES (5, 'Run', 0, 1, NULL, NULL, 585);
INSERT INTO public.star VALUES (6, 'Wun', 0, 1, NULL, NULL, 485);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 33, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planetlanguages_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetlanguages_language_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planetlanguage planetlanguage_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetlanguage
    ADD CONSTRAINT planetlanguage_name_key UNIQUE (name);


--
-- Name: planetlanguage planetlanguages_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetlanguage
    ADD CONSTRAINT planetlanguages_pkey PRIMARY KEY (planetlanguage_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planetlanguage planetlanguages_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetlanguage
    ADD CONSTRAINT planetlanguages_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

