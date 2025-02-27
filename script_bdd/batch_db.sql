toc.dat                                                                                             0000600 0004000 0002000 00000027673 13622405357 0014465 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           '                x            batch-db    10.3    11.2 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                     0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         !           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         "           1262    77939    batch-db    DATABASE     �   CREATE DATABASE "batch-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE "batch-db";
             batch-admin    false         #           0    0    DATABASE "batch-db"    ACL     {   REVOKE ALL ON DATABASE "batch-db" FROM "batch-admin";
GRANT ALL ON DATABASE "batch-db" TO "batch-admin" WITH GRANT OPTION;
                  batch-admin    false    2850         �            1259    77947    batch_job_execution    TABLE     �  CREATE TABLE public.batch_job_execution (
    job_execution_id bigint NOT NULL,
    version bigint,
    job_instance_id bigint NOT NULL,
    create_time timestamp without time zone NOT NULL,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    status character varying(10),
    exit_code character varying(2500),
    exit_message character varying(2500),
    last_updated timestamp without time zone,
    job_configuration_location character varying(2500)
);
 '   DROP TABLE public.batch_job_execution;
       public         batch-admin    false         �            1259    77994    batch_job_execution_context    TABLE     �   CREATE TABLE public.batch_job_execution_context (
    job_execution_id bigint NOT NULL,
    short_context character varying(2500) NOT NULL,
    serialized_context text
);
 /   DROP TABLE public.batch_job_execution_context;
       public         batch-admin    false         �            1259    77960    batch_job_execution_params    TABLE     `  CREATE TABLE public.batch_job_execution_params (
    job_execution_id bigint NOT NULL,
    type_cd character varying(6) NOT NULL,
    key_name character varying(100) NOT NULL,
    string_val character varying(250),
    date_val timestamp without time zone,
    long_val bigint,
    double_val double precision,
    identifying character(1) NOT NULL
);
 .   DROP TABLE public.batch_job_execution_params;
       public         batch-admin    false         �            1259    78009    batch_job_execution_seq    SEQUENCE     �   CREATE SEQUENCE public.batch_job_execution_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.batch_job_execution_seq;
       public       batch-admin    false         �            1259    77940    batch_job_instance    TABLE     �   CREATE TABLE public.batch_job_instance (
    job_instance_id bigint NOT NULL,
    version bigint,
    job_name character varying(100) NOT NULL,
    job_key character varying(32) NOT NULL
);
 &   DROP TABLE public.batch_job_instance;
       public         batch-admin    false         �            1259    78011    batch_job_seq    SEQUENCE     v   CREATE SEQUENCE public.batch_job_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.batch_job_seq;
       public       batch-admin    false         �            1259    77968    batch_step_execution    TABLE     �  CREATE TABLE public.batch_step_execution (
    step_execution_id bigint NOT NULL,
    version bigint NOT NULL,
    step_name character varying(100) NOT NULL,
    job_execution_id bigint NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone,
    status character varying(10),
    commit_count bigint,
    read_count bigint,
    filter_count bigint,
    write_count bigint,
    read_skip_count bigint,
    write_skip_count bigint,
    process_skip_count bigint,
    rollback_count bigint,
    exit_code character varying(2500),
    exit_message character varying(2500),
    last_updated timestamp without time zone
);
 (   DROP TABLE public.batch_step_execution;
       public         batch-admin    false         �            1259    77981    batch_step_execution_context    TABLE     �   CREATE TABLE public.batch_step_execution_context (
    step_execution_id bigint NOT NULL,
    short_context character varying(2500) NOT NULL,
    serialized_context text
);
 0   DROP TABLE public.batch_step_execution_context;
       public         batch-admin    false         �            1259    78007    batch_step_execution_seq    SEQUENCE     �   CREATE SEQUENCE public.batch_step_execution_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.batch_step_execution_seq;
       public       batch-admin    false                   0    77947    batch_job_execution 
   TABLE DATA               �   COPY public.batch_job_execution (job_execution_id, version, job_instance_id, create_time, start_time, end_time, status, exit_code, exit_message, last_updated, job_configuration_location) FROM stdin;
    public       batch-admin    false    197       2837.dat           0    77994    batch_job_execution_context 
   TABLE DATA               j   COPY public.batch_job_execution_context (job_execution_id, short_context, serialized_context) FROM stdin;
    public       batch-admin    false    201       2841.dat           0    77960    batch_job_execution_params 
   TABLE DATA               �   COPY public.batch_job_execution_params (job_execution_id, type_cd, key_name, string_val, date_val, long_val, double_val, identifying) FROM stdin;
    public       batch-admin    false    198       2838.dat           0    77940    batch_job_instance 
   TABLE DATA               Y   COPY public.batch_job_instance (job_instance_id, version, job_name, job_key) FROM stdin;
    public       batch-admin    false    196       2836.dat           0    77968    batch_step_execution 
   TABLE DATA               (  COPY public.batch_step_execution (step_execution_id, version, step_name, job_execution_id, start_time, end_time, status, commit_count, read_count, filter_count, write_count, read_skip_count, write_skip_count, process_skip_count, rollback_count, exit_code, exit_message, last_updated) FROM stdin;
    public       batch-admin    false    199       2839.dat           0    77981    batch_step_execution_context 
   TABLE DATA               l   COPY public.batch_step_execution_context (step_execution_id, short_context, serialized_context) FROM stdin;
    public       batch-admin    false    200       2840.dat $           0    0    batch_job_execution_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.batch_job_execution_seq', 82, true);
            public       batch-admin    false    203         %           0    0    batch_job_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.batch_job_seq', 82, true);
            public       batch-admin    false    204         &           0    0    batch_step_execution_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.batch_step_execution_seq', 72, true);
            public       batch-admin    false    202         �
           2606    78001 <   batch_job_execution_context batch_job_execution_context_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.batch_job_execution_context
    ADD CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id);
 f   ALTER TABLE ONLY public.batch_job_execution_context DROP CONSTRAINT batch_job_execution_context_pkey;
       public         batch-admin    false    201         �
           2606    77954 ,   batch_job_execution batch_job_execution_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.batch_job_execution
    ADD CONSTRAINT batch_job_execution_pkey PRIMARY KEY (job_execution_id);
 V   ALTER TABLE ONLY public.batch_job_execution DROP CONSTRAINT batch_job_execution_pkey;
       public         batch-admin    false    197         �
           2606    77944 *   batch_job_instance batch_job_instance_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.batch_job_instance
    ADD CONSTRAINT batch_job_instance_pkey PRIMARY KEY (job_instance_id);
 T   ALTER TABLE ONLY public.batch_job_instance DROP CONSTRAINT batch_job_instance_pkey;
       public         batch-admin    false    196         �
           2606    77988 >   batch_step_execution_context batch_step_execution_context_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.batch_step_execution_context
    ADD CONSTRAINT batch_step_execution_context_pkey PRIMARY KEY (step_execution_id);
 h   ALTER TABLE ONLY public.batch_step_execution_context DROP CONSTRAINT batch_step_execution_context_pkey;
       public         batch-admin    false    200         �
           2606    77975 .   batch_step_execution batch_step_execution_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.batch_step_execution
    ADD CONSTRAINT batch_step_execution_pkey PRIMARY KEY (step_execution_id);
 X   ALTER TABLE ONLY public.batch_step_execution DROP CONSTRAINT batch_step_execution_pkey;
       public         batch-admin    false    199         �
           2606    77946    batch_job_instance job_inst_un 
   CONSTRAINT     f   ALTER TABLE ONLY public.batch_job_instance
    ADD CONSTRAINT job_inst_un UNIQUE (job_name, job_key);
 H   ALTER TABLE ONLY public.batch_job_instance DROP CONSTRAINT job_inst_un;
       public         batch-admin    false    196    196         �
           2606    78002 +   batch_job_execution_context job_exec_ctx_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job_execution_context
    ADD CONSTRAINT job_exec_ctx_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id);
 U   ALTER TABLE ONLY public.batch_job_execution_context DROP CONSTRAINT job_exec_ctx_fk;
       public       batch-admin    false    2703    197    201         �
           2606    77963 -   batch_job_execution_params job_exec_params_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job_execution_params
    ADD CONSTRAINT job_exec_params_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id);
 W   ALTER TABLE ONLY public.batch_job_execution_params DROP CONSTRAINT job_exec_params_fk;
       public       batch-admin    false    2703    198    197         �
           2606    77976 %   batch_step_execution job_exec_step_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_step_execution
    ADD CONSTRAINT job_exec_step_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id);
 O   ALTER TABLE ONLY public.batch_step_execution DROP CONSTRAINT job_exec_step_fk;
       public       batch-admin    false    197    2703    199         �
           2606    77955 $   batch_job_execution job_inst_exec_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job_execution
    ADD CONSTRAINT job_inst_exec_fk FOREIGN KEY (job_instance_id) REFERENCES public.batch_job_instance(job_instance_id);
 N   ALTER TABLE ONLY public.batch_job_execution DROP CONSTRAINT job_inst_exec_fk;
       public       batch-admin    false    2699    197    196         �
           2606    77989 -   batch_step_execution_context step_exec_ctx_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_step_execution_context
    ADD CONSTRAINT step_exec_ctx_fk FOREIGN KEY (step_execution_id) REFERENCES public.batch_step_execution(step_execution_id);
 W   ALTER TABLE ONLY public.batch_step_execution_context DROP CONSTRAINT step_exec_ctx_fk;
       public       batch-admin    false    199    200    2705                                                                             2837.dat                                                                                            0000600 0004000 0002000 00000021604 13622405357 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        26	2	26	2020-02-12 21:41:39.511	2020-02-12 21:41:39.588	2020-02-12 21:41:39.847	FAILED	FAILED		2020-02-12 21:41:39.847	\N
1	2	1	2020-02-10 10:37:03.874	2020-02-10 10:37:03.93	2020-02-10 10:37:03.969	FAILED	FAILED		2020-02-10 10:37:03.969	\N
2	2	2	2020-02-10 10:47:56.203	2020-02-10 10:47:56.258	2020-02-10 10:47:56.429	COMPLETED	COMPLETED		2020-02-10 10:47:56.429	\N
52	2	52	2020-02-13 19:03:24.367	2020-02-13 19:03:24.37	2020-02-13 19:03:34.276	COMPLETED	COMPLETED		2020-02-13 19:03:34.276	\N
3	2	3	2020-02-10 11:27:39.967	2020-02-10 11:27:40.03	2020-02-10 11:27:40.204	COMPLETED	COMPLETED		2020-02-10 11:27:40.205	\N
27	2	27	2020-02-12 21:55:38.373	2020-02-12 21:55:38.432	2020-02-12 21:55:44.004	COMPLETED	COMPLETED		2020-02-12 21:55:44.004	\N
4	2	4	2020-02-11 10:05:01.704	2020-02-11 10:05:01.78	2020-02-11 10:05:02.03	COMPLETED	COMPLETED		2020-02-11 10:05:02.03	\N
5	2	5	2020-02-12 13:42:31.218	2020-02-12 13:42:31.288	2020-02-12 13:42:38.105	COMPLETED	COMPLETED		2020-02-12 13:42:38.105	\N
6	2	6	2020-02-12 13:50:26.231	2020-02-12 13:50:26.275	2020-02-12 13:50:31.805	COMPLETED	COMPLETED		2020-02-12 13:50:31.806	\N
28	1	28	2020-02-12 21:56:40.629	2020-02-12 21:56:40.679	\N	STARTED	UNKNOWN		2020-02-12 21:56:40.679	\N
7	2	7	2020-02-12 13:51:03.082	2020-02-12 13:51:03.126	2020-02-12 13:51:08.597	COMPLETED	COMPLETED		2020-02-12 13:51:08.597	\N
8	2	8	2020-02-12 16:18:02.613	2020-02-12 16:18:02.69	2020-02-12 16:18:08.798	COMPLETED	COMPLETED		2020-02-12 16:18:08.798	\N
9	2	9	2020-02-12 16:19:52.188	2020-02-12 16:19:52.232	2020-02-12 16:19:57.851	COMPLETED	COMPLETED		2020-02-12 16:19:57.851	\N
43	2	43	2020-02-13 19:01:51.146	2020-02-13 19:01:51.148	2020-02-13 19:01:58.442	FAILED	FAILED		2020-02-13 19:01:58.442	\N
10	2	10	2020-02-12 16:34:49.728	2020-02-12 16:34:49.777	2020-02-12 16:34:55.369	COMPLETED	COMPLETED		2020-02-12 16:34:55.369	\N
31	2	31	2020-02-12 21:57:23.606	2020-02-12 21:57:23.647	2020-02-12 21:57:29.023	COMPLETED	COMPLETED		2020-02-12 21:57:29.023	\N
11	2	11	2020-02-12 16:35:32.355	2020-02-12 16:35:32.396	2020-02-12 16:35:37.846	COMPLETED	COMPLETED		2020-02-12 16:35:37.846	\N
12	2	12	2020-02-12 16:38:31.367	2020-02-12 16:38:31.409	2020-02-12 16:38:36.998	COMPLETED	COMPLETED		2020-02-12 16:38:36.998	\N
32	2	32	2020-02-12 21:57:33.584	2020-02-12 21:57:33.588	2020-02-12 21:57:38.473	COMPLETED	COMPLETED		2020-02-12 21:57:38.474	\N
13	2	13	2020-02-12 21:12:39.551	2020-02-12 21:12:39.678	2020-02-12 21:12:45.521	FAILED	FAILED		2020-02-12 21:12:45.521	\N
14	2	14	2020-02-12 21:12:39.571	2020-02-12 21:12:39.678	2020-02-12 21:12:45.556	COMPLETED	COMPLETED		2020-02-12 21:12:45.557	\N
15	2	15	2020-02-12 21:12:49.485	2020-02-12 21:12:49.488	2020-02-12 21:12:51.072	FAILED	FAILED		2020-02-12 21:12:51.072	\N
33	2	33	2020-02-12 21:57:43.584	2020-02-12 21:57:43.587	2020-02-12 21:57:48.449	COMPLETED	COMPLETED		2020-02-12 21:57:48.449	\N
16	2	16	2020-02-12 21:19:54.266	2020-02-12 21:19:54.314	2020-02-12 21:19:59.825	FAILED	FAILED		2020-02-12 21:19:59.825	\N
17	2	17	2020-02-12 21:19:54.278	2020-02-12 21:19:54.314	2020-02-12 21:19:59.863	COMPLETED	COMPLETED		2020-02-12 21:19:59.863	\N
18	2	18	2020-02-12 21:20:04.24	2020-02-12 21:20:04.242	2020-02-12 21:20:05.895	FAILED	FAILED		2020-02-12 21:20:05.895	\N
44	2	44	2020-02-13 19:02:00.417	2020-02-13 19:02:00.423	2020-02-13 19:02:11.004	COMPLETED	COMPLETED		2020-02-13 19:02:11.005	\N
19	2	19	2020-02-12 21:20:14.249	2020-02-12 21:20:14.252	2020-02-12 21:20:19.232	COMPLETED	COMPLETED		2020-02-12 21:20:19.233	\N
20	1	20	2020-02-12 21:20:24.239	2020-02-12 21:20:24.248	\N	STARTED	UNKNOWN		2020-02-12 21:20:24.248	\N
21	1	21	2020-02-12 21:21:32.678	2020-02-12 21:21:32.732	\N	STARTED	UNKNOWN		2020-02-12 21:21:32.732	\N
23	0	23	2020-02-12 21:23:03.797	\N	\N	STARTING	UNKNOWN		2020-02-12 21:23:03.797	\N
34	2	34	2020-02-12 21:57:53.58	2020-02-12 21:57:53.584	2020-02-12 21:57:58.451	COMPLETED	COMPLETED		2020-02-12 21:57:58.452	\N
25	2	25	2020-02-12 21:24:07.146	2020-02-12 21:24:07.19	2020-02-12 21:24:12.77	COMPLETED	COMPLETED		2020-02-12 21:24:12.77	\N
58	2	58	2020-02-13 19:04:34.819	2020-02-13 19:04:34.821	2020-02-13 19:04:50.787	COMPLETED	COMPLETED		2020-02-13 19:04:50.787	\N
35	2	35	2020-02-12 21:58:03.575	2020-02-12 21:58:03.586	2020-02-12 21:58:08.419	COMPLETED	COMPLETED		2020-02-12 21:58:08.419	\N
45	2	45	2020-02-13 19:02:11.012	2020-02-13 19:02:11.016	2020-02-13 19:02:34.218	FAILED	FAILED		2020-02-13 19:02:34.218	\N
36	2	36	2020-02-12 21:58:13.576	2020-02-12 21:58:13.586	2020-02-12 21:58:18.48	COMPLETED	COMPLETED		2020-02-12 21:58:18.481	\N
37	2	37	2020-02-12 21:58:23.574	2020-02-12 21:58:23.576	2020-02-12 21:58:28.503	COMPLETED	COMPLETED		2020-02-12 21:58:28.503	\N
53	2	53	2020-02-13 19:03:34.281	2020-02-13 19:03:34.283	2020-02-13 19:03:43.911	COMPLETED	COMPLETED		2020-02-13 19:03:43.911	\N
38	2	38	2020-02-12 21:58:33.575	2020-02-12 21:58:33.584	2020-02-12 21:58:38.555	COMPLETED	COMPLETED		2020-02-12 21:58:38.556	\N
46	2	46	2020-02-13 19:02:34.225	2020-02-13 19:02:34.227	2020-02-13 19:02:42.137	COMPLETED	COMPLETED		2020-02-13 19:02:42.138	\N
40	2	40	2020-02-13 19:01:20.503	2020-02-13 19:01:20.6	2020-02-13 19:01:33.611	COMPLETED	COMPLETED		2020-02-13 19:01:33.612	\N
41	2	41	2020-02-13 19:01:30.417	2020-02-13 19:01:30.422	2020-02-13 19:01:44.541	FAILED	FAILED		2020-02-13 19:01:44.541	\N
42	2	42	2020-02-13 19:01:44.549	2020-02-13 19:01:44.552	2020-02-13 19:01:51.137	FAILED	FAILED		2020-02-13 19:01:51.137	\N
47	2	47	2020-02-13 19:02:42.143	2020-02-13 19:02:42.146	2020-02-13 19:02:48.98	COMPLETED	COMPLETED		2020-02-13 19:02:48.98	\N
48	2	48	2020-02-13 19:02:48.987	2020-02-13 19:02:48.991	2020-02-13 19:02:56.579	COMPLETED	COMPLETED		2020-02-13 19:02:56.579	\N
54	2	54	2020-02-13 19:03:43.947	2020-02-13 19:03:43.95	2020-02-13 19:04:00.436	FAILED	FAILED		2020-02-13 19:04:00.436	\N
49	2	49	2020-02-13 19:02:56.585	2020-02-13 19:02:56.587	2020-02-13 19:03:08.881	FAILED	FAILED		2020-02-13 19:03:08.882	\N
50	2	50	2020-02-13 19:03:08.885	2020-02-13 19:03:08.888	2020-02-13 19:03:16.509	FAILED	FAILED		2020-02-13 19:03:16.509	\N
62	1	62	2020-02-13 19:05:23.213	2020-02-13 19:05:23.215	\N	STARTED	UNKNOWN		2020-02-13 19:05:23.215	\N
51	2	51	2020-02-13 19:03:16.516	2020-02-13 19:03:16.519	2020-02-13 19:03:24.36	COMPLETED	COMPLETED		2020-02-13 19:03:24.361	\N
59	2	59	2020-02-13 19:04:50.798	2020-02-13 19:04:50.801	2020-02-13 19:05:01.046	COMPLETED	COMPLETED		2020-02-13 19:05:01.046	\N
55	2	55	2020-02-13 19:04:00.44	2020-02-13 19:04:00.442	2020-02-13 19:04:10.753	COMPLETED	COMPLETED		2020-02-13 19:04:10.753	\N
56	2	56	2020-02-13 19:04:10.757	2020-02-13 19:04:10.759	2020-02-13 19:04:22.255	COMPLETED	COMPLETED		2020-02-13 19:04:22.255	\N
57	2	57	2020-02-13 19:04:22.262	2020-02-13 19:04:22.264	2020-02-13 19:04:34.814	COMPLETED	COMPLETED		2020-02-13 19:04:34.814	\N
60	2	60	2020-02-13 19:05:01.05	2020-02-13 19:05:01.051	2020-02-13 19:05:11.038	COMPLETED	COMPLETED		2020-02-13 19:05:11.038	\N
65	2	65	2020-02-15 10:50:36.769	2020-02-15 10:50:36.773	2020-02-15 10:50:41.749	COMPLETED	COMPLETED		2020-02-15 10:50:41.749	\N
61	2	61	2020-02-13 19:05:11.04	2020-02-13 19:05:11.042	2020-02-13 19:05:23.21	COMPLETED	COMPLETED		2020-02-13 19:05:23.21	\N
64	2	64	2020-02-15 10:50:26.823	2020-02-15 10:50:26.883	2020-02-15 10:50:32.958	COMPLETED	COMPLETED		2020-02-15 10:50:32.959	\N
67	2	67	2020-02-15 10:50:56.767	2020-02-15 10:50:56.769	2020-02-15 10:51:01.627	COMPLETED	COMPLETED		2020-02-15 10:51:01.627	\N
66	2	66	2020-02-15 10:50:46.768	2020-02-15 10:50:46.771	2020-02-15 10:50:51.74	COMPLETED	COMPLETED		2020-02-15 10:50:51.74	\N
74	1	74	2020-02-15 10:56:51.051	2020-02-15 10:56:51.054	\N	STARTED	UNKNOWN		2020-02-15 10:56:51.054	\N
69	2	69	2020-02-15 10:56:01.131	2020-02-15 10:56:01.18	2020-02-15 10:56:06.739	COMPLETED	COMPLETED		2020-02-15 10:56:06.739	\N
70	2	70	2020-02-15 10:56:11.052	2020-02-15 10:56:11.056	2020-02-15 10:56:16.011	COMPLETED	COMPLETED		2020-02-15 10:56:16.011	\N
71	2	71	2020-02-15 10:56:21.052	2020-02-15 10:56:21.055	2020-02-15 10:56:25.968	COMPLETED	COMPLETED		2020-02-15 10:56:25.968	\N
72	2	72	2020-02-15 10:56:31.051	2020-02-15 10:56:31.054	2020-02-15 10:56:35.928	COMPLETED	COMPLETED		2020-02-15 10:56:35.928	\N
73	2	73	2020-02-15 10:56:41.051	2020-02-15 10:56:41.053	2020-02-15 10:56:46	COMPLETED	COMPLETED		2020-02-15 10:56:46	\N
75	0	75	2020-02-17 04:17:23.606	\N	\N	STARTING	UNKNOWN		2020-02-17 04:17:23.606	\N
77	2	77	2020-02-17 04:18:04.762	2020-02-17 04:18:04.847	2020-02-17 04:18:11.499	COMPLETED	COMPLETED		2020-02-17 04:18:11.499	\N
78	2	78	2020-02-17 04:18:05.164	2020-02-17 04:18:05.172	2020-02-17 04:18:11.518	FAILED	FAILED		2020-02-17 04:18:11.518	\N
79	2	79	2020-02-17 04:18:14.742	2020-02-17 04:18:14.746	2020-02-17 04:18:16.434	FAILED	FAILED		2020-02-17 04:18:16.434	\N
80	2	80	2020-02-17 04:18:24.735	2020-02-17 04:18:24.738	2020-02-17 04:18:31.235	COMPLETED	COMPLETED		2020-02-17 04:18:31.235	\N
81	2	81	2020-02-17 04:18:34.742	2020-02-17 04:18:34.749	2020-02-17 04:18:39.732	COMPLETED	COMPLETED		2020-02-17 04:18:39.732	\N
82	1	82	2020-02-17 04:18:44.743	2020-02-17 04:18:44.75	\N	STARTED	UNKNOWN		2020-02-17 04:18:44.75	\N
\.


                                                                                                                            2841.dat                                                                                            0000600 0004000 0002000 00000001226 13622405357 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	{}	\N
2	{}	\N
3	{}	\N
4	{}	\N
5	{}	\N
6	{}	\N
7	{}	\N
8	{}	\N
9	{}	\N
10	{}	\N
11	{}	\N
12	{}	\N
13	{}	\N
14	{}	\N
15	{}	\N
16	{}	\N
17	{}	\N
18	{}	\N
19	{}	\N
20	{}	\N
21	{}	\N
23	{}	\N
25	{}	\N
26	{}	\N
27	{}	\N
28	{}	\N
64	{}	\N
31	{}	\N
32	{}	\N
33	{}	\N
34	{}	\N
35	{}	\N
36	{}	\N
37	{}	\N
38	{}	\N
40	{}	\N
41	{}	\N
42	{}	\N
43	{}	\N
44	{}	\N
45	{}	\N
46	{}	\N
47	{}	\N
48	{}	\N
49	{}	\N
50	{}	\N
51	{}	\N
52	{}	\N
53	{}	\N
54	{}	\N
55	{}	\N
56	{}	\N
57	{}	\N
58	{}	\N
59	{}	\N
60	{}	\N
61	{}	\N
62	{}	\N
65	{}	\N
66	{}	\N
67	{}	\N
69	{}	\N
70	{}	\N
71	{}	\N
72	{}	\N
73	{}	\N
74	{}	\N
75	{}	\N
77	{}	\N
78	{}	\N
79	{}	\N
80	{}	\N
81	{}	\N
82	{}	\N
\.


                                                                                                                                                                                                                                                                                                                                                                          2838.dat                                                                                            0000600 0004000 0002000 00000010361 13622405357 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	LONG	run.id		1970-01-01 01:00:00	1	0	Y
2	LONG	run.id		1970-01-01 01:00:00	2	0	Y
3	LONG	run.id		1970-01-01 01:00:00	3	0	Y
4	LONG	run.id		1970-01-01 01:00:00	1	0	Y
5	LONG	run.id		1970-01-01 01:00:00	2	0	Y
6	LONG	run.id		1970-01-01 01:00:00	3	0	Y
7	LONG	run.id		1970-01-01 01:00:00	4	0	Y
8	LONG	run.id		1970-01-01 01:00:00	5	0	Y
9	LONG	run.id		1970-01-01 01:00:00	6	0	Y
10	LONG	run.id		1970-01-01 01:00:00	7	0	Y
11	LONG	run.id		1970-01-01 01:00:00	8	0	Y
12	LONG	run.id		1970-01-01 01:00:00	9	0	Y
13	STRING	JobID	1581538359489	1970-01-01 01:00:00	0	0	Y
14	LONG	run.id		1970-01-01 01:00:00	10	0	Y
15	STRING	JobID	1581538369481	1970-01-01 01:00:00	0	0	Y
16	STRING	JobID	1581538794242	1970-01-01 01:00:00	0	0	Y
17	LONG	run.id		1970-01-01 01:00:00	1	0	Y
17	STRING	JobID	1581538369481	1970-01-01 01:00:00	0	0	Y
18	STRING	JobID	1581538804236	1970-01-01 01:00:00	0	0	Y
19	STRING	JobID	1581538814235	1970-01-01 01:00:00	0	0	Y
20	STRING	JobID	1581538824236	1970-01-01 01:00:00	0	0	Y
21	STRING	JobID	1581538892657	1970-01-01 01:00:00	0	0	Y
23	STRING	JobID	1581538983779	1970-01-01 01:00:00	0	0	Y
25	LONG	run.id		1970-01-01 01:00:00	1	0	Y
25	STRING	JobID	1581538983779	1970-01-01 01:00:00	0	0	Y
26	LONG	run.id		1970-01-01 01:00:00	2	0	Y
26	STRING	JobID	1581538983779	1970-01-01 01:00:00	0	0	Y
27	LONG	run.id		1970-01-01 01:00:00	3	0	Y
27	STRING	JobID	1581538983779	1970-01-01 01:00:00	0	0	Y
28	STRING	JobID	1581541000615	1970-01-01 01:00:00	0	0	Y
31	LONG	run.id		1970-01-01 01:00:00	1	0	Y
31	STRING	JobID	1581541000615	1970-01-01 01:00:00	0	0	Y
32	STRING	JobID	1581541053572	1970-01-01 01:00:00	0	0	Y
33	STRING	JobID	1581541063572	1970-01-01 01:00:00	0	0	Y
34	STRING	JobID	1581541073577	1970-01-01 01:00:00	0	0	Y
35	STRING	JobID	1581541083571	1970-01-01 01:00:00	0	0	Y
36	STRING	JobID	1581541093572	1970-01-01 01:00:00	0	0	Y
37	STRING	JobID	1581541103571	1970-01-01 01:00:00	0	0	Y
38	STRING	JobID	1581541113572	1970-01-01 01:00:00	0	0	Y
40	LONG	run.id		1970-01-01 01:00:00	1	0	Y
40	STRING	JobID	1581541113572	1970-01-01 01:00:00	0	0	Y
41	STRING	JobID	1581616890410	1970-01-01 01:00:00	0	0	Y
42	STRING	JobID	1581616904544	1970-01-01 01:00:00	0	0	Y
43	STRING	JobID	1581616911139	1970-01-01 01:00:00	0	0	Y
44	STRING	JobID	1581616920409	1970-01-01 01:00:00	0	0	Y
45	STRING	JobID	1581616931007	1970-01-01 01:00:00	0	0	Y
46	STRING	JobID	1581616954221	1970-01-01 01:00:00	0	0	Y
47	STRING	JobID	1581616962139	1970-01-01 01:00:00	0	0	Y
48	STRING	JobID	1581616968982	1970-01-01 01:00:00	0	0	Y
49	STRING	JobID	1581616976581	1970-01-01 01:00:00	0	0	Y
50	STRING	JobID	1581616988883	1970-01-01 01:00:00	0	0	Y
51	STRING	JobID	1581616996511	1970-01-01 01:00:00	0	0	Y
52	STRING	JobID	1581617004362	1970-01-01 01:00:00	0	0	Y
53	STRING	JobID	1581617014278	1970-01-01 01:00:00	0	0	Y
54	STRING	JobID	1581617023913	1970-01-01 01:00:00	0	0	Y
55	STRING	JobID	1581617040437	1970-01-01 01:00:00	0	0	Y
56	STRING	JobID	1581617050754	1970-01-01 01:00:00	0	0	Y
57	STRING	JobID	1581617062257	1970-01-01 01:00:00	0	0	Y
58	STRING	JobID	1581617074816	1970-01-01 01:00:00	0	0	Y
59	STRING	JobID	1581617090790	1970-01-01 01:00:00	0	0	Y
60	STRING	JobID	1581617101047	1970-01-01 01:00:00	0	0	Y
61	STRING	JobID	1581617111038	1970-01-01 01:00:00	0	0	Y
62	STRING	JobID	1581617123211	1970-01-01 01:00:00	0	0	Y
64	LONG	run.id		1970-01-01 01:00:00	1	0	Y
64	STRING	JobID	1581617123211	1970-01-01 01:00:00	0	0	Y
65	STRING	JobID	1581760236764	1970-01-01 01:00:00	0	0	Y
66	STRING	JobID	1581760246763	1970-01-01 01:00:00	0	0	Y
67	STRING	JobID	1581760256763	1970-01-01 01:00:00	0	0	Y
69	LONG	run.id		1970-01-01 01:00:00	1	0	Y
69	STRING	JobID	1581760256763	1970-01-01 01:00:00	0	0	Y
70	STRING	JobID	1581760571046	1970-01-01 01:00:00	0	0	Y
71	STRING	JobID	1581760581047	1970-01-01 01:00:00	0	0	Y
72	STRING	JobID	1581760591047	1970-01-01 01:00:00	0	0	Y
73	STRING	JobID	1581760601047	1970-01-01 01:00:00	0	0	Y
74	STRING	JobID	1581760611047	1970-01-01 01:00:00	0	0	Y
75	STRING	JobID	1581909443484	1970-01-01 01:00:00	0	0	Y
77	STRING	JobID	1581909484729	1970-01-01 01:00:00	0	0	Y
78	LONG	run.id		1970-01-01 01:00:00	1	0	Y
78	STRING	JobID	1581909484729	1970-01-01 01:00:00	0	0	Y
79	STRING	JobID	1581909494730	1970-01-01 01:00:00	0	0	Y
80	STRING	JobID	1581909504730	1970-01-01 01:00:00	0	0	Y
81	STRING	JobID	1581909514731	1970-01-01 01:00:00	0	0	Y
82	STRING	JobID	1581909524730	1970-01-01 01:00:00	0	0	Y
\.


                                                                                                                                                                                                                                                                               2836.dat                                                                                            0000600 0004000 0002000 00000011264 13622405357 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0	importUtilisateurJob	853d3449e311f40366811cbefb3d93d7
2	0	importUtilisateurJob	e070bff4379694c0210a51d9f6c6a564
3	0	importUtilisateurJob	a3364faf893276dea0caacefbf618db5
4	0	importReservationExpireJob	853d3449e311f40366811cbefb3d93d7
5	0	importReservationExpireJob	e070bff4379694c0210a51d9f6c6a564
6	0	importReservationExpireJob	a3364faf893276dea0caacefbf618db5
7	0	importReservationExpireJob	47c0a8118b74165a864b66d37c7b6cf5
8	0	importReservationExpireJob	ce148f5f9c2bf4dc9bd44a7a5f64204c
9	0	importReservationExpireJob	bd0034040292bc81e6ccac0e25d9a578
10	0	importReservationExpireJob	597815c7e4ab1092c1b25130aae725cb
11	0	importReservationExpireJob	f55a96b11012be4fcfb6cf005435182d
12	0	importReservationExpireJob	96a5ed9bac43e779455f3e71c0f64840
13	0	importReservationExpireJob	591018563f4cd6dc10e8d28038399f31
14	0	importReservationExpireJob	1aac4f3e74894b78fa3ce5d8a25e1ef0
15	0	importReservationExpireJob	2f9b541fa0cd3d611dec66c99d3004e3
16	0	importReservationExpireJob	7fe096c7e88dac3b820cd87f41785eaa
17	0	importReservationExpireJob	7688df4491d2102ef8b3ae1ef828ec93
18	0	importReservationExpireJob	3464bbfb0e4354d3d3ecd558c227dce5
19	0	importReservationExpireJob	64a98cad9e5c5b69bc50f926c6a92162
20	0	importReservationExpireJob	73211215f9bc10c573222cba2e44bffe
21	0	importReservationExpireJob	8d83233d106995ebb9bb47e85b0b6e3a
23	0	importReservationExpireJob	f4bb6f262ed2e2f2eda4a6c306738bee
25	0	importReservationExpireJob	6e58c9b093ac96058c12d7ee4dd76f66
26	0	importReservationExpireJob	c3b34244763b04197fd135abec533999
27	0	importReservationExpireJob	a3d4ed769b0efb9346cf5901ac70aa90
28	0	importReservationExpireJob	f6107cee63771c0246d57fd4617fb5a6
31	0	importReservationExpireJob	fd8be10a19a81780991945b4b7d8f84d
32	0	importReservationExpireJob	e85b856b02c33d2065826f202ec8557b
33	0	importReservationExpireJob	e53b096011d141d620f6775ff0f7cbd4
34	0	importReservationExpireJob	243c2220e356d1166bd3422b92c8c16e
35	0	importReservationExpireJob	09856dfa7fea8c91671ce4be76f60bc7
36	0	importReservationExpireJob	03f393d39682f9957b6b9228778a6ffa
37	0	importReservationExpireJob	90f276e7425c318a6a5cdbf0271de579
38	0	importReservationExpireJob	e190ccaf5906ef79cec4317f9ae8aa49
40	0	importReservationExpireJob	5a5c360c9f0151fec410b818965f0374
41	0	importReservationExpireJob	0c5a6c4570e842ac60584f9dd1f11025
42	0	importReservationExpireJob	66323a3cf368a330888e13736a415cb2
43	0	importReservationExpireJob	7ad55cf89d34e51e911280dbe979a1a8
44	0	importReservationExpireJob	666e524772b0c751f3e522ea5123617e
45	0	importReservationExpireJob	f6068510bbdeb6f26cfca45a8ed5239b
46	0	importReservationExpireJob	ee27ebd0af444694a8d1ce3520939b1f
47	0	importReservationExpireJob	92f9b92718def33fb872c8a4ac0e000c
48	0	importReservationExpireJob	77857d479878313b7039c2d910ed32b3
49	0	importReservationExpireJob	208022fe217ab96a7e0d5b71b5f48847
50	0	importReservationExpireJob	62ffd957d014b981894c64ce0beec515
51	0	importReservationExpireJob	0e23392a8559f2e31685926dc050a6eb
52	0	importReservationExpireJob	4e4d1711a917586bf7c0ebddfe090d93
53	0	importReservationExpireJob	cfdb0934b2b7d94bc230c527a6204385
54	0	importReservationExpireJob	3b1f3d450c2da67ecd29168022b6d406
55	0	importReservationExpireJob	a3e3ee86feb39d25635875ee13b29e7d
56	0	importReservationExpireJob	ae54fcbe297db96b0153aec285c86cfe
57	0	importReservationExpireJob	9f0671ebc3d36cbbdbc394f49738b4f5
58	0	importReservationExpireJob	b2a977a9a6f10f291ad27bb85e86df38
59	0	importReservationExpireJob	80b3157835324e37334326963530edfa
60	0	importReservationExpireJob	8b3c152dda8e439b1677ba128e3df10c
61	0	importReservationExpireJob	26319a48421a2589d692f4c30d19a20a
62	0	importReservationExpireJob	b482f6d75beaa308c1dc7c98c8397b83
64	0	importReservationExpireJob	64a5e753ad7647fb7cdf3a1667a2cf4e
65	0	importReservationExpireJob	b07ab307f4c01e4a874e3158ab1d825a
66	0	importReservationExpireJob	ebe9a91df3bb963092faa94278818588
67	0	importReservationExpireJob	b593e8546be1e674de2ff272494d7a15
69	0	importReservationExpireJob	a25c2feeae5fe9c55776d1f1684d6ec6
70	0	importReservationExpireJob	62d8816347ba82d8946445db437802b8
71	0	importReservationExpireJob	92706c9ffdc732888e282ee7968070ed
72	0	importReservationExpireJob	b77d31ff679d36016fe8116286324cd0
73	0	importReservationExpireJob	f42198c86dbdee082dd6d6f1570563b8
74	0	importReservationExpireJob	8870b56437e8bd891b403e953eea2c3a
75	0	importReservationExpireJob	ce8cd1ff8d0e18ee4d128d621e85602d
77	0	importReservationExpireJob	452125f642a51d3d10c643e678824432
78	0	importReservationExpireJob	de6f67ef1882d576ed57358cfe6fb417
79	0	importReservationExpireJob	987335bd4b225dd2dd206ce909d99b76
80	0	importReservationExpireJob	010245c4772119588dfdca4b9ab53d56
81	0	importReservationExpireJob	dfa6513bac3b258018162529629f441e
82	0	importReservationExpireJob	1ae27e87a9dd6f06ba984df93d823848
\.


                                                                                                                                                                                                                                                                                                                                            2839.dat                                                                                            0000600 0004000 0002000 00000134035 13622405357 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	step1	1	2020-02-10 10:37:03.948	2020-02-10 10:37:03.963	FAILED	0	0	0	0	0	0	0	0	FAILED	org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'scopedTarget.utilisateurJsonItemReader' defined in class path resource [fr/banane/batchjsontomail/BatchConfig.class]: Bean instantiation via factory method failed; nested exception is org.springframework.beans.BeanInstantiationException: Failed to instantiate [org.springframework.batch.item.json.JsonItemReader]: Factory method 'utilisateurJsonItemReader' threw exception; nested exception is java.net.MalformedURLException: unknown protocol: localhost\r\n\tat org.springframework.beans.factory.support.ConstructorResolver.instantiate(ConstructorResolver.java:656)\r\n\tat org.springframework.beans.factory.support.ConstructorResolver.instantiateUsingFactoryMethod(ConstructorResolver.java:484)\r\n\tat org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.instantiateUsingFactoryMethod(AbstractAutowireCapableBeanFactory.java:1338)\r\n\tat org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBeanInstance(AbstractAutowireCapableBeanFactory.java:1177)\r\n\tat org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.doCreateBean(AbstractAutowireCapableBeanFactory.java:557)\r\n\tat org.springframework.beans.factory.support.AbstractAutowireCapableBeanFactory.createBean(AbstractAutowireCapableBeanFactory.java:517)\r\n\tat org.springframework.beans.factory.support.AbstractBeanFactory.lambda$doGetBean$1(AbstractBeanFactory.java:359)\r\n\tat org.springframework.batch.core.scope.StepScope.get(StepScope.java:113)\r\n\tat org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:356)\r\n\tat org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n\tat org.springframework.aop.target.SimpleBeanTargetSource.getTarget(SimpleBeanTargetSource.java:35)\r\n\tat org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:673)\r\n\tat org.springframework.batch.item.json.JsonItemReader$$EnhancerBySpringCGLIB$$dd2ae407.open(<generated>)\r\n\tat org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n\tat org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n\tat org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n\tat org.springframework.batch.core.job.flow.	2020-02-10 10:37:03.963
10	3	step1	10	2020-02-12 16:34:49.792	2020-02-12 16:34:55.364	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 16:34:55.364
2	3	step1	2	2020-02-10 10:47:56.274	2020-02-10 10:47:56.424	COMPLETED	1	4	0	4	0	0	0	0	COMPLETED		2020-02-10 10:47:56.425
3	3	step1	3	2020-02-10 11:27:40.047	2020-02-10 11:27:40.2	COMPLETED	1	4	0	4	0	0	0	0	COMPLETED		2020-02-10 11:27:40.2
11	3	step1	11	2020-02-12 16:35:32.411	2020-02-12 16:35:37.841	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 16:35:37.841
4	3	step1	4	2020-02-11 10:05:01.806	2020-02-11 10:05:02.025	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-11 10:05:02.026
18	2	step1	18	2020-02-12 21:20:04.251	2020-02-12 21:20:05.891	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: com.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n; message exception details (1) are:\r\nFailed message 1:\r\ncom.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2373)\r\n\tat com.sun.mail.smtp.SMTPTransport.data(SMTPTransport.java:2080)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1300)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:30)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframew	2020-02-12 21:20:05.891
16	2	step1	16	2020-02-12 21:19:54.332	2020-02-12 21:19:59.82	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: com.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n; message exception details (1) are:\r\nFailed message 1:\r\ncom.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2373)\r\n\tat com.sun.mail.smtp.SMTPTransport.data(SMTPTransport.java:2080)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1300)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:30)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframew	2020-02-12 21:19:59.82
5	3	step1	5	2020-02-12 13:42:31.309	2020-02-12 13:42:38.1	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 13:42:38.101
12	3	step1	12	2020-02-12 16:38:31.424	2020-02-12 16:38:36.992	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 16:38:36.993
6	3	step1	6	2020-02-12 13:50:26.291	2020-02-12 13:50:31.8	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 13:50:31.801
7	3	step1	7	2020-02-12 13:51:03.142	2020-02-12 13:51:08.591	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 13:51:08.592
17	3	step1	17	2020-02-12 21:19:54.332	2020-02-12 21:19:59.859	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:19:59.859
13	2	step1	13	2020-02-12 21:12:39.7	2020-02-12 21:12:45.515	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: com.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n; message exception details (1) are:\r\nFailed message 1:\r\ncom.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2373)\r\n\tat com.sun.mail.smtp.SMTPTransport.data(SMTPTransport.java:2080)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1300)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:30)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframew	2020-02-12 21:12:45.516
8	3	step1	8	2020-02-12 16:18:02.718	2020-02-12 16:18:08.792	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 16:18:08.793
14	3	step1	14	2020-02-12 21:12:39.712	2020-02-12 21:12:45.552	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:12:45.553
9	3	step1	9	2020-02-12 16:19:52.247	2020-02-12 16:19:57.846	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 16:19:57.846
20	1	step1	20	2020-02-12 21:20:24.255	\N	STARTED	0	0	0	0	0	0	0	0	EXECUTING		2020-02-12 21:20:24.255
19	3	step1	19	2020-02-12 21:20:14.261	2020-02-12 21:20:19.23	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:20:19.23
15	2	step1	15	2020-02-12 21:12:49.496	2020-02-12 21:12:51.069	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: com.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n; message exception details (1) are:\r\nFailed message 1:\r\ncom.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2373)\r\n\tat com.sun.mail.smtp.SMTPTransport.data(SMTPTransport.java:2080)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1300)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:30)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframew	2020-02-12 21:12:51.07
21	1	step1	21	2020-02-12 21:21:33.286	\N	STARTED	0	0	0	0	0	0	0	0	EXECUTING		2020-02-12 21:21:33.286
37	2	step1	43	2020-02-13 19:01:51.16	2020-02-13 19:01:58.438	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Mail server connection failed; nested exception is javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out. Failed messages: javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat com.sun.mail.smtp.SMTPTransport.readServerResponse(SMTPTransport.java:2475)\r\n\tat com.sun.mail.smtp.SMTPTransport.ehlo(SMTPTransport.java:1684)\r\n\tat com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:726)\r\n\tat javax.mail.Service.connect(Service.java:342)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.connectTransport(JavaMailSenderImpl.java:518)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:437)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepCo	2020-02-13 19:01:58.439
22	3	step1	25	2020-02-12 21:24:07.206	2020-02-12 21:24:12.765	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:24:12.765
32	3	step1	37	2020-02-12 21:58:23.581	2020-02-12 21:58:28.5	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:58:28.501
23	2	step1	26	2020-02-12 21:41:39.609	2020-02-12 21:41:39.842	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Mail server connection failed; nested exception is javax.mail.MessagingException: STARTTLS is required but host does not support STARTTLS. Failed messages: javax.mail.MessagingException: STARTTLS is required but host does not support STARTTLS; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: STARTTLS is required but host does not support STARTTLS\r\n\tat com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:744)\r\n\tat javax.mail.Service.connect(Service.java:342)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.connectTransport(JavaMailSenderImpl.java:518)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:437)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.	2020-02-12 21:41:39.842
24	3	step1	27	2020-02-12 21:55:38.449	2020-02-12 21:55:43.999	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:55:44
25	1	step1	28	2020-02-12 21:56:40.742	\N	STARTED	0	0	0	0	0	0	0	0	EXECUTING		2020-02-12 21:56:40.742
33	3	step1	38	2020-02-12 21:58:33.591	2020-02-12 21:58:38.553	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:58:38.553
26	3	step1	31	2020-02-12 21:57:23.663	2020-02-12 21:57:29.018	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:57:29.019
27	3	step1	32	2020-02-12 21:57:33.601	2020-02-12 21:57:38.469	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:57:38.47
38	3	step1	44	2020-02-13 19:02:00.438	2020-02-13 19:02:11.001	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:02:11.001
28	3	step1	33	2020-02-12 21:57:43.595	2020-02-12 21:57:48.446	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:57:48.446
34	3	step1	40	2020-02-13 19:01:20.645	2020-02-13 19:01:33.603	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:01:33.605
29	3	step1	34	2020-02-12 21:57:53.592	2020-02-12 21:57:58.449	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:57:58.449
35	2	step1	41	2020-02-13 19:01:30.445	2020-02-13 19:01:44.536	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Mail server connection failed; nested exception is javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out. Failed messages: javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat com.sun.mail.smtp.SMTPTransport.readServerResponse(SMTPTransport.java:2475)\r\n\tat com.sun.mail.smtp.SMTPTransport.issueCommand(SMTPTransport.java:2337)\r\n\tat com.sun.mail.smtp.SMTPTransport.startTLS(SMTPTransport.java:2132)\r\n\tat com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:734)\r\n\tat javax.mail.Service.connect(Service.java:342)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.connectTransport(JavaMailSenderImpl.java:518)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:437)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext	2020-02-13 19:01:44.536
30	3	step1	35	2020-02-12 21:58:03.594	2020-02-12 21:58:08.416	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:58:08.417
65	3	step1	73	2020-02-15 10:56:41.061	2020-02-15 10:56:45.996	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:56:45.996
36	2	step1	42	2020-02-13 19:01:44.562	2020-02-13 19:01:51.132	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Mail server connection failed; nested exception is javax.mail.MessagingException: Could not convert socket to TLS;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out. Failed messages: javax.mail.MessagingException: Could not convert socket to TLS;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: Could not convert socket to TLS;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat com.sun.mail.smtp.SMTPTransport.startTLS(SMTPTransport.java:2140)\r\n\tat com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:734)\r\n\tat javax.mail.Service.connect(Service.java:342)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.connectTransport(JavaMailSenderImpl.java:518)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:437)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.ja	2020-02-13 19:01:51.132
31	3	step1	36	2020-02-12 21:58:13.594	2020-02-12 21:58:18.477	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-12 21:58:18.477
66	1	step1	74	2020-02-15 10:56:51.065	\N	STARTED	0	0	0	0	0	0	0	0	EXECUTING		2020-02-15 10:56:51.065
67	3	step1	77	2020-02-17 04:18:04.879	2020-02-17 04:18:11.491	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-17 04:18:11.492
69	2	step1	79	2020-02-17 04:18:14.754	2020-02-17 04:18:16.43	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: com.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n; message exception details (1) are:\r\nFailed message 1:\r\ncom.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2373)\r\n\tat com.sun.mail.smtp.SMTPTransport.data(SMTPTransport.java:2080)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1300)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.biblioc.bibliocbatch.mail.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:32)\r\n\tat fr.biblioc.bibliocbatch.writer.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:30)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframework.batch	2020-02-17 04:18:16.431
70	3	step1	80	2020-02-17 04:18:24.746	2020-02-17 04:18:31.232	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-17 04:18:31.232
39	2	step1	45	2020-02-13 19:02:11.029	2020-02-13 19:02:34.212	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat com.sun.mail.smtp.SMTPTransport.readServerResponse(SMTPTransport.java:2475)\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2352)\r\n\tat com.sun.mail.smtp.SMTPTransport.finishData(SMTPTransport.java:2095)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1301)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTem	2020-02-13 19:02:34.213
47	3	step1	53	2020-02-13 19:03:34.289	2020-02-13 19:03:43.908	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:03:43.908
40	3	step1	46	2020-02-13 19:02:34.235	2020-02-13 19:02:42.134	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:02:42.135
51	3	step1	57	2020-02-13 19:04:22.27	2020-02-13 19:04:34.811	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:04:34.811
41	3	step1	47	2020-02-13 19:02:42.153	2020-02-13 19:02:48.976	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:02:48.976
48	2	step1	54	2020-02-13 19:03:43.956	2020-02-13 19:04:00.433	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed to close server connection after message sending; nested exception is javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:485)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n\tat org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n\tat org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n\tat org.springframework.batch.core.job.flow.JobF	2020-02-13 19:04:00.433
42	3	step1	48	2020-02-13 19:02:49	2020-02-13 19:02:56.578	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:02:56.578
43	2	step1	49	2020-02-13 19:02:56.591	2020-02-13 19:03:08.879	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: javax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: Exception reading response;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat com.sun.mail.smtp.SMTPTransport.readServerResponse(SMTPTransport.java:2475)\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2352)\r\n\tat com.sun.mail.smtp.SMTPTransport.mailFrom(SMTPTransport.java:1808)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1285)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTempl	2020-02-13 19:03:08.879
56	1	step1	62	2020-02-13 19:05:23.22	\N	STARTED	0	0	0	0	0	0	0	0	EXECUTING		2020-02-13 19:05:23.22
44	2	step1	50	2020-02-13 19:03:08.895	2020-02-13 19:03:16.505	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Mail server connection failed; nested exception is javax.mail.MessagingException: Could not convert socket to TLS;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out. Failed messages: javax.mail.MessagingException: Could not convert socket to TLS;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out; message exception details (1) are:\r\nFailed message 1:\r\njavax.mail.MessagingException: Could not convert socket to TLS;\n  nested exception is:\n\tjava.net.SocketTimeoutException: Read timed out\r\n\tat com.sun.mail.smtp.SMTPTransport.startTLS(SMTPTransport.java:2140)\r\n\tat com.sun.mail.smtp.SMTPTransport.protocolConnect(SMTPTransport.java:734)\r\n\tat javax.mail.Service.connect(Service.java:342)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.connectTransport(JavaMailSenderImpl.java:518)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:437)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.banane.batchjsontomail.services.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:29)\r\n\tat fr.banane.batchjsontomail.writers.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:27)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.ja	2020-02-13 19:03:16.505
49	3	step1	55	2020-02-13 19:04:00.446	2020-02-13 19:04:10.75	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:04:10.75
45	3	step1	51	2020-02-13 19:03:16.526	2020-02-13 19:03:24.357	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:03:24.358
54	3	step1	60	2020-02-13 19:05:01.055	2020-02-13 19:05:11.035	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:05:11.035
52	3	step1	58	2020-02-13 19:04:34.826	2020-02-13 19:04:50.784	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:04:50.784
46	3	step1	52	2020-02-13 19:03:24.377	2020-02-13 19:03:34.274	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:03:34.274
50	3	step1	56	2020-02-13 19:04:10.764	2020-02-13 19:04:22.251	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:04:22.251
53	3	step1	59	2020-02-13 19:04:50.812	2020-02-13 19:05:01.043	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:05:01.044
55	3	step1	61	2020-02-13 19:05:11.046	2020-02-13 19:05:23.208	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-13 19:05:23.208
57	3	step1	64	2020-02-15 10:50:26.91	2020-02-15 10:50:32.952	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:50:32.953
59	3	step1	66	2020-02-15 10:50:46.779	2020-02-15 10:50:51.736	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:50:51.736
58	3	step1	65	2020-02-15 10:50:36.787	2020-02-15 10:50:41.745	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:50:41.745
60	3	step1	67	2020-02-15 10:50:56.778	2020-02-15 10:51:01.625	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:51:01.625
61	3	step1	69	2020-02-15 10:56:01.2	2020-02-15 10:56:06.733	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:56:06.734
62	3	step1	70	2020-02-15 10:56:11.071	2020-02-15 10:56:16.006	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:56:16.007
63	3	step1	71	2020-02-15 10:56:21.063	2020-02-15 10:56:25.965	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:56:25.965
64	3	step1	72	2020-02-15 10:56:31.064	2020-02-15 10:56:35.923	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-15 10:56:35.923
68	2	step1	78	2020-02-17 04:18:05.185	2020-02-17 04:18:11.512	FAILED	0	3	0	0	0	0	0	1	FAILED	org.springframework.mail.MailSendException: Failed messages: com.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n; message exception details (1) are:\r\nFailed message 1:\r\ncom.sun.mail.smtp.SMTPSendFailedException: 550 5.7.0 Requested action not taken: too many emails per second\n\r\n\tat com.sun.mail.smtp.SMTPTransport.issueSendCommand(SMTPTransport.java:2373)\r\n\tat com.sun.mail.smtp.SMTPTransport.data(SMTPTransport.java:2080)\r\n\tat com.sun.mail.smtp.SMTPTransport.sendMessage(SMTPTransport.java:1300)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.doSend(JavaMailSenderImpl.java:465)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:361)\r\n\tat org.springframework.mail.javamail.JavaMailSenderImpl.send(JavaMailSenderImpl.java:356)\r\n\tat fr.biblioc.bibliocbatch.mail.ReservationExpireMailSenderServiceImpl.send(ReservationExpireMailSenderServiceImpl.java:32)\r\n\tat fr.biblioc.bibliocbatch.writer.ReservationExpireItemWriter.write(ReservationExpireItemWriter.java:30)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n\tat org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n\tat org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n\tat org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n\tat org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n\tat org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n\tat org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n\tat org.springframework.batch	2020-02-17 04:18:11.513
71	3	step1	81	2020-02-17 04:18:34.761	2020-02-17 04:18:39.723	COMPLETED	1	3	0	3	0	0	0	0	COMPLETED		2020-02-17 04:18:39.724
72	1	step1	82	2020-02-17 04:18:44.761	\N	STARTED	0	0	0	0	0	0	0	0	EXECUTING		2020-02-17 04:18:44.761
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   2840.dat                                                                                            0000600 0004000 0002000 00000033726 13622405357 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	{}	\N
24	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
11	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
2	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":5,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
25	{}	\N
3	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":5,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
19	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
12	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
4	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
5	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
20	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
6	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
13	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
7	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
14	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
8	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
21	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
15	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
9	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
10	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
27	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
16	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
22	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
17	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
18	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
23	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
26	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
31	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
32	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
29	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
28	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
30	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
33	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
35	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
46	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
36	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
37	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
52	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
38	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
47	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
39	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
40	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
48	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
41	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
42	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
49	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
43	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
44	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
45	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
50	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
51	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
34	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
62	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
53	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
54	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
63	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
55	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
56	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
70	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
57	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
64	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
58	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
59	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
65	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
60	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
66	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
61	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
71	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
72	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
67	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":4,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
68	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
69	{"batch.taskletType":"org.springframework.batch.core.step.item.ChunkOrientedTasklet","reservationItemReader.read.count":0,"batch.stepType":"org.springframework.batch.core.step.tasklet.TaskletStep"}	\N
\.


                                          restore.sql                                                                                         0000600 0004000 0002000 00000026204 13622405357 0015377 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "batch-db";
--
-- Name: batch-db; Type: DATABASE; Schema: -; Owner: batch-admin
--

CREATE DATABASE "batch-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';


ALTER DATABASE "batch-db" OWNER TO "batch-admin";

\connect -reuse-previous=on "dbname='batch-db'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: batch_job_execution; Type: TABLE; Schema: public; Owner: batch-admin
--

CREATE TABLE public.batch_job_execution (
    job_execution_id bigint NOT NULL,
    version bigint,
    job_instance_id bigint NOT NULL,
    create_time timestamp without time zone NOT NULL,
    start_time timestamp without time zone,
    end_time timestamp without time zone,
    status character varying(10),
    exit_code character varying(2500),
    exit_message character varying(2500),
    last_updated timestamp without time zone,
    job_configuration_location character varying(2500)
);


ALTER TABLE public.batch_job_execution OWNER TO "batch-admin";

--
-- Name: batch_job_execution_context; Type: TABLE; Schema: public; Owner: batch-admin
--

CREATE TABLE public.batch_job_execution_context (
    job_execution_id bigint NOT NULL,
    short_context character varying(2500) NOT NULL,
    serialized_context text
);


ALTER TABLE public.batch_job_execution_context OWNER TO "batch-admin";

--
-- Name: batch_job_execution_params; Type: TABLE; Schema: public; Owner: batch-admin
--

CREATE TABLE public.batch_job_execution_params (
    job_execution_id bigint NOT NULL,
    type_cd character varying(6) NOT NULL,
    key_name character varying(100) NOT NULL,
    string_val character varying(250),
    date_val timestamp without time zone,
    long_val bigint,
    double_val double precision,
    identifying character(1) NOT NULL
);


ALTER TABLE public.batch_job_execution_params OWNER TO "batch-admin";

--
-- Name: batch_job_execution_seq; Type: SEQUENCE; Schema: public; Owner: batch-admin
--

CREATE SEQUENCE public.batch_job_execution_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batch_job_execution_seq OWNER TO "batch-admin";

--
-- Name: batch_job_instance; Type: TABLE; Schema: public; Owner: batch-admin
--

CREATE TABLE public.batch_job_instance (
    job_instance_id bigint NOT NULL,
    version bigint,
    job_name character varying(100) NOT NULL,
    job_key character varying(32) NOT NULL
);


ALTER TABLE public.batch_job_instance OWNER TO "batch-admin";

--
-- Name: batch_job_seq; Type: SEQUENCE; Schema: public; Owner: batch-admin
--

CREATE SEQUENCE public.batch_job_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batch_job_seq OWNER TO "batch-admin";

--
-- Name: batch_step_execution; Type: TABLE; Schema: public; Owner: batch-admin
--

CREATE TABLE public.batch_step_execution (
    step_execution_id bigint NOT NULL,
    version bigint NOT NULL,
    step_name character varying(100) NOT NULL,
    job_execution_id bigint NOT NULL,
    start_time timestamp without time zone NOT NULL,
    end_time timestamp without time zone,
    status character varying(10),
    commit_count bigint,
    read_count bigint,
    filter_count bigint,
    write_count bigint,
    read_skip_count bigint,
    write_skip_count bigint,
    process_skip_count bigint,
    rollback_count bigint,
    exit_code character varying(2500),
    exit_message character varying(2500),
    last_updated timestamp without time zone
);


ALTER TABLE public.batch_step_execution OWNER TO "batch-admin";

--
-- Name: batch_step_execution_context; Type: TABLE; Schema: public; Owner: batch-admin
--

CREATE TABLE public.batch_step_execution_context (
    step_execution_id bigint NOT NULL,
    short_context character varying(2500) NOT NULL,
    serialized_context text
);


ALTER TABLE public.batch_step_execution_context OWNER TO "batch-admin";

--
-- Name: batch_step_execution_seq; Type: SEQUENCE; Schema: public; Owner: batch-admin
--

CREATE SEQUENCE public.batch_step_execution_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.batch_step_execution_seq OWNER TO "batch-admin";

--
-- Data for Name: batch_job_execution; Type: TABLE DATA; Schema: public; Owner: batch-admin
--

COPY public.batch_job_execution (job_execution_id, version, job_instance_id, create_time, start_time, end_time, status, exit_code, exit_message, last_updated, job_configuration_location) FROM stdin;
\.
COPY public.batch_job_execution (job_execution_id, version, job_instance_id, create_time, start_time, end_time, status, exit_code, exit_message, last_updated, job_configuration_location) FROM '$$PATH$$/2837.dat';

--
-- Data for Name: batch_job_execution_context; Type: TABLE DATA; Schema: public; Owner: batch-admin
--

COPY public.batch_job_execution_context (job_execution_id, short_context, serialized_context) FROM stdin;
\.
COPY public.batch_job_execution_context (job_execution_id, short_context, serialized_context) FROM '$$PATH$$/2841.dat';

--
-- Data for Name: batch_job_execution_params; Type: TABLE DATA; Schema: public; Owner: batch-admin
--

COPY public.batch_job_execution_params (job_execution_id, type_cd, key_name, string_val, date_val, long_val, double_val, identifying) FROM stdin;
\.
COPY public.batch_job_execution_params (job_execution_id, type_cd, key_name, string_val, date_val, long_val, double_val, identifying) FROM '$$PATH$$/2838.dat';

--
-- Data for Name: batch_job_instance; Type: TABLE DATA; Schema: public; Owner: batch-admin
--

COPY public.batch_job_instance (job_instance_id, version, job_name, job_key) FROM stdin;
\.
COPY public.batch_job_instance (job_instance_id, version, job_name, job_key) FROM '$$PATH$$/2836.dat';

--
-- Data for Name: batch_step_execution; Type: TABLE DATA; Schema: public; Owner: batch-admin
--

COPY public.batch_step_execution (step_execution_id, version, step_name, job_execution_id, start_time, end_time, status, commit_count, read_count, filter_count, write_count, read_skip_count, write_skip_count, process_skip_count, rollback_count, exit_code, exit_message, last_updated) FROM stdin;
\.
COPY public.batch_step_execution (step_execution_id, version, step_name, job_execution_id, start_time, end_time, status, commit_count, read_count, filter_count, write_count, read_skip_count, write_skip_count, process_skip_count, rollback_count, exit_code, exit_message, last_updated) FROM '$$PATH$$/2839.dat';

--
-- Data for Name: batch_step_execution_context; Type: TABLE DATA; Schema: public; Owner: batch-admin
--

COPY public.batch_step_execution_context (step_execution_id, short_context, serialized_context) FROM stdin;
\.
COPY public.batch_step_execution_context (step_execution_id, short_context, serialized_context) FROM '$$PATH$$/2840.dat';

--
-- Name: batch_job_execution_seq; Type: SEQUENCE SET; Schema: public; Owner: batch-admin
--

SELECT pg_catalog.setval('public.batch_job_execution_seq', 82, true);


--
-- Name: batch_job_seq; Type: SEQUENCE SET; Schema: public; Owner: batch-admin
--

SELECT pg_catalog.setval('public.batch_job_seq', 82, true);


--
-- Name: batch_step_execution_seq; Type: SEQUENCE SET; Schema: public; Owner: batch-admin
--

SELECT pg_catalog.setval('public.batch_step_execution_seq', 72, true);


--
-- Name: batch_job_execution_context batch_job_execution_context_pkey; Type: CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_execution_context
    ADD CONSTRAINT batch_job_execution_context_pkey PRIMARY KEY (job_execution_id);


--
-- Name: batch_job_execution batch_job_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_execution
    ADD CONSTRAINT batch_job_execution_pkey PRIMARY KEY (job_execution_id);


--
-- Name: batch_job_instance batch_job_instance_pkey; Type: CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_instance
    ADD CONSTRAINT batch_job_instance_pkey PRIMARY KEY (job_instance_id);


--
-- Name: batch_step_execution_context batch_step_execution_context_pkey; Type: CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_step_execution_context
    ADD CONSTRAINT batch_step_execution_context_pkey PRIMARY KEY (step_execution_id);


--
-- Name: batch_step_execution batch_step_execution_pkey; Type: CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_step_execution
    ADD CONSTRAINT batch_step_execution_pkey PRIMARY KEY (step_execution_id);


--
-- Name: batch_job_instance job_inst_un; Type: CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_instance
    ADD CONSTRAINT job_inst_un UNIQUE (job_name, job_key);


--
-- Name: batch_job_execution_context job_exec_ctx_fk; Type: FK CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_execution_context
    ADD CONSTRAINT job_exec_ctx_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id);


--
-- Name: batch_job_execution_params job_exec_params_fk; Type: FK CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_execution_params
    ADD CONSTRAINT job_exec_params_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id);


--
-- Name: batch_step_execution job_exec_step_fk; Type: FK CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_step_execution
    ADD CONSTRAINT job_exec_step_fk FOREIGN KEY (job_execution_id) REFERENCES public.batch_job_execution(job_execution_id);


--
-- Name: batch_job_execution job_inst_exec_fk; Type: FK CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_job_execution
    ADD CONSTRAINT job_inst_exec_fk FOREIGN KEY (job_instance_id) REFERENCES public.batch_job_instance(job_instance_id);


--
-- Name: batch_step_execution_context step_exec_ctx_fk; Type: FK CONSTRAINT; Schema: public; Owner: batch-admin
--

ALTER TABLE ONLY public.batch_step_execution_context
    ADD CONSTRAINT step_exec_ctx_fk FOREIGN KEY (step_execution_id) REFERENCES public.batch_step_execution(step_execution_id);


--
-- Name: DATABASE "batch-db"; Type: ACL; Schema: -; Owner: batch-admin
--

REVOKE ALL ON DATABASE "batch-db" FROM "batch-admin";
GRANT ALL ON DATABASE "batch-db" TO "batch-admin" WITH GRANT OPTION;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            