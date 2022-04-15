--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-04-15 17:40:11

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

--
-- TOC entry 3310 (class 1262 OID 24576)
-- Name: weather_service; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE weather_service WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE weather_service OWNER TO postgres;

\connect weather_service

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
-- TOC entry 209 (class 1259 OID 24577)
-- Name: weather; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weather (
    id uuid NOT NULL,
    api_label text,
    params text,
    api_key text,
    api_endpoint text,
    "sourceKey" text,
    "keyMap" text
);


ALTER TABLE public.weather OWNER TO postgres;

--
-- TOC entry 3304 (class 0 OID 24577)
-- Dependencies: 209
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.weather VALUES ('8631317c-bc90-11ec-8422-0242ac120002', 'wApiForecast', 'q', '7beeaecbd6f841c184f152340221304', 'http://api.weatherapi.com/v1/forecast.json', 'forecast.forecastday.0.astro', '{
    "sunrise": "Dawn",
    "sunset": "Dusk",
    "moonrise": "Moonlit",
    "moonset": "Moonsleep",
    "moon_phase": "Orientation",
    "moon_illumination": "Illumination"
}');
INSERT INTO public.weather VALUES ('6e68644b-f913-4ba5-8069-614c4e8da2ac', 'wApiCurrent', 'q', '7beeaecbd6f841c184f152340221304', 'http://api.weatherapi.com/v1/current.json', 'location', '{
    "name": "Town",
    "region": "State",
    "country": "Nation",
    "lat": "Latitude",
    "lon": "Longitude",
    "tz_id": "TimeZone",
    "localtime": "Time"
}');


--
-- TOC entry 3164 (class 2606 OID 24583)
-- Name: weather Weather_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT "Weather_pkey" PRIMARY KEY (id);


-- Completed on 2022-04-15 17:40:12

--
-- PostgreSQL database dump complete
--

