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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    games_played integer DEFAULT 1,
    best_game integer,
    game_id integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 70, 162, 177);
INSERT INTO public.games VALUES (1, 844, 163, 177);
INSERT INTO public.games VALUES (1, 31, 164, 178);
INSERT INTO public.games VALUES (1, 349, 165, 178);
INSERT INTO public.games VALUES (1, 480, 166, 177);
INSERT INTO public.games VALUES (1, 326, 167, 177);
INSERT INTO public.games VALUES (1, 376, 168, 182);
INSERT INTO public.games VALUES (1, 854, 169, 182);
INSERT INTO public.games VALUES (1, 296, 170, 183);
INSERT INTO public.games VALUES (1, 739, 171, 183);
INSERT INTO public.games VALUES (1, 26, 172, 182);
INSERT INTO public.games VALUES (1, 878, 173, 182);
INSERT INTO public.games VALUES (1, 855, 174, 184);
INSERT INTO public.games VALUES (1, 366, 175, 184);
INSERT INTO public.games VALUES (1, 620, 176, 185);
INSERT INTO public.games VALUES (1, 108, 177, 185);
INSERT INTO public.games VALUES (1, 8, 178, 184);
INSERT INTO public.games VALUES (1, 96, 179, 184);
INSERT INTO public.games VALUES (1, 912, 180, 186);
INSERT INTO public.games VALUES (1, 16, 181, 186);
INSERT INTO public.games VALUES (1, 420, 182, 187);
INSERT INTO public.games VALUES (1, 422, 183, 187);
INSERT INTO public.games VALUES (1, 592, 184, 186);
INSERT INTO public.games VALUES (1, 443, 185, 186);
INSERT INTO public.games VALUES (1, 63, 186, 188);
INSERT INTO public.games VALUES (1, 431, 187, 188);
INSERT INTO public.games VALUES (1, 505, 188, 189);
INSERT INTO public.games VALUES (1, 51, 189, 189);
INSERT INTO public.games VALUES (1, 513, 190, 188);
INSERT INTO public.games VALUES (1, 315, 191, 188);
INSERT INTO public.games VALUES (1, 13, 192, 190);
INSERT INTO public.games VALUES (1, 10, 193, 190);
INSERT INTO public.games VALUES (1, 588, 194, 191);
INSERT INTO public.games VALUES (1, 452, 195, 191);
INSERT INTO public.games VALUES (1, 170, 196, 192);
INSERT INTO public.games VALUES (1, 633, 197, 192);
INSERT INTO public.games VALUES (1, 483, 198, 191);
INSERT INTO public.games VALUES (1, 268, 199, 191);
INSERT INTO public.games VALUES (1, 131, 200, 193);
INSERT INTO public.games VALUES (1, 998, 201, 193);
INSERT INTO public.games VALUES (1, 343, 202, 194);
INSERT INTO public.games VALUES (1, 1000, 203, 194);
INSERT INTO public.games VALUES (1, 888, 204, 193);
INSERT INTO public.games VALUES (1, 406, 205, 193);
INSERT INTO public.games VALUES (1, 586, 206, 195);
INSERT INTO public.games VALUES (1, 982, 207, 195);
INSERT INTO public.games VALUES (1, 462, 208, 196);
INSERT INTO public.games VALUES (1, 84, 209, 196);
INSERT INTO public.games VALUES (1, 511, 210, 195);
INSERT INTO public.games VALUES (1, 615, 211, 195);
INSERT INTO public.games VALUES (1, 589, 212, 197);
INSERT INTO public.games VALUES (1, 800, 213, 197);
INSERT INTO public.games VALUES (1, 442, 214, 198);
INSERT INTO public.games VALUES (1, 188, 215, 198);
INSERT INTO public.games VALUES (1, 709, 216, 197);
INSERT INTO public.games VALUES (1, 185, 217, 197);
INSERT INTO public.games VALUES (1, 84, 218, 199);
INSERT INTO public.games VALUES (1, 934, 219, 199);
INSERT INTO public.games VALUES (1, 516, 220, 200);
INSERT INTO public.games VALUES (1, 157, 221, 200);
INSERT INTO public.games VALUES (1, 686, 222, 199);
INSERT INTO public.games VALUES (1, 100, 223, 199);
INSERT INTO public.games VALUES (1, 918, 224, 201);
INSERT INTO public.games VALUES (1, 476, 225, 201);
INSERT INTO public.games VALUES (1, 357, 226, 202);
INSERT INTO public.games VALUES (1, 683, 227, 202);
INSERT INTO public.games VALUES (1, 796, 228, 201);
INSERT INTO public.games VALUES (1, 450, 229, 201);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (177, 'user_1717005602818');
INSERT INTO public.users VALUES (178, 'user_1717005602817');
INSERT INTO public.users VALUES (179, 'ruska');
INSERT INTO public.users VALUES (180, 'gio');
INSERT INTO public.users VALUES (181, 'rusk');
INSERT INTO public.users VALUES (182, 'user_1717005882679');
INSERT INTO public.users VALUES (183, 'user_1717005882678');
INSERT INTO public.users VALUES (184, 'user_1717005919226');
INSERT INTO public.users VALUES (185, 'user_1717005919225');
INSERT INTO public.users VALUES (186, 'user_1717005959946');
INSERT INTO public.users VALUES (187, 'user_1717005959945');
INSERT INTO public.users VALUES (188, 'user_1717005975758');
INSERT INTO public.users VALUES (189, 'user_1717005975757');
INSERT INTO public.users VALUES (190, 'deme');
INSERT INTO public.users VALUES (191, 'user_1717006085534');
INSERT INTO public.users VALUES (192, 'user_1717006085533');
INSERT INTO public.users VALUES (193, 'user_1717006185993');
INSERT INTO public.users VALUES (194, 'user_1717006185992');
INSERT INTO public.users VALUES (195, 'user_1717006202549');
INSERT INTO public.users VALUES (196, 'user_1717006202548');
INSERT INTO public.users VALUES (197, 'user_1717006283262');
INSERT INTO public.users VALUES (198, 'user_1717006283261');
INSERT INTO public.users VALUES (199, 'user_1717006298647');
INSERT INTO public.users VALUES (200, 'user_1717006298646');
INSERT INTO public.users VALUES (201, 'user_1717006311975');
INSERT INTO public.users VALUES (202, 'user_1717006311974');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 229, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 202, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

