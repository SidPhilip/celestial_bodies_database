
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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    age_in_billion_of_years numeric(3,2),
    distance_from_earth integer NOT NULL,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text NOT NULL,
    constellation character varying(30),
    diameter integer,
    distance_from_earth integer
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
    description text NOT NULL,
    age_in_billion_of_years numeric(3,2),
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
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
    description text NOT NULL,
    diameter integer,
    planet_types character varying(30),
    age_in_billion_of_years numeric(3,2),
    distance_from_sun integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(40) NOT NULL,
    description text NOT NULL,
    age_in_billion_of_years numeric(2,1),
    diameter integer,
    surface_temperature integer,
    sun_type character varying(30),
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_dwarf_planet_id_seq'::regc
lass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'Pluto', 'A dwarf planet located in the Kuiper belt.', 4.50, 59060, true, false);
INSERT INTO public.dwarf_planet VALUES (2, 'Eris', 'A dwarf planet in the scattered disc.', 4.50, 1010000, true, false);
INSERT INTO public.dwarf_planet VALUES (3, 'Makemake', 'A dwarf planet in the Kuiper belt.', 4.50, 690000, true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The appearance from Earth of the galaxy—a band of light ', 'Sagittarius', 100000, 
0);
INSERT INTO public.galaxy VALUES (2, 'Small Magellanic Cloud', 'Named after Ferdinand Magellan', 'Tucana', 14000, 15800);
INSERT INTO public.galaxy VALUES (3, 'Andromida', 'Andromeda, which is shortened from "Andromeda Galaxy", gets its name from the area
 of the sky in which it appears, the constellation of Andromeda. ', 'Andromida', 220000, 2500000);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 'Appears similar in shape to a cigar. ', 'Ursa Major', 37000, 11500000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Similar in appearance to a pinwheel (toy). ', 'Ursa Major', 170000, 2087000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Similar in appearance to a sombrero.', 'Virgo', 50000, 29350000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'Luna', 'The Moon is Earth only natural satellite.', 4.53, 384400, true, false, 5);
INSERT INTO public.moon VALUES (42, 'Phobos', 'One of the two moons of Mars.', 4.50, 9377, true, false, 6);
INSERT INTO public.moon VALUES (43, 'Deimos', 'The smaller of the two moons of Mars.', 4.50, 23460, true, false, 6);
INSERT INTO public.moon VALUES (44, 'Ganymede', 'The largest moon and moon of Jupiter.', 4.50, 1070400, true, false, 7);
INSERT INTO public.moon VALUES (45, 'Callisto', 'The second-largest moon of Jupiter.', 4.50, 1882700, true, false, 7);
INSERT INTO public.moon VALUES (46, 'Io', 'The innermost and third-largest moon of Jupiter.', 4.50, 421800, true, false, 7);
INSERT INTO public.moon VALUES (47, 'Europa', 'The smallest of the four Galilean moons of Jupiter.', 4.50, 670900, true, false, 7);
INSERT INTO public.moon VALUES (48, 'Titan', 'The largest moon of Saturn.', 4.50, 1221870, true, false, 8);
INSERT INTO public.moon VALUES (49, 'Rhea', 'The second-largest moon of Saturn.', 4.50, 527070, true, false, 8);
INSERT INTO public.moon VALUES (50, 'Iapetus', 'The third-largest moon of Saturn.', 4.50, 3560800, true, false, 8);
INSERT INTO public.moon VALUES (51, 'Triton', 'The largest moon of Neptune.', 4.50, 354759, true, false, 2);
INSERT INTO public.moon VALUES (52, 'Charon', 'The largest moon of Pluto.', 4.50, 19591, true, false, 2);
INSERT INTO public.moon VALUES (53, 'Eris Moon 1', 'One of the moons of Eris 1.', 4.50, 17890, true, false, 2);
INSERT INTO public.moon VALUES (54, 'Eris Moon 2', 'One of the moons of Eris 2.', 4.50, 21150, true, false, 2);
INSERT INTO public.moon VALUES (55, 'Eris Moon 3', 'One of the moons of Eris 3.', 4.50, 24110, true, false, 2);
INSERT INTO public.moon VALUES (56, 'Makemake Moon 1', 'One of the moons of Makemake 1.', 4.50, 12000, true, false, 3);
INSERT INTO public.moon VALUES (57, 'Makemake Moon 2', 'One of the moons of Makemake 2.', 4.50, 15000, true, false, 3);
INSERT INTO public.moon VALUES (58, 'Makemake Moon 3', 'One of the moons of Makemake 3.', 4.50, 18000, true, false, 2);
INSERT INTO public.moon VALUES (59, 'Haumea Moon 1', 'One of the moons of Haumea.', 4.50, 18000, true, false, 2);
INSERT INTO public.moon VALUES (60, 'Haumea Moon 2', 'One of the moons of Haumea 2.', 4.50, 21000, true, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in our solar system.', 4879, 'Terrestrial', 4.50, 579000, false,
 true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'A planet known for its dense atmosphere.', 12104, 'Terrestrial', 4.50, 1082000, false,
 true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet.', 12742, 'Terrestrial', 4.50, 1496000, true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'A rocky planet with a thin atmosphere.', 6779, 'Terrestrial', 4.60, 2279000, false, tru
e, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in our solar system.', 139820, 'Gas Giant', 4.50, 7785000, false,
 false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A planet famous for its rings.', 116460, 'Gas Giant', 4.50, 14340000, false, false, 2
);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant planet.', 50724, 'Ice Giant', 4.50, 28710000, false, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The farthest planet from the Sun.', 49244, 'Ice Giant', 4.50, 44950000, false, false
, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet located in the Kuiper belt.', 2370, 'Dwarf', 4.50, 59060000, false, tru
e, 4);
INSERT INTO public.planet VALUES (10, 'Eris', 'A dwarf planet in the scattered disc.', 2326, 'Dwarf', 4.50, 101000000, false, true, 4
);
INSERT INTO public.planet VALUES (11, 'Makemake', 'Another dwarf planet in the Kuiper belt.', 1430, 'Dwarf', 4.50, 69000000, false, t
rue, 4);
INSERT INTO public.planet VALUES (12, 'Haumea', 'A dwarf planet in the Kuiper belt.', 1960, 'Dwarf', 4.50, 64800000, false, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of our solar system.', 4.6, 1392000, 5778, 'G-type main-sequence st
ar', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky.', 1.2, 19680000, 9940, 'A-type main-sequence star'
, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'A triple star system closest to the Sun.', 6.4, 23160000, 5790, 'Multiple star 
system', 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'A red supergiant star in the constellation Orion.', 8.6, 1180000000, 3500, 'M-type 
supergiant star', 2);
INSERT INTO public.star VALUES (5, 'Antares', 'A red supergiant star in the constellation Scorpius.', 1.4, 883000000, 3570, 'M-type s
upergiant star', 2);
INSERT INTO public.star VALUES (6, 'Vega', 'The brightest star in the constellation Lyra.', 4.6, 20960000, 9602, 'A-type main-sequenc
e star', 3);


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


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
