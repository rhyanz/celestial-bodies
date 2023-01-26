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
    name character varying(50) NOT NULL,
    distance_from_earth numeric(8,2),
    has_life character varying(50),
    description character varying(50),
    type name
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: habitat; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.habitat (
    habitat_id integer NOT NULL,
    name character varying(50) NOT NULL,
    surface_temp integer NOT NULL,
    plants boolean,
    animals boolean,
    type name,
    water text
);


ALTER TABLE public.habitat OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    distance_from_planet integer NOT NULL,
    surface_temp integer,
    oxygen_level integer,
    type name
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    distance_form_earth integer NOT NULL,
    has_life boolean NOT NULL,
    surface_temp integer,
    type name
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    distance_from_earth integer NOT NULL,
    description character varying(50),
    age_of_stars integer NOT NULL,
    type name
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 24800.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, 'Dwarf Galxy', 34550.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Cygnus', 44550.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'Virgo', 57550.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way', 88880.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 'Magellani', 97680.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (7, 'Magellani7', 97680.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (78, 'Magellani8', 9880.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (9, 'Magellani9', 9880.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (10, 'Magellani10', 80.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (11, 'Magellani11', 44480.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (12, 'Magellani12', 44480.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (13, 'Magellani13', 55580.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (14, 'Magellani14', 55580.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (15, 'Magellani15', 77780.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (16, 'Magellani16', 780.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (17, 'Magellani17', 64780.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (18, 'Magellani18', 79980.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (19, 'Magellani19', 19980.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (20, 'Magellani20', 199980.00, 'no', 'galaxy', NULL);
INSERT INTO public.galaxy VALUES (21, 'Magellani21', 199980.00, 'no', 'galaxy', NULL);


--
-- Data for Name: habitat; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.habitat VALUES (1, 'ryan', 78, false, false, 'unknown', 'yes');
INSERT INTO public.habitat VALUES (2, 'lindsay', 85, true, true, 'null', 'yes');
INSERT INTO public.habitat VALUES (3, 'john', 23, false, true, 'freezing', 'yes');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 22, NULL, 22, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 11, NULL, 11, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 33, NULL, 33, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 33, NULL, 33, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 55, NULL, 55, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 66, NULL, 55, NULL);
INSERT INTO public.moon VALUES (78, 'moon8', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', 77, NULL, 77, NULL);
INSERT INTO public.moon VALUES (21, 'moon21', 77, NULL, 77, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'PlanetOne', 23, false, 444, NULL);
INSERT INTO public.planet VALUES (2, 'PlanetTwo', 23, false, 224, NULL);
INSERT INTO public.planet VALUES (3, 'Planet3', 23, false, 224, NULL);
INSERT INTO public.planet VALUES (4, 'Planet4', 43, false, 654, NULL);
INSERT INTO public.planet VALUES (5, 'Planet5', 43, false, 654, NULL);
INSERT INTO public.planet VALUES (6, 'Planet6', 53, false, 999, NULL);
INSERT INTO public.planet VALUES (78, 'Planet8', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (9, 'Planet9', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (10, 'Planet10', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (11, 'Planet11', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (12, 'Planet12', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (13, 'Planet13', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (14, 'Planet14', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (15, 'Planet15', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (16, 'Planet16', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (17, 'Planet17', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (18, 'Planet18', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (19, 'Planet19', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (20, 'Planet20', 99, false, 889, NULL);
INSERT INTO public.planet VALUES (21, 'Planet21', 99, false, 889, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starOne', 4945, 'null', 10, 'null');
INSERT INTO public.star VALUES (2, 'starTwo', 4545, 'null', 30, NULL);
INSERT INTO public.star VALUES (3, 'starThree', 7434, 'null', 20, NULL);
INSERT INTO public.star VALUES (4, 'starFour', 9999, 'null', 90, NULL);
INSERT INTO public.star VALUES (5, 'starFive', 889, 'null', 100, NULL);
INSERT INTO public.star VALUES (6, 'starSix', 9539, 'null', 70, NULL);
INSERT INTO public.star VALUES (78, 'star78', 9539, 'null', 70, NULL);
INSERT INTO public.star VALUES (9, 'star9', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (10, 'star10', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (11, 'star11', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (12, 'star12', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (13, 'star13', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (14, 'star14', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (15, 'star15', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (16, 'star16', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (17, 'star17', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (18, 'star18', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (19, 'star19', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (20, 'star20', 99, 'null', 70, NULL);
INSERT INTO public.star VALUES (21, 'star21', 99, 'null', 70, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_key UNIQUE (type);


--
-- Name: habitat habitat_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_pkey PRIMARY KEY (habitat_id);


--
-- Name: habitat habitat_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.habitat
    ADD CONSTRAINT habitat_type_key UNIQUE (type);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_type_key UNIQUE (type);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_type_key UNIQUE (type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_type_key UNIQUE (type);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

