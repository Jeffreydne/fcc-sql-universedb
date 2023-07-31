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
    magnitude numeric(2,1),
    distance_lightyears numeric(3,1),
    constelation text,
    name character varying(30) NOT NULL
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
    planet_orbiting character varying(30) NOT NULL,
    year_discovered integer,
    planet_id integer,
    name character varying(30) NOT NULL
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
    is_dwarf boolean,
    confirmed_moons integer,
    star_id integer,
    name character varying(30) NOT NULL
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
-- Name: spacestation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacestation (
    spacestation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    currently_orbiting boolean
);


ALTER TABLE public.spacestation OWNER TO freecodecamp;

--
-- Name: spacestation_spacestation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacestation_spacestation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacestation_spacestation_id_seq OWNER TO freecodecamp;

--
-- Name: spacestation_spacestation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacestation_spacestation_id_seq OWNED BY public.spacestation.spacestation_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    distance_lightyears numeric(3,1),
    is_binary boolean,
    galaxy_id integer,
    name character varying(30) NOT NULL
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
-- Name: spacestation spacestation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation ALTER COLUMN spacestation_id SET DEFAULT nextval('public.spacestation_spacestation_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 6.5, NULL, NULL, 'Milky Way');
INSERT INTO public.galaxy VALUES (2, 3.4, 2.6, NULL, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 5.7, 2.9, NULL, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 6.8, 13.7, NULL, 'Centarus');
INSERT INTO public.galaxy VALUES (5, 7.2, 12.0, NULL, 'Sculptor');
INSERT INTO public.galaxy VALUES (6, 6.9, 12.0, 'Ursa Major', 'Bodes');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'S', 1655, 6, 'Titan');
INSERT INTO public.moon VALUES (2, 'J', 1610, 5, 'Ganymede');
INSERT INTO public.moon VALUES (3, 'J', 1610, 5, 'Europa');
INSERT INTO public.moon VALUES (4, 'N', 1949, 8, 'Nereid');
INSERT INTO public.moon VALUES (5, 'U', 1851, 7, 'Ariel');
INSERT INTO public.moon VALUES (6, 'S', 1672, 6, 'Rhea');
INSERT INTO public.moon VALUES (7, 'J', 1610, 5, 'Io');
INSERT INTO public.moon VALUES (8, 'J', 1610, 5, 'Callisto');
INSERT INTO public.moon VALUES (9, 'N', 1846, 8, 'Triton');
INSERT INTO public.moon VALUES (10, 'S', 1789, 6, 'Enceladus');
INSERT INTO public.moon VALUES (11, 'S', 1789, 6, 'Mimas');
INSERT INTO public.moon VALUES (12, 'MARS', 1877, 4, 'Phobos');
INSERT INTO public.moon VALUES (13, 'U', 1948, 7, 'Obreron');
INSERT INTO public.moon VALUES (14, 'U', 1948, 7, 'Miranda');
INSERT INTO public.moon VALUES (15, 'P', 1978, 7, 'Charon');
INSERT INTO public.moon VALUES (16, 'U', 1787, 7, 'Titania');
INSERT INTO public.moon VALUES (17, 'J', 1892, 5, 'Amalthea');
INSERT INTO public.moon VALUES (18, 'U', 1851, 7, 'Umbriel');
INSERT INTO public.moon VALUES (19, 'S', 1684, 6, 'Tethys');
INSERT INTO public.moon VALUES (20, 'E', NULL, 6, 'Moon');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 0, 1, 'Mercury');
INSERT INTO public.planet VALUES (2, false, 0, 1, 'Venus');
INSERT INTO public.planet VALUES (3, false, 1, 1, 'Earth');
INSERT INTO public.planet VALUES (4, false, 2, 1, 'Mars');
INSERT INTO public.planet VALUES (5, false, 95, 1, 'Jupiter');
INSERT INTO public.planet VALUES (6, false, 146, 1, 'Saturn');
INSERT INTO public.planet VALUES (7, false, 27, 1, 'Uranus');
INSERT INTO public.planet VALUES (8, false, 14, 1, 'Neptune');
INSERT INTO public.planet VALUES (9, true, 0, 1, 'Ceres');
INSERT INTO public.planet VALUES (10, true, 1, 1, 'Orcas');
INSERT INTO public.planet VALUES (11, true, 5, 1, 'Pluto');
INSERT INTO public.planet VALUES (12, true, 1, 1, 'Eris');


--
-- Data for Name: spacestation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacestation VALUES (1, 'ISS', true);
INSERT INTO public.spacestation VALUES (2, 'Tiangen', true);
INSERT INTO public.spacestation VALUES (3, 'MIR', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 0.0, false, 1, 'Sun');
INSERT INTO public.star VALUES (2, 4.0, true, 1, 'Alpha Centari');
INSERT INTO public.star VALUES (3, 8.0, false, 1, 'wolf 359');
INSERT INTO public.star VALUES (4, 11.0, false, 1, 'Ross 128');
INSERT INTO public.star VALUES (5, 74.0, true, 2, '51 And');
INSERT INTO public.star VALUES (6, 99.0, true, 2, '6 Per');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spacestation_spacestation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacestation_spacestation_id_seq', 3, true);


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
-- Name: spacestation spacestation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation
    ADD CONSTRAINT spacestation_name_key UNIQUE (name);


--
-- Name: spacestation spacestation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation
    ADD CONSTRAINT spacestation_pkey PRIMARY KEY (spacestation_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

