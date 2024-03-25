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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: world_cup; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.world_cup (
    match_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner character varying(50) NOT NULL,
    opponent character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.world_cup OWNER TO freecodecamp;

--
-- Name: world_cup_match_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.world_cup_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.world_cup_match_id_seq OWNER TO freecodecamp;

--
-- Name: world_cup_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.world_cup_match_id_seq OWNED BY public.world_cup.match_id;


--
-- Name:  worldcup; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public." worldcup" (
);


ALTER TABLE public." worldcup" OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Name: world_cup match_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world_cup ALTER COLUMN match_id SET DEFAULT nextval('public.world_cup_match_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 2018, 'Final', 50, 51, 4, 2);
INSERT INTO public.games VALUES (66, 2018, 'Third Place', 52, 53, 2, 0);
INSERT INTO public.games VALUES (67, 2018, 'Semi-Final', 51, 53, 2, 1);
INSERT INTO public.games VALUES (68, 2018, 'Semi-Final', 50, 52, 1, 0);
INSERT INTO public.games VALUES (69, 2018, 'Quarter-Final', 51, 54, 3, 2);
INSERT INTO public.games VALUES (70, 2018, 'Quarter-Final', 53, 55, 2, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 52, 56, 2, 1);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 50, 57, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 53, 58, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 55, 59, 1, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 52, 60, 3, 2);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 56, 61, 2, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 51, 62, 2, 1);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 54, 63, 2, 1);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 57, 64, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 50, 65, 4, 3);
INSERT INTO public.games VALUES (81, 2014, 'Final', 66, 65, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Third Place', 67, 56, 3, 0);
INSERT INTO public.games VALUES (83, 2014, 'Semi-Final', 65, 67, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Semi-Final', 66, 56, 7, 1);
INSERT INTO public.games VALUES (85, 2014, 'Quarter-Final', 67, 68, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Quarter-Final', 65, 52, 1, 0);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 56, 58, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 66, 50, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 56, 69, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 58, 57, 2, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 50, 70, 2, 0);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 66, 71, 2, 1);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 67, 61, 2, 1);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 68, 72, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 65, 59, 1, 0);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 52, 73, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (50, 'France');
INSERT INTO public.teams VALUES (51, 'Croatia');
INSERT INTO public.teams VALUES (52, 'Belgium');
INSERT INTO public.teams VALUES (53, 'England');
INSERT INTO public.teams VALUES (54, 'Russia');
INSERT INTO public.teams VALUES (55, 'Sweden');
INSERT INTO public.teams VALUES (56, 'Brazil');
INSERT INTO public.teams VALUES (57, 'Uruguay');
INSERT INTO public.teams VALUES (58, 'Colombia');
INSERT INTO public.teams VALUES (59, 'Switzerland');
INSERT INTO public.teams VALUES (60, 'Japan');
INSERT INTO public.teams VALUES (61, 'Mexico');
INSERT INTO public.teams VALUES (62, 'Denmark');
INSERT INTO public.teams VALUES (63, 'Spain');
INSERT INTO public.teams VALUES (64, 'Portugal');
INSERT INTO public.teams VALUES (65, 'Argentina');
INSERT INTO public.teams VALUES (66, 'Germany');
INSERT INTO public.teams VALUES (67, 'Netherlands');
INSERT INTO public.teams VALUES (68, 'Costa Rica');
INSERT INTO public.teams VALUES (69, 'Chile');
INSERT INTO public.teams VALUES (70, 'Nigeria');
INSERT INTO public.teams VALUES (71, 'Algeria');
INSERT INTO public.teams VALUES (72, 'Greece');
INSERT INTO public.teams VALUES (73, 'United States');


--
-- Data for Name: world_cup; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.world_cup VALUES (1, 2018, 'Final', 'France', 'Croatia', 4, 2);
INSERT INTO public.world_cup VALUES (2, 2018, 'Third Place', 'Belgium', 'England', 2, 0);
INSERT INTO public.world_cup VALUES (3, 2018, 'Semi-Final', 'Croatia', 'England', 2, 1);
INSERT INTO public.world_cup VALUES (4, 2018, 'Semi-Final', 'France', 'Belgium', 1, 0);
INSERT INTO public.world_cup VALUES (5, 2018, 'Quarter-Final', 'Croatia', 'Russia', 3, 2);
INSERT INTO public.world_cup VALUES (6, 2018, 'Quarter-Final', 'England', 'Sweden', 2, 0);
INSERT INTO public.world_cup VALUES (7, 2018, 'Quarter-Final', 'Belgium', 'Brazil', 2, 1);
INSERT INTO public.world_cup VALUES (8, 2018, 'Quarter-Final', 'France', 'Uruguay', 2, 0);
INSERT INTO public.world_cup VALUES (9, 2018, 'Eighth-Final', 'England', 'Colombia', 2, 1);
INSERT INTO public.world_cup VALUES (10, 2018, 'Eighth-Final', 'Sweden', 'Switzerland', 1, 0);
INSERT INTO public.world_cup VALUES (11, 2018, 'Eighth-Final', 'Belgium', 'Japan', 3, 2);
INSERT INTO public.world_cup VALUES (12, 2018, 'Eighth-Final', 'Brazil', 'Mexico', 2, 0);
INSERT INTO public.world_cup VALUES (13, 2018, 'Eighth-Final', 'Croatia', 'Denmark', 2, 1);
INSERT INTO public.world_cup VALUES (14, 2018, 'Eighth-Final', 'Russia', 'Spain', 2, 1);
INSERT INTO public.world_cup VALUES (15, 2018, 'Eighth-Final', 'Uruguay', 'Portugal', 2, 1);
INSERT INTO public.world_cup VALUES (16, 2018, 'Eighth-Final', 'France', 'Argentina', 4, 3);
INSERT INTO public.world_cup VALUES (17, 2014, 'Final', 'Germany', 'Argentina', 1, 0);
INSERT INTO public.world_cup VALUES (18, 2014, 'Third Place', 'Netherlands', 'Brazil', 3, 0);
INSERT INTO public.world_cup VALUES (19, 2014, 'Semi-Final', 'Argentina', 'Netherlands', 1, 0);
INSERT INTO public.world_cup VALUES (20, 2014, 'Semi-Final', 'Germany', 'Brazil', 7, 1);
INSERT INTO public.world_cup VALUES (21, 2014, 'Quarter-Final', 'Netherlands', 'Costa Rica', 1, 0);
INSERT INTO public.world_cup VALUES (22, 2014, 'Quarter-Final', 'Argentina', 'Belgium', 1, 0);
INSERT INTO public.world_cup VALUES (23, 2014, 'Quarter-Final', 'Brazil', 'Colombia', 2, 1);
INSERT INTO public.world_cup VALUES (24, 2014, 'Quarter-Final', 'Germany', 'France', 1, 0);
INSERT INTO public.world_cup VALUES (25, 2014, 'Eighth-Final', 'Brazil', 'Chile', 2, 1);
INSERT INTO public.world_cup VALUES (26, 2014, 'Eighth-Final', 'Colombia', 'Uruguay', 2, 0);
INSERT INTO public.world_cup VALUES (27, 2014, 'Eighth-Final', 'France', 'Nigeria', 2, 0);
INSERT INTO public.world_cup VALUES (28, 2014, 'Eighth-Final', 'Germany', 'Algeria', 2, 1);
INSERT INTO public.world_cup VALUES (29, 2014, 'Eighth-Final', 'Netherlands', 'Mexico', 2, 1);
INSERT INTO public.world_cup VALUES (30, 2014, 'Eighth-Final', 'Costa Rica', 'Greece', 2, 1);
INSERT INTO public.world_cup VALUES (31, 2014, 'Eighth-Final', 'Argentina', 'Switzerland', 1, 0);
INSERT INTO public.world_cup VALUES (32, 2014, 'Eighth-Final', 'Belgium', 'United States', 2, 1);


--
-- Data for Name:  worldcup; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 96, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 73, true);


--
-- Name: world_cup_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.world_cup_match_id_seq', 32, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: world_cup world_cup_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.world_cup
    ADD CONSTRAINT world_cup_pkey PRIMARY KEY (match_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

