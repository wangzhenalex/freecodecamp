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
-- Name: distance_from_earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance_from_earth (
    distance_from_earth_id integer NOT NULL,
    type integer NOT NULL,
    fk_id integer NOT NULL,
    name character varying(64)
);


ALTER TABLE public.distance_from_earth OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_from_earth_distance_from_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_from_earth_distance_from_earth_id_seq OWNER TO freecodecamp;

--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_from_earth_distance_from_earth_id_seq OWNED BY public.distance_from_earth.distance_from_earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(64) NOT NULL,
    age integer NOT NULL,
    weight_in_ton integer NOT NULL,
    remark text
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
    name character varying(64) NOT NULL,
    age integer NOT NULL,
    weight_in_ton integer NOT NULL,
    star_id integer NOT NULL,
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
    name character varying(64) NOT NULL,
    age integer NOT NULL,
    weight_in_ton integer NOT NULL,
    star_id integer NOT NULL,
    sold boolean
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
    name character varying(64) NOT NULL,
    age integer NOT NULL,
    weight_in_ton integer NOT NULL,
    sals_price numeric(10,2) NOT NULL,
    remark text NOT NULL,
    sold boolean NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: distance_from_earth distance_from_earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth ALTER COLUMN distance_from_earth_id SET DEFAULT nextval('public.distance_from_earth_distance_from_earth_id_seq'::regclass);


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
-- Data for Name: distance_from_earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance_from_earth VALUES (1, 1, 4, NULL);
INSERT INTO public.distance_from_earth VALUES (2, 2, 4, NULL);
INSERT INTO public.distance_from_earth VALUES (3, 3, 10, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1005, 1000, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 1008, 1000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 1008, 1000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 1004, 1000, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 1001, 1000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 1009, 1000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon Alpha', 1365, 2120, 1, 1);
INSERT INTO public.moon VALUES (2, 'Moon Beta', 2277, 1653, 2, 1);
INSERT INTO public.moon VALUES (3, 'Moon Gamma', 2774, 1926, 3, 1);
INSERT INTO public.moon VALUES (4, 'Moon Delta', 2373, 1736, 4, 1);
INSERT INTO public.moon VALUES (5, 'Moon Epsilon', 1850, 1892, 5, 1);
INSERT INTO public.moon VALUES (6, 'Moon Zeta', 1628, 1189, 6, 1);
INSERT INTO public.moon VALUES (7, 'Moon Eta', 1987, 1237, 1, 1);
INSERT INTO public.moon VALUES (8, 'Moon Theta', 1881, 1937, 2, 1);
INSERT INTO public.moon VALUES (9, 'Moon Iota', 1037, 1391, 3, 1);
INSERT INTO public.moon VALUES (10, 'Moon Kappa', 2743, 1835, 4, 1);
INSERT INTO public.moon VALUES (11, 'Moon Lambda', 1174, 2348, 5, 1);
INSERT INTO public.moon VALUES (12, 'Moon Mu', 1274, 1857, 6, 1);
INSERT INTO public.moon VALUES (13, 'Moon Nu', 1711, 1151, 1, 1);
INSERT INTO public.moon VALUES (14, 'Moon Xi', 2412, 1317, 2, 1);
INSERT INTO public.moon VALUES (15, 'Moon Omicron', 2606, 1510, 3, 1);
INSERT INTO public.moon VALUES (16, 'Moon Pi', 2895, 1093, 4, 1);
INSERT INTO public.moon VALUES (17, 'Moon Rho', 2882, 1847, 5, 1);
INSERT INTO public.moon VALUES (18, 'Moon Sigma', 1285, 1409, 6, 1);
INSERT INTO public.moon VALUES (19, 'Moon Tau', 2900, 2874, 1, 1);
INSERT INTO public.moon VALUES (20, 'Moon Upsilon', 1467, 2027, 2, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet Alpha', 2491, 2018, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Planet Beta', 2992, 2217, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Planet Gamma', 1035, 2924, 3, NULL);
INSERT INTO public.planet VALUES (4, 'Planet Delta', 1738, 1707, 4, NULL);
INSERT INTO public.planet VALUES (5, 'Planet Epsilon', 2823, 1599, 5, NULL);
INSERT INTO public.planet VALUES (6, 'Planet Zeta', 2432, 1098, 6, NULL);
INSERT INTO public.planet VALUES (7, 'Planet Eta', 2328, 1644, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Planet Theta', 2151, 2287, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Planet Iota', 2520, 1678, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Planet Kappa', 2217, 1318, 4, NULL);
INSERT INTO public.planet VALUES (11, 'Planet Lambda', 1999, 2873, 5, NULL);
INSERT INTO public.planet VALUES (12, 'Planet Mu', 2117, 2145, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 1003, 1000, 1000.00, 'Nearest star system to the Solar System.', false, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 6, 1000, 1000.00, 'A red supergiant star in the constellation Orion.', false, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 3, 1000, 1000.00, 'The brightest star in the night sky.', false, 3);
INSERT INTO public.star VALUES (4, 'Vega', 4, 1000, 1000.00, 'One of the brightest stars in the northern sky.', false, 4);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 6, 1000, 1000.00, 'Closest known star to the Sun.', false, 5);
INSERT INTO public.star VALUES (6, 'Canopus', 8, 1000, 1000.00, 'Second brightest star in the night sky.', false, 6);


--
-- Name: distance_from_earth_distance_from_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_from_earth_distance_from_earth_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: distance_from_earth distance_from_earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT distance_from_earth_pkey PRIMARY KEY (distance_from_earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: distance_from_earth unique_distance_from_earth_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance_from_earth
    ADD CONSTRAINT unique_distance_from_earth_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

