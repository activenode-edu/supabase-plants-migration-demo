--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: plants; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--

INSERT INTO "public"."plants" ("id", "name", "room") VALUES
	(1, 'Blue Calathea', 'Hallway'),
	(2, 'Pink Cactus', 'Office');


--
-- Data for Name: watering_history; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--

INSERT INTO "public"."watering_history" ("id", "created_at", "plant") VALUES
	(1, '2023-10-10 10:00:00+00', 1),
	(2, '2023-09-20 08:00:00+00', 2);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types") VALUES
	('test', 'test', NULL, '2023-09-10 10:52:41.98625+00', '2023-09-10 10:52:41.98625+00', false, false, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version") VALUES
	('ede5ac88-0fbc-44e1-8ebb-c31b922ae375', 'test', 'P-Packt-2022.png', NULL, '2023-09-10 11:21:56.966232+00', '2023-09-10 11:21:56.966232+00', '2023-09-10 11:21:56.966232+00', '{"eTag": "\"5c275606abc993d3fbadb0ebb2b5bec8\"", "size": 7397, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2023-09-10T11:21:56.959Z", "contentLength": 7397, "httpStatusCode": 200}', '7ea2600b-bc45-491a-b177-423412c20b06'),
	('7fb2587d-fe45-4290-a24f-102653ad0e1a', 'test', 'edPXL_20230526_192259888.PORTRAIT.jpeg', NULL, '2023-09-10 11:56:31.20021+00', '2023-09-10 11:56:31.20021+00', '2023-09-10 11:56:31.20021+00', '{"eTag": "\"9bfa1bf80320d07938ff28abd82115d0\"", "size": 4541477, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-09-10T11:56:30.882Z", "contentLength": 4541477, "httpStatusCode": 200}', 'cb4d0d7d-c324-4266-8c8b-811897d1f200'),
	('a1057b59-3cc5-410a-a919-9c17e4ea2c3a', 'test', 'keks.png/P-Packt-2022 (1).png', NULL, '2023-09-20 13:20:17.227034+00', '2023-09-20 13:20:17.227034+00', '2023-09-20 13:20:17.227034+00', '{"eTag": "\"5c275606abc993d3fbadb0ebb2b5bec8\"", "size": 7397, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2023-09-20T13:20:17.218Z", "contentLength": 7397, "httpStatusCode": 200}', '0838e0da-e63e-4ddf-8a83-e6363d6a69d3');


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: plants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supabase_admin
--

SELECT pg_catalog.setval('"public"."plants_id_seq"', 2, true);


--
-- Name: watering_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supabase_admin
--

SELECT pg_catalog.setval('"public"."watering_history_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
