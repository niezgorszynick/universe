--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: dwarf; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf (
    dwarf_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_pluto boolean NOT NULL
);


ALTER TABLE public.dwarf OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_dwarf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_dwarf_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_dwarf_id_seq OWNED BY public.dwarf.dwarf_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_habitable boolean,
    distance_from_sun integer NOT NULL,
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_from_mythology boolean NOT NULL,
    alt_name character varying(30),
    has_starlight boolean,
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
    order_from_sun integer,
    mass numeric(8,4),
    has_life boolean NOT NULL,
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
    color character varying(15),
    is_blackstar boolean NOT NULL,
    description text,
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
-- Name: dwarf dwarf_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf ALTER COLUMN dwarf_id SET DEFAULT nextval('public.dwarf_dwarf_id_seq'::regclass);


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
-- Data for Name: dwarf; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf VALUES (1, 'Pluto', true);
INSERT INTO public.dwarf VALUES (2, 'Eris', false);
INSERT INTO public.dwarf VALUES (3, 'Haumea', false);
INSERT INTO public.dwarf VALUES (4, 'Makemake', false);
INSERT INTO public.dwarf VALUES (5, 'Ceres', false);
INSERT INTO public.dwarf VALUES (6, 'Gonggong', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 0, 'Our home galaxy containing the Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 2537000, 'Nearest spiral galaxy to the Milky Way and expected to collide with it in the future.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 3000000, 'The third largest galaxy in the Local Group of galaxies.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', false, 23000000, 'A classic spiral galaxy located in the constellation Canes Venatici.');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', false, 29000000, 'A lenticular galaxy in the constellation Virgo, known for its bright nucleus and large central bulge.');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', false, 21000000, 'A face-on spiral galaxy located in the constellation Ursa Major.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', true, 'Jupiter II', true, 1);
INSERT INTO public.moon VALUES (2, 'Titan', true, 'Saturn VI', false, 1);
INSERT INTO public.moon VALUES (3, 'Ganymede', true, 'Jupiter III', true, 2);
INSERT INTO public.moon VALUES (4, 'Callisto', true, 'Jupiter IV', false, 2);
INSERT INTO public.moon VALUES (5, 'Io', true, 'Jupiter I', true, 3);
INSERT INTO public.moon VALUES (6, 'Mimas', false, 'Saturn I', false, 3);
INSERT INTO public.moon VALUES (7, 'Enceladus', true, 'Saturn II', true, 3);
INSERT INTO public.moon VALUES (8, 'Tethys', true, 'Saturn III', false, 3);
INSERT INTO public.moon VALUES (9, 'Dione', true, 'Saturn IV', true, 3);
INSERT INTO public.moon VALUES (10, 'Rhea', true, 'Saturn V', false, 3);
INSERT INTO public.moon VALUES (11, 'Iapetus', true, 'Saturn VIII', true, 3);
INSERT INTO public.moon VALUES (12, 'Phoebe', true, 'Saturn IX', false, 3);
INSERT INTO public.moon VALUES (13, 'Miranda', true, 'Uranus V', true, 3);
INSERT INTO public.moon VALUES (14, 'Ariel', true, 'Uranus I', false, 3);
INSERT INTO public.moon VALUES (15, 'Umbriel', true, 'Uranus II', true, 3);
INSERT INTO public.moon VALUES (16, 'Titania', true, 'Uranus III', false, 3);
INSERT INTO public.moon VALUES (17, 'Oberon', true, 'Uranus IV', true, 3);
INSERT INTO public.moon VALUES (18, 'Triton', true, 'Neptune I', false, 3);
INSERT INTO public.moon VALUES (19, 'Charon', true, 'Pluto I', true, 3);
INSERT INTO public.moon VALUES (20, 'Nereid', true, 'Neptune II', false, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0.3301, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 4.8673, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 5.9720, true, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 6.3900, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 1.8980, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 5.6830, false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 8.6810, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 1.0240, false, 3);
INSERT INTO public.planet VALUES (9, '51 Pegasi b', NULL, NULL, false, 3);
INSERT INTO public.planet VALUES (10, 'Poltergeist', NULL, NULL, false, 3);
INSERT INTO public.planet VALUES (11, 'Phobetor', NULL, NULL, false, 3);
INSERT INTO public.planet VALUES (12, 'WASP-76 b', NULL, NULL, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow', false, 'The star at the center of the Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red', false, 'A red supergiant star in the constellation Orion.', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'White', false, 'The brightest star in the night sky, located in the constellation Canis Major.', 2);
INSERT INTO public.star VALUES (4, 'Vega', 'Blue', false, 'A bright star in the constellation Lyra, part of the Summer Triangle.', 2);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue-White', false, 'The brightest star in the constellation Orion.', 3);
INSERT INTO public.star VALUES (6, 'Blackstar', 'Black', true, 'A theoretical type of star with no light emission.', 3);


--
-- Name: dwarf_dwarf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_dwarf_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: dwarf dwarf_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_name_key UNIQUE (name);


--
-- Name: dwarf dwarf_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf
    ADD CONSTRAINT dwarf_pkey PRIMARY KEY (dwarf_id);


--
-- Name: galaxy galaxy_distance_from_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_sun_key UNIQUE (distance_from_sun);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_alt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_alt_name_key UNIQUE (alt_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_order_from_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_order_from_sun_key UNIQUE (order_from_sun);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

