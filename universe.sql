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
-- Name: bigbang; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.bigbang (
    galaxy_id integer,
    planet_id integer,
    star_id integer,
    moon_id integer,
    name character varying NOT NULL,
    bigbang_id integer NOT NULL
);


ALTER TABLE public.bigbang OWNER TO freecodecamp;

--
-- Name: bigbang_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.bigbang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bigbang_id_seq OWNER TO freecodecamp;

--
-- Name: bigbang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.bigbang_id_seq OWNED BY public.bigbang.bigbang_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    has_life boolean,
    planet_id integer,
    star_id integer,
    moon_id integer,
    age_in_millions_of_years numeric,
    description text
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
    name character varying NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    planet_id integer,
    star_id integer,
    galaxy_id integer,
    age_in_millions_of_years numeric,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moons_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moons_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moons_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moons_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    star_id integer,
    moon_id integer,
    galaxy_id integer,
    age_in_millions_of_years numeric,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    star_id integer NOT NULL,
    has_life boolean,
    planet_id integer,
    moon_id integer,
    galaxy_id integer,
    age_in_millions_of_years numeric,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_star_id_seq OWNER TO freecodecamp;

--
-- Name: stars_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_star_id_seq OWNED BY public.star.star_id;


--
-- Name: bigbang bigbang_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang ALTER COLUMN bigbang_id SET DEFAULT nextval('public.bigbang_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moons_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_star_id_seq'::regclass);


--
-- Data for Name: bigbang; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.bigbang VALUES (1, 3, 1, 5, 'queen', 1);
INSERT INTO public.bigbang VALUES (3, 6, 3, 10, 'king', 2);
INSERT INTO public.bigbang VALUES (6, 9, 6, 15, 'fire', 3);
INSERT INTO public.bigbang VALUES (4, 2, 4, 15, 'air', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, true, 1, 1, 1, 100, 'red');
INSERT INTO public.galaxy VALUES ('galaxy2', 2, false, 2, 2, 2, 200, 'orange');
INSERT INTO public.galaxy VALUES ('galaxy3', 3, true, 3, 3, 3, 300, 'yellow');
INSERT INTO public.galaxy VALUES ('galaxy4', 4, false, 4, 4, 4, 400, 'green');
INSERT INTO public.galaxy VALUES ('galaxy5', 5, false, 5, 5, 5, 500, 'blue');
INSERT INTO public.galaxy VALUES ('galaxy6', 6, true, 6, 6, 6, 600, 'indigo');
INSERT INTO public.galaxy VALUES ('galaxy7', 7, false, 7, 7, 7, 700, 'violet');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, true, 25, 1001, 1, 100, 'europa');
INSERT INTO public.moon VALUES ('moon2', 2, false, 26, 1, 2, 200, 'titan');
INSERT INTO public.moon VALUES ('moon3', 3, true, 27, 2, 3, 300, 'mimas');
INSERT INTO public.moon VALUES ('moon4', 4, false, 28, 3, 4, 400, 'charon');
INSERT INTO public.moon VALUES ('moon5', 5, true, 29, 4, 5, 500, 'ariel');
INSERT INTO public.moon VALUES ('moon6', 6, false, 30, 5, 6, 600, 'oberon');
INSERT INTO public.moon VALUES ('moon7', 7, true, 31, 6, 7, 700, 'elara');
INSERT INTO public.moon VALUES ('moon8', 8, false, 32, 1001, 1, 100, 'thebe');
INSERT INTO public.moon VALUES ('moon9', 9, true, 33, 1, 2, 200, 'ganymede');
INSERT INTO public.moon VALUES ('moon10', 10, false, 34, 2, 3, 300, 'enceladus');
INSERT INTO public.moon VALUES ('moon11', 11, true, 35, 3, 4, 400, 'lapetus');
INSERT INTO public.moon VALUES ('moon12', 12, false, 36, 4, 5, 500, 'rhea');
INSERT INTO public.moon VALUES ('moon13', 13, true, 25, 5, 6, 600, 'tethys');
INSERT INTO public.moon VALUES ('moon14', 14, false, 25, 1001, 1, 100, 'amalthea');
INSERT INTO public.moon VALUES ('moon15', 15, true, 26, 1, 2, 200, 'hyperion');
INSERT INTO public.moon VALUES ('moon16', 16, false, 27, 2, 3, 300, 'himalia');
INSERT INTO public.moon VALUES ('moon17', 17, true, 28, 3, 4, 400, 'callisto');
INSERT INTO public.moon VALUES ('moon18', 18, false, 29, 4, 5, 500, 'triton');
INSERT INTO public.moon VALUES ('moon19', 19, true, 30, 5, 6, 600, 'dione');
INSERT INTO public.moon VALUES ('moon20', 20, false, 31, 6, 7, 700, 'miranda');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 25, true, 1001, 1, 1, 100, 'jan');
INSERT INTO public.planet VALUES ('planet2', 26, false, 1, 2, 2, 200, 'feb');
INSERT INTO public.planet VALUES ('planet3', 27, true, 2, 3, 3, 300, 'mar');
INSERT INTO public.planet VALUES ('planet4', 28, false, 3, 4, 4, 400, 'apr');
INSERT INTO public.planet VALUES ('planet5', 29, true, 4, 5, 5, 500, 'may');
INSERT INTO public.planet VALUES ('planet6', 30, false, 5, 6, 6, 600, 'jun');
INSERT INTO public.planet VALUES ('planet7', 31, true, 6, 7, 6, 700, 'jul');
INSERT INTO public.planet VALUES ('planet8', 32, false, 6, 8, 7, 100, 'aug');
INSERT INTO public.planet VALUES ('planet9', 33, true, 1, 9, 1, 100, 'sep');
INSERT INTO public.planet VALUES ('planet10', 34, false, 2, 10, 2, 200, 'oct');
INSERT INTO public.planet VALUES ('planet11', 35, true, 3, 11, 3, 300, 'nov');
INSERT INTO public.planet VALUES ('planet12', 36, false, 4, 12, 4, 400, 'dec');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1001, true, 1, 1, 1, 100, 'sirus');
INSERT INTO public.star VALUES ('star2', 1, false, 2, 2, 2, 200, 'altair');
INSERT INTO public.star VALUES ('star3', 2, true, 3, 3, 3, 300, 'vega');
INSERT INTO public.star VALUES ('star4', 3, false, 4, 4, 4, 400, 'polaris');
INSERT INTO public.star VALUES ('star5', 4, true, 5, 5, 5, 500, 'draco');
INSERT INTO public.star VALUES ('star6', 5, false, 6, 6, 6, 600, 'castor');
INSERT INTO public.star VALUES ('star7', 6, true, 7, 7, 7, 700, 'antares');


--
-- Name: bigbang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.bigbang_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moons_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moons_moon_id_seq', 3, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 36, true);


--
-- Name: stars_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_star_id_seq', 6, true);


--
-- Name: bigbang bigbang_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_id_key UNIQUE (bigbang_id);


--
-- Name: bigbang bigbang_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.bigbang
    ADD CONSTRAINT bigbang_pkey PRIMARY KEY (bigbang_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moons_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

