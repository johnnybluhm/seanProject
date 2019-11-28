

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



CREATE TABLE class_times (
    id integer NOT NULL,
    dept character varying(8),
    course_subject integer,
    section_number character varying(5),
    sess_n character varying(3),
    class_nbr integer,
    credits character varying(10),
    course_title character varying(100),
    class_component character varying(5),
    meeting_time character varying(50),
    days character varying(10),
    building_room_number character varying(50),
    instructor_name character varying(70),
    max_enr integer,
    campus character varying(25)
);




CREATE SEQUENCE class_times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE class_times_id_seq OWNED BY class_times.id;



ALTER TABLE ONLY class_times ALTER COLUMN id SET DEFAULT nextval('class_times_id_seq'::regclass);



COPY class_times (id, dept, course_subject, section_number, sess_n, class_nbr, credits, course_title, class_component, meeting_time, days, building_room_number, instructor_name, max_enr, campus) FROM stdin;
1	ANTH	1115	10	B	19535	3	Caribbean/Post Colonial	LEC	11:00 AM - 11:50 AM	MW	HALE 270	Roland,Lorecia Kaifa-Aliya	120	Main Campus
2	ANTH	1155	100	B	22301	3	Expl Global Cult Diversity	LEC	12:00 PM - 12:50 PM	MW	HLMS 199		97	Main Campus
3	ANTH	1155	200	B	33525	3	Expl Global Cult Diversity	LEC	02:00 PM - 02:50 PM	TTH	MCOL W100	Gutierrez,Gerardo	160	Main Campus
4	ANTH	1155	300	B	35247	3	Expl Global Cult Diversity	LEC	09:30 AM - 10:45 AM	TTH	HALE 260	Kurnick,Sarah Jill	40	Main Campus
5	ANTH	1170	100	B	20281	3	Culture, Gender, Film	LEC	09:30 AM - 10:20 AM	TTH	MUEN E050	Hammons,Christian Stanford	369	Main Campus
6	ANTH	2010	2	B	22156	3	Intro to Bio Anthropology 1	LEC	09:30 AM - 10:45 AM	TTH	HALE 270	Millette III,James Burns	188	Main Campus
7	ANTH	2010	3	B	13831	3	Intro to Bio Anthropology 1	LEC	11:00 AM - 12:15 PM	TTH	HALE 270	Sponheimer,Matthew James	188	Main Campus
8	ANTH	2010	4	B	21236	3	Intro to Bio Anthropology 1	LEC	02:00 PM - 03:15 PM	TTH	HALE 270	Sponheimer,Matthew James	188	Main Campus
9	ANTH	2030	1	B	13843	1	Lab in Bio Anthropology 1	MLS	10:00 AM - 11:50 AM	T	HALE 246	Covert,Herbert	16	Main Campus
10	ANTH	2030	2	B	13844	1	Lab in Bio Anthropology 1	MLS	12:00 PM - 01:50 PM	T	HALE 246	Covert,Herbert	16	Main Campus
11	ANTH	2030	3	B	13845	1	Lab in Bio Anthropology 1	MLS	02:00 PM - 03:50 PM	T	HALE 246	Covert,Herbert	16	Main Campus
12	ANTH	2030	4	B	13846	1	Lab in Bio Anthropology 1	MLS	04:00 PM - 05:50 PM	T	HALE 246	Covert,Herbert	16	Main Campus
13	ANTH	2030	5	B	13847	1	Lab in Bio Anthropology 1	MLS	09:00 AM - 10:50 AM	W	HALE 246	Covert,Herbert	16	Main Campus
14	ANTH	2030	6	B	13848	1	Lab in Bio Anthropology 1	MLS	11:00 AM - 12:50 PM	W	HALE 246	Covert,Herbert	16	Main Campus
15	ANTH	2030	7	B	13849	1	Lab in Bio Anthropology 1	MLS	01:00 PM - 02:50 PM	W	HALE 246	Covert,Herbert	16	Main Campus
16	ANTH	2030	8	B	13850	1	Lab in Bio Anthropology 1	MLS	03:00 PM - 04:50 PM	W	HALE 246	Covert,Herbert	16	Main Campus
17	ANTH	2030	9	B	13851	1	Lab in Bio Anthropology 1	MLS	05:00 PM - 06:50 PM	W	HALE 246	Covert,Herbert	16	Main Campus
18	ANTH	2030	10	B	13852	1	Lab in Bio Anthropology 1	MLS	10:00 AM - 11:50 AM	TH	HALE 246	Covert,Herbert	16	Main Campus
19	ANTH	2030	11	B	13853	1	Lab in Bio Anthropology 1	MLS	12:00 PM - 01:50 PM	TH	HALE 246	Covert,Herbert	16	Main Campus
20	ANTH	2030	12	B	13854	1	Lab in Bio Anthropology 1	MLS	02:00 PM - 03:50 PM	TH	HALE 246	Covert,Herbert	16	Main Campus
21	ANTH	2030	13	B	13855	1	Lab in Bio Anthropology 1	MLS	04:00 PM - 05:50 PM	TH	HALE 246	Covert,Herbert	16	Main Campus
22	ANTH	2030	14	B	13857	1	Lab in Bio Anthropology 1	MLS	10:00 AM - 11:50 AM	F	HALE 246	Covert,Herbert	16	Main Campus
23	ANTH	2030	15	B	13856	1	Lab in Bio Anthropology 1	MLS	12:00 PM - 01:50 PM	F	HALE 246	Covert,Herbert	16	Main Campus
24	ANTH	2030	16	B	13858	1	Lab in Bio Anthropology 1	MLS	02:00 PM - 03:50 PM	F	HALE 246	Covert,Herbert	16	Main Campus
25	ANTH	2100	10	B	13985	3	Intro to Cultural Anthropology	LEC	12:30 PM - 01:20 PM	TTH	HALE 270	Hammons,Christian Stanford	188	Main Campus
26	ANTH	2100	285R	B	21954	3	Intro to Cultural Anthropology	LEC	11:00 AM - 12:15 PM		LIBY 140	Merriman,Danielle Reaney	19	Main Campus
27	ANTH	2100	880	B	22305	3	Intro to Cultural Anthropology	LEC	01:00 PM - 01:50 PM	MWF	LIBR M300D	Fischer,Katherine Virginia	7	Main Campus
28	ANTH	2200	10	B	13990	3	The Archaeology of Human Hist	LEC	10:00 AM - 10:50 AM	MWF	HALE 270	Bamforth,Douglas	188	Main Campus
29	ANTH	3000	1	B	13841	3	Primate Behavior	LEC	11:00 AM - 11:50 AM	MWF	HALE 230	Sauther,Michelle Linda	88	Main Campus
30	ANTH	3119	1	B	22764	3	The Archaeology of Death	LEC	03:30 PM - 04:45 PM	TTH	HALE 240	Baxter,Leigh Erin	17	Main Campus
31	ANTH	3119	2	B	22908	3	The Archaeology of Death	LEC	05:00 PM - 06:15 PM	TTH	HALE 240	Baxter,Leigh Erin	17	Main Campus
32	ANTH	4000	10	B	35254	3	Quantitative Methods in Anthro	LEC	10:00 AM - 10:50 AM	MWF	HALE 240	Ortman,Scott Graham	20	Main Campus
33	ANTH	4020	5	B	21776	3-6	Explorations in Anthropology	LEC	11:00 AM - 12:15 PM	TTH	HALE 450	Roland,Lorecia Kaifa-Aliya	35	Main Campus
34	ANTH	4210	1	B	22342	3	Southwestern Archaeology	LEC	-				40	Main Campus
35	ANTH	4470	1	B	35278	3	Coll Res. Practm: Cult Anthro	PRA	01:00 PM - 03:50 PM	TH	HEND 212	Shannon,Jennifer	10	Main Campus
36	ANTH	4500	10	B	35263	3	Cross-Cult Aspects Devel	LEC	11:00 AM - 11:50 AM	MWF	CLUB 4	Jacka,Jerry Keith	35	Main Campus
37	ANTH	4525	10	B	35265	3	Global Islams	LEC	09:30 AM - 10:45 AM	TTH	HALE 240	Jones,Carla Mae	40	Main Campus
38	ANTH	4605	1	B	36449	3	Anthropology of Neuroscience	SEM	03:00 PM - 04:15 PM	MW	HALE 236	Goldfarb,Kathryn	30	Main Campus
39	ANTH	4690	10	B	35266	3-6	Anthropology of Tibet	LEC	09:30 AM - 12:00 PM	T	HALE 455	McGranahan,Carole Ann	20	Main Campus
40	ANTH	4710	801	B	15824	3	Dept Honors in Anthropology 1	LEC	09:00 AM - 11:30 AM	TH	HALE 455	Cool,Alison Collier	10	Main Campus
41	ANTH	5000	10	B	35256	3	Quantitative Methods in Anthro	LEC	10:00 AM - 10:50 AM	MWF	HALE 240	Ortman,Scott Graham	5	Main Campus
42	ANTH	5020	5	B	21778	3	Explorations in Anthropology	LEC	11:00 AM - 12:15 PM	TTH	HALE 450	Roland,Lorecia Kaifa-Aliya	2	Main Campus
43	ANTH	5020	6	B	21161	3	Explorations in Anthropology	LEC	-				2	Main Campus
44	ANTH	5020	20	B	21777	3	Explorations in Anthropology	LEC	-				2	Main Campus
45	ANTH	5210	1	B	22341	3	Southwestern Archaeology	LEC	-				5	Main Campus
46	ANTH	5470	1	B	35330	3	Coll Res. Practm: Cult Anthro	PRA	01:00 PM - 03:50 PM	TH	HEND 212	Shannon,Jennifer	3	Main Campus
47	ANTH	5605	1	B	36450	3	Anthropology of Neuroscience	SEM	03:00 PM - 04:15 PM	MW	HALE 236	Goldfarb,Kathryn	5	Main Campus
48	ANTH	5780	1	B	35317	3	Core Crse/Cult Anthropology	SEM	01:00 PM - 03:30 PM	W	HALE 455	Goldstein,Donna M	20	Main Campus
49	ANTH	7020	2	B	22791	3	Seminar: Physical Anthropology	SEM	01:00 PM - 03:30 PM	M	HALE 455	Sauther,Michelle Linda	15	Main Campus
50	ANTH	7030	2	B	22780	3	Sem-Archaeology	SEM	-	TBA	HALE 450	Kurnick,Sarah Jill	15	Main Campus
51	ANTH	7600	1	B	35329	3	Hum Ecol:Cultur Aspects	LEC	02:00 PM - 04:30 PM	T	HALE 455	McCabe,Terrence J	10	Main Campus
52	ANTH	7620	1	B	35338	3	Sem:Ethnog & Cultrl Thry	SEM	12:00 PM - 02:30 PM	M	HALE 450	McGranahan,Carole Ann	20	Main Campus
53	APPM	1235	130	B	20366	4	Pre-Calculus for Engineers	LEC	10:00 AM - 10:50 AM	MWF	FLMG 102		40	Main Campus
54	APPM	1235	140	B	20271	4	Pre-Calculus for Engineers	LEC	11:00 AM - 11:50 AM	MWF	FLMG 103		40	Main Campus
55	APPM	1235	150	B	28901	4	Pre-Calculus for Engineers	LEC	12:00 PM - 12:50 PM	MWF	FLMG 104		40	Main Campus
56	APPM	1235	151	B	28902	4	Pre-Calculus for Engineers	REC	12:00 PM - 12:50 PM	TH	ECCR 1B51		40	Main Campus
57	APPM	1235	160	B	20273	4	Pre-Calculus for Engineers	LEC	01:00 PM - 01:50 PM	MWF	FLMG 103		40	Main Campus
58	APPM	1340	150	B	13696	4	Calculus 1A with Algebra	LEC	12:00 PM - 12:50 PM	MWF	ECCR 135		46	Main Campus
59	APPM	1340	160	B	22142	4	Calculus 1A with Algebra	LEC	01:00 PM - 01:50 PM	MWF	ECCR 135		46	Main Campus
60	APPM	1340	170	B	22099	4	Calculus 1A with Algebra	LEC	02:00 PM - 02:50 PM	MWF	ECCR 135		46	Main Campus
61	APPM	1340	260	B	22102	0	Calculus 1A with Algebra	REC	01:00 PM - 01:50 PM	TH			20	Main Campus
62	APPM	1350	110	B	13705	4	Calculus 1 for Engineers	LEC	08:00 AM - 08:50 AM	MWF	FLMG 157		60	Main Campus
63	APPM	1350	120	B	13715	4	Calculus 1 for Engineers	LEC	09:00 AM - 09:50 AM	MWF	ECCR 200		104	Main Campus
64	APPM	1350	130	B	20359	4	Calculus 1 for Engineers	LEC	10:00 AM - 10:50 AM	MWF	ECCR 200		104	Main Campus
65	APPM	1350	140	B	20744	4	Calculus 1 for Engineers	LEC	11:00 AM - 11:50 AM	MWF	ECCR 200		104	Main Campus
66	APPM	1350	150	B	13723	4	Calculus 1 for Engineers	LEC	12:00 PM - 12:50 PM	MWF	ECCR 1B40		138	Main Campus
67	APPM	1350	160	B	13725	4	Calculus 1 for Engineers	LEC	01:00 PM - 01:50 PM	MWF	ECCR 265		151	Main Campus
68	APPM	1350	170	B	13730	4	Calculus 1 for Engineers	LEC	02:00 PM - 02:50 PM	MWF	EKLC E1B20		103	Main Campus
69	APPM	1350	180	B	20161	4	Calculus 1 for Engineers	LEC	03:00 PM - 03:50 PM	MWF	HUMN 250		90	Main Campus
70	APPM	1350	520R	B	21442	4	Calculus 1 for Engineers	LEC	12:00 PM - 12:50 PM	MWF	See Academc Dept		28	Main Campus
71	APPM	1350	549R	B	19917	4	Calculus 1 for Engineers	LEC	01:00 PM - 01:50 PM	MWF	KCEN N101		36	Main Campus
72	APPM	1350	801	B	21435	4	Calculus 1 for Engineers	LEC	02:00 PM - 02:50 PM	MWF	ECCR 108		28	Main Campus
73	APPM	1360	110	B	13734	4	Calculus 2 for Engineers	LEC	08:00 AM - 08:50 AM	MWF	ECCR 150		50	Main Campus
74	APPM	1360	140	B	20743	4	Calculus 2 for Engineers	LEC	11:00 AM - 11:50 AM	MWF	FLMG 155		90	Main Campus
75	APPM	1360	222	B	20368	0	Calculus 2 for Engineers	REC	09:00 AM - 09:50 AM	T	ECCR 110		22	Main Campus
76	APPM	1390	810	B	22844	1	A Game for Calculus	LEC	12:00 PM - 12:50 PM	M	ECES 1B12		15	Main Campus
77	APPM	1390	820	B	22845	1	A Game for Calculus	LEC	10:00 AM - 10:50 AM	M	ECES 1B12		15	Main Campus
78	APPM	1390	831	B	22850	1	A Game for Calculus	LEC	12:00 PM - 12:50 PM	F	ECES 1B12		15	Main Campus
79	APPM	1390	832	B	22930	1	A Game for Calculus	LEC	08:00 AM - 08:50 AM	W	ECES 1B12		15	Main Campus
80	APPM	1390	833	B	22849	1	A Game for Calculus	LEC	10:00 AM - 10:50 AM	F	ECES 1B12		15	Main Campus
81	APPM	1390	841	B	22847	1	A Game for Calculus	LEC	10:00 AM - 10:50 AM	W	ECES 1B12		15	Main Campus
82	APPM	1390	842	B	22848	1	A Game for Calculus	LEC	12:00 PM - 12:50 PM	W	ECES 1B12		15	Main Campus
83	APPM	1390	850	B	22846	1	A Game for Calculus	LEC	08:00 AM - 08:50 AM	M	ECES 1B12		15	Main Campus
84	APPM	2350	141	B	20739	4	Calculus 3 for Engineers	LEC	11:30 AM - 12:20 PM	MWF	AERO 111		80	Main Campus
85	APPM	2350	232	B	21519	0	Calculus 3 for Engineers	REC	10:00 AM - 10:50 AM	TH	ECCR 108		21	Main Campus
86	APPM	2350	243	B	22157	0	Calculus 3 for Engineers	REC	11:00 AM - 11:50 AM	TH	ECCR 131		21	Main Campus
87	APPM	2350	291	B	21521	0	Calculus 3 for Engineers	REC	04:00 PM - 04:50 PM	TH	ECCR 118		21	Main Campus
88	APPM	2350	451	B	21520	0	Calculus 3 for Engineers	REC	01:30 PM - 02:20 PM	TH	AERO N250		20	Main Campus
89	APPM	2350	461	B	33421	0	Calculus 3 for Engineers	REC	02:30 PM - 03:20 PM	TH	AERO N250		20	Main Campus
90	APPM	2350	471	B	33422	0	Calculus 3 for Engineers	REC	03:30 PM - 04:20 PM	TH	AERO N250		20	Main Campus
91	APPM	2350	481	B	33423	0	Calculus 3 for Engineers	REC	04:30 PM - 05:20 PM	TH	AERO N250		20	Main Campus
92	APPM	2350	491	B	33424	0	Calculus 3 for Engineers	REC	05:30 PM - 06:20 PM	TH	AERO N250		20	Main Campus
93	APPM	2360	130	B	21109	4	Intro Diff Eq W/Lin Alg	LEC	10:00 AM - 10:50 AM	MWF	ECCR 245		100	Main Campus
94	APPM	2360	140	B	13768	4	Intro Diff Eq W/Lin Alg	LEC	11:00 AM - 11:50 AM	MWF	ECCR 265		125	Main Campus
95	APPM	2360	150	B	13775	4	Intro Diff Eq W/Lin Alg	LEC	12:00 PM - 12:50 PM	MWF	ECCR 265		100	Main Campus
96	APPM	2360	160	B	20164	4	Intro Diff Eq W/Lin Alg	LEC	01:00 PM - 01:50 PM	MWF	ECCR 245		100	Main Campus
97	APPM	2360	170	B	21522	4	Intro Diff Eq W/Lin Alg	LEC	02:00 PM - 02:50 PM	MWF	DUAN G125		74	Main Campus
98	APPM	2360	234	B	21525	0	Intro Diff Eq W/Lin Alg	REC	10:00 AM - 10:50 AM	TH	ECCR 110		20	Main Campus
99	APPM	2360	253	B	22765	0	Intro Diff Eq W/Lin Alg	REC	12:00 PM - 12:50 PM	TH	ECCR 110		20	Main Campus
100	APPM	2450	1	B	13875	1	Calculus 3 Computer Lab	LEC	11:00 AM - 11:50 AM	T	ECCR143	Gunderman,David	20	Main Campus
101	APPM	2450	2	B	13876	1	Calculus 3 Computer Lab	LEC	12:00 PM - 12:50 PM	T	ECCR143	Gunderman,David	20	Main Campus
102	APPM	2450	3	B	13877	1	Calculus 3 Computer Lab	LEC	03:00 PM - 03:50 PM	T	ECCR143	Yang,Lucia Minah	20	Main Campus
103	APPM	2450	4	B	13949	1	Calculus 3 Computer Lab	LEC	04:00 PM - 04:50 PM	T	ECCR143	Yang,Lucia Minah	20	Main Campus
104	APPM	2460	1	B	13878	1	Diff Eq Computer Lab	LEC	09:00 AM - 09:50 AM	T	ECCR143	Mueller,Joy Noel	20	Main Campus
105	APPM	2460	2	B	13879	1	Diff Eq Computer Lab	LEC	10:00 AM - 10:50 AM	T	ECCR143	Mueller,Joy Noel	20	Main Campus
106	APPM	2460	3	B	13880	1	Diff Eq Computer Lab	LEC	01:00 PM - 01:50 PM	T	ECCR143	Mathews,Nathaniel	20	Main Campus
107	APPM	2460	4	B	13881	1	Diff Eq Computer Lab	LEC	02:00 PM - 02:50 PM	T	ECCR143	Mathews,Nathaniel	20	Main Campus
108	APPM	2720	1	B	33427	3	Open Tpcs in Lower Div APPM	LEC	12:00 PM - 12:50 PM	MWF	KCEN N100	Chang,Silva	35	Main Campus
109	APPM	3010	1	B	20735	3	Chaos in Dynamical Systems	LEC	12:00 PM - 12:50 PM	MWF	ECCR 108		25	Main Campus
110	APPM	3170	1	B	22354	3	Discrete Applied Mathematics	LEC	10:00 AM - 10:50 AM	MWF	ECCR 135		35	Main Campus
111	APPM	3310	1	B	13836	3	Matrix Methods and Application	LEC	03:00 PM - 03:50 PM	MWF	ECCR 150		45	Main Campus
112	APPM	3310	2	B	13837	3	Matrix Methods and Application	LEC	02:00 PM - 02:50 PM	MWF	ECCR 155		45	Main Campus
113	APPM	3310	3	B	33429	3	Matrix Methods and Application	LEC	11:00 AM - 11:50 AM	MWF	ECCR 151		45	Main Campus
114	APPM	3350	1	B	19934	3	Advanced Engineering Calculus	LEC	03:00 PM - 03:50 PM	MWF	ECCR 135		25	Main Campus
115	APPM	3570	1	B	20233	3	Applied Probability	LEC	09:00 AM - 09:50 AM	MWF	BESC 185		30	Main Campus
116	APPM	3570	2	B	22399	3	Applied Probability	LEC	02:00 PM - 02:50 PM	MWF	FLMG 154		30	Main Campus
117	APPM	4380	1	B	13969	3	Modeling in Applied Mathematic	LEC	10:00 AM - 10:50 AM	MWF	ECCR 139		10	Main Campus
118	APPM	4440	1	B	13956	3	Ugrad Applied Analysis 1	LEC	09:00 AM - 09:50 AM	MWF	DUAN G2B47		40	Main Campus
119	APPM	4500	1	B	21921	3	Statistical Collaboration	LEC	04:00 PM - 05:15 PM	TTH	STAD 262A/B	Vance,Eric	10	Main Campus
120	APPM	4510	1	B	35039	3	High Dim Data and Dyn Syst	LEC	09:00 AM - 09:50 AM	MWF	VAC 1B90	Grooms,Ian Gregory	20	Main Campus
121	APPM	4530	2	B	21933	3	Stoch Analysis for Finance	LEC	11:00 AM - 11:50 AM	MWF	ECCR 139	Huang,Yu-Jui	10	Main Campus
122	APPM	4650	1	B	17247	3	Intermed Numerical Analysis 1	LEC	09:00 AM - 09:50 AM	MWF	FLMG 102		30	Main Campus
123	APPM	4650	2	B	33430	3	Intermed Numerical Analysis 1	LEC	01:00 PM - 01:50 PM	MWF	ECCR 155		30	Main Campus
124	APPM	4720	1	B	21141	3	Open Tpcs: Applied Mathematics	LEC	08:00 AM - 08:50 AM	MWF	ECCR 151	Appelo,Daniel E	15	Main Campus
125	APPM	4720	2	B	34689	3	Open Tpcs: Applied Mathematics	LEC	10:00 AM - 10:50 AM	MWF	ECCR 131	Restrepo,Juan G	20	Main Campus
126	APPM	5380	1	B	13970	3	Modeling in Applied Mathematic	LEC	10:00 AM - 10:50 AM	MWF	ECCR 139		10	Main Campus
127	APPM	5430	1	B	28907	3	Applctns Cmplx Variables	LEC	03:00 PM - 04:15 PM	MW	KCEN S163		10	Main Campus
128	APPM	5440	2	B	22715	3	Applied Analysis 1	LEC	10:00 AM - 10:50 AM	MWF	ECCR 118		25	Main Campus
129	APPM	5460	1	B	32921	3	Dyn Sys/Diff Eq/Chaos	LEC	09:00 AM - 09:50 AM	MWF	FLMG 103		30	Main Campus
130	APPM	5470	1	B	13973	3	Mthds APPM: Part Diff/Ingrl Eq	LEC	11:00 AM - 11:50 AM	MWF	KCEN N101	Bortz,David Matthew	25	Main Campus
131	APPM	5500	1	B	21922	3	Statistical Collaboration	LEC	04:00 PM - 05:15 PM	TTH	STAD 262A/B	Vance,Eric	10	Main Campus
132	APPM	5510	1	B	35040	3	High Dim Data and Dyn Syst	LEC	09:00 AM - 09:50 AM	MWF	VAC 1B90	Grooms,Ian Gregory	10	Main Campus
133	APPM	5530	2	B	21934	3	Stoch Analysis for Finance	LEC	11:00 AM - 11:50 AM	MWF	ECCR 139	Huang,Yu-Jui	10	Main Campus
134	APPM	5600	1	B	19925	3	Numerical Analysis 1	LEC	09:00 AM - 09:50 AM	MWF	FLMG 104	Appelo,Daniel E	30	Main Campus
135	APPM	5620	1	B	34413	3	Numerical Linear Algebra	LEC	11:00 AM - 12:15 PM	TTH	KCEN S163		15	Main Campus
136	APPM	5720	1	B	22716	3	Open Tpcs: Applied Mathematics	LEC	08:00 AM - 08:50 AM	MWF	ECCR 151	Appelo,Daniel E	15	Main Campus
137	APPM	5720	2	B	34695	3	Open Tpcs: Applied Mathematics	LEC	10:00 AM - 10:50 AM	MWF	ECCR 131	Restrepo,Juan G	8	Main Campus
138	APPM	5720	15	B	35048	3	Open Tpcs: Applied Mathematics	LEC	12:00 PM - 12:50 PM	MWF	MKNA 204		15	Main Campus
139	APPM	7400	1	B	21867	1	Open Tpcs: Applied Mathematics	LEC	11:00 AM - 11:50 AM	TH	ECCR 257	Huang,Yu-Jui	10	Main Campus
140	APPM	7400	2	B	33432	3	Open Tpcs: Applied Mathematics	LEC	11:00 AM - 11:50 AM	MWF	KCEN N100		30	Main Campus
141	APPM	7400	3	B	34715	3	Open Tpcs: Applied Mathematics	LEC	03:00 PM - 04:15 PM	MW	DUAN G2B21	Beylkin,Gregory	10	Main Campus
142	APPM	7400	7	B	22929	1	Open Tpcs: Applied Mathematics	LEC	11:00 AM - 11:50 AM	T	ECCR 257	Julien,Keith	20	Main Campus
143	APPM	8000	1	B	13950	1	Colloquium/Applied Mathematics	SEM	03:00 PM - 04:30 PM	F	ECCR 245		15	Main Campus
144	APPM	8100	1	B	17598	1	Sem-Dynamical Systems	SEM	02:00 PM - 02:50 PM	TH	ECOT 226	Restrepo,Juan G	10	Main Campus
145	APPM	8300	2	B	21993	1-3	Nonlinear Waves Seminar	SEM	04:00 PM - 04:50 PM	T		Ablowitz,Mark J	10	Main Campus
146	APPM	8400	1	B	21114	1	Mathematical Biology Seminar	SEM	04:00 PM - 04:50 PM	F	ECCR 1B08	Bortz,David Matthew	15	Main Campus
147	APPM	8500	1	B	21462	1	Stats, Opt and ML Seminar	SEM	03:30 PM - 04:30 PM	T	FLMG 103		15	Main Campus
148	ARAB	1010	1	B	14600	5	Beginning Arabic 1	LEC	09:00 AM - 09:50 AM	M-F	HLMS 152	Muhammed,Randa	19	Main Campus
149	ARAB	1010	2	B	14601	5	Beginning Arabic 1	LEC	10:00 AM - 10:50 AM	M-F	HLMS 152	Muhammed,Randa	19	Main Campus
150	ARAB	1010	3	B	19960	5	Beginning Arabic 1	LEC	11:00 AM - 11:50 AM	M-F	HLMS 145	Muhammed,Randa	19	Main Campus
151	ARAB	1010	4	B	33520	5	Beginning Arabic 1	LEC	12:00 PM - 12:50 PM	M-F	HLMS 152	Muhammed,Randa	0	Main Campus
152	ARAB	2110	1	B	21111	5	Intermediate Arabic 1	LEC	11:00 AM - 11:50 AM	M-F	CHEM 131	Attwa,Mona Farrag	19	Main Campus
153	ARAB	2110	2	B	21552	5	Intermediate Arabic 1	LEC	12:00 PM - 12:50 PM	M-F	CHEM 133	Attwa,Mona Farrag	19	Main Campus
154	ARAB	2320	1	B	33770	3	Muslim World, 600-1250	LEC	12:30 PM - 01:45 PM	TTH	HUMN 1B90	Catlos,Brian	20	Main Campus
155	ARAB	3110	1	B	14602	3	Advanced Arabic 1	LEC	09:00 AM - 09:50 AM	MWF	HLMS 145	Attwa,Mona Farrag	19	Main Campus
156	ARAB	3231	1	B	33521	3	Travel Writing in Arabic Lit	LEC	10:00 AM - 10:50 AM	MWF	DUAN G2B21	Adil,Sabahat Fatima	30	Main Campus
157	ARAB	3241	1	B	33522	3	Art in Islam	LEC	02:00 PM - 02:50 PM	MWF	CLRE 209	Adil,Sabahat Fatima	30	Main Campus
158	ARAB	3330	1	B	22220	3	The Arabic Novel	LEC	08:00 AM - 09:15 AM	TTH	HUMN 190	Thompson,Thomas	30	Main Campus
159	ARTF	5004	1	B	28931	3	Topics in Film Theory	SEM	04:00 PM - 06:50 PM	W	ATLS 102	Shell,Hanna Rose	2	Main Campus
160	ARTF	5004	1	B	28931	3	Topics in Film Theory	SEM	09:30 AM - 10:45 AM	TTH	ATLS 102	Shell,Hanna Rose	2	Main Campus
161	ARTF	5004	1	B	28931	3	Topics in Film Theory	SEM	09:30 AM - 10:45 AM	TTH	ATLS 102	Shell,Hanna Rose	2	Main Campus
162	ARTF	5004	1	B	28931	3	Topics in Film Theory	SEM	04:00 PM - 06:50 PM	W	ATLS 102	Shell,Hanna Rose	2	Main Campus
163	ARTF	5004	1	B	28931	3	Topics in Film Theory	SEM	04:00 PM - 06:50 PM	W	ATLS 102	Shell,Hanna Rose	2	Main Campus
164	ARTF	5004	1	B	28931	3	Topics in Film Theory	SEM	09:30 AM - 10:45 AM	TTH	ATLS 102	Shell,Hanna Rose	2	Main Campus
165	ARTF	5010	1	B	21785	3	Topics in Film Production	LEC	03:30 PM - 05:20 PM	TTH	ATLS 342	Liotta,Jeanne M.	3	Main Campus
166	ARTF	5010	1	B	21785	3	Topics in Film Production	LEC	03:30 PM - 05:20 PM	TTH	ATLS 342	Liotta,Jeanne M.	3	Main Campus
167	ARTF	5010	1	B	21785	3	Topics in Film Production	LEC	03:30 PM - 05:20 PM	TTH	ATLS 342	Liotta,Jeanne M.	3	Main Campus
168	ARTF	5021	1	B	22736	3	Directing/Acting for Camera	LEC	10:00 AM - 11:50 AM	MW	MCKY 2B27	Alshaibi,Usama Hameed	3	Main Campus
169	ARTF	5021	1	B	22736	3	Directing/Acting for Camera	LEC	10:00 AM - 11:50 AM	MW	MCKY 2B27	Alshaibi,Usama Hameed	3	Main Campus
170	ARTF	5021	1	B	22736	3	Directing/Acting for Camera	LEC	10:00 AM - 11:50 AM	MW	MCKY 2B27	Alshaibi,Usama Hameed	3	Main Campus
171	ARTF	5024	1	B	19530	3	Advnced Research Seminar	SEM	-				10	Main Campus
172	ARTF	5024	1	B	19530	3	Advnced Research Seminar	SEM	03:30 PM - 06:45 PM	MW	ATLS 1B29	Barlow,Melinda B	10	Main Campus
173	ARTF	5024	1	B	19530	3	Advnced Research Seminar	SEM	-				10	Main Campus
174	ARTF	5024	1	B	19530	3	Advnced Research Seminar	SEM	03:30 PM - 06:45 PM	MW	ATLS 1B29	Barlow,Melinda B	10	Main Campus
175	ARTF	5024	1	B	19530	3	Advnced Research Seminar	SEM	-				10	Main Campus
176	ARTF	5024	1	B	19530	3	Advnced Research Seminar	SEM	03:30 PM - 06:45 PM	MW	ATLS 1B29	Barlow,Melinda B	10	Main Campus
177	ARTF	5040	1	B	36146	3	Advanced Analog Alchemy	LEC	04:00 PM - 07:20 PM	M	MCKY 2B27	Busti,Andrew Michael	2	Main Campus
178	ARTF	5040	1	B	36146	3	Advanced Analog Alchemy	LEC	04:00 PM - 07:20 PM	M	MCKY 2B27	Busti,Andrew Michael	2	Main Campus
179	ARTF	5040	1	B	36146	3	Advanced Analog Alchemy	LEC	04:00 PM - 07:20 PM	M	MCKY 2B27	Busti,Andrew Michael	2	Main Campus
180	ARTF	5200	1	B	22656	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	2	Main Campus
181	ARTF	5200	1	B	22656	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	2	Main Campus
182	ARTF	5200	1	B	22656	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	2	Main Campus
183	ARTF	5400	1	B	21364	3	Digital Post-Production	LEC	02:00 PM - 03:15 PM	TTH	ATLS 310	Osborn,Christopher	3	Main Campus
184	ARTF	5400	1	B	21364	3	Digital Post-Production	LEC	02:00 PM - 03:15 PM	TTH	ATLS 310	Osborn,Christopher	3	Main Campus
185	ARTF	5400	1	B	21364	3	Digital Post-Production	LEC	02:00 PM - 03:15 PM	TTH	ATLS 310	Osborn,Christopher	3	Main Campus
186	ARTF	5500	1	B	16399	3	Cinema Production 2	LEC	01:00 PM - 03:15 PM	MW	ATLS 342	Gatten,David Edward	3	Main Campus
187	ARTF	5500	1	B	16399	3	Cinema Production 2	LEC	01:00 PM - 03:15 PM	MW	ATLS 342	Gatten,David Edward	3	Main Campus
188	ARTF	5500	1	B	16399	3	Cinema Production 2	LEC	01:00 PM - 03:15 PM	MW	ATLS 342	Gatten,David Edward	3	Main Campus
189	ARTH	1300	100	B	14528	3	History of World Art 1	LEC	11:00 AM - 11:50 AM	MWF	MATH 100	de Stecher,Annette W	425	Main Campus
190	ARTH	1300	111	B	14555	3	History of World Art 1	REC	01:00 PM - 01:50 PM	TH	VAC 485		30	Main Campus
191	ARTH	1300	113	B	14562	3	History of World Art 1	REC	02:00 PM - 02:50 PM	TH	VAC 485		30	Main Campus
192	ARTH	1300	115	B	14563	3	History of World Art 1	REC	03:00 PM - 03:50 PM	TH	VAC 485		30	Main Campus
193	ARTH	1509	100	B	22204	3	Trash and Treasure	LEC	01:00 PM - 01:50 PM	MW	HUMN 1B50	Dusinberre,Elspeth Rogers M.	134	Main Campus
194	ARTH	1509	101	B	22375	3	Trash and Treasure	REC	04:00 PM - 04:50 PM	W	STAD 135	Dusinberre,Elspeth Rogers M.	9	Main Campus
195	ARTH	2049	1	B	20879	3	Intro Roman Art & Architecture	LEC	11:00 AM - 11:50 AM	MWF	VAC 1B88	Lansford,Edwin Tyler	17	Main Campus
196	ARTH	3109	1	B	20096	3	Art in Contemporary Society	SEM	12:30 PM - 02:50 PM	F	VAC 1B23	Rivera Jr,George F	20	Main Campus
197	ARTH	3519	1	B	32838	3	Modern Arch 1780-1960	LEC	03:30 PM - 04:45 PM	TTH	VAC 308	Nauman,Robert Allen	30	Main Campus
198	ARTH	3929	2	B	22310	3	Spc Tpcs: Art History	LEC	-				30	Main Campus
199	ARTH	4029	2	B	22933	1	Art History Research Methods	LEC	11:00 AM - 12:15 PM	T	LIBR E260A	Watkins,Alexander Charlton	10	Main Campus
200	ARTH	4099	1	B	33192	3	Ancient Greek Sculpture	LEC	10:00 AM - 10:50 AM	MWF	VAC 1B88	James,Sarah Anne	13	Main Campus
201	ARTH	4109	1	B	33157	3	Ancient Italian Painting	LEC	03:30 PM - 04:45 PM	TTH	GUGG 2	Conlin,Diane L	11	Main Campus
202	ARTH	4919	1	B	21424	3	Capstone Sem: Tpcs Art Hist	SEM	11:00 AM - 12:15 PM	TTH	VAC 308	de Stecher,Annette W	15	Main Campus
203	ARTH	4919	2	B	35167	3	Capstone Sem: Tpcs Art Hist	SEM	12:30 PM - 01:45 PM	TTH	VAC 303	Nauman,Robert Allen	15	Main Campus
204	ARTH	4929	1	B	21952	3	Special Topics in Art History	LEC	11:00 AM - 12:15 PM		VAC 308		30	Main Campus
205	ARTH	4929	2	B	22016	3	Special Topics in Art History	LEC	02:00 PM - 03:15 PM	TTH	VAC 303	Nauman,Robert Allen	30	Main Campus
206	ARTH	4929	3	B	22769	3	Special Topics in Art History	LEC	03:00 PM - 04:45 PM	W	VAC 303	Nauman,Robert Allen	15	Main Campus
207	ARTH	4929	4	B	28949	3	Special Topics in Art History	LEC	09:30 AM - 10:45 AM	TTH	VAC 308	Alhadeff,Albert	30	Main Campus
208	ARTH	5029	2	B	22934	1	Art History Research Methods	LEC	11:00 AM - 12:15 PM	T	LIBR E260A	Watkins,Alexander Charlton	15	Main Campus
209	ARTH	5099	1	B	33194	3	Ancient Greek Sculpture	LEC	10:00 AM - 10:50 AM	MWF	VAC 1B88	James,Sarah Anne	3	Main Campus
210	ARTH	5109	1	B	33159	3	Ancient Italian Painting	LEC	03:30 PM - 04:45 PM	TTH	GUGG 2	Conlin,Diane L	3	Main Campus
211	ARTH	5929	2	B	28933	3	Special Topics in Art History	SEM	02:00 PM - 04:50 PM	T	VAC 208	Saska,Hope	8	Main Campus
212	ARTH	5929	8	B	22104	3	Special Topics in Art History	SEM	09:00 AM - 11:50 AM	T	HEND 212	Li,Jingchun	7	Main Campus
213	ARTH	6929	1	B	21935	3	Sem/Theories-Art History	SEM	10:00 AM - 12:30 PM	T	VAC 455	Cordova,James M.	15	Main Campus
214	ARTH	6929	2	B	28948	3	Sem/Theories-Art History	SEM	01:00 PM - 01:50 PM	M	VAC 455	Su,Stephanie	20	Main Campus
215	ARTH	6939	1	B	20998	3	Grd Sem-Open Tpc Art History	SEM	01:00 PM - 03:30 PM	M	VAC 303	de Stecher,Annette W	15	Main Campus
216	ARTH	6939	2	B	32840	3	Grd Sem-Open Tpc Art History	SEM	01:00 PM - 03:30 PM	TH	VAC 455	Alhadeff,Albert	15	Main Campus
217	ARTS	1003	1	B	21437	3	Printmaking for Non-Mjrs	STU	09:30 AM - 11:50 AM	TTH	VAC 390		15	Main Campus
218	ARTS	1003	3	B	22317	3	Printmaking for Non-Mjrs	STU	06:30 PM - 08:50 PM	TTH	VAC 390	Restaino,Roberta	18	Main Campus
219	ARTS	1003	4	B	22649	3	Printmaking for Non-Mjrs	STU	09:00 AM - 01:20 PM	F	VAC 390	Restaino,Roberta	18	Main Campus
220	ARTS	1010	7	B	22739	3	Intro to Studio Art	STU	05:00 PM - 05:50 PM	T	VAC 1B20		23	Main Campus
221	ARTS	1010	7	B	22739	3	Intro to Studio Art	STU	09:00 AM - 11:20 AM	MW	VAC 172		23	Main Campus
222	ARTS	1010	8	B	22740	3	Intro to Studio Art	STU	05:00 PM - 05:50 PM	T	VAC 1B20		23	Main Campus
223	ARTS	1010	8	B	22740	3	Intro to Studio Art	STU	11:30 AM - 01:50 PM	MW	VAC 172		23	Main Campus
224	ARTS	1010	9	B	22741	3	Intro to Studio Art	STU	05:00 PM - 05:50 PM	T	VAC 1B20		23	Main Campus
225	ARTS	1010	9	B	22741	3	Intro to Studio Art	STU	02:00 PM - 04:20 PM	MW	VAC 172		23	Main Campus
226	ARTS	1010	10	B	22742	3	Intro to Studio Art	STU	05:00 PM - 05:50 PM	T	VAC 1B20		23	Main Campus
227	ARTS	1010	10	B	22742	3	Intro to Studio Art	STU	09:00 AM - 11:20 AM	TTH	VAC 172		23	Main Campus
228	ARTS	1010	11	B	22743	3	Intro to Studio Art	STU	11:30 AM - 01:50 PM	TTH	VAC 172		23	Main Campus
229	ARTS	1010	11	B	22743	3	Intro to Studio Art	STU	05:00 PM - 05:50 PM	T	VAC 1B20		23	Main Campus
230	ARTS	1012	1	B	14622	3	Drawing for Non-Majors	STU	10:00 AM - 02:40 PM	F	VAC 474		18	Main Campus
231	ARTS	1012	2	B	20829	3	Drawing for Non-Majors	STU	12:30 PM - 02:50 PM	MW	VAC 474		18	Main Campus
232	ARTS	1020	1	B	14520	3	Intro to Studio Art 2	STU	05:00 PM - 05:50 PM	TH	VAC 1B20		23	Main Campus
233	ARTS	1020	1	B	14520	3	Intro to Studio Art 2	STU	05:00 PM - 07:20 PM	MW	VAC 172		23	Main Campus
234	ARTS	1020	6	B	22771	3	Intro to Studio Art 2	STU	02:00 PM - 04:20 PM	TTH	VAC 172		23	Main Campus
235	ARTS	1020	6	B	22771	3	Intro to Studio Art 2	STU	05:00 PM - 05:50 PM	TH	VAC 1B20		23	Main Campus
236	ARTS	1020	8	B	22870	3	Intro to Studio Art 2	STU	05:00 PM - 05:50 PM	TH	VAC 1B20		23	Main Campus
237	ARTS	1020	8	B	22870	3	Intro to Studio Art 2	STU	06:00 PM - 07:20 PM	TH	VAC 172		23	Main Campus
238	ARTS	1020	8	B	22870	3	Intro to Studio Art 2	STU	05:00 PM - 05:50 PM	T	VAC 172		23	Main Campus
239	ARTS	1171	1	B	21142	3	Photography for Non-Mjrs	STU	03:30 PM - 05:50 PM	MW	VAC 1B03		18	Main Campus
240	ARTS	1212	1	B	14623	3	Painting for Non-Majors	STU	10:00 AM - 02:40 PM	F	VAC 474		18	Main Campus
241	ARTS	1212	2	B	21145	3	Painting for Non-Majors	STU	04:00 PM - 06:20 PM	MW	VAC 474		18	Main Campus
242	ARTS	1514	1	B	21081	3	Sculpture for Non-Majors	STU	09:00 AM - 11:20 AM	TTH	VAC 184		8	Main Campus
243	ARTS	1514	2	B	22903	3	Sculpture for Non-Majors	STU	12:30 PM - 02:50 PM	TTH	VAC 184		18	Main Campus
244	ARTS	1875	1	B	21026	3	Ceramics for Non-Majors	STU	06:00 PM - 08:20 PM	TTH	VAC 171		20	Main Campus
245	ARTS	2022	1	B	21839	3	Beginning Drawing	STU	09:30 AM - 11:50 AM	MW	VAC 474		18	Main Campus
246	ARTS	2085	1	B	14643	3	Ceramics 2: Handbuilding	STU	01:00 PM - 03:20 PM	MW	VAC 175		20	Main Campus
247	ARTS	2095	1	B	14648	3	Ceramics 2: Wheelthrowing	STU	09:00 AM - 11:20 AM	MW	VAC 171		20	Main Campus
248	ARTS	2126	1	B	14661	3	Digital Art 1	STU	01:00 PM - 01:50 PM	MW	VAC 1B23		18	Main Campus
249	ARTS	2126	2	B	36437	3	Digital Art 1	STU	06:00 PM - 08:20 PM	MW	VAC 1B23		20	Main Campus
250	ARTS	2171	1	B	21770	3	Photography 1	STU	03:30 PM - 05:50 PM	TTH	VAC 1B03		18	Main Campus
251	ARTS	2171	2	B	14610	3	Photography 1	STU	09:00 AM - 11:20 AM	MW	VAC 1B03		18	Main Campus
252	ARTS	2191	1	B	14611	3	Photography 2	STU	09:30 AM - 11:50 AM	MW	VAC 1B97	Chong,Albert	18	Main Campus
253	ARTS	2222	1	B	21724	3	Beginning Painting	STU	10:00 AM - 02:40 PM	F	VAC 471	Palecek,Jeremiah	18	Main Campus
254	ARTS	2303	1	B	22045	3	Beginning Relief	STU	03:30 PM - 05:50 PM	TTH	VAC 390	Christie,Matt	4	Main Campus
255	ARTS	2384	1	B	22892	3	Ephemeral Sculpture 1	STU	09:00 AM - 11:20 AM	MW	VAC 276	Saxton,Richard W	8	Main Campus
256	ARTS	2403	1	B	21673	3	Beginning Intaglio	STU	12:30 PM - 02:50 PM	TTH	VAC 390	Christie,Matt	4	Main Campus
257	ARTS	2413	1	B	20428	3	Beginning Lithography	STU	09:30 AM - 10:45 AM	TTH	VAC 395	Christie,Matt	4	Main Campus
258	ARTS	2423	1	B	22886	3	Beginning Screenprinting	STU	12:30 PM - 02:50 PM	MW	VAC 390	Yazzie,Melanie Andrew	5	Main Campus
259	ARTS	2504	1	B	14626	3	Basic Sculpture:Material/Techs	STU	09:00 AM - 11:20 AM	TTH	VAC 184		4	Main Campus
260	ARTS	3012	1	B	22770	3	Figure Drawing	STU	12:30 PM - 02:50 PM	TTH	VAC 475		18	Main Campus
261	ARTS	3017	1	B	21773	3	Special Topics in Studio	STU	09:30 AM - 11:50 AM	TTH	VAC 471	Womack,Mike F	18	Main Campus
262	ARTS	3022	1	B	21725	3	Intermediate Drawing	STU	09:30 AM - 11:50 AM	TTH	VAC 474		18	Main Campus
263	ARTS	3085	1	B	14652	3	Ceramics 3	STU	09:30 AM - 11:50 AM	TTH	VAC 175	Chamberlin,Scott H	20	Main Campus
264	ARTS	3097	1	B	32879	3	Sp Topics - Non Studio	LEC	09:30 AM - 11:50 AM	F	VAC 455	Russo,Martha Louise	12	Main Campus
265	ARTS	3191	1	B	14612	3	Photography 3	STU	01:00 PM - 03:20 PM	MW	VAC 1B97	Chong,Albert	18	Main Campus
266	ARTS	3222	1	B	21726	3	Intermediate Painting	STU	09:30 AM - 11:50 AM	TTH	VAC 475	Gregorio,Alvin P	18	Main Campus
267	ARTS	3303	1	B	22046	3	Relief 1	STU	03:30 PM - 05:50 PM	TTH	VAC 390	Christie,Matt	4	Main Campus
268	ARTS	3354	1	B	32849	3	Sculpture in Wood	STU	10:00 AM - 02:40 PM	F	VAC 276		12	Main Campus
269	ARTS	3384	1	B	22893	3	Ephemeral Sculpture 2	STU	09:00 AM - 11:20 AM	MW	VAC 276	Saxton,Richard W	4	Main Campus
270	ARTS	3403	1	B	21674	3	Intaglio 1	STU	12:30 PM - 02:50 PM	TTH	VAC 390	Christie,Matt	4	Main Campus
271	ARTS	3413	1	B	14743	3	Lithography 1	STU	09:30 AM - 10:45 AM	TTH	VAC 395	Christie,Matt	4	Main Campus
272	ARTS	3423	2	B	22887	3	Screen Printing 1	STU	12:30 PM - 02:50 PM	MW	VAC 390	Yazzie,Melanie Andrew	5	Main Campus
273	ARTS	3453	1	B	29002	3	Monotype 1	STU	09:30 AM - 11:50 AM	MW	VAC 390	Yazzie,Melanie Andrew	4	Main Campus
274	ARTS	4002	1	B	14624	3	Adv Drawing/Portfolio	STU	12:30 PM - 02:50 PM	TTH	VAC 471	Gregorio,Alvin P	18	Main Campus
275	ARTS	4017	1	B	19046	3	Special Topics in Studio Arts	STU	09:00 AM - 11:50 AM	MW	VAC 1B17	Valdovino,Luis Hector	10	Main Campus
276	ARTS	4017	2	B	34905	3	Special Topics in Studio Arts	STU	12:30 PM - 02:50 PM	TTH	VAC 475		18	Main Campus
277	ARTS	4085	1	B	14659	3	Ceramics 4	STU	09:00 AM - 11:20 AM	MW	VAC 155		20	Main Campus
278	ARTS	4095	1	B	22857	3	Special Topics in Ceramics	SEM	01:00 PM - 03:50 PM	W	VAC 455		5	Main Campus
279	ARTS	4097	1	B	21825	3	Special Topics-Non-Studio	LEC	12:30 PM - 02:50 PM	F	VAC 455	Sweetman,Alex John	8	Main Campus
280	ARTS	4126	1	B	19473	3	Digital Art 2	STU	09:30 AM - 11:50 AM	TTH	VAC 1B23	Espinosa,Corrina Maria	14	Main Campus
281	ARTS	4126	1	B	19473	3	Digital Art 2	STU	-				14	Main Campus
282	ARTS	4126	2	B	36423	3	Digital Art 2	STU	03:30 PM - 05:50 PM	TTH	VAC 1B23		15	Main Campus
283	ARTS	4154	1	B	32850	3	Metalsmithing 1	STU	09:00 AM - 11:20 AM	MW	VAC 290A	Roth,Yumi J	8	Main Campus
284	ARTS	4161	1	B	21669	3	Photography 4	STU	09:30 AM - 11:50 AM	TTH	VAC 1B97	Walker,Melanie J	14	Main Campus
285	ARTS	4171	1	B	14737	3	New Directions in Photography	STU	12:30 PM - 02:50 PM	TTH	VAC 1B03	Walker,Melanie J	8	Main Campus
286	ARTS	4217	1	B	28999	3	Art and Race/Ethnicity	SEM	03:30 PM - 05:50 PM	F	VAC 1B23	Rivera Jr,George F	14	Main Campus
287	ARTS	4246	1	B	14874	3	Begin Video Production	STU	-	MW	VAC 1B17	Valdovino,Luis Hector	10	Main Campus
288	ARTS	4303	1	B	22047	3	Relief 2	STU	03:30 PM - 05:50 PM	TTH	VAC 390	Christie,Matt	3	Main Campus
289	ARTS	4403	1	B	21675	3	Intaglio 2	STU	12:30 PM - 02:50 PM	TTH	VAC 390	Christie,Matt	3	Main Campus
290	ARTS	4413	1	B	14744	3	Lithography 2	STU	09:30 AM - 10:45 AM	TTH	VAC 395	Christie,Matt	3	Main Campus
291	ARTS	4423	2	B	22888	3	Screen Printing 2	STU	12:30 PM - 02:50 PM	MW	VAC 390	Yazzie,Melanie Andrew	3	Main Campus
292	ARTS	4453	1	B	29003	3	Monotype 2	STU	09:30 AM - 11:50 AM	MW	VAC 390	Yazzie,Melanie Andrew	3	Main Campus
293	ARTS	4504	1	B	21668	3	Advanced Sculpture Studio	STU	01:00 PM - 03:20 PM	MW	VAC 276	Roth,Yumi J	8	Main Campus
294	ARTS	4641	1	B	22005	3	String Instrument Building	STU	09:00 AM - 11:50 AM	MW	VAC 271	Rumley,William Jude	12	Main Campus
295	ARTS	4717	811	B	20420	1-3	Studio Critique	STU	-	TBA		Suh,Misuhng	25	Main Campus
296	ARTS	4717	812	B	20421	1-3	Studio Critique	STU	-	TBA		Womack,Mike F	25	Main Campus
297	ARTS	4717	813	B	20422	1-3	Studio Critique	STU	-	TBA		Stevens,Charlene	25	Main Campus
298	ARTS	4717	814	B	20423	1-3	Studio Critique	STU	-	TBA		Roth,Yumi J	25	Main Campus
299	ARTS	4717	815	B	20424	1-3	Studio Critique	STU	-	TBA		Quinn,Jeanne Ellen	25	Main Campus
300	ARTS	4717	816	B	20425	1-3	Studio Critique	STU	-	TBA		Beitz,Michael D	25	Main Campus
301	ARTS	4717	817	B	20426	1-3	Studio Critique	STU	-	TBA		Rivera Jr,George F	25	Main Campus
302	ARTS	5017	2	B	19047	3	Special Topics in Studio Arts	STU	09:00 AM - 11:50 AM	MW	VAC 1B17	Valdovino,Luis Hector	2	Main Campus
303	ARTS	5075	1	B	14660	3	Graduate Ceramics	STU	01:00 PM - 03:20 PM	TTH	VAC 455	Chamberlin,Scott H	15	Main Campus
304	ARTS	5095	1	B	22858	3	Grad Spc Tpcs: Ceramics	SEM	01:00 PM - 03:50 PM	W	VAC 455		10	Main Campus
305	ARTS	5097	1	B	21847	3	Special Topics-Non-Studio	LEC	12:30 PM - 02:50 PM	F	VAC 455	Sweetman,Alex John	4	Main Campus
306	ARTS	5097	2	B	34584	3	Special Topics-Non-Studio	LEC	09:30 AM - 11:50 AM	F	VAC 455	Russo,Martha Louise	2	Main Campus
307	ARTS	5117	1	B	19478	3	Graduate Art Seminar	SEM	12:30 PM - 02:50 PM	W	VAC 303	Shell,Hanna Rose	15	Main Campus
308	ARTS	5117	1	B	19478	3	Graduate Art Seminar	SEM	06:00 PM - 09:00 PM	T	VAC 1B20		15	Main Campus
309	ARTS	5126	1	B	19609	3	Graduate Digital Art 2	STU	09:30 AM - 11:50 AM	TTH	VAC 1B23	Espinosa,Corrina Maria	4	Main Campus
310	ARTS	5126	1	B	19609	3	Graduate Digital Art 2	STU	-				4	Main Campus
311	ARTS	5126	2	B	36424	3	Graduate Digital Art 2	STU	03:30 PM - 05:50 PM	TTH	VAC 1B23		5	Main Campus
312	ARTS	5154	1	B	32851	3	Metalsmithing 1	STU	09:00 AM - 11:20 AM	MW	VAC 290A	Roth,Yumi J	2	Main Campus
313	ARTS	5161	1	B	21670	3	Graduate Photography	STU	09:30 AM - 11:50 AM	TTH	VAC 1B97	Walker,Melanie J	4	Main Campus
314	ARTS	5171	1	B	14738	3	New Directions in Photography	STU	12:30 PM - 02:50 PM	TTH	VAC 1B03	Walker,Melanie J	4	Main Campus
315	ARTS	5202	1	B	18352	3	Graduate Painting	STU	09:30 AM - 11:50 AM	MW	VAC 475		12	Main Campus
316	ARTS	5217	1	B	29000	3	Art and Race/Ethnicity	SEM	03:30 PM - 05:50 PM	F	VAC 1B23	Rivera Jr,George F	6	Main Campus
317	ARTS	5246	1	B	14875	3	Grad Begin Video Prod	STU	-	MW	VAC 1B17	Valdovino,Luis Hector	2	Main Campus
318	ARTS	5303	1	B	22048	3	Graduate Relief	STU	03:30 PM - 05:50 PM	TTH	VAC 390	Christie,Matt	1	Main Campus
319	ARTS	5403	1	B	21676	3	Graduate Intaglio	STU	12:30 PM - 02:50 PM	TTH	VAC 390	Christie,Matt	1	Main Campus
320	ARTS	5413	1	B	19048	3	Graduate Lithography	STU	09:30 AM - 10:45 AM	TTH	VAC 395	Christie,Matt	1	Main Campus
321	ARTS	5453	1	B	29004	3	Grad Monotype Printing	STU	09:30 AM - 11:50 AM	MW	VAC 390	Yazzie,Melanie Andrew	1	Main Campus
322	ARTS	5504	1	B	21018	3	Graduate Sculpture	STU	01:00 PM - 03:20 PM	MW	VAC 287	Saxton,Richard W	12	Main Campus
323	ARTS	5641	1	B	22006	3	String Instrument Building	STU	09:00 AM - 11:50 AM	MW	VAC 271	Rumley,William Jude	12	Main Campus
324	ARTS	5717	801	B	18405	1-3	Studio Critique	STU	-	TBA		Chong,Albert	20	Main Campus
325	ARTS	5717	802	B	18406	1-3	Studio Critique	STU	-	TBA		Walker,Melanie J	20	Main Campus
326	ARTS	5717	803	B	18407	1-3	Studio Critique	STU	-	TBA		Roth,Yumi J	20	Main Campus
327	ARTS	5717	804	B	18408	1-3	Studio Critique	STU	-	TBA			20	Main Campus
328	ARTS	5717	805	B	18413	1-3	Studio Critique	STU	-	TBA		Chamberlin,Scott H	20	Main Campus
329	ARTS	5717	806	B	18414	1-3	Studio Critique	STU	-			Quinn,Jeanne Ellen	20	Main Campus
330	ARTS	5717	807	B	18415	1-3	Studio Critique	STU	-			Amerika,Mark	20	Main Campus
331	ARTS	5717	808	B	18435	1-3	Studio Critique	STU	-	TBA		Dickey,Kimberly P	20	Main Campus
332	ARTS	5717	809	B	19098	1-3	Studio Critique	STU	-	TBA		Gregorio,Alvin P	20	Main Campus
333	ARTS	5717	810	B	19099	1-3	Studio Critique	STU	-	TBA		Rivera Jr,George F	20	Main Campus
334	ARTS	5717	811	B	19100	1-3	Studio Critique	STU	-	TBA		Saxton,Richard W	20	Main Campus
335	ARTS	5717	812	B	19101	1-3	Studio Critique	STU	-	TBA		Stevens,Charlene	20	Main Campus
336	ARTS	5717	813	B	19102	1-3	Studio Critique	STU	-	TBA		Sweetman,Alex John	20	Main Campus
337	ARTS	5717	814	B	19103	1-3	Studio Critique	STU	-	TBA		Valdovino,Luis Hector	20	Main Campus
338	ARTS	5717	815	B	19104	1-3	Studio Critique	STU	-	TBA		Womack,Mike F	20	Main Campus
339	ARTS	5717	816	B	19580	1-3	Studio Critique	STU	-	TBA		Duresse-Stimilli,Francoise	20	Main Campus
340	ARTS	5717	817	B	19581	1-3	Studio Critique	STU	-	TBA		Yazzie,Melanie Andrew	20	Main Campus
341	ARSC	1080	310R	B	13916	4	College Writing and Research	LEC	01:00 PM - 02:15 PM	MW	FLMG 150	Miyamoto,Marlene Elsa	18	Main Campus
342	ARSC	1080	310R	B	13916	4	College Writing and Research	LEC	01:00 PM - 01:50 PM	F	FLMG 150	Miyamoto,Marlene Elsa	18	Main Campus
343	ARSC	1080	313R	B	14042	4	College Writing and Research	LEC	11:00 AM - 11:50 AM	F	FLMG 241		18	Main Campus
344	ARSC	1080	313R	B	14042	4	College Writing and Research	LEC	11:00 AM - 12:15 PM	MW	FLMG 241		18	Main Campus
345	ARSC	1080	314R	B	14043	4	College Writing and Research	LEC	02:00 PM - 02:50 PM	F	FLMG 241	Miyamoto,Marlene Elsa	0	Main Campus
346	ARSC	1080	314R	B	14043	4	College Writing and Research	LEC	02:00 PM - 03:15 PM	TTH	FLMG 241		0	Main Campus
347	ARSC	1400	310R	B	20617	1	SASC Cosem: Chemistry 1 & 2	SEM	02:00 PM - 03:15 PM	TTH	FLMG 150		20	Main Campus
348	ARSC	1440	311R	B	20310	1	SASC Coseminar: Mathematics	SEM	10:00 AM - 10:50 AM	MWF	FLMG 294		20	Main Campus
349	ARSC	1440	312R	B	20346	1	SASC Coseminar: Mathematics	SEM	12:30 PM - 01:45 PM	TTH	FLMG 294		20	Main Campus
350	ARSC	1440	314R	B	36549	1	SASC Coseminar: Mathematics	SEM	02:00 PM - 03:15 PM	TTH	FLMG 244		20	Main Campus
351	ARSC	1460	311R	B	22789	1	SASC Coseminar: Biology	SEM	04:00 PM - 05:15 PM	TTH	FLMG 241	Wettstein,Gretchen Marie	20	Main Campus
352	ARSC	1470	401R	B	35238	1	MASP Natural Science Seminar	SEM	09:30 AM - 10:45 AM		HLMS 263	Semsar,Katharine	15	Main Campus
353	ARSC	1470	402R	B	22757	1	MASP Natural Science Seminar	SEM	04:00 PM - 05:15 PM	M	GUGG 205	Semsar,Katharine	15	Main Campus
354	ARSC	1480	403R	B	22282	1	MASP Social Science Seminar	SEM	12:00 PM - 01:15 PM		See Academc Dept		15	Main Campus
355	ARSC	1490	401R	B	21457	1	MASP Humanities Seminar	SEM	03:00 PM - 04:15 PM	M	KTCH 1B44	Ramirez,Karen E.	15	Main Campus
356	ARSC	1492	402R	B	35239	1-3	MASP Research Seminar	SEM	03:00 PM - 04:15 PM		KTCH 1B44		15	Main Campus
357	ARSC	1492	403R	B	21679	1-3	MASP Research Seminar	SEM	05:00 PM - 06:15 PM	TH	FLMG 103	Semsar,Katharine	15	Main Campus
358	ARSC	1710	310R	B	13914	1	SASC Coseminar: Mathematics	SEM	12:30 PM - 01:45 PM	TTH	FLMG 265		24	Main Campus
359	ARSC	1710	311R	B	22841	1	SASC Coseminar: Mathematics	SEM	11:00 AM - 12:15 PM	TTH	FLMG 294		0	Main Campus
360	ARSC	1720	310R	B	13915	1	SASC Calculus Work Group	SEM	12:30 PM - 01:45 PM	TTH	FLMG 150	Moon,Maung Yi	15	Main Campus
361	ARSC	1720	311R	B	21816	1	SASC Calculus Work Group	SEM	11:00 AM - 12:15 PM	TTH	FLMG 241		0	Main Campus
362	ARSC	2000	310R	B	14044	3	Constructions of Knowledge	SEM	03:30 PM - 04:45 PM	TTH	FLMG 294		18	Main Campus
363	ARSC	2400	311R	B	22781	1	SASC Cosem: Organic Chem	SEM	04:00 PM - 05:15 PM	MW	FLMG 150	Ciancanelli,Rebecca Anne	20	Main Campus
364	ARSC	2470	310R	B	20691	1	SASC Coseminar: Physics	SEM	01:00 PM - 01:50 PM	MWF	FLMG 241	Ranaweera,Chamila	15	Main Campus
365	ARSC	3100	310R	B	14045	3	Multicultural Topics	WKS	12:30 PM - 01:45 PM	TTH	FLMG 241	Buchanan,Angela S	18	Main Campus
366	ARSC	4750	550R	B	20238	3-4	DC Professional Life	SEM	06:00 PM - 09:00 PM	T	Offered through CU in	Ginsberg,Wendy Robyn	20	Main Campus
367	ARSC	4750	550R	B	20238	3-4	DC Professional Life	SEM	06:00 PM - 09:00 PM	T	Offered through CU in	Petruzzelli,Jaclyn	20	Main Campus
368	ASIA	2000	1	B	21091	3	Gateway-Asian Studies	LEC	09:30 AM - 10:45 AM	TTH	HLMS 241	Berry,J Colleen	42	Main Campus
369	ASIA	4001	801	B	22007	1	Adv Language Co-Seminar AH	SEM	04:00 PM - 04:50 PM	W	MKNA 204		5	Main Campus
370	ASIA	4001	802	B	22008	1	Adv Language Co-Seminar AH	SEM	04:00 PM - 04:50 PM	W	CHEM 146		5	Main Campus
371	ASIA	4001	803	B	22713	1	Adv Language Co-Seminar AH	SEM	10:00 AM - 12:00 PM	T	See Academc Dept	Parson,Rahul	5	Main Campus
372	ASIA	4500	1	B	22808	3	Urban Asia	LEC	02:00 PM - 03:15 PM	TTH	MCOL E158	Berry,J Colleen	30	Main Campus
373	ASTR	1000	1	B	14430	3	The Solar System	LEC	11:00 AM - 12:15 PM	TTH	DUAN G1B20	Brown,Benjamin Paul	210	Main Campus
374	ASTR	1000	2	B	14433	3	The Solar System	LEC	02:00 PM - 02:50 PM	MWF	DUAN G1B20	Duncan,Douglas K	210	Main Campus
375	ASTR	1010	100	B	14454	4	Introductory Astronomy 1	LEC	09:00 AM - 09:50 AM	MWF	DUAN G1B20	Duncan,Douglas K	210	Main Campus
376	ASTR	1010	110	B	14455	4	Introductory Astronomy 1	LAB	09:00 AM - 10:45 AM	T	OBSV S175	Duncan,Douglas K	25	Main Campus
377	ASTR	1010	111	B	14456	4	Introductory Astronomy 1	LAB	11:00 AM - 12:45 PM	T	OBSV S175	Duncan,Douglas K	25	Main Campus
378	ASTR	1010	112	B	14457	4	Introductory Astronomy 1	LAB	01:00 PM - 02:45 PM	T	OBSV S175	Duncan,Douglas K	25	Main Campus
379	ASTR	1010	113	B	14458	4	Introductory Astronomy 1	LAB	11:00 AM - 12:45 PM	W	OBSV S175	Duncan,Douglas K	25	Main Campus
380	ASTR	1010	114	B	14459	4	Introductory Astronomy 1	LAB	01:00 PM - 02:45 PM	W	OBSV S175	Duncan,Douglas K	25	Main Campus
381	ASTR	1010	115	B	14460	4	Introductory Astronomy 1	LAB	03:00 PM - 04:45 PM	W	OBSV S175	Duncan,Douglas K	25	Main Campus
382	ASTR	1010	116	B	14461	4	Introductory Astronomy 1	LAB	09:00 AM - 10:45 AM	TH	OBSV S175	Duncan,Douglas K	25	Main Campus
383	ASTR	1010	117	B	14462	4	Introductory Astronomy 1	LAB	11:00 AM - 12:45 PM	TH	OBSV S175	Duncan,Douglas K	25	Main Campus
384	ASTR	1010	118	B	20690	4	Introductory Astronomy 1	LAB	01:00 PM - 02:45 PM	TH	OBSV S175	Duncan,Douglas K	25	Main Campus
385	ASTR	1020	10	B	14468	4	Introductory Astronomy 2	LEC	01:00 PM - 01:50 PM	MWF	DUAN G1B20		210	Main Campus
386	ASTR	1020	11	B	18194	4	Introductory Astronomy 2	REC	09:00 AM - 09:50 AM	W	OBSV S175		25	Main Campus
387	ASTR	1020	12	B	18195	4	Introductory Astronomy 2	REC	09:00 AM - 09:50 AM	W	OBSV S125		25	Main Campus
388	ASTR	1020	13	B	18196	4	Introductory Astronomy 2	REC	10:00 AM - 10:50 AM	W	OBSV S175	Duncan,Douglas K	25	Main Campus
389	ASTR	1020	14	B	18197	4	Introductory Astronomy 2	REC	10:00 AM - 10:50 AM	W	OBSV S125		25	Main Campus
390	ASTR	1030	100	B	14472	4	Accel Intro Astronomy 1	LEC	09:00 AM - 09:50 AM	MWF	DUAN G130	Berta-Thompson,Zachory	80	Main Campus
391	ASTR	1030	110	B	14473	4	Accel Intro Astronomy 1	LAB	11:00 AM - 12:45 PM	M	OBSV S175	Berta-Thompson,Zachory	24	Main Campus
392	ASTR	1030	111	B	14474	4	Accel Intro Astronomy 1	LAB	01:00 PM - 02:45 PM	M	OBSV S175	Berta-Thompson,Zachory	24	Main Campus
393	ASTR	1030	112	B	18198	4	Accel Intro Astronomy 1	LAB	03:00 PM - 04:45 PM	M	OBSV S175		24	Main Campus
394	ASTR	1030	113	B	19956	4	Accel Intro Astronomy 1	LAB	11:00 AM - 12:45 PM	F	OBSV S175		24	Main Campus
395	ASTR	1030	114	B	20466	4	Accel Intro Astronomy 1	LAB	01:00 PM - 02:45 PM	F	OBSV S175		24	Main Campus
396	ASTR	1040	10	B	21585	4	Accel Intro Astronomy 2	LEC	09:30 AM - 10:45 AM	TTH	DUAN G125	Rast,Mark Peter	72	Main Campus
397	ASTR	1040	11	B	21603	4	Accel Intro Astronomy 2	REC	01:00 PM - 01:50 PM	T	DUAN D142	Rast,Mark Peter	16	Main Campus
398	ASTR	1040	12	B	21604	4	Accel Intro Astronomy 2	REC	12:00 PM - 12:50 PM	T	DUAN D142	Rast,Mark Peter	16	Main Campus
399	ASTR	1040	13	B	22493	4	Accel Intro Astronomy 2	REC	01:00 PM - 01:50 PM	W	DUAN D142	Rast,Mark Peter	16	Main Campus
400	ASTR	1200	1	B	14434	3	Stars and Galaxies	LEC	02:00 PM - 03:15 PM	TTH	DUAN G130	Ellingson,Erica	100	Main Campus
401	ASTR	1200	2	B	14435	3	Stars and Galaxies	LEC	11:00 AM - 11:50 AM	MWF	DUAN G130		100	Main Campus
402	ASTR	2000	1	B	18672	3	Ancient Astronomies/Wrld	LEC	02:00 PM - 03:15 PM	TTH	BESC 180	Keller,John Michael	160	Main Campus
403	ASTR	2010	1	B	14443	3	Modern Cosmology	LEC	01:00 PM - 01:50 PM	MWF	DUAN G131		48	Main Campus
404	ASTR	2020	1	B	20781	3	Space Astronomy	LEC	12:30 PM - 01:45 PM	TTH	DUAN G130	Burns,Jack O	117	Main Campus
405	ASTR	2030	1	B	14444	3	Black Holes	LEC	09:30 AM - 10:45 AM	TTH	DUAN G1B20		200	Main Campus
406	ASTR	2040	1	B	20032	3	Srch for Life in the Universe	LEC	10:00 AM - 10:50 AM	MWF	DUAN G1B20		210	Main Campus
407	ASTR	2600	1	B	18209	3	Intro Scientific Programming	LEC	01:00 PM - 02:15 PM	MW	OBSV S125	Darling,Jeremiah K	12	Main Campus
408	ASTR	3400	1	B	22261	3	Research Methods	LEC	03:00 PM - 04:50 PM	MW	OBSV S125		25	Main Campus
409	ASTR	3510	10	B	16091	4	Observ/Instrument I	LEC	02:00 PM - 03:15 PM	TTH	DUAN E126	Hornstein,Seth D	30	Main Campus
410	ASTR	3510	11	B	16094	4	Observ/Instrument I	LAB	07:30 PM - 09:30 PM	T	OBSV S125	Hornstein,Seth D	30	Main Campus
411	ASTR	3560	10	B	21943	3	Astronomical Instrumentation	LEC	09:00 AM - 09:50 AM	M	DUAN D318	Glenn,Jason	10	Main Campus
412	ASTR	3560	11	B	21944	3	Astronomical Instrumentation	LAB	09:00 AM - 10:50 AM	WF	See Academc Dept	Glenn,Jason	20	Main Campus
413	ASTR	3710	1	B	20031	3	Form & Dyn of Planet Sys	LEC	11:00 AM - 12:15 PM	TTH	DUAN G130	Schneider,Nicholas M	120	Main Campus
414	ASTR	3730	1	B	14445	3	Astrophy 1-Stellar/Interstellr	LEC	12:30 PM - 01:45 PM	TTH	DUAN G131	Bally,John	40	Main Campus
415	ASTR	3750	1	B	14446	3	Planets, Moons and Rings	LEC	09:30 AM - 10:45 AM	TTH	DUAN G130	Esposito,Larry Wayne	80	Main Campus
416	ASTR	3800	1	B	20860	3	Astro Data Analysis	LEC	03:30 PM - 05:20 PM	TTH	OBSV S125	Cash,Webster C	20	Main Campus
417	ASTR	4330	1	B	22315	3	Cosmochemistry	LEC	09:30 AM - 10:45 AM	TTH			10	Main Campus
418	ASTR	4800	1	B	21586	3	Space Sci: Practice and Policy	LEC	11:00 AM - 11:50 AM	MWF	DUAN E126	Burns,Jack O	25	Main Campus
419	ASTR	5110	1	B	16097	3	Atomic and Molecular Processes	LEC	09:00 AM - 09:50 AM	MWF	DUAN E126	Darling,Jeremiah K	25	Main Campus
420	ASTR	5120	1	B	19761	3	Radiatve/Dynamic Process	LEC	03:00 PM - 03:50 PM	MWF	DUAN E126	Cranmer,Steven	15	Main Campus
421	ASTR	5140	1	B	35136	3	Astro/Space Plasmas	LEC	02:00 PM - 02:50 PM		DUAN E126	Ergun,Robert E	15	Main Campus
422	ASTR	5540	1	B	19764	3	Mathematical Methods	LEC	10:00 AM - 10:50 AM	MWF	DUAN E126	Toomre,Juri	25	Main Campus
423	ASTR	5780	1	B	35138	3	Space Mission Development	LEC	10:00 AM - 11:15 AM	TTH	AERO 232	Marshall,Robert Andrew	12	Main Campus
424	ASTR	5780	1	B	35138	3	Space Mission Development	LEC	10:00 AM - 11:15 AM	TTH	AERO 232	France,Kevin Christopher	12	Main Campus
425	ASTR	5800	1	B	35143	3	Planetary Surfaces & Interiors	LEC	12:30 PM - 01:45 PM	TTH	DUAN E126	Hayne,Paul Ottinger	10	Main Campus
426	ATOC	1050	1	B	13391	3	Weather & the Atmosphere	LEC	09:30 AM - 10:45 AM	TTH	DUAN G1B30	Lundquist,Julie Kay	342	Main Campus
427	ATOC	1050	2	B	13392	3	Weather & the Atmosphere	LEC	02:00 PM - 03:15 PM	TTH	DUAN G1B30	Subramanian,Aneesh	342	Main Campus
428	ATOC	1060	1	B	13393	3	Our Changing Environment	LEC	12:30 PM - 01:45 PM	TTH	DUAN G1B20	Kay,Jennifer E	215	Main Campus
429	ATOC	1060	10	B	13394	3	Our Changing Environment	LEC	09:30 AM - 10:20 AM	MW	SEEC N136	Jahn,Alexandra	100	Main Campus
430	ATOC	1070	1	B	13396	1	Weather and Atmosphere Lab	MLS	09:20 AM - 11:10 AM	M	SEEC S128		24	Main Campus
431	ATOC	1070	2	B	13397	1	Weather and Atmosphere Lab	MLS	11:20 AM - 01:10 PM	M	SEEC S128		24	Main Campus
432	ATOC	1070	3	B	13398	1	Weather and Atmosphere Lab	MLS	01:20 PM - 03:10 PM	M	SEEC S128		24	Main Campus
433	ATOC	1070	4	B	13399	1	Weather and Atmosphere Lab	MLS	03:20 PM - 05:10 PM	M	SEEC S128		24	Main Campus
434	ATOC	1070	5	B	13400	1	Weather and Atmosphere Lab	MLS	05:20 PM - 07:10 PM	M	SEEC S128		24	Main Campus
435	ATOC	1070	6	B	13401	1	Weather and Atmosphere Lab	MLS	09:20 AM - 11:10 AM	W	SEEC S128		24	Main Campus
436	ATOC	1070	7	B	13402	1	Weather and Atmosphere Lab	MLS	11:20 AM - 01:10 PM	W	SEEC S128		24	Main Campus
437	ATOC	1070	8	B	13403	1	Weather and Atmosphere Lab	MLS	01:20 PM - 03:10 PM	W	SEEC S128		24	Main Campus
438	ATOC	1070	9	B	13404	1	Weather and Atmosphere Lab	MLS	03:20 PM - 05:10 PM	W	SEEC S128		24	Main Campus
439	ATOC	1070	10	B	13405	1	Weather and Atmosphere Lab	MLS	05:20 PM - 07:10 PM	W	SEEC S128		24	Main Campus
1639	GRM	1010	1	B	20755	4	Beginning German 1	LEC	09:00 AM - 09:50 AM	MTTF	ECON 16		19	Main Campus
440	ATOC	1070	11	B	13407	1	Weather and Atmosphere Lab	MLS	01:00 PM - 02:50 PM	T	SEEC S128	Brown,Derek Philip	24	Main Campus
441	ATOC	1070	12	B	13408	1	Weather and Atmosphere Lab	MLS	01:00 PM - 02:50 PM	TH	SEEC S128	Brown,Derek Philip	24	Main Campus
442	ATOC	3070	1	B	22717	3	Introduction to Oceanography	LEC	04:00 PM - 05:15 PM	TTH	SEEC N136		54	Main Campus
443	ATOC	3600	1	B	13419	3	Principles of Climate	LEC	11:30 AM - 12:45 PM	TTH	SEEC N136	Brown,Derek Philip	50	Main Campus
444	ATOC	4500	1	B	20349	3	Sp Tps/ATOC-Upper Division	LEC	11:30 AM - 12:45 PM	TTH	SEEC S126	Schmidt,Sebastian K	15	Main Campus
445	ATOC	4500	2	B	22681	3	Sp Tps/ATOC-Upper Division	LEC	02:30 PM - 05:00 PM	W	SEEC S126	Wang,Zhien	15	Main Campus
446	ATOC	4500	3	B	22787	3	Sp Tps/ATOC-Upper Division	LEC	02:30 PM - 03:45 PM	TTH	SEEC S126	Giglio,Donata	18	Main Campus
447	ATOC	4500	804	B	28840	1	Sp Tps/ATOC-Upper Division	LEC	-				30	Main Campus
448	ATOC	4550	1	B	20731	3	Mountain Meteorology	LEC	11:30 AM - 12:45 PM	TTH	SEEC N124	Friedrich,Katja	45	Main Campus
449	ATOC	4700	1	B	28836	3	Weather Analysis & Forecasting	LEC	10:00 AM - 11:15 AM	TTH	SEEC S126	Byrd,Gregory	24	Main Campus
450	ATOC	4720	1	B	21489	3	Intro Atmospheric Dynamics	LEC	01:00 PM - 02:15 PM	TTH	SEEC N126	Cassano,John J.	24	Main Campus
451	ATOC	4730	1	B	21925	3	Physical Oceanography/Climate	LEC	03:30 PM - 04:45 PM	MW	SEEC N126	Karnauskas,Kristopher Benson	25	Main Campus
452	ATOC	5050	1	B	13424	3	Atms Thermo and Dynamics	LEC	01:00 PM - 02:15 PM	TTH	SEEC S125	Lenaerts,Jan	25	Main Campus
453	ATOC	5051	1	B	20002	3	Intro Physical Oceanography	LEC	02:30 PM - 03:45 PM	TTH	SEEC S125	Han,Weiqing	25	Main Campus
454	ATOC	5151	1	B	20351	3	Atmospheric Chemistry	LEC	10:00 AM - 11:15 AM	TTH	SEEC S125	Toohey,Darin W	15	Main Campus
455	ATOC	5300	1	B	28839	3	The Global Carbon Cycle	LEC	11:30 AM - 12:45 PM	TTH	SEEC S125	Lovenduski,Nicole Suzanne	25	Main Campus
456	ATOC	5540	1	B	19814	3	Mathematical Methods	LEC	10:00 AM - 10:50 AM	MWF	DUAN E126	Toomre,Juri	25	Main Campus
457	ATOC	5550	1	B	20732	3	Mountain Meteorology	LEC	11:30 AM - 12:45 PM	TTH	SEEC N124	Friedrich,Katja	15	Main Campus
458	ATOC	5560	1	B	28837	3	Radatve Procs Plnty Atmo	LEC	-				15	Main Campus
459	ATOC	5730	1	B	21926	3	Physical Oceanography/Climate	LEC	03:30 PM - 04:45 PM	MW	SEEC N126	Karnauskas,Kristopher Benson	5	Main Campus
460	ATOC	5835	1	B	20657	1	Seminar in Planetary Science	SEM	-				50	Main Campus
461	ATOC	6020	801	B	20004	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Cassano,John J.	12	Main Campus
462	ATOC	6020	802	B	20005	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Friedrich,Katja	12	Main Campus
463	ATOC	6020	803	B	13427	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Han,Weiqing	12	Main Campus
464	ATOC	6020	804	B	20006	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Jahn,Alexandra	12	Main Campus
465	ATOC	6020	805	B	13428	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Karnauskas,Kristopher Benson	12	Main Campus
466	ATOC	6020	806	B	18334	1	Sem in Atmospherics & Oceanic	SEM	02:30 PM - 05:00 PM	F	SEEC N126	Kay,Jennifer E	12	Main Campus
467	ATOC	6020	807	B	18992	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Lenaerts,Jan	12	Main Campus
468	ATOC	6020	808	B	20007	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Lovenduski,Nicole Suzanne	12	Main Campus
469	ATOC	6020	809	B	20008	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For		12	Main Campus
470	ATOC	6020	810	B	19938	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Pilewskie,Peter Andrew	12	Main Campus
471	ATOC	6020	811	B	19957	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Randall,Cora Einterz	12	Main Campus
472	ATOC	6020	812	B	20009	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Schmidt,Sebastian K	12	Main Campus
473	ATOC	6020	813	B	13426	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For		12	Main Campus
474	ATOC	6020	814	B	20733	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Toon,Owen Brian	12	Main Campus
475	ATOC	6020	815	B	21221	1	Sem in Atmospherics & Oceanic	SEM	-	TBA	See Class Notes For	Weiss,Jeffrey	12	Main Campus
476	ATOC	6020	816	B	22311	1	Sem in Atmospherics & Oceanic	SEM	09:00 AM - 09:50 AM	F	See Academc Dept	Jahn,Alexandra	12	Main Campus
477	ATOC	6020	816	B	22311	1	Sem in Atmospherics & Oceanic	SEM	09:00 AM - 09:50 AM	F	See Academc Dept	Lenaerts,Jan	12	Main Campus
478	ATOC	6020	817	B	22312	1	Sem in Atmospherics & Oceanic	SEM	-	TBA			12	Main Campus
479	ATOC	7500	1	B	20350	3	Sp Tps/Atmos & Ocn Sci	LEC	11:30 AM - 12:45 PM	TTH	SEEC S126	Schmidt,Sebastian K	3	Main Campus
480	ATOC	7500	2	B	22227	1-3	Sp Tps/Atmos & Ocn Sci	LEC	02:30 PM - 05:00 PM	W	SEEC S126	Wang,Zhien	3	Main Campus
481	ATOC	7500	5	B	22682	3	Sp Tps/Atmos & Ocn Sci	LEC	02:30 PM - 03:20 PM	F	AERO N250		0	Main Campus
482	CWC	2000	1	B	35215	3	The Western Tradition	SEM	09:30 AM - 10:45 AM	TTH	HLMS 237		30	Main Campus
483	CWC	2000	2	B	35216	3	The Western Tradition	SEM	03:30 PM - 04:45 PM	TTH	EKLC E1B75		30	Main Campus
484	CAM	2001	1	B	15008	3	The American West	LEC	11:00 AM - 12:15 PM	TTH	DUAN G131		40	Main Campus
485	CHE	1011	1	B	13574	3	Environmental Chem 1	LEC	03:00 PM - 03:50 PM	MWF	HUMN 1B50	Gough,Raina Victoria	200	Main Campus
486	CHE	1021	100	B	21583	4	Introductory Chemistry	LEC	09:00 AM - 09:50 AM	MWF	CHEM 142	Kelly,Christine Mina	180	Main Campus
487	CHE	1021	111	B	13580	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	M	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
488	CHE	1021	114	B	20413	4	Introductory Chemistry	LAB	04:00 PM - 06:50 PM	M	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
489	CHE	1021	121	B	13585	4	Introductory Chemistry	LAB	08:00 AM - 10:50 AM	T	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
490	CHE	1021	124	B	20414	4	Introductory Chemistry	LAB	11:00 AM - 01:50 PM	T	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
491	CHE	1021	131	B	13595	4	Introductory Chemistry	LAB	02:00 PM - 04:50 PM	T	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
492	CHE	1021	151	B	13602	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	W	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
493	CHE	1021	161	B	13607	4	Introductory Chemistry	LAB	08:00 AM - 10:50 AM	TH	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
494	CHE	1021	164	B	20417	4	Introductory Chemistry	LAB	11:00 AM - 01:50 PM	TH	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
495	CHE	1021	191	B	13623	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	F	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
496	CHE	1021	200	B	13582	4	Introductory Chemistry	LEC	12:00 PM - 12:50 PM	MWF	CHEM 140	Kelly,Christine Mina	250	Main Campus
497	CHE	1021	211	B	19498	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	M	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
498	CHE	1021	214	B	20343	4	Introductory Chemistry	LAB	04:00 PM - 06:50 PM	M	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
499	CHE	1021	221	B	18439	4	Introductory Chemistry	LAB	08:00 AM - 10:50 AM	T	EKLC M1B60	Khanal,Akhileshwar	10	Main Campus
500	CHE	1021	221	B	18439	4	Introductory Chemistry	LAB	08:00 AM - 10:50 AM	T	EKLC M1B60	Kelly,Christine Mina	10	Main Campus
501	CHE	1021	224	B	20415	4	Introductory Chemistry	LAB	11:00 AM - 01:50 PM	T	EKLC M1B60	Kelly,Christine Mina	10	Main Campus
502	CHE	1021	224	B	20415	4	Introductory Chemistry	LAB	11:00 AM - 01:50 PM	T	EKLC M1B60	Khanal,Akhileshwar	10	Main Campus
503	CHE	1021	231	B	19499	4	Introductory Chemistry	LAB	02:00 PM - 04:50 PM	T	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
504	CHE	1021	251	B	13604	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	W	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
505	CHE	1021	254	B	20416	4	Introductory Chemistry	LAB	04:00 PM - 06:50 PM	W	EKLC M1B50	Kelly,Christine Mina	10	Main Campus
506	CHE	1021	254	B	20416	4	Introductory Chemistry	LAB	04:00 PM - 06:50 PM	W	EKLC M1B50	Khanal,Akhileshwar	10	Main Campus
507	CHE	1021	255	B	21666	4	Introductory Chemistry	LAB	04:00 PM - 06:50 PM	W	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
508	CHE	1021	261	B	13615	4	Introductory Chemistry	LAB	08:00 AM - 10:50 AM	TH	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
509	CHE	1021	264	B	20418	4	Introductory Chemistry	LAB	11:00 AM - 01:50 PM	TH	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
510	CHE	1021	271	B	13617	4	Introductory Chemistry	LAB	02:00 PM - 04:50 PM	TH	EKLC M1B50	Kelly,Christine Mina	20	Main Campus
511	CHE	1021	272	B	22011	4	Introductory Chemistry	LAB	02:00 PM - 04:50 PM	TH	EKLC M125	Kelly,Christine Mina	20	Main Campus
512	CHE	1021	291	B	13629	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	F	EKLC M1B60	Kelly,Christine Mina	20	Main Campus
513	CHE	1021	292	B	22015	4	Introductory Chemistry	LAB	01:00 PM - 03:50 PM	F	EKLC M125	Kelly,Christine Mina	20	Main Campus
514	CHE	1113	100	B	19824	4	General Chemistry 1	LEC	09:00 AM - 09:50 AM	MWF	CHEM 140	Plath,Kathryn Leann	360	Main Campus
515	CHE	1113	111	B	15863	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	M	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
516	CHE	1113	112	B	16068	4	General Chemistry 1	REC	04:00 PM - 04:50 PM	M	EKLC M2B26	Plath,Kathryn Leann	20	Main Campus
517	CHE	1113	113	B	16069	4	General Chemistry 1	REC	05:00 PM - 05:50 PM	M	EKLC M2B26	Plath,Kathryn Leann	20	Main Campus
518	CHE	1113	121	B	16070	4	General Chemistry 1	REC	08:00 AM - 08:50 AM	T	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
519	CHE	1113	122	B	16071	4	General Chemistry 1	REC	10:00 AM - 10:50 AM	T	EKLC M2B30	Plath,Kathryn Leann	20	Main Campus
520	CHE	1113	123	B	19517	4	General Chemistry 1	REC	11:00 AM - 11:50 AM	T	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
521	CHE	1113	131	B	16072	4	General Chemistry 1	REC	12:00 PM - 12:50 PM	T	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
522	CHE	1113	132	B	16074	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	T	EKLC M2B30	Plath,Kathryn Leann	20	Main Campus
523	CHE	1113	133	B	20430	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	T	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
524	CHE	1113	134	B	16736	4	General Chemistry 1	REC	05:00 PM - 05:50 PM	T	EKLC M2B30	Plath,Kathryn Leann	20	Main Campus
525	CHE	1113	151	B	16078	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	W	EKLC M2B26	Plath,Kathryn Leann	20	Main Campus
526	CHE	1113	152	B	20180	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	W	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
527	CHE	1113	153	B	19963	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	W	EKLC M2B26	Plath,Kathryn Leann	20	Main Campus
528	CHE	1113	161	B	16079	4	General Chemistry 1	REC	08:00 AM - 08:50 AM	TH	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
529	CHE	1113	162	B	20181	4	General Chemistry 1	REC	11:00 AM - 11:50 AM	TH	EKLC M2B30	Plath,Kathryn Leann	20	Main Campus
530	CHE	1113	171	B	16080	4	General Chemistry 1	REC	12:00 PM - 12:50 PM	TH	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
531	CHE	1113	172	B	16081	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	TH	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
532	CHE	1113	191	B	16082	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	F	EKLC M2B26	Plath,Kathryn Leann	20	Main Campus
533	CHE	1113	200	B	14854	4	General Chemistry 1	LEC	10:00 AM - 10:50 AM	MWF	CHEM 142	Plath,Kathryn Leann	180	Main Campus
534	CHE	1113	211	B	16084	4	General Chemistry 1	REC	05:00 PM - 05:50 PM	M	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
535	CHE	1113	231	B	16085	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	T	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
536	CHE	1113	251	B	16087	4	General Chemistry 1	REC	12:00 PM - 12:50 PM	W	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
537	CHE	1113	252	B	16089	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	W	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
538	CHE	1113	253	B	16090	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	W	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
539	CHE	1113	261	B	16092	4	General Chemistry 1	REC	08:00 AM - 08:50 AM	TH	EKLC M2B30	Plath,Kathryn Leann	20	Main Campus
540	CHE	1113	271	B	16093	4	General Chemistry 1	REC	05:00 PM - 05:50 PM	TH	EKLC M2B26	Plath,Kathryn Leann	20	Main Campus
541	CHE	1113	291	B	16095	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	F	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
542	CHE	1113	292	B	16096	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	F	EKLC M2B40	Plath,Kathryn Leann	20	Main Campus
543	CHE	1113	300	B	20033	4	General Chemistry 1	LEC	11:00 AM - 11:50 AM	MWF	CHEM 140		380	Main Campus
544	CHE	1113	311	B	20034	4	General Chemistry 1	REC	12:00 PM - 12:50 PM	M	EKLC M2B30		20	Main Campus
545	CHE	1113	312	B	20168	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	M	EKLC M2B30		20	Main Campus
546	CHE	1113	313	B	21173	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	M	EKLC M2B30		20	Main Campus
547	CHE	1113	314	B	21174	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	M	EKLC M2B30		20	Main Campus
548	CHE	1113	321	B	21175	4	General Chemistry 1	REC	08:00 AM - 08:50 AM	T	EKLC M2B30		20	Main Campus
549	CHE	1113	322	B	21176	4	General Chemistry 1	REC	09:00 AM - 09:50 AM	T	EKLC M2B40		20	Main Campus
550	CHE	1113	323	B	21177	4	General Chemistry 1	REC	10:00 AM - 10:50 AM	T	EKLC M2B40		20	Main Campus
551	CHE	1113	330R	B	34973	4	General Chemistry 1	LEC	10:00 AM - 10:50 AM	M-F	FLMG 265	Ciancanelli,Rebecca Anne	30	Main Campus
552	CHE	1113	331	B	20169	4	General Chemistry 1	REC	04:00 PM - 04:50 PM	T	EKLC M2B40		20	Main Campus
553	CHE	1113	332	B	20433	4	General Chemistry 1	REC	05:00 PM - 05:50 PM	T	EKLC M2B40		20	Main Campus
554	CHE	1113	351	B	20170	4	General Chemistry 1	REC	12:00 PM - 12:50 PM	W	EKLC M2B26		20	Main Campus
555	CHE	1113	352	B	20171	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	W	EKLC 2B30		20	Main Campus
556	CHE	1113	353	B	21178	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	W	EKLC M2B26		20	Main Campus
557	CHE	1113	354	B	21180	4	General Chemistry 1	REC	04:00 PM - 04:50 PM	W	EKLC M2B26		20	Main Campus
558	CHE	1113	361	B	21181	4	General Chemistry 1	REC	09:00 AM - 09:50 AM	TH	EKLC M2B40		20	Main Campus
559	CHE	1113	362	B	21182	4	General Chemistry 1	REC	10:00 AM - 10:50 AM	TH	EKLC M2B40		20	Main Campus
560	CHE	1113	371	B	20172	4	General Chemistry 1	REC	12:00 PM - 12:50 PM	TH	EKLC M2B30		20	Main Campus
561	CHE	1113	372	B	20173	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	TH	EKLC M2B30		20	Main Campus
562	CHE	1113	400	B	20664	4	General Chemistry 1	LEC	12:00 PM - 12:50 PM	MWF	CHEM 142		160	Main Campus
563	CHE	1113	411	B	21220	4	General Chemistry 1	REC	04:00 PM - 04:50 PM	M	EKLC M2B40		20	Main Campus
564	CHE	1113	431	B	21222	4	General Chemistry 1	REC	01:00 PM - 01:50 PM	T	EKLC M2B40		20	Main Campus
565	CHE	1113	451	B	20665	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	W	EKLC M2B30		20	Main Campus
566	CHE	1113	452	B	20666	4	General Chemistry 1	REC	04:00 PM - 04:50 PM	W	EKLC M2B40		20	Main Campus
567	CHE	1113	453	B	21223	4	General Chemistry 1	REC	05:00 PM - 05:50 PM	W	EKLC M2B40		20	Main Campus
568	CHE	1113	471	B	20667	4	General Chemistry 1	REC	03:00 PM - 03:50 PM	TH	EKLC M2B40		20	Main Campus
569	CHE	1113	472	B	20668	4	General Chemistry 1	REC	04:00 PM - 04:50 PM	TH	EKLC M2B40		20	Main Campus
570	CHE	1113	491	B	20669	4	General Chemistry 1	REC	02:00 PM - 02:50 PM	F	EKLC M2B40		20	Main Campus
571	CHE	1114	114	B	19964	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	M	EKLC M174		20	Main Campus
572	CHE	1114	115	B	20251	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	M	EKLC M175		20	Main Campus
573	CHE	1114	125	B	20463	1	Laboratory Gen Chem 1	MLS	11:00 AM - 01:30 PM	T	EKLC M175		20	Main Campus
574	CHE	1114	152	B	20182	1	Laboratory Gen Chem 1	MLS	12:00 PM - 02:30 PM	W	EKLC M175		20	Main Campus
575	CHE	1114	154	B	19965	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	W	EKLC M174		20	Main Campus
576	CHE	1114	162	B	20183	1	Laboratory Gen Chem 1	MLS	08:00 AM - 10:30 AM	TH	EKLC M175		20	Main Campus
577	CHE	1114	165	B	20465	1	Laboratory Gen Chem 1	MLS	11:00 AM - 01:30 PM	TH	EKLC M175		20	Main Campus
578	CHE	1114	214	B	19966	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	M	EKLC M172		20	Main Campus
579	CHE	1114	311	B	19513	1	Laboratory Gen Chem 1	MLS	12:00 PM - 02:30 PM	M	EKLC M173		20	Main Campus
580	CHE	1114	314	B	20149	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	M	EKLC M173		20	Main Campus
581	CHE	1114	321	B	20184	1	Laboratory Gen Chem 1	MLS	08:00 AM - 10:30 AM	T	EKLC M173		20	Main Campus
582	CHE	1114	324	B	20190	1	Laboratory Gen Chem 1	MLS	11:00 AM - 01:30 PM	T	EKLC M173		20	Main Campus
583	CHE	1114	331	B	20185	1	Laboratory Gen Chem 1	MLS	02:00 PM - 04:30 PM	T	EKLC M173		20	Main Campus
584	CHE	1114	332	B	20481	1	Laboratory Gen Chem 1	MLS	02:00 PM - 04:30 PM	T	EKLC M127		20	Main Campus
585	CHE	1114	354	B	20186	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	W	EKLC M173		20	Main Campus
586	CHE	1114	355	B	19969	1	Laboratory Gen Chem 1	MLS	03:00 PM - 05:30 PM	W	EKLC M127		20	Main Campus
587	CHE	1114	361	B	20187	1	Laboratory Gen Chem 1	MLS	08:00 AM - 10:30 AM	TH	EKLC M173		20	Main Campus
588	CHE	1114	362	B	19968	1	Laboratory Gen Chem 1	MLS	08:00 AM - 10:30 AM	TH	EKLC M127		20	Main Campus
589	CHE	1114	364	B	20191	1	Laboratory Gen Chem 1	MLS	11:00 AM - 01:30 PM	TH	EKLC M173		20	Main Campus
590	CHE	1114	371	B	20188	1	Laboratory Gen Chem 1	MLS	02:00 PM - 04:30 PM	TH	EKLC M173		20	Main Campus
591	CHE	1114	465	B	19967	1	Laboratory Gen Chem 1	MLS	11:00 AM - 01:30 PM	TH	EKLC M174		20	Main Campus
592	CHE	1133	100	B	14855	4	General Chemistry 2	LEC	08:00 AM - 08:50 AM	MWF	CHEM 140	Hendrickson,Susan	260	Main Campus
593	CHE	1133	111	B	16098	4	General Chemistry 2	REC	12:00 PM - 12:50 PM	M	EKLC M2B40	Hendrickson,Susan	20	Main Campus
594	CHE	1133	112	B	16099	4	General Chemistry 2	REC	03:00 PM - 03:50 PM	M	EKLC M2B40	Hendrickson,Susan	20	Main Campus
595	CHE	1133	113	B	20329	4	General Chemistry 2	REC	04:00 PM - 04:50 PM	M	EKLC M2B30	Hendrickson,Susan	20	Main Campus
596	CHE	1133	121	B	16101	4	General Chemistry 2	REC	09:00 AM - 09:50 AM	T	EKLC M2B30	Hendrickson,Susan	20	Main Campus
597	CHE	1133	131	B	16102	4	General Chemistry 2	REC	01:00 PM - 01:50 PM	T	EKLC M2B30	Hendrickson,Susan	20	Main Campus
598	CHE	1133	132	B	16103	4	General Chemistry 2	REC	03:00 PM - 03:50 PM	T	EKLC M2B30	Hendrickson,Susan	20	Main Campus
599	CHE	1133	133	B	16100	4	General Chemistry 2	REC	04:00 PM - 04:50 PM	T	EKLC M2B30	Hendrickson,Susan	20	Main Campus
600	CHE	1133	151	B	16118	4	General Chemistry 2	REC	02:00 PM - 02:50 PM	W	EKLC M2B30	Hendrickson,Susan	20	Main Campus
601	CHE	1133	152	B	16119	4	General Chemistry 2	REC	04:00 PM - 04:50 PM	W	EKLC M2B30	Hendrickson,Susan	20	Main Campus
602	CHE	1133	161	B	16120	4	General Chemistry 2	REC	09:00 AM - 09:50 AM	TH	EKLC M2B30	Hendrickson,Susan	20	Main Campus
603	CHE	1133	171	B	16121	4	General Chemistry 2	REC	01:00 PM - 01:50 PM	TH	EKLC M2B30	Hendrickson,Susan	20	Main Campus
604	CHE	1133	172	B	16122	4	General Chemistry 2	REC	02:00 PM - 02:50 PM	TH	EKLC M2B40	Hendrickson,Susan	20	Main Campus
605	CHE	1133	191	B	19961	4	General Chemistry 2	REC	01:00 PM - 01:50 PM	F	EKLC M2B30	Hendrickson,Susan	20	Main Campus
606	CHE	1133	200	B	20773	4	General Chemistry 2	LEC	11:00 AM - 11:50 AM	MWF	CHEM 142	Hendrickson,Susan	180	Main Campus
607	CHE	1133	211	B	20774	4	General Chemistry 2	REC	01:00 PM - 01:50 PM	M	EKLC M2B40	Hendrickson,Susan	20	Main Campus
608	CHE	1133	212	B	20330	4	General Chemistry 2	REC	05:00 PM - 05:50 PM	M	EKLC M2B30	Hendrickson,Susan	20	Main Campus
609	CHE	1133	231	B	19815	4	General Chemistry 2	REC	12:00 PM - 12:50 PM	T	EKLC M2B30	Hendrickson,Susan	20	Main Campus
610	CHE	1133	251	B	20331	4	General Chemistry 2	REC	12:00 PM - 12:50 PM	W	EKLC M2B30	Hendrickson,Susan	20	Main Campus
611	CHE	1133	252	B	22873	4	General Chemistry 2	REC	05:00 PM - 05:50 PM	W	EKLC M2B30	Hendrickson,Susan	20	Main Campus
612	CHE	1133	261	B	20510	4	General Chemistry 2	REC	10:00 AM - 10:50 AM	TH	EKLC M2B30	Hendrickson,Susan	20	Main Campus
613	CHE	1133	271	B	22874	4	General Chemistry 2	REC	05:00 PM - 05:50 PM	TH	EKLC M2B30	Hendrickson,Susan	20	Main Campus
614	CHE	1133	291	B	22875	4	General Chemistry 2	REC	02:00 PM - 02:50 PM	F	EKLC M2B30	Hendrickson,Susan	20	Main Campus
615	CHE	1133	292	B	22876	4	General Chemistry 2	REC	03:00 PM - 03:50 PM	F	EKLC M2B30	Hendrickson,Susan	20	Main Campus
616	CHE	1134	111	B	16768	1	Laboratory Gen Chem 2	MLS	12:00 PM - 02:30 PM	M	EKLC M124	Parson,Robert	20	Main Campus
617	CHE	1134	112	B	16769	1	Laboratory Gen Chem 2	MLS	12:00 PM - 02:30 PM	M	EKLC M126	Parson,Robert	20	Main Campus
618	CHE	1134	114	B	20332	1	Laboratory Gen Chem 2	MLS	03:00 PM - 05:30 PM	M	EKLC M124	Parson,Robert	20	Main Campus
619	CHE	1134	115	B	20333	1	Laboratory Gen Chem 2	MLS	03:00 PM - 05:30 PM	M	EKLC M126	Parson,Robert	20	Main Campus
620	CHE	1134	121	B	16770	1	Laboratory Gen Chem 2	MLS	08:00 AM - 10:30 AM	T	EKLC M124	Parson,Robert	20	Main Campus
621	CHE	1134	124	B	19820	1	Laboratory Gen Chem 2	MLS	11:00 AM - 01:30 PM	T	EKLC M124	Parson,Robert	20	Main Campus
622	CHE	1134	125	B	20511	1	Laboratory Gen Chem 2	MLS	11:00 AM - 01:30 PM	T	EKLC M126	Parson,Robert	20	Main Campus
623	CHE	1134	131	B	16772	1	Laboratory Gen Chem 2	MLS	02:00 PM - 04:30 PM	T	EKLC M124	Parson,Robert	20	Main Campus
624	CHE	1134	151	B	16774	1	Laboratory Gen Chem 2	MLS	12:00 PM - 02:30 PM	W	EKLC M124	Parson,Robert	20	Main Campus
625	CHE	1134	154	B	20334	1	Laboratory Gen Chem 2	MLS	03:00 PM - 05:30 PM	W	EKLC M124	Parson,Robert	20	Main Campus
626	CHE	1134	161	B	16776	1	Laboratory Gen Chem 2	MLS	08:00 AM - 10:30 AM	TH	EKLC M124	Parson,Robert	20	Main Campus
627	CHE	1134	164	B	19962	1	Laboratory Gen Chem 2	MLS	11:00 AM - 01:30 PM	TH	EKLC M124	Parson,Robert	20	Main Campus
628	CHE	1134	171	B	16778	1	Laboratory Gen Chem 2	MLS	02:00 PM - 04:30 PM	TH	EKLC M124	Parson,Robert	20	Main Campus
629	CHE	1134	221	B	16771	1	Laboratory Gen Chem 2	MLS	08:00 AM - 10:30 AM	T	EKLC M126	Parson,Robert	20	Main Campus
630	CHE	1134	231	B	16773	1	Laboratory Gen Chem 2	MLS	02:00 PM - 04:30 PM	T	EKLC M126	Parson,Robert	20	Main Campus
631	CHE	1134	251	B	16775	1	Laboratory Gen Chem 2	MLS	12:00 PM - 02:30 PM	W	EKLC M126	Parson,Robert	20	Main Campus
632	CHE	1134	254	B	22877	1	Laboratory Gen Chem 2	MLS	03:00 PM - 05:30 PM	W	EKLC M126	Parson,Robert	20	Main Campus
633	CHE	1134	261	B	16777	1	Laboratory Gen Chem 2	MLS	08:00 AM - 10:30 AM	TH	EKLC M126	Parson,Robert	20	Main Campus
634	CHE	1134	264	B	22878	1	Laboratory Gen Chem 2	MLS	11:00 AM - 01:30 PM	TH	EKLC M126	Parson,Robert	20	Main Campus
635	CHE	1134	271	B	16779	1	Laboratory Gen Chem 2	MLS	02:00 PM - 04:30 PM	TH	EKLC M126	Parson,Robert	20	Main Campus
636	CHE	1134	291	B	22879	1	Laboratory Gen Chem 2	MLS	12:00 PM - 02:30 PM	F	EKLC M124	Parson,Robert	20	Main Campus
637	CHE	1134	294	B	22880	1	Laboratory Gen Chem 2	MLS	03:00 PM - 05:30 PM	F	EKLC M124	Parson,Robert	20	Main Campus
638	CHE	1221	151	B	15800	1	Engr Gen Chemistry Lab	MLS	12:00 PM - 02:30 PM	W	EKLC M272	Khanal,Akhileshwar	20	Main Campus
639	CHE	1221	152	B	15802	1	Engr Gen Chemistry Lab	MLS	12:00 PM - 02:30 PM	W	EKLC M275	Khanal,Akhileshwar	20	Main Campus
640	CHE	1221	154	B	15803	1	Engr Gen Chemistry Lab	MLS	03:00 PM - 05:30 PM	W	EKLC M272	Khanal,Akhileshwar	20	Main Campus
641	CHE	1221	155	B	15809	1	Engr Gen Chemistry Lab	MLS	03:00 PM - 05:30 PM	W	EKLC M275	Khanal,Akhileshwar	20	Main Campus
642	CHE	1221	161	B	15804	1	Engr Gen Chemistry Lab	MLS	08:00 AM - 10:30 AM	TH	EKLC M272	Khanal,Akhileshwar	20	Main Campus
643	CHE	1221	162	B	15805	1	Engr Gen Chemistry Lab	MLS	08:00 AM - 10:30 AM	TH	EKLC M275	Khanal,Akhileshwar	20	Main Campus
644	CHE	1221	164	B	15806	1	Engr Gen Chemistry Lab	MLS	11:00 AM - 01:30 PM	TH	EKLC M272	Khanal,Akhileshwar	20	Main Campus
645	CHE	1221	165	B	19827	1	Engr Gen Chemistry Lab	MLS	11:00 AM - 01:30 PM	TH	EKLC M275	Khanal,Akhileshwar	20	Main Campus
646	CHE	1221	171	B	15807	1	Engr Gen Chemistry Lab	MLS	02:00 PM - 04:30 PM	TH	EKLC M272	Khanal,Akhileshwar	20	Main Campus
647	CHE	1221	172	B	15808	1	Engr Gen Chemistry Lab	MLS	02:00 PM - 04:30 PM	TH	EKLC M275	Khanal,Akhileshwar	20	Main Campus
648	CHE	1221	191	B	15810	1	Engr Gen Chemistry Lab	MLS	12:00 PM - 02:30 PM	F	EKLC M272	Khanal,Akhileshwar	20	Main Campus
649	CHE	1221	192	B	15811	1	Engr Gen Chemistry Lab	MLS	12:00 PM - 02:30 PM	F	EKLC M275	Khanal,Akhileshwar	20	Main Campus
650	CHE	1221	194	B	20520	1	Engr Gen Chemistry Lab	MLS	03:00 PM - 05:30 PM	F	EKLC M272	Khanal,Akhileshwar	20	Main Campus
651	CHE	1221	195	B	20521	1	Engr Gen Chemistry Lab	MLS	03:00 PM - 05:30 PM	F	EKLC M275	Khanal,Akhileshwar	20	Main Campus
652	CHE	1400	100	B	13779	4	Foundations of Chemistry	LEC	09:00 AM - 09:50 AM	MWF	GOLD A120	Ahn,Natalie	60	Main Campus
653	CHE	1400	161	B	22416	4	Foundations of Chemistry	REC	08:00 AM - 08:50 AM	TH	EKLC M2B26	Ahn,Natalie	20	Main Campus
654	CHE	1400	162	B	22417	4	Foundations of Chemistry	REC	09:00 AM - 09:50 AM	TH	EKLC M2B26	Ahn,Natalie	20	Main Campus
655	CHE	1400	171	B	22418	4	Foundations of Chemistry	REC	02:00 PM - 02:50 PM	TH	EKLC M2B26	Ahn,Natalie	20	Main Campus
656	CHE	1400	200	B	21152	4	Foundations of Chemistry	LEC	11:00 AM - 11:50 AM	MWF	GOLD A120	Parson,Robert	60	Main Campus
657	CHE	1400	261	B	22434	4	Foundations of Chemistry	REC	10:00 AM - 10:50 AM	TH	EKLC M2B26	Parson,Robert	20	Main Campus
658	CHE	1400	271	B	22436	4	Foundations of Chemistry	REC	12:00 PM - 12:50 PM	TH	EKLC M2B26	Parson,Robert	20	Main Campus
659	CHE	1400	272	B	22437	4	Foundations of Chemistry	REC	01:00 PM - 01:50 PM	TH	EKLC M2B26	Parson,Robert	20	Main Campus
660	CHE	1401	111	B	21165	1	Foundations of Chem Lab	MLS	12:00 PM - 02:30 PM	M	EKLC M273		20	Main Campus
661	CHE	1401	114	B	21166	1	Foundations of Chem Lab	MLS	03:00 PM - 05:30 PM	M	EKLC M273		20	Main Campus
662	CHE	1401	121	B	21167	1	Foundations of Chem Lab	MLS	08:00 AM - 10:30 AM	T	EKLC M273		20	Main Campus
663	CHE	1401	131	B	21168	1	Foundations of Chem Lab	MLS	11:00 AM - 01:30 PM	T	EKLC M273		20	Main Campus
664	CHE	1401	134	B	21169	1	Foundations of Chem Lab	MLS	02:00 PM - 04:30 PM	T	EKLC M273		20	Main Campus
665	CHE	1401	151	B	21170	1	Foundations of Chem Lab	MLS	12:00 PM - 02:30 PM	W	EKLC M273		20	Main Campus
666	CHE	3311	100	B	13789	4	Organic Chemistry 1	LEC	09:00 AM - 09:50 AM	MWF	GOLD A2B70	Richardson,Jacqueline Mae	245	Main Campus
667	CHE	3311	112	B	19977	4	Organic Chemistry 1	REC	10:00 AM - 10:50 AM	M	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
668	CHE	3311	113	B	21028	4	Organic Chemistry 1	REC	11:00 AM - 11:50 AM	M	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
669	CHE	3311	115	B	21255	4	Organic Chemistry 1	REC	01:00 PM - 01:50 PM	M	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
670	CHE	3311	116	B	13783	4	Organic Chemistry 1	REC	02:00 PM - 02:50 PM	M	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
671	CHE	3311	117	B	13786	4	Organic Chemistry 1	REC	03:00 PM - 03:50 PM	M	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
672	CHE	3311	120	B	13782	4	Organic Chemistry 1	REC	08:00 AM - 08:50 AM	T	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
673	CHE	3311	121	B	18331	4	Organic Chemistry 1	REC	09:00 AM - 09:50 AM	T	EKLC M2B36	Richardson,Jacqueline Mae	1	Main Campus
674	CHE	3311	122	B	13791	4	Organic Chemistry 1	REC	10:00 AM - 10:50 AM	T	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
675	CHE	3311	124	B	13795	4	Organic Chemistry 1	REC	12:00 PM - 12:50 PM	T	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
676	CHE	3311	126	B	13781	4	Organic Chemistry 1	REC	02:00 PM - 02:50 PM	T	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
677	CHE	3311	127	B	20488	4	Organic Chemistry 1	REC	03:00 PM - 03:50 PM	T	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
678	CHE	3311	128	B	13787	4	Organic Chemistry 1	REC	04:00 PM - 04:50 PM	T	EKLC M2B36	Richardson,Jacqueline Mae	20	Main Campus
679	CHE	3311	200	B	13780	4	Organic Chemistry 1	LEC	11:00 AM - 11:50 AM	MWF	GOLD A2B70	Gin,Douglas L.	200	Main Campus
680	CHE	3311	214	B	20487	4	Organic Chemistry 1	REC	12:00 PM - 12:50 PM	M	EKLC M2B26	Gin,Douglas L.	20	Main Campus
681	CHE	3311	215	B	19976	4	Organic Chemistry 1	REC	01:00 PM - 01:50 PM	M	EKLC M2B26	Gin,Douglas L.	20	Main Campus
682	CHE	3311	216	B	13792	4	Organic Chemistry 1	REC	02:00 PM - 02:50 PM	M	EKLC M2B26	Gin,Douglas L.	20	Main Campus
683	CHE	3311	220	B	21029	4	Organic Chemistry 1	REC	08:00 AM - 08:50 AM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
684	CHE	3311	221	B	20491	4	Organic Chemistry 1	REC	09:00 AM - 09:50 AM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
685	CHE	3311	222	B	13793	4	Organic Chemistry 1	REC	10:00 AM - 10:50 AM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
686	CHE	3311	223	B	13796	4	Organic Chemistry 1	REC	11:00 AM - 11:50 AM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
687	CHE	3311	224	B	18330	4	Organic Chemistry 1	REC	12:00 PM - 12:50 PM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
688	CHE	3311	225	B	19971	4	Organic Chemistry 1	REC	01:00 PM - 01:50 PM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
689	CHE	3311	226	B	13790	4	Organic Chemistry 1	REC	02:00 PM - 02:50 PM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
690	CHE	3311	227	B	21030	4	Organic Chemistry 1	REC	03:00 PM - 03:50 PM	T	EKLC M2B26	Gin,Douglas L.	20	Main Campus
691	CHE	3311	300	B	20508	4	Organic Chemistry 1	LEC	08:00 AM - 09:15 AM	TTH	CHEM 142	Wang,Xiang	60	Main Campus
692	CHE	3311	314	B	20205	4	Organic Chemistry 1	REC	12:00 PM - 12:50 PM	M	EKLC M2B36	Wang,Xiang	20	Main Campus
693	CHE	3311	323	B	13788	4	Organic Chemistry 1	REC	11:00 AM - 11:50 AM	T	EKLC M2B36	Wang,Xiang	20	Main Campus
694	CHE	3311	325	B	20490	4	Organic Chemistry 1	REC	01:00 PM - 01:50 PM	T	EKLC M2B36	Wang,Xiang	20	Main Campus
695	CHE	3321	101	B	20493	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	M	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
696	CHE	3321	102	B	20494	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	M	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
697	CHE	3321	103	B	15813	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	M	EKLC M1B35		20	Main Campus
698	CHE	3321	103	B	15813	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	M	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
699	CHE	3321	111	B	15826	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	M	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
700	CHE	3321	112	B	15829	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	M	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
701	CHE	3321	121	B	15815	1	Lab/Organic Chemistry 1	MLS	05:00 PM - 07:50 PM	M	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
702	CHE	3321	121	B	15815	1	Lab/Organic Chemistry 1	MLS	05:00 PM - 07:50 PM	M	EKLC M1B20		20	Main Campus
703	CHE	3321	122	B	20497	1	Lab/Organic Chemistry 1	MLS	05:00 PM - 07:50 PM	M	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
704	CHE	3321	123	B	28799	1	Lab/Organic Chemistry 1	MLS	05:00 PM - 07:50 PM	M	EKLC M1B35		20	Main Campus
705	CHE	3321	123	B	28799	1	Lab/Organic Chemistry 1	MLS	05:00 PM - 07:50 PM	M	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
706	CHE	3321	131	B	15814	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	T	EKLC M1B20	Richardson,Jacqueline Mae	1	Main Campus
707	CHE	3321	131	B	15814	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	T	EKLC M1B20		1	Main Campus
708	CHE	3321	132	B	15827	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	T	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
709	CHE	3321	132	B	15827	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	T	EKLC M1B25		20	Main Campus
710	CHE	3321	141	B	20495	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	T	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
711	CHE	3321	142	B	20496	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	T	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
712	CHE	3321	143	B	15828	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	T	EKLC M1B35		20	Main Campus
713	CHE	3321	143	B	15828	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	T	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
714	CHE	3321	151	B	15816	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	W	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
715	CHE	3321	152	B	15830	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	W	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
716	CHE	3321	153	B	20322	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	W	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
717	CHE	3321	161	B	15817	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	W	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
718	CHE	3321	162	B	15818	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	W	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
719	CHE	3321	181	B	20267	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	TH	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
720	CHE	3321	182	B	20323	1	Lab/Organic Chemistry 1	MLS	10:00 AM - 12:50 PM	TH	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
721	CHE	3321	191	B	15821	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	TH	EKLC M1B20	Richardson,Jacqueline Mae	20	Main Campus
722	CHE	3321	192	B	15823	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	TH	EKLC M1B25	Richardson,Jacqueline Mae	20	Main Campus
723	CHE	3321	193	B	15825	1	Lab/Organic Chemistry 1	MLS	01:30 PM - 04:20 PM	TH	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
724	CHE	3331	100	B	13961	4	Organic Chemistry 2	LEC	09:00 AM - 09:50 AM	MWF	HALE 270	Zhang,Wei	150	Main Campus
725	CHE	3331	135	B	13963	4	Organic Chemistry 2	REC	01:00 PM - 01:50 PM	W	EKLC M2B36	Zhang,Wei	20	Main Campus
726	CHE	3331	136	B	13965	4	Organic Chemistry 2	REC	02:00 PM - 02:50 PM	W	EKLC M2B36	Walba,David M	20	Main Campus
727	CHE	3331	136	B	13965	4	Organic Chemistry 2	REC	02:00 PM - 02:50 PM	W	EKLC M2B36	Zhang,Wei	20	Main Campus
728	CHE	3331	137	B	20500	4	Organic Chemistry 2	REC	03:00 PM - 03:50 PM	W	EKLC M2B36	Zhang,Wei	20	Main Campus
729	CHE	3331	137	B	20500	4	Organic Chemistry 2	REC	03:00 PM - 03:50 PM	W	EKLC M2B36	Walba,David M	20	Main Campus
730	CHE	3331	141	B	13964	4	Organic Chemistry 2	REC	09:00 AM - 09:50 AM	TH	EKLC M2B36	Walba,David M	20	Main Campus
731	CHE	3331	141	B	13964	4	Organic Chemistry 2	REC	09:00 AM - 09:50 AM	TH	EKLC M2B36	Zhang,Wei	20	Main Campus
732	CHE	3331	142	B	13962	4	Organic Chemistry 2	REC	10:00 AM - 10:50 AM	TH	EKLC M2B36	Walba,David M	20	Main Campus
733	CHE	3331	142	B	13962	4	Organic Chemistry 2	REC	10:00 AM - 10:50 AM	TH	EKLC M2B36	Zhang,Wei	20	Main Campus
734	CHE	3331	143	B	20269	4	Organic Chemistry 2	REC	11:00 AM - 11:50 AM	TH	EKLC M2B36	Walba,David M	20	Main Campus
735	CHE	3331	143	B	20269	4	Organic Chemistry 2	REC	11:00 AM - 11:50 AM	TH	EKLC M2B36	Zhang,Wei	20	Main Campus
736	CHE	3331	144	B	20913	4	Organic Chemistry 2	REC	12:00 PM - 12:50 PM	TH	EKLC M2B36	Zhang,Wei	20	Main Campus
737	CHE	3331	144	B	20913	4	Organic Chemistry 2	REC	12:00 PM - 12:50 PM	TH	EKLC M2B36	Walba,David M	20	Main Campus
738	CHE	3341	201	B	20503	1	Lab/Organic Chemistry 2	MLS	10:00 AM - 12:50 PM	M	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
739	CHE	3341	211	B	15831	1	Lab/Organic Chemistry 2	MLS	01:30 PM - 04:20 PM	M	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
740	CHE	3341	221	B	15832	1	Lab/Organic Chemistry 2	MLS	05:00 PM - 07:50 PM	M	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
741	CHE	3341	231	B	15833	1	Lab/Organic Chemistry 2	MLS	10:00 AM - 12:50 PM	T	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
742	CHE	3341	241	B	15836	1	Lab/Organic Chemistry 2	MLS	01:30 PM - 04:20 PM	T	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
743	CHE	3341	251	B	15834	1	Lab/Organic Chemistry 2	MLS	10:00 AM - 12:50 PM	W	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
744	CHE	3341	261	B	15835	1	Lab/Organic Chemistry 2	MLS	01:30 PM - 04:20 PM	W	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
745	CHE	3341	281	B	21842	1	Lab/Organic Chemistry 2	MLS	10:00 AM - 12:50 PM	TH	EKLC M1B65		20	Main Campus
746	CHE	3341	281	B	21842	1	Lab/Organic Chemistry 2	MLS	10:00 AM - 12:50 PM	TH	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
747	CHE	3341	291	B	21968	1	Lab/Organic Chemistry 2	MLS	01:30 PM - 04:20 PM	TH	EKLC M1B65		20	Main Campus
748	CHE	3341	291	B	21968	1	Lab/Organic Chemistry 2	MLS	01:30 PM - 04:20 PM	TH	EKLC M1B65	Richardson,Jacqueline Mae	20	Main Campus
749	CHE	3381	411	B	21884	2	Organic Chem 2 Lab/Major	MLS	01:30 PM - 04:20 PM	MW	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
750	CHE	3381	431	B	21843	2	Organic Chem 2 Lab/Major	MLS	10:00 AM - 12:50 PM	TTH	EKLC M1B35	Richardson,Jacqueline Mae	20	Main Campus
751	CHE	3471	100	B	21570	4	Organic Chemistry 2: CHEM	LEC	09:00 AM - 09:50 AM	MWF	EKLC E1B20	Walczak,Maciej Andrzej	20	Main Campus
752	CHE	3471	138	B	21573	4	Organic Chemistry 2: CHEM	REC	04:00 PM - 04:50 PM	W	EKLC M2B36	Walczak,Maciej Andrzej	20	Main Campus
753	CHE	4011	1	B	13971	3	Modern Inorganic Chemistry	LEC	10:00 AM - 10:50 AM	MWF	EKLC E1B20	Marshak,Michael Pesek	75	Main Campus
754	CHE	4171	10	B	13972	3	Instrument Analysis Lec/Lab 1	LEC	11:00 AM - 11:50 AM	MWF	EKLC E1B50	Volkamer,Rainer	27	Main Campus
755	CHE	4171	10	B	13972	3	Instrument Analysis Lec/Lab 1	LEC	11:00 AM - 11:50 AM	MWF	EKLC E1B50	Larsen,Molly	27	Main Campus
756	CHE	4171	11	B	20854	3	Instrument Analysis Lec/Lab 1	LAB	12:00 PM - 02:50 PM	T	EKLC M225	Larsen,Molly	9	Main Campus
757	CHE	4171	11	B	20854	3	Instrument Analysis Lec/Lab 1	LAB	12:00 PM - 02:50 PM	T	EKLC M225	Volkamer,Rainer	9	Main Campus
758	CHE	4171	12	B	20855	3	Instrument Analysis Lec/Lab 1	LAB	12:00 PM - 02:50 PM	TH	EKLC M225	Larsen,Molly	9	Main Campus
759	CHE	4171	12	B	20855	3	Instrument Analysis Lec/Lab 1	LAB	12:00 PM - 02:50 PM	TH	EKLC M225	Volkamer,Rainer	9	Main Campus
760	CHE	4171	14	B	20857	3	Instrument Analysis Lec/Lab 1	LAB	12:00 PM - 02:50 PM	W	EKLC M225	Volkamer,Rainer	9	Main Campus
761	CHE	4171	14	B	20857	3	Instrument Analysis Lec/Lab 1	LAB	12:00 PM - 02:50 PM	W	EKLC M225	Larsen,Molly	9	Main Campus
762	CHE	4261	1	B	35205	3	Organic Materials	LEC	10:00 AM - 10:50 AM	MWF	EKLC M203		0	Main Campus
763	CHE	4511	1	B	13975	3	Physical Chemistry 1	LEC	10:00 AM - 10:50 AM	MWF	EKLC E1B50	Eaves,Joel David	40	Main Campus
764	CHE	4531	1	B	13976	3	Physical Chemistry 2	LEC	09:00 AM - 09:50 AM	MWF	EKLC M203	Damrauer,Niels Harley	30	Main Campus
765	CHE	4581	20	B	14358	1	Physical Chemistry Lab 1	MLS	09:00 AM - 11:50 AM	T	EKLC M224	Vaida,Veronica	4	Main Campus
766	CHE	4581	20	B	14358	1	Physical Chemistry Lab 1	MLS	09:00 AM - 11:50 AM	T	EKLC M224	Larsen,Molly	4	Main Campus
767	CHE	4581	30	B	14364	1	Physical Chemistry Lab 1	MLS	01:00 PM - 03:50 PM	T	EKLC M224	Vaida,Veronica	4	Main Campus
768	CHE	4581	30	B	14364	1	Physical Chemistry Lab 1	MLS	01:00 PM - 03:50 PM	T	EKLC M224	Larsen,Molly	4	Main Campus
769	CHE	4581	50	B	14365	1	Physical Chemistry Lab 1	MLS	02:00 PM - 04:50 PM	W	EKLC M224	Larsen,Molly	4	Main Campus
770	CHE	4581	50	B	14365	1	Physical Chemistry Lab 1	MLS	02:00 PM - 04:50 PM	W	EKLC M224	Vaida,Veronica	4	Main Campus
771	CHE	4581	70	B	14369	1	Physical Chemistry Lab 1	MLS	01:00 PM - 03:50 PM	TH	EKLC M224	Vaida,Veronica	4	Main Campus
772	CHE	4581	70	B	14369	1	Physical Chemistry Lab 1	MLS	01:00 PM - 03:50 PM	TH	EKLC M224	Larsen,Molly	4	Main Campus
773	CHE	4591	20	B	14377	2	Physical Chemistry Lab 2	MLS	09:00 AM - 11:50 AM	T	EKLC M224	Vaida,Veronica	4	Main Campus
774	CHE	4591	20	B	14377	2	Physical Chemistry Lab 2	MLS	09:00 AM - 11:50 AM	T	EKLC M224	Larsen,Molly	4	Main Campus
775	CHE	4591	30	B	14378	2	Physical Chemistry Lab 2	MLS	01:00 PM - 03:50 PM	T	EKLC M224	Larsen,Molly	4	Main Campus
776	CHE	4591	30	B	14378	2	Physical Chemistry Lab 2	MLS	01:00 PM - 03:50 PM	T	EKLC M224	Vaida,Veronica	4	Main Campus
777	CHE	4591	50	B	14379	2	Physical Chemistry Lab 2	MLS	02:00 PM - 04:50 PM	W	EKLC M224	Larsen,Molly	4	Main Campus
778	CHE	4591	50	B	14379	2	Physical Chemistry Lab 2	MLS	02:00 PM - 04:50 PM	W	EKLC M224	Vaida,Veronica	4	Main Campus
779	CHE	4591	70	B	14381	2	Physical Chemistry Lab 2	MLS	01:00 PM - 03:50 PM	TH	EKLC M224	Larsen,Molly	4	Main Campus
780	CHE	4591	70	B	14381	2	Physical Chemistry Lab 2	MLS	01:00 PM - 03:50 PM	TH	EKLC M224	Vaida,Veronica	4	Main Campus
781	CHE	5011	1	B	14398	3	Advn Inorganic Chemistry 1	LEC	10:00 AM - 10:50 AM	MWF	EKLC E1B20	Marshak,Michael Pesek	30	Main Campus
782	CHE	5131	1	B	36336	3	Computer Prog and Data Analys	LEC	09:30 AM - 10:45 AM	TTH	EKLC W166	Browne,Eleanor Carol	20	Main Campus
783	CHE	5151	1	B	20352	3	Atmospheric Chemistry	LEC	10:00 AM - 11:15 AM	TTH	SEEC S125	Toohey,Darin W	15	Main Campus
784	CHE	5181	1	B	20157	3	Mass Spectro & Chromatog	LEC	11:00 AM - 12:15 PM	TTH	EKLC W166	Jimenez,Jose L	30	Main Campus
785	CHE	5181	1	B	20157	3	Mass Spectro & Chromatog	LEC	11:00 AM - 12:15 PM	TTH	EKLC W166	Ziemann,Paul Jeffrey	30	Main Campus
786	CHE	5251	1	B	20304	3	Materials Chem & Properties	LEC	09:30 AM - 10:45 AM	TTH	EKLC W165	George,Steven	25	Main Campus
787	CHE	5261	1	B	35206	3	Organic Materials	LEC	10:00 AM - 10:50 AM	MWF	EKLC M203		0	Main Campus
788	CHE	5311	1	B	19495	3	Adv Synth Organic Chemistry	LEC	11:00 AM - 11:50 AM	MWF	EKLC W165	Sammakia,Tarek	30	Main Campus
789	CHE	5321	1	B	14627	3	Adv Physic Organic Chemistry	LEC	08:30 AM - 09:45 AM	WF	EKLC W165	Luca,Oana	30	Main Campus
790	CHE	5501	1	B	19515	3	Adv Topics Phyiscal Chemistry	LEC	09:00 AM - 09:50 AM	MWF	EKLC W166	Cuk,Tanja	20	Main Campus
791	CHE	5541	1	B	20158	3	Chemical Dynamics	LEC	10:00 AM - 10:50 AM	MWF	EKLC W166	Skodje,Rex T	25	Main Campus
792	CHE	5581	1	B	14953	3	Intro Quantum Chemistry	LEC	11:00 AM - 11:50 AM	MWF	EKLC W166	Sharma,Sandeep	20	Main Campus
793	CHE	6101	1	B	18305	1	Sem-Analytical Chemistry	SEM	12:00 PM - 12:50 PM	M	EKLC W166		10	Main Campus
794	CHE	6301	1	B	19384	1-3	Sem-Organic Chemistry	SEM	04:00 PM - 05:30 PM	M	See Academc Dept	Wang,Xiang	15	Main Campus
795	CHE	6401	1	B	15034	1-3	Seminar/Physical Chemistry	SEM	03:00 PM - 03:50 PM	F	EKLC M203	Sharma,Sandeep	20	Main Campus
796	CHE	6801	800	B	14851	0	Departmental Resrch Seminar	SEM	04:00 PM - 05:50 PM	M-F	CHEM 142		30	Main Campus
797	CHE	7301	1	B	16932	1	Synthet/Mechanistic Chemistry	SEM	-			Sammakia,Tarek	10	Main Campus
798	CHIN	1010	1	B	14128	5	Beginning Chinese 1	LEC	09:00 AM - 09:50 AM	M-F	HUMN 125		19	Main Campus
799	CHIN	1010	2	B	14129	5	Beginning Chinese 1	LEC	10:00 AM - 10:50 AM	M-F	HUMN 125		19	Main Campus
800	CHIN	1010	3	B	14130	5	Beginning Chinese 1	LEC	11:00 AM - 11:50 AM	M-F	HUMN 125		19	Main Campus
801	CHIN	1010	4	B	14131	5	Beginning Chinese 1	LEC	02:00 PM - 02:50 PM	M-F	HALE 236		19	Main Campus
802	CHIN	1010	5	B	22883	5	Beginning Chinese 1	LEC	01:00 PM - 01:50 PM	M-F	LIBR M498		0	Main Campus
803	CHIN	1051	1	B	33451	3	Mstps Chin Lit/Translate	LEC	01:00 PM - 01:50 PM	MWF	EKLC M203	You,Kun	30	Main Campus
804	CHIN	2110	1	B	14132	5	Intermed Chinese 1	LEC	09:00 AM - 09:50 AM	M-F	HUMN 180	Chen,Jin	19	Main Campus
805	CHIN	2110	2	B	14133	5	Intermed Chinese 1	LEC	10:00 AM - 10:50 AM	M-F	HUMN 180	Chen,Jin	19	Main Campus
806	CHIN	2110	3	B	14134	5	Intermed Chinese 1	LEC	11:00 AM - 11:50 AM	M-F	HUMN 180	Chen,Jin	19	Main Campus
807	CHIN	3110	1	B	14135	5	Advanced Chinese 1	LEC	09:00 AM - 09:50 AM	M-F	HUMN 270	Hsu,Chun-Ling	19	Main Campus
808	CHIN	3110	2	B	14136	5	Advanced Chinese 1	LEC	12:00 PM - 12:50 PM	M-F	HUMN 180	Hsu,Chun-Ling	19	Main Campus
809	CHIN	3200	1	B	20406	3	Adv Wrtg Chinese & Japanese	LEC	11:00 AM - 11:50 AM	MWF	MCOL E186	Alexander,Katherine	10	Main Campus
810	CHIN	3200	2	B	20643	3	Adv Wrtg Chinese & Japanese	LEC	02:00 PM - 02:50 PM	MWF	HUMN 245	Alexander,Katherine	10	Main Campus
811	CHIN	3351	1	B	33528	3	Reality/Dream Chinese Lit	LEC	02:00 PM - 03:15 PM	TTH	CLRE 104	Richter,Antje	30	Main Campus
812	CHIN	4110	1	B	21124	3	Adv Rdgs/Modern Chinese 1	SEM	12:00 PM - 12:50 PM	MWF	HUMN 245	Miao,Xiaojing	20	Main Campus
813	CHIN	4210	1	B	14170	3	Intro Classic Chinese	SEM	11:00 AM - 11:50 AM	MWF	HUMN 245	Richter,Matthias Ludwig	20	Main Campus
814	CHIN	4300	1	B	34713	3	Opn Tps: Rdgs/Chin Lit	LEC	02:00 PM - 02:50 PM	MWF	EKLC M203		30	Main Campus
815	CHIN	5010	1	B	21928	3	Sinological Methods	SEM	03:30 PM - 06:00 PM	T	HUMN 370	Richter,Antje	9	Main Campus
816	CHIN	5280	1	B	34712	3	Tpcs/Ancient Literature	SEM	03:00 PM - 05:30 PM	M	CHEM 146	Richter,Matthias Ludwig	9	Main Campus
817	CHIN	5750	1	B	33542	3	Daoism	LEC	03:30 PM - 06:00 PM	TH	HUMN 245	Kleeman,Terry F	9	Main Campus
818	CHIN	5890	1	B	33543	3	Topics in Chinese Film	LEC	03:00 PM - 05:30 PM	W	HUMN 370	Shih,Evelyn	9	Main Campus
819	CHIN	5980	1	B	22863	1	Chinese Language Pedagogy	SEM	02:00 PM - 02:50 PM	TH	CHEM 146	Li,Yingjie	9	Main Campus
1640	GRM	1010	2	B	14047	4	Beginning German 1	LEC	10:00 AM - 10:50 AM	MTTF	HLMS 185		19	Main Campus
820	GRE	1013	1	B	20383	4	Beginning Classical Greek 1	LEC	10:00 AM - 10:50 AM	MTTF	RAMY N1B75	Foxley,Florencia	19	Main Campus
821	GRE	3113	1	B	20380	3	Intermed Class Greek 1	LEC	09:30 AM - 10:45 AM	TTH	LIBR M498	Hunt,Peter Alan	19	Main Campus
822	GRE	4023	1	B	20858	3	Topics in Greek Poetry	LEC	11:00 AM - 11:50 AM	MWF	HUMN 370	Reitzammer,Laurialan Blake	7	Main Campus
823	GRE	5023	1	B	20859	3	Topics in Greek Poetry	LEC	11:00 AM - 11:50 AM	MWF	HUMN 370	Reitzammer,Laurialan Blake	12	Main Campus
824	GRE	7013	1	B	33131	3	Grad Sem in Greek Literature	SEM	11:00 AM - 12:15 PM	TTH	HUMN 370	Gibert,John C	19	Main Campus
825	CLAS	1020	1	B	33147	3	Argument from Evidence	LEC	01:00 PM - 01:50 PM	MWF	KTCH 1B64	Hahn,Samuel Timothy	19	Main Campus
826	CLAS	1020	2	B	33148	3	Argument from Evidence	LEC	02:00 PM - 02:50 PM	MWF	HLMS 104	Hahn,Samuel Timothy	19	Main Campus
827	CLAS	1030	1	B	20378	3	Intro to Western Phil: Ancient	LEC	01:00 PM - 01:50 PM	MWF	CLUB 13		14	Main Campus
828	CLAS	1030	2	B	20712	3	Intro to Western Phil: Ancient	LEC	12:00 PM - 12:50 PM	MWF	EDUC 155	Lee,Mi-Kyoung	16	Main Campus
829	CLAS	1051	1	B	20376	3	World of Ancient Greeks	LEC	11:00 AM - 12:15 PM	TTH	HLMS 229	Oliver,Ian	18	Main Campus
830	CLAS	1100	1	B	22280	3	Greek and Roman Mythology	LEC	02:00 PM - 02:50 PM	MWF	HUMN 250	Lansford,Edwin Tyler	97	Main Campus
831	CLAS	1100	2	B	22350	3	Greek and Roman Mythology	LEC	12:30 PM - 01:45 PM	TTH		Oliver,Ian	35	Main Campus
832	CLAS	1120	1	B	22201	3	Pwer & Passion Ancient Rome	LEC	02:00 PM - 02:50 PM	MWF	GUGG 205		35	Main Campus
833	CLAS	1140	1	B	33070	3	Bread/Circuses Roman Soc	LEC	09:30 AM - 10:45 AM	TTH	EKLC E1B20	Cain,Andrew J	88	Main Campus
834	CLAS	1140	100	B	21579	3	Bread/Circuses Roman Soc	LEC	10:00 AM - 10:50 AM	MW	HUMN 1B50	Koster,Isabel	285	Main Campus
835	CLAS	1140	101	B	21715	3	Bread/Circuses Roman Soc	REC	05:00 PM - 05:50 PM	TH	KTCH 1B64		19	Main Campus
836	CLAS	1140	102	B	21716	3	Bread/Circuses Roman Soc	REC	05:00 PM - 05:50 PM	W	ECON 13		32	Main Campus
837	CLAS	1140	103	B	21717	3	Bread/Circuses Roman Soc	REC	03:00 PM - 03:50 PM	W	MCOL E155	Koster,Isabel	18	Main Campus
838	CLAS	1140	110	B	22364	3	Bread/Circuses Roman Soc	REC	12:00 PM - 12:50 PM	W	VAC 1B90	Koster,Isabel	20	Main Campus
839	CLAS	1509	100	B	22202	3	Trash and Treasure	LEC	01:00 PM - 01:50 PM	MW	HUMN 1B50	Dusinberre,Elspeth Rogers M.	134	Main Campus
840	CLAS	1509	101	B	22366	3	Trash and Treasure	REC	04:00 PM - 04:50 PM	W	STAD 135	Dusinberre,Elspeth Rogers M.	9	Main Campus
841	CLAS	1509	880	B	22203	3	Trash and Treasure	LEC	01:00 PM - 01:50 PM	MW	HUMN 1B50	Dusinberre,Elspeth Rogers M.	7	Main Campus
842	CLAS	1509	881	B	22365	3	Trash and Treasure	REC	03:00 PM - 03:50 PM	W	LIBR M300D	Dusinberre,Elspeth Rogers M.	7	Main Campus
843	CLAS	2049	1	B	20878	3	Intro Roman Art & Architecture	LEC	11:00 AM - 11:50 AM	MWF	VAC 1B88	Lansford,Edwin Tyler	18	Main Campus
844	CLAS	2100	1	B	21216	3	Gender/Sexuality Anc Greece	LEC	01:00 PM - 01:50 PM	MWF	VAC 1B88	Reitzammer,Laurialan Blake	18	Main Campus
845	CLAS	3119	1	B	22763	3	The Archaeology of Death	LEC	03:30 PM - 04:45 PM	TTH	HALE 240	Baxter,Leigh Erin	18	Main Campus
846	CLAS	3119	2	B	22907	3	The Archaeology of Death	LEC	05:00 PM - 06:15 PM	TTH	HALE 240	Baxter,Leigh Erin	18	Main Campus
847	CLAS	4071	1	B	33105	3	Ancient Social History	LEC	02:00 PM - 03:15 PM	TTH	HUMN 370	Hunt,Peter Alan	8	Main Campus
848	CLAS	4081	1	B	22293	3	The Roman Republic	LEC	10:00 AM - 10:50 AM	MWF	GUGG 2	Lansford,Edwin Tyler	18	Main Campus
849	CLAS	4099	1	B	33191	3	Ancient Greek Sculpture	LEC	10:00 AM - 10:50 AM	MWF	VAC 1B88	James,Sarah Anne	13	Main Campus
850	CLAS	4109	1	B	33156	3	Ancient Italian Painting	LEC	03:30 PM - 04:45 PM	TTH	GUGG 2	Conlin,Diane L	11	Main Campus
851	CLAS	4110	2	B	22796	3	Greek and Roman Epic	LEC	02:00 PM - 03:15 PM	TTH		Gibert,John C	30	Main Campus
852	CLAS	4120	1	B	22357	3	Greek and Roman Tragedy	LEC	11:00 AM - 12:15 PM	TTH	HLMS 201	Elliott,Jacqueline Michelle	90	Main Campus
853	CLAS	4130	1	B	35114	3	Greek and Roman Comedy	LEC	11:00 AM - 11:50 AM	MWF	CLUB 13	Pentzer,Mitchell Reece	35	Main Campus
854	CLAS	5071	1	B	33107	3	Ancient Social History	LEC	02:00 PM - 03:15 PM	TTH	HUMN 370	Hunt,Peter Alan	5	Main Campus
855	CLAS	5099	1	B	33193	3	Ancient Greek Sculpture	LEC	10:00 AM - 10:50 AM	MWF	VAC 1B88	James,Sarah Anne	6	Main Campus
856	CLAS	5109	1	B	33158	3	Ancient Italian Painting	LEC	03:30 PM - 04:45 PM	TTH	GUGG 2	Conlin,Diane L	5	Main Campus
857	CLAS	5110	2	B	22797	3	Greek and Roman Epic	LEC	02:00 PM - 03:15 PM	TTH		Gibert,John C	5	Main Campus
858	CLAS	5120	1	B	22358	3	Greek and Roman Tragedy	LEC	11:00 AM - 12:15 PM	TTH	HLMS 201	Elliott,Jacqueline Michelle	7	Main Campus
859	DNC	1000	1	B	14735	2	Begin Contemporary Dance Tech	LEC	08:30 AM - 09:45 AM	MW	THTR W350		30	Main Campus
860	DNC	1000	2	B	14736	2	Begin Contemporary Dance Tech	LEC	08:30 AM - 09:45 AM	TTH	THTR W350		30	Main Campus
861	DNC	1000	3	B	20785	2	Begin Contemporary Dance Tech	LEC	12:00 PM - 01:15 PM	MW	THTR W350		30	Main Campus
862	DNC	1000	4	B	22504	2	Begin Contemporary Dance Tech	LEC	12:00 PM - 01:15 PM	TTH	CARL E012		30	Main Campus
863	DNC	1012	1	B	15010	2	Dance Production	MLS	03:30 PM - 05:30 PM	TTH	THTR W150	Lane,Constance Irene	16	Main Campus
864	DNC	1012	1	B	15010	2	Dance Production	MLS	03:30 PM - 05:30 PM	TTH	THTR W150	Court,Iain Maxwell	16	Main Campus
865	DNC	1027	1	B	19980	3	Dance in Culture	LEC	09:00 AM - 09:50 AM	MWF	THTR C340	Mejia,Donna Leah	35	Main Campus
866	DNC	1100	1	B	15009	1	Beginning Ballet	STU	02:00 PM - 03:15 PM	TTH	THTR W350		30	Main Campus
867	DNC	1200	1	B	20786	1	Beginning Jazz Dance	STU	08:30 AM - 09:45 AM	TTH	THTR W150		30	Main Campus
868	DNC	1301	10	B	20787	2	Hip-Hop Dance Technique 1	LEC	12:00 PM - 12:30 PM	TTH	THTR W150	Southall,Lawrence Todd	30	Main Campus
869	DNC	1301	11	B	20789	2	Hip-Hop Dance Technique 1	LAB	12:30 PM - 01:30 PM	TTH	THTR W150	Southall,Lawrence Todd	30	Main Campus
870	DNC	1301	12	B	20790	2	Hip-Hop Dance Technique 1	LAB	02:00 PM - 03:00 PM	TTH	THTR W150	Southall,Lawrence Todd	30	Main Campus
871	DNC	1301	13	B	33845	2	Hip-Hop Dance Technique 1	LAB	02:30 PM - 03:30 PM	MW	CARL E012		30	Main Campus
872	DNC	1301	20	B	20788	2	Hip-Hop Dance Technique 1	LEC	01:30 PM - 02:00 PM	TTH	THTR W150	Southall,Lawrence Todd	30	Main Campus
873	DNC	1301	30	B	33844	2	Hip-Hop Dance Technique 1	LEC	02:00 PM - 02:30 PM	MW	CARL E012		30	Main Campus
874	DNC	1908	1	B	20660	1	First Year Dance Seminar	STU	12:00 PM - 12:50 PM	MW	THTR C370	Manno,Jesse John	20	Main Campus
875	DNC	2021	801	B	19978	2	Major Technique	STU	10:00 AM - 11:30 AM	M-F	CARL E012		25	Main Campus
876	DNC	2501	1	B	18688	2	African Dance	LEC	12:00 PM - 01:30 PM	MW	THTR W150	Sowah,Nii Armah	45	Main Campus
877	DNC	2501	2	B	18689	2	African Dance	LEC	02:00 PM - 03:30 PM	MW	THTR W150	Sowah,Nii Armah	45	Main Campus
878	DNC	3014	1	B	34170	2	Inside the Groove	LEC	01:30 PM - 02:45 PM	MW	THTR W325	Manno,Jesse John	15	Main Campus
879	DNC	3035	801	B	20804	1	Production Practicum	PRA	-	TBA	See Academc Dept	Court,Iain Maxwell	25	Main Campus
880	DNC	3035	802	B	20805	1	Production Practicum	PRA	-	TBA	See Academc Dept	Court,Iain Maxwell	25	Main Campus
881	DNC	3041	801	B	14873	2	Major Technique	STU	10:00 AM - 11:30 AM	M-F	THTR W150	Harris,Lorenzo R	25	Main Campus
882	DNC	3301	801	B	21149	2	Hip-Hop Dance Technique 2	LEC	12:00 PM - 01:30 PM	MW	CARL E012	Harris,Lorenzo R	20	Main Campus
883	DNC	3601	810	B	22238	2	Alexander Technique	LEC	12:00 PM - 01:30 PM	T	THTR W325	Diachenko,Nada	8	Main Campus
884	DNC	3601	811	B	22239	2	Alexander Technique	LAB	02:00 PM - 04:00 PM	T	THTR W325	Diachenko,Nada	4	Main Campus
885	DNC	3601	812	B	22240	2	Alexander Technique	LAB	12:00 PM - 02:00 PM	TH	THTR W325	Diachenko,Nada	4	Main Campus
886	DNC	4036	1	B	21548	3	Dance Teaching Practices	LEC	12:00 PM - 01:30 PM	MW	THTR W325	Mejia,Donna Leah	16	Main Campus
887	DNC	4038	801	B	21151	1-3	Dance Repertory	STU	-	TBA	See Academc Dept	Randall,Erika Anne	30	Main Campus
888	DNC	4047	1	B	20791	3	Hip-Hop Dance History	LEC	12:00 PM - 01:30 PM	TTH	THTR C342	Harris,Lorenzo R	22	Main Campus
889	DNC	4053	1	B	15440	3	Advance Dance Composition	LEC	03:30 PM - 05:00 PM	TTH	THTR W350	Ellsworth,Michelle	8	Main Campus
890	DNC	4061	801	B	20275	2	Major Technique	STU	10:00 AM - 11:30 AM	M-F	THTR W350	Wilkins,Helanius J	25	Main Campus
891	DNC	4181	801	B	34171	1	Advanced Ballet	STU	12:00 PM - 01:30 PM	TTH	THTR W350	Randall,Erika Anne	20	Main Campus
892	DNC	5001	1	B	15003	2	Graduate Technique	STU	10:00 AM - 11:30 AM	M-F	CARL E012		10	Main Campus
893	DNC	5001	2	B	15004	2	Graduate Technique	STU	10:00 AM - 11:30 AM	M-F	THTR W150	Harris,Lorenzo R	10	Main Campus
894	DNC	5001	3	B	15005	2	Graduate Technique	STU	10:00 AM - 11:30 AM	M-F	THTR W350	Wilkins,Helanius J	10	Main Campus
895	DNC	5012	1	B	20955	1	Concert Production	SEM	12:00 PM - 01:00 PM	TH	THTR W1B60	Court,Iain Maxwell	10	Main Campus
896	DNC	5017	11	B	14248	3	Dancing Histories	REC	-	TBA	See Academc Dept		6	Main Campus
897	DNC	5047	1	B	20803	3	Hip-Hop Dance History	LEC	12:00 PM - 01:30 PM	TTH	THTR C342	Harris,Lorenzo R	3	Main Campus
898	DNC	5048	1	B	15013	3	Performance and Community	FLD	02:00 PM - 03:30 PM	TTH	CARL E012	Sowah,Nii Armah	5	Main Campus
899	DNC	5048	1	B	15013	3	Performance and Community	FLD	02:00 PM - 03:30 PM	TTH	CARL E012	Osnes,Mary Beth	5	Main Campus
900	DNC	5053	1	B	15441	3	Advance Dance Composition	LEC	03:30 PM - 05:00 PM	TTH	THTR W350	Ellsworth,Michelle	6	Main Campus
901	DNC	5301	1	B	22234	2	Graduate Hip-Hop Technique 1	LEC	12:00 PM - 01:30 PM	TTH	THTR W150	Southall,Lawrence Todd	5	Main Campus
902	DNC	5301	2	B	22235	2	Graduate Hip-Hop Technique 1	LEC	01:30 PM - 03:00 PM	TTH	THTR W150	Southall,Lawrence Todd	5	Main Campus
903	DNC	5331	801	B	22014	2	Grad Hip-Hop Technique 2	LEC	12:00 PM - 01:30 PM	MW	CARL E012	Harris,Lorenzo R	10	Main Campus
904	DNC	5339	801	B	35103	1-3	Hip-hop Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Harris,Lorenzo R	5	Main Campus
905	DNC	5339	802	B	35104	1-3	Hip-hop Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Southall,Lawrence Todd	5	Main Campus
906	DNC	5501	1	B	22231	2	Graduate African Dance	LEC	12:00 PM - 01:30 PM	MW	THTR W150	Sowah,Nii Armah	5	Main Campus
907	DNC	5501	2	B	22232	2	Graduate African Dance	LEC	02:00 PM - 03:30 PM	MW	THTR W150	Sowah,Nii Armah	5	Main Campus
908	DNC	5601	810	B	22242	2	Graduate Alexander	LEC	12:00 PM - 01:30 PM	T	THTR W325	Diachenko,Nada	8	Main Campus
909	DNC	5601	811	B	22243	2	Graduate Alexander	LAB	02:00 PM - 04:00 PM	T	THTR W325	Diachenko,Nada	4	Main Campus
910	DNC	5601	812	B	22244	2	Graduate Alexander	LAB	12:00 PM - 02:00 PM	TH	THTR W325	Diachenko,Nada	4	Main Campus
911	DNC	5919	802	B	15977	1-3	Dance Practicum	PRA	-	TBA	See Academc Dept	Diachenko,Nada	10	Main Campus
912	DNC	6101	801	B	34172	1	Advanced Grad Ballet	STU	12:00 PM - 01:30 PM	TTH	THTR W350	Randall,Erika Anne	10	Main Campus
913	EBIO	1100	10	B	36172	3	Biology and Society	LEC	12:30 PM - 01:45 PM	TTH	FLMG 155	Pinzone,Cheryl Ann	162	Main Campus
914	EBIO	1110	13	B	36320	1	Biology and Society Laboratory	MLS	01:00 PM - 02:50 PM	M	KTCH 1B17		18	Main Campus
915	EBIO	1210	1	B	14500	3	General Biology 1	LEC	10:00 AM - 10:50 AM	MWF	MUEN E050	Demmig-Adams,Barbara	400	Main Campus
916	EBIO	1210	1	B	14500	3	General Biology 1	LEC	10:00 AM - 10:50 AM	MWF	MUEN E050	Flaxman,Samuel M	400	Main Campus
917	EBIO	1210	1	B	14500	3	General Biology 1	LEC	10:00 AM - 10:50 AM	MWF	MUEN E050	Sweeney,Derek	400	Main Campus
918	EBIO	1210	2	B	14501	3	General Biology 1	LEC	11:00 AM - 11:50 AM	MWF	MUEN E050	Flaxman,Samuel M	400	Main Campus
919	EBIO	1210	2	B	14501	3	General Biology 1	LEC	11:00 AM - 11:50 AM	MWF	MUEN E050	Sweeney,Derek	400	Main Campus
920	EBIO	1210	2	B	14501	3	General Biology 1	LEC	11:00 AM - 11:50 AM	MWF	MUEN E050	Demmig-Adams,Barbara	400	Main Campus
921	EBIO	1210	3	B	14504	3	General Biology 1	LEC	12:30 PM - 01:45 PM	TTH	MUEN E050	Sweeney,Derek	400	Main Campus
922	EBIO	1210	3	B	14504	3	General Biology 1	LEC	12:30 PM - 01:45 PM	TTH	MUEN E050		400	Main Campus
923	EBIO	1210	3	B	14504	3	General Biology 1	LEC	12:30 PM - 01:45 PM	TTH	MUEN E050	Adams,William	400	Main Campus
924	EBIO	1210	4	B	14505	3	General Biology 1	LEC	02:00 PM - 03:15 PM	TTH	MUEN E050		400	Main Campus
925	EBIO	1210	4	B	14505	3	General Biology 1	LEC	02:00 PM - 03:15 PM	TTH	MUEN E050	Adams,William	400	Main Campus
926	EBIO	1210	4	B	14505	3	General Biology 1	LEC	02:00 PM - 03:15 PM	TTH	MUEN E050	Sweeney,Derek	400	Main Campus
927	EBIO	1210	311R	B	21876	3	General Biology 1	LEC	09:30 AM - 10:45 AM	TTH	FLMG 294	Akacem,Lameese Dana	24	Main Campus
928	EBIO	1210	311R	B	21876	3	General Biology 1	LEC	09:00 AM - 09:50 AM	WF	FLMG 265	Akacem,Lameese Dana	24	Main Campus
929	EBIO	1210	880	B	22307	3	General Biology 1	LEC	01:00 PM - 01:50 PM	MWF	LIBR N424A	Buchwald,Robert	7	Main Campus
930	EBIO	1230	1	B	14692	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	M	RAMY C147	Basey,John M	16	Main Campus
931	EBIO	1230	2	B	14693	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	M	RAMY C148	Basey,John M	16	Main Campus
932	EBIO	1230	3	B	14694	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	M	RAMY C151	Basey,John M	16	Main Campus
933	EBIO	1230	4	B	14695	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	M	RAMY C159	Basey,John M	16	Main Campus
934	EBIO	1230	5	B	14696	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	M	RAMY C147	Basey,John M	16	Main Campus
935	EBIO	1230	6	B	14697	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	M	RAMY C148	Basey,John M	16	Main Campus
936	EBIO	1230	7	B	14698	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	M	RAMY C151	Basey,John M	16	Main Campus
937	EBIO	1230	8	B	14699	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	M	RAMY C159	Basey,John M	16	Main Campus
938	EBIO	1230	9	B	14700	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	M	RAMY C147	Basey,John M	16	Main Campus
939	EBIO	1230	10	B	14701	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	M	RAMY C148	Basey,John M	16	Main Campus
940	EBIO	1230	11	B	14702	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	M	RAMY C151	Basey,John M	16	Main Campus
941	EBIO	1230	12	B	14703	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	M	RAMY C159	Basey,John M	16	Main Campus
942	EBIO	1230	13	B	19614	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	M	RAMY C147	Basey,John M	16	Main Campus
943	EBIO	1230	14	B	19615	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	M	RAMY C148	Basey,John M	16	Main Campus
944	EBIO	1230	15	B	19616	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	M	RAMY C151	Basey,John M	16	Main Campus
945	EBIO	1230	16	B	20098	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	M	RAMY C159	Basey,John M	16	Main Campus
946	EBIO	1230	17	B	20099	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	T	RAMY C147	Basey,John M	16	Main Campus
947	EBIO	1230	18	B	20100	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	T	RAMY C148	Basey,John M	16	Main Campus
948	EBIO	1230	19	B	20101	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	T	RAMY C151	Basey,John M	16	Main Campus
949	EBIO	1230	20	B	20102	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	T	RAMY C159	Basey,John M	16	Main Campus
950	EBIO	1230	21	B	20103	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	T	RAMY C147	Basey,John M	16	Main Campus
951	EBIO	1230	22	B	20104	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	T	RAMY C148	Basey,John M	16	Main Campus
952	EBIO	1230	23	B	20105	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	T	RAMY C151	Basey,John M	16	Main Campus
953	EBIO	1230	24	B	20106	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	T	RAMY C159	Basey,John M	16	Main Campus
954	EBIO	1230	25	B	20107	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	T	RAMY C147	Basey,John M	16	Main Campus
955	EBIO	1230	26	B	20108	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	T	RAMY C148	Basey,John M	16	Main Campus
956	EBIO	1230	27	B	20109	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	T	RAMY C151	Basey,John M	16	Main Campus
957	EBIO	1230	28	B	20110	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	T	RAMY C159	Basey,John M	16	Main Campus
958	EBIO	1230	29	B	20111	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	T	RAMY C147	Basey,John M	16	Main Campus
959	EBIO	1230	30	B	20112	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	T	RAMY C148	Basey,John M	16	Main Campus
960	EBIO	1230	31	B	20113	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	T	RAMY C151	Basey,John M	16	Main Campus
961	EBIO	1230	32	B	20114	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	T	RAMY C159	Basey,John M	16	Main Campus
962	EBIO	1230	33	B	20115	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	W	RAMY C147	Basey,John M	16	Main Campus
963	EBIO	1230	34	B	20116	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	W	RAMY C148	Basey,John M	16	Main Campus
964	EBIO	1230	35	B	20117	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	W	RAMY C151	Basey,John M	16	Main Campus
965	EBIO	1230	36	B	20118	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	W	RAMY C159	Basey,John M	16	Main Campus
966	EBIO	1230	37	B	20119	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	W	RAMY C147	Basey,John M	16	Main Campus
967	EBIO	1230	38	B	20120	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	W	RAMY C148	Basey,John M	16	Main Campus
968	EBIO	1230	39	B	20121	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	W	RAMY C151	Basey,John M	16	Main Campus
969	EBIO	1230	40	B	20122	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	W	RAMY C159	Basey,John M	16	Main Campus
970	EBIO	1230	41	B	20123	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	W	RAMY C147	Basey,John M	16	Main Campus
971	EBIO	1230	42	B	20124	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	W	RAMY C148	Basey,John M	16	Main Campus
972	EBIO	1230	43	B	20125	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	W	RAMY C151	Basey,John M	16	Main Campus
973	EBIO	1230	44	B	20126	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	W	RAMY C159	Basey,John M	16	Main Campus
974	EBIO	1230	45	B	20127	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	W	RAMY C147	Basey,John M	16	Main Campus
975	EBIO	1230	46	B	20128	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	W	RAMY C148	Basey,John M	16	Main Campus
976	EBIO	1230	47	B	20129	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	W	RAMY C151	Basey,John M	16	Main Campus
977	EBIO	1230	48	B	20130	1	General Biology Lab 1	MLS	02:00 PM - 03:50 PM	W	RAMY C159	Basey,John M	16	Main Campus
978	EBIO	1230	49	B	20131	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	TH	RAMY C147	Basey,John M	16	Main Campus
979	EBIO	1230	50	B	20132	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	TH	RAMY C148	Basey,John M	16	Main Campus
980	EBIO	1230	51	B	20133	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	TH	RAMY C151	Basey,John M	16	Main Campus
981	EBIO	1230	52	B	20134	1	General Biology Lab 1	MLS	08:00 AM - 09:50 AM	TH	RAMY C159	Basey,John M	16	Main Campus
982	EBIO	1230	53	B	20135	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	TH	RAMY C147	Basey,John M	16	Main Campus
983	EBIO	1230	54	B	20136	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	TH	RAMY C148	Basey,John M	16	Main Campus
984	EBIO	1230	55	B	20137	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	TH	RAMY C151	Basey,John M	16	Main Campus
985	EBIO	1230	56	B	20138	1	General Biology Lab 1	MLS	10:00 AM - 11:50 AM	TH	RAMY C159	Basey,John M	16	Main Campus
986	EBIO	1230	57	B	20139	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	TH	RAMY C147	Basey,John M	16	Main Campus
987	EBIO	1230	58	B	20140	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	TH	RAMY C148	Basey,John M	16	Main Campus
988	EBIO	1230	59	B	20141	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	TH	RAMY C151	Basey,John M	16	Main Campus
989	EBIO	1230	60	B	20142	1	General Biology Lab 1	MLS	12:00 PM - 01:50 PM	TH	RAMY C159	Basey,John M	16	Main Campus
990	EBIO	1250	10	B	36185	4	Intro to EBIO Research	LEC	04:00 PM - 05:50 PM	T	RAMY N183	Suding,Katharine Nash	40	Main Campus
991	EBIO	1940	1	B	20837	3	Intro Sci Writing	LEC	09:30 AM - 10:45 AM	TTH	KTCH 1B20	Renfrow,Stephanie	18	Main Campus
992	EBIO	1940	2	B	20151	3	Intro Sci Writing	LEC	10:00 AM - 10:50 AM	MWF	KTCH 1B20	Carpenter,J Harrison	18	Main Campus
993	EBIO	2040	10	B	14506	4	Principles of Ecology	LEC	01:00 PM - 01:50 PM	MWF	RAMY C250	Corwin,Lisa	126	Main Campus
994	EBIO	2040	20	B	19550	4	Principles of Ecology	LEC	12:30 PM - 01:45 PM	TTH	RAMY C250	Davies,Kendi F	103	Main Campus
995	EBIO	2070	10	B	20769	4	Genetics: Molec to Populations	LEC	09:30 AM - 10:45 AM	TTH	ECCR 265	Stock,David	152	Main Campus
996	EBIO	2070	11	B	20838	4	Genetics: Molec to Populations	REC	01:00 PM - 02:50 PM	M	RAMY N183	Stock,David	19	Main Campus
997	EBIO	2070	12	B	20839	4	Genetics: Molec to Populations	REC	02:00 PM - 03:50 PM	M	RAMY N1B75	Stock,David	19	Main Campus
998	EBIO	2070	13	B	20840	4	Genetics: Molec to Populations	REC	03:30 PM - 05:20 PM	T	KTCH 1B20	Stock,David	19	Main Campus
999	EBIO	2070	14	B	20841	4	Genetics: Molec to Populations	REC	08:00 AM - 09:50 AM	W	RAMY N183	Stock,David	19	Main Campus
1000	EBIO	2070	15	B	20842	4	Genetics: Molec to Populations	REC	11:00 AM - 12:50 PM	W	RAMY N183	Stock,David	19	Main Campus
1001	EBIO	2070	16	B	20843	4	Genetics: Molec to Populations	REC	03:00 PM - 04:50 PM	W	KTCH 1B20	Stock,David	19	Main Campus
1002	EBIO	2070	19	B	21948	4	Genetics: Molec to Populations	REC	11:00 AM - 12:50 PM	M	RAMY N183	Stock,David	19	Main Campus
1003	EBIO	2070	20	B	21949	4	Genetics: Molec to Populations	REC	01:00 PM - 02:50 PM	W	RAMY N183	Stock,David	19	Main Campus
1004	EBIO	3010	801	B	17154	1-2	Teaching Biology	PRA	-	TBA		Basey,John M	5	Main Campus
1005	EBIO	3010	802	B	17155	1-2	Teaching Biology	PRA	-	TBA		Kelly,Caitlin	5	Main Campus
1006	EBIO	3010	803	B	17156	1-2	Teaching Biology	PRA	-	TBA		Mayer,Stephanie Susan	5	Main Campus
1007	EBIO	3010	804	B	17157	1-2	Teaching Biology	PRA	-	TBA			5	Main Campus
1008	EBIO	3010	805	B	17158	1-2	Teaching Biology	PRA	-	TBA		Breed,Michael	5	Main Campus
1009	EBIO	3010	805	B	17158	1-2	Teaching Biology	PRA	-	TBA		Kelly,Caitlin	5	Main Campus
1010	EBIO	3010	806	B	18326	1-2	Teaching Biology	PRA	-	TBA		Sweeney,Derek	5	Main Campus
1011	EBIO	3010	807	B	18327	1-2	Teaching Biology	PRA	-	TBA		Martin,Andrew	5	Main Campus
1012	EBIO	3010	808	B	18328	1-2	Teaching Biology	PRA	-	TBA		Sweeney,Derek	5	Main Campus
1013	EBIO	3040	10	B	28934	4	Conservation Biology	LEC	12:00 PM - 12:50 PM	MWF	DUAN G125	McKenzie,Valerie J	36	Main Campus
1014	EBIO	3080	10	B	14513	4	Evolutionary Biology	LEC	01:00 PM - 01:50 PM	MWF	GOLD A120	Martin,Andrew	60	Main Campus
1015	EBIO	3080	10	B	14513	4	Evolutionary Biology	LEC	01:00 PM - 01:50 PM	MWF	GOLD A120	Evans,Luke Mc Lean	60	Main Campus
1016	EBIO	3080	11	B	18525	0	Evolutionary Biology	LAB	11:30 AM - 01:20 PM	TH	RAMY N1B36	Martin,Andrew	20	Main Campus
1017	EBIO	3080	12	B	18526	0	Evolutionary Biology	LAB	10:00 AM - 11:50 AM	W	RAMY N1B36	Martin,Andrew	20	Main Campus
1018	EBIO	3080	13	B	18527	0	Evolutionary Biology	LAB	12:00 PM - 01:50 PM	W	RAMY N1B36	Martin,Andrew	20	Main Campus
1019	EBIO	3080	14	B	18528	0	Evolutionary Biology	LAB	09:30 AM - 11:20 AM	TH	RAMY N1B36	Martin,Andrew	20	Main Campus
1020	EBIO	3080	15	B	21060	0	Evolutionary Biology	LAB	10:00 AM - 11:50 AM	T	RAMY N1B36	Martin,Andrew	20	Main Campus
1021	EBIO	3080	16	B	21061	0	Evolutionary Biology	LAB	12:00 PM - 01:50 PM	T	RAMY N1B36	Martin,Andrew	20	Main Campus
1022	EBIO	3080	20	B	22643	4	Evolutionary Biology	LEC	02:00 PM - 02:50 PM	MWF	GOLD A120	Martin,Andrew	60	Main Campus
1023	EBIO	3080	20	B	22643	4	Evolutionary Biology	LEC	02:00 PM - 02:50 PM	MWF	GOLD A120	Evans,Luke Mc Lean	60	Main Campus
1024	EBIO	3190	1	B	21538	3	Tropical Marine Ecology	LEC	11:00 AM - 12:15 PM	TTH	RAMY N183	Dougherty,Lindsey Furman	35	Main Campus
1025	EBIO	3240	10	B	14662	4	Animal Behavior	LEC	02:00 PM - 03:15 PM	TTH	HLMS 252	Kelly,Caitlin	108	Main Campus
1026	EBIO	3240	11	B	14663	4	Animal Behavior	LAB	09:00 AM - 11:50 AM	M	RAMY N1B24	Kelly,Caitlin	18	Main Campus
1027	EBIO	3240	12	B	14664	4	Animal Behavior	LAB	02:00 PM - 04:50 PM	M	RAMY N1B24	Kelly,Caitlin	18	Main Campus
1028	EBIO	3240	13	B	14665	4	Animal Behavior	LAB	09:00 AM - 11:50 AM	T	RAMY N1B24	Kelly,Caitlin	18	Main Campus
1029	EBIO	3240	14	B	14666	4	Animal Behavior	LAB	09:00 AM - 11:50 AM	W	RAMY N1B24	Kelly,Caitlin	18	Main Campus
1030	EBIO	3240	15	B	14667	4	Animal Behavior	LAB	02:00 PM - 04:50 PM	W	RAMY N1B24	Kelly,Caitlin	18	Main Campus
1031	EBIO	3240	16	B	14668	4	Animal Behavior	LAB	09:00 AM - 11:50 AM	TH	RAMY N1B24	Kelly,Caitlin	18	Main Campus
1032	EBIO	3523	4	B	34959	3	Art of Science Communication	LEC	12:30 PM - 01:45 PM	TTH	CLUB 13	Safran,Rebecca J	10	Main Campus
1033	EBIO	3523	4	B	34959	3	Art of Science Communication	LEC	12:30 PM - 01:45 PM	TTH	CLUB 13	Schauster,Erin E	10	Main Campus
1034	EBIO	3590	10	B	21118	4	Plants and Society	LEC	02:00 PM - 03:15 PM	TTH	GOLD A120	Smith,Stacey Dewitt	42	Main Campus
1035	EBIO	3590	11	B	21119	4	Plants and Society	LAB	09:30 AM - 12:15 PM	TH	RAMY C231	Smith,Stacey Dewitt	14	Main Campus
1036	EBIO	3590	12	B	21120	4	Plants and Society	LAB	03:00 PM - 05:50 PM	W	RAMY C231	Smith,Stacey Dewitt	14	Main Campus
1037	EBIO	3590	13	B	21121	4	Plants and Society	LAB	09:00 AM - 11:50 AM	F	RAMY C231	Smith,Stacey Dewitt	14	Main Campus
1641	GRM	1010	3	B	14059	4	Beginning German 1	LEC	11:00 AM - 11:50 AM	MTTF	CHEM 145		19	Main Campus
1038	EBIO	3940	1	B	20846	3	Written Comm in the Sciences	LEC	12:00 PM - 12:50 PM	MWF	KTCH 1B20	Carpenter,J Harrison	20	Main Campus
1039	EBIO	3940	2	B	15659	3	Written Comm in the Sciences	LEC	02:00 PM - 02:50 PM	MWF	KTCH 1B20	Carpenter,J Harrison	20	Main Campus
1040	EBIO	3940	3	B	15660	3	Written Comm in the Sciences	LEC	11:00 AM - 12:15 PM	TTH	KTCH 1B20	Renfrow,Stephanie	20	Main Campus
1041	EBIO	3940	4	B	21461	3	Written Comm in the Sciences	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B20	Renfrow,Stephanie	20	Main Campus
1042	EBIO	4060	1	B	15662	3	Landscape Ecology	LEC	09:30 AM - 10:45 AM	TTH	RAMY N183	Wessman,Carol A	30	Main Campus
1043	EBIO	4090	800	B	15664	2	Coral Reef Ecology	LEC	05:00 PM - 07:30 PM	TH	RAMY N183	Johnson,Pieter TJ	15	Main Campus
1044	EBIO	4270	10	B	34895	4	Population Genetics	LEC	02:00 PM - 03:15 PM	TTH	RAMY N1B75	Taylor,Scott	28	Main Campus
1045	EBIO	4270	11	B	34897	4	Population Genetics	LAB	09:00 AM - 11:50 AM	F	RAMY N183	Taylor,Scott	14	Main Campus
1046	EBIO	4270	12	B	34898	4	Population Genetics	LAB	12:00 PM - 02:50 PM	F	RAMY N183	Taylor,Scott	14	Main Campus
1047	EBIO	4410	10	B	19551	4	Biological Statistics	LEC	11:00 AM - 12:15 PM	TTH	RAMY N1B31	Johnson,Pieter TJ	20	Main Campus
1048	EBIO	4410	12	B	21078	4	Biological Statistics	LAB	03:30 PM - 04:45 PM	TH	RAMY N183	Johnson,Pieter TJ	20	Main Campus
1049	EBIO	4440	10	B	21605	4	Animal Developmental Diversity	LEC	12:30 PM - 01:45 PM	TTH	RAMY N1B75	Medeiros,Daniel Meulemans	32	Main Campus
1050	EBIO	4440	11	B	21606	4	Animal Developmental Diversity	LAB	09:00 AM - 11:50 AM	W	RAMY N1B76	Medeiros,Daniel Meulemans	16	Main Campus
1051	EBIO	4440	12	B	21607	4	Animal Developmental Diversity	LAB	12:00 PM - 02:50 PM	W	RAMY N1B76	Medeiros,Daniel Meulemans	16	Main Campus
1052	EBIO	4460	20	B	22711	1-5	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B87	Kane,Nolan Coburn	30	Main Campus
1053	EBIO	4460	21	B	20609	1-5	Special Topics	REC	12:00 PM - 12:50 PM	M	RAMY N1B75	Kane,Nolan Coburn	30	Main Campus
1054	EBIO	4460	30	B	22453	1-5	Special Topics	LEC	01:00 PM - 01:50 PM	MWF	DUAN G2B60	Quandt,Catherine	28	Main Campus
1055	EBIO	4460	31	B	22454	1-5	Special Topics	LAB	09:00 AM - 11:50 AM	TH	RAMY N1B76	Quandt,Catherine	14	Main Campus
1056	EBIO	4460	32	B	22455	1-5	Special Topics	LAB	02:00 PM - 04:50 PM	TH	RAMY N1B76	Quandt,Catherine	14	Main Campus
1057	EBIO	4510	10	B	22286	4	Plant Anatomy/Development	LEC	12:30 PM - 01:45 PM	TTH	RAMY N183	Mayer,Stephanie Susan	36	Main Campus
1058	EBIO	4510	11	B	22287	4	Plant Anatomy/Development	LAB	02:00 PM - 04:50 PM	T	RAMY C231	Mayer,Stephanie Susan	18	Main Campus
1059	EBIO	4510	12	B	22288	4	Plant Anatomy/Development	LAB	09:00 AM - 11:50 AM	W	RAMY C231	Mayer,Stephanie Susan	18	Main Campus
1060	EBIO	4600	10	B	21850	4	Evolutionary Ecology	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B17	Emery,Nancy Christine	12	Main Campus
1061	EBIO	4600	11	B	21851	4	Evolutionary Ecology	LAB	02:00 PM - 04:50 PM	TH	KTCH 1B17	Emery,Nancy Christine	12	Main Campus
1062	EBIO	4660	10	B	15666	4	Insect Biology	LEC	01:00 PM - 01:50 PM	MWF	RAMY N1B31	Carper,Adrian L	30	Main Campus
1063	EBIO	4660	11	B	15667	4	Insect Biology	LAB	09:00 AM - 11:50 AM	M	RAMY N1B76	Carper,Adrian L	14	Main Campus
1064	EBIO	4660	12	B	15668	4	Insect Biology	LAB	02:00 PM - 04:50 PM	M	RAMY N1B76	Carper,Adrian L	14	Main Campus
1065	EBIO	4800	1	B	28903	3	Critical Thinking in Biology	LEC	02:00 PM - 03:15 PM	TTH	KTCH 1B20	Fierer,Noah	25	Main Campus
1066	EBIO	4800	4	B	28924	3	Critical Thinking in Biology	LEC	02:00 PM - 03:15 PM	TTH	RAMY N183	Schmidt,Steve	15	Main Campus
1067	EBIO	5060	1	B	15663	3	Landscape Ecology	LEC	09:30 AM - 10:45 AM	TTH	RAMY N183	Wessman,Carol A	10	Main Campus
1068	EBIO	5080	10	B	22577	4	Freshwater Phycology	LEC	-				15	Main Campus
1069	EBIO	5080	11	B	22578	4	Freshwater Phycology	LAB	-				15	Main Campus
1070	EBIO	5270	10	B	34925	4	Population Genetics	LEC	02:00 PM - 03:15 PM	TTH	RAMY N1B75	Taylor,Scott	2	Main Campus
1071	EBIO	5270	11	B	34928	4	Population Genetics	LAB	09:00 AM - 11:50 AM	F	RAMY N183	Taylor,Scott	1	Main Campus
1072	EBIO	5270	12	B	34929	4	Population Genetics	LAB	12:00 PM - 02:50 PM	F	RAMY N183	Taylor,Scott	1	Main Campus
1073	EBIO	5410	10	B	19552	4	Biological Statistics	LEC	11:00 AM - 12:15 PM	TTH	RAMY N1B31	Johnson,Pieter TJ	10	Main Campus
1074	EBIO	5410	12	B	21079	4	Biological Statistics	LAB	03:30 PM - 04:45 PM	TH	RAMY N183	Johnson,Pieter TJ	10	Main Campus
1075	EBIO	5440	10	B	21608	4	Animal Developmental Diversity	LEC	12:30 PM - 01:45 PM	TTH	RAMY N1B75	Medeiros,Daniel Meulemans	16	Main Campus
1076	EBIO	5440	11	B	21609	4	Animal Developmental Diversity	LAB	09:00 AM - 11:50 AM	W	RAMY N1B76	Medeiros,Daniel Meulemans	16	Main Campus
1077	EBIO	5440	12	B	21610	4	Animal Developmental Diversity	LAB	12:00 PM - 02:50 PM	W	RAMY N1B76	Medeiros,Daniel Meulemans	16	Main Campus
1078	EBIO	5460	2	B	21848	1-5	Special Topics	LEC	03:30 PM - 05:00 PM	MW		Melbourne,Brett Andrew	15	Main Campus
1079	EBIO	5460	20	B	20283	1-5	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B87	Kane,Nolan Coburn	11	Main Campus
1080	EBIO	5460	21	B	20610	1-5	Special Topics	REC	01:00 PM - 01:50 PM	M	RAMY N1B75	Kane,Nolan Coburn	11	Main Campus
1081	EBIO	5460	30	B	21863	1-5	Special Topics	LEC	01:00 PM - 01:50 PM	MWF	DUAN G2B60	Quandt,Catherine	5	Main Campus
1082	EBIO	5460	31	B	21864	1-5	Special Topics	LAB	09:00 AM - 11:50 AM	TH	RAMY N1B76	Quandt,Catherine	5	Main Campus
1083	EBIO	5460	32	B	22475	1-5	Special Topics	LAB	02:00 PM - 04:50 PM	TH	RAMY N1B76	Quandt,Catherine	5	Main Campus
1084	EBIO	5600	10	B	21852	4	Evolutionary Ecology	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B17	Emery,Nancy Christine	2	Main Campus
1085	EBIO	5600	11	B	21853	4	Evolutionary Ecology	LAB	02:00 PM - 04:50 PM	TH	KTCH 1B17	Emery,Nancy Christine	2	Main Campus
1086	EBIO	5660	10	B	15676	4	Insect Biology	LEC	01:00 PM - 01:50 PM	MWF	RAMY N1B31	Carper,Adrian L	2	Main Campus
1087	EBIO	5660	11	B	15677	4	Insect Biology	LAB	09:00 AM - 11:50 AM	M	RAMY N1B76	Carper,Adrian L	2	Main Campus
1088	EBIO	5660	12	B	15678	4	Insect Biology	LAB	02:00 PM - 04:50 PM	M	RAMY N1B76	Carper,Adrian L	2	Main Campus
1089	EBIO	5800	4	B	28925	3	Crit Thinking in Biology	LEC	02:00 PM - 03:15 PM	TTH	RAMY N183	Schmidt,Steve	10	Main Campus
1090	EBIO	6000	802	B	19947	1	Sem: Intro Biolog Rsrch	SEM	05:00 PM - 06:30 PM	W	RAMY N183	Bowers,Deane M	25	Main Campus
1091	EBIO	6100	1	B	21941	3	Sem in Environmental Biology	SEM	10:00 AM - 10:50 AM	M	See Academc Dept	Resasco,Julian	15	Main Campus
1092	EBIO	6100	1	B	21941	3	Sem in Environmental Biology	SEM	10:00 AM - 10:50 AM	M	See Academc Dept	Taylor,Scott	15	Main Campus
1093	EBIO	6100	2	B	20702	1-3	Sem in Environmental Biology	SEM	-			Barger,Nichole Nannette	15	Main Campus
1094	EBIO	6100	3	B	21470	1-3	Sem in Environmental Biology	SEM	03:30 PM - 05:30 PM	T	See Academc Dept	Rose,Alexandra P	15	Main Campus
1095	EBIO	6100	4	B	22910	1-3	Sem in Environmental Biology	SEM	04:00 PM - 04:50 PM	TH	RAMY N1B75	Smith,Stacey Dewitt	15	Main Campus
1096	EBIO	6100	5	B	32894	3	Sem in Environmental Biology	SEM	02:00 PM - 04:50 PM	W	MCOL E280	McCain,Christy	10	Main Campus
1097	EBIO	6200	2	B	19983	1-3	Seminar in Population Biology	SEM	12:00 PM - 12:50 PM	W	RAMY N1B75	Martin,Andrew	20	Main Campus
1098	EBIO	6200	3	B	22776	1-3	Seminar in Population Biology	SEM	-				20	Main Campus
1099	EBIO	6300	2	B	21469	1-3	Sem/Organismic Biology	SEM	-	TBA		Stock,David	20	Main Campus
1100	ECO	1078	2	B	21093	3	Math Tools for Economists 1	LEC	11:00 AM - 11:50 AM	MWF	MUEN E131		47	Main Campus
1101	ECO	1078	3	B	20730	3	Math Tools for Economists 1	LEC	12:00 PM - 12:50 PM	MWF	ECON 119		47	Main Campus
1102	ECO	1078	4	B	13395	3	Math Tools for Economists 1	LEC	01:00 PM - 01:50 PM	MWF	EDUC 155		47	Main Campus
1103	ECO	1088	1	B	22036	3	Math Tools for Economists 2	LEC	10:00 AM - 10:50 AM	MWF	DUAN G2B47		47	Main Campus
1104	ECO	1088	2	B	19086	3	Math Tools for Economists 2	LEC	12:00 PM - 12:50 PM	MWF	HLMS 211		47	Main Campus
1105	ECO	1088	3	B	21491	3	Math Tools for Economists 2	LEC	02:00 PM - 02:50 PM	MWF	ECON 119		47	Main Campus
1106	ECO	2010	100	B	20097	4	Prin of Microeconomics	LEC	10:00 AM - 10:50 AM	MWF	RAMY C250		200	Main Campus
1107	ECO	2010	200	B	14436	4	Prin of Microeconomics	LEC	11:00 AM - 11:50 AM	MWF	RAMY C250		200	Main Campus
1108	ECO	2010	300	B	14437	4	Prin of Microeconomics	LEC	12:00 PM - 12:50 PM	MWF	RAMY C250	Graves,Philip E	200	Main Campus
1109	ECO	2010	310R	B	21363	4	Prin of Microeconomics	LEC	02:00 PM - 02:50 PM	M-F	FLMG 294	Van Wyhe,Matthew Mullin	24	Main Campus
1110	ECO	2010	400	B	20041	4	Prin of Microeconomics	LEC	02:00 PM - 02:50 PM	MWF	HALE 270		180	Main Campus
1111	ECO	2010	500	B	20042	4	Prin of Microeconomics	LEC	03:00 PM - 03:50 PM	MWF	CHEM 142		180	Main Campus
1112	ECO	2010	700	B	19502	4	Prin of Microeconomics	LEC	09:30 AM - 10:45 AM	TTH	CHEM 142		180	Main Campus
1113	ECO	2010	800	B	21096	4	Prin of Microeconomics	LEC	02:00 PM - 03:15 PM	TTH	HUMN 1B50	Nigai,Sergey	200	Main Campus
1114	ECO	2010	900	B	28801	4	Prin of Microeconomics	LEC	03:30 PM - 04:45 PM	TTH	CHEM 140	Carballo,Jeronimo Rafael	491	Main Campus
1115	ECO	2020	100	B	14439	4	Prin of Macroeconomics	LEC	12:00 PM - 12:50 PM	MWF	GOLD A2B70		200	Main Campus
1116	ECO	2020	200	B	22484	4	Prin of Macroeconomics	LEC	03:30 PM - 04:45 PM	TTH	HALE 270		180	Main Campus
1117	ECO	3070	10	B	13406	4	Intrmed Microecon Theory	LEC	10:00 AM - 10:50 AM	MWF	MUEN E131		47	Main Campus
1118	ECO	3070	20	B	22039	4	Intrmed Microecon Theory	LEC	11:00 AM - 11:50 AM	MWF	GUGG 205	Barham,Tania C.J.	47	Main Campus
1119	ECO	3070	30	B	21503	4	Intrmed Microecon Theory	LEC	12:00 PM - 12:50 PM	MWF	ECON 117		47	Main Campus
1120	ECO	3070	50	B	21506	4	Intrmed Microecon Theory	LEC	09:30 AM - 10:45 AM	TTH	ECON 117	Chen,Yongmin	47	Main Campus
1121	ECO	3070	60	B	21800	4	Intrmed Microecon Theory	LEC	02:00 PM - 03:15 PM	TTH	MUEN E432	Chen,Yongmin	47	Main Campus
1122	ECO	3080	2	B	13410	3	Intrmed Macroecon Theory	LEC	11:00 AM - 11:50 AM	MWF	MUEN E432		47	Main Campus
1123	ECO	3080	3	B	28912	3	Intrmed Macroecon Theory	LEC	01:00 PM - 01:50 PM	MWF	CLUB 4		47	Main Campus
1124	ECO	3080	4	B	22042	3	Intrmed Macroecon Theory	LEC	02:00 PM - 02:50 PM	MWF	HLMS 211		47	Main Campus
1125	ECO	3080	5	B	21803	3	Intrmed Macroecon Theory	LEC	08:00 AM - 09:15 AM	TTH	ECON 117		47	Main Campus
1126	ECO	3080	6	B	21802	3	Intrmed Macroecon Theory	LEC	09:00 AM - 09:50 AM	MWF	MUEN E431		47	Main Campus
1127	ECO	3545	1	B	14442	3	Environmental Economics	LEC	03:00 PM - 03:50 PM	MWF	CLRE 207	Graves,Philip E	80	Main Campus
1128	ECO	3818	10	B	21202	4	Intro to Stat w/ Computer App	LEC	11:00 AM - 11:50 AM	MWF	ECON 117		47	Main Campus
1129	ECO	3818	20	B	22035	4	Intro to Stat w/ Computer App	LEC	01:00 PM - 01:50 PM	MWF	ECON 119		47	Main Campus
1130	ECO	3818	30	B	22116	4	Intro to Stat w/ Computer App	LEC	12:30 PM - 01:45 PM	TTH	EDUC 155		47	Main Campus
1131	ECO	3818	40	B	22117	4	Intro to Stat w/ Computer App	LEC	02:00 PM - 03:15 PM	TTH	ECON 119		47	Main Campus
1132	ECO	4070	1	B	22708	3	Topics in Microeconomics	LEC	11:00 AM - 12:15 PM	TTH	ECON 117	Savage,Scott James	47	Main Campus
1133	ECO	4211	1	B	21509	3	Public Economics	LEC	12:00 PM - 12:50 PM	MWF	DUAN G2B47	De Bartolome,Charles A M	47	Main Campus
1134	ECO	4242	1	B	34434	3	Urban Economics	LEC	10:00 AM - 10:50 AM	MWF	MUEN E431	De Bartolome,Charles A M	47	Main Campus
1135	ECO	4309	801	B	14463	3	Economics Honors Seminar 1	SEM	03:30 PM - 06:00 PM	T	ECON 5	Cadena,Brian C	24	Main Campus
1136	ECO	4413	1	B	14464	3	International Trade	LEC	11:00 AM - 12:15 PM	TTH	MUEN E131	Nigai,Sergey	47	Main Campus
1137	ECO	4423	1	B	22387	3	International Finance	LEC	10:00 AM - 10:50 AM	MWF	EDUC 155	Boileau,Martin	47	Main Campus
1138	ECO	4534	1	B	34435	3	Chinese Economic History	LEC	12:00 PM - 12:50 PM	MWF	HLMS 241	Shiue,Carol Hua	47	Main Campus
1139	ECO	4535	1	B	21263	3	Natural Resource Economics	LEC	01:00 PM - 01:50 PM	MWF	ECON 117	Mertens,William Gregory	47	Main Campus
1140	ECO	4545	1	B	14465	3	Environmental Economics	LEC	09:30 AM - 10:45 AM	TTH	HLMS 211	Hughes,Jonathan	47	Main Campus
1141	ECO	4616	1	B	20881	3	Labor Economics	LEC	09:00 AM - 09:50 AM	MWF	ECON 117	Mansfield,Richard	47	Main Campus
1142	ECO	4646	1	B	34436	3	Health Economics	LEC	01:00 PM - 01:50 PM	MWF	GUGG 205	Zhang,Shuang	47	Main Campus
1143	ECO	4697	1	B	21511	3	Industrial Organizatn/Regulatn	LEC	12:30 PM - 01:45 PM	TTH	HLMS 267	Savage,Scott James	47	Main Campus
1144	ECO	4717	1	B	20880	3	Economics of Entrepreneurship	LEC	02:00 PM - 03:15 PM	TTH	ECON 117	Kim,Jin-Hyuk	47	Main Campus
1145	ECO	4784	1	B	34437	3	Economic Development	LEC	10:00 AM - 10:50 AM	MWF	ECON 117	Antman,Francisca Marie	47	Main Campus
1146	ECO	4794	1	B	22388	3	Economic Growth	LEC	09:00 AM - 09:50 AM	MWF	ECON 119	Shiue,Carol Hua	47	Main Campus
1147	ECO	4797	1	B	21869	3	Antitrust and Regulation	LEC	03:00 PM - 05:30 PM	M	ECON 119	Moss,Diana Lesley	47	Main Campus
1148	ECO	4808	1	B	34438	3	Intro to Math Economics	LEC	11:00 AM - 11:50 AM	MWF	ECON 119	Mertens,William Gregory	47	Main Campus
1149	ECO	4818	1	B	20399	3	Introduction/Econometric	LEC	10:00 AM - 10:50 AM	MWF	ECON 119	Mertens,William Gregory	47	Main Campus
1150	ECO	4818	2	B	20545	3	Introduction/Econometric	LEC	01:00 PM - 01:50 PM	MWF	MUEN E131	Platikanova-Gross,Kremena	47	Main Campus
1151	ECO	4818	3	B	21013	3	Introduction/Econometric	LEC	02:00 PM - 02:50 PM	MWF	MUEN E432		47	Main Campus
1152	ECO	4848	1	B	14431	3	Applied Econometrics	LEC	11:00 AM - 11:50 AM	MWF	HUMN 1B45	McKinnish-Harllee,Terra Greenw	19	Main Campus
1153	ECO	4848	4	B	20677	3	Applied Econometrics	LEC	11:00 AM - 12:15 PM	TTH	HUMN 1B45	Kaffine,Daniel Thomas	19	Main Campus
1154	ECO	4848	5	B	21266	3	Applied Econometrics	LEC	12:30 PM - 01:45 PM	TTH	HUMN 1B45	Klein,Jennifer Lynn	19	Main Campus
1155	ECO	4858	1	B	21264	3	Financial Econometrics	LEC	12:30 PM - 01:45 PM	TTH	ECON 117	Martins-Filho,Carlos	47	Main Campus
1156	ECO	4929	1	B	34471	3	Special Topics In Economics	LEC	08:00 AM - 08:50 AM	MWF	MUEN E417	Maskus,Keith E	47	Main Campus
1157	ECO	7010	800	B	14467	3	Microeconomic Theory 1	LEC	12:30 PM - 01:45 PM	TTH	ECON 119	Kim,Jin-Hyuk	40	Main Campus
1158	ECO	7020	800	B	14469	3	Macroeconomic Theory 1	LEC	12:00 PM - 01:15 PM	MW	ECON 5	Boileau,Martin	24	Main Campus
1159	ECO	7050	1	B	20250	3	Advanced Economic Theory	LEC	11:00 AM - 12:15 PM	TTH	ECON 119	Chen,Yongmin	35	Main Campus
1160	ECO	7818	800	B	14470	3	Math Stats-Economists	LEC	09:30 AM - 10:45 AM	TTH	ECON 119	Martins-Filho,Carlos	40	Main Campus
1161	ECO	8209	1	B	22748	3	Econ Rsch Methods Workshop 1	SEM	09:00 AM - 10:15 AM	MW	ECON 5	McKinnish-Harllee,Terra Greenw	18	Main Campus
1162	ECO	8413	1	B	34439	3	Sem-Intl Trade Theory	SEM	12:30 PM - 01:45 PM	TTH	ECON 5	Carballo,Jeronimo Rafael	18	Main Campus
1163	ECO	8535	1	B	34445	3	Environmental Economics I	SEM	09:30 AM - 10:45 AM	TTH	ECON 5	Kaffine,Daniel Thomas	18	Main Campus
1164	ECO	8676	1	B	34446	3	Sem-Labor Economics 1	SEM	10:30 AM - 11:45 AM	MW	ECON 5	Mansfield,Richard	18	Main Campus
1165	ECO	8828	1	B	34447	3	Seminar: Econometrics 1	SEM	01:30 PM - 02:45 PM	MW	ECON 5	Liu,Xiaodong	18	Main Campus
1166	ENGL	1001	1	B	20594	3	Freshman Writing Seminar	SEM	03:00 PM - 03:50 PM	MWF	CHEM 133	Wright,Nicole M	18	Main Campus
1167	ENGL	1001	2	B	20595	3	Freshman Writing Seminar	SEM	12:00 PM - 12:50 PM	MWF	HLMS 104	Nugent,Teresa Lanpher	18	Main Campus
1168	ENGL	1001	4	B	20648	3	Freshman Writing Seminar	SEM	09:30 AM - 10:45 AM	TTH	DUAN G1B39	Anderman,Elizabeth Quainton	18	Main Campus
1169	ENGL	1001	5	B	34495	3	Freshman Writing Seminar	SEM	11:00 AM - 12:15 PM	TTH	HLMS 104		18	Main Campus
1170	ENGL	1191	1	B	15627	3	Intro Creative Writing	SEM	09:00 AM - 09:50 AM	MWF	HLMS 259		18	Main Campus
1171	ENGL	1191	2	B	15628	3	Intro Creative Writing	SEM	10:00 AM - 10:50 AM	MWF	HLMS 196		18	Main Campus
1172	ENGL	1191	3	B	15629	3	Intro Creative Writing	SEM	10:00 AM - 10:50 AM	MWF	CHEM 133		18	Main Campus
1173	ENGL	1191	4	B	15630	3	Intro Creative Writing	SEM	11:00 AM - 11:50 AM	MWF	HLMS 196		18	Main Campus
1174	ENGL	1191	5	B	19655	3	Intro Creative Writing	SEM	08:00 AM - 08:50 AM	MWF	HUMN 245		18	Main Campus
1175	ENGL	1191	6	B	15631	3	Intro Creative Writing	SEM	11:00 AM - 11:50 AM	MWF	HLMS 104		18	Main Campus
1176	ENGL	1191	7	B	15632	3	Intro Creative Writing	SEM	12:00 PM - 12:50 PM	MWF	HUMN 370		18	Main Campus
1177	ENGL	1191	8	B	15633	3	Intro Creative Writing	SEM	12:00 PM - 12:50 PM	MWF	HLMS 196		18	Main Campus
1178	ENGL	1191	9	B	15634	3	Intro Creative Writing	SEM	01:00 PM - 01:50 PM	MWF	CHEM 133		18	Main Campus
1179	ENGL	1191	10	B	15635	3	Intro Creative Writing	SEM	02:00 PM - 02:50 PM	MWF	CHEM 131		18	Main Campus
1180	ENGL	1191	11	B	15636	3	Intro Creative Writing	SEM	09:30 AM - 10:45 AM	TTH	HLMS 259		18	Main Campus
1181	ENGL	1191	12	B	15637	3	Intro Creative Writing	SEM	11:00 AM - 12:15 PM	TTH	HLMS 196		18	Main Campus
1182	ENGL	1191	13	B	15638	3	Intro Creative Writing	SEM	08:00 AM - 09:15 AM	TTH	HUMN 160		18	Main Campus
1183	ENGL	1191	14	B	15639	3	Intro Creative Writing	SEM	02:00 PM - 03:15 PM	TTH	DUAN G1B35		18	Main Campus
1184	ENGL	1191	15	B	19656	3	Intro Creative Writing	SEM	03:00 PM - 04:15 PM	MW	ECON 2		18	Main Campus
1185	ENGL	1191	16	B	21786	3	Intro Creative Writing	SEM	08:00 AM - 09:15 AM	TTH	DUAN G1B35		18	Main Campus
1186	ENGL	1191	17	B	21787	3	Intro Creative Writing	SEM	05:00 PM - 06:15 PM	TTH	MUEN E114		18	Main Campus
1187	ENGL	1191	18	B	22639	3	Intro Creative Writing	SEM	02:00 PM - 03:15 PM	TTH	HLMS 104		18	Main Campus
1188	ENGL	1191	19	B	22638	3	Intro Creative Writing	SEM	05:00 PM - 06:15 PM	TTH	DUAN G1B35		18	Main Campus
1189	ENGL	1191	20	B	34473	3	Intro Creative Writing	SEM	02:00 PM - 03:15 PM	TTH	CHEM 133		18	Main Campus
1190	ENGL	1220	2	B	21315	3	From Gothic to Horror	SEM	10:00 AM - 10:50 AM	MWF	HLMS 137	Neimann,Paul G	35	Main Campus
1191	ENGL	1230	1	B	21316	3	Environmental Literature	LEC	08:00 AM - 09:15 AM	TTH	MCOL E158		28	Main Campus
1192	ENGL	1230	2	B	21317	3	Environmental Literature	LEC	05:00 PM - 06:15 PM	TTH	MUEN E130		28	Main Campus
1193	ENGL	1240	1	B	34369	3	Planetarity	LEC	02:00 PM - 03:15 PM	TTH	HLMS 137	Gladstone,Jason Daniel	35	Main Campus
1194	ENGL	1240	2	B	34370	3	Planetarity	LEC	03:30 PM - 04:45 PM	TTH	HLMS 137	Gladstone,Jason Daniel	35	Main Campus
1195	ENGL	1250	1	B	34371	3	Intro to Global Women's Lit	LEC	11:00 AM - 11:50 AM	MWF	HLMS 229		20	Main Campus
1196	ENGL	1250	2	B	34374	3	Intro to Global Women's Lit	LEC	10:00 AM - 10:50 AM	MWF	MCOL E155		20	Main Campus
1197	ENGL	1270	1	B	34376	3	Intro to American Women's Lit	LEC	12:30 PM - 01:45 PM	TTH	HLMS 263		20	Main Campus
1198	ENGL	1270	2	B	34377	3	Intro to American Women's Lit	LEC	02:00 PM - 03:15 PM	TTH	HLMS 255		20	Main Campus
1199	ENGL	1340	1	B	21971	3	Mysticism & Jewish Amer Lit	LEC	02:00 PM - 03:15 PM	TTH	CLUB 6	Goodman,Nan	5	Main Campus
1200	ENGL	1420	1	B	22479	3	Poetry	LEC	11:00 AM - 11:50 AM	MWF	HLMS 137	Hasan,Raza Ali	35	Main Campus
1201	ENGL	1420	2	B	22480	3	Poetry	LEC	12:00 PM - 12:50 PM	MWF	DUAN G2B60	Hasan,Raza Ali	35	Main Campus
1202	ENGL	1500	1	B	20866	3	Masterpieces-British Lit	LEC	01:00 PM - 01:50 PM	MWF	DUAN G2B21		28	Main Campus
1203	ENGL	1500	2	B	34379	3	Masterpieces-British Lit	LEC	02:00 PM - 02:50 PM	MWF	CLUB 13		28	Main Campus
1204	ENGL	1600	1	B	15172	3	Masterpieces-Amer Lit	LEC	10:00 AM - 10:50 AM	MWF	EDUC 143		28	Main Campus
1205	ENGL	1600	2	B	21834	3	Masterpieces-Amer Lit	LEC	12:00 PM - 12:50 PM	MWF	CLUB 13		28	Main Campus
1206	ENGL	1600	3	B	19669	3	Masterpieces-Amer Lit	LEC	08:00 AM - 09:15 AM	TTH	CLRE 208		28	Main Campus
1207	ENGL	1600	4	B	15171	3	Masterpieces-Amer Lit	LEC	03:30 PM - 04:45 PM	TTH	HLMS 263		28	Main Campus
1208	ENGL	1800	1	B	34380	3	Amer Ethnic Literatures	LEC	10:00 AM - 10:50 AM	MWF	HLMS 255		28	Main Campus
1209	ENGL	1800	2	B	34381	3	Amer Ethnic Literatures	LEC	12:00 PM - 12:50 PM	MWF	HLMS 245		28	Main Campus
1210	ENGL	2021	1	B	15651	3	Intro Poetry Workshop	SEM	12:00 PM - 12:50 PM	MWF	DUAN G1B25		19	Main Campus
1211	ENGL	2021	2	B	22640	3	Intro Poetry Workshop	SEM	10:00 AM - 10:50 AM	MWF	ECON 2		19	Main Campus
1212	ENGL	2021	3	B	15652	3	Intro Poetry Workshop	SEM	09:30 AM - 10:45 AM	TTH	HLMS 255		19	Main Campus
1213	ENGL	2036	1	B	21335	3	Intro to Media Stdy/Humanities	SEM	11:00 AM - 11:50 AM	MWF	LIBR N424B	Emerson,Lori Ann	14	Main Campus
1214	ENGL	2051	1	B	15653	3	Intro Fiction Workshop	SEM	11:00 AM - 11:50 AM	MWF	DUAN G1B35		19	Main Campus
1215	ENGL	2051	2	B	21274	3	Intro Fiction Workshop	SEM	01:00 PM - 01:50 PM	MWF	HLMS 104		19	Main Campus
1216	ENGL	2051	3	B	15655	3	Intro Fiction Workshop	SEM	08:00 AM - 09:15 AM	TTH	CHEM 133		19	Main Campus
1217	ENGL	2051	4	B	15656	3	Intro Fiction Workshop	SEM	08:00 AM - 09:15 AM	TTH	HUMN 370		19	Main Campus
1218	ENGL	2058	1	B	20203	3	Lit in English, 1900-Present	LEC	12:00 PM - 12:50 PM	MWF	DUAN G2B21	Higashida,Cheryl A	24	Main Campus
1219	ENGL	2102	1	B	15173	3	Literary Analysis	LEC	10:00 AM - 10:50 AM	MWF	HLMS 259		19	Main Campus
1220	ENGL	2102	3	B	15175	3	Literary Analysis	LEC	12:30 PM - 01:45 PM	TTH	HLMS 229	Rivers,Julius Edwin	19	Main Campus
1221	ENGL	2102	4	B	15176	3	Literary Analysis	LEC	01:00 PM - 01:50 PM	MWF	CLRE 302	Stevenson,John	19	Main Campus
1222	ENGL	2102	5	B	21827	3	Literary Analysis	LEC	03:00 PM - 03:50 PM	MWF	EDUC 143	Heydt-Stevenson,Jillian	19	Main Campus
1223	ENGL	2102	6	B	22827	3	Literary Analysis	LEC	02:00 PM - 02:50 PM	MWF	HLMS 181	Ho,Janice Chiew Ling	19	Main Campus
1224	ENGL	2112	1	B	14849	3	Intro to Literary Theory	LEC	03:30 PM - 04:45 PM	TTH	HUMN 186	Winokur,Mark	19	Main Campus
1225	ENGL	2112	2	B	20287	3	Intro to Literary Theory	LEC	02:00 PM - 03:15 PM	TTH	HUMN 186	Winokur,Mark	19	Main Campus
1226	ENGL	2112	3	B	21598	3	Intro to Literary Theory	LEC	11:00 AM - 12:15 PM	TTH	DUAN G1B35	Gladstone,Jason Daniel	19	Main Campus
1227	ENGL	2112	4	B	20688	3	Intro to Literary Theory	LEC	11:00 AM - 11:50 AM	MWF	DUAN G2B41	Neimann,Paul G	19	Main Campus
1228	ENGL	2112	5	B	34431	3	Intro to Literary Theory	LEC	12:00 PM - 12:50 PM	MWF	CLRE 208	Mattar,Karim	19	Main Campus
1229	ENGL	2115	1	B	22441	3	American Frontiers	LEC	11:00 AM - 12:15 PM	TTH	DUAN G2B21	Windell,Maria A	24	Main Campus
1230	ENGL	2503	1	B	34459	3	British Literary Hist to 1660	LEC	03:00 PM - 04:15 PM	MW	HLMS 137	Stevenson,John	24	Main Campus
1231	ENGL	2655	880	B	34440	3	Introduction to American Lit I	LEC	12:30 PM - 01:45 PM	TTH	DUAN G1B39	Bickman,Martin	7	Main Campus
1232	ENGL	2717	1	B	34465	3	American Indian Literature	LEC	12:30 PM - 01:45 PM	TTH	HLMS 259	Kelsey,Penelope	24	Main Campus
1233	ENGL	3000	1	B	20867	3	Shakespeare/Nonmajors	LEC	08:00 AM - 08:50 AM	MWF	HLMS 137		35	Main Campus
1234	ENGL	3000	2	B	15177	3	Shakespeare/Nonmajors	LEC	09:00 AM - 09:50 AM	MWF	MCOL E158		28	Main Campus
1235	ENGL	3000	3	B	20868	3	Shakespeare/Nonmajors	LEC	08:00 AM - 08:50 AM	MWF	CHEM 145		28	Main Campus
1236	ENGL	3000	4	B	15178	3	Shakespeare/Nonmajors	LEC	12:00 PM - 12:50 PM	MWF	ECON 2		28	Main Campus
1237	ENGL	3000	5	B	20598	3	Shakespeare/Nonmajors	LEC	02:00 PM - 02:50 PM	MWF	EKLC E1B75		28	Main Campus
1238	ENGL	3000	6	B	15179	3	Shakespeare/Nonmajors	LEC	12:00 PM - 12:50 PM	MWF	ECON 205		28	Main Campus
1239	ENGL	3000	7	B	15180	3	Shakespeare/Nonmajors	LEC	12:30 PM - 01:45 PM	TTH			28	Main Campus
1240	ENGL	3000	8	B	15181	3	Shakespeare/Nonmajors	LEC	08:00 AM - 09:15 AM	TTH	GUGG 2		28	Main Campus
1241	ENGL	3000	9	B	21059	3	Shakespeare/Nonmajors	LEC	08:00 AM - 09:15 AM	TTH	CLRE 104		28	Main Campus
1242	ENGL	3000	10	B	21324	3	Shakespeare/Nonmajors	LEC	08:00 AM - 09:15 AM	TTH	HLMS 229		28	Main Campus
1243	ENGL	3000	100	B	18673	3	Shakespeare/Nonmajors	LEC	01:00 PM - 01:50 PM	MW	VAC 1B20	Glimp,David Randall	176	Main Campus
1244	ENGL	3000	101	B	18674	3	Shakespeare/Nonmajors	REC	05:00 PM - 05:50 PM	W	HLMS 259	Glimp,David Randall	22	Main Campus
1245	ENGL	3000	102	B	18675	3	Shakespeare/Nonmajors	REC	04:00 PM - 04:50 PM	W	HLMS 259	Glimp,David Randall	22	Main Campus
1246	ENGL	3000	103	B	18676	3	Shakespeare/Nonmajors	REC	03:00 PM - 03:50 PM	W	HLMS 259	Glimp,David Randall	22	Main Campus
1247	ENGL	3000	104	B	18677	3	Shakespeare/Nonmajors	REC	02:00 PM - 02:50 PM	W	HLMS 259	Glimp,David Randall	22	Main Campus
1248	ENGL	3000	105	B	33123	3	Shakespeare/Nonmajors	REC	05:00 PM - 05:50 PM	W	HLMS 263	Glimp,David Randall	22	Main Campus
1249	ENGL	3000	106	B	33124	3	Shakespeare/Nonmajors	REC	04:00 PM - 04:50 PM	W	EKLC E1B75	Glimp,David Randall	22	Main Campus
1250	ENGL	3000	107	B	18678	3	Shakespeare/Nonmajors	REC	03:00 PM - 03:50 PM	W	DUAN G2B60	Glimp,David Randall	22	Main Campus
1251	ENGL	3000	108	B	19537	3	Shakespeare/Nonmajors	REC	02:00 PM - 02:50 PM	W	DUAN G131	Glimp,David Randall	22	Main Campus
1252	ENGL	3000	200	B	22624	3	Shakespeare/Nonmajors	LEC	-			Glimp,David Randall	88	Main Campus
1253	ENGL	3000	201	B	22625	3	Shakespeare/Nonmajors	REC	01:00 PM - 01:50 PM	M	HLMS 259	Glimp,David Randall	22	Main Campus
1254	ENGL	3000	202	B	22626	3	Shakespeare/Nonmajors	REC	04:00 PM - 04:50 PM	M	MCOL E155	Glimp,David Randall	22	Main Campus
1255	ENGL	3000	203	B	22627	3	Shakespeare/Nonmajors	REC	04:00 PM - 04:50 PM	T	CLRE 301	Glimp,David Randall	22	Main Campus
1256	ENGL	3000	204	B	22628	3	Shakespeare/Nonmajors	REC	12:00 PM - 12:50 PM	M	STAD 136C	Glimp,David Randall	22	Main Campus
1257	ENGL	3021	1	B	19924	3	Intermed Poetry Workshop	SEM	03:30 PM - 04:45 PM	TTH	HUMN 1B70		19	Main Campus
1258	ENGL	3021	2	B	22809	3	Intermed Poetry Workshop	SEM	12:30 PM - 01:45 PM	TTH	STAD 140	Carr,Julia Alice	19	Main Campus
1259	ENGL	3051	1	B	15657	3	Intermed Fiction Wrkshop	SEM	08:00 AM - 09:15 AM	TTH	ECON 205		19	Main Campus
1260	ENGL	3051	2	B	15658	3	Intermed Fiction Wrkshop	SEM	11:00 AM - 12:15 PM	TTH	HLMS 137	DE Shell,Jeffrey G	19	Main Campus
1261	ENGL	3051	3	B	22758	3	Intermed Fiction Wrkshop	SEM	03:30 PM - 04:45 PM	TTH	HLMS 259	Douglas,Marcia B	19	Main Campus
1262	ENGL	3060	1	B	19680	3	Mod/Contemp Lit Nonmajors	LEC	02:00 PM - 02:50 PM	MWF	HLMS 137	Hasan,Raza Ali	35	Main Campus
1263	ENGL	3060	2	B	15182	3	Mod/Contemp Lit Nonmajors	LEC	01:00 PM - 01:50 PM	MWF	KTCH 1B87	Youngquist,Paul Bruce	24	Main Campus
1264	ENGL	3060	3	B	15183	3	Mod/Contemp Lit Nonmajors	LEC	09:00 AM - 09:50 AM	MWF	MUEN E130		28	Main Campus
1265	ENGL	3060	4	B	15184	3	Mod/Contemp Lit Nonmajors	LEC	10:00 AM - 10:50 AM	MWF	STAD 135		28	Main Campus
1266	ENGL	3060	5	B	15185	3	Mod/Contemp Lit Nonmajors	LEC	09:00 AM - 09:50 AM	MWF	CHEM 145		28	Main Campus
1267	ENGL	3060	6	B	15186	3	Mod/Contemp Lit Nonmajors	LEC	12:00 PM - 12:50 PM	MWF	MCOL E155		28	Main Campus
1268	ENGL	3060	7	B	15187	3	Mod/Contemp Lit Nonmajors	LEC	12:00 PM - 12:50 PM	MWF	MUEN E432		28	Main Campus
1269	ENGL	3060	8	B	15188	3	Mod/Contemp Lit Nonmajors	LEC	01:00 PM - 01:50 PM	MWF	ECON 2		28	Main Campus
1270	ENGL	3060	9	B	15189	3	Mod/Contemp Lit Nonmajors	LEC	02:00 PM - 02:50 PM	MWF	MCOL E158		28	Main Campus
1271	ENGL	3060	10	B	15190	3	Mod/Contemp Lit Nonmajors	LEC	03:00 PM - 03:50 PM	MWF	MCOL E186		28	Main Campus
1272	ENGL	3060	11	B	15191	3	Mod/Contemp Lit Nonmajors	LEC	05:00 PM - 06:15 PM	TTH	HLMS 191	Douglas,Marcia B	24	Main Campus
1273	ENGL	3060	12	B	15192	3	Mod/Contemp Lit Nonmajors	LEC	09:30 AM - 10:45 AM	TTH	HLMS 137		28	Main Campus
1274	ENGL	3060	13	B	20597	3	Mod/Contemp Lit Nonmajors	LEC	12:30 PM - 01:45 PM	TTH	DUAN G2B21	DE Shell,Jeffrey G	24	Main Campus
1275	ENGL	3060	14	B	15193	3	Mod/Contemp Lit Nonmajors	LEC	05:00 PM - 06:15 PM	TTH	CLRE 104		28	Main Campus
1276	ENGL	3060	15	B	15194	3	Mod/Contemp Lit Nonmajors	LEC	03:30 PM - 04:45 PM	TTH	CHEM 145		28	Main Campus
1277	ENGL	3060	16	B	21273	3	Mod/Contemp Lit Nonmajors	LEC	05:00 PM - 06:15 PM	TTH	HLMS 247		28	Main Campus
1278	ENGL	3068	1	B	34468	3	Lit in English, 1900-1945	LEC	02:00 PM - 03:15 PM	TTH	ECON 2	Winkiel,Laura Ann	24	Main Campus
1279	ENGL	3116	1	B	34464	3	Topics in Adv Theory	LEC	02:00 PM - 02:50 PM	MWF	EDUC 143	Mattar,Karim	24	Main Campus
1280	ENGL	3164	100	B	22196	3	Hist & Lit Georgian Britain	LEC	09:00 AM - 09:50 AM	MW	HALE 230	Labio,Catherine	88	Main Campus
1281	ENGL	3164	101	B	22197	3	Hist & Lit Georgian Britain	REC	03:30 PM - 04:20 PM	TH	HLMS 181	Labio,Catherine	22	Main Campus
1282	ENGL	3164	102	B	22198	3	Hist & Lit Georgian Britain	REC	05:00 PM - 05:50 PM	TH	CLRE 212	Labio,Catherine	22	Main Campus
1283	ENGL	3164	103	B	22199	3	Hist & Lit Georgian Britain	REC	04:00 PM - 04:50 PM	TH	ECCR 151	Labio,Catherine	22	Main Campus
1284	ENGL	3164	104	B	22200	3	Hist & Lit Georgian Britain	REC	05:00 PM - 05:50 PM	TH	HLMS 185	Labio,Catherine	22	Main Campus
1285	ENGL	3246	1	B	35107	3	Tpc-Popular Culture	LEC	09:30 AM - 10:45 AM	TTH	ECON 2	Bradley,Adam	24	Main Campus
1286	ENGL	3377	1	B	22543	3	Multicultural Literature	LEC	01:00 PM - 01:50 PM	MWF	HLMS 137	Wright,Nicole M	24	Main Campus
1287	ENGL	3553	1	B	22489	3	Geoffrey Chaucer	LEC	12:30 PM - 01:45 PM	TTH	HLMS 137	Little,Katherine C	24	Main Campus
1288	ENGL	3563	1	B	34460	3	Shakespeare	LEC	11:00 AM - 11:50 AM	MWF	CLRE 208	Glimp,David Randall	24	Main Campus
1289	ENGL	3767	1	B	21351	3	Feminist Fictions	LEC	12:30 PM - 01:45 PM	TTH	CLUB 4	Misri,Deepti	5	Main Campus
1290	ENGL	3796	1	B	21318	3	Queer Theory	LEC	11:00 AM - 12:15 PM	TTH	CLUB 4	Soares,Kristie	5	Main Campus
1291	ENGL	3856	100	B	22192	1-3	Topics in Genre Studies	LEC	08:00 AM - 08:50 AM	MW	HALE 230	Kuskin,William	88	Main Campus
1292	ENGL	3856	101	B	33323	1-3	Topics in Genre Studies	REC	04:00 PM - 04:50 PM	TH	EKLC E1B50	Kuskin,William	22	Main Campus
1293	ENGL	3856	102	B	22193	1-3	Topics in Genre Studies	REC	03:00 PM - 03:50 PM	TH	MUEN D439	Kuskin,William	22	Main Campus
1294	ENGL	3856	103	B	22194	1-3	Topics in Genre Studies	REC	08:00 AM - 08:50 AM	W	EKLC M203	Kuskin,William	22	Main Campus
1295	ENGL	3856	104	B	22195	1-3	Topics in Genre Studies	REC	01:00 PM - 01:50 PM	W	HLMS 259	Kuskin,William	22	Main Campus
1296	ENGL	3856	200	B	22191	1-3	Topics in Genre Studies	LEC	10:00 AM - 10:50 AM	MW	HLMS 201	Jones,Stephen Graham	88	Main Campus
1297	ENGL	4003	1	B	22490	3	Introduction to Old English	SEM	12:00 PM - 12:50 PM	MWF	HLMS 259	Beechy,Tiffany R	21	Main Campus
1298	ENGL	4021	1	B	19701	3	Advanced Poetry Workshop	SEM	12:30 PM - 01:45 PM	TTH	HUMN 370	Gordon,Noah Eli	19	Main Campus
1299	ENGL	4039	1	B	15669	3	Crit Think/English Studies	LEC	11:00 AM - 11:50 AM	MWF	HLMS 259	Brylowe,Thora	19	Main Campus
1300	ENGL	4039	2	B	18308	3	Crit Think/English Studies	LEC	02:00 PM - 03:15 PM	TTH	HALE 260	Bickman,Martin	19	Main Campus
1301	ENGL	4039	3	B	20288	3	Crit Think/English Studies	LEC	12:30 PM - 01:45 PM	TTH	HLMS 181	Jacobs,Karen Susan	19	Main Campus
1302	ENGL	4039	4	B	20953	3	Crit Think/English Studies	LEC	11:00 AM - 12:15 PM	TTH	HLMS 259	Winkiel,Laura Ann	19	Main Campus
1303	ENGL	4039	5	B	34470	3	Crit Think/English Studies	LEC	12:30 PM - 01:45 PM	TTH	HLMS 104	Goodman,Nan	19	Main Campus
1304	ENGL	4048	1	B	34469	3	Modn British/Irish Novel	LEC	12:00 PM - 12:50 PM	MWF	HLMS 137	Ho,Janice Chiew Ling	24	Main Campus
1305	ENGL	4051	1	B	19471	3	Advanced Fiction Wrkshop	SEM	02:00 PM - 03:15 PM		LIBR N424B	Jones,Stephen Graham	19	Main Campus
1306	ENGL	4098	1	B	33146	3	Spec Tpcs: Novel, Post-1900	SEM	12:30 PM - 01:45 PM	TTH	ECON 205	Sheffield,Elisabeth A	24	Main Campus
1307	ENGL	4116	1	B	34899	3	Adv Topics in Media Studies	SEM	01:00 PM - 03:30 PM	W	See Academc Dept	Brylowe,Thora	5	Main Campus
1308	ENGL	4634	1	B	34463	3	Adv Topics: The Victorians	SEM	02:00 PM - 02:50 PM	MWF	ECON 2	Labio,Catherine	24	Main Campus
1309	ENGL	4665	1	B	21599	3	Stds Amer Lit After 1900	LEC	02:00 PM - 03:15 PM	TTH	HLMS 229	Rivers,Julius Edwin	24	Main Campus
1310	ENGL	4685	1	B	33145	3	Spec Tps: American Literature	SEM	09:30 AM - 10:45 AM	TTH	HLMS 181	Jacobs,Karen Susan	24	Main Campus
1311	ENGL	4685	2	B	34900	3	Spec Tps: American Literature	SEM	11:00 AM - 11:50 AM	MWF	ECON 2	Higashida,Cheryl A	24	Main Campus
1312	ENGL	4697	1	B	35257	3	Sp Tpcs: Multcult/Ethn Am Lit	LEC	04:30 PM - 05:45 PM	MW	DUAN G131	Atuire,Martin	5	Main Campus
1313	ENGL	4697	2	B	34467	3	Sp Tpcs: Multcult/Ethn Am Lit	LEC	03:30 PM - 04:45 PM	TTH	EKLC M203	Windell,Maria A	19	Main Campus
1314	ENGL	4820	800	B	19959	3	Honors Seminar	SEM	02:00 PM - 03:15 PM	TTH	HLMS 259	Garrity,Jane Marie	24	Main Campus
1315	ENGL	5003	1	B	34923	3	Introduction to Old English	SEM	12:00 PM - 12:50 PM	MWF	HLMS 259	Beechy,Tiffany R	3	Main Campus
1316	ENGL	5019	1	B	15670	3	Survey:Contemp Lit & Cult Thry	SEM	09:00 AM - 11:30 AM	TH	LIBR N424B	Carr,Julia Alice	10	Main Campus
1317	ENGL	5019	2	B	15671	3	Survey:Contemp Lit & Cult Thry	SEM	01:00 PM - 03:30 PM	T	LIBR M549	Zemka,Susan A	10	Main Campus
1318	ENGL	5029	1	B	19792	3	British Lit & Cult Before 1800	SEM	09:00 AM - 11:30 AM	T	LIBR N424B	Little,Katherine C	10	Main Campus
1319	ENGL	5029	2	B	34474	3	British Lit & Cult Before 1800	SEM	01:00 PM - 03:30 PM	M	LIBR M549	Mallipeddi,Ramesh	10	Main Campus
1320	ENGL	5059	1	B	21856	3	British Lit & Cult After 1800	SEM	04:00 PM - 06:30 PM	M	LIBR N424B	Heydt-Stevenson,Jillian	10	Main Campus
1321	ENGL	5169	1	B	21336	3	Multicultura/Postcolonial Stdy	SEM	01:00 PM - 03:30 PM	TH	LIBR N424B	Kelsey,Penelope	10	Main Campus
1322	ENGL	5229	1	B	34476	3	Poetry Workshop	SEM	02:00 PM - 04:30 PM	F	See Academc Dept	Kocher,Ruth Ellen	12	Main Campus
1323	ENGL	5239	1	B	18375	3	Fiction Workshop	SEM	03:30 PM - 06:00 PM	TH	ECON 205	Sheffield,Elisabeth A	12	Main Campus
1324	ENGL	5269	1	B	34477	3	Publishing Workshop	LEC	03:30 PM - 06:00 PM	T	See Academc Dept	Gordon,Noah Eli	12	Main Campus
1325	ENGL	5529	1	B	22604	3	Studies/Special Topics 1	SEM	01:00 PM - 03:30 PM	W	See Academc Dept	Brylowe,Thora	5	Main Campus
1326	ENGL	5529	2	B	34475	3	Studies/Special Topics 1	SEM	04:00 PM - 06:30 PM	W	LIBR N424B	Green,Jeremy	10	Main Campus
1327	ENGL	5559	1	B	33149	3	Studies/Special Topics 3	LEC	01:00 PM - 03:30 PM	T	LIBR N424B		12	Main Campus
1328	ENVS	1000	10	B	13528	4	Intro Environmental Studies	LEC	12:30 PM - 01:45 PM	TTH	MATH 100	Boykoff,Maxwell T	419	Main Campus
1329	ENVS	1000	25	B	36574	4	Intro Environmental Studies	REC	08:00 AM - 08:50 AM	T	HUMN 125		25	Main Campus
1330	ENVS	1000	26	B	36575	4	Intro Environmental Studies	REC	08:00 AM - 08:50 AM	W	MCOL E158		25	Main Campus
1331	ENVS	1000	27	B	36576	4	Intro Environmental Studies	REC	10:00 AM - 10:50 AM	M	KTCH 1B71		25	Main Campus
1332	ENVS	1150	1	B	21242	3	First-Year Writing in ENVS	LEC	08:30 AM - 09:45 AM	TTH	SEEC N129	Miller,Dale Lee	18	Main Campus
1333	ENVS	1150	2	B	21412	3	First-Year Writing in ENVS	LEC	09:30 AM - 10:20 AM	MWF	SEEC S125	Vodehnal,Carrie	18	Main Campus
1334	ENVS	1150	3	B	22864	3	First-Year Writing in ENVS	LEC	03:00 PM - 04:15 PM	MW	HUMN 190	Dupler,Douglas Jay	18	Main Campus
1335	ENVS	1150	4	B	21413	3	First-Year Writing in ENVS	LEC	12:30 PM - 01:20 PM	MWF	SEEC N129	Vodehnal,Carrie	18	Main Campus
1336	ENVS	3020	1	B	13597	3	Adv Writing/Environmental Stdy	LEC	11:30 AM - 12:45 PM	TTH	SEEC N128	Dupler,Douglas Jay	20	Main Campus
1337	ENVS	3020	2	B	13600	3	Adv Writing/Environmental Stdy	LEC	11:30 AM - 12:45 PM	TTH	SEEC N126	Miller,Dale Lee	20	Main Campus
1338	ENVS	3020	3	B	19648	3	Adv Writing/Environmental Stdy	LEC	12:30 PM - 01:20 PM	MWF	SEEC S125	Rogers,Sarah B	20	Main Campus
1339	ENVS	3020	4	B	21378	3	Adv Writing/Environmental Stdy	LEC	01:30 PM - 02:20 PM	MWF	SEEC N126	Vodehnal,Carrie	20	Main Campus
1340	ENVS	3030	2	B	33846	3	Topics in ENVS Social Sciences	LEC	03:30 PM - 04:45 PM	MW	SEEC N136	Ciplet,David Michael	75	Main Campus
1341	ENVS	3040	10	B	28938	4	Conservation Biology	LEC	12:00 PM - 12:50 PM	MWF	DUAN G125	McKenzie,Valerie J	30	Main Campus
1342	ENVS	3070	1	B	14271	3	Energy & the Environment	LEC	09:00 AM - 09:50 AM	MWF	DUAN G125	Wagner,Stephen R	50	Main Campus
1343	ENVS	3140	1	B	15785	3	Environmental Ethics	LEC	02:00 PM - 02:50 PM	MWF	HLMS 201	Youkey,David Allen	37	Main Campus
1344	ENVS	3140	2	B	21444	3	Environmental Ethics	LEC	01:00 PM - 01:50 PM	MWF	HLMS 252	Youkey,David Allen	37	Main Campus
1345	ENVS	3140	3	B	34357	3	Environmental Ethics	LEC	09:00 AM - 09:50 AM	MWF	CLUB 13		17	Main Campus
1346	ENVS	3525	1	B	20480	3	ENVS Cornerstone	LEC	08:30 AM - 09:45 AM	TTH	SEEC N136	Newton,Peter	75	Main Campus
1347	ENVS	3600	1	B	13420	3	Principles of Climate	LEC	11:30 AM - 12:45 PM	TTH	SEEC N136	Brown,Derek Philip	12	Main Campus
1348	ENVS	3621	1	B	22224	3	Energy Policy and Society	LEC	09:30 AM - 10:20 AM	MWF	SEEC N128	Rogers,Sarah B	60	Main Campus
1349	ENVS	3640	1	B	22223	3	Global Data Analysis	LEC	02:30 PM - 03:45 PM	TTH	SEEC N124		0	Main Campus
1350	ENVS	4050	1	B	33020	4	Field Methods Ecosys Sci	FLD	01:00 PM - 03:30 PM	TTH	TB82 111	Hinckley,Eve Lyn	16	Main Campus
1351	ENVS	4100	1	B	21297	3	Special Topics in ENVS	LEC	12:30 PM - 01:20 PM	MWF	SEEC N126	Collinge,Sharon Kay	30	Main Campus
1352	ENVS	4201	1	B	20836	3	Biometeorology	LEC	09:30 AM - 10:45 AM	TTH	RAMY N1B31	Blanken,Peter David	20	Main Campus
1353	ENVS	4800	1	B	20248	3	ENVS Capstone	LEC	10:00 AM - 11:15 AM	TTH	SEEC N126	Dilling,Lisa	25	Main Campus
1354	ENVS	4800	2	B	21243	3	ENVS Capstone	LEC	11:30 AM - 12:20 PM	MWF	SEEC N129	Vodehnal,Carrie	25	Main Campus
1355	ENVS	4800	4	B	34572	3	ENVS Capstone	LEC	09:30 AM - 10:45 AM	TTH	DUAN G2B47	Ciplet,David Michael	25	Main Campus
1356	ENVS	5000	1	B	13594	3	Policy, Sci, Environ	SEM	04:00 PM - 06:40 PM	M	SEEC C315	Lambert,Joanna E	18	Main Campus
1357	ENVS	5100	1	B	20647	3	Topics/ Environmental Studies	SEM	02:30 PM - 03:50 PM	MW	WLAW 301	Squillace,Mark S	24	Main Campus
1358	ENVS	5240	1	B	33571	3	Environmental Philosophy	SEM	04:00 PM - 06:30 PM	TH	SEEC C315	Hale,Benjamin S	15	Main Campus
1359	ENVS	5510	1	B	20716	1	ENVS Colloquia	LEC	03:30 PM - 04:20 PM	W	See Class Notes For	Carrico,Amanda R.	15	Main Campus
1360	ENVS	5701	3	B	22786	3	Policy, Politics, Mgmt: Found	SEM	05:30 PM - 08:00 PM	W	SEEC N129	Lawhon,Lydia Anne	30	Main Campus
1361	ENVS	5820	1	B	16660	3	Energy Policy 21st Century	SEM	04:00 PM - 05:15 PM	TTH	SEEC N125	Kahsar,Karl R	25	Main Campus
1362	ENVS	6301	1	B	21865	3	Environmental and Energy Econ	SEM	01:00 PM - 02:15 PM	TTH	SEEC N129	Hughes,Jonathan	30	Main Campus
1363	ENVS	6302	2	B	22802	3	Sustainable Landscapes	LEC	05:30 PM - 08:00 PM	TH	SEEC N125	Hartter,Joel Nathan	30	Main Campus
1364	ENVS	6302	002B	B	22803	3	Sustainable Landscapes	LEC	-			Hartter,Joel Nathan	25	Main Campus
1365	ENVS	6303	1	B	21866	3	Transport & Sustainable Cities	SEM	05:30 PM - 08:00 PM	T	SEEC N124		30	Main Campus
1366	ENVS	6305	2	B	22932	3	Food System Solutions	SEM	04:00 PM - 06:30 PM	T	SEEC N129	Newton,Peter	30	Main Campus
1367	ETHN	1022	100	B	20767	3	Introduction to Africana Stdy	LEC	02:00 PM - 02:50 PM	MW	HUMN 150	Atuire,Martin	108	Main Campus
1368	ETHN	1022	101	B	21293	3	Introduction to Africana Stdy	REC	02:00 PM - 02:50 PM	F	ENVD 120	Atuire,Martin	27	Main Campus
1369	ETHN	1022	102	B	20852	3	Introduction to Africana Stdy	REC	02:00 PM - 02:50 PM	F	MCOL E155	Atuire,Martin	27	Main Campus
1370	ETHN	1022	103	B	20853	3	Introduction to Africana Stdy	REC	01:00 PM - 01:50 PM	F	MCOL E155	Atuire,Martin	27	Main Campus
1371	ETHN	1022	104	B	33488	3	Introduction to Africana Stdy	REC	01:00 PM - 01:50 PM	F	ENVD 120	Atuire,Martin	27	Main Campus
1372	ETHN	1023	100	B	33491	3	Intro to Nat Amer/Indigen Std	LEC	12:00 PM - 12:50 PM	MW	HLMS 201	Carroll,Clinton R	98	Main Campus
1373	ETHN	1023	101	B	33492	3	Intro to Nat Amer/Indigen Std	REC	02:00 PM - 02:50 PM	F	ATLS 1B29	Carroll,Clinton R	24	Main Campus
1374	ETHN	1023	102	B	33493	3	Intro to Nat Amer/Indigen Std	REC	03:00 PM - 03:50 PM	M	HLMS 247	Carroll,Clinton R	24	Main Campus
1375	ETHN	1023	103	B	33494	3	Intro to Nat Amer/Indigen Std	REC	02:00 PM - 02:50 PM	M	RAMY N1B31	Carroll,Clinton R	25	Main Campus
1376	ETHN	1023	104	B	33495	3	Intro to Nat Amer/Indigen Std	REC	01:00 PM - 01:50 PM	F	GUGG 2	Carroll,Clinton R	25	Main Campus
1377	ETHN	1025	1	B	35058	3	Intro Asian Amer Studies	LEC	02:00 PM - 03:15 PM	TTH	HLMS 211		40	Main Campus
1378	ETHN	2001	1	B	14449	3	Foundations of Ethnic Studies	LEC	11:00 AM - 12:15 PM	TTH	HLMS 211	Sepulveda,Enrique	40	Main Campus
1379	ETHN	2013	1	B	36355	3	Critical Iss/Native N.A.	LEC	04:30 PM - 05:45 PM	MW	HLMS 267	Grant,Deanne Linn	52	Main Campus
1380	ETHN	2203	1	B	21947	3	American Indians in Film	LEC	02:00 PM - 03:15 PM	TTH	ATLS 102	Lawson,Angelica Marie	17	Main Campus
1381	ETHN	2203	1	B	21947	3	American Indians in Film	LEC	07:00 PM - 09:50 PM	TH	ATLS 102	Lawson,Angelica Marie	17	Main Campus
1382	ETHN	2232	100	B	33496	3	Cntm African Am Social Mvmts	LEC	11:00 AM - 11:50 AM	MW	EKLC E1B20	Atuire,Martin	108	Main Campus
1383	ETHN	2232	101	B	33498	3	Cntm African Am Social Mvmts	REC	03:00 PM - 03:50 PM	M	HLMS 255		27	Main Campus
1384	ETHN	2232	102	B	33499	3	Cntm African Am Social Mvmts	REC	02:00 PM - 02:50 PM	M	MCOL E155		27	Main Campus
1385	ETHN	2232	103	B	33500	3	Cntm African Am Social Mvmts	REC	01:00 PM - 01:50 PM	M	MUEN E064		27	Main Campus
1386	ETHN	2232	104	B	33501	3	Cntm African Am Social Mvmts	REC	01:00 PM - 01:50 PM	M	MCOL E155		27	Main Campus
1387	ETHN	2536	1	B	22212	3	Chicana/o History & Culture	LEC	02:00 PM - 03:15 PM	TTH	ATLS 1B29	Ordaz,Jessica	40	Main Campus
1388	ETHN	2703	10	B	22109	3	Amer Indian Relig Trdtns	LEC	12:00 PM - 12:50 PM	MW	EKLC E1B20	Johnson,Gregory B	20	Main Campus
1389	ETHN	3024	1	B	35067	3	Intro Critical Sports Studies	LEC	01:00 PM - 01:50 PM	MWF	HLMS 211		55	Main Campus
1390	ETHN	3044	1	B	35188	3	Race/Class/Gender/Crime	LEC	03:00 PM - 04:15 PM	MW	HLMS 267		52	Main Campus
1391	ETHN	3044	2	B	35189	3	Race/Class/Gender/Crime	LEC	04:00 PM - 05:15 PM	MW	EDUC 155		53	Main Campus
1392	ETHN	3101	1	B	35187	3	Selected Tpcs/Ethnic Stu	LEC	03:30 PM - 04:45 PM	TTH	VAC 1B88		35	Main Campus
1393	ETHN	3103	1	B	35192	3	Sel Tpc-Am Indian Studies	LEC	12:30 PM - 01:45 PM	TTH	HLMS 211	Lawson,Angelica Marie	35	Main Campus
1394	ETHN	3314	1	B	20772	3	Violence/Wmn-Girls	LEC	03:30 PM - 04:45 PM	TTH	HLMS 252	Sewell,CheyOnna	55	Main Campus
1395	ETHN	3314	2	B	35211	3	Violence/Wmn-Girls	LEC	02:00 PM - 03:15 PM	TTH	RAMY C250	Sewell,CheyOnna	20	Main Campus
1396	ETHN	3501	1	B	14558	3	Theory/Methods/Writing in ETHN	LEC	10:00 AM - 10:50 AM	MWF	MCOL E158	Sohi,Seema	20	Main Campus
1397	ETHN	4306	1	B	21772	3	Chicana/o U.S. Social Systems	LEC	02:00 PM - 03:15 PM	TTH	GUGG 2	Sepulveda,Enrique	15	Main Campus
1398	ETHN	4692	1	B	35207	3	Sp Tpcs: Multcult/Ethn Am Lit	LEC	04:30 PM - 05:45 PM	MW	DUAN G131	Atuire,Martin	20	Main Campus
1399	ETHN	4692	2	B	35258	3	Sp Tpcs: Multcult/Ethn Am Lit	LEC	03:30 PM - 04:45 PM	TTH	EKLC M203	Windell,Maria A	5	Main Campus
1400	ETHN	4951	1	B	21779	3	Sr/Grad Sem in Ethnic Studies	SEM	12:30 PM - 01:45 PM	TTH	CLRE 104	Aldama,Arturo James	25	Main Campus
1401	ETHN	5306	1	B	21775	3	Chicana/o U.S. Social Systems	LEC	02:00 PM - 03:15 PM	TTH	GUGG 2	Sepulveda,Enrique	5	Main Campus
1402	ETHN	6101	1	B	35209	3	TPC-Comp Ethnic Studies	SEM	03:30 PM - 06:00 PM	W	KTCH 277	Carroll,Clinton R	15	Main Campus
1403	ETHN	6101	2	B	35210	3	TPC-Comp Ethnic Studies	SEM	03:30 PM - 06:00 PM	T	KTCH 277	Ordaz,Jessica	15	Main Campus
1404	FRSI	1010	1	B	14603	5	Beginning Farsi 1	LEC	02:00 PM - 02:50 PM	M-F	HUMN 180		19	Main Campus
1405	FRSI	1051	1	B	21663	3	Mstpcs of Persian Lit/Transl	LEC	11:00 AM - 11:50 AM	MWF	CLRE 104		30	Main Campus
1406	FRSI	2110	1	B	21112	4	Intermediate Farsi 1	LEC	01:00 PM - 01:50 PM	M-TH	HUMN 186		19	Main Campus
1407	FREN	1010	1	B	13429	5	Beginning French 1	LEC	09:00 AM - 09:50 AM	M-F	HUMN 1B70		19	Main Campus
1408	FREN	1010	2	B	13430	5	Beginning French 1	LEC	11:00 AM - 11:50 AM	M-F	HUMN 186		19	Main Campus
1409	FREN	1010	3	B	13431	5	Beginning French 1	LEC	12:00 PM - 12:50 PM	M-F	HUMN 1B70		19	Main Campus
1410	FREN	1010	4	B	13432	5	Beginning French 1	LEC	01:00 PM - 01:50 PM	M-F	HUMN 190		19	Main Campus
1411	FREN	1010	5	B	13433	5	Beginning French 1	LEC	02:00 PM - 02:50 PM	M-F	HUMN 1B70		19	Main Campus
1412	FREN	1010	6	B	21024	5	Beginning French 1	LEC	10:00 AM - 10:50 AM	MWF	MKNA 204		16	Main Campus
1413	FREN	1010	7	B	21075	5	Beginning French 1	LEC	10:00 AM - 10:50 AM	M-F	HUMN 186		19	Main Campus
1414	FREN	1020	1	B	13434	5	Beginning French 2	LEC	10:00 AM - 10:50 AM	MWF	LIBR M498		16	Main Campus
1415	FREN	1020	2	B	13436	5	Beginning French 2	LEC	11:00 AM - 11:50 AM	M-F	HUMN 1B70		19	Main Campus
1416	FREN	1020	3	B	13437	5	Beginning French 2	LEC	01:00 PM - 01:50 PM	M-F	HUMN 125		19	Main Campus
1417	FREN	1020	4	B	22700	5	Beginning French 2	LEC	08:00 AM - 08:50 AM	M-F	HUMN 186		19	Main Campus
1418	FREN	1050	1	B	13576	5	Beginning French Review	LEC	02:00 PM - 02:50 PM	M-F	HUMN 270		19	Main Campus
1419	FREN	1050	2	B	13579	5	Beginning French Review	LEC	12:00 PM - 12:50 PM	M-F	HUMN 145		19	Main Campus
1420	FREN	1200	1	B	33093	3	Medieval Epic -Game of Thrones	LEC	11:00 AM - 11:50 AM	MWF	HUMN 135	Samuelson,Charles	60	Main Campus
1421	FREN	1900	1	B	22732	3	Modern Paris in Arts	LEC	12:00 PM - 12:50 PM	MWF	HUMN 1B80	Kilbane,Aimee	60	Main Campus
1422	FREN	2110	1	B	13621	3	2nd Yr Fren:Grmmr/Read 1	LEC	10:00 AM - 10:50 AM	MW	KTCH 1B84		16	Main Campus
1423	FREN	2110	2	B	13622	3	2nd Yr Fren:Grmmr/Read 1	LEC	11:00 AM - 11:50 AM	MWF	HLMS 263		19	Main Campus
1424	FREN	2110	3	B	13625	3	2nd Yr Fren:Grmmr/Read 1	LEC	09:00 AM - 09:50 AM	MWF	HUMN 245		19	Main Campus
1425	FREN	2110	4	B	13628	3	2nd Yr Fren:Grmmr/Read 1	LEC	12:00 PM - 12:50 PM	MWF	KTCH 1B60		19	Main Campus
1426	FREN	2110	5	B	13634	3	2nd Yr Fren:Grmmr/Read 1	LEC	02:00 PM - 02:50 PM	MWF	HUMN 186		19	Main Campus
1427	FREN	2120	1	B	13643	3	2nd Yr Fren:Grmmr/Read 2	LEC	10:00 AM - 10:50 AM	MW	HUMN 335		16	Main Campus
1428	FREN	2120	2	B	18183	3	2nd Yr Fren:Grmmr/Read 2	LEC	12:00 PM - 12:50 PM	MWF	EDUC 143		19	Main Campus
1429	FREN	2120	3	B	20245	3	2nd Yr Fren:Grmmr/Read 2	LEC	11:00 AM - 11:50 AM	MWF	MUEN E126		19	Main Campus
1430	FREN	3010	1	B	13644	3	Fren Phonetics / Pronunciation	LEC	01:00 PM - 01:50 PM	MWF	MUEN E130		19	Main Campus
1431	FREN	3010	2	B	18223	3	Fren Phonetics / Pronunciation	LEC	12:00 PM - 12:50 PM	MWF	EKLC E1B75		19	Main Campus
1432	FREN	3050	1	B	13646	3	French Composition 1	LEC	10:00 AM - 10:50 AM	MWF	HLMS 220		16	Main Campus
1433	FREN	3050	2	B	20845	3	French Composition 1	LEC	12:00 PM - 12:50 PM	MWF	HUMN 335		16	Main Campus
1434	FREN	3050	3	B	21572	3	French Composition 1	LEC	01:00 PM - 01:50 PM	MWF	HUMN 335		16	Main Campus
1435	FREN	3100	1	B	21006	3	Crit Rdg/Writ/Fren Lit	LEC	05:00 PM - 06:15 PM	TTH	HUMN 160	Bloomfield,Elisabeth M	20	Main Campus
1436	FREN	3110	1	B	13911	3	Main Currents Fren Lit 1	LEC	01:00 PM - 01:50 PM	MWF	CLRE 208	Braider,Christopher	25	Main Campus
1437	FREN	3200	1	B	33094	3	Intro to Literary Theory	SEM	11:00 AM - 12:15 PM	TTH	KCEN N252	Quinn,Brian Dennis	25	Main Campus
1438	FREN	3500	1	B	21210	3	Curr Evnt/Cnvrstn & Comp	LEC	12:30 PM - 01:45 PM	TTH	EKLC E1B75	Murphy,Kieran Marcellin	19	Main Campus
1439	FREN	3700	1	B	33095	3	French-US Culture Diff	SEM	02:00 PM - 02:50 PM	MWF	HUMN 370	Kilbane,Aimee	20	Main Campus
1440	FREN	4170	1	B	35102	3	Francophone Literature	LEC	02:00 PM - 03:15 PM	TTH	HUMN 245	Quinn,Brian Dennis	20	Main Campus
1441	FREN	4480	1	B	21581	3	20th Cent French Novel	LEC	09:30 AM - 10:45 AM	TTH	HALE 235	Motte,Warren	15	Main Campus
1442	FREN	4750	800	B	21212	3	Met/Teach Fr/Prof Orient	LEC	-			Smith,Eliza J	10	Main Campus
1443	FREN	4960	800	B	19496	6	H/S Student Teaching	PRA	-	TBA		Smith,Eliza J	10	Main Campus
1444	FREN	4980	801	B	19817	3	French Senior Honors Thesis	SEM	-				10	Main Campus
1445	FREN	4980	802	B	19816	3	French Senior Honors Thesis	SEM	-				10	Main Campus
1446	FREN	4980	803	B	20469	3	French Senior Honors Thesis	SEM	-				10	Main Campus
1447	FREN	5110	1	B	22024	3	French Special Topics	LEC	02:00 PM - 04:30 PM	T	HUMN 335	Bloomfield,Elisabeth M	16	Main Campus
1448	FREN	5120	2	B	21003	3	French Special Topics	LEC	02:00 PM - 04:30 PM	TH	HUMN 335	Motte,Warren	16	Main Campus
1449	FREN	5250	1	B	35105	3	Medieval & Renaiss Rdgs	LEC	02:00 PM - 04:30 PM	W	HUMN 335	Samuelson,Charles	16	Main Campus
1450	FREN	5770	1	B	18261	2-3	Methods Teaching French	LEC	03:00 PM - 05:30 PM	M	HUMN 335	Smith,Eliza J	16	Main Campus
1451	GEO	1001	10	B	13945	4	Envir Sys: Climate&Vegetation	LEC	09:30 AM - 10:45 AM	TTH	HUMN 150	Barnard,Holly	150	Main Campus
1452	GEO	1001	11	B	14154	4	Envir Sys: Climate&Vegetation	LAB	01:00 PM - 02:50 PM	F	GUGG 3		25	Main Campus
1453	GEO	1001	12	B	14155	4	Envir Sys: Climate&Vegetation	LAB	09:00 AM - 10:50 AM	F	GUGG 3		25	Main Campus
1454	GEO	1001	13	B	14156	4	Envir Sys: Climate&Vegetation	LAB	09:00 AM - 10:50 AM	W	GUGG 3		25	Main Campus
1455	GEO	1001	14	B	14157	4	Envir Sys: Climate&Vegetation	LAB	12:00 PM - 01:50 PM	W	GUGG 3		25	Main Campus
1456	GEO	1001	15	B	14158	4	Envir Sys: Climate&Vegetation	LAB	02:00 PM - 03:50 PM	TH	GUGG 3		25	Main Campus
1457	GEO	1001	16	B	14159	4	Envir Sys: Climate&Vegetation	LAB	02:00 PM - 03:50 PM	M	GUGG 3		25	Main Campus
1458	GEO	1011	10	B	13946	4	Env Sys: Landscapes & Water	LEC	01:00 PM - 01:50 PM	MWF	HUMN 150		150	Main Campus
1459	GEO	1011	11	B	14187	4	Env Sys: Landscapes & Water	LAB	12:00 PM - 01:50 PM	T	GUGG 3		25	Main Campus
1460	GEO	1011	12	B	14188	4	Env Sys: Landscapes & Water	LAB	02:00 PM - 03:50 PM	W	GUGG 3		25	Main Campus
1461	GEO	1011	13	B	14189	4	Env Sys: Landscapes & Water	LAB	12:00 PM - 01:50 PM	TH	GUGG 3		25	Main Campus
1462	GEO	1011	14	B	14191	4	Env Sys: Landscapes & Water	LAB	09:00 AM - 10:50 AM	TH	GUGG 3		25	Main Campus
1463	GEO	1011	15	B	14193	4	Env Sys: Landscapes & Water	LAB	09:00 AM - 10:50 AM	T	GUGG 3		25	Main Campus
1464	GEO	1011	16	B	14195	4	Env Sys: Landscapes & Water	LAB	09:00 AM - 10:50 AM	M	GUGG 3		25	Main Campus
1465	GEO	1972	100	B	21139	3	Environment-Society Geography	LEC	09:30 AM - 10:20 AM	TTH	BESC 180	Goldman,Mara Jill	162	Main Campus
1466	GEO	1972	101	B	21186	3	Environment-Society Geography	REC	11:00 AM - 11:50 AM	T	GUGG 3		18	Main Campus
1467	GEO	1972	102	B	21187	3	Environment-Society Geography	REC	11:00 AM - 11:50 AM	T	MCOL E158		18	Main Campus
1468	GEO	1972	103	B	21188	3	Environment-Society Geography	REC	09:00 AM - 09:50 AM	F	GUGG 206		18	Main Campus
1469	GEO	1972	105	B	21190	3	Environment-Society Geography	REC	03:00 PM - 03:50 PM	W	GUGG 2		18	Main Campus
1470	GEO	1972	108	B	33385	3	Environment-Society Geography	REC	10:00 AM - 10:50 AM	W	GUGG 206		18	Main Campus
1471	GEO	1972	109	B	33386	3	Environment-Society Geography	REC	10:00 AM - 10:50 AM	W	ECON 205		18	Main Campus
1472	GEO	1972	200	B	21140	3	Environment-Society Geography	LEC	12:30 PM - 01:20 PM	TTH	MCOL W100	Goldman,Mara Jill	150	Main Campus
1473	GEO	1972	201	B	21192	3	Environment-Society Geography	REC	02:00 PM - 02:50 PM	W	ECON 205		25	Main Campus
1474	GEO	1972	203	B	21194	3	Environment-Society Geography	REC	12:00 PM - 12:50 PM	F	GUGG 3		25	Main Campus
1475	GEO	1972	204	B	21195	3	Environment-Society Geography	REC	12:00 PM - 12:50 PM	F	GUGG 206		25	Main Campus
1476	GEO	1972	205	B	21196	3	Environment-Society Geography	REC	02:00 PM - 02:50 PM	W	MCOL E155		25	Main Campus
1477	GEO	1972	206	B	21197	3	Environment-Society Geography	REC	04:00 PM - 04:50 PM	W	GUGG 2		25	Main Campus
1478	GEO	1972	880	B	19937	3	Environment-Society Geography	LEC	11:00 AM - 11:50 AM	MWF	LIBR M300D	Hickcox,Abby Lynn	7	Main Campus
1479	GEO	1982	100	B	19539	3	World Regional Geography	LEC	01:00 PM - 01:50 PM	MW	CHEM 142	Riosmena,Fernando	180	Main Campus
1480	GEO	1982	102	B	19541	3	World Regional Geography	REC	08:00 AM - 08:50 AM	T	HLMS 137		20	Main Campus
1481	GEO	1982	103	B	19542	3	World Regional Geography	REC	09:00 AM - 09:50 AM	W	GUGG 206		20	Main Campus
1482	GEO	1982	104	B	19543	3	World Regional Geography	REC	09:00 AM - 09:50 AM	W	RAMY N1B31		20	Main Campus
1483	GEO	1982	105	B	33387	3	World Regional Geography	REC	08:00 AM - 08:50 AM	T	HLMS 263		20	Main Campus
1484	GEO	1982	107	B	22119	3	World Regional Geography	REC	11:00 AM - 11:50 AM	W	CHEM 145		20	Main Campus
1485	GEO	1982	109	B	22121	3	World Regional Geography	REC	11:00 AM - 11:50 AM	F	ENVD 122		20	Main Campus
1486	GEO	1982	200	B	20777	3	World Regional Geography	LEC	11:00 AM - 11:50 AM	MW	HLMS 252	Riosmena,Fernando	130	Main Campus
1487	GEO	1982	204	B	21310	3	World Regional Geography	REC	12:00 PM - 12:50 PM	W	GUGG 206		22	Main Campus
1488	GEO	1982	205	B	19544	3	World Regional Geography	REC	04:00 PM - 04:50 PM	W	GUGG 3		22	Main Campus
1489	GEO	2053	1	B	21198	3	Mapping a Changing World	LEC	12:30 PM - 01:45 PM	TTH	GUGG 201E	Kelly,Sarah	21	Main Campus
1490	GEO	2271	1	B	22319	3	Arctic Environment	LEC	12:30 PM - 01:45 PM	TTH	HLMS 245	Serreze,Mark C	30	Main Campus
1491	GEO	3023	10	B	16061	4	Statistics and Geographic Data	LEC	02:00 PM - 03:15 PM	TTH	GUGG 205	Kelly,Sarah	49	Main Campus
1492	GEO	3023	12	B	18461	4	Statistics and Geographic Data	LAB	12:00 PM - 01:50 PM	W	GUGG 6		24	Main Campus
1493	GEO	3053	10	B	15840	4	GIS: Mapping	LEC	09:30 AM - 10:45 AM	TTH	GUGG 205	Kelly,Sarah	49	Main Campus
1494	GEO	3053	11	B	18262	4	GIS: Mapping	LAB	09:00 AM - 11:50 AM	M	GUGG 6	Kelly,Sarah	25	Main Campus
1495	GEO	3053	12	B	18263	4	GIS: Mapping	LAB	09:00 AM - 11:50 AM	W	GUGG 6	Kelly,Sarah	24	Main Campus
1496	GEO	3251	1	B	13947	3	Mountain Geography	LEC	11:00 AM - 12:15 PM	TTH	HLMS 141	Blanken,Peter David	50	Main Campus
1497	GEO	3351	1	B	22122	3	Biogeography	LEC	10:00 AM - 10:50 AM	MWF	GUGG 205		0	Main Campus
1498	GEO	3402	1	B	33417	3	Natural Hazards	LEC	10:00 AM - 10:50 AM	MWF	VAC 1B20	Travis,William R	170	Main Campus
1499	GEO	3511	10	B	13948	4	Intro to Hydrology	LEC	11:00 AM - 11:50 AM	MWF	GUGG 2		29	Main Campus
1500	GEO	3511	11	B	18205	4	Intro to Hydrology	LAB	01:00 PM - 02:50 PM	M	GUGG 6		29	Main Campus
1501	GEO	3601	1	B	13422	3	Principles of Climate	LEC	11:30 AM - 12:45 PM	TTH	SEEC N136	Brown,Derek Philip	12	Main Campus
1502	GEO	3622	1	B	34525	3	Cities of the Global South	LEC	09:30 AM - 10:45 AM	TTH	HLMS 141	Truelove,Yaffa Elane	30	Main Campus
1503	GEO	3682	1	B	18018	3	Geog International Devlp	LEC	04:30 PM - 05:45 PM	MW	KTCH 1B71		47	Main Campus
1504	GEO	3692	100	B	20824	4	Intro to Global Public Health	LEC	09:30 AM - 10:45 AM	TTH	HLMS 252	Olsen,Gay Lynn	135	Main Campus
1505	GEO	3692	101	B	21629	4	Intro to Global Public Health	REC	02:00 PM - 02:50 PM	M	GUGG 2		22	Main Campus
1506	GEO	3692	102	B	21632	4	Intro to Global Public Health	REC	08:00 AM - 08:50 AM	W	HLMS 259		22	Main Campus
1507	GEO	3692	103	B	21633	4	Intro to Global Public Health	REC	05:00 PM - 05:50 PM	TH	GUGG 3		22	Main Campus
1508	GEO	3692	106	B	21631	4	Intro to Global Public Health	REC	11:00 AM - 11:50 AM	M	HLMS 255		23	Main Campus
1509	GEO	3742	1	B	20611	3	Place, Power, Culture	LEC	12:30 PM - 01:45 PM	TTH	HUMN 135	Counter,Max	60	Main Campus
1510	GEO	3822	1	B	18460	3	Geography of China	LEC	02:00 PM - 03:15 PM	TTH	HLMS 201	Yeh,Emily Ting	95	Main Campus
1511	GEO	3882	1	B	34415	3	Former Soviet Union	LEC	05:00 PM - 06:15 PM	TTH	GUGG 205	O'Loughlin,John	30	Main Campus
1512	GEO	4093	10	B	16605	4	Remote Sensing-Environ	LEC	08:00 AM - 09:15 AM	TTH	GUGG 205		25	Main Campus
1513	GEO	4093	11	B	17044	4	Remote Sensing-Environ	LAB	10:00 AM - 11:50 AM	T	GUGG 6		13	Main Campus
1514	GEO	4103	10	B	15854	4	GIS: Spatial Analytics	LEC	11:00 AM - 12:15 PM	TTH	GUGG 205	Leyk,Stefan	36	Main Campus
1515	GEO	4103	11	B	15857	4	GIS: Spatial Analytics	LAB	09:00 AM - 11:50 AM	F	GUGG 6		18	Main Campus
1516	GEO	4103	12	B	15858	4	GIS: Spatial Analytics	LAB	04:00 PM - 06:50 PM	TH	GUGG 6		18	Main Campus
1517	GEO	4173	2	B	35142	3	Research Seminar	SEM	02:00 PM - 04:50 PM	W	GUGG 201E	Oakes,Timothy S	20	Main Campus
1518	GEO	4201	1	B	20835	3	Biometeorology	LEC	09:30 AM - 10:45 AM	TTH	RAMY N1B31	Blanken,Peter David	20	Main Campus
1519	GEO	4203	10	B	15841	4	GIS: Spatial Modeling	LEC	12:30 PM - 01:45 PM	TTH	ECON 13	Buttenfield,Barbara	20	Main Campus
1520	GEO	4203	11	B	15842	4	GIS: Spatial Modeling	LAB	03:30 PM - 06:20 PM	T	GUGG 6	Buttenfield,Barbara	10	Main Campus
1521	GEO	4203	12	B	15843	4	GIS: Spatial Modeling	LAB	12:00 PM - 02:50 PM	F	GUGG 6	Buttenfield,Barbara	10	Main Campus
1522	GEO	4241	10	B	22657	4	Prin of Geomorphology	LEC	09:00 AM - 09:50 AM	MWF	GUGG 2	Lininger,Katherine Blom	12	Main Campus
1523	GEO	4241	11	B	22659	4	Prin of Geomorphology	LAB	02:00 PM - 04:50 PM	T	GUGG 3		12	Main Campus
1524	GEO	4371	1	B	34428	3	Forest Geog-Prin/Dynamcs	LEC	12:30 PM - 01:45 PM	TTH	GUGG 205	Barnard,Holly	35	Main Campus
1525	GEO	4463	1	B	33789	3	Data Science Bootcamp	LEC	11:00 AM - 01:30 PM	F	ECCS 1B28	Palomino,Jenny	5	Main Campus
1526	GEO	4812	1	B	21209	3	Envnmnt & Dvlpmnt/So Am	LEC	05:00 PM - 06:15 PM	TTH	ECON 117	Bryan,Joseph Henry	45	Main Campus
1527	GEO	5093	10	B	20825	4	Remote Sensing-Environ	LEC	08:00 AM - 09:15 AM	TTH	GUGG 205		8	Main Campus
1528	GEO	5093	11	B	20826	4	Remote Sensing-Environ	LAB	10:00 AM - 11:50 AM	T	GUGG 6		4	Main Campus
1529	GEO	5103	10	B	16659	4	Intro Geog Info Science	LEC	11:00 AM - 12:15 PM	TTH	GUGG 205	Leyk,Stefan	12	Main Campus
1530	GEO	5103	11	B	18096	4	Intro Geog Info Science	LAB	09:00 AM - 11:50 AM	F	GUGG 6		6	Main Campus
1531	GEO	5103	12	B	18097	4	Intro Geog Info Science	LAB	04:00 PM - 06:50 PM	TH	GUGG 6		6	Main Campus
1532	GEO	5152	1	B	18350	3	History & Theory of Geography	SEM	05:00 PM - 07:50 PM	W	GUGG 2	Fluri,Jennifer L	25	Main Campus
1533	GEO	5152	1	B	18350	3	History & Theory of Geography	SEM	03:00 PM - 04:50 PM	F	GUGG 205	Fluri,Jennifer L	25	Main Campus
1534	GEO	5203	10	B	18690	4	GIS: Modeling Application	LEC	12:30 PM - 01:45 PM	TTH	ECON 13	Buttenfield,Barbara	20	Main Campus
1535	GEO	5203	11	B	18691	4	GIS: Modeling Application	LAB	03:30 PM - 06:20 PM	T	GUGG 6	Buttenfield,Barbara	10	Main Campus
1536	GEO	5203	12	B	18692	4	GIS: Modeling Application	LAB	12:00 PM - 02:50 PM	F	GUGG 6	Buttenfield,Barbara	10	Main Campus
1537	GEO	5241	1	B	34420	3	Topics/Physical Geog	SEM	03:00 PM - 04:15 PM	MW	HLMS 104	Lininger,Katherine Blom	15	Main Campus
1538	GEO	5371	1	B	34429	3	Forest Geog: Prin/Dynamcs	LEC	12:30 PM - 01:45 PM	TTH	GUGG 205	Barnard,Holly	10	Main Campus
1539	GEO	5463	1	B	33790	3	Data Science Bootcamp	LEC	11:00 AM - 01:30 PM	F	ECCS 1B28	Palomino,Jenny	5	Main Campus
1540	GEO	5463	001B	B	33791	3	Data Science Bootcamp	LEC	-		Distance Education	Palomino,Jenny	10	Main Campus
1541	GEO	5632	1	B	21740	3	Development Geography	LEC	02:00 PM - 04:50 PM	M	GUGG 201E	Yeh,Emily Ting	20	Main Campus
1542	GEO	6742	1	B	34488	3	Sem-Cultural Geography	SEM	03:30 PM - 06:20 PM	T	HLMS 181	Oakes,Timothy S	15	Main Campus
1543	GEOL	1010	2	B	13540	3	Exploring Earth	LEC	12:00 PM - 12:50 PM	MWF	BESC 180	Stempien,Jennifer	169	Main Campus
1544	GEOL	1010	3	B	13545	3	Exploring Earth	LEC	02:00 PM - 02:50 PM	MWF	BESC 180	Anderson,Suzanne Prestrud	169	Main Campus
1545	GEOL	1012	1	B	22318	3	Exploring Earth for Scientists	LEC	10:00 AM - 10:50 AM	MWF	BESC 1B75	Stempien,Jennifer	49	Main Campus
1546	GEOL	1020	1	B	13559	3	History of a Habitable Planet	LEC	09:00 AM - 09:50 AM	MWF	BESC 180	Snell,Kathryn Elaine	169	Main Campus
1547	GEOL	1030	1	B	13567	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	M	BESC 145	Abbott,Lon	20	Main Campus
1548	GEOL	1030	2	B	13577	1	Intro to Geology Lab 1	MLS	08:00 AM - 10:50 AM	W	BESC 155	Abbott,Lon	20	Main Campus
1549	GEOL	1030	3	B	13578	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	T	BESC 145	Abbott,Lon	20	Main Campus
1550	GEOL	1030	4	B	13581	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	W	BESC 155	Abbott,Lon	20	Main Campus
1551	GEOL	1030	5	B	13583	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	TH	BESC 145	Abbott,Lon	20	Main Campus
1552	GEOL	1030	6	B	13584	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	T	BESC 155	Abbott,Lon	20	Main Campus
1553	GEOL	1030	7	B	13586	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	T	BESC 145	Abbott,Lon	20	Main Campus
1554	GEOL	1030	8	B	13587	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	W	BESC 155	Abbott,Lon	20	Main Campus
1555	GEOL	1030	9	B	13588	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	W	BESC 145	Abbott,Lon	20	Main Campus
1556	GEOL	1030	10	B	13589	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	TH	BESC 145	Abbott,Lon	20	Main Campus
1557	GEOL	1030	11	B	13590	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	M	BESC 155	Abbott,Lon	20	Main Campus
1558	GEOL	1030	12	B	13591	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	W	BESC 145	Abbott,Lon	20	Main Campus
1559	GEOL	1030	13	B	13592	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	M	BESC 145	Abbott,Lon	20	Main Campus
1560	GEOL	1030	14	B	22654	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	M	BESC 155	Abbott,Lon	20	Main Campus
1561	GEOL	1030	15	B	13596	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	T	BESC 155	Abbott,Lon	20	Main Campus
1562	GEOL	1030	16	B	13598	1	Intro to Geology Lab 1	MLS	02:00 PM - 04:50 PM	TH	BESC 155	Abbott,Lon	20	Main Campus
1563	GEOL	1030	17	B	13599	1	Intro to Geology Lab 1	MLS	08:00 AM - 10:45 AM	T	BESC 1B81	Abbott,Lon	20	Main Campus
1564	GEOL	1030	18	B	13601	1	Intro to Geology Lab 1	MLS	11:00 AM - 01:50 PM	TH	BESC 155	Abbott,Lon	20	Main Campus
1565	GEOL	1040	1	B	22355	3	Geology of Colorado	LEC	11:00 AM - 11:50 AM	MWF	BESC 180	Abbott,Lon	169	Main Campus
1566	GEOL	1060	2	B	21888	3	Global Change: Earth Sci Persp	LEC	11:00 AM - 12:15 PM	TTH		Miller,Gifford Hubbs	50	Main Campus
1567	GEOL	1150	10	B	22610	3	Water, Energy and Environment	LEC	10:00 AM - 10:50 AM	MW	BESC 180	Budd,David A	100	Main Campus
1568	GEOL	1150	11	B	22612	3	Water, Energy and Environment	REC	10:00 AM - 10:50 AM	F	BESC 155	Budd,David A	20	Main Campus
1569	GEOL	1150	15	B	22620	3	Water, Energy and Environment	REC	09:30 AM - 10:20 AM	TH	BESC 155	Budd,David A	20	Main Campus
1570	GEOL	1150	16	B	22621	3	Water, Energy and Environment	REC	02:00 PM - 02:50 PM	TH	BESC 265	Budd,David A	20	Main Campus
1571	GEOL	1150	17	B	22622	3	Water, Energy and Environment	REC	03:30 PM - 04:20 PM	TH	BESC 265	Budd,David A	20	Main Campus
1572	GEOL	1170	1	B	22356	3	Our Deadly Planet	LEC	11:00 AM - 12:15 PM	TTH	BESC 180	Sheehan,Anne F	169	Main Campus
1573	GEOL	2001	10	B	14190	4	Planet Earth	LEC	09:30 AM - 10:45 AM	TTH	BESC 1B75	Small Tilton,Eric Evan	48	Main Campus
1574	GEOL	2001	11	B	14194	4	Planet Earth	LAB	03:00 PM - 05:50 PM	M	BESC 385	Small Tilton,Eric Evan	24	Main Campus
1575	GEOL	2001	12	B	20276	4	Planet Earth	LAB	11:00 AM - 01:50 PM	W	BESC 385	Small Tilton,Eric Evan	24	Main Campus
1576	GEOL	2005	10	B	21254	4	Earth Materials	LEC	11:00 AM - 11:50 AM	MWF	BESC 1B75	Mahan,Kevin H	40	Main Campus
1577	GEOL	2005	11	B	21257	4	Earth Materials	LAB	09:00 AM - 11:45 AM	T	BESC 455	Mahan,Kevin H	20	Main Campus
1578	GEOL	2005	12	B	21379	4	Earth Materials	LAB	05:00 PM - 07:50 PM	TH	BESC 455	Mahan,Kevin H	20	Main Campus
1579	GEOL	2040	1	B	20179	3	Srch for Life in the Universe	LEC	10:00 AM - 10:50 AM	MWF	DUAN G1B20		215	Main Campus
1580	GEOL	2700	1	B	13635	2	Intro to Field Geology	FLD	12:30 PM - 05:50 PM	TTH	BESC 1B75	Abbott,Lon	19	Main Campus
1581	GEOL	3010	10	B	13706	3	Introduction to Mineralogy	LEC	08:00 AM - 09:15 AM	TTH	BESC 185		44	Main Campus
1582	GEOL	3010	12	B	14209	3	Introduction to Mineralogy	LAB	01:00 PM - 03:50 PM	W	BESC 455		22	Main Campus
1583	GEOL	3010	13	B	14210	3	Introduction to Mineralogy	LAB	02:00 PM - 04:50 PM	TH	BESC 455		22	Main Campus
1584	GEOL	3030	1	B	14214	3	Intro to Hydrogeology	LEC	09:30 AM - 10:45 AM	TTH	BESC 185	Mc Curry,Gordon Nichols	75	Main Campus
1585	GEOL	3040	1	B	20754	3	Glob Chg/Rct Geol Record	LEC	10:00 AM - 11:15 AM	TTH	SEEC N124	Sepulveda Arellano,Julio Cesar	24	Main Campus
1586	GEOL	3050	1	B	34430	2	GIS for Geologists	MLS	02:00 PM - 03:50 PM	TTH	BESC 385	Hynek,Brian Michael	24	Main Campus
1587	GEOL	3070	1	B	22718	3	Introduction to Oceanography	LEC	04:00 PM - 05:15 PM	TTH	SEEC N136		50	Main Campus
1588	GEOL	3090	1	B	21814	3	Scientific Writing	SEM	09:30 AM - 10:45 AM	TTH	BESC 265	Abbott,Lon	18	Main Campus
1589	GEOL	3090	1	B	21814	3	Scientific Writing	SEM	09:30 AM - 10:45 AM	TTH	BESC 265	Molnar,Peter Hale	18	Main Campus
1590	GEOL	3120	10	B	14218	4	Structural Geology	LEC	11:00 AM - 11:50 AM	MWF	BESC 185	Mueller,Karl Jules	75	Main Campus
1591	GEOL	3120	11	B	14221	4	Structural Geology	LAB	01:00 PM - 03:50 PM	M	BESC 1B75	Mueller,Karl Jules	18	Main Campus
1592	GEOL	3120	12	B	14222	4	Structural Geology	LAB	01:00 PM - 03:50 PM	F	BESC 1B75	Mueller,Karl Jules	19	Main Campus
1593	GEOL	3120	13	B	18323	4	Structural Geology	LAB	01:00 PM - 03:50 PM	M	BESC 1B81	Mueller,Karl Jules	19	Main Campus
1594	GEOL	3120	14	B	20391	4	Structural Geology	LAB	01:00 PM - 03:50 PM	F	BESC 1B81	Mueller,Karl Jules	19	Main Campus
1595	GEOL	3410	10	B	21889	3	Paleobiology	LEC	01:00 PM - 01:50 PM	MW	BESC 185	Chin,Karen	48	Main Campus
1596	GEOL	3410	11	B	14278	3	Paleobiology	LAB	02:00 PM - 04:50 PM	T	BESC 265	Chin,Karen	24	Main Campus
1597	GEOL	3410	12	B	14280	3	Paleobiology	LAB	02:00 PM - 04:50 PM	W	BESC 265	Chin,Karen	24	Main Campus
1598	GEOL	3820	10	B	22471	4	The Fluid Earth	LEC	11:00 AM - 12:15 PM	TTH	BESC 1B75	Tucker,Gregory E	40	Main Campus
1599	GEOL	3820	11	B	22648	4	The Fluid Earth	LAB	01:00 PM - 03:50 PM	M	BESC 355	Tucker,Gregory E	20	Main Campus
1600	GEOL	3820	12	B	22650	4	The Fluid Earth	LAB	01:00 PM - 03:50 PM	F	BESC 355	Tucker,Gregory E	20	Main Campus
1601	GEOL	4093	10	B	16646	4	Remote Sensing-Environ	LEC	08:00 AM - 09:15 AM	TTH	GUGG 205		10	Main Campus
1602	GEOL	4093	11	B	17045	4	Remote Sensing-Environ	LAB	10:00 AM - 11:50 AM	T	GUGG 6		5	Main Campus
1603	GEOL	4241	10	B	22658	4	Prin of Geomorphology	LEC	09:00 AM - 09:50 AM	MWF	GUGG 2	Lininger,Katherine Blom	13	Main Campus
1604	GEOL	4241	11	B	22660	4	Prin of Geomorphology	LAB	02:00 PM - 04:50 PM	T	GUGG 3		13	Main Campus
1605	GEOL	4270	1	B	34917	3	Marine Chem & Geochem	LEC	11:00 AM - 12:15 PM	TTH	BESC 265	Marchitto,Thomas	15	Main Campus
1606	GEOL	4330	1	B	22314	3	Cosmochemistry	LEC	09:30 AM - 10:45 AM	TTH			10	Main Campus
1607	GEOL	4474	10	B	35024	4	Vertebrate Paleontology	LEC	09:30 AM - 10:45 AM	TTH	MCOL E280	Eberle,Jaelyn J	6	Main Campus
1608	GEOL	4474	11	B	35026	4	Vertebrate Paleontology	LAB	01:00 PM - 03:00 PM	TH	MCOL E280	Eberle,Jaelyn J	6	Main Campus
1609	GEOL	4700	23	B	34919	3	Special Geological Topic	LEC	11:00 AM - 12:15 PM	TTH	BESC 385	Overeem,Irina	24	Main Campus
1610	GEOL	4700	28	B	35217	1	Special Geological Topic	LEC	-			Stempien,Jennifer	15	Main Campus
1611	GEOL	4711	1	B	14368	2	Igneous/Metamor Fld Geol	FLD	12:00 PM - 05:50 PM	F	See Academc Dept	Stern,Charles R	20	Main Campus
1612	GEOL	4711	1	B	14368	2	Igneous/Metamor Fld Geol	FLD	02:00 PM - 06:50 PM	M	See Academc Dept	Stern,Charles R	20	Main Campus
1613	GEOL	4711	1	B	14368	2	Igneous/Metamor Fld Geol	FLD	01:00 PM - 01:50 PM	M	See Academc Dept	Stern,Charles R	20	Main Campus
1614	GEOL	4712	1	B	22645	2	Structural Field Geology	FLD	-			Mueller,Karl Jules	19	Main Campus
1615	GEOL	4714	1	B	14371	2	Field Geophysics	FLD	12:30 PM - 05:30 PM	TTH	BESC 355	Jones,Craig H	10	Main Campus
1616	GEOL	5093	10	B	20752	4	Remote Sensing-Environ	LEC	08:00 AM - 09:15 AM	TTH	GUGG 205		6	Main Campus
1617	GEOL	5093	11	B	20753	4	Remote Sensing-Environ	LAB	10:00 AM - 11:50 AM	T	GUGG 6		3	Main Campus
1618	GEOL	5110	1	B	34921	3	Geomechanics	LEC	09:00 AM - 10:15 AM	MW	BESC 265	Anderson,Robert S	15	Main Campus
1619	GEOL	5150	1	B	22602	2	Planetary Field Geology	LEC	-			Mojzsis,Stephen J	10	Main Campus
1620	GEOL	5215	1	B	34916	3	Geochron/Thermochron	SEM	11:00 AM - 12:15 PM	TTH	BESC 355	Flowers,Rebecca M	10	Main Campus
1621	GEOL	5270	1	B	34918	3	Marine Chemistry & Geochem	LEC	11:00 AM - 12:15 PM	TTH	BESC 265	Marchitto,Thomas	9	Main Campus
1622	GEOL	5474	10	B	35029	4	Vertebrate Paleontology	LEC	09:30 AM - 10:45 AM	TTH	MCOL E280	Eberle,Jaelyn J	4	Main Campus
1623	GEOL	5474	11	B	35032	4	Vertebrate Paleontology	LAB	01:00 PM - 03:00 PM	TH	MCOL E280	Eberle,Jaelyn J	4	Main Campus
1624	GEOL	5690	1	B	34922	3	Western U.S. Tectonics	LEC	11:00 AM - 11:50 AM	MWF	BESC 355	Jones,Craig H	15	Main Campus
1625	GEOL	5700	1	B	20915	1	Geological Topic Seminar	SEM	08:00 AM - 08:50 AM	TH	BESC 265	Anderson,Robert S	24	Main Campus
1626	GEOL	5700	4	B	35109	3	Geological Topic Seminar	SEM	03:00 PM - 04:15 PM	TTH	BESC 340D	Arthurs,Leilani A	15	Main Campus
1627	GEOL	5700	10	B	21471	2	Geological Topic Seminar	SEM	12:30 PM - 02:30 PM	TH	BESC 240D	Flowers,Rebecca M	10	Main Campus
1628	GEOL	5700	26	B	21956	3	Geological Topic Seminar	SEM	09:30 AM - 10:45 AM	TTH	BESC 240D	Simpson,Carl	15	Main Campus
1629	GEOL	5700	33	B	21967	1	Geological Topic Seminar	SEM	-		See Academc Dept	Trower,Elizabeth	10	Main Campus
1630	GEOL	5702	2	B	21999	1	Geomorphology Seminar	SEM	02:30 PM - 03:30 PM	W	BESC 240D	Tucker,Gregory E	15	Main Campus
1631	GEOL	5711	1	B	14388	1-3	Igneous/Metamor Fld Geol	SEM	01:00 PM - 01:50 PM	M	See Academc Dept	Stern,Charles R	10	Main Campus
1632	GEOL	5711	1	B	14388	1-3	Igneous/Metamor Fld Geol	SEM	02:00 PM - 06:50 PM	M	See Academc Dept	Stern,Charles R	10	Main Campus
1633	GEOL	5711	1	B	14388	1-3	Igneous/Metamor Fld Geol	SEM	12:00 PM - 05:50 PM	F	See Academc Dept	Stern,Charles R	10	Main Campus
1634	GEOL	5714	1	B	14395	2	Field Geophysics	FLD	12:30 PM - 05:30 PM	TTH	BESC 355	Jones,Craig H	6	Main Campus
1635	GEOL	5835	1	B	20658	1	Seminar in Planetary Science	SEM	-				50	Main Campus
1636	GEOL	6610	1	B	22509	3	Earth and Planetary Physics 1	LEC	-				12	Main Campus
1637	GEOL	6620	1	B	34910	3	Earth and Planetary Physics 2	LEC	08:00 AM - 09:15 AM	TTH	HUMN 1B90	Nerem,Robert Steven	7	Main Campus
1638	GEOL	6650	2	B	21873	1	Seminar in Geophysics	SEM	-			Sheehan,Anne F	15	Main Campus
1642	GRM	1010	4	B	14060	4	Beginning German 1	LEC	12:00 PM - 12:50 PM	MTTF	EKLC E1B50		19	Main Campus
1643	GRM	1010	5	B	14061	4	Beginning German 1	LEC	01:00 PM - 01:50 PM	MTTF	EKLC E1B50		19	Main Campus
1644	GRM	1010	6	B	14062	4	Beginning German 1	LEC	02:00 PM - 02:50 PM	MTTF	EKLC E1B50		19	Main Campus
1645	GRM	1020	1	B	14063	4	Beginning German 2	LEC	10:00 AM - 10:50 AM	MTTF	HUMN 270		19	Main Campus
1646	GRM	1020	2	B	14064	4	Beginning German 2	LEC	11:00 AM - 11:50 AM	MTTF	CLRE 209		19	Main Campus
1647	GRM	1020	3	B	14065	4	Beginning German 2	LEC	06:30 PM - 08:10 PM	MW	HUMN 180		19	Main Campus
1648	GRM	1030	1	B	21798	5	Intensive Beg German	SEM	05:00 PM - 06:30 PM	MTTH	MUEN E123		19	Main Campus
1649	GRM	1601	1	B	21343	3	Germany Today	LEC	12:30 PM - 01:45 PM	TTH	MKNA 112		20	Main Campus
1650	GRM	2010	1	B	14066	4	Intermediate German 1	LEC	12:00 PM - 12:50 PM	MTTF	HLMS 247		19	Main Campus
1651	GRM	2010	2	B	14073	4	Intermediate German 1	LEC	11:00 AM - 11:50 AM	MTTF	CLRE 302		19	Main Campus
1652	GRM	2010	4	B	18442	4	Intermediate German 1	LEC	01:00 PM - 01:50 PM	MTTF	HALE 236		19	Main Campus
1653	GRM	2020	1	B	14090	4	Intermediate German 2	LEC	10:00 AM - 10:50 AM	MTTF	MUEN E123	Jany,Ursula Berit	19	Main Campus
1654	GRM	2301	10	B	19984	3	Inside Nazi Germany	LEC	11:00 AM - 11:50 AM	MW	HUMN 150	Hoecker,Arne	155	Main Campus
1655	GRM	2502	10	B	21526	3	Representing the Holocaust	LEC	10:00 AM - 10:50 AM	MW	HALE 230	Weber,Beverly	44	Main Campus
1656	GRM	2601	1	B	33897	3	Kafkaesque	SEM	09:30 AM - 10:45 AM	TTH	ECON 13		20	Main Campus
1657	GRM	3010	1	B	13784	3	Advanced German 1	LEC	11:00 AM - 11:50 AM	MWF	GUGG 3	Hintz,Saskia Barbara	26	Main Campus
1658	GRM	3020	1	B	13785	3	Advanced German 2	LEC	12:00 PM - 12:50 PM	MWF	MUEN E064	Hintz,Saskia Barbara	25	Main Campus
1659	GRM	3140	1	B	33896	3	Current Iss: German Literature	LEC	05:00 PM - 06:15 PM	MW	DUAN G1B25	Hoecker,Arne	20	Main Campus
1660	GRM	4010	1	B	17507	3	Advanced German III	LEC	02:00 PM - 02:50 PM	MWF	MKNA 112	Hintz,Saskia Barbara	20	Main Campus
1661	GRM	4301	1	B	33916	3	Gndr, Race, Imm Grmn/Eur	LEC	05:00 PM - 06:15 PM	MW	HUMN 125	Weber,Beverly	30	Main Campus
1662	GRM	4450	1	B	13819	3	Methods/Teaching German	LEC	03:30 PM - 06:00 PM	T	MKNA 112	Jany,Ursula Berit	2	Main Campus
1663	GRM	4550	1	B	19526	3	Senior Seminar German Studies	SEM	11:00 AM - 11:50 AM	MWF	MCKY 202	Muller-Sievers,Helmut	15	Main Campus
1664	GRM	5020	1	B	13798	3	App Ling/For Lang Tch Methdlgy	LEC	03:30 PM - 06:00 PM	T	MKNA 112	Jany,Ursula Berit	18	Main Campus
1665	GRM	5030	1	B	19992	3	Foundations of Critical Theory	SEM	03:30 PM - 06:00 PM	TH	MKNA 112	Stone,Lauren	20	Main Campus
1666	GRM	5220	1	B	33922	3	Sem: Tpcs/Age of Goethe	SEM	03:30 PM - 06:00 PM	M	MCKY 202	Muller-Sievers,Helmut	15	Main Campus
1667	GRM	5301	1	B	33918	3	Gndr, Race, Imm, Grmn/Eur	LEC	05:00 PM - 06:15 PM	MW	HUMN 125	Weber,Beverly	5	Main Campus
1668	GSLL	2350	1	B	22735	3	Introduction to Jewish Culture	LEC	05:00 PM - 06:15 PM	TTH	RAMY N1B23	Wartell,Rebecca	60	Main Campus
1669	GSLL	2551	1	B	22309	3	Modern Jewish Literature	LEC	02:00 PM - 03:15 PM	TTH	ECON 16	Wartell,Rebecca	20	Main Campus
1670	HEBR	1010	1	B	19991	4	Beginning Modern Hebrew 1	LEC	10:00 AM - 11:10 AM	MWF	CLUB 6	Rivlin,Eyal O	20	Main Campus
1671	HEBR	1010	2	B	34880	4	Beginning Modern Hebrew 1	LEC	02:00 PM - 02:50 PM	M-TH	CLRE 208		20	Main Campus
1672	HEBR	2110	1	B	20356	4	Intermediate Modern Hebrew 1	LEC	11:15 AM - 12:25 PM	MWF	CLUB 6	Rivlin,Eyal O	20	Main Campus
1673	HEBR	3010	1	B	19532	3	Third Year Modern Hebrew 1	LEC	01:00 PM - 01:50 PM	MWF	CLUB 6	Rivlin,Eyal O	15	Main Campus
1674	HIND	1010	1	B	14496	5	Beginning Hindi 1	LEC	10:00 AM - 10:50 AM	M-F	HUMN 1B70	Arya,Nidhi	19	Main Campus
1675	HIND	2110	1	B	14497	5	Intermediate Hindi 1	LEC	11:00 AM - 11:50 AM	M-F	CHEM 146	Arya,Nidhi	10	Main Campus
1676	HIND	3110	1	B	21113	3	Advanced Hindi 1	LEC	01:00 PM - 01:50 PM	MWF	CHEM 146	Arya,Nidhi	10	Main Campus
1677	HIND	3441	1	B	33577	3	Screening India: Bollywood	LEC	03:30 PM - 04:45 PM	TTH	KTCH 1B60	Parson,Rahul	30	Main Campus
1678	HIST	1011	1	B	13906	3	European History to 1600	LEC	03:30 PM - 04:45 PM	TTH	BESC 185	Martoccio,Michael	60	Main Campus
1679	HIST	1011	2	B	22068	3	European History to 1600	LEC	08:00 AM - 09:15 AM	TTH	HLMS 255	Luginbill,Sarah Christine	30	Main Campus
1680	HIST	1011	100	B	13874	3	European History to 1600	LEC	11:00 AM - 11:50 AM	MW	VAC 1B20	Paradis,David Henry	180	Main Campus
1681	HIST	1012	1	B	13908	3	European History Since 1600	LEC	01:00 PM - 01:50 PM	MWF	HALE 270	Hanna,Martha	160	Main Campus
1682	HIST	1012	2	B	13909	3	European History Since 1600	LEC	11:00 AM - 11:50 AM	MWF	HLMS 201	Jobin,Nicole Vicki	90	Main Campus
1683	HIST	1015	1	B	21672	3	American History to 1865	LEC	01:00 PM - 01:50 PM	MWF	MCOL W100	Hulden,Vilja Paivikki	160	Main Campus
1684	HIST	1015	2	B	13907	3	American History to 1865	LEC	01:00 PM - 01:50 PM	MWF	HUMN 135	Detch,Andrew	74	Main Campus
1685	HIST	1018	1	B	28960	3	Early Latin Am Hist to 1810	LEC	02:00 PM - 03:15 PM	TTH	HUMN 250	Ferry,Robert James	90	Main Campus
1686	HIST	1025	1	B	13910	3	American History since 1865	LEC	12:00 PM - 12:50 PM	MWF	HALE 230	Pittenger,Mark A	88	Main Campus
1687	HIST	1025	2	B	22069	3	American History since 1865	LEC	04:00 PM - 04:50 PM	MWF	EKLC E1B50		0	Main Campus
1688	HIST	1025	100	B	13917	3	American History since 1865	LEC	01:00 PM - 01:50 PM	MW	MATH 100	Andrews,Thomas	200	Main Campus
1689	HIST	1051	1	B	20377	3	World of Ancient Greeks	LEC	11:00 AM - 12:15 PM	TTH	HLMS 229	Oliver,Ian	17	Main Campus
1690	HIST	1113	1	B	22070	3	Intro British History to 1660	LEC	09:00 AM - 09:50 AM	MWF	HLMS 199	Paradis,David Henry	90	Main Campus
1691	HIST	1113	880	B	21042	3	Intro British History to 1660	LEC	03:30 PM - 04:45 PM	TTH	MKNA 204	Hammer,Paul E. J.	17	Main Campus
1692	HIST	1308	1	B	21098	3	Intro Middle East Hist	LEC	11:00 AM - 11:50 AM	MWF	HUMN 250	Willis,John	90	Main Campus
1693	HIST	1528	1	B	22075	3	South Asian Hist since 1757	LEC	09:00 AM - 09:50 AM	MWF	HLMS 201	Mukherjee,Mithi	90	Main Campus
1694	HIST	1628	1	B	22076	3	Intro Chinese Hist Since 1644	LEC	09:30 AM - 10:45 AM	TTH	HALE 230	Wei,William	88	Main Campus
1695	HIST	1708	1	B	28961	3	Intro Japanese History	LEC	03:00 PM - 04:15 PM	MW	EDUC 220	Kadia,Miriam Kingsberg	90	Main Campus
1696	HIST	1800	1	B	22071	3	Introduction to Global History	LEC	03:00 PM - 04:15 PM	MW	KTCH 1B60	Kent,Susan K	30	Main Campus
1697	HIST	1800	2	B	22072	3	Introduction to Global History	LEC	12:00 PM - 12:50 PM	MWF	MUEN E131	Sutter,Paul Shriver	40	Main Campus
1698	HIST	1818	1	B	21568	3	Jewish History to 1492	LEC	02:00 PM - 03:15 PM	TTH	HUMN 1B90	Shneer,David	52	Main Campus
1699	HIST	2015	1	B	21542	3	Themes Early American History	LEC	12:00 PM - 12:50 PM	MWF	HLMS 255	Anderson,Virginia D	30	Main Campus
1700	HIST	2100	1	B	28962	3	Revolution in History	LEC	03:00 PM - 03:50 PM	MWF	HLMS 201		0	Main Campus
1701	HIST	2166	1	B	33633	3	The Vietnam Wars	LEC	12:00 PM - 12:50 PM	MWF	GUGG 205	Hulden,Vilja Paivikki	49	Main Campus
1702	HIST	2166	880	B	20381	3	The Vietnam Wars	LEC	10:00 AM - 10:50 AM	MWF	LIBR N424A	Dike,Steven Andrew	17	Main Campus
1703	HIST	2220	1	B	21099	3	History of War & Society	LEC	12:30 PM - 01:45 PM	TTH	HALE 230	Gautam,Sanjay Kumar	88	Main Campus
1704	HIST	2220	2	B	22690	3	History of War & Society	LEC	04:00 PM - 04:50 PM	MWF	CLRE 207	Hatch,John B	70	Main Campus
1705	HIST	2326	1	B	21358	3	Issues U.S. Society & Culture	LEC	03:00 PM - 03:50 PM	MWF	HLMS 237	Brackett,Amelia Andrea	30	Main Campus
1706	HIST	2516	1	B	20760	3	America Through Baseball	LEC	02:00 PM - 02:50 PM	MWF	VAC 1B20	Babicz,Martin C	195	Main Campus
1707	HIST	3012	1	B	28967	3	Sem: Modern Europe History	SEM	03:30 PM - 06:00 PM	T	LIBR M498	Ciarlo,David M	16	Main Campus
1708	HIST	3020	1	B	19460	3	Historical Thinking & Writing	SEM	05:00 PM - 06:15 PM	TTH	HUMN 180	Young,Phoebe S K	18	Main Campus
1709	HIST	3020	2	B	19461	3	Historical Thinking & Writing	SEM	03:00 PM - 04:15 PM	MW	HLMS 181	Chester,Lucy P	18	Main Campus
1710	HIST	3020	3	B	19549	3	Historical Thinking & Writing	SEM	03:30 PM - 04:45 PM	TTH	CLRE 212	Gautam,Sanjay Kumar	18	Main Campus
1711	HIST	3110	801	B	14172	3	Honors Seminar	SEM	03:00 PM - 05:30 PM	M	HLMS 196	Osborne,Myles Gregory	18	Main Campus
1712	HIST	3415	1	B	28968	3	Sem: Recent American Hist	SEM	03:00 PM - 03:50 PM	M	HUMN 245	Pittenger,Mark A	18	Main Campus
1713	HIST	3800	1	B	28969	3	Seminar in Global History	SEM	03:30 PM - 06:00 PM	T	HLMS 104	Wei,William	18	Main Campus
1714	HIST	4071	1	B	33106	3	Ancient Social History	LEC	02:00 PM - 03:15 PM	TTH	HUMN 370	Hunt,Peter Alan	7	Main Campus
1715	HIST	4081	1	B	22294	3	The Roman Republic	LEC	10:00 AM - 10:50 AM	MWF	GUGG 2	Lansford,Edwin Tyler	17	Main Campus
1716	HIST	4116	1	B	36555	3	US Foreign Relations 1865-1940	LEC	03:30 PM - 04:45 PM	TTH	GUGG 205	Zeiler,Thomas	45	Main Campus
1717	HIST	4125	1	B	28971	3	Early American History to 1763	LEC	02:00 PM - 02:50 PM	MWF	MCOL E186	Anderson,Virginia D	30	Main Campus
1718	HIST	4143	1	B	28973	3	The Making of Great Britain	LEC	11:00 AM - 12:15 PM	TTH	HLMS 237	Hammer,Paul E. J.	39	Main Campus
1719	HIST	4215	1	B	22085	3	Revol War & Amer Republc	LEC	12:30 PM - 01:45 PM	TTH	HLMS 241	Sachs,Honor	39	Main Campus
1720	HIST	4217	1	B	28977	3	American West in 19C	LEC	03:00 PM - 03:50 PM	MWF	HLMS 211	Andrews,Thomas	45	Main Campus
1721	HIST	4258	1	B	22087	3	Africa/Colonial Rule	LEC	09:00 AM - 09:50 AM	MWF	KTCH 1B44	Osborne,Myles Gregory	35	Main Campus
1722	HIST	4320	1	B	21544	3	Mediterranean Hist, 1000-1600	LEC	04:00 PM - 04:50 PM	MWF	ECON 13	Dauverd,Celine	30	Main Campus
1723	HIST	4416	1	B	22098	3	Environmental Hist/North Amer	LEC	02:00 PM - 03:15 PM	TTH	HLMS 263	Young,Phoebe S K	33	Main Campus
1724	HIST	4423	1	B	22092	3	German History Since 1849	LEC	09:30 AM - 10:45 AM	TTH	EKLC E1B50	Ciarlo,David M	40	Main Campus
1725	HIST	4437	1	B	28988	3	African American History	LEC	10:00 AM - 10:50 AM	MWF	CLUB 4	Detch,Andrew	39	Main Campus
1726	HIST	4442	1	B	21546	3	Europe Since 1945	LEC	10:00 AM - 10:50 AM	MWF	HLMS 211	Hatch,John B	39	Main Campus
1727	HIST	4454	1	B	34885	3	Jewish Intellectual History	LEC	09:30 AM - 10:45 AM	TTH	HLMS 196	Wartell,Rebecca	20	Main Campus
1728	HIST	4548	1	B	28989	3	Women in Modern India	LEC	03:00 PM - 04:15 PM	MW	HLMS 245	Mukherjee,Mithi	30	Main Campus
1729	HIST	4620	1	B	35242	3	Global History of Sexuality	LEC	03:00 PM - 04:15 PM	MW	ECON 205	Buffington,Robert Marshall	14	Main Campus
1730	HIST	4628	1	B	22095	3	Modern China, 1644-1949	LEC	10:00 AM - 10:50 AM	MWF	HLMS 229	Weston,Timothy B	39	Main Campus
1731	HIST	4711	1	B	28963	3	Medieval Crusades, 1095--1400	LEC	11:00 AM - 12:15 PM	TTH	EDUC 220	Martoccio,Michael	50	Main Campus
1732	HIST	4723	1	B	28991	3	Imperial Russia	LEC	12:00 PM - 12:50 PM	MWF	HLMS 229	Hatch,John B	39	Main Campus
1733	HIST	4758	1	B	28992	3	Postwar Japan since 1945	LEC	01:00 PM - 01:50 PM	MWF	HLMS 229	Kadia,Miriam Kingsberg	39	Main Campus
1734	HIST	5000	801	B	21924	3	Historical Methods	SEM	03:00 PM - 05:30 PM	W	HALE 235	Willis,John	13	Main Campus
1735	HIST	5106	801	B	28995	3	Grad Colloq in US Hist	SEM	03:30 PM - 06:00 PM	T	HALE 235	Sachs,Honor	13	Main Campus
1736	HIST	5129	803	B	22937	3	Modern Asian History	SEM	03:00 PM - 05:30 PM	M	HALE 235	Weston,Timothy B	13	Main Campus
1737	HIST	6800	801	B	28996	3	Readings in Global History	SEM	03:00 PM - 05:30 PM	M	CLUB 10		13	Main Campus
1738	HIST	7052	801	B	28997	3	Sem-Mod Europe History	SEM	03:30 PM - 06:00 PM	TH	HALE 235	Kent,Susan K	13	Main Campus
1739	HON	1810	880	B	14390	3	Honors Diversity Seminar	SEM	11:00 AM - 12:15 PM	TTH	LIBR M300D	Keasley,Alphonse	7	Main Campus
1740	HON	3220	880	B	14402	3	Advanced Honors Writing	SEM	11:00 AM - 11:50 AM	MWF	LIBR N424A	Norgaard,Rolf P	17	Main Campus
1741	HON	4000	880	B	20150	3	Open Topics	LEC	03:00 PM - 04:15 PM	MW	LIBR N424A	Hickcox,Abby Lynn	17	Main Campus
1742	HUM	1110	1	B	20600	3	Literature 1	LEC	10:00 AM - 10:50 AM	MWF	HUMN 190	Wiese,Annjeanette Michelle	25	Main Campus
1743	HUM	1110	2	B	20601	3	Literature 1	LEC	11:00 AM - 11:50 AM	MWF	HLMS 241	Ferris,David S	25	Main Campus
1744	HUM	1110	3	B	20602	3	Literature 1	LEC	11:00 AM - 11:50 AM	MWF	HLMS 237	Wiese,Annjeanette Michelle	25	Main Campus
1745	HUM	1110	4	B	20603	3	Literature 1	LEC	12:00 PM - 12:50 PM	MWF	HALE 240	Gilbert,Andrew Lawrence	25	Main Campus
1746	HUM	1110	5	B	20784	3	Literature 1	LEC	01:00 PM - 01:50 PM	MWF	EKLC E1B75	Gilbert,Andrew Lawrence	25	Main Campus
1747	HUM	1120	1	B	28793	3	Literature 2	LEC	09:30 AM - 10:45 AM	TTH			25	Main Campus
1748	HUM	1120	2	B	36046	3	Literature 2	LEC	11:00 AM - 12:15 PM	TTH	GUGG 206		15	Main Campus
1749	HUM	1210	1	B	20599	3	Art and Music 1	LEC	10:00 AM - 10:50 AM	MWF	HUMN 150	Siso,Maria Alexandra	150	Main Campus
1750	HUM	1210	1	B	20599	3	Art and Music 1	LEC	10:00 AM - 10:50 AM	MWF	HUMN 150	Bernardini,Giulia	150	Main Campus
1751	HUM	2000	1	B	13983	3	Methods/Approachs Humnities	LEC	01:00 PM - 01:50 PM	MWF	HLMS 267	Wiese,Annjeanette Michelle	50	Main Campus
1752	HUM	2100	1	B	21858	3	Arts, Culture and Media	SEM	10:00 AM - 10:50 AM	MWF	EKLC E1B75		25	Main Campus
1753	HUM	2601	1	B	28844	3	Kafkaesque	SEM	09:30 AM - 10:45 AM	TTH	ECON 13		10	Main Campus
1754	HUM	3092	1	B	34358	3	Studies in Humanities	LEC	09:30 AM - 10:45 AM	TTH	VAC 1B88	Oddie,Graham James	19	Main Campus
1755	HUM	3093	2	B	28950	3	Topics in Humanities	SEM	01:00 PM - 01:50 PM	MWF	HLMS 237		25	Main Campus
1756	HUM	3093	3	B	34532	3	Topics in Humanities	SEM	12:30 PM - 01:45 PM	TTH	HALE 260		25	Main Campus
1757	HUM	3093	4	B	22336	3	Topics in Humanities	SEM	07:00 PM - 09:50 PM	M	ATLS 102	Ganguly,Suranjan	5	Main Campus
1758	HUM	3093	4	B	22336	3	Topics in Humanities	SEM	12:30 PM - 01:45 PM	TTH	MUEN E131	Ganguly,Suranjan	5	Main Campus
1759	HUM	3200	1	B	28847	3	Fictions of Illness	SEM	09:30 AM - 10:45 AM	TTH			15	Main Campus
1760	HUM	3210	1	B	28848	3	Narrative	LEC	02:00 PM - 02:50 PM	MWF	CLRE 104	Wiese,Annjeanette Michelle	25	Main Campus
1761	HUM	3240	1	B	22027	3	Tragedy	LEC	12:30 PM - 01:45 PM	TTH	HALE 240	Gordon,Paul	25	Main Campus
1762	HUM	3660	1	B	21490	3	The Postmodern	LEC	02:00 PM - 02:50 PM	MWF	HLMS 267	Ferris,David S	50	Main Campus
1763	HUM	4004	1	B	28867	3	Topics in Film Theory	SEM	04:00 PM - 06:50 PM	W	ATLS 102	Shell,Hanna Rose	3	Main Campus
1764	HUM	4004	1	B	28867	3	Topics in Film Theory	SEM	09:30 AM - 10:45 AM	TTH	ATLS 102	Shell,Hanna Rose	3	Main Campus
1765	HUM	4030	1	B	28871	3	The Art of Travel	SEM	11:00 AM - 11:50 AM	MWF		Bernardini,Giulia	25	Main Campus
1766	HUM	4155	1	B	22034	3	Philosophy, Art/Sublime	LEC	02:00 PM - 03:15 PM	TTH	HALE 240	Gordon,Paul	25	Main Campus
1767	HUM	4821	1	B	22038	3	20th C Russ Lit & Art	LEC	02:00 PM - 03:15 PM	TTH	HUMN 125		10	Main Campus
1768	HUM	4835	880	B	19649	3	Literature/Soc Violence	LEC	02:00 PM - 03:15 PM	TTH	LIBR M300D	Comstock,Cathy	17	Main Campus
1769	HUM	4950	900	B	19462	1-6	Honors Thesis	LEC	-			Wiese,Annjeanette Michelle	30	Main Campus
1770	HUM	4950	901	B	19463	1-6	Honors Thesis	LEC	-			Bernardini,Giulia	30	Main Campus
1771	HUM	4950	903	B	19464	1-6	Honors Thesis	LEC	-			Greaney,Patrick	30	Main Campus
1772	HUM	4950	905	B	19465	1-6	Honors Thesis	LEC	-			Ferris,David S	30	Main Campus
1773	INDO	1110	1	B	22794	3	Beginning Indonesian 1- DILS	LEC	01:00 PM - 01:50 PM	MWF		Oktoprimasakti,Fransiska	10	Main Campus
1774	IPHY	1950	1	B	34887	3	Intro Sci Wrtg/Intgrtve Physio	LEC	03:30 PM - 04:45 PM	TH	HUMN 1B45	Boyko,Marie Elizabeth	18	Main Campus
1775	IPHY	2420	1	B	19106	3	Nutrition for Health & Perform	LEC	10:00 AM - 10:50 AM	MWF	MCOL W100	Stob,Nicole Rebecca	160	Main Campus
1776	IPHY	2420	2	B	19108	3	Nutrition for Health & Perform	LEC	12:00 PM - 12:50 PM	MWF	HUMN 1B50	Stob,Nicole Rebecca	240	Main Campus
1777	IPHY	2800	10	B	13411	4	Introduction to Statistics	LEC	08:00 AM - 09:15 AM	TTH	HUMN 250	Ehringer,Marissa Aileen	90	Main Campus
1778	IPHY	2800	11	B	21034	4	Introduction to Statistics	REC	08:00 AM - 08:50 AM	F	CLRE 111	Ehringer,Marissa Aileen	30	Main Campus
1779	IPHY	2800	12	B	21035	4	Introduction to Statistics	REC	09:00 AM - 09:50 AM	F	CLRE 111	Ehringer,Marissa Aileen	30	Main Campus
1780	IPHY	2800	13	B	21036	4	Introduction to Statistics	REC	10:00 AM - 10:50 AM	F	CLRE 111	Ehringer,Marissa Aileen	30	Main Campus
1781	IPHY	2800	20	B	13412	4	Introduction to Statistics	LEC	03:30 PM - 04:45 PM	TTH	HUMN 250	Harsh,John R	90	Main Campus
1782	IPHY	2800	21	B	21037	4	Introduction to Statistics	REC	11:00 AM - 11:50 AM	F	CLRE 111	Harsh,John R	30	Main Campus
1783	IPHY	2800	22	B	21038	4	Introduction to Statistics	REC	12:00 PM - 12:50 PM	F	CLRE 111	Harsh,John R	30	Main Campus
1784	IPHY	2800	23	B	21039	4	Introduction to Statistics	REC	01:00 PM - 01:50 PM	F	CLRE 111	Harsh,John R	20	Main Campus
1785	IPHY	2910	901	B	18102	1-6	Pract/Integrative Physio	PRA	-	TBA		Byrnes,Bill	100	Main Campus
1786	IPHY	2910	902	B	18103	1-6	Pract/Integrative Physio	PRA	-	TBA		Lebourgeois,Monique	100	Main Campus
1787	IPHY	2910	903	B	18427	1-6	Pract/Integrative Physio	PRA	-	TBA		Enoka,Roger M	100	Main Campus
1788	IPHY	2910	904	B	19309	1-6	Pract/Integrative Physio	PRA	-	TBA		Mazzeo,Robert	100	Main Campus
1789	IPHY	2910	905	B	19310	1-6	Pract/Integrative Physio	PRA	-	TBA		Gleeson,Todd T	100	Main Campus
1790	IPHY	2910	906	B	19311	1-6	Pract/Integrative Physio	PRA	-	TBA		Fleshner,Monika Renee	100	Main Campus
1791	IPHY	2910	907	B	19312	1-6	Pract/Integrative Physio	PRA	-	TBA		Vetter,Celine	100	Main Campus
1792	IPHY	2910	908	B	19313	1-6	Pract/Integrative Physio	PRA	-	TBA		Bentley,Francoise Judith	100	Main Campus
1793	IPHY	2910	909	B	19314	1-6	Pract/Integrative Physio	PRA	-	TBA		Sherwood,David	100	Main Campus
1794	IPHY	2910	910	B	19315	1-6	Pract/Integrative Physio	PRA	-	TBA		DeSouza,Christopher A	100	Main Campus
1795	IPHY	2910	911	B	19316	1-6	Pract/Integrative Physio	PRA	-	TBA		Opp,Mark	100	Main Campus
1796	IPHY	2910	912	B	19317	1-6	Pract/Integrative Physio	PRA	-	TBA		Seals,Douglas R	100	Main Campus
1797	IPHY	2910	913	B	19318	1-6	Pract/Integrative Physio	PRA	-	TBA		Kram,Rodger	100	Main Campus
1798	IPHY	2910	914	B	19319	1-6	Pract/Integrative Physio	PRA	-	TBA		Wright,Kenneth P	100	Main Campus
1799	IPHY	2910	915	B	19320	1-6	Pract/Integrative Physio	PRA	-	TBA		Broussard,Josiane	100	Main Campus
1800	IPHY	2910	916	B	19321	1-6	Pract/Integrative Physio	PRA	-	TBA		McQueen,Matthew Bruce	100	Main Campus
1801	IPHY	2910	917	B	19322	1-6	Pract/Integrative Physio	PRA	-	TBA		Link,Christopher D	100	Main Campus
1802	IPHY	2910	918	B	19323	1-6	Pract/Integrative Physio	PRA	-	TBA		Alderete,Tanya	100	Main Campus
1803	IPHY	2910	919	B	19324	1-6	Pract/Integrative Physio	PRA	-	TBA		Heisler,Ruth Elizabeth	100	Main Campus
1804	IPHY	2910	920	B	19325	1-6	Pract/Integrative Physio	PRA	-	TBA		Bennett,Penelope Alexander	100	Main Campus
1805	IPHY	2910	921	B	19326	1-6	Pract/Integrative Physio	PRA	-	TBA		Louie,Donna Funghar	100	Main Campus
1806	IPHY	2910	922	B	19327	1-6	Pract/Integrative Physio	PRA	-	TBA		Tsai,Pei-San	100	Main Campus
2904	PSYC	6911	801	B	16854	1-3	Research Practicum	PRA	-	TBA		Whisman,Mark	50	Main Campus
1807	IPHY	2910	923	B	19328	1-6	Pract/Integrative Physio	PRA	-	TBA		Ehringer,Marissa Aileen	100	Main Campus
1808	IPHY	2910	924	B	19329	1-6	Pract/Integrative Physio	PRA	-	TBA		Foley,Teresa Eileen	100	Main Campus
1809	IPHY	2910	925	B	19330	1-6	Pract/Integrative Physio	PRA	-	TBA		Ahmed,Alaa Abdalla	100	Main Campus
1810	IPHY	2910	926	B	19331	1-6	Pract/Integrative Physio	PRA	-	TBA		Stitzel,Jerry Alan	100	Main Campus
1811	IPHY	2910	927	B	19332	1-6	Pract/Integrative Physio	PRA	-	TBA		Johnson,Thomas E	100	Main Campus
1812	IPHY	2910	928	B	19333	1-6	Pract/Integrative Physio	PRA	-	TBA		Hoeffer,Charles Albert	100	Main Campus
1813	IPHY	2910	929	B	19334	1-6	Pract/Integrative Physio	PRA	-	TBA		Hobbs,Steven Lee	100	Main Campus
1814	IPHY	2910	930	B	19335	1-6	Pract/Integrative Physio	PRA	-	TBA		Saul,Leif J	100	Main Campus
1815	IPHY	2910	931	B	19336	1-6	Pract/Integrative Physio	PRA	-	TBA		Lopez,Kristin Hilma	100	Main Campus
1816	IPHY	2910	932	B	19337	1-6	Pract/Integrative Physio	PRA	-	TBA		Bielinski,Dana Stefani	100	Main Campus
1817	IPHY	2910	933	B	19338	1-6	Pract/Integrative Physio	PRA	-	TBA		Gorski,Jessica Anne	100	Main Campus
1818	IPHY	2910	934	B	19339	1-6	Pract/Integrative Physio	PRA	-	TBA		Mc Carty,Eric Cleveland	100	Main Campus
1819	IPHY	2910	935	B	19340	1-6	Pract/Integrative Physio	PRA	-	TBA		Bustamante,Heidi Margarita	100	Main Campus
1820	IPHY	2910	936	B	19341	1-6	Pract/Integrative Physio	PRA	-	TBA		Lowry,Christopher	100	Main Campus
1821	IPHY	2910	937	B	19342	1-6	Pract/Integrative Physio	PRA	-	TBA		Maldonado,Tammy Adele	100	Main Campus
1822	IPHY	2910	938	B	19343	1-6	Pract/Integrative Physio	PRA	-	TBA		Casagrand,Janet L	100	Main Campus
1823	IPHY	2910	939	B	19681	1-6	Pract/Integrative Physio	PRA	-	TBA		Kebach,Kari K	100	Main Campus
1824	IPHY	2910	940	B	19682	1-6	Pract/Integrative Physio	PRA	-	TBA		Shi,Jia	100	Main Campus
1825	IPHY	2910	941	B	19683	1-6	Pract/Integrative Physio	PRA	-	TBA		Grabowski,Alena Marie	100	Main Campus
1826	IPHY	2910	942	B	19684	1-6	Pract/Integrative Physio	PRA	-	TBA		Stob,Nicole Rebecca	100	Main Campus
1827	IPHY	2910	942	B	19684	1-6	Pract/Integrative Physio	PRA	-	TBA			100	Main Campus
1828	IPHY	2910	943	B	20872	1-6	Pract/Integrative Physio	PRA	-	TBA		LA Rocca,Thomas Joseph	100	Main Campus
1829	IPHY	2910	944	B	20873	1-6	Pract/Integrative Physio	PRA	-			Boyko,Marie Elizabeth	100	Main Campus
1830	IPHY	2910	945	B	20874	1-6	Pract/Integrative Physio	PRA	-	TBA		Bohr,Adam Daniel	100	Main Campus
1831	IPHY	2910	946	B	20875	1-6	Pract/Integrative Physio	PRA	-	TBA		Harsh,John R	100	Main Campus
1832	IPHY	2910	947	B	20910	1-6	Pract/Integrative Physio	PRA	- 12:50 AM	TBA		Bachtell,Ryan Karn	100	Main Campus
1833	IPHY	3010	801	B	14260	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Hobbs,Steven Lee	15	Main Campus
1834	IPHY	3010	802	B	14261	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Casagrand,Janet L	15	Main Campus
1835	IPHY	3010	803	B	14262	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Grabowski,Alena Marie	15	Main Campus
1836	IPHY	3010	804	B	14263	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Byrnes,Bill	15	Main Campus
1837	IPHY	3010	805	B	14264	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Enoka,Roger M	15	Main Campus
1838	IPHY	3010	806	B	14265	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Louie,Donna Funghar	15	Main Campus
1839	IPHY	3010	809	B	19686	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Hoeffer,Charles Albert	15	Main Campus
1840	IPHY	3010	810	B	19687	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Boyko,Marie Elizabeth	15	Main Campus
1841	IPHY	3010	811	B	19688	1-2	Teach/Integrat Physiolog	PRA	-	TBA		DeSouza,Christopher A	15	Main Campus
1842	IPHY	3010	812	B	19694	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Byrnes,Bill	15	Main Campus
1843	IPHY	3010	813	B	19695	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Harsh,John R	15	Main Campus
1844	IPHY	3010	814	B	20221	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Tsai,Pei-San	15	Main Campus
1845	IPHY	3010	815	B	20224	1-2	Teach/Integrat Physiolog	PRA	- 12:50 AM	TBA		Foley,Teresa Eileen	15	Main Campus
1846	IPHY	3010	816	B	20235	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Bustamante,Heidi Margarita	15	Main Campus
1847	IPHY	3010	817	B	20236	1-2	Teach/Integrat Physiolog	PRA	12:00 PM - 12:00 PM	TBA		McQueen,Matthew Bruce	15	Main Campus
1848	IPHY	3010	818	B	20237	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Hobbs,Steven Lee	15	Main Campus
1849	IPHY	3010	819	B	20369	1-2	Teach/Integrat Physiolog	PRA	- 12:50 AM	TBA		Bustamante,Heidi Margarita	15	Main Campus
1850	IPHY	3010	820	B	20370	1-2	Teach/Integrat Physiolog	PRA	- 12:50 AM	TBA		Bustamante,Heidi Margarita	15	Main Campus
1851	IPHY	3010	821	B	20371	1-2	Teach/Integrat Physiolog	PRA	- 12:50 AM	TBA		Saul,Leif J	15	Main Campus
1852	IPHY	3010	822	B	20698	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Gleeson,Todd T	15	Main Campus
1853	IPHY	3010	824	B	20876	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Link,Christopher D	15	Main Campus
1854	IPHY	3010	825	B	20877	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Stob,Nicole Rebecca	15	Main Campus
1855	IPHY	3010	826	B	19685	1-2	Teach/Integrat Physiolog	PRA	-			Bustamante,Heidi Margarita	15	Main Campus
1856	IPHY	3010	827	B	21420	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Stob,Nicole Rebecca	15	Main Campus
1857	IPHY	3010	828	B	22510	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Saul,Leif J	15	Main Campus
1858	IPHY	3010	829	B	22512	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Heisler,Ruth Elizabeth	15	Main Campus
1859	IPHY	3010	830	B	22513	1-2	Teach/Integrat Physiolog	PRA	-	TBA			15	Main Campus
1860	IPHY	3010	831	B	22514	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Bustamante,Heidi Margarita	15	Main Campus
1861	IPHY	3010	832	B	22517	1-2	Teach/Integrat Physiolog	PRA	-	TBA		Lebourgeois,Monique	15	Main Campus
1862	IPHY	3410	1	B	13421	3	Intro Human Anatomy	LEC	11:00 AM - 12:15 PM	TTH	RAMY C250	Saul,Leif J	204	Main Campus
1863	IPHY	3410	2	B	13423	3	Intro Human Anatomy	LEC	02:00 PM - 03:15 PM	TTH	GOLD A2B70	Bustamante,Heidi Margarita	246	Main Campus
1864	IPHY	3415	1	B	21696	2	Human Anatomy Laboratory	MLS	08:00 AM - 09:50 AM	MW	RAMY N268		15	Main Campus
1865	IPHY	3415	1	B	21696	2	Human Anatomy Laboratory	MLS	08:00 AM - 09:50 AM	MW	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1866	IPHY	3415	2	B	13460	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	MW	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1867	IPHY	3415	2	B	13460	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	MW	RAMY N268		15	Main Campus
1868	IPHY	3415	3	B	13461	2	Human Anatomy Laboratory	MLS	-			Hobbs,Steven Lee	15	Main Campus
1869	IPHY	3415	3	B	13461	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	MW	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1870	IPHY	3415	3	B	13461	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	MW	RAMY N276		15	Main Campus
1871	IPHY	3415	4	B	13462	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	MW	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1872	IPHY	3415	4	B	13462	2	Human Anatomy Laboratory	MLS	-				15	Main Campus
1873	IPHY	3415	4	B	13462	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	MW	RAMY N268		15	Main Campus
1874	IPHY	3415	5	B	13463	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	MW	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1875	IPHY	3415	5	B	13463	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	MW	RAMY N276		15	Main Campus
1876	IPHY	3415	6	B	13464	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	MW	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1877	IPHY	3415	6	B	13464	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	MW	RAMY N268		15	Main Campus
1878	IPHY	3415	7	B	13465	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	MW	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1879	IPHY	3415	7	B	13465	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	MW	RAMY N276		15	Main Campus
1880	IPHY	3415	8	B	13466	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	MW	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1881	IPHY	3415	8	B	13466	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	MW	RAMY N268		15	Main Campus
1882	IPHY	3415	9	B	13467	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	MW	RAMY N276	Hobbs,Steven Lee	10	Main Campus
1883	IPHY	3415	10	B	13468	2	Human Anatomy Laboratory	MLS	06:00 PM - 07:50 PM	MW	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1884	IPHY	3415	10	B	13468	2	Human Anatomy Laboratory	MLS	06:00 PM - 07:50 PM	MW	RAMY N268		15	Main Campus
1885	IPHY	3415	11	B	13469	2	Human Anatomy Laboratory	MLS	08:00 AM - 09:50 AM	TTH	RAMY N268		15	Main Campus
1886	IPHY	3415	11	B	13469	2	Human Anatomy Laboratory	MLS	08:00 AM - 09:50 AM	TTH	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1887	IPHY	3415	12	B	13470	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	TTH	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1888	IPHY	3415	12	B	13470	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	TTH	RAMY N268		15	Main Campus
1889	IPHY	3415	13	B	13471	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	TTH	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1890	IPHY	3415	13	B	13471	2	Human Anatomy Laboratory	MLS	10:00 AM - 11:50 AM	TTH	RAMY N276		15	Main Campus
1891	IPHY	3415	14	B	13472	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	TTH	RAMY N268		15	Main Campus
1892	IPHY	3415	14	B	13472	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	TTH	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1893	IPHY	3415	15	B	13473	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	TTH	RAMY N276		15	Main Campus
1894	IPHY	3415	15	B	13473	2	Human Anatomy Laboratory	MLS	12:00 PM - 01:50 PM	TTH	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1895	IPHY	3415	16	B	13474	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	TTH	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1896	IPHY	3415	16	B	13474	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	TTH	RAMY N268		15	Main Campus
1897	IPHY	3415	17	B	13475	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	TTH	RAMY N276		15	Main Campus
1898	IPHY	3415	17	B	13475	2	Human Anatomy Laboratory	MLS	02:00 PM - 03:50 PM	TTH	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1899	IPHY	3415	18	B	13476	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	TTH	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1900	IPHY	3415	18	B	13476	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	TTH	RAMY N268		15	Main Campus
1901	IPHY	3415	19	B	13477	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	TTH	RAMY N276	Hobbs,Steven Lee	15	Main Campus
1902	IPHY	3415	19	B	13477	2	Human Anatomy Laboratory	MLS	04:00 PM - 05:50 PM	TTH	RAMY N276		15	Main Campus
1903	IPHY	3415	20	B	34988	2	Human Anatomy Laboratory	MLS	06:00 PM - 07:50 PM	TTH	RAMY N268	Hobbs,Steven Lee	15	Main Campus
1904	IPHY	3430	1	B	18364	3	Human Physiology	LEC	11:00 AM - 11:50 AM	MWF	ATLS 100	Bustamante,Heidi Margarita	90	Main Campus
1905	IPHY	3435	1	B	13669	2	Physiology Lab	MLS	09:00 AM - 12:50 PM	M	RAMY N176	Casagrand,Janet L	16	Main Campus
1906	IPHY	3435	2	B	13670	2	Physiology Lab	MLS	09:00 AM - 12:50 PM	M	RAMY N168	Casagrand,Janet L	16	Main Campus
1907	IPHY	3435	3	B	13671	2	Physiology Lab	MLS	01:00 PM - 04:50 PM	M	RAMY N176	Casagrand,Janet L	16	Main Campus
1908	IPHY	3435	4	B	13672	2	Physiology Lab	MLS	01:00 PM - 04:50 PM	M	RAMY N168	Casagrand,Janet L	16	Main Campus
1909	IPHY	3435	5	B	13673	2	Physiology Lab	MLS	05:00 PM - 08:50 PM	M	RAMY N176	Casagrand,Janet L	16	Main Campus
1910	IPHY	3435	6	B	18336	2	Physiology Lab	MLS	05:00 PM - 08:50 PM	M	RAMY N168	Casagrand,Janet L	16	Main Campus
1911	IPHY	3435	7	B	18337	2	Physiology Lab	MLS	11:00 AM - 02:50 PM	T	RAMY N176	Casagrand,Janet L	16	Main Campus
1912	IPHY	3435	8	B	19905	2	Physiology Lab	MLS	03:00 PM - 06:50 PM	T	RAMY N176	Casagrand,Janet L	16	Main Campus
1913	IPHY	3435	9	B	20325	2	Physiology Lab	MLS	01:00 PM - 04:50 PM	W	RAMY N176	Casagrand,Janet L	16	Main Campus
1914	IPHY	3435	10	B	20326	2	Physiology Lab	MLS	11:00 AM - 02:50 PM	TH	RAMY N176	Casagrand,Janet L	16	Main Campus
1915	IPHY	3435	11	B	21701	2	Physiology Lab	MLS	03:30 PM - 07:20 PM	TH	RAMY N176	Casagrand,Janet L	16	Main Campus
1916	IPHY	3435	12	B	21700	2	Physiology Lab	MLS	03:30 PM - 07:20 PM	TH	RAMY N168	Casagrand,Janet L	16	Main Campus
1917	IPHY	3440	1	B	21854	3	Clinical Nutrition	LEC	02:00 PM - 02:50 PM	MWF	RAMY N1B23	Stob,Nicole Rebecca	50	Main Campus
1918	IPHY	3470	1	B	13674	3	Human Physiology 1	LEC	12:30 PM - 01:45 PM	TTH	HUMN 1B50	DeSouza,Christopher A	200	Main Campus
1919	IPHY	3480	1	B	13675	3	Human Physiology 2	LEC	09:30 AM - 10:45 AM	TTH	GOLD A2B70	Byrnes,Bill	200	Main Campus
1920	IPHY	3490	1	B	20738	3	Introduction to Epidemiology	LEC	09:00 AM - 09:50 AM	MWF	HUMN 150	McQueen,Matthew Bruce	120	Main Campus
1921	IPHY	3580	1	B	34777	3	Sleep and Health	LEC	03:30 PM - 04:45 PM	TTH	HUMN 1B90	Lebourgeois,Monique	50	Main Campus
1922	IPHY	3700	5	B	34888	3	Sci Wrtg / Integrative Physiol	LEC	12:30 PM - 01:45 PM	TTH	HUMN 1B35	Boyko,Marie Elizabeth	18	Main Campus
1923	IPHY	4010	1	B	21148	3	Seminar Integrative Physiology	SEM	12:00 PM - 12:50 PM	MWF	KTCH 1B87	Hoeffer,Charles Albert	40	Main Campus
1924	IPHY	4010	1	B	21148	3	Seminar Integrative Physiology	SEM	12:00 PM - 12:50 PM	MWF	KTCH 1B87	Bustamante,Heidi Margarita	40	Main Campus
1925	IPHY	4010	2	B	33741	2	Seminar Integrative Physiology	SEM	04:00 PM - 05:50 PM	M	MUEN E064	Tsai,Pei-San	40	Main Campus
1926	IPHY	4010	800	B	21147	1	Seminar Integrative Physiology	SEM	01:00 PM - 01:50 PM	F	HLMS 196	Foley,Teresa Eileen	10	Main Campus
1927	IPHY	4010	800	B	21147	1	Seminar Integrative Physiology	SEM	01:00 PM - 01:50 PM	F	HLMS 196	Heisler,Ruth Elizabeth	10	Main Campus
1928	IPHY	4010	801	B	35093	1	Seminar Integrative Physiology	SEM	10:00 AM - 11:15 AM	M	CLRE 111A	Lebourgeois,Monique	5	Main Campus
1929	IPHY	4060	10	B	13413	4	Cell Physiology	LEC	09:00 AM - 09:50 AM	MWF	MUEN E0046	Link,Christopher D	96	Main Campus
1930	IPHY	4060	11	B	13415	4	Cell Physiology	LAB	09:30 AM - 12:20 PM	T	RAMY N168	Link,Christopher D	16	Main Campus
1931	IPHY	4060	12	B	13416	4	Cell Physiology	LAB	12:30 PM - 03:20 PM	T	RAMY N168	Link,Christopher D	16	Main Campus
1932	IPHY	4060	13	B	13417	4	Cell Physiology	LAB	09:30 AM - 12:20 PM	TH	RAMY N168	Link,Christopher D	16	Main Campus
1933	IPHY	4060	14	B	13418	4	Cell Physiology	LAB	12:30 PM - 03:20 PM	TH	RAMY N168	Link,Christopher D	16	Main Campus
1934	IPHY	4060	15	B	20629	4	Cell Physiology	LAB	10:00 AM - 12:50 PM	W	RAMY N168	Link,Christopher D	16	Main Campus
1935	IPHY	4060	16	B	28998	4	Cell Physiology	LAB	01:00 PM - 03:50 PM	W	RAMY N168	Link,Christopher D	16	Main Campus
1936	IPHY	4440	10	B	13683	4	Endocrinology	LEC	12:30 PM - 01:45 PM	TTH	BESC 180	Tsai,Pei-San	125	Main Campus
1937	IPHY	4440	11	B	13684	4	Endocrinology	REC	09:00 AM - 09:50 AM	W	CLRE 302	Tsai,Pei-San	25	Main Campus
1938	IPHY	4440	12	B	13685	4	Endocrinology	REC	10:00 AM - 10:50 AM	W	CLRE 301	Tsai,Pei-San	25	Main Campus
1939	IPHY	4440	13	B	13686	4	Endocrinology	REC	11:00 AM - 11:50 AM	W	CLRE 301	Tsai,Pei-San	25	Main Campus
1940	IPHY	4440	14	B	13687	4	Endocrinology	REC	12:00 PM - 12:50 PM	W	CLRE 301	Tsai,Pei-San	25	Main Campus
1941	IPHY	4440	15	B	19447	4	Endocrinology	REC	01:00 PM - 01:50 PM	W	MUEN E123	Tsai,Pei-San	25	Main Campus
1942	IPHY	4540	100	B	20279	5	Biomechanics	LEC	03:30 PM - 04:45 PM	TTH	EDUC 220	Grabowski,Alena Marie	60	Main Campus
1943	IPHY	4540	110	B	21706	5	Biomechanics	REC	08:00 AM - 08:50 AM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1944	IPHY	4540	111	B	13690	5	Biomechanics	LAB	09:00 AM - 10:50 AM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1945	IPHY	4540	210	B	20277	5	Biomechanics	REC	11:00 AM - 11:50 AM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1946	IPHY	4540	211	B	20278	5	Biomechanics	LAB	12:00 PM - 01:50 PM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1947	IPHY	4540	310	B	32843	5	Biomechanics	REC	02:00 PM - 02:50 PM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1948	IPHY	4540	311	B	32844	5	Biomechanics	LAB	03:00 PM - 04:50 PM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1949	IPHY	4540	410	B	32845	5	Biomechanics	REC	05:00 PM - 05:50 PM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1950	IPHY	4540	410	B	32845	5	Biomechanics	REC	05:00 PM - 05:50 PM	M	CLRE 111	Bruening,Garrick	15	Main Campus
1951	IPHY	4540	411	B	32846	5	Biomechanics	LAB	06:00 PM - 07:50 PM	M	CLRE 111	Grabowski,Alena Marie	15	Main Campus
1952	IPHY	4600	1	B	19534	3	Immunology	LEC	02:00 PM - 02:50 PM	MWF	HLMS 252	Foley,Teresa Eileen	137	Main Campus
1953	IPHY	4650	100	B	14605	5	Exercise Physiology	LEC	02:00 PM - 03:15 PM	TTH	EKLC E1B20	Byrnes,Bill	105	Main Campus
1954	IPHY	4650	110	B	14606	5	Exercise Physiology	REC	08:00 AM - 08:50 AM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1955	IPHY	4650	111	B	14607	5	Exercise Physiology	LAB	09:00 AM - 10:50 AM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1956	IPHY	4650	210	B	21265	5	Exercise Physiology	REC	11:00 AM - 11:50 AM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1957	IPHY	4650	211	B	14608	5	Exercise Physiology	LAB	12:00 PM - 01:50 PM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1958	IPHY	4650	310	B	34969	5	Exercise Physiology	REC	02:00 PM - 02:50 PM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1959	IPHY	4650	311	B	14609	5	Exercise Physiology	LAB	03:00 PM - 04:50 PM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1960	IPHY	4650	410	B	21707	5	Exercise Physiology	REC	05:00 PM - 05:50 PM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1961	IPHY	4650	411	B	21708	5	Exercise Physiology	LAB	06:00 PM - 07:50 PM	M	RAMY C209	Byrnes,Bill	15	Main Campus
1962	IPHY	4650	510	B	21709	5	Exercise Physiology	REC	08:00 AM - 08:50 AM	W	RAMY C209	Byrnes,Bill	15	Main Campus
1963	IPHY	4650	511	B	21710	5	Exercise Physiology	LAB	09:00 AM - 10:50 AM	W	RAMY C209	Byrnes,Bill	15	Main Campus
1964	IPHY	4650	610	B	21269	5	Exercise Physiology	REC	11:00 AM - 11:50 AM	W	RAMY C209	Byrnes,Bill	15	Main Campus
1965	IPHY	4650	611	B	21270	5	Exercise Physiology	LAB	12:00 PM - 01:50 PM	W	RAMY C209	Byrnes,Bill	15	Main Campus
1966	IPHY	4650	710	B	21271	5	Exercise Physiology	REC	02:00 PM - 02:50 PM	W	RAMY C209	Byrnes,Bill	15	Main Campus
1967	IPHY	4650	711	B	21272	5	Exercise Physiology	LAB	03:00 PM - 04:50 PM	W	RAMY C209	Byrnes,Bill	15	Main Campus
1968	IPHY	4720	10	B	13882	4	Neurophysiology	LEC	10:00 AM - 10:50 AM	MWF	ATLS 100	Enoka,Roger M	90	Main Campus
1969	IPHY	4720	11	B	13883	4	Neurophysiology	LAB	08:00 AM - 09:50 AM	T	CLRE 111	Enoka,Roger M	15	Main Campus
1970	IPHY	4720	12	B	13884	4	Neurophysiology	LAB	10:00 AM - 11:50 AM	T	CLRE 111	Enoka,Roger M	15	Main Campus
1971	IPHY	4720	13	B	13885	4	Neurophysiology	LAB	12:00 PM - 01:50 PM	T	CLRE 111	Enoka,Roger M	15	Main Campus
1972	IPHY	4720	14	B	13887	4	Neurophysiology	LAB	02:00 PM - 03:50 PM	T	CLRE 111	Enoka,Roger M	15	Main Campus
1973	IPHY	4720	15	B	13890	4	Neurophysiology	LAB	04:00 PM - 05:50 PM	T	CLRE 111	Enoka,Roger M	15	Main Campus
1974	IPHY	5100	10	B	13901	2	Coll/Integrative Physiol	LEC	12:00 PM - 12:50 PM	M	HUMN 150	Opp,Mark	35	Main Campus
1975	IPHY	5100	11	B	19497	2	Coll/Integrative Physiol	REC	03:00 PM - 03:50 PM	M	DUAN G2B60	Opp,Mark	35	Main Campus
1976	IPHY	5720	10	B	22208	4	Neurophysiology	LEC	10:00 AM - 10:50 AM	MWF	ATLS 100	Enoka,Roger M	90	Main Campus
1977	IPHY	5720	11	B	34890	4	Neurophysiology	REC	02:00 PM - 03:15 PM	T	CLRE 111A	Enoka,Roger M	20	Main Campus
1978	IPHY	5900	1	B	34889	3	Data Literacy in Biomed Rsrch	LEC	04:00 PM - 06:30 PM	TH	CLRE 111A	Vetter,Celine	20	Main Campus
1979	IPHY	6010	1	B	22207	3	Seminar	SEM	03:00 PM - 05:30 PM	T	See Academc Dept		20	Main Campus
1980	IPHY	6010	801	B	35094	1-3	Seminar	SEM	10:00 AM - 11:15 AM	M	CLRE 111A	Lebourgeois,Monique	5	Main Campus
1981	IPHY	6680	1	B	34366	3	Matlab for Physiology	SEM	09:00 AM - 11:30 AM	W	See Academc Dept	Ahmed,Alaa Abdalla	20	Main Campus
1982	IPHY	6830	1	B	34537	3	Prof Skills Rsrch Scient	LEC	02:00 PM - 04:30 PM	W	See Academc Dept	Link,Christopher D	20	Main Campus
1983	IPHY	6830	1	B	34537	3	Prof Skills Rsrch Scient	LEC	02:00 PM - 04:30 PM	W	See Academc Dept	Lebourgeois,Monique	20	Main Campus
1984	IAFS	1000	100	B	13435	4	Global Issues & Intl Aff	LEC	11:00 AM - 12:15 PM	TTH	MATH 100	Bearce,David	400	Main Campus
1985	IAFS	3000	1	B	13984	3	Sp Tpc: International Affairs	SEM	03:30 PM - 04:45 PM	TTH	VAC 1B90	Wyrod,Robert James	36	Main Campus
1986	IAFS	3000	2	B	19751	3	Sp Tpc: International Affairs	SEM	02:00 PM - 02:50 PM	MWF	VAC 1B90	Young,Gregory Denton	36	Main Campus
1987	IAFS	3621	1	B	34305	3	Russian Rebels Past/Present	LEC	03:30 PM - 04:45 PM	TTH	CLUB 4	Porter,Jillian E.	15	Main Campus
1988	IAFS	3670	1	B	34526	3	Cities of the Global South	LEC	09:30 AM - 10:45 AM	TTH	HLMS 141	Truelove,Yaffa Elane	20	Main Campus
1989	IAFS	4500	1	B	14024	3	The Post-Cold War World	SEM	02:00 PM - 03:15 PM	TTH	LIBR M498	Snyder,Douglas Joseph	16	Main Campus
1990	IAFS	4500	2	B	14025	3	The Post-Cold War World	SEM	03:30 PM - 04:45 PM	TTH	CLUB 6	Zhang,Shuang	16	Main Campus
1991	IAFS	4500	3	B	21989	3	The Post-Cold War World	SEM	12:30 PM - 01:45 PM	TTH	CLUB 6	Truelove,Yaffa Elane	16	Main Campus
1992	IAFS	4500	4	B	22385	3	The Post-Cold War World	SEM	01:00 PM - 01:50 PM	MWF	CLRE 211	Chester,Lucy P	16	Main Campus
1993	IAFS	4500	550R	B	20324	3	The Post-Cold War World	SEM	06:30 PM - 09:00 PM	M	Offered through CU in	Howard,Adam Mark	25	Main Campus
1994	IAFS	4800	801	B	14254	3	Honors/International Affairs	SEM	11:00 AM - 12:15 PM	TTH	CLUB 6	Snyder,Douglas Joseph	15	Main Campus
1995	ITAL	1010	1	B	13444	4	Beginning Italian 1	LEC	10:00 AM - 10:50 AM	M-TH	HUMN 145		19	Main Campus
1996	ITAL	1010	2	B	13452	4	Beginning Italian 1	LEC	12:00 PM - 12:50 PM	MTW	HLMS 145		16	Main Campus
1997	ITAL	1010	3	B	13453	4	Beginning Italian 1	LEC	01:00 PM - 01:50 PM	M-TH	HUMN 1B70		19	Main Campus
1998	ITAL	1010	4	B	13454	4	Beginning Italian 1	LEC	11:00 AM - 11:50 AM	M-TH			19	Main Campus
1999	ITAL	1010	5	B	33129	4	Beginning Italian 1	LEC	09:00 AM - 09:50 AM	M-TH	CLRE 301		19	Main Campus
2000	ITAL	1020	1	B	21403	4	Beginning Italian 2	LEC	10:00 AM - 10:50 AM	M-TH	CHEM 131		19	Main Campus
2001	ITAL	1020	2	B	22731	4	Beginning Italian 2	LEC	01:00 PM - 01:50 PM	MTW	See Academc Dept		16	Main Campus
2002	ITAL	1050	1	B	21401	4	Fast-Track Italian	LEC	11:00 AM - 11:50 AM	M-TH	LIBR M498		15	Main Campus
2003	ITAL	1300	1	B	33259	3	Humanities Italian Style	LEC	02:00 PM - 03:15 PM	TTH	CLRE 207	Magnanini,Suzanne M.	75	Main Campus
2004	ITAL	2110	1	B	13697	4	Int Ital Rdg/Gmmr/Comp I	LEC	02:00 PM - 02:50 PM	M-TH	MUEN D439	Craven,Priscilla Call	19	Main Campus
2005	ITAL	2110	2	B	13698	4	Int Ital Rdg/Gmmr/Comp I	LEC	01:00 PM - 01:50 PM	M-TH	HUMN 270	Craven,Priscilla Call	19	Main Campus
2006	ITAL	2120	1	B	21560	4	Int Ital Rdg/Gmmr/Comp 2	LEC	12:00 PM - 12:50 PM	M-TH	HUMN 270		19	Main Campus
2007	ITAL	2130	1	B	28904	3	Intro to Literary Analys	LEC	03:00 PM - 04:15 PM	MW	LIBR M498	Craven,Priscilla Call	15	Main Campus
2008	ITAL	3015	1	B	19579	3	Advanced Composition 1	LEC	04:30 PM - 05:45 PM	MW	HUMN 186	Seno,Cosetta	19	Main Campus
2009	ITAL	3140	1	B	21582	3	Literary/Artistic Cultures 3	LEC	12:00 PM - 12:50 PM	MWF	LIBR M498	Seno,Cosetta	19	Main Campus
2010	ITAL	4150	1	B	22149	3	The Decameron: Sex & Death	LEC	11:00 AM - 12:15 PM	TTH	HLMS 263	Magnanini,Suzanne M.	30	Main Campus
2011	ITAL	4300	1	B	28905	3	Multiculturalism in Italy	SEM	03:00 PM - 04:15 PM	MW	HUMN 145	Ardizzoni,Michela	15	Main Campus
2012	ITAL	4980	801	B	19819	3	Italian Senior Honors Thesis	SEM	-				10	Main Campus
2013	ITAL	4980	802	B	19818	3	Italian Senior Honors Thesis	SEM	-				10	Main Campus
2014	ITAL	4980	803	B	20153	3	Italian Senior Honors Thesis	SEM	-				10	Main Campus
2015	ITAL	4990	801	B	19514	3	Senior Seminar	SEM	-				10	Main Campus
2016	ITAL	4990	802	B	19821	3	Senior Seminar	SEM	-				10	Main Campus
2017	ITAL	4990	803	B	20154	3	Senior Seminar	SEM	-				10	Main Campus
2018	JPNS	1010	1	B	20975	5	Beginning Japanese 1	LEC	08:00 AM - 08:50 AM	M-F	HLMS 191	Takahata-Awad,Kayoko	19	Main Campus
2019	JPNS	1010	2	B	14160	5	Beginning Japanese 1	LEC	09:00 AM - 09:50 AM	M-F	HLMS 193	Takahata-Awad,Kayoko	19	Main Campus
2020	JPNS	1010	3	B	14161	5	Beginning Japanese 1	LEC	10:00 AM - 10:50 AM	M-F	HLMS 193	Kawakami,Kiyomi	19	Main Campus
2021	JPNS	1010	4	B	14162	5	Beginning Japanese 1	LEC	11:00 AM - 11:50 AM	M-F	HLMS 193	Kawakami,Kiyomi	19	Main Campus
2022	JPNS	1010	5	B	14163	5	Beginning Japanese 1	LEC	11:00 AM - 11:50 AM	M-F	DUAN G1B25	Husby,Megan Lynn	19	Main Campus
2023	JPNS	1010	7	B	14165	5	Beginning Japanese 1	LEC	01:00 PM - 01:50 PM	M-F	HLMS 193	Kawakami,Kiyomi	19	Main Campus
2024	JPNS	1010	9	B	21456	5	Beginning Japanese 1	LEC	12:00 PM - 12:50 PM	M-F	CLRE 212	Husby,Megan Lynn	19	Main Campus
2025	JPNS	1010	10	B	21476	5	Beginning Japanese 1	LEC	02:00 PM - 02:50 PM	M-F	HLMS 193	McConnell,Miriam Love	19	Main Campus
2026	JPNS	1012	10	B	33656	4	Intro to Japanese Civilization	LEC	01:00 PM - 01:50 PM	MWF	HUMN 250	Lee,I-Zhuen	97	Main Campus
2027	JPNS	1012	11	B	33657	4	Intro to Japanese Civilization	REC	01:00 PM - 01:50 PM	T	MCOL E158		24	Main Campus
2028	JPNS	1012	12	B	33658	4	Intro to Japanese Civilization	REC	12:00 PM - 12:50 PM	T	MCOL E158		24	Main Campus
2029	JPNS	1012	13	B	33659	4	Intro to Japanese Civilization	REC	09:00 AM - 09:50 AM	TH	KCEN N101		24	Main Campus
2030	JPNS	1012	14	B	33660	4	Intro to Japanese Civilization	REC	10:00 AM - 10:50 AM	W	RAMY N1B31		25	Main Campus
2031	JPNS	1051	1	B	22138	3	Mstpcs Japnese Lit/Trans	LEC	01:00 PM - 01:50 PM	MWF	MCOL E186		30	Main Campus
2032	JPNS	2110	2	B	14166	5	Intermediate Japanese 1	LEC	10:00 AM - 10:50 AM	M-F	HLMS 251	Schibli,Hisako	19	Main Campus
2033	JPNS	2110	3	B	14167	5	Intermediate Japanese 1	LEC	11:00 AM - 11:50 AM	M-F	CHEM 133	Schibli,Hisako	19	Main Campus
2034	JPNS	2110	4	B	18445	5	Intermediate Japanese 1	LEC	12:00 PM - 12:50 PM	M-F	CHEM 145	Schibli,Hisako	19	Main Campus
2035	JPNS	2441	1	B	21041	3	Japanese Culture: Film & Anime	LEC	11:00 AM - 12:15 PM	TTH	CLRE 104	Shouse,Ji Young	30	Main Campus
2036	JPNS	2811	1	B	33626	3	Word and Image in Old Japan	LEC	05:00 PM - 06:15 PM	TTH	HUMN 190	Kimbrough,Randle Keller	30	Main Campus
2037	JPNS	3110	1	B	14168	5	Advanced Japanese 1	LEC	12:00 PM - 12:50 PM	M-F	HUMN 125	Matsunaga,Yumiko	19	Main Campus
2038	JPNS	3110	2	B	14169	5	Advanced Japanese 1	LEC	02:00 PM - 02:50 PM	M-F	HUMN 190	Matsunaga,Yumiko	19	Main Campus
2039	JPNS	3200	1	B	21611	3	Adv Wrtg Chinese & Japanese	LEC	11:00 AM - 11:50 AM	MWF	MCOL E186	Alexander,Katherine	10	Main Campus
2040	JPNS	3200	2	B	21612	3	Adv Wrtg Chinese & Japanese	LEC	02:00 PM - 02:50 PM	MWF	HUMN 245	Alexander,Katherine	10	Main Campus
2041	JPNS	3311	1	B	33627	3	Japanese Colonial Literature	LEC	03:00 PM - 04:15 PM	MW	DUAN G2B41	Kleeman,Faye Yuan	30	Main Campus
2042	JPNS	3811	1	B	33628	3	Classical Japanese Literature	LEC	10:00 AM - 10:50 AM	MWF	CLRE 104		30	Main Campus
2043	JPNS	3851	1	B	33629	3	Japanese Popular Culture	LEC	04:30 PM - 05:45 PM	MW	DUAN G2B41	Kleeman,Faye Yuan	30	Main Campus
2044	JPNS	3881	1	B	22140	3	Environment in Japan Lit/Cult	LEC	03:00 PM - 04:15 PM	MW	CLRE 104	Brown,Janice C	30	Main Campus
2045	JPNS	4110	1	B	19459	3	Adv Rdgs in Modern Japanese 1	LEC	01:00 PM - 01:50 PM	MWF	HUMN 245	Hacke,Mariko	20	Main Campus
2046	JPNS	5310	1	B	15211	3	Adv Classical Japanese 1	LEC	02:00 PM - 03:15 PM	TTH	CLRE 209	Kimbrough,Randle Keller	10	Main Campus
2047	JPNS	5620	1	B	22128	3	Early Modern Japanese Lit/Cult	SEM	03:00 PM - 05:30 PM	W	HUMN 245	Lee,I-Zhuen	15	Main Campus
2048	JPNS	5820	1	B	33625	3	Contemporary Literature	SEM	03:30 PM - 06:00 PM	T	HUMN 245	Brown,Janice C	10	Main Campus
2049	JPNS	5980	1	B	21555	1	Japanese Language Pedagogy	LEC	10:00 AM - 10:50 AM	F	HUMN 335	Matsunaga,Yumiko	15	Main Campus
2050	JWST	1234	1	B	21970	3	Mysticism & Jewish Amer Lit	LEC	02:00 PM - 03:15 PM	TTH	CLUB 6	Goodman,Nan	20	Main Campus
2051	JWST	1818	1	B	21569	3	Jewish History to 1492	LEC	02:00 PM - 03:15 PM	TTH	HUMN 1B90	Shneer,David	52	Main Campus
2052	JWST	1900	1	B	33782	3	HebrewBible/Old Testament	LEC	12:30 PM - 01:45 PM	TTH	CLRE 302	Boyd,Samuel L	10	Main Campus
2053	JWST	2350	1	B	22734	3	Introduction to Jewish Culture	LEC	05:00 PM - 06:15 PM	TTH	RAMY N1B23	Wartell,Rebecca	60	Main Campus
2054	JWST	2502	10	B	21534	3	Representing the Holocaust	LEC	10:00 AM - 10:50 AM	MW	HALE 230	Weber,Beverly	44	Main Campus
2055	JWST	2551	1	B	22303	3	Modern Jewish Literature	LEC	02:00 PM - 03:15 PM	TTH	ECON 16	Wartell,Rebecca	20	Main Campus
2056	JWST	2600	1	B	33773	3	Judaism/Christian/Islam	LEC	09:30 AM - 10:45 AM	TTH	HUMN 1B90	Boyd,Samuel L	10	Main Campus
2057	JWST	3100	1	B	19233	3	Judaism	LEC	11:00 AM - 12:15 PM	TTH	HUMN 250	Shneer,David	30	Main Campus
2058	JWST	3820	1	B	34886	3	Topics in Jewish Studies	LEC	11:00 AM - 11:50 AM	MWF	KTCH 1B71		30	Main Campus
2059	JWST	4122	1	B	34324	3	Music in Jewish Culture	LEC	12:30 PM - 01:45 PM	TTH	MCKY 213	Malin,Jonathan	30	Main Campus
2060	JWST	4454	1	B	34884	3	Jewish Intellectual History	LEC	09:30 AM - 10:45 AM	TTH	HLMS 196	Wartell,Rebecca	20	Main Campus
2061	JWST	4800	1	B	34106	3	Ethics, Medicine and Holocaust	SEM	05:00 PM - 07:30 PM	M	HUMN 1B90	Goldberg,Daniel	25	Main Campus
2062	JWST	4800	001B	B	34111	3	Ethics, Medicine and Holocaust	SEM	-		Distance Education	Goldberg,Daniel	25	Main Campus
2063	JWST	5800	1	B	34108	3	Ethics, Medicine and Holocaust	SEM	05:00 PM - 07:30 PM	M	HUMN 1B90	Goldberg,Daniel	25	Main Campus
2064	JWST	5800	001B	B	34113	3	Ethics, Medicine and Holocaust	SEM	-		Distance Education	Goldberg,Daniel	25	Main Campus
2065	KREN	1010	2	B	14228	5	Beginning Korean 1	LEC	09:00 AM - 09:50 AM	M-F	HALE 236	Kim,Sangbok	19	Main Campus
2066	KREN	1010	5	B	34405	5	Beginning Korean 1	LEC	09:00 AM - 09:50 AM	M-F	CHEM 131	Suh,Heeseung	19	Main Campus
2067	KREN	1010	6	B	34406	5	Beginning Korean 1	LEC	03:00 PM - 03:50 PM	M-F	HLMS 152	Suh,Heeseung	0	Main Campus
2068	KREN	2110	1	B	14229	5	Intermediate Korean 1	LEC	10:00 AM - 10:50 AM	M-F	HALE 236	Kim,Sangbok	19	Main Campus
2069	KREN	2110	2	B	21554	5	Intermediate Korean 1	LEC	12:00 PM - 12:50 PM	M-F	ECON 16	Suh,Heeseung	19	Main Campus
2070	KREN	3110	1	B	14230	5	Advanced Korean 1	LEC	11:00 AM - 11:50 AM	M-F	HALE 236	Kim,Sangbok	19	Main Campus
2071	LGBT	2000	1	B	18190	3	Intro to LGBT Studies	LEC	10:00 AM - 10:50 AM	MWF	HLMS 241	Bowen,Scarlet	30	Main Campus
2072	LGBT	3796	1	B	20526	3	Queer Theory	LEC	11:00 AM - 12:15 PM	TTH	CLUB 4	Soares,Kristie	34	Main Campus
2073	LIBB	2800	280R	B	35323	3	Horror Film: Am. Culture	LEC	03:00 PM - 03:50 PM	MWF	LIBY 103	Robinson,Janet Schwartzberg	19	Main Campus
2074	LING	1000	30	B	34872	3	Language in U.S. Society	LEC	02:00 PM - 02:50 PM	MW	CHEM 140		200	Main Campus
2075	LING	1500	1	B	34870	3	Understanding Grammar	LEC	11:00 AM - 12:15 PM	TTH	ECON 205	Hulden,Mans Elis	30	Main Campus
2076	LING	1500	2	B	34871	3	Understanding Grammar	LEC	03:30 PM - 04:45 PM	TTH	HLMS 247	Hulden,Mans Elis	30	Main Campus
2077	LING	1500	3	B	35236	3	Understanding Grammar	LEC	09:00 AM - 09:50 AM	MWF	CLUB 4	Calder,Jeremy	50	Main Campus
2078	LING	1900	800	B	13951	1	Literacy Practicum	PRA	-		Meets at Off-Campus	Paing,Chu May	40	Main Campus
2079	LING	3100	10	B	14732	3	Language Sound Structures	LEC	09:00 AM - 09:50 AM	MW	HUMN 1B80		66	Main Campus
2080	LING	3100	13	B	33260	3	Language Sound Structures	REC	03:00 PM - 03:50 PM	F	HUMN 1B45		22	Main Campus
2081	LING	3430	2	B	22728	3	Semantics	LEC	09:30 AM - 10:45 AM	TTH			30	Main Campus
2082	LING	3800	2	B	34867	3	Sp Tpcs in Linguistics	LEC	11:00 AM - 12:15 PM	TTH		Hall,Kira	20	Main Campus
2083	LING	3800	OO1	B	34866	3	Sp Tpcs in Linguistics	LEC	09:30 AM - 10:45 AM	TTH	VAC 1B90	Fox,Barbara	30	Main Campus
2084	LING	4420	1	B	14742	3	Morphology and Syntax	LEC	11:00 AM - 11:50 AM	MWF	KTCH 1B87		30	Main Campus
2085	LING	4560	1	B	22706	3	Language Development	LEC	11:00 AM - 11:50 AM	MWF	SLHS 230	Boerger,Karin Margaret	6	Main Campus
2086	LING	4560	2	B	36528	3	Language Development	LEC	10:00 AM - 10:50 AM	MWF	SLHS 230		6	Main Campus
2087	LING	5200	2	B	21997	3	Computationl Corpus Ling	LEC	09:30 AM - 10:45 AM	TTH	HUMN 1B45		22	Main Campus
2088	LING	5420	2	B	21426	3	Morphology and Syntax	LEC	12:30 PM - 01:45 PM	TTH	RAMY N1B31	Fox,Barbara	25	Main Campus
2089	LING	5570	1	B	21417	3	Intro Diachronic Linguistics	LEC	12:30 PM - 01:45 PM	TTH			25	Main Campus
2090	LING	5620	2	B	22729	3	Oral Language & Communication	LEC	09:30 AM - 10:45 AM	TTH	DUAN G1B27		20	Main Campus
2091	LING	5630	1	B	15695	3	TESOL/SLA Principles/Practices	LEC	03:30 PM - 04:45 PM	TTH	HLMS 191		25	Main Campus
2092	LING	5832	1	B	21065	3	Natural Language Processing	LEC	02:00 PM - 03:15 PM	TTH	HUMN 1B80	Martin,James H	14	Main Campus
2093	LING	5832	001B	B	21835	3	Natural Language Processing	LEC	-	TBA	Distance Education	Martin,James H	30	Main Campus
2094	LING	6320	1	B	34868	3	Linguistic Anthropology	SEM	02:00 PM - 04:30 PM	TH	HLMS 285		18	Main Campus
2095	LING	7415	1	B	20640	2	Cog Sci Rsrch Prac 1	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
2096	LING	7420	1	B	34869	3	Syntactic Theory	LEC	11:00 AM - 12:15 PM	TTH		Michaelis-Cummings,Laura A	25	Main Campus
2097	LING	7425	1	B	14407	2	Cog Sci Rsrch Prac 2	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
2098	LING	7775	1	B	14421	1	Tpcs-Cognitive Science	SEM	12:00 PM - 02:00 PM	F	MUEN D430	Sumner,Tamara Ruth	15	Main Campus
2099	LING	7800	2	B	34873	3	Open Topics/Linguistics	SEM	03:30 PM - 04:45 PM	TTH	ECON 16	Narasimhan,Bhuvaneswari	20	Main Campus
2100	LING	7800	3	B	22275	3	Open Topics/Linguistics	SEM	02:00 PM - 03:15 PM	TTH	HLMS 191	Palmer,Martha	20	Main Campus
2101	LING	7800	4	B	22276	3	Open Topics/Linguistics	SEM	11:00 AM - 12:15 PM	TTH	HLMS 220	Palmer,Martha	15	Main Campus
2102	MATH	1012	1	B	13445	3	Quant Reason/Math Skills	LEC	08:00 AM - 08:50 AM	MWF	MATH 170		32	Main Campus
2103	MATH	1012	2	B	13446	3	Quant Reason/Math Skills	LEC	09:00 AM - 09:50 AM	MWF	MATH 170		32	Main Campus
2104	MATH	1012	3	B	13447	3	Quant Reason/Math Skills	LEC	10:00 AM - 10:50 AM	MWF	MATH 170		32	Main Campus
2105	MATH	1012	5	B	13449	3	Quant Reason/Math Skills	LEC	12:00 PM - 12:50 PM	MWF	MATH 170		32	Main Campus
2106	MATH	1012	6	B	13450	3	Quant Reason/Math Skills	LEC	01:00 PM - 01:50 PM	MWF	MATH 170		32	Main Campus
2107	MATH	1012	7	B	13451	3	Quant Reason/Math Skills	LEC	02:00 PM - 02:50 PM	MWF	KCEN N101		32	Main Campus
2108	MATH	1012	9	B	13457	3	Quant Reason/Math Skills	LEC	04:00 PM - 04:50 PM	MWF	KCEN N100		32	Main Campus
2109	MATH	1012	10	B	13458	3	Quant Reason/Math Skills	LEC	08:00 AM - 09:15 AM	TTH	FLMG 104		32	Main Campus
2110	MATH	1012	11	B	13459	3	Quant Reason/Math Skills	LEC	09:30 AM - 10:45 AM	TTH	FLMG 157		32	Main Campus
2111	MATH	1012	12	B	20397	3	Quant Reason/Math Skills	LEC	12:30 PM - 01:45 PM	TTH	ECCR 151		32	Main Campus
2112	MATH	1012	13	B	21917	3	Quant Reason/Math Skills	LEC	02:00 PM - 03:15 PM	TTH			32	Main Campus
2113	MATH	1110	1	B	14794	3	Mathematics for Elem Eductrs 1	LEC	12:00 PM - 12:50 PM	MWF	ECCR 131		20	Main Campus
2114	MATH	1110	2	B	14795	3	Mathematics for Elem Eductrs 1	LEC	01:00 PM - 01:50 PM	MWF	ECCR 131		20	Main Campus
2115	MATH	1112	1	B	20943	4	Math Analysis in Business	LEC	08:00 AM - 08:50 AM	MTWF	ATLS 1B31		28	Main Campus
2116	MATH	1112	2	B	20944	4	Math Analysis in Business	LEC	09:00 AM - 09:50 AM	MTWF	KCEN N100		28	Main Campus
2117	MATH	1112	3	B	20945	4	Math Analysis in Business	LEC	09:00 AM - 09:50 AM	MTWF	KCEN N101		28	Main Campus
2118	MATH	1112	4	B	20946	4	Math Analysis in Business	LEC	10:00 AM - 10:50 AM	MTWF	KCEN N101		28	Main Campus
2119	MATH	1112	5	B	20947	4	Math Analysis in Business	LEC	11:00 AM - 11:50 AM	MTWF	ECCR 1B55		28	Main Campus
2120	MATH	1112	6	B	20948	4	Math Analysis in Business	LEC	11:00 AM - 11:50 AM	MTWF	ECCR 108		28	Main Campus
2121	MATH	1112	7	B	20949	4	Math Analysis in Business	LEC	12:00 PM - 12:50 PM	MTWF	HLMS 251		28	Main Campus
2122	MATH	1112	8	B	20950	4	Math Analysis in Business	LEC	01:00 PM - 01:50 PM	MTWF	ECCR 116		27	Main Campus
2123	MATH	1112	9	B	21751	4	Math Analysis in Business	LEC	02:00 PM - 02:50 PM	MTWF	ECCR 139		28	Main Campus
2124	MATH	1112	10	B	21322	4	Math Analysis in Business	LEC	03:00 PM - 03:50 PM	MTWF	MUEN D439		27	Main Campus
2125	MATH	1112	11	B	21402	4	Math Analysis in Business	LEC	03:00 PM - 03:50 PM	MTWF	MUEN D144		28	Main Campus
2126	MATH	1112	12	B	22826	4	Math Analysis in Business	LEC	04:00 PM - 04:50 PM	MTWF	MUEN E118		28	Main Campus
2127	MATH	1112	610R	B	20635	4	Math Analysis in Business	LEC	08:00 AM - 08:50 AM	MTWF	CHEY 140		30	Main Campus
2128	MATH	1112	611R	B	20636	4	Math Analysis in Business	LEC	08:00 AM - 08:50 AM	MTWF	CHEY 240		30	Main Campus
2129	MATH	1112	612R	B	20970	4	Math Analysis in Business	LEC	09:00 AM - 09:50 AM	MTWF	CHEY 140		30	Main Campus
2130	MATH	1112	613R	B	20971	4	Math Analysis in Business	LEC	09:00 AM - 09:50 AM	MTWF	CHEY 240		30	Main Campus
2131	MATH	1112	614R	B	20972	4	Math Analysis in Business	LEC	10:00 AM - 10:50 AM	MTWF	CHEY 140	Grulke,Elizabeth Lee	30	Main Campus
2132	MATH	1112	615R	B	20973	4	Math Analysis in Business	LEC	10:00 AM - 10:50 AM	MTWF	CHEY 240		30	Main Campus
2133	MATH	1112	616R	B	20974	4	Math Analysis in Business	LEC	11:00 AM - 11:50 AM	MTWF	CHEY 140		30	Main Campus
2134	MATH	1112	617R	B	21429	4	Math Analysis in Business	LEC	12:00 PM - 12:50 PM	MTWF	CHEY 140		30	Main Campus
2135	MATH	1112	618R	B	21432	4	Math Analysis in Business	LEC	01:00 PM - 01:50 PM	MTWF	CHEY 140	Grulke,Elizabeth Lee	30	Main Campus
2136	MATH	1112	619R	B	21975	4	Math Analysis in Business	LEC	02:00 PM - 02:50 PM	MTWF	CHEY 140		30	Main Campus
2137	MATH	1112	620R	B	22462	4	Math Analysis in Business	LEC	03:00 PM - 03:50 PM	MTWF	CHEY 140		30	Main Campus
2138	MATH	1112	621R	B	22463	4	Math Analysis in Business	LEC	04:00 PM - 04:50 PM	MTWF	CHEY 140		30	Main Campus
2139	MATH	1112	622R	B	22464	4	Math Analysis in Business	LEC	04:00 PM - 04:50 PM	MTWF	CHEY 252A		30	Main Campus
2140	MATH	1150	1	B	14797	4	Precalculus Mathematics	LEC	08:00 AM - 08:50 AM	MTWF	ECCR 1B51	Manley,Kevin William	35	Main Campus
2141	MATH	1150	3	B	14799	4	Precalculus Mathematics	LEC	09:00 AM - 09:50 AM	MTWF	MUEN E123		34	Main Campus
2142	MATH	1150	4	B	14800	4	Precalculus Mathematics	LEC	09:00 AM - 09:50 AM	MTWF	ECCR 1B55		35	Main Campus
2143	MATH	1150	7	B	14804	4	Precalculus Mathematics	LEC	11:00 AM - 11:50 AM	MTWF	STAD 112	Manley,Kevin William	35	Main Campus
2144	MATH	1150	11	B	14806	4	Precalculus Mathematics	LEC	-				35	Main Campus
2145	MATH	1150	215R	B	22651	4	Precalculus Mathematics	LEC	03:30 PM - 04:20 PM	M-TH	KITW N132	Newberry,Patrick Thaxton	75	Main Campus
2146	MATH	1150	310R	B	19474	4	Precalculus Mathematics	LEC	11:00 AM - 11:50 AM	M-F	FLMG 265		24	Main Campus
2147	MATH	1150	311R	B	22842	4	Precalculus Mathematics	LEC	10:00 AM - 10:50 AM	M-F	FLMG 150		0	Main Campus
2148	MATH	1151	1	B	21374	1	Precalculus Supplemental Lab	MLS	09:00 AM - 10:50 AM	TH	MATH 170	Stalvey,Harrison	40	Main Campus
2149	MATH	1151	2	B	21375	1	Precalculus Supplemental Lab	MLS	11:00 AM - 12:50 PM	TH	MATH 170		40	Main Campus
2150	MATH	1151	3	B	21376	1	Precalculus Supplemental Lab	MLS	01:00 PM - 02:50 PM	TH	MATH 170		40	Main Campus
2151	MATH	1151	4	B	21377	1	Precalculus Supplemental Lab	MLS	03:00 PM - 04:50 PM	TH	MATH 170		40	Main Campus
2152	MATH	1151	7	B	21433	1	Precalculus Supplemental Lab	MLS	01:00 PM - 02:50 PM	TH	See Academc Dept		74	Main Campus
2153	MATH	1212	1	B	21758	3	Data and Models	LEC	08:00 AM - 08:50 AM	MWF	FLMG 103		35	Main Campus
2154	MATH	1212	2	B	21759	3	Data and Models	LEC	09:00 AM - 09:50 AM	MWF	CLRE 209		35	Main Campus
2155	MATH	1212	4	B	21761	3	Data and Models	LEC	11:00 AM - 11:50 AM	MWF	FLMG 157		35	Main Campus
2156	MATH	1212	5	B	21762	3	Data and Models	LEC	12:00 PM - 12:50 PM	MWF	FLMG 154		35	Main Campus
2157	MATH	1212	6	B	21763	3	Data and Models	LEC	01:00 PM - 01:50 PM	MWF	FLMG 156		35	Main Campus
2158	MATH	1212	7	B	21764	3	Data and Models	LEC	02:00 PM - 02:50 PM	MWF	FLMG 102		35	Main Campus
2159	MATH	1212	8	B	21765	3	Data and Models	LEC	03:00 PM - 03:50 PM	MWF	FLMG 156		35	Main Campus
2160	MATH	1212	9	B	21766	3	Data and Models	LEC	04:00 PM - 04:50 PM	MWF	FLMG 102		35	Main Campus
2161	MATH	1300	6	B	14814	5	Calculus 1	LEC	10:00 AM - 10:50 AM	M-F	MUEN D144	Roberson,Lee	25	Main Campus
2162	MATH	1300	9	B	14817	5	Calculus 1	LEC	11:00 AM - 11:50 AM	M-F	MUEN E118	Roberson,Lee	25	Main Campus
2163	MATH	1300	23	B	22501	5	Calculus 1	LEC	04:00 PM - 04:50 PM	M-F	MUEN D144		25	Main Campus
2164	MATH	1300	310R	B	15025	5	Calculus 1	LEC	11:00 AM - 11:50 AM	M-F	FLMG 150	Moon,Maung Yi	24	Main Campus
2165	MATH	1300	311R	B	21815	5	Calculus 1	LEC	10:00 AM - 10:50 AM	M-F	FLMG 241	Aquinto,Christopher	0	Main Campus
2166	MATH	1300	311R	B	21815	5	Calculus 1	LEC	-				0	Main Campus
2167	MATH	1300	880	B	20770	5	Calculus 1	LEC	12:00 PM - 12:50 PM	M-F	ECCR 116	Becker,Ira	17	Main Campus
2168	MATH	1310	1	B	20260	5	Calculus for Life Sciences	LEC	08:00 AM - 08:50 AM	M-F			28	Main Campus
2169	MATH	1310	2	B	20957	5	Calculus for Life Sciences	LEC	09:00 AM - 09:50 AM	M-F			28	Main Campus
2170	MATH	1310	3	B	20527	5	Calculus for Life Sciences	LEC	10:00 AM - 10:50 AM	M-F			28	Main Campus
2171	MATH	2001	1	B	14829	3	Intro to Discrete Mathematics	LEC	09:00 AM - 09:50 AM	MWF	ECCR 118		25	Main Campus
2172	MATH	2001	2	B	14833	3	Intro to Discrete Mathematics	LEC	11:00 AM - 11:50 AM	MWF	ECCR 118		25	Main Campus
2173	MATH	2001	3	B	20337	3	Intro to Discrete Mathematics	LEC	12:00 PM - 12:50 PM	MWF	ECCR 1B55		25	Main Campus
2174	MATH	2001	4	B	20528	3	Intro to Discrete Mathematics	LEC	01:00 PM - 01:50 PM	MWF	ECCR 118		25	Main Campus
2175	MATH	2001	5	B	22833	3	Intro to Discrete Mathematics	LEC	02:00 PM - 02:50 PM	MWF	ECCR 110		25	Main Campus
2176	MATH	2002	1	B	22511	3	Number Systems	LEC	09:00 AM - 09:50 AM	MWF	ECCR 108		25	Main Campus
2177	MATH	2130	1	B	21978	3	Lin Algebra for Non-Math Mjrs	LEC	09:00 AM - 09:50 AM	MWF	DUAN G2B41		32	Main Campus
2178	MATH	2130	2	B	21979	3	Lin Algebra for Non-Math Mjrs	LEC	10:00 AM - 10:50 AM	MWF	HLMS 263		32	Main Campus
2179	MATH	2130	3	B	21980	3	Lin Algebra for Non-Math Mjrs	LEC	11:00 AM - 11:50 AM	MWF			32	Main Campus
2180	MATH	2130	4	B	21981	3	Lin Algebra for Non-Math Mjrs	LEC	12:00 PM - 12:50 PM	MWF	KCEN N101		32	Main Campus
2181	MATH	2130	5	B	21982	3	Lin Algebra for Non-Math Mjrs	LEC	01:00 PM - 01:50 PM	MWF	FLMG 157		32	Main Campus
2182	MATH	2130	6	B	21983	3	Lin Algebra for Non-Math Mjrs	LEC	02:00 PM - 02:50 PM	MWF	KCEN N100		32	Main Campus
2183	MATH	2130	7	B	22516	3	Lin Algebra for Non-Math Mjrs	LEC	03:00 PM - 03:50 PM	MWF	KCEN N101		32	Main Campus
2184	MATH	2135	1	B	21984	3	Lin Algebra for Math Mjrs	LEC	09:00 AM - 09:50 AM	MWF	MUEN E064		32	Main Campus
2185	MATH	2135	2	B	21985	3	Lin Algebra for Math Mjrs	LEC	02:00 PM - 02:50 PM	MWF	STAD 135		32	Main Campus
2186	MATH	2300	2	B	14838	5	Calculus 2	LEC	08:00 AM - 08:50 AM	M-F	ECCR 135		25	Main Campus
2187	MATH	2300	4	B	14840	5	Calculus 2	LEC	09:00 AM - 09:50 AM	M-F	MUEN D144		25	Main Campus
2188	MATH	2300	5	B	22519	5	Calculus 2	LEC	09:00 AM - 09:50 AM	M-F	MUEN E118		25	Main Campus
2189	MATH	2300	8	B	20344	5	Calculus 2	LEC	11:00 AM - 11:50 AM	M-F	ECCR 116		25	Main Campus
2190	MATH	2380	1	B	35290	3	Mathematics for the Environmnt	LEC	12:00 PM - 12:50 PM	MWF			28	Main Campus
2191	MATH	2400	9	B	20530	5	Calculus 3	LEC	01:00 PM - 01:50 PM	M-F	ECCR 1B55		25	Main Campus
2192	MATH	2510	1	B	20243	3	Introduction/Statistics	LEC	08:00 AM - 08:50 AM	MWF	FLMG 102		35	Main Campus
2193	MATH	2510	5	B	20533	3	Introduction/Statistics	LEC	09:00 AM - 09:50 AM	MWF	CLRE 104		35	Main Campus
2194	MATH	2510	6	B	20534	3	Introduction/Statistics	LEC	11:00 AM - 11:50 AM	MWF	ECCR 135		35	Main Campus
2195	MATH	2510	7	B	20535	3	Introduction/Statistics	LEC	11:00 AM - 11:50 AM	MWF	ECCR 155		35	Main Campus
2196	MATH	2510	11	B	20959	3	Introduction/Statistics	LEC	02:00 PM - 02:50 PM	MWF	DUAN G2B41		35	Main Campus
2197	MATH	2510	13	B	21323	3	Introduction/Statistics	LEC	03:00 PM - 03:50 PM	MWF	ECCR 1B51		35	Main Campus
2198	MATH	2510	15	B	22538	3	Introduction/Statistics	LEC	04:00 PM - 04:50 PM	MWF	FLMG 103		35	Main Campus
2199	MATH	2510	16	B	22539	3	Introduction/Statistics	LEC	04:00 PM - 04:50 PM	MWF	ECCR 135		35	Main Campus
2200	MATH	3001	1	B	15011	3	Analysis I	LEC	09:00 AM - 09:50 AM	MWF	ECCR 131		25	Main Campus
2201	MATH	3001	2	B	15012	3	Analysis I	LEC	12:00 PM - 12:50 PM	MWF			25	Main Campus
2202	MATH	3001	3	B	20244	3	Analysis I	LEC	02:00 PM - 02:50 PM	MWF	CLRE 302		25	Main Campus
2203	MATH	3120	1	B	21932	3	Functions and Modeling	LEC	03:00 PM - 04:15 PM	MW	CLRE 302		25	Main Campus
2204	MATH	3140	1	B	15014	3	Abstract Algebra 1	LEC	09:00 AM - 09:50 AM	MWF	ECCR 110		24	Main Campus
2205	MATH	3140	2	B	35301	3	Abstract Algebra 1	LEC	11:00 AM - 11:50 AM	MWF	ECCR 131		24	Main Campus
2206	MATH	3170	1	B	20962	3	Combinatorics 1	LEC	11:00 AM - 11:50 AM	MWF	ECCR 110		27	Main Campus
2207	MATH	3430	1	B	15017	3	Ordinary Differential Equation	LEC	09:00 AM - 09:50 AM	MWF	DUAN G2B60		32	Main Campus
2208	MATH	3430	2	B	15018	3	Ordinary Differential Equation	LEC	01:00 PM - 01:50 PM	MWF	KCEN N100		32	Main Campus
2209	MATH	3430	3	B	20537	3	Ordinary Differential Equation	LEC	02:00 PM - 02:50 PM	MWF	MUEN E131		32	Main Campus
2210	MATH	3510	1	B	15015	3	Intro to Prob and Stats	LEC	03:00 PM - 03:50 PM	MWF	FLMG 102		30	Main Campus
2211	MATH	4001	1	B	20536	3	Analysis 2	LEC	03:00 PM - 03:50 PM	MWF	ECCR 118		20	Main Campus
2212	MATH	4200	1	B	35305	3	Introduction to Topology	LEC	12:00 PM - 12:50 PM	MWF	ECCR 110		20	Main Campus
2213	MATH	4440	1	B	20963	3	Math: Coding & Cryptography	LEC	01:00 PM - 01:50 PM	MWF	ECCR 110		20	Main Campus
2214	MATH	4470	1	B	19452	3	Partial Differential Equations	LEC	02:00 PM - 02:50 PM	MWF	ECCR 131		20	Main Campus
2215	MATH	4510	1	B	15019	3	Intro-Probability Theory	LEC	09:00 AM - 09:50 AM	MWF	ECCR 139		20	Main Campus
2216	MATH	4510	2	B	15020	3	Intro-Probability Theory	LEC	12:00 PM - 12:50 PM	MWF	ECCR 118		20	Main Campus
2217	MATH	4510	3	B	22584	3	Intro-Probability Theory	LEC	02:00 PM - 02:50 PM	MWF	ECCR 118		20	Main Campus
2218	MATH	4520	1	B	15021	3	Intro to Math Statistics	LEC	03:00 PM - 03:50 PM	MWF	HUMN 135	Zaharatos,Brian	30	Main Campus
2219	MATH	4520	2	B	21532	3	Intro to Math Statistics	LEC	12:00 PM - 12:50 PM	MWF	ECCR 150	Zaharatos,Brian	30	Main Campus
2220	MATH	4650	1	B	17249	3	Intermed Numerical Analysis 1	LEC	09:00 AM - 09:50 AM	MWF	FLMG 102		15	Main Campus
2221	MATH	4650	2	B	33431	3	Intermed Numerical Analysis 1	LEC	01:00 PM - 01:50 PM	MWF	ECCR 155		15	Main Campus
2222	MATH	4730	1	B	35311	3	Set Theory	LEC	10:00 AM - 10:50 AM	MWF	ECCR 110		20	Main Campus
2223	MATH	4805	310R	B	20775	1	Math Tch Train: Inclusive Ped	SEM	-	TBA		Machen,Rebecca	3	Main Campus
2224	MATH	4820	1	B	19454	3	History of Mathematical Ideas	SEM	10:00 AM - 10:50 AM	MWF	ECCR 108		20	Main Campus
2225	MATH	5001	1	B	20683	3	Analysis 2	LEC	03:00 PM - 03:50 PM	MWF	ECCR 118		7	Main Campus
2226	MATH	5030	1	B	14432	3	Intermed Math Physics 1	LEC	02:00 PM - 02:50 PM	MWF	DUAN G2B21	Hermele,Michael Aaron	10	Main Campus
2227	MATH	5200	1	B	35306	3	Introduction to Topology	LEC	12:00 PM - 12:50 PM	MWF	ECCR 110		7	Main Campus
2228	MATH	5440	1	B	20964	3	Math: Coding & Cryptography	LEC	01:00 PM - 01:50 PM	MWF	ECCR 110		7	Main Campus
2229	MATH	5470	1	B	19453	3	Partial Differential Equations	LEC	02:00 PM - 02:50 PM	MWF	ECCR 131		7	Main Campus
2230	MATH	5510	1	B	20685	3	Intro-Probability Theory	LEC	09:00 AM - 09:50 AM	MWF	ECCR 139		7	Main Campus
2231	MATH	5510	2	B	20686	3	Intro-Probability Theory	LEC	12:00 PM - 12:50 PM	MWF	ECCR 118		7	Main Campus
2232	MATH	5510	3	B	22583	3	Intro-Probability Theory	LEC	02:00 PM - 02:50 PM	MWF	ECCR 118		7	Main Campus
2233	MATH	5520	1	B	15022	3	Intro to Math Statistics	LEC	03:00 PM - 03:50 PM	MWF	HUMN 135	Zaharatos,Brian	10	Main Campus
2234	MATH	5520	2	B	21533	3	Intro to Math Statistics	LEC	12:00 PM - 12:50 PM	MWF	ECCR 150	Zaharatos,Brian	10	Main Campus
2235	MATH	5600	1	B	19926	3	Numerical Analysis 1	LEC	09:00 AM - 09:50 AM	MWF	FLMG 104	Appelo,Daniel E	30	Main Campus
2236	MATH	5730	1	B	35312	3	Set Theory	LEC	10:00 AM - 10:50 AM	MWF	ECCR 110		7	Main Campus
2237	MATH	5820	1	B	20684	3	History of Mathematical Ideas	SEM	10:00 AM - 10:50 AM	MWF	ECCR 108		7	Main Campus
2238	MATH	5905	2	B	22904	1	Mathematics Teacher Training	PRA	01:00 PM - 01:50 PM	M	MATH 350		25	Main Campus
2239	MATH	6110	1	B	20634	3	Intro to Number Theory	LEC	11:00 AM - 11:50 AM	MWF			20	Main Campus
2240	MATH	6130	1	B	20639	3	Algebra 1	LEC	09:00 AM - 09:50 AM	MWF	MUEN E432		20	Main Campus
2241	MATH	6210	1	B	20638	3	Introduction to Topology 1	LEC	12:00 PM - 12:50 PM	MWF	KCEN S163		20	Main Campus
2242	MATH	6260	1	B	35326	3	Geom Quantm Field/String	LEC	01:00 PM - 01:50 PM	MWF	KCEN S163		20	Main Campus
2243	MATH	6270	1	B	35325	3	Theory of Groups	LEC	10:00 AM - 10:50 AM	MWF			20	Main Campus
2244	MATH	6310	1	B	18264	3	Intro to Real Analysis 1	LEC	03:00 PM - 03:50 PM	MWF	ECCR 110		20	Main Campus
2245	MATH	6550	1	B	35328	3	Intro Stochastic Process	LEC	02:00 PM - 02:50 PM	MWF	KCEN S163		20	Main Campus
2246	MATH	8174	1	B	21821	3	Topics in Algebra	LEC	12:00 PM - 12:50 PM	MWF			20	Main Campus
2247	MATH	8234	1	B	35327	3	Tpcs in Differential Geometry	LEC	11:00 AM - 11:50 AM	MWF	KCEN S163		20	Main Campus
2248	MATH	8330	1	B	21072	3	Functional Analysis 1	LEC	09:00 AM - 09:50 AM	MWF	MUEN E417		20	Main Campus
2249	MATH	8714	1	B	22599	3	Topics in Logic	LEC	02:00 PM - 02:50 PM	MWF			20	Main Campus
2250	MATH	8815	1	B	21400	1-3	Ulam Seminar	SEM	01:00 PM - 01:50 PM	T	CHEM 133		15	Main Campus
2251	MEM	4030	1	B	20717	3	Medv/Early Mod Std:Sp Tp	LEC	-				35	Main Campus
2252	MCD	1030	1	B	19468	3	Intro to Molecular Biology	LEC	11:00 AM - 12:15 PM	TTH	BESC 185	DeDecker,Brian S	75	Main Campus
2253	MCD	1150	1	B	13390	3	Intro/Cellular & Molecular Bio	LEC	09:00 AM - 09:50 AM	MWF	MUEN E050	Guild,Nancy A	300	Main Campus
2254	MCD	1150	1	B	13390	3	Intro/Cellular & Molecular Bio	LEC	09:00 AM - 09:50 AM	MWF	MUEN E050	Martin,Jennifer Mary	300	Main Campus
2255	MCD	1150	2	B	18456	3	Intro/Cellular & Molecular Bio	LEC	02:00 PM - 02:50 PM	MWF	MUEN E0046	Martin,Jennifer Mary	300	Main Campus
2256	MCD	1150	2	B	18456	3	Intro/Cellular & Molecular Bio	LEC	02:00 PM - 02:50 PM	MWF	MUEN E0046	Greening,Megan Lea	300	Main Campus
2257	MCD	1150	2	B	18456	3	Intro/Cellular & Molecular Bio	LEC	02:00 PM - 02:50 PM	MWF	MUEN E0046	Guild,Nancy A	300	Main Campus
2258	MCD	1152	1	B	19490	1	Problem Solving Intro	SEM	10:00 AM - 10:50 AM	W	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2259	MCD	1152	1	B	19490	1	Problem Solving Intro	SEM	10:00 AM - 10:50 AM	W	GOLD A2B07	Guild,Nancy A	30	Main Campus
2260	MCD	1152	2	B	13414	1	Problem Solving Intro	SEM	11:00 AM - 11:50 AM	W	GOLD A2B07	Guild,Nancy A	30	Main Campus
2261	MCD	1152	2	B	13414	1	Problem Solving Intro	SEM	11:00 AM - 11:50 AM	W	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2262	MCD	1152	3	B	19491	1	Problem Solving Intro	SEM	12:00 PM - 12:50 PM	W	GOLD A2B07	Guild,Nancy A	30	Main Campus
2263	MCD	1152	3	B	19491	1	Problem Solving Intro	SEM	12:00 PM - 12:50 PM	W	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2264	MCD	1152	4	B	19492	1	Problem Solving Intro	SEM	03:00 PM - 03:50 PM	W	GOLD A2B07	Guild,Nancy A	30	Main Campus
2265	MCD	1152	4	B	19492	1	Problem Solving Intro	SEM	03:00 PM - 03:50 PM	W	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2266	MCD	1152	5	B	19493	1	Problem Solving Intro	SEM	04:00 PM - 04:50 PM	W	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2267	MCD	1152	5	B	19493	1	Problem Solving Intro	SEM	04:00 PM - 04:50 PM	W	GOLD A2B07	Guild,Nancy A	30	Main Campus
2268	MCD	1152	6	B	19494	1	Problem Solving Intro	SEM	01:00 PM - 01:50 PM	TH	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2269	MCD	1152	6	B	19494	1	Problem Solving Intro	SEM	01:00 PM - 01:50 PM	TH	GOLD A2B07	Guild,Nancy A	30	Main Campus
2270	MCD	1152	7	B	18296	1	Problem Solving Intro	SEM	02:00 PM - 02:50 PM	TH	GOLD A2B07	Guild,Nancy A	30	Main Campus
2271	MCD	1152	7	B	18296	1	Problem Solving Intro	SEM	02:00 PM - 02:50 PM	TH	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2272	MCD	1152	8	B	18297	1	Problem Solving Intro	SEM	03:00 PM - 03:50 PM	TH	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2273	MCD	1152	8	B	18297	1	Problem Solving Intro	SEM	03:00 PM - 03:50 PM	TH	GOLD A2B07	Guild,Nancy A	30	Main Campus
2274	MCD	1152	9	B	18351	1	Problem Solving Intro	SEM	04:00 PM - 04:50 PM	TH	GOLD A2B07	Greening,Megan Lea	30	Main Campus
2275	MCD	1152	9	B	18351	1	Problem Solving Intro	SEM	04:00 PM - 04:50 PM	TH	GOLD A2B07	Guild,Nancy A	30	Main Campus
2276	MCD	1161	10	B	21352	2	Phage Genomics Lab I	LEC	03:00 PM - 03:50 PM	W	GOLD A2B70	Fillman,Christy Lynn	25	Main Campus
2277	MCD	1161	10	B	21352	2	Phage Genomics Lab I	LEC	03:00 PM - 03:50 PM	W	GOLD A2B70	Greening,Megan Lea	25	Main Campus
2278	MCD	1161	10	B	21352	2	Phage Genomics Lab I	LEC	03:00 PM - 03:50 PM	W	GOLD A2B70	Guild,Nancy A	25	Main Campus
2279	MCD	1161	11	B	21353	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	TTH	MUEN E0040	Guild,Nancy A	30	Main Campus
2280	MCD	1161	11	B	21353	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	TTH	MUEN E0040	Fillman,Christy Lynn	30	Main Campus
2281	MCD	1161	11	B	21353	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	TTH	MUEN E0040	Greening,Megan Lea	30	Main Campus
2282	MCD	1161	12	B	21354	2	Phage Genomics Lab I	LAB	12:00 PM - 01:50 PM	TTH	MUEN E0040	Fillman,Christy Lynn	30	Main Campus
2283	MCD	1161	12	B	21354	2	Phage Genomics Lab I	LAB	12:00 PM - 01:50 PM	TTH	MUEN E0040	Greening,Megan Lea	30	Main Campus
2284	MCD	1161	12	B	21354	2	Phage Genomics Lab I	LAB	12:00 PM - 01:50 PM	TTH	MUEN E0040	Guild,Nancy A	30	Main Campus
2285	MCD	1161	13	B	21355	2	Phage Genomics Lab I	LAB	02:00 PM - 03:50 PM	TTH	MUEN E0040	Greening,Megan Lea	30	Main Campus
2286	MCD	1161	13	B	21355	2	Phage Genomics Lab I	LAB	02:00 PM - 03:50 PM	TTH	MUEN E0040	Guild,Nancy A	30	Main Campus
2287	MCD	1161	13	B	21355	2	Phage Genomics Lab I	LAB	02:00 PM - 03:50 PM	TTH	MUEN E0040	Fillman,Christy Lynn	30	Main Campus
2288	MCD	1161	14	B	21731	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	TTH	PORT B0026	Guild,Nancy A	30	Main Campus
2289	MCD	1161	14	B	21731	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	TTH	PORT B0026	Fillman,Christy Lynn	30	Main Campus
2290	MCD	1161	14	B	21731	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	TTH	PORT B0026	Greening,Megan Lea	30	Main Campus
2291	MCD	1161	15	B	21732	2	Phage Genomics Lab I	LAB	12:00 PM - 01:50 PM	TTH	PORT B0026	Greening,Megan Lea	30	Main Campus
2292	MCD	1161	15	B	21732	2	Phage Genomics Lab I	LAB	12:00 PM - 01:50 PM	TTH	PORT B0026	Fillman,Christy Lynn	30	Main Campus
2293	MCD	1161	15	B	21732	2	Phage Genomics Lab I	LAB	12:00 PM - 01:50 PM	TTH	PORT B0026	Guild,Nancy A	30	Main Campus
2294	MCD	1161	16	B	21733	2	Phage Genomics Lab I	LAB	02:00 PM - 03:50 PM	TTH	PORT B0026	Fillman,Christy Lynn	30	Main Campus
2295	MCD	1161	16	B	21733	2	Phage Genomics Lab I	LAB	02:00 PM - 03:50 PM	TTH	PORT B0026	Guild,Nancy A	30	Main Campus
2296	MCD	1161	16	B	21733	2	Phage Genomics Lab I	LAB	02:00 PM - 03:50 PM	TTH	PORT B0026	Greening,Megan Lea	30	Main Campus
2297	MCD	1161	17	B	22692	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	WF	PORT B0026	Greening,Megan Lea	30	Main Campus
2298	MCD	1161	17	B	22692	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	WF	PORT B0026	Fillman,Christy Lynn	30	Main Campus
2299	MCD	1161	17	B	22692	2	Phage Genomics Lab I	LAB	10:00 AM - 11:50 AM	WF	PORT B0026	Guild,Nancy A	30	Main Campus
2300	MCD	1171	10	B	20984	2	Discovery-based Laboratory I	LEC	12:00 PM - 12:50 PM	W	GOLD A120	Harvey,Pamela Ann	90	Main Campus
2301	MCD	1171	11	B	21304	2	Discovery-based Laboratory I	LAB	10:00 AM - 11:50 AM	MW	PORT B0046	Harvey,Pamela Ann	15	Main Campus
2302	MCD	1171	12	B	21305	2	Discovery-based Laboratory I	LAB	01:00 PM - 02:50 PM	MW	PORT B0046	Harvey,Pamela Ann	15	Main Campus
2303	MCD	1171	13	B	21734	2	Discovery-based Laboratory I	LAB	03:00 PM - 04:50 PM	MW	PORT B0046	Harvey,Pamela Ann	15	Main Campus
2304	MCD	1171	14	B	21735	2	Discovery-based Laboratory I	LAB	10:00 AM - 11:50 AM	TTH	PORT B0046	Harvey,Pamela Ann	15	Main Campus
2305	MCD	1171	15	B	21736	2	Discovery-based Laboratory I	LAB	12:00 PM - 01:50 PM	TTH	PORT B0046	Harvey,Pamela Ann	15	Main Campus
2306	MCD	1171	16	B	22214	2	Discovery-based Laboratory I	LAB	02:00 PM - 03:50 PM	TTH	PORT B0046	Harvey,Pamela Ann	15	Main Campus
2307	MCD	2150	1	B	13425	3	Principles of Genetics	LEC	02:00 PM - 02:50 PM	MWF	GOLD A2B70	Fillman,Christy Lynn	350	Main Campus
2308	MCD	2150	1	B	13425	3	Principles of Genetics	LEC	02:00 PM - 02:50 PM	MWF	GOLD A2B70	Old,William Marland	350	Main Campus
2309	MCD	2152	1	B	21409	1	Problem Solving Genetics	SEM	11:00 AM - 11:50 AM	M	GOLD A2B07	Fillman,Christy Lynn	30	Main Campus
2310	MCD	2152	2	B	21410	1	Problem Solving Genetics	SEM	12:00 PM - 12:50 PM	M	GOLD A2B07	Fillman,Christy Lynn	30	Main Campus
2311	MCD	2152	3	B	21411	1	Problem Solving Genetics	SEM	01:00 PM - 01:50 PM	M	GOLD A2B07	Fillman,Christy Lynn	30	Main Campus
2312	MCD	3010	1	B	21422	2	Undergraduate Teaching in CURE	LEC	-	TBA	See Academc Dept	Harvey,Pamela Ann	8	Main Campus
2313	MCD	3135	1	B	18092	3	Molecular Cell Biology I	LEC	09:30 AM - 10:45 AM	TTH	HUMN 1B50	Arnoult,Nausica	280	Main Campus
2314	MCD	3140	10	B	34730	2	Cell Biology Laboratory	LEC	03:00 PM - 03:50 PM	M	GOLD A120	Vigers,Alison Jane	90	Main Campus
2315	MCD	3140	11	B	34731	2	Cell Biology Laboratory	LAB	11:00 AM - 12:50 PM	TTH	GOLD A1B16	Vigers,Alison Jane	18	Main Campus
2316	MCD	3140	12	B	34738	2	Cell Biology Laboratory	LAB	01:00 PM - 02:50 PM	TTH	GOLD A1B16	Vigers,Alison Jane	18	Main Campus
2317	MCD	3140	13	B	34739	2	Cell Biology Laboratory	LAB	03:00 PM - 04:50 PM	TTH	GOLD A1B16	Vigers,Alison Jane	18	Main Campus
2318	MCD	3140	14	B	34740	2	Cell Biology Laboratory	LAB	09:00 AM - 10:50 AM	WF	GOLD A1B16	Vigers,Alison Jane	18	Main Campus
2319	MCD	3140	15	B	34741	2	Cell Biology Laboratory	LAB	11:00 AM - 12:50 PM	WF	GOLD A1B16	Vigers,Alison Jane	18	Main Campus
2320	MCD	3160	1	B	21339	3	Infectious Disease	LEC	01:00 PM - 02:15 PM	TTH	BIOT A115	Sawyer,Sara Lea	100	Main Campus
2321	MCD	3333	1	B	20889	3	Biomed Innovations/Discoveries	LEC	02:00 PM - 03:15 PM	MW	GOLD A1B60	Singh,Ravinder	30	Main Campus
2322	MCD	3501	1	B	21796	3	Struc Meth Biol Macromol	SEM	11:00 AM - 12:15 PM	TTH	GOLD A1B60	Hoenger,Andreas	30	Main Campus
2323	MCD	4100	10	B	35123	2	Special Topics	LEC	11:00 AM - 11:50 AM	W	GOLD A150	DeDecker,Brian S	10	Main Campus
2324	MCD	4100	11	B	35125	2	Special Topics	LAB	01:00 PM - 02:50 PM	MW	PORT B154	DeDecker,Brian S	5	Main Campus
2325	MCD	4100	12	B	35126	2	Special Topics	LAB	01:00 PM - 02:50 PM	TTH	PORT B154	DeDecker,Brian S	5	Main Campus
2326	MCD	4101	10	B	22669	3	Editing Genomes with CRISPR	LEC	10:00 AM - 10:50 AM	M	GOLD A350	Birsoy,Bilge	12	Main Campus
2327	MCD	4101	11	B	22905	3	Editing Genomes with CRISPR	LAB	11:00 AM - 12:50 PM	MW	MUEN E0040	Birsoy,Bilge	12	Main Campus
2328	MCD	4202	1	B	20305	3	The Python Project	MLS	01:00 PM - 01:50 PM	MW	GOLD A1B18	Harvey,Pamela Ann	16	Main Campus
2329	MCD	4300	1	B	22683	3	Immunology	LEC	09:30 AM - 10:45 AM	TTH	GOLD A120	Detweiler,Corrella Scott	50	Main Campus
2330	MCD	4312	1	B	21014	3-4	Quantitative Optical Imaging	LEC	11:30 AM - 12:20 PM	MWF	BIOT B331	Cech,Thomas R	25	Main Campus
2331	MCD	4312	1	B	21014	3-4	Quantitative Optical Imaging	LEC	11:30 AM - 12:20 PM	MWF	BIOT B331	Dragavon,Joseph Michel	25	Main Campus
2332	MCD	4410	1	B	21727	3	Human Molecular Genetics	LEC	09:30 AM - 10:45 AM	TTH	PORT B121	Krauter,Kenneth S	40	Main Campus
2333	MCD	4444	1	B	13642	3	Cellular Basis of Disease	SEM	02:00 PM - 03:15 PM	TTH	GOLD A1B60	Martin,Jennifer Mary	25	Main Campus
2334	MCD	4471	1	B	34967	3	Mech Gene Reg/Eukaryotes	LEC	12:00 PM - 01:15 PM	MW	GOLD A1B60	Singh,Ravinder	20	Main Campus
2335	MCD	4615	1	B	21797	3	Biology of Stem Cells	SEM	11:00 AM - 12:15 PM	TTH	PORT B121	Yi,Rui	25	Main Campus
2336	MCD	4650	1	B	21857	3	Developmental Biology	LEC	12:30 PM - 01:45 PM	TTH	GOLD A120	Knight,Jennifer Kirsten	50	Main Campus
2337	MCD	4790	1	B	21017	3	Oocytes Stem Cells Organisms	LEC	02:00 PM - 03:15 PM	TTH	PORT B121	Birsoy,Bilge	25	Main Campus
2338	MCD	5230	1	B	19941	3	Graduate Core 1	LEC	11:00 AM - 12:15 PM	MW	GOLD A250	Krauter,Kenneth S	30	Main Campus
2339	MCD	5301	1	B	22684	3	Immunology	LEC	09:30 AM - 10:45 AM	TTH	GOLD A120	Detweiler,Corrella Scott	7	Main Campus
2340	MCD	5312	800	B	21015	3-4	Quantitative Optical Imaging	LEC	11:30 AM - 12:20 PM	MWF	BIOT B331	Dragavon,Joseph Michel	25	Main Campus
2341	MCD	5312	800	B	21015	3-4	Quantitative Optical Imaging	LEC	11:30 AM - 12:20 PM	MWF	BIOT B331	Cech,Thomas R	25	Main Campus
2342	MCD	5471	1	B	34993	3	Mech Gene Reg/Eukaryotes	LEC	12:00 PM - 01:15 PM	MW	GOLD A1B60	Singh,Ravinder	5	Main Campus
2343	MCD	5615	1	B	21799	3	Biology of Stem Cells	SEM	11:00 AM - 12:15 PM	TTH	PORT B121	Yi,Rui	5	Main Campus
2344	MCD	5650	1	B	21916	2	Teaching and Learning	SEM	-				10	Main Campus
2345	MCD	5776	1	B	36442	1	Scientific Conduct	LEC	09:30 AM - 10:20 AM	F	BIOT B331	Hosseinzadeh,Parisa	20	Main Campus
2346	MCD	5776	1	B	36442	1	Scientific Conduct	LEC	09:30 AM - 10:20 AM	F	BIOT B331	Sousa,Marcelo Carlos	20	Main Campus
2347	MCD	6440	1	B	20292	1-3	Special Topics in MCD Biology	LEC	-			Muhlrad,Paul Jay	15	Main Campus
2348	MCD	6440	801	B	16073	1-3	Special Topics in MCD Biology	LEC	05:30 PM - 06:30 PM	M	GOLD A350	Krauter,Kenneth S	15	Main Campus
2349	MCD	7910	1	B	13832	1	Seminar Practicum	SEM	03:30 PM - 04:30 PM	F	GOLD A2B70	Krauter,Kenneth S	50	Main Campus
2350	MUS	5011	801	B	15788	4	Intro to Museum Studies	LEC	12:00 PM - 01:50 PM	M	HEND 212	McQuade,Caitlin	14	Main Campus
2351	MUS	5011	801	B	15788	4	Intro to Museum Studies	LEC	12:00 PM - 04:50 PM	W	HEND 212	McQuade,Caitlin	14	Main Campus
2352	MUS	5051	800	B	20607	3	Musm Collections Mangmnt	LEC	09:00 AM - 11:50 AM	T	HEND 212	Li,Jingchun	15	Main Campus
2353	MUS	5474	801	B	35028	4	Vertebrate Paleontology	LEC	09:30 AM - 10:45 AM	TTH	MCOL E280	Eberle,Jaelyn J	6	Main Campus
2354	MUS	5474	801	B	35028	4	Vertebrate Paleontology	LEC	-				6	Main Campus
2355	MUS	5474	811	B	35038	4	Vertebrate Paleontology	LAB	01:00 PM - 03:00 PM	TH	MCOL E280	Eberle,Jaelyn J	6	Main Campus
2356	MUS	5912	800	B	28947	3	Coll Res. Practm: Cult Anthro	PRA	01:00 PM - 03:50 PM	TH	HEND 212	Shannon,Jennifer	3	Main Campus
2357	MUS	5917	801	B	28932	3	Musm Practicum Technique	PRA	02:00 PM - 04:50 PM	T	VAC 208	Saska,Hope	6	Main Campus
2358	MUS	6110	800	B	22103	3	Seminar in Museum Issues	SEM	02:00 PM - 04:50 PM	W	MCOL E280	McCain,Christy	5	Main Campus
2359	NRS	2100	100	B	16762	4	Introduction to Neuroscience	LEC	12:30 PM - 01:45 PM	TTH	EKLC E1B20	Campeau,Serge	109	Main Campus
2360	NRS	2100	103	B	20289	4	Introduction to Neuroscience	REC	03:00 PM - 03:50 PM	W	MUEN E064	Campeau,Serge	27	Main Campus
2361	NRS	2100	104	B	20649	4	Introduction to Neuroscience	REC	04:00 PM - 04:50 PM	W	MUEN D439	Campeau,Serge	27	Main Campus
2362	NRS	2100	200	B	22467	4	Introduction to Neuroscience	LEC	01:00 PM - 01:50 PM	MWF	EDUC 220	Laman-Maharg,Abigail Rose	100	Main Campus
2363	NRS	2100	202	B	22469	4	Introduction to Neuroscience	REC	10:00 AM - 10:50 AM	F	RAMY N1B31		25	Main Campus
2364	NRS	2200	1	B	20400	2	Lab Techniques in Neuroscience	MLS	09:00 AM - 10:50 AM	TTH	MUEN E048	Day,Heidi E W	18	Main Campus
2365	NRS	2200	2	B	20401	2	Lab Techniques in Neuroscience	MLS	11:00 AM - 12:50 PM	TTH	MUEN E048	Day,Heidi E W	18	Main Campus
2366	NRS	2200	3	B	20402	2	Lab Techniques in Neuroscience	MLS	01:00 PM - 02:50 PM	TTH	MUEN E048	Day,Heidi E W	18	Main Campus
2367	NRS	2200	4	B	20429	2	Lab Techniques in Neuroscience	MLS	09:00 AM - 10:50 AM	WF	MUEN E048	Day,Heidi E W	18	Main Campus
2368	NRS	4032	1	B	22591	3	Neurobio Learn & Memory	LEC	12:30 PM - 01:45 PM	TTH	MUEN E431	Laman-Maharg,Abigail Rose	47	Main Campus
2369	NRS	4042	1	B	22701	3	Systems Neuroscience	LEC	11:00 AM - 11:50 AM	MWF	MUEN E417	Laman-Maharg,Abigail Rose	45	Main Campus
2370	NRS	4062	1	B	20941	3	The Neurobiology of Stress	LEC	12:00 PM - 12:50 PM	MWF	MUEN E417	Day,Heidi E W	42	Main Campus
2371	NRS	4072	1	B	19087	3	Clinical Neuroscience	LEC	01:00 PM - 01:50 PM	MWF	MUEN E417	Vigers,Alison Jane	45	Main Campus
2372	NRS	4092	1	B	22592	3	Behavioral Neuroendocrinology	LEC	11:00 AM - 12:15 PM	TTH	RAMY N1B23	Spencer,Robert L	50	Main Campus
2373	NRS	4132	100	B	21826	3	Neuropharmacology	LEC	09:30 AM - 10:45 AM	TTH	MUEN E431	Bachtell,Ryan Karn	45	Main Campus
2374	NRS	4155	100	B	21300	4	Cogn Neurosci/Neuropsyc	LEC	12:30 PM - 01:45 PM	TTH	MUEN E064	Curran,Timothy	10	Main Campus
2375	NRS	4155	101	B	22839	4	Cogn Neurosci/Neuropsyc	LAB	01:00 PM - 02:50 PM	W	MUEN E311	Curran,Timothy	5	Main Campus
2376	NRS	4155	102	B	22840	4	Cogn Neurosci/Neuropsyc	LAB	03:00 PM - 04:50 PM	W	MUEN E311	Curran,Timothy	5	Main Campus
2377	NRS	5092	100	B	22890	3-4	Behavioral Neuroendocrinology	LEC	11:00 AM - 12:15 PM	TTH	RAMY N1B23	Spencer,Robert L	15	Main Campus
2378	NRS	5092	101	B	34678	3-4	Behavioral Neuroendocrinology	REC	09:30 AM - 10:30 AM	TH	MUEN E214	Spencer,Robert L	15	Main Campus
2379	NRS	5100	801	B	15773	3	Intro to Neuroscience I	LEC	01:30 PM - 04:00 PM	W	See Academc Dept	Campeau,Serge	15	Main Campus
2380	NRS	6100	1	B	15745	2	Advances in Neuroscience	SEM	03:30 PM - 05:15 PM	T	MUEN E214	Spencer,Robert L	12	Main Campus
2381	NRS	6602	800	B	36564	1	Scientific Skills Development	SEM	03:00 PM - 04:00 PM	M	MUEN D430	Watkins,Linda R	47	Main Campus
2382	NRS	7102	1	B	34680	3	Topics in Neuroscience	LEC	09:30 AM - 12:00 PM		See Academc Dept	Root,David H	20	Main Campus
2383	PACS	2500	1	B	21738	3	Intro Peace, Conflict & Secur	LEC	09:30 AM - 10:45 AM	TTH	CLUB 4	English,Michael	25	Main Campus
2384	PACS	2500	2	B	21345	3	Intro Peace, Conflict & Secur	LEC	09:30 AM - 10:45 AM	TTH	CLUB 4	English,Michael	25	Main Campus
2385	PACS	3700	1	B	20524	3	Comm & Conflict Management	LEC	02:00 PM - 03:15 PM	TTH	KTCH 1B87	English,Michael	25	Main Campus
2386	PACS	3700	2	B	22386	3	Comm & Conflict Management	LEC	05:00 PM - 06:15 PM	TTH	CLUB 13	English,Michael	25	Main Campus
2387	PHIL	1000	1	B	14211	3	Introduction to Philosophy	LEC	09:00 AM - 09:50 AM	MWF	HLMS 211		35	Main Campus
2388	PHIL	1000	2	B	14212	3	Introduction to Philosophy	LEC	09:00 AM - 09:50 AM	MWF	HLMS 247		33	Main Campus
2389	PHIL	1000	3	B	14213	3	Introduction to Philosophy	LEC	02:00 PM - 02:50 PM	MWF	MUEN E431		35	Main Campus
2390	PHIL	1000	4	B	14217	3	Introduction to Philosophy	LEC	01:00 PM - 01:50 PM	MWF	ECON 205		37	Main Campus
2391	PHIL	1000	5	B	14219	3	Introduction to Philosophy	LEC	02:00 PM - 02:50 PM	MWF	HLMS 245		33	Main Campus
2392	PHIL	1000	6	B	14220	3	Introduction to Philosophy	LEC	10:00 AM - 10:50 AM	MWF	KTCH 1B87		37	Main Campus
2393	PHIL	1000	7	B	18693	3	Introduction to Philosophy	LEC	12:00 PM - 12:50 PM	MWF	VAC 1B88		39	Main Campus
2394	PHIL	1000	8	B	20240	3	Introduction to Philosophy	LEC	03:00 PM - 03:50 PM	MWF	DUAN G2B47		35	Main Campus
2395	PHIL	1000	100	B	14185	3	Introduction to Philosophy	LEC	11:00 AM - 11:50 AM	MW	MCOL W100	Bredeson,Garrett Zantow	149	Main Campus
2396	PHIL	1000	880	B	21730	3	Introduction to Philosophy	LEC	12:30 PM - 01:45 PM	TTH	LIBR N424A	Kaufman,Daniel Patrick	7	Main Campus
2397	PHIL	1010	1	B	20379	3	Intro to Western Phil: Ancient	LEC	01:00 PM - 01:50 PM	MWF	CLUB 13		21	Main Campus
2398	PHIL	1010	2	B	20711	3	Intro to Western Phil: Ancient	LEC	12:00 PM - 12:50 PM	MWF	EDUC 155	Lee,Mi-Kyoung	23	Main Campus
2399	PHIL	1020	1	B	20144	3	Intro to West Phil: Modern	LEC	12:00 PM - 12:50 PM	MWF	DUAN G131		35	Main Campus
2400	PHIL	1020	2	B	20145	3	Intro to West Phil: Modern	LEC	01:00 PM - 01:50 PM	MWF	VAC 1B90		35	Main Campus
2401	PHIL	1020	3	B	21047	3	Intro to West Phil: Modern	LEC	09:00 AM - 09:50 AM	MWF	HLMS 137		39	Main Campus
2402	PHIL	1030	1	B	36140	3	Intro to Global Philosophy	LEC	02:00 PM - 02:50 PM	MWF	HLMS 237		37	Main Campus
2403	PHIL	1030	2	B	36141	3	Intro to Global Philosophy	LEC	01:00 PM - 01:50 PM	MWF	HLMS 255		33	Main Campus
2404	PHIL	1100	1	B	14226	3	Ethics	LEC	11:00 AM - 11:50 AM	MWF	STAD 140		35	Main Campus
2405	PHIL	1100	2	B	19577	3	Ethics	LEC	12:00 PM - 12:50 PM	MWF	MUEN E431		35	Main Campus
2406	PHIL	1100	3	B	14227	3	Ethics	LEC	03:00 PM - 03:50 PM	MWF	HUMN 125		37	Main Campus
2407	PHIL	1100	4	B	20883	3	Ethics	LEC	02:00 PM - 02:50 PM	MWF	HLMS 247		33	Main Campus
2408	PHIL	1100	5	B	20887	3	Ethics	LEC	04:30 PM - 05:45 PM	MW	CLUB 4		35	Main Campus
2409	PHIL	1100	6	B	21283	3	Ethics	LEC	12:30 PM - 01:45 PM	TTH	HLMS 237	Perl,Caleb	39	Main Campus
2410	PHIL	1100	7	B	22593	3	Ethics	LEC	03:00 PM - 04:15 PM	MW	RAMY N1B31		35	Main Campus
2411	PHIL	1100	100	B	20612	3	Ethics	LEC	11:00 AM - 11:50 AM	TTH	HUMN 150	Perl,Caleb	150	Main Campus
2412	PHIL	1100	880	B	34487	3	Ethics	LEC	03:30 PM - 04:45 PM	TTH	LIBR N424A	Huemer,Michael	7	Main Campus
2413	PHIL	1160	1	B	20903	3	Introduction to Medical Ethics	LEC	02:00 PM - 02:50 PM	MWF	MUEN E417		38	Main Campus
2414	PHIL	1160	2	B	21288	3	Introduction to Medical Ethics	LEC	03:00 PM - 03:50 PM	MWF	MCOL E158		32	Main Campus
2415	PHIL	1200	1	B	14236	3	Contemporary Social Problems	LEC	03:30 PM - 04:45 PM	TTH	GUGG 206		35	Main Campus
2416	PHIL	1200	2	B	14237	3	Contemporary Social Problems	LEC	05:00 PM - 06:15 PM	TTH	HLMS 229		35	Main Campus
2417	PHIL	1200	3	B	20630	3	Contemporary Social Problems	LEC	02:00 PM - 02:50 PM	MWF	HLMS 263		33	Main Campus
2418	PHIL	1200	4	B	14238	3	Contemporary Social Problems	LEC	03:00 PM - 03:50 PM	MWF	ECON 13		37	Main Campus
2419	PHIL	1200	5	B	14239	3	Contemporary Social Problems	LEC	10:00 AM - 10:50 AM	MWF	CLRE 209		35	Main Campus
2420	PHIL	1200	6	B	14240	3	Contemporary Social Problems	LEC	03:00 PM - 04:15 PM	MW	GUGG 206		33	Main Campus
2421	PHIL	1200	7	B	20239	3	Contemporary Social Problems	LEC	09:00 AM - 09:50 AM	MWF	HLMS 229		35	Main Campus
2422	PHIL	1200	8	B	21289	3	Contemporary Social Problems	LEC	04:30 PM - 05:45 PM	MW	HUMN 190		39	Main Campus
2423	PHIL	1200	100	B	14232	3	Contemporary Social Problems	LEC	09:00 AM - 09:50 AM	MW	VAC 1B20	Wingo,Ajume H	150	Main Campus
2424	PHIL	1250	1	B	36142	3	Poverty, Power, & Patriotism	LEC	12:00 PM - 12:50 PM	MWF	CLUB 4		35	Main Campus
2425	PHIL	1250	2	B	36143	3	Poverty, Power, & Patriotism	LEC	02:00 PM - 02:50 PM	MWF	GUGG 206		35	Main Campus
2426	PHIL	1400	1	B	34331	3	Philosophy and Sciences	LEC	04:00 PM - 05:15 PM	MW	HLMS 237	Rupert,Robert D	39	Main Campus
2427	PHIL	1400	100	B	22472	3	Philosophy and Sciences	LEC	03:00 PM - 03:50 PM	MW	HALE 230	Rupert,Robert D	75	Main Campus
2428	PHIL	1440	1	B	14241	3	Critical Thinking	LEC	03:00 PM - 04:15 PM	MW	CLUB 13		33	Main Campus
2429	PHIL	1440	2	B	22564	3	Critical Thinking	LEC	04:30 PM - 05:45 PM	MW	ECON 2		33	Main Campus
2430	PHIL	1440	3	B	34332	3	Critical Thinking	LEC	09:00 AM - 09:50 AM	MWF	HLMS 255		33	Main Campus
2431	PHIL	1440	4	B	34333	3	Critical Thinking	LEC	10:00 AM - 10:50 AM	MWF	ECON 13		33	Main Campus
2432	PHIL	1440	100	B	22565	3	Critical Thinking	LEC	12:30 PM - 01:20 PM	TTH	HUMN 150	Staffel,Julia	150	Main Campus
2433	PHIL	1500	1	B	20918	3	Reading, Writing and Reasoning	SEM	01:00 PM - 01:50 PM	MWF	HALE 235		15	Main Campus
2434	PHIL	1500	2	B	20920	3	Reading, Writing and Reasoning	SEM	05:00 PM - 06:15 PM	TTH	MKNA 204		18	Main Campus
2435	PHIL	1500	3	B	22580	3	Reading, Writing and Reasoning	SEM	10:00 AM - 10:50 AM	MWF	HLMS 104		16	Main Campus
2436	PHIL	1500	4	B	22582	3	Reading, Writing and Reasoning	SEM	03:30 PM - 04:45 PM	TTH	HUMN 180		20	Main Campus
2437	PHIL	1600	100	B	34536	3	Philosophy and Religion	LEC	02:00 PM - 02:50 PM	MW	HUMN 135		69	Main Campus
2438	PHIL	1700	1	B	34341	3	Phil and the Arts	LEC	11:00 AM - 11:50 AM	MWF	VAC 1B90	Sturgis,Daniel Paul	39	Main Campus
2439	PHIL	2140	1	B	22724	3	Environmental Justice	LEC	04:00 PM - 05:15 PM	MW	DUAN G2B47		26	Main Campus
2440	PHIL	2150	1	B	21822	3	Ethics and Sex	LEC	04:00 PM - 05:15 PM	MW	HALE 230		39	Main Campus
2441	PHIL	2160	1	B	34342	3	Ethics and Information Tech	LEC	09:00 AM - 09:50 AM	MWF	HLMS 263		33	Main Campus
2442	PHIL	2160	2	B	34343	3	Ethics and Information Tech	LEC	10:00 AM - 10:50 AM	MWF	HALE 260		37	Main Campus
2443	PHIL	2170	1	B	35095	3	Ethics and Economics	LEC	12:30 PM - 01:45 PM	TTH	VAC 1B88	Fileva,Iskra Nikova	39	Main Campus
2444	PHIL	2200	1	B	21823	3	Major Social Theories	LEC	03:30 PM - 04:45 PM	TTH	MCOL E155		39	Main Campus
2445	PHIL	2220	1	B	14266	3	Philosophy & Law	LEC	03:00 PM - 03:50 PM	MWF	EKLC E1B50		35	Main Campus
2446	PHIL	2220	2	B	20922	3	Philosophy & Law	LEC	02:00 PM - 02:50 PM	MWF	DUAN G2B60		35	Main Campus
2447	PHIL	2240	1	B	22721	3	Philosophy and Sports	LEC	12:00 PM - 12:50 PM	MWF	HLMS 237		39	Main Campus
2448	PHIL	2270	1	B	21294	3	Philosophy and Race	LEC	09:00 AM - 09:50 AM	MWF	HUMN 190		34	Main Campus
2449	PHIL	2270	2	B	21295	3	Philosophy and Race	LEC	10:00 AM - 10:50 AM	MWF	DUAN G2B41		36	Main Campus
2450	PHIL	2270	3	B	34338	3	Philosophy and Race	LEC	04:30 PM - 05:45 PM	MW	CLRE 104		35	Main Campus
2451	PHIL	2290	1	B	34350	3	Philosophy and Gender	LEC	09:00 AM - 09:50 AM	MWF	HLMS 245		28	Main Campus
2452	PHIL	2290	2	B	34351	3	Philosophy and Gender	LEC	10:00 AM - 10:50 AM	MWF	HLMS 237		32	Main Campus
2453	PHIL	2290	3	B	34352	3	Philosophy and Gender	LEC	08:00 AM - 09:15 AM	TTH	HLMS 237		30	Main Campus
2454	PHIL	2440	1	B	20143	3	Symbolic Logic	LEC	02:00 PM - 03:15 PM	TTH	HLMS 237	Forbes,Graeme R	39	Main Campus
2455	PHIL	2440	2	B	20988	3	Symbolic Logic	LEC	03:30 PM - 04:45 PM	TTH	HLMS 237	Saucedo Ceballos,Raul	39	Main Campus
2456	PHIL	3000	1	B	19910	3	History of Ancient Philosophy	LEC	03:00 PM - 04:15 PM	MW	MUEN E432	Bailey,Dominic T. J.	39	Main Campus
2457	PHIL	3000	2	B	21306	3	History of Ancient Philosophy	LEC	04:30 PM - 05:45 PM	MW	MUEN E131	Bailey,Dominic T. J.	39	Main Campus
2458	PHIL	3010	1	B	15783	3	History of Modern Philosophy	LEC	09:00 AM - 09:50 AM	MWF	HLMS 237	Bredeson,Garrett Zantow	39	Main Campus
2459	PHIL	3010	2	B	20411	3	History of Modern Philosophy	LEC	03:30 PM - 04:45 PM	TTH	HLMS 229	Potter,Jason Timothy	39	Main Campus
2460	PHIL	3030	1	B	36144	3	Asian Philosophies	LEC	02:00 PM - 03:15 PM	TTH	HLMS 177	Saucedo Ceballos,Raul	26	Main Campus
2461	PHIL	3100	1	B	14450	3	Ethical Theory	LEC	03:00 PM - 04:15 PM	MW	MUEN E431	Heathwood,Christopher Charles	39	Main Campus
2462	PHIL	3100	2	B	34339	3	Ethical Theory	LEC	04:30 PM - 05:45 PM	MW	HLMS 141	Heathwood,Christopher Charles	39	Main Campus
2463	PHIL	3140	1	B	15784	3	Environmental Ethics	LEC	02:00 PM - 02:50 PM	MWF	HLMS 201	Youkey,David Allen	38	Main Campus
2464	PHIL	3140	2	B	21349	3	Environmental Ethics	LEC	01:00 PM - 01:50 PM	MWF	HLMS 252	Youkey,David Allen	38	Main Campus
2465	PHIL	3140	3	B	34356	3	Environmental Ethics	LEC	09:00 AM - 09:50 AM	MWF	CLUB 13		18	Main Campus
2466	PHIL	3160	1	B	19911	3	Bioethics	LEC	03:30 PM - 04:45 PM	TTH	ECON 2		38	Main Campus
2467	PHIL	3160	2	B	18277	3	Bioethics	LEC	05:00 PM - 06:15 PM	TTH	VAC 1B90		39	Main Campus
2468	PHIL	3190	1	B	19451	3	War and Morality	LEC	02:00 PM - 02:50 PM	MWF	HLMS 229	Sturgis,Daniel Paul	39	Main Campus
2469	PHIL	3190	2	B	34340	3	War and Morality	LEC	03:00 PM - 03:50 PM	MWF	HLMS 241	Sturgis,Daniel Paul	39	Main Campus
2470	PHIL	3200	1	B	19914	3	Soc/Political Philosophy	LEC	03:00 PM - 04:15 PM	MW	DUAN G131	Wingo,Ajume H	39	Main Campus
2471	PHIL	3260	1	B	21307	3	Philosophy/International Order	LEC	02:00 PM - 02:50 PM	MWF	HALE 240		35	Main Campus
2905	PSYC	6911	802	B	16855	1-3	Research Practicum	PRA	-	TBA		Rhee,Soo Hyun	50	Main Campus
2472	PHIL	3410	1	B	21808	3	Hist Sci: Ancients to Newton	LEC	11:00 AM - 11:50 AM	MWF	HALE 240	Youkey,David Allen	39	Main Campus
2473	PHIL	3430	1	B	20956	3	Hist Sci: Newton to Einstein	LEC	03:00 PM - 03:50 PM	MWF	EDUC 155	Youkey,David Allen	39	Main Campus
2474	PHIL	3480	1	B	14471	3	Crit Thinkng/Writng Philosophy	LEC	11:00 AM - 12:15 PM	TTH	HUMN 335	Potter,Jason Timothy	16	Main Campus
2475	PHIL	3480	2	B	22618	3	Crit Thinkng/Writng Philosophy	LEC	12:30 PM - 01:45 PM	TTH	HLMS 196	Potter,Jason Timothy	20	Main Campus
2476	PHIL	3600	1	B	22619	3	Philosophy of Religion	LEC	03:30 PM - 04:45 PM	TTH	HALE 260	Fileva,Iskra Nikova	39	Main Campus
2477	PHIL	3700	1	B	21308	3	Aesthetic Theory	LEC	09:30 AM - 10:45 AM	TTH	VAC 1B88	Oddie,Graham James	20	Main Campus
2478	PHIL	4020	1	B	34359	3	Topics/History of Philosophy	LEC	02:00 PM - 03:15 PM	TTH	HLMS 196	Kaufman,Daniel Patrick	8	Main Campus
2479	PHIL	4070	1	B	22634	3	Existentialist Philosophy	LEC	10:00 AM - 10:50 AM	MWF	VAC 1B90		39	Main Campus
2480	PHIL	4110	1	B	34360	3	Contemporary Moral Theory	LEC	03:30 PM - 04:45 PM	TTH	HLMS 196	Perl,Caleb	8	Main Campus
2481	PHIL	4120	1	B	34344	3	Philosophy and Animals	SEM	11:00 AM - 12:15 PM	TTH	MCOL E155	Norcross,Alastair J.	39	Main Campus
2482	PHIL	4260	1	B	22631	3	Philosophy of Law	LEC	03:30 PM - 04:45 PM	TTH	HLMS 177	Talbot,Brian	26	Main Campus
2483	PHIL	4340	1	B	19912	3	Epistemology	LEC	03:00 PM - 04:15 PM	MW	KTCH 1B71	Steup,Matthias	39	Main Campus
2484	PHIL	4360	1	B	34345	3	Metaphysics	LEC	09:30 AM - 10:45 AM	TTH	HUMN 190	Demarest,Heather Alison	34	Main Campus
2485	PHIL	4460	1	B	34362	3	Modal Logic	LEC	12:30 PM - 01:45 PM	TTH	HLMS 177	Forbes,Graeme R	15	Main Campus
2486	PHIL	4470	1	B	34346	3	Probability & Rational Choice	SEM	11:00 AM - 12:15 PM	TTH	HLMS 177	Oddie,Graham James	26	Main Campus
2487	PHIL	5020	1	B	22725	3	Topics/History of Philosophy	SEM	02:00 PM - 03:15 PM	TTH	HLMS 196	Kaufman,Daniel Patrick	8	Main Campus
2488	PHIL	5100	1	B	21309	3	Ethics	SEM	05:00 PM - 07:30 PM	T	HLMS 177	Boonin,David Isaac	10	Main Campus
2489	PHIL	5110	1	B	34361	3	Contemporary Moral Theory	LEC	03:30 PM - 04:45 PM	TTH	HLMS 196	Perl,Caleb	8	Main Campus
2490	PHIL	5460	1	B	34363	3	Modal Logic	LEC	12:30 PM - 01:45 PM	TTH	HLMS 177	Forbes,Graeme R	11	Main Campus
2491	PHIL	6100	1	B	34347	3	Seminar in Ethics	SEM	03:00 PM - 04:15 PM	MW	HLMS 177	Jaggar,Alison M	8	Main Campus
2492	PHIL	6380	1	B	34348	3	Seminar in Metaphysics	SEM	05:00 PM - 07:30 PM	TH	HLMS 196	Huemer,Michael	8	Main Campus
2493	PHIL	6400	1	B	34349	3	Sem-Philosophy Science	SEM	05:00 PM - 07:30 PM	W	HLMS 177	Cleland,Carol	8	Main Campus
2494	PHIL	7415	1	B	20641	2	Cog Sci Rsrch Prac 1	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
2495	PHIL	7425	1	B	18694	2	Cog Sci Rsrch Prac 2	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	16	Main Campus
2496	PHIL	7810	1	B	18348	1	Tpcs-Cognitive Science	SEM	12:00 PM - 02:00 PM	F	MUEN D430	Sumner,Tamara Ruth	15	Main Campus
2497	PHYS	1010	1	B	13478	3	Physics Everyday Life 1	LEC	11:00 AM - 12:15 PM	TTH	DUAN G1B30	Gurarie,Victor Vladimir	125	Main Campus
2498	PHYS	1110	100	B	13479	4	General Physics 1	LEC	10:00 AM - 10:50 AM	MWF	DUAN G1B30	Dubson,Michael A	322	Main Campus
2499	PHYS	1110	100	B	13479	4	General Physics 1	LEC	10:00 AM - 10:50 AM	MWF	DUAN G1B30	Regal,Cindy Anne	322	Main Campus
2500	PHYS	1110	100	B	13479	4	General Physics 1	LEC	10:00 AM - 10:50 AM	MWF	DUAN G1B30	Bolton,Daniel Ryan	322	Main Campus
2501	PHYS	1110	200	B	20718	4	General Physics 1	LEC	12:00 PM - 12:50 PM	MWF	DUAN G1B30	Regal,Cindy Anne	322	Main Campus
2502	PHYS	1110	200	B	20718	4	General Physics 1	LEC	12:00 PM - 12:50 PM	MWF	DUAN G1B30	Bolton,Daniel Ryan	322	Main Campus
2503	PHYS	1110	200	B	20718	4	General Physics 1	LEC	12:00 PM - 12:50 PM	MWF	DUAN G1B30	Dubson,Michael A	322	Main Campus
2504	PHYS	1110	300	B	13492	4	General Physics 1	LEC	01:00 PM - 01:50 PM	MWF	DUAN G1B30	Dubson,Michael A	322	Main Campus
2505	PHYS	1110	300	B	13492	4	General Physics 1	LEC	01:00 PM - 01:50 PM	MWF	DUAN G1B30	Regal,Cindy Anne	322	Main Campus
2506	PHYS	1110	300	B	13492	4	General Physics 1	LEC	01:00 PM - 01:50 PM	MWF	DUAN G1B30	Bolton,Daniel Ryan	322	Main Campus
2507	PHYS	1110	400	B	20719	4	General Physics 1	LEC	03:00 PM - 03:50 PM	MWF	DUAN G1B30	Bolton,Daniel Ryan	322	Main Campus
2508	PHYS	1110	400	B	20719	4	General Physics 1	LEC	03:00 PM - 03:50 PM	MWF	DUAN G1B30	Regal,Cindy Anne	322	Main Campus
2509	PHYS	1110	400	B	20719	4	General Physics 1	LEC	03:00 PM - 03:50 PM	MWF	DUAN G1B30	Dubson,Michael A	322	Main Campus
2510	PHYS	1110	501	B	19508	0	General Physics 1	REC	08:00 AM - 08:50 AM	TH	DUAN G2B60		28	Main Campus
2511	PHYS	1110	502	B	20720	0	General Physics 1	REC	08:00 AM - 08:50 AM	TH	DUAN G2B63		28	Main Campus
2512	PHYS	1110	503	B	13480	0	General Physics 1	REC	08:00 AM - 08:50 AM	TH	DUAN G2B64		28	Main Campus
2513	PHYS	1115	100	B	21680	4	General Physics 1 for Majors	LEC	02:00 PM - 03:15 PM	TTH	DUAN G1B20	Betterton,Meredith D	196	Main Campus
2514	PHYS	1115	101	B	21681	4	General Physics 1 for Majors	REC	08:00 AM - 08:50 AM	W	DUAN G2B66		28	Main Campus
2515	PHYS	1120	100	B	21115	4	General Physics 2	LEC	09:00 AM - 09:50 AM	MWF	DUAN G1B30	Hodby,Eleanor	224	Main Campus
2516	PHYS	1120	100	B	21115	4	General Physics 2	LEC	09:00 AM - 09:50 AM	MWF	DUAN G1B30	Beale,Paul D	224	Main Campus
2517	PHYS	1120	200	B	13660	4	General Physics 2	LEC	11:00 AM - 11:50 AM	MWF	DUAN G1B30	Beale,Paul D	224	Main Campus
2518	PHYS	1120	200	B	13660	4	General Physics 2	LEC	11:00 AM - 11:50 AM	MWF	DUAN G1B30	Hodby,Eleanor	224	Main Campus
2519	PHYS	1120	300	B	20661	4	General Physics 2	LEC	08:00 AM - 08:50 AM	MWF	DUAN G1B30		224	Main Campus
2520	PHYS	1120	401	B	13648	0	General Physics 2	REC	08:00 AM - 08:50 AM	T	DUAN G2B60		30	Main Campus
2521	PHYS	1120	402	B	13649	0	General Physics 2	REC	08:00 AM - 08:50 AM	T	DUAN G2B63		30	Main Campus
2522	PHYS	1120	404	B	13651	0	General Physics 2	REC	09:00 AM - 09:50 AM	T	DUAN G2B60		30	Main Campus
2523	PHYS	1120	405	B	13652	0	General Physics 2	REC	09:00 AM - 09:50 AM	T	DUAN G2B63		30	Main Campus
2524	PHYS	1120	406	B	13653	0	General Physics 2	REC	09:00 AM - 09:50 AM	T	DUAN G2B64		30	Main Campus
2525	PHYS	1120	407	B	13654	0	General Physics 2	REC	10:00 AM - 10:50 AM	T	DUAN G2B60		30	Main Campus
2526	PHYS	1120	408	B	13655	0	General Physics 2	REC	10:00 AM - 10:50 AM	T	DUAN G2B63		30	Main Campus
2527	PHYS	1120	409	B	13656	0	General Physics 2	REC	10:00 AM - 10:50 AM	T	DUAN G2B64		30	Main Campus
2528	PHYS	1120	410	B	13657	0	General Physics 2	REC	11:00 AM - 11:50 AM	T	DUAN G2B60		30	Main Campus
2529	PHYS	1120	411	B	13658	0	General Physics 2	REC	11:00 AM - 11:50 AM	T	DUAN G2B63		30	Main Campus
2530	PHYS	1120	412	B	13659	0	General Physics 2	REC	11:00 AM - 11:50 AM	T	DUAN G2B64		30	Main Campus
2531	PHYS	1120	413	B	13661	0	General Physics 2	REC	12:00 PM - 12:50 PM	T	DUAN G2B60		30	Main Campus
2532	PHYS	1120	414	B	13662	0	General Physics 2	REC	12:00 PM - 12:50 PM	T	DUAN G2B63		30	Main Campus
2533	PHYS	1120	415	B	13663	0	General Physics 2	REC	12:00 PM - 12:50 PM	T	DUAN G2B64		30	Main Campus
2534	PHYS	1120	416	B	13664	0	General Physics 2	REC	01:00 PM - 01:50 PM	T	DUAN G2B60		30	Main Campus
2535	PHYS	1120	417	B	13665	0	General Physics 2	REC	01:00 PM - 01:50 PM	T	DUAN G2B63		30	Main Campus
2536	PHYS	1120	418	B	13666	0	General Physics 2	REC	01:00 PM - 01:50 PM	T	DUAN G2B64		30	Main Campus
2537	PHYS	1120	419	B	13667	0	General Physics 2	REC	02:00 PM - 02:50 PM	T	DUAN G2B60		30	Main Campus
2538	PHYS	1120	420	B	19241	0	General Physics 2	REC	02:00 PM - 02:50 PM	T	DUAN G2B63		30	Main Campus
2539	PHYS	1120	421	B	13668	0	General Physics 2	REC	02:00 PM - 02:50 PM	T	DUAN G2B64		30	Main Campus
2540	PHYS	1120	422	B	20152	0	General Physics 2	REC	03:00 PM - 03:50 PM	T	DUAN G2B60		30	Main Campus
2541	PHYS	1120	423	B	20294	0	General Physics 2	REC	03:00 PM - 03:50 PM	T	DUAN G2B63		30	Main Campus
2542	PHYS	1120	424	B	20662	0	General Physics 2	REC	03:00 PM - 03:50 PM	T	DUAN G2B64		30	Main Campus
2543	PHYS	1120	425	B	20663	0	General Physics 2	REC	04:00 PM - 04:50 PM	T	DUAN G2B60		30	Main Campus
2544	PHYS	1140	100	B	13676	1	Experimental Physics 1	LEC	04:00 PM - 04:50 PM	M	DUAN G1B30	Pollock,Steven J	304	Main Campus
2545	PHYS	1140	200	B	13799	1	Experimental Physics 1	LEC	04:00 PM - 04:50 PM	T	DUAN G1B30	Pollock,Steven J	304	Main Campus
2546	PHYS	1140	301	B	13679	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	T	DUAN G2B75		16	Main Campus
2547	PHYS	1140	302	B	13680	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	T	DUAN G2B73		16	Main Campus
2548	PHYS	1140	303	B	13681	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	T	DUAN G2B75		16	Main Campus
2549	PHYS	1140	304	B	13682	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	T	DUAN G2B73		16	Main Campus
2550	PHYS	1140	305	B	13688	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	T	DUAN G2B75		16	Main Campus
2551	PHYS	1140	306	B	13689	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	T	DUAN G2B73		16	Main Campus
2552	PHYS	1140	307	B	13691	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	T	DUAN G2B75		16	Main Campus
2553	PHYS	1140	308	B	13692	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	T	DUAN G2B73		16	Main Campus
2554	PHYS	1140	309	B	13693	0	Experimental Physics 1	LAB	04:00 PM - 05:50 PM	T	DUAN G2B75		16	Main Campus
2555	PHYS	1140	310	B	13694	0	Experimental Physics 1	LAB	04:00 PM - 05:50 PM	T	DUAN G2B73		16	Main Campus
2556	PHYS	1140	311	B	13695	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	W	DUAN G2B75		16	Main Campus
2557	PHYS	1140	312	B	13800	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	W	DUAN G2B73		16	Main Campus
2558	PHYS	1140	313	B	13801	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	W	DUAN G2B75		16	Main Campus
2559	PHYS	1140	314	B	13802	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	W	DUAN G2B73		16	Main Campus
2560	PHYS	1140	315	B	13803	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	W	DUAN G2B75		16	Main Campus
2561	PHYS	1140	316	B	13804	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	W	DUAN G2B73		16	Main Campus
2562	PHYS	1140	317	B	13805	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	W	DUAN G2B75		16	Main Campus
2563	PHYS	1140	318	B	13806	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	W	DUAN G2B73		16	Main Campus
2564	PHYS	1140	319	B	13807	0	Experimental Physics 1	LAB	04:00 PM - 05:50 PM	W	DUAN G2B75		16	Main Campus
2565	PHYS	1140	320	B	13808	0	Experimental Physics 1	LAB	04:00 PM - 05:50 PM	W	DUAN G2B73		16	Main Campus
2566	PHYS	1140	321	B	13809	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	TH	DUAN G2B75		16	Main Campus
2567	PHYS	1140	322	B	13810	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	TH	DUAN G2B73		16	Main Campus
2568	PHYS	1140	323	B	19505	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	TH	DUAN G2B75		16	Main Campus
2569	PHYS	1140	324	B	19506	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	TH	DUAN G2B73		16	Main Campus
2570	PHYS	1140	325	B	20295	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	TH	DUAN G2B75		16	Main Campus
2571	PHYS	1140	326	B	20694	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	TH	DUAN G2B73		16	Main Campus
2572	PHYS	1140	327	B	20695	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	TH	DUAN G2B75		16	Main Campus
2573	PHYS	1140	328	B	20696	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	TH	DUAN G2B73		16	Main Campus
2574	PHYS	1140	329	B	20813	0	Experimental Physics 1	LAB	04:00 PM - 05:50 PM	TH	DUAN G2B75		16	Main Campus
2575	PHYS	1140	330	B	20814	0	Experimental Physics 1	LAB	04:00 PM - 05:50 PM	TH	DUAN G2B73		16	Main Campus
2576	PHYS	1140	331	B	20815	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	F	DUAN G2B75		16	Main Campus
2577	PHYS	1140	332	B	20816	0	Experimental Physics 1	LAB	08:00 AM - 09:50 AM	F	DUAN G2B73		16	Main Campus
2578	PHYS	1140	333	B	20817	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	F	DUAN G2B75		16	Main Campus
2579	PHYS	1140	334	B	20818	0	Experimental Physics 1	LAB	10:00 AM - 11:50 AM	F	DUAN G2B73		16	Main Campus
2580	PHYS	1140	335	B	20819	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	F	DUAN G2B75		16	Main Campus
2581	PHYS	1140	336	B	20820	0	Experimental Physics 1	LAB	12:00 PM - 01:50 PM	F	DUAN G2B73		16	Main Campus
2582	PHYS	1140	337	B	20821	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	F	DUAN G2B75		16	Main Campus
2583	PHYS	1140	338	B	20822	0	Experimental Physics 1	LAB	02:00 PM - 03:50 PM	F	DUAN G2B73		16	Main Campus
2584	PHYS	1230	1	B	13811	3	Light/Color Nonscientist	LEC	03:30 PM - 04:45 PM	TTH	DUAN G1B20	Maclennan,Joseph E	150	Main Campus
2585	PHYS	1240	1	B	13812	3	Sound and Music	LEC	12:30 PM - 01:45 PM	TTH	DUAN G1B30	Price,John	150	Main Campus
2586	PHYS	1400	801	B	21063	1	Fund of Scientific Inquiry	LEC	05:00 PM - 06:15 PM	TTH	DUAN G2B41		20	Main Campus
2587	PHYS	1400	802	B	21064	1	Fund of Scientific Inquiry	LEC	05:00 PM - 06:15 PM	TTH			20	Main Campus
2588	PHYS	1580	1	B	20689	3	Energy and Interactions	LEC	09:30 AM - 10:45 AM	TTH	EDUC 341	Writer,Jeffrey Hawkins	12	Main Campus
2589	PHYS	1580	2	B	21005	3	Energy and Interactions	LEC	02:00 PM - 03:15 PM	TTH	EDUC 341	Writer,Jeffrey Hawkins	12	Main Campus
2590	PHYS	1580	3	B	21620	3	Energy and Interactions	LEC	03:30 PM - 04:45 PM	TTH	EDUC 341	Writer,Jeffrey Hawkins	12	Main Campus
2591	PHYS	1580	4	B	34368	3	Energy and Interactions	LEC	05:00 PM - 07:30 PM	M	EDUC 341		12	Main Campus
2592	PHYS	2010	100	B	13813	5	General Physics 1	LEC	11:00 AM - 11:50 AM	MWF	DUAN G1B20	West,Colin Gareth	180	Main Campus
2593	PHYS	2010	200	B	13833	5	General Physics 1	LEC	02:00 PM - 02:50 PM	MWF	DUAN G1B30	West,Colin Gareth	276	Main Campus
2594	PHYS	2010	301	B	13815	0	General Physics 1	LAB	08:00 AM - 09:50 AM	T	DUAN G2B83		28	Main Campus
2595	PHYS	2010	302	B	13816	0	General Physics 1	LAB	10:00 AM - 11:50 AM	T	DUAN G2B83		28	Main Campus
2596	PHYS	2010	303	B	13817	0	General Physics 1	LAB	12:00 PM - 01:50 PM	T	DUAN G2B83		28	Main Campus
2597	PHYS	2010	304	B	13818	0	General Physics 1	LAB	02:00 PM - 03:50 PM	T	DUAN G2B83		28	Main Campus
2598	PHYS	2010	305	B	13820	0	General Physics 1	LAB	04:00 PM - 05:50 PM	T	DUAN G2B83		28	Main Campus
2599	PHYS	2010	307	B	13822	0	General Physics 1	LAB	10:00 AM - 11:50 AM	W	DUAN G2B83		28	Main Campus
2600	PHYS	2010	308	B	13823	0	General Physics 1	LAB	12:00 PM - 01:50 PM	W	DUAN G2B83		28	Main Campus
2601	PHYS	2010	309	B	13824	0	General Physics 1	LAB	02:00 PM - 03:50 PM	W	DUAN G2B83		28	Main Campus
2602	PHYS	2010	310	B	13825	0	General Physics 1	LAB	04:00 PM - 05:50 PM	W	DUAN G2B83		28	Main Campus
2603	PHYS	2010	311	B	13827	0	General Physics 1	LAB	08:00 AM - 09:50 AM	TH	DUAN G2B83		28	Main Campus
2604	PHYS	2010	312	B	13828	0	General Physics 1	LAB	10:00 AM - 11:50 AM	TH	DUAN G2B83		28	Main Campus
2605	PHYS	2010	313	B	13829	0	General Physics 1	LAB	12:00 PM - 01:50 PM	TH	DUAN G2B83		28	Main Campus
2606	PHYS	2010	314	B	13830	0	General Physics 1	LAB	02:00 PM - 03:50 PM	TH	DUAN G2B83		28	Main Campus
2607	PHYS	2010	315	B	19467	0	General Physics 1	LAB	04:00 PM - 05:50 PM	TH	DUAN G2B83		28	Main Campus
2608	PHYS	2010	317	B	19981	0	General Physics 1	LAB	10:00 AM - 11:50 AM	F	DUAN G2B83		28	Main Campus
2609	PHYS	2010	318	B	20155	0	General Physics 1	LAB	12:00 PM - 01:50 PM	F	DUAN G2B83		8	Main Campus
2610	PHYS	2010	319	B	20823	0	General Physics 1	LAB	02:00 PM - 03:50 PM	F	DUAN G2B83		28	Main Campus
2611	PHYS	2020	100	B	13860	5	General Physics 2	LEC	03:00 PM - 03:50 PM	MWF	DUAN G1B20	Nagle,James L	168	Main Campus
2612	PHYS	2020	101	B	13861	5	General Physics 2	LAB	10:00 AM - 11:50 AM	T	DUAN G2B88		28	Main Campus
2613	PHYS	2020	102	B	13862	5	General Physics 2	LAB	12:00 PM - 01:50 PM	T	DUAN G2B88		28	Main Campus
2614	PHYS	2020	103	B	13863	5	General Physics 2	LAB	02:00 PM - 03:50 PM	T	DUAN G2B88		28	Main Campus
2615	PHYS	2020	104	B	13864	5	General Physics 2	LAB	12:00 PM - 01:50 PM	W	DUAN G2B88		28	Main Campus
2616	PHYS	2020	105	B	13865	5	General Physics 2	LAB	12:00 PM - 01:50 PM	TH	DUAN G2B88		28	Main Campus
2617	PHYS	2020	106	B	13866	5	General Physics 2	LAB	02:00 PM - 03:50 PM	TH	DUAN G2B88		28	Main Campus
2618	PHYS	2130	1	B	13867	3	General Physics 3	LEC	03:30 PM - 04:45 PM	TTH	DUAN G130	Finkelstein,Noah D	115	Main Campus
2619	PHYS	2150	100	B	13868	1	Experimental Physics 2	LEC	04:00 PM - 04:50 PM	M	DUAN G1B20	Ulmer,Keith Arthur	160	Main Campus
2620	PHYS	2150	101	B	13869	1	Experimental Physics 2	LAB	10:00 AM - 11:50 AM	T	DUAN G2B77	Ulmer,Keith Arthur	16	Main Campus
2621	PHYS	2150	102	B	13870	1	Experimental Physics 2	LAB	10:00 AM - 11:50 AM	T	DUAN G2B87	Ulmer,Keith Arthur	16	Main Campus
2622	PHYS	2150	103	B	13871	1	Experimental Physics 2	LAB	01:00 PM - 02:50 PM	T	DUAN G2B77	Ulmer,Keith Arthur	16	Main Campus
2623	PHYS	2150	104	B	20419	1	Experimental Physics 2	LAB	01:00 PM - 02:50 PM	T	DUAN G2B87	Ulmer,Keith Arthur	16	Main Campus
2624	PHYS	2150	105	B	20697	1	Experimental Physics 2	LAB	03:00 PM - 04:50 PM	T	DUAN G2B77	Ulmer,Keith Arthur	16	Main Campus
2625	PHYS	2150	106	B	21697	1	Experimental Physics 2	LAB	03:00 PM - 04:50 PM	T	DUAN G2B87	Ulmer,Keith Arthur	16	Main Campus
2626	PHYS	2150	107	B	21936	1	Experimental Physics 2	LAB	10:00 AM - 11:50 AM	TH	DUAN G2B77	Ulmer,Keith Arthur	16	Main Campus
2627	PHYS	2150	108	B	21937	1	Experimental Physics 2	LAB	10:00 AM - 11:50 AM	TH	DUAN G2B87	Ulmer,Keith Arthur	16	Main Campus
2628	PHYS	2150	109	B	21938	1	Experimental Physics 2	LAB	01:00 PM - 02:50 PM	TH	DUAN G2B77	Ulmer,Keith Arthur	16	Main Campus
2629	PHYS	2150	110	B	21939	1	Experimental Physics 2	LAB	01:00 PM - 02:50 PM	TH	DUAN G2B87	Ulmer,Keith Arthur	16	Main Campus
2630	PHYS	2170	1	B	13872	3	Foundations Mod Physics	LEC	12:00 PM - 12:50 PM	MWF	DUAN G1B20	Nandkishore,Rahul Mahajan	100	Main Campus
2631	PHYS	2170	1	B	13872	3	Foundations Mod Physics	LEC	12:00 PM - 12:50 PM	MWF	DUAN G1B20	Hough,Loren Evan	100	Main Campus
2632	PHYS	2170	2	B	22496	3	Foundations Mod Physics	LEC	03:00 PM - 03:50 PM	MWF	DUAN G130	Hough,Loren Evan	100	Main Campus
2633	PHYS	2170	2	B	22496	3	Foundations Mod Physics	LEC	03:00 PM - 03:50 PM	MWF	DUAN G130	Nandkishore,Rahul Mahajan	100	Main Campus
2634	PHYS	2210	1	B	13873	3	Class Mech & Math Meth 1	LEC	10:00 AM - 10:50 AM	MWF	DUAN G130	Marino,Alysia Diane	100	Main Campus
2635	PHYS	2600	1	B	22351	3	Scientific Computing	LEC	02:00 PM - 03:15 PM	TTH	DUAN G2B47	Parker,Scott E	40	Main Campus
2636	PHYS	3050	1	B	20280	3	Writing in Physics	LEC	03:30 PM - 04:45 PM	TTH	DUAN G2B41	Wilkerson,Donald H	16	Main Campus
2637	PHYS	3050	2	B	21887	3	Writing in Physics	LEC	03:00 PM - 04:15 PM	MW	DUAN G1B25	Wilkerson,Donald H	16	Main Campus
2638	PHYS	3070	1	B	14270	3	Energy & the Environment	LEC	09:00 AM - 09:50 AM	MWF	DUAN G125	Wagner,Stephen R	20	Main Campus
2639	PHYS	3210	1	B	14267	3	Class Mech & Math Meth 2	LEC	12:00 PM - 12:50 PM	MWF	DUAN G130	Bohn,John	80	Main Campus
2640	PHYS	3210	1	B	14267	3	Class Mech & Math Meth 2	LEC	12:00 PM - 12:50 PM	MWF	DUAN G130	Rogers,Charles	80	Main Campus
2641	PHYS	3210	2	B	33165	3	Class Mech & Math Meth 2	LEC	11:00 AM - 11:50 AM	MWF	DUAN G131	Rogers,Charles	45	Main Campus
2642	PHYS	3210	2	B	33165	3	Class Mech & Math Meth 2	LEC	11:00 AM - 11:50 AM	MWF	DUAN G131	Bohn,John	45	Main Campus
2643	PHYS	3220	1	B	14268	3	Quantum Mechanics 1	LEC	02:00 PM - 02:50 PM	MWF	DUAN G130	Perepelitsa,Dennis	75	Main Campus
2644	PHYS	3221	1	B	21365	1	Quantum 1 Tutorial Pract	PRA	03:00 PM - 03:50 PM	F	DUAN G1B25		60	Main Campus
2645	PHYS	3310	1	B	14269	3	Prin Elec-Magnetism 1	LEC	01:00 PM - 01:50 PM	MWF	DUAN G2B47	Horanyi,Mihaly	45	Main Campus
2646	PHYS	3310	1	B	14269	3	Prin Elec-Magnetism 1	LEC	01:00 PM - 01:50 PM	MWF	DUAN G2B47	Calkins,Michael Andrew	45	Main Campus
2647	PHYS	3310	2	B	22141	3	Prin Elec-Magnetism 1	LEC	10:00 AM - 10:50 AM	MWF	DUAN G125	Horanyi,Mihaly	60	Main Campus
2648	PHYS	3310	2	B	22141	3	Prin Elec-Magnetism 1	LEC	10:00 AM - 10:50 AM	MWF	DUAN G125	Calkins,Michael Andrew	60	Main Campus
2649	PHYS	3320	1	B	14272	3	Prin Elec-Magnetism 2	LEC	01:00 PM - 01:50 PM	MWF	DUAN G130	Munsat,Tobin Leo	85	Main Campus
2650	PHYS	3330	100	B	14273	2	Electronics Physical Sciences	LEC	01:00 PM - 01:50 PM	TTH	DUAN G125	Reznik,Dmitry	54	Main Campus
2651	PHYS	3330	100	B	14273	2	Electronics Physical Sciences	LEC	01:00 PM - 01:50 PM	TTH	DUAN G125	Clark,Noel A	54	Main Campus
2652	PHYS	3330	100	B	14273	2	Electronics Physical Sciences	LEC	01:00 PM - 01:50 PM	TTH	DUAN G125	Zimmerman,Eric	54	Main Campus
2653	PHYS	3330	101	B	14274	2	Electronics Physical Sciences	LAB	02:00 PM - 04:50 PM	T	DUAN G230		18	Main Campus
2654	PHYS	3330	102	B	14275	2	Electronics Physical Sciences	LAB	09:00 AM - 11:50 AM	TH	DUAN G230		18	Main Campus
2655	PHYS	3330	103	B	14276	2	Electronics Physical Sciences	LAB	02:00 PM - 04:50 PM	TH	DUAN G230		18	Main Campus
2656	PHYS	4150	1	B	14277	3	Plasma Physics	LEC	03:30 PM - 04:45 PM	TTH	DUAN G131	Kempf,Sascha	45	Main Campus
2657	PHYS	4230	1	B	14279	3	Thermodynam Stat Mech	LEC	11:00 AM - 11:50 AM	MWF	DUAN G125	Wilcox,Bethany Rae	60	Main Campus
2658	PHYS	4410	1	B	19932	3	Quantum Mechanics 2	LEC	03:00 PM - 03:50 PM	MWF	EKLC E1B20	Becker,Andreas	60	Main Campus
2659	PHYS	4430	100	B	20472	3	Advanced Laboratory	LEC	09:00 AM - 09:50 AM	TTH	DUAN G214	Lee,Minhyea	12	Main Campus
2660	PHYS	4430	101	B	20473	3	Advanced Laboratory	LAB	10:00 AM - 12:50 PM	T	DUAN G214	Lee,Minhyea	12	Main Campus
2661	PHYS	4510	1	B	14282	3	Optics	LEC	02:00 PM - 03:15 PM	TTH	DUAN G131	Milic,Ivan	30	Main Campus
2662	PHYS	5030	1	B	14424	3	Intermed Math Physics 1	LEC	02:00 PM - 02:50 PM	MWF	DUAN G2B21	Hermele,Michael Aaron	20	Main Campus
2663	PHYS	5160	1	B	14425	3	Laser Fundmentals	LEC	11:00 AM - 12:15 PM	TTH	DUAN G2B47	Schibli,Thomas Richard	30	Main Campus
2664	PHYS	5210	1	B	14426	3	Theoretical Mechanics	LEC	10:00 AM - 10:50 AM	MWF	DUAN G2B60	Hasenfratz,Anna	30	Main Campus
2665	PHYS	5250	1	B	14427	3	Intro/Quantum Mechanic 1	LEC	03:00 PM - 03:50 PM	MWF	DUAN G125	Neil,Ethan	60	Main Campus
2666	PHYS	5430	100	B	20474	3	Advanced Laboratory	LEC	09:00 AM - 09:50 AM	TTH	DUAN G214	Lee,Minhyea	0	Main Campus
2667	PHYS	5430	101	B	20475	3	Advanced Laboratory	LAB	10:00 AM - 12:50 PM	T	DUAN G214	Lee,Minhyea	0	Main Campus
2668	PHYS	6610	1	B	22507	3	Earth and Planetary Physics 1	LEC	-				12	Main Campus
2669	PHYS	6650	2	B	21874	1-3	Seminar in Geophysics	SEM	-			Sheehan,Anne F	20	Main Campus
2670	PHYS	6650	3	B	21881	1-3	Seminar in Geophysics	SEM	-				20	Main Campus
2671	PHYS	6655	810	B	22816	3	InSAR Analysis	LEC	-				10	Main Campus
2672	PHYS	6655	811	B	22820	3	InSAR Analysis	LAB	-				10	Main Campus
2673	PHYS	7240	1	B	35089	3	Adv Stat Mechanics	LEC	02:00 PM - 03:15 PM	TTH	DUAN G2B41	Radzihovsky,Leo	23	Main Campus
2674	PHYS	7270	1	B	14428	3	Intro/Quantum Mechanic 3	LEC	11:00 AM - 11:50 AM	MWF	DUAN G2B60	DeWolfe,Oliver M	35	Main Campus
2675	PHYS	7310	1	B	14429	3	Electromagnetic Theory 1	LEC	01:00 PM - 01:50 PM	MWF	DUAN G125	Degrand,Thomas A	65	Main Campus
2676	PHYS	7430	1	B	36269	3	Soft Cond Matter Physics	LEC	03:30 PM - 04:45 PM	TTH	DUAN G1B25	Smalyukh,Ivan I	15	Main Campus
2677	PHYS	7450	1	B	22506	3	Theory of Solid State 2	LEC	02:00 PM - 02:50 PM	MWF			20	Main Campus
2678	PHYS	7560	1	B	35090	3	Quantum Optics	LEC	11:00 AM - 12:15 PM	TTH	DUAN G1B27		23	Main Campus
2679	PHYS	7570	1	B	36202	3	Quantum Info and Computing	LEC	09:30 AM - 10:45 AM	TTH	DUAN G2B41	Smith,Graeme Stewart Baird	30	Main Campus
2680	PHYS	7810	3	B	22478	3	Special Topics in Physics	LEC	11:00 AM - 12:15 PM	TTH	DUAN G2B41	Nesbitt,David John	25	Main Campus
2681	PSCI	1101	1	B	21615	3	Intro to American Politics	LEC	10:00 AM - 10:50 AM	MWF	MUEN E417	Baird,Vanessa	45	Main Campus
2682	PSCI	1101	100	B	14186	3	Intro to American Politics	LEC	09:30 AM - 10:20 AM	TTH	MATH 100	Griffin,John David	420	Main Campus
2683	PSCI	1101	101	B	14192	3	Intro to American Politics	REC	11:00 AM - 11:50 AM	W	CLRE 209	Griffin,John David	30	Main Campus
2684	PSCI	1101	102	B	14196	3	Intro to American Politics	REC	09:00 AM - 09:50 AM	W	MCOL E186	Griffin,John David	30	Main Campus
2685	PSCI	1101	103	B	14197	3	Intro to American Politics	REC	10:00 AM - 10:50 AM	M	RAMY N1B31	Griffin,John David	30	Main Campus
2686	PSCI	1101	104	B	14198	3	Intro to American Politics	REC	11:00 AM - 11:50 AM	M	HALE 260	Griffin,John David	30	Main Campus
2687	PSCI	1101	105	B	14199	3	Intro to American Politics	REC	09:00 AM - 09:50 AM	M	RAMY N1B31	Griffin,John David	30	Main Campus
2688	PSCI	1101	106	B	14200	3	Intro to American Politics	REC	10:00 AM - 10:50 AM	M	MUEN E064	Griffin,John David	30	Main Campus
2689	PSCI	1101	107	B	14201	3	Intro to American Politics	REC	08:00 AM - 08:50 AM	T	HLMS 251	Griffin,John David	30	Main Campus
2690	PSCI	1101	108	B	14202	3	Intro to American Politics	REC	08:00 AM - 08:50 AM	TH	MCOL E186	Griffin,John David	30	Main Campus
2691	PSCI	1101	109	B	14203	3	Intro to American Politics	REC	11:00 AM - 11:50 AM	T	EKLC E1B50	Griffin,John David	30	Main Campus
2906	PSYC	6911	803	B	16856	1-3	Research Practicum	PRA	-	TBA		Willcutt,Erik G	50	Main Campus
2692	PSCI	1101	110	B	14204	3	Intro to American Politics	REC	12:00 PM - 12:50 PM	M	HALE 260	Griffin,John David	30	Main Campus
2693	PSCI	1101	111	B	14205	3	Intro to American Politics	REC	01:00 PM - 01:50 PM	W	EKLC E1B50	Griffin,John David	30	Main Campus
2694	PSCI	1101	112	B	14206	3	Intro to American Politics	REC	01:00 PM - 01:50 PM	M	GUGG 206	Griffin,John David	30	Main Campus
2695	PSCI	1101	113	B	14207	3	Intro to American Politics	REC	12:00 PM - 12:50 PM	W	EKLC E1B50	Griffin,John David	30	Main Campus
2696	PSCI	1101	114	B	14208	3	Intro to American Politics	REC	03:00 PM - 03:50 PM	TH	EKLC E1B50	Griffin,John David	30	Main Campus
2697	PSCI	1101	880	B	20357	3	Intro to American Politics	LEC	02:00 PM - 02:50 PM	MWF	LIBR M498	Donavan,Janet Lynn	7	Main Campus
2698	PSCI	2004	10	B	14447	3	Survy/Westrn Pol Thought	LEC	11:00 AM - 11:50 AM	TTH	HUMN 1B50	Malloy,Tamar	240	Main Campus
2699	PSCI	2004	11	B	20358	3	Survy/Westrn Pol Thought	REC	09:00 AM - 09:50 AM	M	GUGG 206	Malloy,Tamar	30	Main Campus
2700	PSCI	2004	12	B	19996	3	Survy/Westrn Pol Thought	REC	04:00 PM - 04:50 PM	T	ECCR 151	Malloy,Tamar	30	Main Campus
2701	PSCI	2004	13	B	14451	3	Survy/Westrn Pol Thought	REC	05:00 PM - 05:50 PM	M	ECON 13	Malloy,Tamar	30	Main Campus
2702	PSCI	2004	14	B	14452	3	Survy/Westrn Pol Thought	REC	02:00 PM - 02:50 PM	W	RAMY N1B31	Malloy,Tamar	30	Main Campus
2703	PSCI	2004	15	B	14453	3	Survy/Westrn Pol Thought	REC	01:00 PM - 01:50 PM	M	GUGG 2	Malloy,Tamar	30	Main Campus
2704	PSCI	2004	16	B	20758	3	Survy/Westrn Pol Thought	REC	09:00 AM - 09:50 AM	M	CLRE 302	Malloy,Tamar	30	Main Campus
2705	PSCI	2004	17	B	19997	3	Survy/Westrn Pol Thought	REC	10:00 AM - 10:50 AM	T	CLRE 209	Malloy,Tamar	30	Main Campus
2706	PSCI	2004	18	B	21557	3	Survy/Westrn Pol Thought	REC	04:00 PM - 04:50 PM	M	STAD 140	Malloy,Tamar	30	Main Campus
2707	PSCI	2012	100	B	14366	3	Intro/Compar Politics	LEC	10:00 AM - 10:50 AM	MW	MATH 100	Jupille,Joseph H	420	Main Campus
2708	PSCI	2012	101	B	14370	3	Intro/Compar Politics	REC	09:00 AM - 09:50 AM	M	HALE 260	Jupille,Joseph H	30	Main Campus
2709	PSCI	2012	102	B	14373	3	Intro/Compar Politics	REC	01:00 PM - 01:50 PM	M	ECON 13	Jupille,Joseph H	30	Main Campus
2710	PSCI	2012	103	B	14375	3	Intro/Compar Politics	REC	11:00 AM - 11:50 AM	M	MCOL E155	Jupille,Joseph H	30	Main Campus
2711	PSCI	2012	104	B	14376	3	Intro/Compar Politics	REC	09:00 AM - 09:50 AM	W	HALE 260	Jupille,Joseph H	30	Main Campus
2712	PSCI	2012	105	B	14382	3	Intro/Compar Politics	REC	12:00 PM - 12:50 PM	W	CLRE 302	Jupille,Joseph H	30	Main Campus
2713	PSCI	2012	106	B	21561	3	Intro/Compar Politics	REC	11:00 AM - 11:50 AM	W	HALE 260	Jupille,Joseph H	30	Main Campus
2714	PSCI	2012	107	B	21562	3	Intro/Compar Politics	REC	04:00 PM - 04:50 PM	M	CLRE 208	Jupille,Joseph H	30	Main Campus
2715	PSCI	2012	108	B	14383	3	Intro/Compar Politics	REC	12:00 PM - 12:50 PM	W	HALE 260	Jupille,Joseph H	30	Main Campus
2716	PSCI	2012	109	B	14385	3	Intro/Compar Politics	REC	12:00 PM - 12:50 PM	M	HLMS 141	Jupille,Joseph H	30	Main Campus
2717	PSCI	2012	110	B	14387	3	Intro/Compar Politics	REC	12:00 PM - 12:50 PM	F	ENVD 120	Jupille,Joseph H	30	Main Campus
2718	PSCI	2012	111	B	14389	3	Intro/Compar Politics	REC	02:00 PM - 02:50 PM	W		Jupille,Joseph H	0	Main Campus
2719	PSCI	2012	112	B	14391	3	Intro/Compar Politics	REC	10:00 AM - 10:50 AM	F	MUEN E064	Jupille,Joseph H	30	Main Campus
2720	PSCI	2012	113	B	14392	3	Intro/Compar Politics	REC	02:00 PM - 02:50 PM	TH		Jupille,Joseph H	0	Main Campus
2721	PSCI	2012	114	B	14393	3	Intro/Compar Politics	REC	02:00 PM - 02:50 PM	M	ECON 205	Jupille,Joseph H	30	Main Campus
2722	PSCI	2075	10	B	19948	3	Quant Research Methods	LEC	12:00 PM - 12:50 PM	MW	VAC 1B20	Sokhey,Anand	195	Main Campus
2723	PSCI	2075	11	B	19998	3	Quant Research Methods	REC	11:00 AM - 11:50 AM	M	RAMY N1B31	Sokhey,Anand	25	Main Campus
2724	PSCI	2075	12	B	19999	3	Quant Research Methods	REC	11:00 AM - 11:50 AM	W	HLMS 181	Sokhey,Anand	25	Main Campus
2725	PSCI	2075	13	B	20241	3	Quant Research Methods	REC	12:00 PM - 12:50 PM	F	HLMS 141	Sokhey,Anand	25	Main Campus
2726	PSCI	2075	14	B	20311	3	Quant Research Methods	REC	03:00 PM - 03:50 PM	W	MUEN E417	Sokhey,Anand	24	Main Campus
2727	PSCI	2075	15	B	20000	3	Quant Research Methods	REC	11:00 AM - 11:50 AM	M	ECON 13	Sokhey,Anand	24	Main Campus
2728	PSCI	2075	16	B	20001	3	Quant Research Methods	REC	04:00 PM - 04:50 PM	M	CLRE 209	Sokhey,Anand	24	Main Campus
2729	PSCI	2075	17	B	21356	3	Quant Research Methods	REC	10:00 AM - 10:50 AM	M	ECON 205	Sokhey,Anand	24	Main Campus
2730	PSCI	2075	18	B	21357	3	Quant Research Methods	REC	04:30 PM - 05:20 PM	M	ECCR 155	Sokhey,Anand	24	Main Campus
2731	PSCI	2106	2	B	34944	3	Intr/Public Policy Analy	LEC	02:00 PM - 03:15 PM	TTH	HUMN 135		74	Main Campus
2732	PSCI	2106	880	B	32867	3	Intr/Public Policy Analy	LEC	10:00 AM - 10:50 AM	MWF	LIBR M300D	Bickers,Kenneth Norman	7	Main Campus
2733	PSCI	2116	2	B	35055	3	Intro Environmental Policy	LEC	03:30 PM - 04:45 PM	TTH	HUMN 135		0	Main Campus
2734	PSCI	2223	100	B	14409	3	Intro International Relations	LEC	09:00 AM - 09:50 AM	MW	MATH 100	Aydin,Aysegul	420	Main Campus
2735	PSCI	2223	101	B	14410	3	Intro International Relations	REC	01:00 PM - 01:50 PM	W	MUEN E432	Aydin,Aysegul	30	Main Campus
2736	PSCI	2223	102	B	14411	3	Intro International Relations	REC	10:00 AM - 10:50 AM	M	GUGG 206	Aydin,Aysegul	30	Main Campus
2737	PSCI	2223	103	B	14412	3	Intro International Relations	REC	01:00 PM - 01:50 PM	F	MUEN E432	Aydin,Aysegul	30	Main Campus
2738	PSCI	2223	104	B	14413	3	Intro International Relations	REC	10:00 AM - 10:50 AM	W	RAMY N1B75	Aydin,Aysegul	30	Main Campus
2739	PSCI	2223	105	B	14414	3	Intro International Relations	REC	11:00 AM - 11:50 AM	W	MUEN E064	Aydin,Aysegul	30	Main Campus
2740	PSCI	2223	106	B	14415	3	Intro International Relations	REC	01:00 PM - 01:50 PM	M	MUEN E432	Aydin,Aysegul	30	Main Campus
2741	PSCI	2223	107	B	14416	3	Intro International Relations	REC	03:00 PM - 03:50 PM	M	HLMS 263	Aydin,Aysegul	30	Main Campus
2742	PSCI	2223	108	B	21563	3	Intro International Relations	REC	12:00 PM - 12:50 PM	W	HLMS 141	Aydin,Aysegul	30	Main Campus
2743	PSCI	2223	109	B	14417	3	Intro International Relations	REC	11:00 AM - 11:50 AM	M	MUEN E064	Aydin,Aysegul	30	Main Campus
2744	PSCI	2223	110	B	14418	3	Intro International Relations	REC	12:00 PM - 12:50 PM	M	GUGG 206	Aydin,Aysegul	30	Main Campus
2745	PSCI	2223	111	B	21564	3	Intro International Relations	REC	08:00 AM - 08:50 AM	M	KTCH 1B60	Aydin,Aysegul	30	Main Campus
2746	PSCI	2223	112	B	20546	3	Intro International Relations	REC	09:00 AM - 09:50 AM	F	CLRE 301	Aydin,Aysegul	30	Main Campus
2747	PSCI	2223	113	B	33087	3	Intro International Relations	REC	12:00 PM - 12:50 PM	T	ECCR 1B55	Aydin,Aysegul	30	Main Campus
2748	PSCI	2223	114	B	33088	3	Intro International Relations	REC	01:00 PM - 01:50 PM	W	MUEN E064	Aydin,Aysegul	30	Main Campus
2749	PSCI	3011	1	B	14215	3	Amer Pres and Exec Branch	LEC	09:30 AM - 10:45 AM	TTH	HUMN 250	Parinandi,Srinivas C	90	Main Campus
2750	PSCI	3021	1	B	20616	3	US Campaigns & Elections	LEC	01:00 PM - 01:50 PM	MWF	HLMS 141	Bickers,Kenneth Norman	45	Main Campus
2751	PSCI	3031	2	B	34553	3	Pol Parties/Intrest Grps	LEC	09:30 AM - 10:45 AM	TTH	HLMS 267	Billica,Nancy	49	Main Campus
2752	PSCI	3041	1	B	21164	3	The American Congress	LEC	11:00 AM - 11:50 AM	MWF	RAMY N1B23		80	Main Campus
2753	PSCI	3054	1	B	18695	3	American Politcl Thought	LEC	09:00 AM - 09:50 AM	MWF	HLMS 141	Donavan,Janet Lynn	48	Main Campus
2754	PSCI	3062	1	B	20035	3	Revolut & Polit Violence	LEC	10:00 AM - 10:50 AM	MWF	EDUC 220	Young,Gregory Denton	88	Main Campus
2755	PSCI	3075	1	B	34528	3	Applied Political Sci Research	LEC	12:00 PM - 12:50 PM	MWF	HUMN 250		49	Main Campus
2756	PSCI	3092	1	B	33059	3	Comparative Political Economy	LEC	10:00 AM - 10:50 AM	MWF	HLMS 141	Derderyan,Svetoslav	49	Main Campus
2757	PSCI	3102	1	B	33190	3	South Asian Politics	LEC	04:00 PM - 05:15 PM	MW	HLMS 211		45	Main Campus
2758	PSCI	3123	1	B	19448	3	War/Peace/Strat Defense	LEC	01:00 PM - 01:50 PM	MWF	HLMS 199	Tir,Jaroslav	80	Main Campus
2759	PSCI	3143	1	B	14419	3	Current Affairs in Inter Relat	LEC	09:30 AM - 10:45 AM	TTH	HUMN 135	Connell,Brendan James	74	Main Campus
2760	PSCI	3155	2	B	34557	3	Survey Design and Analysis	LEC	02:00 PM - 03:15 PM	TTH	BESC 185	Stapleton,Carey	74	Main Campus
2761	PSCI	3163	2	B	33089	3	American Foreign Policy	LEC	03:30 PM - 04:45 PM	TTH	HLMS 199	Gray,Anna Marie	80	Main Campus
2762	PSCI	3163	550R	B	20003	3	American Foreign Policy	LEC	06:30 PM - 09:00 PM	M	Offered through CU in	Howard,Adam Mark	100	Main Campus
2763	PSCI	3172	1	B	20266	3	Democracy in the US and EU	LEC	11:00 AM - 11:50 AM	MWF	HLMS 211	Derderyan,Svetoslav	49	Main Campus
2764	PSCI	3174	1	B	32866	3	Sex Power Politics: U.S.	SEM	11:00 AM - 12:15 PM	TTH	HUMN 135	Killen,Kimberly	64	Main Campus
2765	PSCI	3191	1	B	20464	3	Nat Securty Org/Polcymkg	LEC	02:00 PM - 02:50 PM	MWF	HLMS 241	Kanner,Michael David	48	Main Campus
2766	PSCI	3193	1	B	21580	3	International Behavior	LEC	09:00 AM - 09:50 AM	MWF	HUMN 135		0	Main Campus
2767	PSCI	3206	1	B	18099	3	Environment/Publ Policy	LEC	12:30 PM - 01:45 PM	TTH	HUMN 250	Billica,Nancy	97	Main Campus
2768	PSCI	3211	1	B	21664	3	Politics and Inequality in US	LEC	10:00 AM - 10:50 AM	MWF	MUEN E432	Donavan,Janet Lynn	47	Main Campus
2769	PSCI	3213	1	B	19556	3	International Political Econ	LEC	04:00 PM - 05:15 PM	MW	HLMS 241	Park,Bora	52	Main Campus
2770	PSCI	3225	1	B	21584	3	Strategy and Politics	LEC	02:00 PM - 02:50 PM	MWF	CLUB 4		48	Main Campus
2771	PSCI	3311	1	B	19671	3	Gender and U.S. Politics	SEM	03:00 PM - 04:15 PM	MW	HLMS 141	Montoya,Celeste Marie	15	Main Campus
2772	PSCI	4002	1	B	19995	3	Western European Politcs	LEC	12:30 PM - 01:45 PM	TTH	RAMY N1B23		0	Main Campus
2773	PSCI	4002	2	B	33090	3	Western European Politcs	LEC	12:00 PM - 12:50 PM	MWF	CLRE 207		0	Main Campus
2774	PSCI	4012	1	B	20978	3	Global Development	LEC	03:30 PM - 04:45 PM	TTH	HALE 230	Velasco Guachalla,Vania Ximena	74	Main Campus
2775	PSCI	4024	2	B	34193	3	Senior Sem: Political Theory	SEM	03:30 PM - 04:45 PM	TTH	HLMS 241		40	Main Campus
2776	PSCI	4028	2	B	34194	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	HLMS 141		40	Main Campus
2777	PSCI	4173	1	B	22030	3	International Cooperation	LEC	01:00 PM - 01:50 PM	MWF	MUEN E431	Park,Bora	47	Main Campus
2778	PSCI	4173	2	B	36311	3	International Cooperation	LEC	03:30 PM - 04:45 PM	TTH			46	Main Campus
2779	PSCI	4241	1	B	34529	3	Constitutional Law	LEC	11:00 AM - 11:50 AM	MWF	MUEN E431	Baird,Vanessa	47	Main Campus
2780	PSCI	4242	1	B	34554	3	Middle Eastern Politics	LEC	01:00 PM - 01:50 PM	MWF	HLMS 241	Young,Gregory Denton	52	Main Campus
2781	PSCI	4341	1	B	22302	3	Media and Politics	LEC	01:00 PM - 01:50 PM	MWF	STAD 140	Donavan,Janet Lynn	46	Main Campus
2782	PSCI	4703	1	B	32865	3	Technology, Society, Future	LEC	03:30 PM - 04:45 PM	TTH	HLMS 211	Steinmo,Sven H	47	Main Campus
2783	PSCI	4715	800	B	14466	3	Honors Political Science Sem	SEM	04:30 PM - 07:00 PM	W	DUAN G1B27	Adler,Edward Scott	19	Main Campus
2784	PSCI	6851	1	B	22830	2	Interdiscipl Soc Sci Prosem	SEM	11:00 AM - 12:00 PM	F	IBS 155B	Sokhey,Anand	15	Main Campus
2785	PSCI	7004	1	B	33054	3	Seminar-Political Theory	SEM	08:30 AM - 11:00 AM	F	KTCH 1B35	Malloy,Tamar	15	Main Campus
2786	PSCI	7008	1	B	21466	1	Teaching Political Science	SEM	02:00 PM - 02:50 PM	W	KTCH 1B31	Sokhey,Sarah Wilson	15	Main Campus
2787	PSCI	7011	1	B	33052	3	Sem-American Politics	SEM	04:45 PM - 07:15 PM	T	KTCH 1B31	Strayhorn,Joshua Aaron	15	Main Campus
2788	PSCI	7022	1	B	33053	3	Sem-Political/Econ Devel	SEM	04:45 PM - 07:15 PM	TH	KTCH 1B31	Boulding,Carew Elizabeth	15	Main Campus
2789	PSCI	7053	1	B	33050	3	War and Peace	SEM	08:30 AM - 11:00 AM	F	KTCH 1B31	Tir,Jaroslav	15	Main Campus
2790	PSCI	7075	1	B	21942	3	Scope and Methods	SEM	02:00 PM - 04:30 PM	T	KTCH 1B31	Sokhey,Anand	15	Main Campus
2791	PSCI	7085	1	B	18335	4	Pol Sci Data Analysis	SEM	03:30 PM - 06:00 PM	W	KTCH 1B31	Baker,Andrew	15	Main Campus
2792	PSCI	7108	3	B	33047	3	Special Topics	SEM	04:45 PM - 07:15 PM	M	KTCH 1B35	Shin,Adrian	15	Main Campus
2793	PSCI	7124	1	B	22245	3	Contemporary Democratic Theory	SEM	08:00 AM - 10:30 AM	F	See Academc Dept	Ferguson,Michaele Lynne	25	Main Campus
2794	PSCI	7131	1	B	36305	3	Political Psychology	SEM	02:00 PM - 04:30 PM	TH		Wolak,Jennifer Lynn	15	Main Campus
2795	PSCI	7165	1	B	36309	3	Experimental Methods	SEM	04:45 PM - 07:15 PM	M	KTCH 1B31	Wolak,Jennifer Lynn	15	Main Campus
2796	PSCI	7172	1	B	36307	3	CP Political Institutions	SEM	02:00 PM - 04:30 PM	M	KTCH 1B31	Sokhey,Sarah Wilson	15	Main Campus
2797	PORT	1010	1	B	14729	5	Beginning Portuguese 1	LEC	01:00 PM - 01:50 PM	M-F	HUMN 180		22	Main Campus
2798	PORT	2110	1	B	14730	3	Second-Year Portuguese 1	LEC	03:00 PM - 03:50 PM	MWF	HALE 240		30	Main Campus
2799	PORT	2350	1	B	14731	3	Portuguese Romance Speakers	LEC	02:00 PM - 02:50 PM	MWF	CLRE 211		20	Main Campus
2800	PORT	3003	1	B	22498	3	Adv Portuguese Language Skills	LEC	03:00 PM - 03:50 PM	MWF	EKLC E1B75		22	Main Campus
2801	PORT	3220	1	B	22499	3	Spanish Amer & Brazil Culture	LEC	09:00 AM - 09:50 AM	MWF	ECON 2		22	Main Campus
2802	PORT	4110	1	B	22694	3	Brazilian Literature	LEC	-				20	Main Campus
2803	PORT	5110	1	B	22695	3	Brazilian Literature	LEC	-				10	Main Campus
2804	PSYC	1001	1	B	13647	3	General Psychology	LEC	12:00 PM - 12:50 PM	MWF	MUEN E050	Schwartz,Jennifer A. J.	400	Main Campus
2805	PSYC	1001	2	B	20782	3	General Psychology	LEC	12:30 PM - 01:45 PM	TTH	CHEM 140	Curtis,Ryan	400	Main Campus
2806	PSYC	1001	3	B	14171	3	General Psychology	LEC	02:00 PM - 02:50 PM	MWF	MUEN E050	Pierotti,Chelsea	400	Main Campus
2807	PSYC	1001	4	B	33373	3	General Psychology	LEC	02:00 PM - 02:50 PM	MWF	RAMY C250	Schwartz,Jennifer A. J.	200	Main Campus
2808	PSYC	2012	1	B	14216	3	Biological Psychology	LEC	10:00 AM - 10:50 AM	MWF	ECCR 1B40	Allen,David Lehigh	130	Main Campus
2809	PSYC	2012	2	B	14223	3	Biological Psychology	LEC	01:00 PM - 01:50 PM	MWF	BESC 180	Allen,David Lehigh	169	Main Campus
2810	PSYC	2012	3	B	14224	3	Biological Psychology	LEC	03:30 PM - 04:45 PM	TTH	HUMN 150	Stratford,Jennifer Marie	150	Main Campus
2811	PSYC	2111	100	B	14173	4	Psychological Statistics	LEC	12:30 PM - 01:45 PM	TTH	HLMS 252	Jones,Matthew Carl	132	Main Campus
2812	PSYC	2111	110	B	14174	4	Psychological Statistics	LAB	02:00 PM - 03:50 PM	T	MUEN D346	Jones,Matthew Carl	22	Main Campus
2813	PSYC	2111	111	B	14175	4	Psychological Statistics	LAB	09:00 AM - 10:50 AM	W	MUEN D346	Jones,Matthew Carl	22	Main Campus
2814	PSYC	2111	112	B	14176	4	Psychological Statistics	LAB	11:00 AM - 12:50 PM	W	MUEN D346	Jones,Matthew Carl	22	Main Campus
2815	PSYC	2111	113	B	14178	4	Psychological Statistics	LAB	01:00 PM - 02:50 PM	W	MUEN D346	Jones,Matthew Carl	22	Main Campus
2816	PSYC	2111	113	B	14178	4	Psychological Statistics	LAB	-			Stratford,Jennifer Marie	22	Main Campus
2817	PSYC	2111	114	B	33375	4	Psychological Statistics	LAB	03:00 PM - 04:50 PM	W	MUEN D346	Jones,Matthew Carl	22	Main Campus
2818	PSYC	2111	115	B	33376	4	Psychological Statistics	LAB	09:00 AM - 10:50 AM	TH	MUEN D346	Jones,Matthew Carl	22	Main Campus
2819	PSYC	2111	200	B	14179	4	Psychological Statistics	LEC	11:00 AM - 11:50 AM	MWF	MUEN E0046	Curtis,Ryan	92	Main Campus
2820	PSYC	2111	210	B	14180	4	Psychological Statistics	LAB	12:00 PM - 01:50 PM	W	MUEN E0014	Curtis,Ryan	23	Main Campus
2821	PSYC	2111	211	B	20408	4	Psychological Statistics	LAB	02:00 PM - 03:50 PM	W	MUEN E0014	Curtis,Ryan	23	Main Campus
2822	PSYC	2111	212	B	14181	4	Psychological Statistics	LAB	09:00 AM - 10:50 AM	TH	MUEN E0014	Curtis,Ryan	23	Main Campus
2823	PSYC	2111	213	B	20407	4	Psychological Statistics	LAB	11:00 AM - 12:50 PM	TH	MUEN E0014	Curtis,Ryan	23	Main Campus
2824	PSYC	2111	300	B	14182	4	Psychological Statistics	LEC	02:00 PM - 02:50 PM	MWF	HLMS 199	Stallings,Michael C	92	Main Campus
2825	PSYC	2111	310	B	14183	4	Psychological Statistics	LAB	01:00 PM - 02:50 PM	TH	MUEN E0014	Stallings,Michael C	23	Main Campus
2826	PSYC	2111	311	B	14184	4	Psychological Statistics	LAB	03:00 PM - 04:50 PM	TH	MUEN E0014	Stallings,Michael C	23	Main Campus
2827	PSYC	2111	312	B	21278	4	Psychological Statistics	LAB	09:00 AM - 10:50 AM	F	MUEN E0014	Stallings,Michael C	23	Main Campus
2828	PSYC	2111	313	B	21279	4	Psychological Statistics	LAB	11:00 AM - 12:50 PM	F	MUEN E0014	Stallings,Michael C	23	Main Campus
2829	PSYC	2145	1	B	14403	3	Intro Cognitive Psychology	LEC	02:00 PM - 03:15 PM	TTH	VAC 1B20	Miyake,Akira	190	Main Campus
2830	PSYC	2145	2	B	14404	3	Intro Cognitive Psychology	LEC	11:00 AM - 12:15 PM	TTH	VAC 1B20	Carston,Karli K	195	Main Campus
2831	PSYC	2606	2	B	13703	3	Social Psychology	LEC	12:00 PM - 12:50 PM	MWF	MUEN E0046	King,D Brett	116	Main Campus
2832	PSYC	2606	3	B	13704	3	Social Psychology	LEC	01:00 PM - 01:50 PM	MWF	MUEN E0046	King,D Brett	116	Main Campus
2833	PSYC	2606	4	B	36563	3	Social Psychology	LEC	03:00 PM - 03:50 PM	MWF	MUEN E0046	King,D Brett	116	Main Campus
2834	PSYC	2700	1	B	21261	3	Psyc of Gender and Sexuality	LEC	03:30 PM - 04:45 PM	TTH	MUEN E131		9	Main Campus
2835	PSYC	3102	1	B	14485	3	Behavioral Genetics	LEC	02:00 PM - 03:15 PM	TTH	MUEN E417	Huibregtse,Brooke Marie	45	Main Campus
2836	PSYC	3102	2	B	21749	3	Behavioral Genetics	LEC	12:30 PM - 01:45 PM	TTH	MUEN E417	Carey,Gregory	45	Main Campus
2837	PSYC	3102	3	B	21282	3	Behavioral Genetics	LEC	03:30 PM - 04:45 PM	TTH	DUAN G2B47	Huibregtse,Brooke Marie	45	Main Campus
2838	PSYC	3111	100	B	20398	4	Research Methods in Psychology	LEC	11:00 AM - 12:15 PM	TTH	MUEN E0046	Stratford,Jennifer Marie	90	Main Campus
2839	PSYC	3111	110	B	20409	4	Research Methods in Psychology	LAB	01:00 PM - 02:50 PM	TH	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2840	PSYC	3111	111	B	20410	4	Research Methods in Psychology	LAB	03:00 PM - 04:50 PM	TH	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2841	PSYC	3111	112	B	20951	4	Research Methods in Psychology	LAB	09:00 AM - 10:50 AM	M	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2842	PSYC	3111	113	B	22474	4	Research Methods in Psychology	LAB	11:00 AM - 12:50 PM	M	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2843	PSYC	3111	114	B	20952	4	Research Methods in Psychology	LAB	01:00 PM - 02:50 PM	M	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2844	PSYC	3111	115	B	21991	4	Research Methods in Psychology	LAB	03:00 PM - 04:50 PM	M	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2845	PSYC	3111	200	B	21143	4	Research Methods in Psychology	LEC	02:00 PM - 03:15 PM	TTH	ECCR 200	Curtis,Ryan	90	Main Campus
2846	PSYC	3111	210	B	22473	4	Research Methods in Psychology	LAB	09:00 AM - 10:50 AM	M	MUEN E0014	Curtis,Ryan	15	Main Campus
2847	PSYC	3111	211	B	21248	4	Research Methods in Psychology	LAB	11:00 AM - 12:50 PM	M	MUEN E0014	Curtis,Ryan	15	Main Campus
2848	PSYC	3111	212	B	21750	4	Research Methods in Psychology	LAB	01:00 PM - 02:50 PM	M	MUEN E0014	Curtis,Ryan	15	Main Campus
2849	PSYC	3111	213	B	21249	4	Research Methods in Psychology	LAB	03:00 PM - 04:50 PM	M	MUEN E0014	Curtis,Ryan	15	Main Campus
2850	PSYC	3111	214	B	21250	4	Research Methods in Psychology	LAB	09:00 AM - 10:50 AM	T	MUEN D346	Curtis,Ryan	15	Main Campus
2851	PSYC	3111	215	B	21990	4	Research Methods in Psychology	LAB	11:00 AM - 12:50 PM	T	MUEN D346	Curtis,Ryan	15	Main Campus
2852	PSYC	3111	300	B	21144	4	Research Methods in Psychology	LEC	12:30 PM - 01:45 PM	TTH	MUEN E0046	Stratford,Jennifer Marie	75	Main Campus
2853	PSYC	3111	310	B	21251	4	Research Methods in Psychology	LAB	09:00 AM - 10:50 AM	M	MUEN D346	Stratford,Jennifer Marie	15	Main Campus
2854	PSYC	3111	311	B	21252	4	Research Methods in Psychology	LAB	11:00 AM - 12:50 PM	M	MUEN D346	Stratford,Jennifer Marie	15	Main Campus
2855	PSYC	3111	312	B	21253	4	Research Methods in Psychology	LAB	01:00 PM - 02:50 PM	M	MUEN D346	Stratford,Jennifer Marie	15	Main Campus
2856	PSYC	3111	313	B	22476	4	Research Methods in Psychology	LAB	03:00 PM - 04:50 PM	M	MUEN D346	Stratford,Jennifer Marie	15	Main Campus
2857	PSYC	3111	314	B	22477	4	Research Methods in Psychology	LAB	08:00 AM - 09:50 AM	T	MUEN E311	Stratford,Jennifer Marie	15	Main Campus
2858	PSYC	3131	1	B	34099	3	Human Emotion	LEC	03:30 PM - 06:00 PM	T	MUEN E431	Gruber,June L	45	Main Campus
2859	PSYC	3303	1	B	14405	3	Abnormal Psychology	LEC	09:30 AM - 10:45 AM	TTH	MUEN E0046	Willcutt,Erik G	116	Main Campus
2860	PSYC	3303	2	B	21137	3	Abnormal Psychology	LEC	09:00 AM - 09:50 AM	MWF	HLMS 252	Strife,Samantha	135	Main Campus
2861	PSYC	3303	3	B	20392	3	Abnormal Psychology	LEC	10:00 AM - 10:50 AM	MWF	HLMS 199	Kaufmann,Vyga Genoveva	97	Main Campus
2862	PSYC	3303	4	B	20393	3	Abnormal Psychology	LEC	11:00 AM - 11:50 AM	MWF	HLMS 199	Kaufmann,Vyga Genoveva	97	Main Campus
2863	PSYC	3684	1	B	14406	3	Developmental Psychology	LEC	10:00 AM - 10:50 AM	MWF	MUEN E0046	Pierotti,Chelsea	105	Main Campus
2864	PSYC	3684	2	B	34725	3	Developmental Psychology	LEC	12:00 PM - 12:50 PM	MWF	EDUC 220	Pierotti,Chelsea	103	Main Campus
2865	PSYC	4021	1	B	34102	3	Psyc & Neurscience of Exercise	LEC	12:30 PM - 01:45 PM	TTH	MUEN E432	Allen,David Lehigh	42	Main Campus
2866	PSYC	4114	1	B	13859	3	Adolescent Development	LEC	12:30 PM - 01:45 PM	TTH	EDUC 143		15	Main Campus
2867	PSYC	4114	2	B	21623	3	Adolescent Development	LEC	08:00 AM - 09:15 AM	TTH	EDUC 143		15	Main Campus
2868	PSYC	4114	3	B	21624	3	Adolescent Development	LEC	02:00 PM - 03:15 PM	TTH	MUEN E064		15	Main Campus
2869	PSYC	4145	100	B	21817	4	Advanced Cognitive Psychology	LEC	03:30 PM - 04:45 PM	TTH	MUEN E432	Colunga,Eliana	40	Main Campus
2870	PSYC	4145	110	B	21819	4	Advanced Cognitive Psychology	LAB	09:00 AM - 10:50 AM	F	MUEN E311	Colunga,Eliana	20	Main Campus
2871	PSYC	4145	111	B	21820	4	Advanced Cognitive Psychology	LAB	11:00 AM - 12:50 PM	F	MUEN E311	Colunga,Eliana	20	Main Campus
2872	PSYC	4155	100	B	21299	4	Cogn Neurosci/Neuropsyc	LEC	12:30 PM - 01:45 PM	TTH	MUEN E064	Curran,Timothy	30	Main Campus
2873	PSYC	4155	101	B	21301	4	Cogn Neurosci/Neuropsyc	LAB	01:00 PM - 02:50 PM	W	MUEN E311	Curran,Timothy	15	Main Campus
2874	PSYC	4155	102	B	21302	4	Cogn Neurosci/Neuropsyc	LAB	03:00 PM - 04:50 PM	W	MUEN E311	Curran,Timothy	15	Main Campus
2875	PSYC	4165	100	B	20043	4	Psychology of Perception	LEC	11:00 AM - 12:15 PM	TTH	MUEN E064	Harvey,Lewis Orvis	40	Main Campus
2876	PSYC	4165	101	B	20645	4	Psychology of Perception	LAB	12:30 PM - 03:20 PM	T	MUEN E311	Harvey,Lewis Orvis	20	Main Campus
2877	PSYC	4165	102	B	20646	4	Psychology of Perception	LAB	12:30 PM - 03:20 PM	TH	MUEN D346	Harvey,Lewis Orvis	20	Main Campus
2878	PSYC	4376	100	B	20967	4	Res Methods/Social Psych	LEC	09:30 AM - 10:45 AM	TTH	MUEN E064	Park,Bernadette	40	Main Campus
2879	PSYC	4376	101	B	20968	4	Res Methods/Social Psych	LAB	12:00 PM - 01:50 PM	T	MUEN E0014	Park,Bernadette	20	Main Campus
2880	PSYC	4376	102	B	20969	4	Res Methods/Social Psych	LAB	02:00 PM - 03:50 PM	T	MUEN E0014	Park,Bernadette	20	Main Campus
2881	PSYC	4443	100	B	15399	4	Resch Methods Clinical Psyc	LEC	09:30 AM - 10:45 AM	TTH	MUEN E417	Smutzler,Natalie D	40	Main Campus
2882	PSYC	4443	101	B	21010	4	Resch Methods Clinical Psyc	LAB	09:00 AM - 10:50 AM	F	MUEN D346	Smutzler,Natalie D	20	Main Campus
2883	PSYC	4443	102	B	21011	4	Resch Methods Clinical Psyc	LAB	11:00 AM - 12:50 PM	F	MUEN D346	Smutzler,Natalie D	20	Main Campus
2884	PSYC	4443	200	B	22536	4	Resch Methods Clinical Psyc	LEC	11:00 AM - 12:15 PM	TTH	MUEN E417	Smutzler,Natalie D	40	Main Campus
2885	PSYC	4443	201	B	22540	4	Resch Methods Clinical Psyc	LAB	01:00 PM - 02:50 PM	F	MUEN D346	Smutzler,Natalie D	20	Main Campus
2886	PSYC	4443	202	B	22541	4	Resch Methods Clinical Psyc	LAB	03:00 PM - 04:50 PM	F	MUEN D346	Smutzler,Natalie D	20	Main Campus
2887	PSYC	4541	1	B	20044	3	Special Topics in Psych- SS	LEC	03:00 PM - 05:30 PM	M	MUEN E417	Freedman,Michael R	0	Main Campus
2888	PSYC	4541	2	B	20204	3	Special Topics in Psych- SS	LEC	03:30 PM - 04:45 PM	TTH	HUMN 125	Smutzler,Natalie D	40	Main Campus
2889	PSYC	4541	3	B	22611	3	Special Topics in Psych- SS	LEC	11:00 AM - 12:15 PM	TTH	MUEN E431	Whisman,Mark	40	Main Campus
2890	PSYC	4541	4	B	34762	3	Special Topics in Psych- SS	LEC	03:30 PM - 04:45 PM	TTH	MUEN E417	Rhee,Soo Hyun	40	Main Campus
2891	PSYC	4543	1	B	19538	3	Clinical Neuropsych Disorders	SEM	09:30 AM - 10:45 AM	TTH	MUEN E432	Richardson,Emily	40	Main Campus
2892	PSYC	4553	2	B	19903	3	Women's Mental Health	SEM	02:00 PM - 03:15 PM	TTH	MUEN E431	Pittman-Wagers,Justina	40	Main Campus
2893	PSYC	4560	1	B	22705	3	Language Development	LEC	11:00 AM - 11:50 AM	MWF	SLHS 230	Boerger,Karin Margaret	6	Main Campus
2894	PSYC	4560	2	B	36527	3	Language Development	LEC	10:00 AM - 10:50 AM	MWF	SLHS 230		6	Main Campus
2895	PSYC	5102	1	B	21290	3	Intro to Behavioral Genetics	LEC	02:00 PM - 03:15 PM	TTH	MUEN E317	Carey,Gregory	15	Main Campus
2896	PSYC	5606	801	B	15966	3	Prosem-Soc/Person Psych	SEM	01:00 PM - 03:30 PM	W	MUEN E317	Ito,Tiffany Anne	12	Main Campus
2897	PSYC	5685	801	B	34774	3	Research Methods Proseminar	SEM	02:00 PM - 04:30 PM	W	MUEN D430	Kim,Albert E.	12	Main Campus
2898	PSYC	5741	100	B	15837	4	General Statistics	LEC	03:30 PM - 04:45 PM	TTH	MUEN E113	Pedersen,Eric	20	Main Campus
2899	PSYC	5741	100	B	15837	4	General Statistics	LEC	03:30 PM - 04:45 PM	TTH	MUEN E113	Friedman,Naomi Pauline	20	Main Campus
2900	PSYC	6603	801	B	21919	1	Profl Issues in Clinical Psyc	SEM	12:00 PM - 12:50 PM	M	MUEN E214	Willcutt,Erik G	25	Main Campus
2901	PSYC	6605	1	B	20319	1	Cognitive Psyc Research Update	SEM	12:00 PM - 01:00 PM	M	MUEN D430	Munakata,Yuko	30	Main Campus
2902	PSYC	6606	1	B	15801	1	Professional Issues	SEM	12:00 PM - 12:50 PM	W	MUEN E214	Loersch,Christopher Alan	20	Main Campus
2903	PSYC	6831	2	B	22882	2	Interdiscipl Soc Sci Prosem	SEM	11:00 AM - 12:00 PM	F	IBS 155B	Sokhey,Anand	15	Main Campus
2907	PSYC	6911	804	B	16857	1-3	Research Practicum	PRA	-	TBA		Dimidjian,Sona Armine	50	Main Campus
2908	PSYC	6911	805	B	16858	1-3	Research Practicum	PRA	-	TBA		Kaiser,Roselinde	50	Main Campus
2909	PSYC	6911	806	B	16859	1-3	Research Practicum	PRA	-	TBA		Arch,Joanna	50	Main Campus
2910	PSYC	6911	807	B	16860	1-3	Research Practicum	PRA	-	TBA		Hutchison,Kent Edward	50	Main Campus
2911	PSYC	6911	808	B	19002	1-3	Research Practicum	PRA	-	TBA		Gruber,June L	50	Main Campus
2912	PSYC	6911	809	B	19003	1-3	Research Practicum	PRA	-	TBA		Mittal,Vijay	50	Main Campus
2913	PSYC	6911	810	B	19399	1-3	Research Practicum	PRA	-	TBA			50	Main Campus
2914	PSYC	7102	1	B	34769	3	Sem-Behavioral Genetics	SEM	02:00 PM - 04:30 PM	W	IBG 210	Hewitt,John K	20	Main Campus
2915	PSYC	7102	2	B	34770	3	Sem-Behavioral Genetics	SEM	03:00 PM - 05:30 PM	T	See Academc Dept		20	Main Campus
2916	PSYC	7215	1	B	34772	3	Sem-Experimental Psychology	SEM	09:00 AM - 11:30 AM	M	MUEN E214	Banich,Marie	15	Main Campus
2917	PSYC	7415	801	B	20642	2	Cog Sci Rsrch Prac 1	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
2918	PSYC	7425	801	B	14408	2	Cog Sci Rsrch Prac 2	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
2919	PSYC	7663	801	B	19949	1	Intel Assessment Lab	MLS	-			Richardson,Emily	12	Main Campus
2920	PSYC	7683	801	B	20700	1-3	Intel Assesmnt/Practicum	PRA	09:00 AM - 11:30 AM	M	MUEN D334	Richardson,Emily	12	Main Campus
2921	PSYC	7703	1	B	34775	3	Sem-Clinical Psychology	SEM	01:00 PM - 03:30 PM	M	MUEN E214	Gruber,June L	15	Main Campus
2922	PSYC	7703	2	B	36411	3	Sem-Clinical Psychology	SEM	09:30 AM - 12:00 PM	T	MUEN E214	Kaiser,Roselinde	20	Main Campus
2923	PSYC	7713	801	B	17597	3	Practicum Clinical Psychology	PRA	-	TBA	See Academc Dept	Arch,Joanna	5	Main Campus
2924	PSYC	7713	802	B	20234	1-3	Practicum Clinical Psychology	PRA	-	TBA	See Academc Dept		5	Main Campus
2925	PSYC	7775	1	B	14422	1	Tpcs-Cognitive Science	SEM	12:00 PM - 02:00 PM	F	MUEN D430	Sumner,Tamara Ruth	15	Main Campus
2926	PSYC	7793	801	B	21951	1-3	Child Assessment Practicum	PRA	12:00 PM - 02:00 PM	W	MUEN D216A	Chhabildas,Nomita Anne	5	Main Campus
2927	RLST	1620	10	B	20763	3	Relig Dimen /Human Exper	LEC	01:00 PM - 01:50 PM	MW	HLMS 201	Ali,Aun H	90	Main Campus
2928	RLST	1818	1	B	21886	3	Jewish History to 1492	LEC	02:00 PM - 03:15 PM	TTH	HUMN 1B90	Shneer,David	52	Main Campus
2929	RLST	1820	1	B	33780	3	Religion/Politic Ancient Egypt	LEC	09:00 AM - 09:50 AM	MWF	KTCH 1B60	Nijhowne,Jeanne M	30	Main Campus
2930	RLST	1900	1	B	33781	3	HebrewBible/Old Testament	LEC	12:30 PM - 01:45 PM	TTH	CLRE 302	Boyd,Samuel L	20	Main Campus
2931	RLST	2202	1	B	21116	3	Islam	LEC	02:00 PM - 02:50 PM	MWF	HLMS 141	Ali,Aun H	50	Main Campus
2932	RLST	2320	1	B	33769	3	Muslim World, 600-1250	LEC	12:30 PM - 01:45 PM	TTH	HUMN 1B90	Catlos,Brian	30	Main Campus
2933	RLST	2500	10	B	14820	3	Religions in the U.S.	LEC	10:00 AM - 10:50 AM	MW	HUMN 250	Whitehead,Deborah Faith	90	Main Campus
2934	RLST	2600	1	B	33772	3	Judaism/Christian/Islam	LEC	09:30 AM - 10:45 AM	TTH	HUMN 1B90	Boyd,Samuel L	40	Main Campus
2935	RLST	2612	1	B	22105	3	Yoga: Ancient and Modern	LEC	02:00 PM - 03:15 PM	TTH	HUMN 150	Biernacki,Loriliai	150	Main Campus
2936	RLST	2620	1	B	22106	3	Religions of East Asia	LEC	11:00 AM - 11:50 AM	MWF	HLMS 141	Carmichael,Lucas Taylor	50	Main Campus
2937	RLST	2700	10	B	22108	3	Amer Indian Relig Trdtns	LEC	12:00 PM - 12:50 PM	MW	EKLC E1B20	Johnson,Gregory B	70	Main Campus
2938	RLST	3000	1	B	18093	3	Christian Tradition	LEC	11:00 AM - 12:15 PM	TTH	CLUB 13	Catlos,Brian	42	Main Campus
2939	RLST	3050	1	B	22666	3	Religion/Lit in America	LEC	10:00 AM - 10:50 AM	MWF	HUMN 1B90	Carmichael,Lucas Taylor	40	Main Campus
2940	RLST	3100	1	B	18687	3	Judaism	LEC	11:00 AM - 12:15 PM	TTH	HUMN 250	Shneer,David	60	Main Campus
2941	RLST	3200	1	B	22107	3	Hinduism	LEC	03:30 PM - 04:45 PM	TTH	MCOL E186	Biernacki,Loriliai	30	Main Campus
2942	RLST	3300	1	B	20764	3	Foundations of Buddhism	LEC	11:00 AM - 12:15 PM	TTH	HALE 230	Gayley,Antonia	88	Main Campus
2943	RLST	4030	1	B	20765	3	Religions in America	SEM	03:00 PM - 05:30 PM	M	HUMN 270	Whitehead,Deborah Faith	10	Main Campus
2944	RLST	4810	800	B	18035	3	Honor's Thesis	SEM	-			Johnson,Gregory B	10	Main Campus
2945	RLST	4810	801	B	18036	3	Honor's Thesis	SEM	-			Whitehead,Deborah Faith	10	Main Campus
2946	RLST	4810	802	B	18037	3	Honor's Thesis	SEM	-			Ali,Aun H	10	Main Campus
2947	RLST	4810	803	B	18038	3	Honor's Thesis	SEM	-				10	Main Campus
2948	RLST	4820	1	B	22147	3	Interdis Seminar on Religion	SEM	03:00 PM - 05:30 PM	W	HUMN 270	Gayley,Antonia	10	Main Campus
2949	RLST	5030	1	B	21117	3	Religions in America	SEM	03:00 PM - 05:30 PM	M	HUMN 270	Whitehead,Deborah Faith	10	Main Campus
2950	RLST	5210	1	B	36551	3	Advanced Readings in Sanskrit	PRA	05:30 PM - 08:00 PM	M	HUMN 270	Biernacki,Loriliai	10	Main Campus
2951	RLST	5820	1	B	22148	3	Interdis Seminar on Religion	SEM	03:00 PM - 05:30 PM	W	HUMN 270	Gayley,Antonia	10	Main Campus
2952	RLST	6830	1	B	14848	3	Intro/Acad Study/Religin	SEM	03:30 PM - 06:00 PM	TH	HUMN 270	Johnson,Gregory B	20	Main Campus
2953	RUSS	1010	2	B	13834	4	Beginning Russian 1	LEC	10:00 AM - 10:50 AM	M-TH	CLRE 212	Kostoglodova,Elena Yurievna	23	Main Campus
2954	RUSS	1010	3	B	20353	4	Beginning Russian 1	LEC	02:00 PM - 02:50 PM	M-TH	HUMN 145	Demina,Evangelina	22	Main Campus
2955	RUSS	1010	4	B	13835	4	Beginning Russian 1	LEC	05:00 PM - 06:50 PM	MW	HUMN 145		22	Main Campus
2956	RUSS	1020	1	B	20749	4	Beginning Russian 2	LEC	01:00 PM - 01:50 PM	M-TH	HUMN 145	Siarheichyk,Galina	22	Main Campus
2957	RUSS	2010	1	B	20750	4	Second-Year Russian 1	LEC	12:00 PM - 12:50 PM	M-TH	MUEN D439		23	Main Campus
2958	RUSS	2010	2	B	20354	4	Second-Year Russian 1	LEC	09:00 AM - 09:50 AM	M-TH	CLRE 212	Kostoglodova,Elena Yurievna	23	Main Campus
2959	RUSS	2211	1	B	21449	3	Intro Russian Culture	LEC	01:00 PM - 01:50 PM	MWF	MCOL E158	Grove,Vicki	30	Main Campus
2960	RUSS	2222	10	B	21342	3	Sports and the Cold War	LEC	12:00 PM - 12:50 PM	MW	HALE 270	Romanov,Artemi	160	Main Campus
2961	RUSS	2222	11	B	21512	3	Sports and the Cold War	REC	12:00 PM - 12:50 PM	F	HALE 270	Romanov,Artemi	32	Main Campus
2962	RUSS	2222	12	B	21513	3	Sports and the Cold War	REC	10:00 AM - 10:50 AM	F	MKNA 112	Romanov,Artemi	20	Main Campus
2963	RUSS	2222	13	B	21514	3	Sports and the Cold War	REC	02:00 PM - 02:50 PM	F	GUGG 2	Romanov,Artemi	31	Main Campus
2964	RUSS	2222	14	B	21515	3	Sports and the Cold War	REC	09:00 AM - 09:50 AM	F	MKNA 112	Romanov,Artemi	20	Main Campus
2965	RUSS	2222	15	B	21516	3	Sports and the Cold War	REC	11:00 AM - 11:50 AM	F	RAMY N1B31	Romanov,Artemi	31	Main Campus
2966	RUSS	2222	16	B	21517	3	Sports and the Cold War	REC	01:00 PM - 01:50 PM	F	HUMN 186	Romanov,Artemi	26	Main Campus
2967	RUSS	2471	1	B	34202	3	Russian Women 10-19th C	LEC	12:00 PM - 12:50 PM	MWF	MCOL E158	Grove,Vicki	30	Main Campus
2968	RUSS	3010	1	B	13840	4	3rd Year Russian 1	LEC	10:00 AM - 10:50 AM	M-TH	HLMS 145		19	Main Campus
2969	RUSS	3060	1	B	19527	4	Russian Heritage Spkers Pt 1	SEM	11:00 AM - 11:50 AM	M-TH	CLRE 212	Kostoglodova,Elena Yurievna	4	Main Campus
2970	RUSS	3241	1	B	22056	3	Russian Sci-Fi	LEC	11:00 AM - 12:15 PM	TTH	GUGG 2		35	Main Campus
2971	RUSS	3701	1	B	34220	3	Slavic Folk Culture	LEC	02:00 PM - 02:50 PM	MWF	ECON 13		40	Main Campus
2972	RUSS	4010	1	B	19528	4	Adv Conversation/Comp 1	LEC	11:00 AM - 11:50 AM	M-TH	CLRE 212	Kostoglodova,Elena Yurievna	14	Main Campus
2973	RUSS	4431	1	B	34221	3	Dostoevsky	LEC	12:30 PM - 01:45 PM	TTH	HUMN 245	Porter,Jillian E.	15	Main Campus
2974	RUSS	4481	1	B	34223	3	Russian Rebels Past/Present	LEC	03:30 PM - 04:45 PM	TTH	CLUB 4	Porter,Jillian E.	25	Main Campus
2975	RUSS	4821	1	B	22054	3	20th C Russ Lit & Art	LEC	02:00 PM - 03:15 PM	TTH	HUMN 125		30	Main Campus
2976	RUSS	4861	1	B	34615	3	Absurd/Supernat Russ Lit	LEC	05:00 PM - 06:15 PM	MW	HUMN 180		15	Main Campus
2977	RUSS	5010	1	B	21303	4	Advanced Russian Seminar	LEC	11:00 AM - 11:50 AM	M-TH	CLRE 212	Kostoglodova,Elena Yurievna	6	Main Campus
2978	RUSS	5431	1	B	34222	3	Dostoevsky	LEC	12:30 PM - 01:45 PM	TTH	HUMN 245	Porter,Jillian E.	5	Main Campus
2979	RUSS	5481	1	B	34224	3	Russian Rebels Past/Present	LEC	03:30 PM - 04:45 PM	TTH	CLUB 4	Porter,Jillian E.	5	Main Campus
2980	RUSS	5821	1	B	22790	3	20th C Russ Lit & Art	LEC	02:00 PM - 03:15 PM	TTH	HUMN 125		5	Main Campus
2981	RUSS	5861	1	B	34616	3	Absurd/Supernat Russ Lit	LEC	05:00 PM - 06:15 PM	MW	HUMN 180		5	Main Campus
2982	SCAN	1202	1	B	21625	3	Tolkien's Nordic Sources	LEC	10:00 AM - 10:50 AM	MWF	CLRE 302	Grove,Vicki	30	Main Campus
2983	SCAN	1202	2	B	21846	3	Tolkien's Nordic Sources	LEC	03:30 PM - 04:45 PM	TTH	HLMS 255	Raggio,Avedan	30	Main Campus
2984	SCAN	2202	1	B	22049	3	The Vikings	LEC	10:00 AM - 10:50 AM	MWF	CLRE 208	Nordvig,Asger M.V.	30	Main Campus
2985	SCAN	3202	1	B	21626	3	Old Norse Mythology	LEC	11:00 AM - 11:50 AM	MWF	KTCH 1B60	Crawford,Jackson	30	Main Campus
2986	SCAN	3202	2	B	21627	3	Old Norse Mythology	LEC	01:00 PM - 01:50 PM	MWF	KTCH 1B60	Crawford,Jackson	30	Main Campus
2987	SCAN	3202	10	B	28966	3	Old Norse Mythology	LEC	09:00 AM - 09:50 AM	MW	RAMY C250	Crawford,Jackson	162	Main Campus
2988	SCAN	3202	11	B	28972	3	Old Norse Mythology	REC	01:00 PM - 01:50 PM	W	GUGG 2	Crawford,Jackson	28	Main Campus
2989	SCAN	3202	12	B	28979	3	Old Norse Mythology	REC	08:00 AM - 08:50 AM	F	HLMS 177	Crawford,Jackson	26	Main Campus
2990	SCAN	3202	13	B	28980	3	Old Norse Mythology	REC	12:00 PM - 12:50 PM	W	ECON 13	Crawford,Jackson	28	Main Campus
2991	SCAN	3202	14	B	28981	3	Old Norse Mythology	REC	09:00 AM - 09:50 AM	F	RAMY C250	Crawford,Jackson	32	Main Campus
2992	SCAN	3202	15	B	28982	3	Old Norse Mythology	REC	02:00 PM - 02:50 PM	F	MUEN E130	Crawford,Jackson	28	Main Campus
2993	SCAN	3202	16	B	28983	3	Old Norse Mythology	REC	10:00 AM - 10:50 AM	W	MKNA 112	Crawford,Jackson	20	Main Campus
2994	SCAN	3204	1	B	33938	3	Medieval Icelandic Sagas	LEC	12:00 PM - 12:50 PM	MWF	CLRE 209	Nordvig,Asger M.V.	30	Main Campus
2995	SCAN	3205	1	B	33939	3	Scan Folk Narrative	LEC	08:00 AM - 09:15 AM	TTH	KTCH 1B60	Raggio,Avedan	30	Main Campus
2996	SCAN	3205	2	B	21008	3	Scan Folk Narrative	LEC	09:30 AM - 10:45 AM	TTH	MKNA 112	Raggio,Avedan	20	Main Campus
2997	SOCY	1001	100	B	15654	3	Intro to Sociology	LEC	02:00 PM - 02:50 PM	TTH	HALE 230	Downey,Liam C	100	Main Campus
2998	SOCY	1001	101	B	18669	3	Intro to Sociology	REC	09:00 AM - 09:50 AM	M	MCOL E186		29	Main Campus
2999	SOCY	1001	102	B	18670	3	Intro to Sociology	REC	12:00 PM - 12:50 PM	M	VAC 1B90		30	Main Campus
3000	SOCY	1001	103	B	18671	3	Intro to Sociology	REC	02:00 PM - 02:50 PM	M	HUMN 335		29	Main Campus
3001	SOCY	1001	218R	B	21955	3	Intro to Sociology	LEC	12:30 PM - 01:45 PM	TTH	KITW N132	Kirkland,Tracy Michelle	19	Main Campus
3002	SOCY	1001	300	B	14739	3	Intro to Sociology	LEC	02:00 PM - 02:50 PM	MW	MATH 100	Peek,Lori Ann	400	Main Campus
3003	SOCY	1001	301	B	17832	3	Intro to Sociology	REC	08:00 AM - 08:50 AM	TH	EKLC E1B75		32	Main Campus
3004	SOCY	1001	302	B	17833	3	Intro to Sociology	REC	08:00 AM - 08:50 AM	F	KTCH 1B64		32	Main Campus
3005	SOCY	1001	303	B	17834	3	Intro to Sociology	REC	09:00 AM - 09:50 AM	F	MUEN E114		32	Main Campus
3006	SOCY	1001	304	B	17838	3	Intro to Sociology	REC	08:00 AM - 08:50 AM	F	EDUC 143		32	Main Campus
3007	SOCY	1001	305	B	17839	3	Intro to Sociology	REC	01:00 PM - 01:50 PM	F	ECON 13		32	Main Campus
3008	SOCY	1001	306	B	20861	3	Intro to Sociology	REC	02:00 PM - 02:50 PM	F	ECON 205		32	Main Campus
3009	SOCY	1001	307	B	20862	3	Intro to Sociology	REC	10:00 AM - 10:50 AM	F	KTCH 1B64		32	Main Campus
3010	SOCY	1001	308	B	20863	3	Intro to Sociology	REC	11:00 AM - 11:50 AM	F	ATLS 1B31		32	Main Campus
3011	SOCY	1001	309	B	20864	3	Intro to Sociology	REC	03:00 PM - 03:50 PM	F	HLMS 245		32	Main Campus
3012	SOCY	1001	310	B	21464	3	Intro to Sociology	REC	10:00 AM - 10:50 AM	F	ECON 205		30	Main Campus
3013	SOCY	1001	314	B	22822	3	Intro to Sociology	REC	04:00 PM - 04:50 PM	TH			22	Main Campus
3014	SOCY	1001	315	B	22823	3	Intro to Sociology	REC	05:00 PM - 05:50 PM	TH	HUMN 186		22	Main Campus
3015	SOCY	1001	880	B	22801	3	Intro to Sociology	LEC	11:00 AM - 12:15 PM	TTH	LIBR N424A	Hatch,Alison Eileen	7	Main Campus
3016	SOCY	1004	100	B	21125	3	Deviance in US Society	LEC	11:00 AM - 11:50 AM	TTH	MUEN E050	Wadsworth,Thomas Pearson	0	Main Campus
3017	SOCY	1004	101	B	21126	3	Deviance in US Society	REC	01:00 PM - 01:50 PM	TH			32	Main Campus
3074	SOCY	3016	1	B	35027	3	Marriage/Family/U.S.	LEC	02:00 PM - 03:15 PM	TTH			49	Main Campus
3018	SOCY	1004	102	B	21127	3	Deviance in US Society	REC	03:00 PM - 03:50 PM	TH	MUEN D144		32	Main Campus
3019	SOCY	1004	103	B	21128	3	Deviance in US Society	REC	04:00 PM - 04:50 PM	TH	GUGG 3		32	Main Campus
3020	SOCY	1004	104	B	21129	3	Deviance in US Society	REC	08:00 AM - 08:50 AM	F	EKLC E1B75		32	Main Campus
3021	SOCY	1004	105	B	21130	3	Deviance in US Society	REC	08:00 AM - 08:50 AM	F	MCOL E158		32	Main Campus
3022	SOCY	1004	106	B	21131	3	Deviance in US Society	REC	09:00 AM - 09:50 AM	F	ENVD 120		32	Main Campus
3023	SOCY	1004	107	B	21132	3	Deviance in US Society	REC	10:00 AM - 10:50 AM	F	ENVD 120		32	Main Campus
3024	SOCY	1004	108	B	21133	3	Deviance in US Society	REC	11:00 AM - 11:50 AM	F	ENVD 120		32	Main Campus
3025	SOCY	1004	109	B	21134	3	Deviance in US Society	REC	12:00 PM - 12:50 PM	F	HLMS 267		32	Main Campus
3026	SOCY	1004	110	B	21135	3	Deviance in US Society	REC	03:00 PM - 03:50 PM	F	KTCH 1B64		32	Main Campus
3027	SOCY	1006	2	B	22329	3	Social Constr/Sexuality	LEC	05:00 PM - 06:15 PM	TTH	HUMN 135		65	Main Campus
3028	SOCY	1006	100	B	20999	3	Social Constr/Sexuality	LEC	08:00 AM - 08:50 AM	MWF	HLMS 252		100	Main Campus
3029	SOCY	1006	101	B	22431	3	Social Constr/Sexuality	REC	08:00 AM - 08:50 AM	F	HLMS 259	Villarreal,Melissa	30	Main Campus
3030	SOCY	1006	102	B	22432	3	Social Constr/Sexuality	REC	01:00 PM - 01:50 PM	F	HUMN 145	Villarreal,Melissa	30	Main Campus
3031	SOCY	1006	103	B	22433	3	Social Constr/Sexuality	REC	02:00 PM - 02:50 PM	F		Villarreal,Melissa	30	Main Campus
3032	SOCY	1016	2	B	22444	3	Sex Gender & Society 1	LEC	02:00 PM - 03:15 PM	TTH	CLUB 4	Brown,Matthew Curtis	0	Main Campus
3033	SOCY	1016	100	B	16075	3	Sex Gender & Society 1	LEC	09:00 AM - 09:50 AM	MW	HUMN 250		97	Main Campus
3034	SOCY	1016	101	B	19741	3	Sex Gender & Society 1	REC	02:00 PM - 02:50 PM	W	GUGG 2		25	Main Campus
3035	SOCY	1016	102	B	19742	3	Sex Gender & Society 1	REC	04:00 PM - 04:50 PM	W	MCOL E158		25	Main Campus
3036	SOCY	1016	103	B	20306	3	Sex Gender & Society 1	REC	05:00 PM - 05:50 PM	W	HLMS 193		25	Main Campus
3037	SOCY	1016	880	B	22885	3	Sex Gender & Society 1	LEC	09:00 AM - 09:50 AM	MWF	LIBR M300D	Hatch,Alison Eileen	7	Main Campus
3038	SOCY	1021	2	B	22445	3	US Race/Ethnic Relations	LEC	01:00 PM - 01:50 PM	MWF	HUMN 1B80		65	Main Campus
3039	SOCY	1021	100	B	21235	3	US Race/Ethnic Relations	LEC	11:00 AM - 11:50 AM	TTH	ECCR 245	Walden,Glenda Danice	100	Main Campus
3040	SOCY	1021	101	B	21237	3	US Race/Ethnic Relations	REC	08:00 AM - 08:50 AM	W	CLRE 104		30	Main Campus
3041	SOCY	1021	102	B	21238	3	US Race/Ethnic Relations	REC	10:00 AM - 10:50 AM	W	MUEN E123		30	Main Campus
3042	SOCY	1021	103	B	21416	3	US Race/Ethnic Relations	REC	10:00 AM - 10:50 AM	W	KTCH 1B71		30	Main Campus
3043	SOCY	1022	1	B	14805	3	Ethc/Soc Issues Hlth/Med	LEC	08:00 AM - 09:15 AM	TTH	HUMN 135	Pedersen-Gallegos,Liane G	100	Main Campus
3044	SOCY	1022	2	B	35025	3	Ethc/Soc Issues Hlth/Med	LEC	09:30 AM - 10:45 AM	TTH	RAMY N1B23		65	Main Campus
3045	SOCY	2031	2	B	22443	3	Social Problems	LEC	12:00 PM - 12:50 PM	MWF	RAMY N1B23		65	Main Campus
3046	SOCY	2031	300	B	16077	3	Social Problems	LEC	02:00 PM - 03:15 PM	TTH	MUEN E0046		88	Main Campus
3047	SOCY	2031	301	B	21656	3	Social Problems	REC	09:00 AM - 09:50 AM	M	ECON 13		33	Main Campus
3048	SOCY	2031	302	B	21655	3	Social Problems	REC	12:00 PM - 12:50 PM	M	ECON 13		33	Main Campus
3049	SOCY	2031	303	B	22821	3	Social Problems	REC	02:00 PM - 02:50 PM	M	STAD 140		33	Main Campus
3050	SOCY	2034	1	B	34862	3	Drugs in U.S. Society	LEC	09:30 AM - 10:45 AM	TTH		Walden,Glenda Danice	70	Main Campus
3051	SOCY	2044	100	B	22450	3	Crime and Society	LEC	02:00 PM - 02:50 PM	MW	CHEM 142		98	Main Campus
3052	SOCY	2044	101	B	34996	3	Crime and Society	REC	08:00 AM - 08:50 AM	F	EKLC M203		30	Main Campus
3053	SOCY	2044	102	B	34997	3	Crime and Society	REC	03:00 PM - 03:50 PM	F	CHEM 145		30	Main Campus
3054	SOCY	2044	103	B	34998	3	Crime and Society	REC	10:00 AM - 10:50 AM	F			30	Main Campus
3055	SOCY	2044	104	B	34999	3	Crime and Society	REC	11:00 AM - 11:50 AM	F	MCOL E155		30	Main Campus
3056	SOCY	2044	105	B	35000	3	Crime and Society	REC	02:00 PM - 02:50 PM	F	DUAN G131		30	Main Campus
3057	SOCY	2044	106	B	35001	3	Crime and Society	REC	02:00 PM - 02:50 PM	F			30	Main Campus
3058	SOCY	2061	100	B	19466	3	Intro to Social Stats	LEC	10:00 AM - 10:50 AM	MW	GOLD A2B70	Boardman,Jason D	246	Main Campus
3059	SOCY	2061	101	B	21587	3	Intro to Social Stats	REC	11:00 AM - 11:50 AM	W	MCOL E155		25	Main Campus
3060	SOCY	2061	102	B	21588	3	Intro to Social Stats	REC	12:00 PM - 12:50 PM	W	RAMY N1B31		25	Main Campus
3061	SOCY	2061	103	B	21589	3	Intro to Social Stats	REC	03:00 PM - 03:50 PM	F	DUAN G1B39		25	Main Campus
3062	SOCY	2061	104	B	21590	3	Intro to Social Stats	REC	01:00 PM - 01:50 PM	W	MCOL E155		25	Main Campus
3063	SOCY	2061	105	B	21591	3	Intro to Social Stats	REC	01:00 PM - 01:50 PM	W	ECON 13		25	Main Campus
3064	SOCY	2061	106	B	21592	3	Intro to Social Stats	REC	02:00 PM - 02:50 PM	W	STAD 140		25	Main Campus
3065	SOCY	2061	108	B	22529	3	Intro to Social Stats	REC	02:00 PM - 02:50 PM	F	HALE 235		25	Main Campus
3066	SOCY	2061	109	B	21593	3	Intro to Social Stats	REC	12:00 PM - 12:50 PM	F	STAD 140		25	Main Campus
3067	SOCY	2077	100	B	18098	3	Environment & Society	LEC	11:00 AM - 12:15 PM	TTH	ECCR 265	Harrison,Jill L	88	Main Campus
3068	SOCY	3001	100	B	21260	3	Classical Theory	LEC	01:00 PM - 01:50 PM	MW	HALE 230	Haffey,Michael John	100	Main Campus
3069	SOCY	3001	101	B	21275	3	Classical Theory	REC	10:00 AM - 10:50 AM	F			27	Main Campus
3070	SOCY	3001	102	B	21276	3	Classical Theory	REC	01:00 PM - 01:50 PM	F			27	Main Campus
3071	SOCY	3001	103	B	21277	3	Classical Theory	REC	02:00 PM - 02:50 PM	F			27	Main Campus
3072	SOCY	3002	1	B	35022	3	Population and Society	LEC	02:00 PM - 02:50 PM	MWF	HUMN 1B80		65	Main Campus
3073	SOCY	3012	1	B	35014	3	Women and Development	LEC	10:00 AM - 10:50 AM	MWF	BESC 185		65	Main Campus
3075	SOCY	3032	1	B	35018	3	Social Epidemiology	LEC	09:30 AM - 10:45 AM	TTH			49	Main Campus
3076	SOCY	3041	1	B	22675	3	Self and Consciousness	LEC	02:00 PM - 03:15 PM	TTH	EDUC 155	Walden,Glenda Danice	49	Main Campus
3077	SOCY	3044	2	B	22676	3	Race/Class/Gender/Crime	LEC	08:00 AM - 09:15 AM	TTH	EDUC 220		30	Main Campus
3078	SOCY	3045	1	B	21918	3	Sociology of Death and Dying	LEC	05:00 PM - 06:15 PM	TTH	DUAN G2B47	Pedersen-Gallegos,Liane G	49	Main Campus
3079	SOCY	3046	1	B	35023	3	Topics in Sex and Gender	LEC	11:00 AM - 11:50 AM	MWF	HUMN 1B80		65	Main Campus
3080	SOCY	3141	1	B	22330	3	Social Movements In/U.S.	LEC	08:00 AM - 08:50 AM	MWF	HUMN 270	Haffey,Michael John	19	Main Campus
3081	SOCY	3201	1	B	21244	3	Sociological Research Methods	LEC	09:30 AM - 10:45 AM	TTH	HLMS 201	Brown,Matthew Curtis	98	Main Campus
3082	SOCY	3314	1	B	20523	3	Violence/Wmn-Girls	LEC	03:30 PM - 04:45 PM	TTH	HLMS 252	Sewell,CheyOnna	35	Main Campus
3083	SOCY	3314	2	B	35212	3	Violence/Wmn-Girls	LEC	02:00 PM - 03:15 PM	TTH	RAMY C250	Sewell,CheyOnna	26	Main Campus
3084	SOCY	3401	2	B	22737	3	Field Methods	LEC	03:30 PM - 04:45 PM	TTH	CLUB 13	Brown,Matthew Curtis	19	Main Campus
3085	SOCY	4000	1	B	33412	3	Gender, Genocide & Trauma	LEC	11:00 AM - 12:15 PM	TTH	ECCR 1B40		120	Main Campus
3086	SOCY	4002	1	B	35021	3	Sociology of Aging	LEC	01:00 PM - 01:50 PM	MWF	RAMY N1B23		65	Main Campus
3087	SOCY	4007	1	B	21073	3	Global Human Ecology	LEC	04:00 PM - 05:15 PM	MW	HUMN 135		65	Main Campus
3088	SOCY	4014	100	B	35010	3	Criminology	LEC	08:00 AM - 09:15 AM	TTH	CLRE 207	Radelet,Michael L	100	Main Campus
3089	SOCY	4024	1	B	20206	3	Juvenile Justice & Delinquency	LEC	03:00 PM - 04:15 PM	MW	MUEN E131		49	Main Campus
3090	SOCY	4027	1	B	22446	3	Inequality Democracy Env	LEC	03:30 PM - 04:45 PM	TTH	HLMS 201		50	Main Campus
3091	SOCY	4031	1	B	21647	3	Social Psychology	LEC	11:00 AM - 11:50 AM	MWF	HUMN 1B90	Haffey,Michael John	49	Main Campus
3092	SOCY	4052	1	B	35016	3	Social Inequalities in Health	LEC	11:00 AM - 12:15 PM	TTH	HLMS 267	Masters,Ryan Kelly	49	Main Campus
3093	SOCY	4062	1	B	35012	3	Suffering and Care in Society	LEC	02:00 PM - 03:15 PM	TTH		Grant,Don Sherman	49	Main Campus
3094	SOCY	4063	1	B	21262	3	Risk and Resilience	LEC	03:30 PM - 04:45 PM	TTH	EDUC 155	Pedersen-Gallegos,Liane G	49	Main Campus
3095	SOCY	4071	1	B	35015	3	Social Stratification	LEC	09:00 AM - 09:50 AM	MWF	HLMS 267	Haffey,Michael John	49	Main Campus
3096	SOCY	4121	1	B	16088	3	Sociology of Religion	LEC	09:30 AM - 10:45 AM	TTH	MKNA 204	Pedersen-Gallegos,Liane G	18	Main Campus
3097	SOCY	4141	1	B	35020	3	Social Psych Friendships	LEC	12:00 PM - 12:50 PM	MWF	BESC 185		65	Main Campus
3098	SOCY	4160	1	B	21893	3	Designing Social Innovations	LEC	04:00 PM - 05:15 PM	TTH	FLMG 33	Grant,Don Sherman	49	Main Campus
3099	SOCY	4441	802	B	21443	3	Senior Honors Seminar 1	SEM	09:30 AM - 11:00 AM	T	See Academc Dept	Brown,Matthew Curtis	20	Main Campus
3100	SOCY	5031	1	B	21259	3	Research Design	SEM	03:30 PM - 06:00 PM	M	See Academc Dept	Pyrooz,David C	15	Main Campus
3101	SOCY	5201	1	B	35037	3	Sociological Theory	SEM	03:30 PM - 06:00 PM	T	KTCH 1B40	Desan,Mathieu	15	Main Campus
3102	SOCY	5611	1	B	35035	3	Teaching Sociology	PRA	03:00 PM - 05:30 PM	TH	KTCH 1B40	Brown,Matthew Curtis	14	Main Campus
3103	SOCY	6111	1	B	21158	3	Data 2: Data Analysis	SEM	03:00 PM - 05:30 PM	M	KTCH 1B40	Masters,Ryan Kelly	15	Main Campus
3104	SOCY	6121	1	B	20270	3	Qualitative Methods	LEC	03:30 PM - 06:00 PM	W	KTCH 1B40	Sue,Christina Alicia	10	Main Campus
3105	SOCY	6821	1	B	20682	1-2	Grad Soc Forum I	SEM	12:30 PM - 01:45 PM	TH	KTCH 1B40	Bailey Mollborn,Stefanie Faun	10	Main Campus
3106	SOCY	6851	2	B	22881	2	Interdiscipl Soc Sci Prosem	SEM	11:00 AM - 12:00 PM	F	IBS 155B	Sokhey,Anand	15	Main Campus
3107	SOCY	7006	1	B	35031	3	Sociology/Sex and Gender	LEC	11:00 AM - 01:30 PM	W	KTCH 1B40	Rinaldo,Rachel Ann	20	Main Campus
3108	SOCY	7017	1	B	35034	3	Population & Environment	SEM	03:00 PM - 05:30 PM	T	KTCH 1B24	Hunter,Lori	10	Main Campus
3109	SOCY	7111	1	B	35030	3	Data III Adv Data Analys	SEM	03:30 PM - 06:00 PM	M	KTCH 1B24	Stevenson,Amanda Jean	15	Main Campus
3110	SOCY	7121	1	B	20522	3	Qualitative Analysis	SEM	03:30 PM - 04:20 PM	W	KTCH 1B24	Irvine,Leslie J	15	Main Campus
3111	SOCY	7141	1	B	21465	3	Third-year Paper Seminar	SEM	03:00 PM - 05:30 PM	F	KTCH 1B40	Bailey Mollborn,Stefanie Faun	15	Main Campus
3112	SOCY	7171	1	B	22707	3	Special Topics	LEC	11:00 AM - 01:30 PM	M	KTCH 1B40		10	Main Campus
3113	SOCY	7171	2	B	35036	3	Special Topics	LEC	03:00 PM - 05:30 PM	TH	KTCH 1B24		10	Main Campus
3114	SPAN	1000	1	B	21296	3	Cultur Diff/Hispanic Lit	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B44		25	Main Campus
3115	SPAN	1010	1	B	14613	5	Beginning Spanish 1	LEC	08:00 AM - 08:50 AM	M-F	CLRE 302		22	Main Campus
3116	SPAN	1010	2	B	14614	5	Beginning Spanish 1	LEC	09:00 AM - 09:50 AM	M-F	HLMS 191		22	Main Campus
3117	SPAN	1010	3	B	14628	5	Beginning Spanish 1	LEC	09:00 AM - 09:50 AM	M-F	HUMN 186		22	Main Campus
3118	SPAN	1010	4	B	14630	5	Beginning Spanish 1	LEC	11:00 AM - 11:50 AM	M-F	HLMS 191		22	Main Campus
3119	SPAN	1010	5	B	14631	5	Beginning Spanish 1	LEC	11:00 AM - 11:50 AM	M-F	HLMS 185		22	Main Campus
3120	SPAN	1010	6	B	14632	5	Beginning Spanish 1	LEC	11:00 AM - 11:50 AM	M-F	HUMN 145		22	Main Campus
3121	SPAN	1010	7	B	14633	5	Beginning Spanish 1	LEC	12:00 PM - 12:50 PM	M-F	HLMS 191		22	Main Campus
3122	SPAN	1010	9	B	14634	5	Beginning Spanish 1	LEC	01:00 PM - 01:50 PM	M-F	HLMS 191		22	Main Campus
3123	SPAN	1010	10	B	14635	5	Beginning Spanish 1	LEC	01:00 PM - 01:50 PM	M-F	HLMS 185		22	Main Campus
3124	SPAN	1010	11	B	14636	5	Beginning Spanish 1	LEC	02:00 PM - 02:50 PM	M-F	CLRE 212		22	Main Campus
3125	SPAN	1010	12	B	14637	5	Beginning Spanish 1	LEC	02:00 PM - 02:50 PM	M-F	DUAN G1B25		22	Main Campus
3126	SPAN	1010	13	B	14638	5	Beginning Spanish 1	LEC	03:00 PM - 03:50 PM	M-F	HLMS 185		22	Main Campus
3127	SPAN	1010	14	B	21974	5	Beginning Spanish 1	LEC	08:00 AM - 08:50 AM	M-F	CLRE 212		22	Main Campus
3128	SPAN	1010	800	B	14639	5	Beginning Spanish 1	LEC	11:00 AM - 11:50 AM	MF	HLMS 181		22	Main Campus
3129	SPAN	1010	800	B	14639	5	Beginning Spanish 1	LEC	11:00 AM - 12:15 PM	TTH	HLMS 181		22	Main Campus
3130	SPAN	1010	801	B	36331	5	Beginning Spanish 1	LEC	11:00 AM - 11:50 AM	M-F	HLMS 152		14	Main Campus
3131	SPAN	1020	1	B	14644	5	Beginning Spanish 2	LEC	08:00 AM - 08:50 AM	M-F	HLMS 181		22	Main Campus
3132	SPAN	1020	2	B	14649	5	Beginning Spanish 2	LEC	09:00 AM - 09:50 AM	M-F	HLMS 251		22	Main Campus
3133	SPAN	1020	3	B	14650	5	Beginning Spanish 2	LEC	11:00 AM - 11:50 AM	M-F	HLMS 251		22	Main Campus
3134	SPAN	1020	4	B	14651	5	Beginning Spanish 2	LEC	11:00 AM - 11:50 AM	M-F	MUEN D439		22	Main Campus
3135	SPAN	1020	5	B	14653	5	Beginning Spanish 2	LEC	12:00 PM - 12:50 PM	M-F	HALE 236		22	Main Campus
3136	SPAN	1020	6	B	14654	5	Beginning Spanish 2	LEC	12:00 PM - 12:50 PM	M-F	HLMS 185		22	Main Campus
3137	SPAN	1020	7	B	14655	5	Beginning Spanish 2	LEC	01:00 PM - 01:50 PM	M-F	HLMS 251		22	Main Campus
3138	SPAN	1020	8	B	14656	5	Beginning Spanish 2	LEC	01:00 PM - 01:50 PM	M-F	CLRE 212		22	Main Campus
3139	SPAN	1020	10	B	14657	5	Beginning Spanish 2	LEC	02:00 PM - 02:50 PM	M-F	HLMS 251		22	Main Campus
3140	SPAN	1020	800	B	14658	5	Beginning Spanish 2	LEC	02:00 PM - 02:50 PM	MF	VAC 1B88		22	Main Campus
3141	SPAN	1020	800	B	14658	5	Beginning Spanish 2	LEC	02:00 PM - 03:15 PM	TTH		Uvalle-Ordonez,Nancy	22	Main Campus
3142	SPAN	1020	801	B	36333	5	Beginning Spanish 2	LEC	01:00 PM - 01:50 PM	M-F	HLMS 152		14	Main Campus
3143	SPAN	1150	800	B	21844	5	Intensive First Year Spanish	LEC	11:00 AM - 11:50 AM	M-F	HUMN 270		50	Main Campus
3144	SPAN	2110	2	B	14670	3	Second Year Spanish 1	LEC	09:00 AM - 09:50 AM	MWF	CLRE 211		22	Main Campus
3145	SPAN	2110	3	B	14671	3	Second Year Spanish 1	LEC	09:00 AM - 09:50 AM	MWF	HLMS 181		22	Main Campus
3146	SPAN	2110	4	B	14672	3	Second Year Spanish 1	LEC	11:00 AM - 11:50 AM	MWF	GUGG 206		22	Main Campus
3147	SPAN	2110	5	B	14673	3	Second Year Spanish 1	LEC	12:30 PM - 01:45 PM	TTH	MUEN E130		22	Main Campus
3148	SPAN	2110	6	B	14674	3	Second Year Spanish 1	LEC	12:00 PM - 12:50 PM	MWF	CLRE 104		22	Main Campus
3149	SPAN	2110	7	B	14675	3	Second Year Spanish 1	LEC	12:00 PM - 12:50 PM	MWF	STAD 135		22	Main Campus
3150	SPAN	2110	8	B	14676	3	Second Year Spanish 1	LEC	01:00 PM - 01:50 PM	MWF	CLRE 104		22	Main Campus
3151	SPAN	2110	9	B	14677	3	Second Year Spanish 1	LEC	01:00 PM - 01:50 PM	MWF	KTCH 1B84		22	Main Campus
3152	SPAN	2110	10	B	14680	3	Second Year Spanish 1	LEC	02:00 PM - 02:50 PM	MWF	HLMS 255		22	Main Campus
3153	SPAN	2110	11	B	14681	3	Second Year Spanish 1	LEC	03:00 PM - 03:50 PM	MWF	HLMS 193		22	Main Campus
3154	SPAN	2110	12	B	14685	3	Second Year Spanish 1	LEC	08:00 AM - 09:15 AM	TTH	HLMS 245		22	Main Campus
3155	SPAN	2110	13	B	14687	3	Second Year Spanish 1	LEC	09:30 AM - 10:45 AM	TTH	STAD 135		22	Main Campus
3156	SPAN	2110	14	B	14688	3	Second Year Spanish 1	LEC	12:30 PM - 01:45 PM	TTH	HLMS 255		22	Main Campus
3157	SPAN	2110	15	B	14689	3	Second Year Spanish 1	LEC	02:00 PM - 03:15 PM	TTH	KTCH 1B84		22	Main Campus
3158	SPAN	2110	16	B	14690	3	Second Year Spanish 1	LEC	03:30 PM - 04:45 PM	TTH	HLMS 193		22	Main Campus
3159	SPAN	2110	800	B	14691	3	Second Year Spanish 1	LEC	02:00 PM - 02:50 PM	MWF	HLMS 152		22	Main Campus
3160	SPAN	2110	801	B	36334	3	Second Year Spanish 1	LEC	02:00 PM - 02:50 PM	MWF	HLMS 152		14	Main Campus
3161	SPAN	2120	1	B	14704	3	Second Year Spanish 2	LEC	09:00 AM - 09:50 AM	MWF	MKNA 204	Piras,Maria Cristina	22	Main Campus
3162	SPAN	2120	2	B	14705	3	Second Year Spanish 2	LEC	11:00 AM - 11:50 AM	MWF	MKNA 204	Piras,Maria Cristina	22	Main Campus
3163	SPAN	2120	3	B	14706	3	Second Year Spanish 2	LEC	02:00 PM - 02:50 PM	MWF	KTCH 1B84		22	Main Campus
3164	SPAN	2120	5	B	14707	3	Second Year Spanish 2	LEC	09:30 AM - 10:45 AM	TTH	GUGG 206		22	Main Campus
3165	SPAN	2120	6	B	14708	3	Second Year Spanish 2	LEC	02:00 PM - 03:15 PM	TTH	HLMS 247		22	Main Campus
3166	SPAN	2120	7	B	14709	3	Second Year Spanish 2	LEC	02:00 PM - 03:15 PM	TTH	HLMS 181		22	Main Campus
3167	SPAN	2120	8	B	22828	3	Second Year Spanish 2	LEC	11:00 AM - 12:15 PM	TTH	MKNA 204	Piras,Maria Cristina	18	Main Campus
3168	SPAN	2150	800	B	14710	5	Intensive Second Yr Span	LEC	12:00 PM - 12:50 PM	M-F	CHEM 131	Buitron Vera,Gabriela Alejandra	50	Main Campus
3169	SPAN	3000	1	B	14711	5	Adv Spanish Lang Skills	LEC	08:00 AM - 08:50 AM	M-F	HUMN 180		20	Main Campus
3170	SPAN	3000	2	B	21976	5	Adv Spanish Lang Skills	LEC	08:00 AM - 08:50 AM	M-F	HALE 236		20	Main Campus
3171	SPAN	3000	3	B	14712	5	Adv Spanish Lang Skills	LEC	09:00 AM - 09:50 AM	M-F	HUMN 145		20	Main Campus
3172	SPAN	3000	4	B	14713	5	Adv Spanish Lang Skills	LEC	10:00 AM - 10:50 AM	M-F	HLMS 191		20	Main Campus
3173	SPAN	3000	5	B	14714	5	Adv Spanish Lang Skills	LEC	11:00 AM - 11:50 AM	M-F	CLRE 211		20	Main Campus
3174	SPAN	3000	6	B	14715	5	Adv Spanish Lang Skills	LEC	12:00 PM - 12:50 PM	M-F	HUMN 186		20	Main Campus
3175	SPAN	3000	7	B	22456	5	Adv Spanish Lang Skills	LEC	12:00 PM - 12:50 PM	M-F	HUMN 190		20	Main Campus
3176	SPAN	3000	8	B	14717	5	Adv Spanish Lang Skills	LEC	01:00 PM - 01:50 PM	M-F	CHEM 131		20	Main Campus
3177	SPAN	3000	9	B	14718	5	Adv Spanish Lang Skills	LEC	02:00 PM - 02:50 PM	M-F	HLMS 185		20	Main Campus
3178	SPAN	3000	10	B	14719	5	Adv Spanish Lang Skills	LEC	03:00 PM - 03:50 PM	M-F	HLMS 251		20	Main Campus
3179	SPAN	3001	2	B	18668	3	Spanish Conversation	LEC	01:00 PM - 01:50 PM	MWF	MKNA 204	Piras,Maria Cristina	20	Main Campus
3180	SPAN	3002	1	B	14720	3	Adv Spanish Conversation	LEC	02:00 PM - 02:50 PM	MWF	HLMS 196		20	Main Campus
3181	SPAN	3002	2	B	14721	3	Adv Spanish Conversation	LEC	03:00 PM - 03:50 PM	MWF	HUMN 160	Elmore,Vivian	20	Main Campus
3182	SPAN	3010	1	B	36427	3	Adv Rhetoric/Composition	LEC	08:00 AM - 09:15 AM	TTH	MKNA 204		18	Main Campus
3183	SPAN	3010	2	B	20291	3	Adv Rhetoric/Composition	LEC	10:00 AM - 10:50 AM	MWF	HLMS 181		18	Main Campus
3184	SPAN	3010	3	B	22697	3	Adv Rhetoric/Composition	LEC	11:00 AM - 11:50 AM	MWF	HLMS 220		18	Main Campus
3185	SPAN	3050	1	B	14722	3	Spanish Phonology/Phonetics	LEC	12:00 PM - 12:50 PM	MWF	GUGG 2		25	Main Campus
3186	SPAN	3050	2	B	22481	3	Spanish Phonology/Phonetics	LEC	02:00 PM - 03:15 PM	TTH	KTCH 1B60		25	Main Campus
3187	SPAN	3060	1	B	22485	3	Span for Careers Env and Sust	LEC	03:30 PM - 04:45 PM	TTH	KTCH 1B44		24	Main Campus
3188	SPAN	3080	1	B	22486	3	Spanish Health Professions	LEC	01:00 PM - 01:50 PM	MWF	DUAN G1B27		24	Main Campus
3189	SPAN	3100	1	B	14723	3	Lit Culture Analys in Spanish	LEC	12:00 PM - 12:50 PM	MWF	HLMS 263		22	Main Campus
3190	SPAN	3100	2	B	20628	3	Lit Culture Analys in Spanish	LEC	02:00 PM - 03:15 PM	TTH	MKNA 204	Herrero-Senes,Juan	22	Main Campus
3191	SPAN	3100	3	B	22482	3	Lit Culture Analys in Spanish	LEC	01:00 PM - 01:50 PM	MWF	KTCH 1B44	Brady,Caitlin	22	Main Campus
3192	SPAN	3120	1	B	14724	3	Advanced Spanish Grammar	LEC	01:00 PM - 01:50 PM	MWF	EDUC 143		25	Main Campus
3193	SPAN	3120	3	B	20627	3	Advanced Spanish Grammar	LEC	12:30 PM - 01:45 PM	TTH	MKNA 204	Brown,Esther Lynn	25	Main Campus
3194	SPAN	3200	2	B	22686	3	Spanish Culture	LEC	08:00 AM - 09:15 AM	TTH	ECON 2		25	Main Campus
3195	SPAN	3215	1	B	22487	3	Latin American/Iberian Cities	LEC	03:30 PM - 04:45 PM	TTH	CLRE 211		24	Main Campus
3196	SPAN	3220	1	B	20202	3	Spanish Amer & Brazil Culture	LEC	-				22	Main Campus
3197	SPAN	3280	1	B	20994	3	Catalan Literature & Film	LEC	09:00 AM - 09:50 AM	MWF	EDUC 143		24	Main Campus
3198	SPAN	3700	10	B	20981	3	Rdgs: Spanish Lit Translation	LEC	09:00 AM - 09:50 AM	MW	CLRE 207		20	Main Campus
3199	SPAN	3700	11	B	20982	3	Rdgs: Spanish Lit Translation	REC	12:00 PM - 12:50 PM	M	GUGG 3		30	Main Campus
3200	SPAN	3700	12	B	20983	3	Rdgs: Spanish Lit Translation	REC	08:00 AM - 08:50 AM	T	CLRE 301		30	Main Campus
3201	SPAN	3900	10	B	22491	3	Hispanic Science Fiction	LEC	12:30 PM - 01:45 PM	T			30	Main Campus
3202	SPAN	3900	11	B	22492	3	Hispanic Science Fiction	REC	12:30 PM - 01:45 PM	TH			30	Main Campus
3203	SPAN	3900	13	B	22693	3	Hispanic Science Fiction	REC	12:30 PM - 01:45 PM	TH	CHEM 146		30	Main Campus
3204	SPAN	4060	1	B	14725	3	Prob Transl Prof Span 1	LEC	08:00 AM - 09:15 AM	TTH	KTCH 1B44		25	Main Campus
3205	SPAN	4180	1	B	14726	3	Mjr Wrks: Lat Am 1900-Present	LEC	01:00 PM - 01:50 PM	MWF			25	Main Campus
3206	SPAN	4215	1	B	21845	3	Spanish in the United States	LEC	01:00 PM - 01:50 PM	MWF	HALE 240		24	Main Campus
3207	SPAN	4220	2	B	22696	1-3	Sp Tpcs-Sp & Sp Am Lit	LEC	02:00 PM - 02:50 PM	MWF	MKNA 204		25	Main Campus
3208	SPAN	4660	1	B	14727	6	High Sch Span Teaching	PRA	-		See Academc Dept	Becher,Anne Helen	10	Main Campus
3209	SPAN	4980	801	B	22813	1	Mthd Lang Learn/Pedagogy	LEC	03:00 PM - 03:50 PM	F	RAMY N1B31	Becher,Anne Helen	20	Main Campus
3210	SPAN	5200	1	B	20675	3	Sem-Spanish Lit/Ren/Baroque	SEM	-				15	Main Campus
3211	SPAN	5220	1	B	20631	3	Sem: Spanish Lit, 20th Century	SEM	-				6	Main Campus
3212	SPAN	5320	1	B	21001	3	Sem-20 C Span/Amer Literature	SEM	-				15	Main Campus
3213	SPAN	5320	2	B	22534	3	Sem-20 C Span/Amer Literature	SEM	-				15	Main Campus
3214	SPAN	5440	2	B	22719	3	Sem/Trends/Hisp/Ling	SEM	-				6	Main Campus
3215	SPAN	7200	1	B	20676	3	Sem-Spanish Lit/Ren/Baroque	SEM	-				15	Main Campus
3216	SPAN	7220	1	B	20632	3	Sem: Spanish Lit, 20th Century	SEM	-				6	Main Campus
3217	SPAN	7320	1	B	21002	3	Sem-20 C Span/Amer Literature	SEM	-				10	Main Campus
3218	SPAN	7320	2	B	22537	3	Sem-20 C Span/Amer Literature	SEM	-				10	Main Campus
3219	SPAN	7440	2	B	22720	3	Sem/Trends/Hisp/Ling	SEM	-				6	Main Campus
3220	SLHS	1010	1	B	21565	3	Disabilities in Society	LEC	10:00 AM - 10:50 AM	MWF	HUMN 135	Pollard,Ryan Daniel	74	Main Campus
3221	SLHS	2000	2	B	20992	3	Intro Comm Disorders	LEC	02:00 PM - 03:15 PM	TTH	RAMY N1B23	Ramsberger,Gail	70	Main Campus
3222	SLHS	2010	1	B	18294	3	Sci of Human Communication	LEC	12:30 PM - 01:45 PM	TTH	ECCR 200	Pollard,Ryan Daniel	95	Main Campus
3223	SLHS	2305	2	B	19455	4	Amer Sign Lang 1	LEC	02:00 PM - 02:50 PM	M-TH	KTCH 1B64	Moers,Willard Lee	16	Main Campus
3224	SLHS	2305	3	B	19458	4	Amer Sign Lang 1	LEC	10:00 AM - 10:50 AM	M-TH	KTCH 1B64	Berman,Rachel Gayle	16	Main Campus
3225	SLHS	2305	4	B	21077	4	Amer Sign Lang 1	LEC	03:00 PM - 04:50 PM	MW	KCEN N252	Berman,Rachel Gayle	16	Main Campus
3226	SLHS	2315	1	B	14141	4	Amer Sign Lang 2	LEC	09:00 AM - 09:50 AM	M-TH	KTCH 1B64	Moers,Willard Lee	16	Main Campus
3227	SLHS	2315	2	B	20412	4	Amer Sign Lang 2	LEC	08:00 AM - 08:50 AM	M-TH	KTCH 1B64	Moers,Willard Lee	16	Main Campus
3228	SLHS	2315	3	B	22703	4	Amer Sign Lang 2	LEC	02:00 PM - 03:50 PM	TTH	SLHS 393	Berman,Rachel Gayle	16	Main Campus
3229	SLHS	2325	1	B	14142	4	Amer Sign Lang 3	LEC	11:00 AM - 11:50 AM	M-TH	HUMN 190	Berman,Rachel Gayle	16	Main Campus
3230	SLHS	2325	2	B	21418	4	Amer Sign Lang 3	LEC	03:00 PM - 03:50 PM	M-TH	KTCH 1B64	Moers,Willard Lee	16	Main Campus
3231	SLHS	3106	1	B	14143	3	Hearing Science	LEC	12:30 PM - 01:45 PM	TTH	BESC 185	Arehart,Kathryn H	35	Main Campus
3232	SLHS	3116	1	B	19548	3	Speech Science	LEC	11:00 AM - 12:15 PM	TTH	HLMS 241	Hageman,Carlin Frowin	42	Main Campus
3233	SLHS	4502	2	B	20615	3	Lang Disorders:Chd/Adult	LEC	03:30 PM - 04:45 PM	TTH	ECON 13	Kan,Pui Fong	42	Main Campus
3234	SLHS	4512	1	B	21408	3	Sp Disord Across Lifespan	LEC	09:30 AM - 10:45 AM	TTH	EDUC 155	Pollard,Ryan Daniel	42	Main Campus
3235	SLHS	4560	1	B	35271	3	Language Development	LEC	10:00 AM - 10:50 AM	MWF	SLHS 230		21	Main Campus
3236	SLHS	4560	2	B	19748	3	Language Development	LEC	11:00 AM - 11:50 AM	MWF	SLHS 230	Boerger,Karin Margaret	21	Main Campus
3237	SLHS	4704	1	B	20991	3	Audiological Evaluation	LEC	04:30 PM - 05:45 PM	MW	KTCH 1B87	Baiduc,Rachael Rebecca	42	Main Campus
3238	SLHS	4714	1	B	20178	3	Audiological Rehab	LEC	02:00 PM - 03:15 PM	TTH	HLMS 241	Bonino,Angela	42	Main Campus
3239	SLHS	4918	1	B	14145	2	Intro/Clinical Practice	LEC	05:00 PM - 06:50 PM	TH	MUEN E432	Boerger,Karin Margaret	32	Main Campus
3240	SLHS	5012	3	B	21988	3	EBP and Research Methods	LEC	09:30 AM - 12:20 PM	TH	SLHS 230	Kan,Pui Fong	35	Main Campus
3241	SLHS	5242	1	B	21023	3	Lang Dis: School-Age	LEC	09:00 AM - 11:50 AM	T	SLHS 230	Brennan,Christine	35	Main Campus
3242	SLHS	5252	2	B	20637	3	Acq Adult Lang Disorders	SEM	01:00 PM - 02:15 PM	MW	SLHS 230	Ramsberger,Gail	35	Main Campus
3243	SLHS	5292	1	B	34753	3	Neurogenic Speech Dis Adults	SEM	05:00 PM - 07:50 PM	T	SLHS 230		35	Main Campus
3244	SLHS	5332	1	B	21957	2	Voice Disorders	LEC	01:00 PM - 02:50 PM	T	SLHS 230	Lewon,Jennifer	35	Main Campus
3245	SLHS	5352	1	B	22745	3	Bilinguals with Comm Disorders	LEC	09:00 AM - 11:50 AM	W	SLHS 270	Kan,Pui Fong	12	Main Campus
3246	SLHS	5555	1	B	21567	3	Advanced Topics: Autism (ASD)	LEC	01:00 PM - 03:50 PM	TH	SLHS 230	Meyers,Christina Nicole	35	Main Campus
3247	SLHS	5576	1	B	14144	3	Neuroanatomy	LEC	03:00 PM - 04:15 PM	MW	BESC 185	Brennan,Christine	75	Main Campus
3248	SLHS	5602	1	B	14140	3	Comm Challenges: Birth to Six	LEC	01:00 PM - 03:50 PM	F	SLHS 230	Meyers,Christina Nicole	35	Main Campus
3249	SLHS	5878	900	B	14148	1-3	Prac 1-Sp/Lang/Lrn/Appra	PRA	-			Lemke,Alison	45	Main Campus
3250	SLHS	5898	1	B	21022	1-4	Prac 1-Sp/Lang/Lrn/Intrv	PRA	12:00 PM - 12:50 PM	W	SLHS 230	Lemke,Alison	35	Main Campus
3251	SLHS	5918	901	B	21045	1-3	Aud Clinical Practicum: Lab	PRA	10:00 AM - 10:50 AM	M	SLHS 217	Sommerfeldt,Kristin Kay	4	Main Campus
3252	SLHS	5918	904	B	21958	1-3	Aud Clinical Practicum: Lab	PRA	02:30 PM - 03:20 PM	T	SLHS 217	Sommerfeldt,Kristin Kay	4	Main Campus
3253	SLHS	5918	906	B	21959	1-3	Aud Clinical Practicum: Lab	PRA	03:30 PM - 04:20 PM	T	SLHS 217	Sommerfeldt,Kristin Kay	4	Main Campus
3254	SLHS	5928	900	B	21960	1-4	Aud Clinical Practicum Level 1	PRA	-			Fredrickson,Tammy Lynn	20	Main Campus
3255	SLHS	5938	900	B	14149	1-4	Aud Clinic Pract:Level 2 Educ	PRA	-			Fredrickson,Tammy Lynn	15	Main Campus
3256	SLHS	5948	900	B	20996	1-4	Aud Clinic Pract: Level 2 Med	PRA	-			Fredrickson,Tammy Lynn	20	Main Campus
3257	SLHS	6000	1	B	21146	1-4	Problems in SLHS	SEM	-			Ramsberger,Gail	70	Main Campus
3258	SLHS	6006	1	B	21879	3	Advanced Hearing Science	LEC	09:00 AM - 10:15 AM	TTH	SLHS 393	Arehart,Kathryn H	20	Main Campus
3259	SLHS	6544	1	B	21046	3	Auditory Processes:Adult	LEC	10:30 AM - 11:45 AM	TTH	SLHS 393	Baiduc,Rachael Rebecca	20	Main Campus
3260	SLHS	6642	2	B	22834	3	Childhood Hearing Loss	LEC	09:00 AM - 11:50 AM	W	SLHS 393	Stith,Joanna	25	Main Campus
3261	SLHS	6918	800	B	14150	7	Prac 2-Sp/Lang/Lrn/Intrn	PRA	-			Lemke,Alison	35	Main Campus
3262	SLHS	6918	801	B	20701	7	Prac 2-Sp/Lang/Lrn/Intrn	PRA	-			Lemke,Alison	5	Main Campus
3263	SLHS	6928	801	B	14151	1-7	Prac 2-Public Sch Intern	PRA	-			Lemke,Alison	35	Main Campus
3264	SLHS	6938	800	B	14152	1-10	Aud Clinic Externship: Educ	PRA	-			Fredrickson,Tammy Lynn	15	Main Campus
3265	SLHS	6948	800	B	20997	1-10	Aud Clinic Externship: Med	PRA	-			Fredrickson,Tammy Lynn	15	Main Campus
3266	SLHS	7000	1	B	34761	3	Research Designs in CDSS	SEM	01:00 PM - 02:15 PM		SLHS 393	Schick,Brenda	20	Main Campus
3267	SLHS	7200	1	B	34765	3	Bus, Mgmt, Ethics in Audiology	SEM	04:00 PM - 06:50 PM	M	SLHS 393		20	Main Campus
3268	SLHS	7520	1	B	34766	3	Aud Proc Medical Genetic	SEM	04:00 PM - 06:50 PM	T	See Academc Dept		20	Main Campus
3269	SLHS	7530	1	B	34767	3	Aud Proc School Environ	SEM	12:00 PM - 02:50 PM	M	SLHS 393	Sommerfeldt,Kristin Kay	20	Main Campus
3270	SLHS	7775	1	B	14423	1	Tpcs-Cognitive Science	SEM	12:00 PM - 02:00 PM	F	MUEN D430	Sumner,Tamara Ruth	15	Main Campus
3271	SLHS	7918	800	B	14153	3	Prac 3-Clinical Supervsn	PRA	-				5	Main Campus
3272	SLHS	8918	800	B	14249	3	Prac 3-Classrm Instructn	PRA	-				5	Main Campus
3273	SLHS	5132	1	B81	34752	1	Clin Practice II: School Based	LEC	05:00 PM - 06:50 PM	M	SLHS 230	Marson Parker,Jennifer Sarelle	35	Main Campus
3274	SLHS	5142	2	B81	22894	1	Clinical Practice III: Medical	LEC	05:00 PM - 06:50 PM	TH	SLHS 230	Griffin,Meghann Gabrille	35	Main Campus
3275	SLHS	5372	2	B82	22896	1	Resonance Disorders	LEC	05:00 PM - 07:50 PM	M	SLHS 230	Steffen,Jeffrey Karl	35	Main Campus
3276	SWE	1010	1	B	21179	4	Beginning Swedish 1	LEC	02:00 PM - 02:50 PM	M-TH	HLMS 145	Leonhardt-Lupa,Merete A	20	Main Campus
3277	THTR	1003	1	B	20039	3	Acting 1	LEC	11:00 AM - 12:50 PM	TTH	THTR C240		18	Main Campus
3278	THTR	1003	2	B	14448	3	Acting 1	LEC	11:00 AM - 12:50 PM	TTH	THTR C370		18	Main Campus
3279	THTR	1003	3	B	19747	3	Acting 1	LEC	12:00 PM - 01:50 PM	MW	THTR C1B40		18	Main Campus
3280	THTR	1003	5	B	20687	3	Acting 1	LEC	02:00 PM - 03:50 PM	TTH	THTR C1B40		18	Main Campus
3281	THTR	1019	1	B	14796	3	Script Lab: Text Analysis	LEC	09:00 AM - 09:50 AM	MWF	THTR C370		20	Main Campus
3282	THTR	1019	2	B	22251	3	Script Lab: Text Analysis	LEC	09:00 AM - 09:50 AM	MWF	THTR C240		20	Main Campus
3283	THTR	1105	1	B	14826	3	Stage Technologies	LEC	09:30 AM - 10:45 AM	TTH	THTR C190		30	Main Campus
3284	THTR	1115	1	B	14803	3	Costume Technologies	LEC	09:30 AM - 10:45 AM	TTH	THTR C370	Stark,Theodore	30	Main Campus
3285	THTR	2043	801	B	19913	3	Voice and Movement for Stage	LEC	10:00 AM - 11:50 AM	MW	THTR C1B40	Meneghini-Stalker,Tamara L.	18	Main Campus
3286	THTR	2105	1	B	19547	3	Intro to Performance Design	LEC	11:00 AM - 12:15 PM	TTH	THTR C340	Stark,Theodore	24	Main Campus
3287	THTR	2105	1	B	19547	3	Intro to Performance Design	LEC	11:00 AM - 12:15 PM	TTH	THTR C340	Spencer,Jonathan	24	Main Campus
3288	THTR	3005	1	B	19476	3	Costume Design 1	LEC	01:00 PM - 04:50 PM	TTH	THTR C340	Henry,Mark Allen	10	Main Campus
3289	THTR	3013	801	B	19752	3	Stu 1: Bldg a Character	LEC	02:00 PM - 04:50 PM	MW	THTR C1B40	Persons,Charles Howard	20	Main Campus
3290	THTR	3033	800	B	16935	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept		20	Main Campus
3291	THTR	3033	801	B	16936	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept	Coleman,Bertram E	20	Main Campus
3292	THTR	3033	802	B	16937	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept		20	Main Campus
3293	THTR	3033	803	B	16938	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept	Pang,Cecilia J	20	Main Campus
3294	THTR	3033	804	B	16939	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept	Persons,Charles Howard	20	Main Campus
3295	THTR	3033	805	B	16940	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept	Meneghini-Stalker,Tamara L.	20	Main Campus
3296	THTR	3033	806	B	16941	1-3	Prod Res/Pract: Acting	PRA	- 12:50 AM	TBA	See Academc Dept	Gerland,Oliver W	20	Main Campus
3297	THTR	3035	810	B	14615	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept		10	Main Campus
3298	THTR	3035	811	B	14616	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Lane,Constance Irene	10	Main Campus
3299	THTR	3035	812	B	14617	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept		10	Main Campus
3300	THTR	3035	813	B	14618	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept		10	Main Campus
3301	THTR	3035	820	B	14619	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Lane,Constance Irene	20	Main Campus
3302	THTR	3035	821	B	14620	2	Production Practicum	PRA	10:00 AM - 11:50 AM	WF	THTR C190		30	Main Campus
3303	THTR	3035	830	B	14621	1-2	Production Practicum	PRA	-	TBA	See Academc Dept	Court,Iain Maxwell	10	Main Campus
3304	THTR	3035	831	B	14748	1-2	Production Practicum	PRA	-	TBA	See Academc Dept	Lane,Constance Irene	10	Main Campus
3305	THTR	3035	840	B	14749	1-2	Production Practicum	PRA	01:00 PM - 06:00 PM	M-F	THTR C1B30	Stark,Theodore	30	Main Campus
3306	THTR	3035	841	B	14750	1-2	Production Practicum	PRA	-	TBA	See Academc Dept	Stark,Theodore	30	Main Campus
3307	THTR	3035	842	B	14752	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Stark,Theodore	30	Main Campus
3308	THTR	3035	843	B	14757	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Stark,Theodore	30	Main Campus
3309	THTR	3035	850	B	14758	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Coleman,Bertram E	5	Main Campus
3310	THTR	3035	851	B	14759	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept	Lane,Constance Irene	5	Main Campus
3311	THTR	3035	860	B	14760	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept		10	Main Campus
3312	THTR	3035	861	B	14761	1-2	Production Practicum	PRA	- 12:50 AM	TBA	See Academc Dept		10	Main Campus
3313	THTR	3055	10	B	22255	3	Stage Lighting Design 1	LEC	10:00 AM - 11:50 AM	M	THTR C240	Spencer,Jonathan	20	Main Campus
3314	THTR	3055	11	B	34728	3	Stage Lighting Design 1	LAB	10:00 AM - 11:00 AM	W	THTR C240	Spencer,Jonathan	20	Main Campus
3315	THTR	3075	1	B	36458	3	Sound Design	LEC	09:00 AM - 10:45 AM	TTH	THTR W1B60		13	Main Campus
3316	THTR	3149	1	B	19776	2	Professional Orientation	LEC	01:00 PM - 02:50 PM	W	THTR C370	Lane,Constance Irene	30	Main Campus
3317	THTR	3149	2	B	21150	2	Professional Orientation	LEC	01:00 PM - 02:50 PM	W	THTR C240	Wilkins,Helanius J	30	Main Campus
3318	THTR	3213	1	B	22284	3	Improvisation I	LEC	12:30 PM - 01:45 PM	TTH	THTR C1B40		18	Main Campus
3319	THTR	4005	1	B	19477	3	Costume Design 2	LEC	01:00 PM - 04:50 PM	TTH	THTR C340	Henry,Mark Allen	10	Main Campus
3320	THTR	4013	1	B	14792	3	Stu 3: Acting Shakespear	LEC	01:00 PM - 04:00 PM	TTH	THTR C240	Rich,Kevin M	19	Main Campus
3321	THTR	4015	1	B	34184	3	Scene Design 2	LEC	10:00 AM - 12:30 PM	W	THTR C340	Bergner,Bruce Alan	20	Main Campus
3322	THTR	4029	1	B	15994	3	Performance and Community	LEC	02:00 PM - 03:30 PM	TTH	CARL E012	Osnes,Mary Beth	25	Main Campus
3323	THTR	4029	1	B	15994	3	Performance and Community	LEC	02:00 PM - 03:30 PM	TTH	CARL E012	Sowah,Nii Armah	25	Main Campus
3324	THTR	4033	801	B	20095	3	Adv Movement for Stage	LEC	10:00 AM - 11:50 AM	TTH	THTR C1B40	Meneghini-Stalker,Tamara L.	12	Main Campus
3325	THTR	4051	1	B	34932	3	Playwriting	LEC	09:30 AM - 10:45 AM	TTH	THTR C342	Rich,Kevin M	12	Main Campus
3326	THTR	4061	801	B	20040	3	Directing	LEC	03:00 PM - 05:50 PM	MW	THTR C370	Pang,Cecilia J	14	Main Campus
3327	THTR	4103	801	B	22254	3	Acting & Directing for Camera	SEM	10:00 AM - 11:50 AM	MW	MCKY 2B27	Persons,Charles Howard	12	Main Campus
3328	THTR	4125	1	B	34186	3	Illustration and Rendering	STU	01:00 PM - 05:00 PM	M	THTR C340		15	Main Campus
3329	THTR	4555	800	B	16989	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For	Spencer,Jonathan	12	Main Campus
3330	THTR	4555	801	B	16990	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For		12	Main Campus
3331	THTR	4555	802	B	16991	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For	Henry,Mark Allen	12	Main Campus
3332	THTR	4555	803	B	16992	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For		12	Main Campus
3333	THTR	4555	804	B	16993	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For	Stark,Theodore	12	Main Campus
3334	THTR	4555	805	B	16994	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For	Court,Iain Maxwell	12	Main Campus
3335	THTR	4555	806	B	16995	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For	Bergner,Bruce Alan	12	Main Campus
3336	THTR	4555	807	B	16996	1-2	Production Studio	PRA	12:00 PM - 12:50 PM	F	See Class Notes For	Lane,Constance Irene	12	Main Campus
3337	THTR	5010	1	B	22253	3	Into to Performance Studies	LEC	12:00 PM - 02:45 PM	M	THTR C342	Steuernagel,Marcos D	15	Main Campus
3338	THTR	5011	1	B	34188	3	Sem-Theory and Criticism	SEM	10:00 AM - 12:45 PM	M	THTR C340	Gerland,Oliver W	15	Main Campus
3339	THTR	5033	801	B	34729	3	Adv Movement for Stage	LEC	10:00 AM - 11:50 AM	TTH	THTR C1B40	Meneghini-Stalker,Tamara L.	4	Main Campus
3340	THTR	5045	801	B	34195	3	Costume Crafts	STU	09:00 AM - 10:50 AM	MWF	THTR C1B30	Stark,Theodore	10	Main Campus
3341	THTR	5051	1	B	34933	3	Special Topics in Theatre Hist	SEM	09:30 AM - 10:45 AM	TTH	THTR C342	Rich,Kevin M	4	Main Campus
3342	THTR	5071	801	B	22283	3	Advanced Directing	LEC	03:00 PM - 05:50 PM	MW	THTR C370	Pang,Cecilia J	2	Main Campus
3343	THTR	5125	1	B	34187	3	Illustration and Rendering	STU	01:00 PM - 05:00 PM	M	THTR C340		5	Main Campus
3344	THTR	6031	1	B	34189	3	American Theatre	SEM	02:00 PM - 05:00 PM	W	THTR C342	Coleman,Bertram E	15	Main Campus
3345	WRT	1100	2	B	14491	4	Extended 1st Yr Writing	SEM	10:00 AM - 10:50 AM	MWF	HALE 235		0	Main Campus
3346	WRT	1100	4	B	14492	4	Extended 1st Yr Writing	SEM	11:00 AM - 11:50 AM	MWF	HALE 235		0	Main Campus
3347	WRT	1100	6	B	14493	4	Extended 1st Yr Writing	SEM	12:00 PM - 12:50 PM	MWF	CLUB 10		0	Main Campus
3348	WRT	1100	8	B	17465	4	Extended 1st Yr Writing	SEM	01:00 PM - 01:50 PM	MWF	CLUB 10		15	Main Campus
3349	WRT	1100	10	B	14495	4	Extended 1st Yr Writing	SEM	02:00 PM - 02:50 PM	MWF	CLUB 10		0	Main Campus
3350	WRT	1100	12	B	20476	4	Extended 1st Yr Writing	SEM	09:30 AM - 10:45 AM	TTH	HUMN 335		0	Main Campus
3351	WRT	1100	14	B	18278	4	Extended 1st Yr Writing	SEM	11:00 AM - 12:15 PM	TTH	HALE 235		0	Main Campus
3352	WRT	1100	16	B	14494	4	Extended 1st Yr Writing	SEM	12:30 PM - 01:45 PM	TTH	HUMN 335		0	Main Campus
3353	WRT	1100	18	B	35155	4	Extended 1st Yr Writing	SEM	02:00 PM - 03:15 PM	TTH	HALE 235		15	Main Campus
3354	WRT	1150	1	B	14420	3	1st Yr Writing/Rhetoric	SEM	08:00 AM - 08:50 AM	MWF	HUMN 160		0	Main Campus
3355	WRT	1150	4	B	21055	3	1st Yr Writing/Rhetoric	SEM	09:00 AM - 09:50 AM	MWF	HUMN 160		19	Main Campus
3356	WRT	1150	5	B	18667	3	1st Yr Writing/Rhetoric	SEM	09:00 AM - 09:50 AM	MWF	CHEM 133		0	Main Campus
3357	WRT	1150	6	B	14476	3	1st Yr Writing/Rhetoric	SEM	09:00 AM - 09:50 AM	MWF	HLMS 104		0	Main Campus
3358	WRT	1150	7	B	22160	3	1st Yr Writing/Rhetoric	SEM	09:00 AM - 09:50 AM	MWF	DUAN G1B35		0	Main Campus
3359	WRT	1150	9	B	33176	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	DUAN G1B35		0	Main Campus
3360	WRT	1150	10	B	14475	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	DUAN G1B39		0	Main Campus
3361	WRT	1150	11	B	18169	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	KTCH 1B44		19	Main Campus
3362	WRT	1150	12	B	21344	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	MUEN D439		0	Main Campus
3363	WRT	1150	13	B	21425	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	HUMN 370		0	Main Campus
3364	WRT	1150	14	B	20290	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	CHEM 145		0	Main Campus
3365	WRT	1150	15	B	14477	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	MUEN E130		0	Main Campus
3366	WRT	1150	19	B	20298	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF	EKLC M203		0	Main Campus
3367	WRT	1150	20	B	21056	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF	RAMY N1B75		0	Main Campus
3368	WRT	1150	21	B	21406	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF	DUAN G1B39		0	Main Campus
3369	WRT	1150	22	B	20299	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF	KTCH 1B44		0	Main Campus
3370	WRT	1150	23	B	20303	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF			0	Main Campus
3371	WRT	1150	24	B	33178	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF			0	Main Campus
3372	WRT	1150	28	B	22161	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF	HUMN 160		19	Main Campus
3373	WRT	1150	29	B	14479	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF	KTCH 1B64		0	Main Campus
3374	WRT	1150	30	B	21057	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF	DUAN G1B27		0	Main Campus
3375	WRT	1150	31	B	21407	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF	HLMS 181		0	Main Campus
3376	WRT	1150	32	B	14480	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF	KTCH 1B44		0	Main Campus
3377	WRT	1150	33	B	14478	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF	MUEN E130		0	Main Campus
3378	WRT	1150	34	B	14481	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF			0	Main Campus
3379	WRT	1150	35	B	20932	3	1st Yr Writing/Rhetoric	SEM	12:00 PM - 12:50 PM	MWF			0	Main Campus
3380	WRT	1150	38	B	19109	3	1st Yr Writing/Rhetoric	SEM	01:00 PM - 01:50 PM	MWF			0	Main Campus
3381	WRT	1150	39	B	19735	3	1st Yr Writing/Rhetoric	SEM	01:00 PM - 01:50 PM	MWF	HUMN 160		0	Main Campus
3382	WRT	1150	40	B	33173	3	1st Yr Writing/Rhetoric	SEM	01:00 PM - 01:50 PM	MWF	DUAN G1B35		0	Main Campus
3383	WRT	1150	41	B	18181	3	1st Yr Writing/Rhetoric	SEM	01:00 PM - 01:50 PM	MWF	ECCR 1B08		19	Main Campus
3384	WRT	1150	42	B	22158	3	1st Yr Writing/Rhetoric	SEM	01:00 PM - 01:50 PM	MWF	HLMS 181		0	Main Campus
3385	WRT	1150	43	B	22162	3	1st Yr Writing/Rhetoric	SEM	01:00 PM - 01:50 PM	MWF			0	Main Campus
3386	WRT	1150	47	B	19736	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 02:50 PM	MWF	CHEM 133		0	Main Campus
3387	WRT	1150	48	B	19737	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 02:50 PM	MWF	DUAN G1B35		0	Main Campus
3388	WRT	1150	49	B	19739	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 02:50 PM	MWF	DUAN G1B39		0	Main Campus
3389	WRT	1150	50	B	19738	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 02:50 PM	MWF	MUEN E114		19	Main Campus
3390	WRT	1150	51	B	20300	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 02:50 PM	MWF	KTCH 1B44		0	Main Campus
3391	WRT	1150	52	B	22163	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 02:50 PM	MWF	HUMN 160		0	Main Campus
3392	WRT	1150	55	B	22164	3	1st Yr Writing/Rhetoric	SEM	03:00 PM - 04:15 PM	MW	HUMN 1B70		0	Main Campus
3393	WRT	1150	56	B	14484	3	1st Yr Writing/Rhetoric	SEM	03:00 PM - 04:15 PM	MW	ECON 16		0	Main Campus
3394	WRT	1150	57	B	21246	3	1st Yr Writing/Rhetoric	SEM	03:00 PM - 04:15 PM	MW	DUAN G1B35		19	Main Campus
3395	WRT	1150	58	B	14482	3	1st Yr Writing/Rhetoric	SEM	03:00 PM - 04:15 PM	MW	ECCR 1B08		0	Main Campus
3396	WRT	1150	59	B	14483	3	1st Yr Writing/Rhetoric	SEM	03:00 PM - 04:15 PM	MW	DUAN G1B39		0	Main Campus
3397	WRT	1150	60	B	20301	3	1st Yr Writing/Rhetoric	SEM	03:00 PM - 04:15 PM	MW	HUMN 186		0	Main Campus
3398	WRT	1150	63	B	33174	3	1st Yr Writing/Rhetoric	SEM	04:30 PM - 05:45 PM	MW	MUEN E432		0	Main Campus
3399	WRT	1150	64	B	14488	3	1st Yr Writing/Rhetoric	SEM	04:30 PM - 05:45 PM	MW	ECON 16		19	Main Campus
3400	WRT	1150	65	B	14487	3	1st Yr Writing/Rhetoric	SEM	04:30 PM - 05:45 PM	MW	HUMN 160		0	Main Campus
3401	WRT	1150	68	B	14486	3	1st Yr Writing/Rhetoric	SEM	08:00 AM - 09:15 AM	TTH	HUMN 245		19	Main Campus
3402	WRT	1150	72	B	20246	3	1st Yr Writing/Rhetoric	SEM	09:30 AM - 10:45 AM	TTH	ECST 1B21		0	Main Campus
3403	WRT	1150	73	B	21348	3	1st Yr Writing/Rhetoric	SEM	09:30 AM - 10:45 AM	TTH	CHEM 133		19	Main Campus
3404	WRT	1150	74	B	21455	3	1st Yr Writing/Rhetoric	SEM	09:30 AM - 10:45 AM	TTH	CLRE 211		0	Main Campus
3405	WRT	1150	75	B	20608	3	1st Yr Writing/Rhetoric	SEM	09:30 AM - 10:45 AM	TTH	EKLC M203		0	Main Campus
3406	WRT	1150	76	B	33180	3	1st Yr Writing/Rhetoric	SEM	09:30 AM - 10:45 AM	TTH			0	Main Campus
3407	WRT	1150	80	B	19740	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 12:15 PM	TTH	EKLC M203		19	Main Campus
3408	WRT	1150	81	B	22159	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 12:15 PM	TTH	DUAN G1B39		0	Main Campus
3409	WRT	1150	82	B	33181	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 12:15 PM	TTH	EKLC E1B75		0	Main Campus
3410	WRT	1150	83	B	33182	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 12:15 PM	TTH	HUMN 245		0	Main Campus
3411	WRT	1150	86	B	20930	3	1st Yr Writing/Rhetoric	SEM	12:30 PM - 01:45 PM	TTH	DUAN G1B35		0	Main Campus
3412	WRT	1150	87	B	21245	3	1st Yr Writing/Rhetoric	SEM	12:30 PM - 01:45 PM	TTH	EKLC M203		19	Main Campus
3413	WRT	1150	88	B	20923	3	1st Yr Writing/Rhetoric	SEM	12:30 PM - 01:45 PM	TTH	MUEN E114		0	Main Campus
3414	WRT	1150	94	B	33183	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 03:15 PM	TTH			0	Main Campus
3415	WRT	1150	95	B	20478	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 03:15 PM	TTH	CLRE 211		19	Main Campus
3416	WRT	1150	96	B	20926	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 03:15 PM	TTH	CHEM 145		0	Main Campus
3417	WRT	1150	97	B	22165	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 03:15 PM	TTH			0	Main Campus
3418	WRT	1150	99	B	20928	3	1st Yr Writing/Rhetoric	SEM	03:30 PM - 04:45 PM	TTH	CHEM 131		0	Main Campus
3419	WRT	1150	100	B	20929	3	1st Yr Writing/Rhetoric	SEM	03:30 PM - 04:45 PM	TTH	MUEN E114		19	Main Campus
3420	WRT	1150	640R	B	21849	3	1st Yr Writing/Rhetoric	SEM	09:00 AM - 10:15 AM	TTH	WVN 166A		19	Main Campus
3421	WRT	1150	641R	B	22296	3	1st Yr Writing/Rhetoric	SEM	02:30 PM - 03:45 PM	TTH	WVN 166A		19	Main Campus
3422	WRT	1150	801	B	19112	3	1st Yr Writing/Rhetoric	SEM	10:00 AM - 10:50 AM	MWF	CLUB 10		15	Main Campus
3423	WRT	1150	802	B	19744	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 11:50 AM	MWF	CLUB 10		15	Main Campus
3424	WRT	1150	805	B	20338	3	1st Yr Writing/Rhetoric	SEM	09:30 AM - 10:45 AM	TTH	CLUB 10		15	Main Campus
3425	WRT	1150	806	B	21347	3	1st Yr Writing/Rhetoric	SEM	11:00 AM - 12:15 PM	TTH	HUMN 160		15	Main Campus
3426	WRT	1150	807	B	20339	3	1st Yr Writing/Rhetoric	SEM	12:30 PM - 01:45 PM	TTH	CLUB 10		15	Main Campus
3427	WRT	1150	808	B	21440	3	1st Yr Writing/Rhetoric	SEM	02:00 PM - 03:15 PM	TTH	HUMN 160		15	Main Campus
3428	WRT	1160	1	B	33443	3	CMCI First-Year Writing & Rhet	SEM	09:00 AM - 09:50 AM	MWF	DUAN G1B39		19	Main Campus
3429	WRT	1160	3	B	33444	3	CMCI First-Year Writing & Rhet	SEM	10:00 AM - 10:50 AM	MWF	DUAN G1B25		19	Main Campus
3430	WRT	1160	5	B	33445	3	CMCI First-Year Writing & Rhet	SEM	11:00 AM - 11:50 AM	MWF	MUEN E130		19	Main Campus
3431	WRT	1160	7	B	33446	3	CMCI First-Year Writing & Rhet	SEM	12:00 PM - 12:50 PM	MWF	EKLC M203		19	Main Campus
3432	WRT	1160	9	B	33447	3	CMCI First-Year Writing & Rhet	SEM	01:00 PM - 01:50 PM	MWF	CHEM 145		19	Main Campus
3433	WRT	1160	220R	B	33448	3	CMCI First-Year Writing & Rhet	SEM	12:30 PM - 01:45 PM	TTH	BUCK N101		19	Main Campus
3434	WRT	1160	221R	B	33449	3	CMCI First-Year Writing & Rhet	SEM	02:00 PM - 03:15 PM	TTH	BUCK N101		19	Main Campus
3435	WRT	1250	5	B	33407	3	Advanced 1st Yr Writing	SEM	11:00 AM - 11:50 AM	MWF			0	Main Campus
3436	WRT	1250	7	B	21058	3	Advanced 1st Yr Writing	SEM	12:00 PM - 12:50 PM	MWF	CLRE 211		0	Main Campus
3437	WRT	1250	15	B	14489	3	Advanced 1st Yr Writing	SEM	09:30 AM - 10:45 AM	TTH	HUMN 245		0	Main Campus
3438	WRT	1250	18	B	33408	3	Advanced 1st Yr Writing	SEM	11:00 AM - 12:15 PM	TTH			0	Main Campus
3439	WRT	1250	20	B	20485	3	Advanced 1st Yr Writing	SEM	12:30 PM - 01:45 PM	TTH	HUMN 160		0	Main Campus
3440	WRT	1250	22	B	22166	3	Advanced 1st Yr Writing	SEM	02:00 PM - 03:15 PM	TTH			19	Main Campus
3441	WRT	2020	1	B	14490	3	Intro Creative Nonfiction	SEM	10:00 AM - 10:50 AM	MWF	KTCH 1B60		20	Main Campus
3442	WRT	2090	1	B	35111	3	Electives in Writing	SEM	12:30 PM - 01:45 PM	TTH	HALE 235		15	Main Campus
3443	WRT	3007	3	B	19446	3	Writing in the Visual Arts	SEM	12:00 PM - 12:50 PM	MWF	MUEN E114		19	Main Campus
3444	WRT	3007	6	B	19127	3	Writing in the Visual Arts	SEM	01:00 PM - 01:50 PM	MWF	DUAN G1B39		19	Main Campus
3445	WRT	3007	10	B	35112	3	Writing in the Visual Arts	SEM	12:30 PM - 01:45 PM	TTH	ECCR 1B08		19	Main Campus
3446	WRT	3007	12	B	35113	3	Writing in the Visual Arts	SEM	02:00 PM - 03:15 PM	TTH	ECCR 1B08		19	Main Campus
3447	WRT	3020	3	B	14503	3	Topics in Writing	SEM	09:00 AM - 09:50 AM	MWF	HUMN 370		19	Main Campus
3448	WRT	3020	4	B	21436	3	Topics in Writing	SEM	09:00 AM - 09:50 AM	MWF	KTCH 1B84		19	Main Campus
3449	WRT	3020	7	B	15339	3	Topics in Writing	SEM	10:00 AM - 10:50 AM	MWF	CLRE 211		19	Main Campus
3450	WRT	3020	8	B	15340	3	Topics in Writing	SEM	10:00 AM - 10:50 AM	MWF	MUEN E114		19	Main Campus
3451	WRT	3020	9	B	19191	3	Topics in Writing	SEM	10:00 AM - 10:50 AM	MWF	ECCR 1B08		19	Main Campus
3452	WRT	3020	10	B	22167	3	Topics in Writing	SEM	10:00 AM - 10:50 AM	MWF	CLUB 13		19	Main Campus
3453	WRT	3020	13	B	33397	3	Topics in Writing	SEM	11:00 AM - 11:50 AM	MWF			19	Main Campus
3454	WRT	3020	14	B	15375	3	Topics in Writing	SEM	11:00 AM - 11:50 AM	MWF	ECCR 1B08		19	Main Campus
3455	WRT	3020	15	B	20484	3	Topics in Writing	SEM	11:00 AM - 11:50 AM	MWF	MUEN E114		19	Main Campus
3456	WRT	3020	15	B	20484	3	Topics in Writing	SEM	11:00 AM - 11:50 AM	MWF			19	Main Campus
3457	WRT	3020	16	B	35115	3	Topics in Writing	SEM	11:00 AM - 11:50 AM	MWF	HUMN 160		19	Main Campus
3458	WRT	3020	18	B	15376	3	Topics in Writing	SEM	12:00 PM - 12:50 PM	MWF	ECCR 1B08		19	Main Campus
3459	WRT	3020	19	B	19745	3	Topics in Writing	SEM	12:00 PM - 12:50 PM	MWF	ECST 1B21		19	Main Campus
3460	WRT	3020	20	B	14857	3	Topics in Writing	SEM	12:00 PM - 12:50 PM	MWF			19	Main Campus
3461	WRT	3020	21	B	15377	3	Topics in Writing	SEM	12:00 PM - 12:50 PM	MWF	KTCH 1B84		19	Main Campus
3462	WRT	3020	26	B	33398	3	Topics in Writing	SEM	01:00 PM - 01:50 PM	MWF	ECST 1B21		19	Main Campus
3463	WRT	3020	27	B	15391	3	Topics in Writing	SEM	01:00 PM - 01:50 PM	MWF	MUEN E114		19	Main Campus
3464	WRT	3020	28	B	19746	3	Topics in Writing	SEM	01:00 PM - 01:50 PM	MWF	HUMN 370		19	Main Campus
3465	WRT	3020	29	B	21923	3	Topics in Writing	SEM	01:00 PM - 01:50 PM	MWF			19	Main Campus
3466	WRT	3020	31	B	21931	3	Topics in Writing	SEM	02:00 PM - 02:50 PM	MWF	HLMS 191		19	Main Campus
3467	WRT	3020	32	B	15392	3	Topics in Writing	SEM	02:00 PM - 02:50 PM	MWF	ECCR 1B08		19	Main Campus
3468	WRT	3020	33	B	15393	3	Topics in Writing	SEM	02:00 PM - 02:50 PM	MWF	ECST 1B21		19	Main Campus
3469	WRT	3020	34	B	15394	3	Topics in Writing	SEM	02:00 PM - 02:50 PM	MWF	ECON 16		19	Main Campus
3470	WRT	3020	36	B	33399	3	Topics in Writing	SEM	03:00 PM - 04:15 PM	MW	CLUB 4		19	Main Campus
3471	WRT	3020	37	B	15395	3	Topics in Writing	SEM	03:00 PM - 04:15 PM	MW	DUAN G1B27		19	Main Campus
3472	WRT	3020	38	B	18680	3	Topics in Writing	SEM	03:00 PM - 04:15 PM	MW	ECST 1B21		19	Main Campus
3473	WRT	3020	39	B	21359	3	Topics in Writing	SEM	03:00 PM - 04:15 PM	MW	MUEN E114		19	Main Campus
3474	WRT	3020	40	B	22168	3	Topics in Writing	SEM	03:00 PM - 04:15 PM	MW	HLMS 191		19	Main Campus
3475	WRT	3020	42	B	14858	3	Topics in Writing	SEM	04:30 PM - 05:45 PM	MW	ECCR 1B08		19	Main Campus
3476	WRT	3020	43	B	14859	3	Topics in Writing	SEM	04:30 PM - 05:45 PM	MW	ECST 1B21		19	Main Campus
3477	WRT	3020	44	B	21360	3	Topics in Writing	SEM	04:30 PM - 05:45 PM	MW	MUEN E114		19	Main Campus
3478	WRT	3020	50	B	35116	3	Topics in Writing	SEM	09:30 AM - 10:45 AM	TTH			19	Main Campus
3479	WRT	3020	51	B	15396	3	Topics in Writing	SEM	09:30 AM - 10:45 AM	TTH	ECCR 1B08		19	Main Campus
3480	WRT	3020	52	B	15397	3	Topics in Writing	SEM	09:30 AM - 10:45 AM	TTH			19	Main Campus
3481	WRT	3020	55	B	20886	3	Topics in Writing	SEM	11:00 AM - 12:15 PM	TTH	MUEN E114		19	Main Campus
3482	WRT	3020	56	B	19906	3	Topics in Writing	SEM	11:00 AM - 12:15 PM	TTH	ECCR 1B08		19	Main Campus
3483	WRT	3020	57	B	20394	3	Topics in Writing	SEM	11:00 AM - 12:15 PM	TTH	RAMY N1B75		19	Main Campus
3484	WRT	3020	58	B	20395	3	Topics in Writing	SEM	11:00 AM - 12:15 PM	TTH	KTCH 1B44		19	Main Campus
3485	WRT	3020	59	B	15381	3	Topics in Writing	SEM	11:00 AM - 12:15 PM	TTH			19	Main Campus
3486	WRT	3020	62	B	33400	3	Topics in Writing	SEM	12:30 PM - 01:45 PM	TTH			19	Main Campus
3487	WRT	3020	63	B	33403	3	Topics in Writing	SEM	12:30 PM - 01:45 PM	TTH	ENVD 122		19	Main Campus
3488	WRT	3020	64	B	20396	3	Topics in Writing	SEM	12:30 PM - 01:45 PM	TTH			19	Main Campus
3489	WRT	3020	68	B	33404	3	Topics in Writing	SEM	02:00 PM - 03:15 PM	TTH	STAD 136C		19	Main Campus
3490	WRT	3020	69	B	15398	3	Topics in Writing	SEM	02:00 PM - 03:15 PM	TTH			19	Main Campus
3491	WRT	3020	70	B	33405	3	Topics in Writing	SEM	02:00 PM - 03:15 PM	TTH	EKLC M203		19	Main Campus
3492	WRT	3020	71	B	22169	3	Topics in Writing	SEM	02:00 PM - 03:15 PM	TTH	MCOL E186		19	Main Campus
3493	WRT	3020	75	B	20884	3	Topics in Writing	SEM	03:30 PM - 04:45 PM	TTH	ECCR 1B08		19	Main Campus
3494	WRT	3020	76	B	20885	3	Topics in Writing	SEM	03:30 PM - 04:45 PM	TTH	DUAN G1B27		19	Main Campus
3495	WRT	3020	77	B	22668	3	Topics in Writing	SEM	03:30 PM - 04:45 PM	TTH	HUMN 160		19	Main Campus
3496	WRT	3020	550R	B	20193	3	Topics in Writing	SEM	06:00 PM - 08:30 PM	W	Offered through CU in	Zierler,David B	19	Main Campus
3497	WRT	3020	800	B	16062	3	Topics in Writing	SEM	11:00 AM - 11:50 AM	MWF	HUMN 335		19	Main Campus
3498	WRT	3020	801	B	16063	3	Topics in Writing	SEM	11:00 AM - 12:15 PM	TTH	CLUB 10		19	Main Campus
3499	WRT	3020	802	B	20888	3	Topics in Writing	SEM	02:00 PM - 03:15 PM	TTH	CLUB 10		19	Main Campus
3500	WRT	3020	803	B	22187	3	Topics in Writing	SEM	03:30 PM - 04:45 PM	TTH	CLUB 10		19	Main Campus
3501	WRT	3020	880	B	21737	3	Topics in Writing	SEM	09:30 AM - 10:45 AM	TTH	LIBR N424A	Miller,Olivia Kour	17	Main Campus
3502	WRT	3030	1	B	15904	3	Writing/Science-Society	SEM	09:00 AM - 09:50 AM	MWF	ECST 1B21		19	Main Campus
3503	WRT	3030	3	B	15885	3	Writing/Science-Society	SEM	10:00 AM - 10:50 AM	MWF	ECST 1B21		19	Main Campus
3504	WRT	3030	4	B	15890	3	Writing/Science-Society	SEM	10:00 AM - 10:50 AM	MWF	DUAN G1B27		19	Main Campus
3505	WRT	3030	6	B	20302	3	Writing/Science-Society	SEM	11:00 AM - 11:50 AM	MWF	EDUC 143		19	Main Campus
3506	WRT	3030	7	B	33523	3	Writing/Science-Society	SEM	11:00 AM - 11:50 AM	MWF	STAD 135		19	Main Campus
3507	WRT	3030	9	B	15898	3	Writing/Science-Society	SEM	12:00 PM - 12:50 PM	MWF	DUAN G1B35		19	Main Campus
3508	WRT	3030	12	B	15900	3	Writing/Science-Society	SEM	01:00 PM - 01:50 PM	MWF	DUAN G1B25		19	Main Campus
3509	WRT	3030	15	B	15912	3	Writing/Science-Society	SEM	02:00 PM - 02:50 PM	MWF	DUAN G1B27		19	Main Campus
3510	WRT	3030	18	B	19771	3	Writing/Science-Society	SEM	03:00 PM - 04:15 PM	MW	CHEM 131		19	Main Campus
3511	WRT	3030	20	B	19772	3	Writing/Science-Society	SEM	04:30 PM - 05:45 PM	MW	CHEM 133		19	Main Campus
3512	WRT	3030	22	B	22170	3	Writing/Science-Society	SEM	09:30 AM - 10:45 AM	TTH	DUAN G1B35		19	Main Campus
3513	WRT	3030	25	B	22171	3	Writing/Science-Society	SEM	11:00 AM - 12:15 PM	TTH	ECST 1B21		19	Main Campus
3514	WRT	3030	26	B	33524	3	Writing/Science-Society	SEM	11:00 AM - 12:15 PM	TTH			19	Main Campus
3515	WRT	3030	28	B	19773	3	Writing/Science-Society	SEM	12:30 PM - 01:45 PM	TTH	ECST 1B21		19	Main Campus
3516	WRT	3030	29	B	20904	3	Writing/Science-Society	SEM	12:30 PM - 01:45 PM	TTH	DUAN G1B25		19	Main Campus
3517	WRT	3030	31	B	20902	3	Writing/Science-Society	SEM	02:00 PM - 03:15 PM	TTH	ECST 1B21		19	Main Campus
3518	WRT	3030	32	B	22712	3	Writing/Science-Society	SEM	02:00 PM - 03:15 PM	TTH	DUAN G1B39		19	Main Campus
3519	WRT	3030	34	B	15967	3	Writing/Science-Society	SEM	03:30 PM - 04:45 PM	TTH	ECST 1B21		19	Main Campus
3520	WRT	3030	800	B	16064	3	Writing/Science-Society	SEM	11:00 AM - 11:50 AM	MWF	HUMN 335		15	Main Campus
3521	WRT	3030	801	B	16065	3	Writing/Science-Society	SEM	11:00 AM - 12:15 PM	TTH	CLUB 10		15	Main Campus
3522	WRT	3030	802	B	15882	3	Writing/Science-Society	SEM	02:00 PM - 03:15 PM	TTH	CLUB 10		15	Main Campus
3523	WRT	3030	803	B	22188	3	Writing/Science-Society	SEM	03:30 PM - 04:45 PM	TTH	CLUB 10		15	Main Campus
3524	WRT	3035	1	B	20890	3	Tech Comm and Design	SEM	10:00 AM - 10:50 AM	MWF	HUMN 160		19	Main Campus
3525	WRT	3035	3	B	20891	3	Tech Comm and Design	SEM	11:00 AM - 11:50 AM	MWF	ECST 1B21		19	Main Campus
3526	WRT	3035	5	B	21162	3	Tech Comm and Design	SEM	12:00 PM - 12:50 PM	MWF	DUAN G1B39		19	Main Campus
3527	WRT	3035	7	B	22667	3	Tech Comm and Design	SEM	01:00 PM - 01:50 PM	MWF	STAD 136C		19	Main Campus
3528	WRT	3035	9	B	21987	3	Tech Comm and Design	SEM	02:00 PM - 02:50 PM	MWF	STAD 136C		19	Main Campus
3529	WRT	3035	12	B	21711	3	Tech Comm and Design	SEM	09:30 AM - 10:45 AM	TTH	HUMN 160		19	Main Campus
3530	WRT	3035	14	B	15984	3	Tech Comm and Design	SEM	11:00 AM - 12:15 PM	TTH			19	Main Campus
3531	WRT	3035	16	B	33541	3	Tech Comm and Design	SEM	12:30 PM - 01:45 PM	TTH			19	Main Campus
3532	WRT	3035	18	B	22172	3	Tech Comm and Design	SEM	02:00 PM - 03:15 PM	TTH	EKLC E1B75		19	Main Campus
3533	WRT	3035	20	B	22173	3	Tech Comm and Design	SEM	03:30 PM - 04:45 PM	TTH	DUAN G1B35		19	Main Campus
3534	WRT	3040	3	B	15985	3	Writing/Business-Society	SEM	09:30 AM - 10:45 AM	MW	ENVD 1B62C		19	Main Campus
3535	WRT	3040	6	B	21430	3	Writing/Business-Society	SEM	11:00 AM - 12:15 PM	MW	ENVD 1B62C		19	Main Campus
3536	WRT	3040	9	B	15995	3	Writing/Business-Society	SEM	12:30 PM - 01:45 PM	MW	ENVD 1B62C		19	Main Campus
3537	WRT	3040	12	B	15997	3	Writing/Business-Society	SEM	02:00 PM - 03:15 PM	MW	ENVD 1B62C		19	Main Campus
3538	WRT	3040	14	B	35128	3	Writing/Business-Society	SEM	03:30 PM - 04:45 PM	MW	ENVD 1B62C		19	Main Campus
3539	WRT	3040	24	B	35130	3	Writing/Business-Society	SEM	09:30 AM - 10:45 AM	TTH	DUAN G1B25		19	Main Campus
3540	WRT	3040	26	B	35131	3	Writing/Business-Society	SEM	11:00 AM - 12:15 PM	TTH	MUEN E130		19	Main Campus
3541	WRT	3040	27	B	16012	3	Writing/Business-Society	SEM	11:00 AM - 12:15 PM	TTH			19	Main Campus
3542	WRT	3040	30	B	15996	3	Writing/Business-Society	SEM	12:30 PM - 01:45 PM	TTH	DUAN G1B27		19	Main Campus
3543	WRT	3040	31	B	35132	3	Writing/Business-Society	SEM	12:30 PM - 01:45 PM	TTH			19	Main Campus
3544	WRT	3040	34	B	35133	3	Writing/Business-Society	SEM	02:00 PM - 03:15 PM	TTH			19	Main Campus
3545	WRT	3040	38	B	35134	3	Writing/Business-Society	SEM	03:30 PM - 04:45 PM	TTH	CHEM 133		19	Main Campus
3546	WRT	3040	800	B	16066	3	Writing/Business-Society	SEM	11:00 AM - 11:50 AM	MWF	HUMN 335		15	Main Campus
3547	WRT	3040	801	B	16067	3	Writing/Business-Society	SEM	11:00 AM - 12:15 PM	TTH	CLUB 10		15	Main Campus
3548	WRT	3040	802	B	21201	3	Writing/Business-Society	SEM	02:00 PM - 03:15 PM	TTH	CLUB 10		15	Main Campus
3549	WRT	3040	803	B	22189	3	Writing/Business-Society	SEM	03:30 PM - 04:45 PM	TTH	CLUB 10		15	Main Campus
3550	WRT	3090	1	B	22174	3	Open Tpcs/Writing: Advanced	LEC	11:00 AM - 12:15 PM	TTH	TB1 211		15	Main Campus
3551	WRT	4910	1	B	22926	1-3	Portfolio Curation	PRA	-			Norgaard,Rolf P	30	Main Campus
3552	WRT	5050	1	B	33553	3	Grad Study Writng Rhetoric	SEM	04:00 PM - 06:30 PM	W	CLUB 10		12	Main Campus
3553	ASEN	1400	1	B	25387	3	Gateway to Space	LEC	09:30 AM - 10:45 AM	TTH	ITLL 1B50	Koehler,Christopher John	60	Main Campus
3554	ASEN	2001	100	B	25142	4	Stat, Structures & Matls	LEC	08:30 AM - 09:45 AM	TTH	AERO 120	Jackson,Jelliffe	140	Main Campus
3555	ASEN	2001	100	B	25142	4	Stat, Structures & Matls	LEC	08:30 AM - 09:45 AM	TTH	AERO 120	Wingate,Kathryn Anne	140	Main Campus
3556	ASEN	2001	200	B	33818	4	Stat, Structures & Matls	LEC	10:00 AM - 11:15 AM	TTH	AERO 120		140	Main Campus
3557	ASEN	2001	301	B	26519	0	Stat, Structures & Matls	LAB	10:30 AM - 12:20 PM	M	AERO 141	Schwartz,Trudy Lynn	94	Main Campus
3558	ASEN	2001	302	B	26739	0	Stat, Structures & Matls	LAB	12:30 PM - 02:20 PM	M	AERO 141	Schwartz,Trudy Lynn	93	Main Campus
3559	ASEN	2001	303	B	26518	0	Stat, Structures & Matls	LAB	02:30 PM - 04:20 PM	M	AERO 141		93	Main Campus
3560	ASEN	2002	100	B	25143	4	Thermo & Aerodynamics	LEC	11:30 AM - 12:45 PM	TTH	AERO 120	Mah,John	140	Main Campus
3561	ASEN	2002	100	B	25143	4	Thermo & Aerodynamics	LEC	11:30 AM - 12:45 PM	TTH	AERO 120	Thayer,Jeffrey P	140	Main Campus
3562	ASEN	2002	200	B	33819	4	Thermo & Aerodynamics	LEC	01:00 PM - 02:15 PM	TTH	AERO 120	Thayer,Jeffrey P	140	Main Campus
3563	ASEN	2002	200	B	33819	4	Thermo & Aerodynamics	LEC	01:00 PM - 02:15 PM	TTH	AERO 120	Mah,John	140	Main Campus
3564	ASEN	2002	301	B	26521	0	Thermo & Aerodynamics	LAB	10:30 AM - 12:20 PM	W	AERO 141	Hodgkinson,Robert F	94	Main Campus
3565	ASEN	2002	302	B	26736	0	Thermo & Aerodynamics	LAB	12:30 PM - 02:20 PM	W	AERO 141	Hodgkinson,Robert F	93	Main Campus
3566	ASEN	2002	303	B	26520	0	Thermo & Aerodynamics	LAB	02:30 PM - 04:20 PM	W	AERO 141	Hodgkinson,Robert F	93	Main Campus
3567	ASEN	2012	1	B	26528	2	Experimntl/Comp Methds in ASEN	LEC	08:50 AM - 10:30 AM	F	AERO 120	Anderson,Allison Paige	140	Main Campus
3568	ASEN	2012	2	B	27355	2	Experimntl/Comp Methds in ASEN	LEC	10:40 AM - 12:20 PM	F	AERO 120	Matsuo,Tomoko	140	Main Campus
3569	ASEN	3046	1	B	27337	3	Intro to Humans in Aviation	LEC	05:00 PM - 07:50 PM	F	BESC 180	Scott,Frank Matthew	169	Main Campus
3570	ASEN	3111	10	B	25144	4	Aerodynamics	LEC	01:00 PM - 02:15 PM	MW	AERO 120	Evans,John A	120	Main Campus
3571	ASEN	3111	11	B	27596	4	Aerodynamics	LAB	08:30 AM - 10:20 AM	M	AERO N100		60	Main Campus
3572	ASEN	3111	12	B	27600	4	Aerodynamics	LAB	10:30 AM - 12:20 PM	M	AERO N100		60	Main Campus
3573	ASEN	3112	10	B	25388	4	Structures	LEC	09:00 AM - 10:15 AM	MW	AERO 120	Lopez Jimenez,Francisco	120	Main Campus
3574	ASEN	3112	10	B	25388	4	Structures	LEC	09:00 AM - 10:15 AM	MW	AERO 120	Maute,Kurt Karl	120	Main Campus
3575	ASEN	3112	11	B	26656	4	Structures	LAB	10:30 AM - 12:20 PM	W	AERO N100	Maute,Kurt Karl	60	Main Campus
3576	ASEN	3112	11	B	26656	4	Structures	LAB	10:30 AM - 12:20 PM	W	AERO N100	Lopez Jimenez,Francisco	60	Main Campus
3577	ASEN	3112	12	B	27310	4	Structures	LAB	12:30 PM - 02:20 PM	W	AERO N100	Lopez Jimenez,Francisco	60	Main Campus
3578	ASEN	3112	12	B	27310	4	Structures	LAB	12:30 PM - 02:20 PM	W	AERO N100	Maute,Kurt Karl	60	Main Campus
3579	ASEN	3113	10	B	26651	4	Thermo & Heat Transfer	LEC	11:30 AM - 12:45 PM	MW	AERO 120	Li,Xinlin	120	Main Campus
3580	ASEN	3113	11	B	26657	4	Thermo & Heat Transfer	LAB	08:30 AM - 10:20 AM	M	AERO 141		60	Main Campus
3581	ASEN	3113	12	B	27311	4	Thermo & Heat Transfer	LAB	08:30 AM - 10:20 AM	W	AERO 141		60	Main Campus
3582	ASEN	3128	10	B	33821	4	Aircraft Dynamics	LEC	02:30 PM - 03:45 PM	MW	AERO 120		120	Main Campus
3583	ASEN	3128	11	B	33822	4	Aircraft Dynamics	LAB	08:30 AM - 10:20 AM	F	AERO 141		60	Main Campus
3584	ASEN	3128	12	B	33823	4	Aircraft Dynamics	LAB	10:30 AM - 12:20 PM	F	AERO 141		60	Main Campus
3585	ASEN	3200	10	B	33824	4	Orb Mech/Att Dyn & Cntl	LEC	04:00 PM - 05:15 PM	MW	AERO 120	Holzinger,Marcus Jorg	120	Main Campus
3586	ASEN	3200	10	B	33824	4	Orb Mech/Att Dyn & Cntl	LEC	04:00 PM - 05:15 PM	MW	AERO 120	Nerem,Robert Steven	120	Main Campus
3587	ASEN	3200	11	B	33825	4	Orb Mech/Att Dyn & Cntl	LAB	12:30 PM - 02:20 PM	T	AERO 141	Holzinger,Marcus Jorg	60	Main Campus
3588	ASEN	3200	12	B	33826	4	Orb Mech/Att Dyn & Cntl	LAB	12:30 PM - 02:20 PM	TH	AERO 141	Holzinger,Marcus Jorg	60	Main Campus
3589	ASEN	3300	10	B	33827	4	Electronic and Communication	LEC	10:30 AM - 11:20 AM	MW	AERO 120	Sternovsky,Zoltan	120	Main Campus
3590	ASEN	3300	11	B	33828	4	Electronic and Communication	LAB	08:30 AM - 10:20 AM	TTH	AERO 141		60	Main Campus
3591	ASEN	3300	12	B	33829	4	Electronic and Communication	LAB	10:30 AM - 12:20 PM	TTH	AERO 141		60	Main Campus
3592	ASEN	4013	1	B	26652	3	Foundations of Propulsion	LEC	02:30 PM - 03:45 PM	TTH	AERO 120	Nabity,James Allen	120	Main Campus
3593	ASEN	4018	10	B	25145	4	Senior Proj 1:Design Synthesis	LEC	04:00 PM - 05:15 PM	TTH	AERO 120	Jackson,Jelliffe	180	Main Campus
3594	ASEN	4018	11	B	25146	4	Senior Proj 1:Design Synthesis	LAB	10:30 AM - 12:20 PM	MW	See Class Notes For		90	Main Campus
3595	ASEN	4018	12	B	33831	4	Senior Proj 1:Design Synthesis	LAB	12:30 PM - 02:20 PM	MW	See Class Notes For		90	Main Campus
3596	ASEN	4123	1	B	34506	3	Vibration Analysis	LEC	04:30 PM - 05:45 PM	MF	AERO 232	Hussein,Mahmoud Ismail	15	Main Campus
3597	ASEN	4138	10	B	25389	3	Aircraft Design	LEC	08:30 AM - 09:20 AM	MW	AERO 114	Gerren,Donna Sue	60	Main Campus
3598	ASEN	4138	11	B	25390	3	Aircraft Design	LAB	08:30 AM - 10:20 AM	F	AERO N100	Gerren,Donna Sue	20	Main Campus
3599	ASEN	4138	12	B	34744	3	Aircraft Design	LAB	10:30 AM - 12:20 PM	T	AERO N100	Gerren,Donna Sue	20	Main Campus
3600	ASEN	4138	13	B	34745	3	Aircraft Design	LAB	10:30 AM - 12:20 PM	TH	AERO N100	Gerren,Donna Sue	20	Main Campus
3601	ASEN	4519	10	B	26448	3	Special Topics	LEC	03:30 PM - 04:20 PM	MW	AERO N100	Schwartz,Trudy Lynn	50	Main Campus
3602	ASEN	4519	11	B	26667	3	Special Topics	LAB	12:30 PM - 02:20 PM	TH	AERO N100	Schwartz,Trudy Lynn	50	Main Campus
3603	ASEN	5007	1	B	25397	3	Intro Finite Elements	LEC	01:00 PM - 02:15 PM	TTH	AERO 111	Felippa,Carlos A	60	Main Campus
3604	ASEN	5007	001B	B	26983	3	Intro Finite Elements	LEC	-		Distance Education	Felippa,Carlos A	30	Main Campus
3605	ASEN	5012	1	B	27554	3	Mech of Aerospace Structures	LEC	03:30 PM - 04:20 PM	MWF	AERO 114	Maute,Kurt Karl	42	Main Campus
3606	ASEN	5014	1	B	26741	3	Linear Control Systems	LEC	10:30 AM - 11:20 AM	MWF	AERO 114	Lawrence,Dale	30	Main Campus
3607	ASEN	5014	001B	B	34126	3	Linear Control Systems	LEC	-		Distance Education	Lawrence,Dale	30	Main Campus
3608	ASEN	5018	10	B	25747	3	Graduate Projects I	LEC	05:30 PM - 06:20 PM	M	AERO 111	Rainville,Nicholas	50	Main Campus
3609	ASEN	5018	11	B	25748	3	Graduate Projects I	LAB	11:00 AM - 12:50 PM	TTH	See Class Notes For	Voss,James Shelton	10	Main Campus
3610	ASEN	5018	12	B	34508	3	Graduate Projects I	LAB	09:00 AM - 10:50 AM	TTH	See Class Notes For	Axelrad,Penina	10	Main Campus
3611	ASEN	5018	13	B	27338	3	Graduate Projects I	LAB	01:00 PM - 02:50 PM	MW	See Class Notes For	Marshall,Robert Andrew	10	Main Campus
3612	ASEN	5018	15	B	27548	3	Graduate Projects I	LAB	01:30 PM - 03:20 PM	WF	See Class Notes For	Pilinski,Marcin Dominik	10	Main Campus
3613	ASEN	5018	16	B	27555	3	Graduate Projects I	LAB	01:00 PM - 02:50 PM	MW	See Class Notes For	Palo,Scott Edward	10	Main Campus
3614	ASEN	5018	17	B	34509	3	Graduate Projects I	LAB	09:00 AM - 10:50 AM	MW	See Class Notes For	Nabity,James Allen	10	Main Campus
3615	ASEN	5044	1	B	27340	3	Stat Est for Dyn Sys	LEC	11:30 AM - 12:45 PM	TTH	AERO 111	Mc Mahon,Jay Warren	60	Main Campus
3616	ASEN	5044	001B	B	27341	3	Stat Est for Dyn Sys	LEC	-		Distance Education	Mc Mahon,Jay Warren	20	Main Campus
3617	ASEN	5050	1	B	25398	3	Spaceflight Dynamics	LEC	10:00 AM - 11:15 AM	TTH	AERO 111	Bosanac,Natasha	80	Main Campus
3618	ASEN	5050	001B	B	26984	3	Spaceflight Dynamics	LEC	-		Distance Education	Bosanac,Natasha	30	Main Campus
3619	ASEN	5051	1	B	25177	3	Fluid Mechanics	LEC	02:00 PM - 02:50 PM	MWF	ECCR 105	Mukherjee,Debanjan	35	Main Campus
3620	ASEN	5053	1	B	36356	3	Rocket Propulsion	LEC	11:30 AM - 12:45 PM	TTH	AERO N240	Kantha,Lakshmi	60	Main Campus
3621	ASEN	5053	001B	B	36357	3	Rocket Propulsion	LEC	-		Distance Education	Kantha,Lakshmi	30	Main Campus
3622	ASEN	5063	1	B	27742	3	Aircraft Propulsion	LEC	01:00 PM - 02:15 PM	TTH	AERO N240	Kantha,Lakshmi	60	Main Campus
3623	ASEN	5063	001B	B	27743	3	Aircraft Propulsion	LEC	-		Distance Education	Kantha,Lakshmi	30	Main Campus
3624	ASEN	5090	1	B	25399	3	Introduction to GNSS	LEC	03:30 PM - 04:45 PM	MW	AERO N250	Axelrad,Penina	40	Main Campus
3625	ASEN	5090	001B	B	26985	3	Introduction to GNSS	LEC	-		Distance Education	Axelrad,Penina	30	Main Campus
3626	ASEN	5158	1	B	26781	3	Space Habitat Design	LEC	02:30 PM - 03:45 PM	TTH	AERO 114	Klaus,David Matthew	40	Main Campus
3627	ASEN	5158	001B	B	27008	3	Space Habitat Design	LEC	-		Distance Education	Klaus,David Matthew	15	Main Campus
3628	ASEN	5210	1	B	27608	1	Remote Sensing Seminar	SEM	02:30 PM - 03:20 PM	F	AERO N250		40	Main Campus
3629	ASEN	5215	1	B	34511	3	Dscript Physical Oceanography	LEC	02:30 PM - 03:45 PM	TTH	AERO N240		60	Main Campus
3630	ASEN	5227	1	B	27009	3	Aerospace Math 1	LEC	08:30 AM - 09:45 AM	TTH	AERO 111	Jackson,Jelliffe	60	Main Campus
3631	ASEN	5227	001B	B	26986	3	Aerospace Math 1	LEC	-		Distance Education	Jackson,Jelliffe	30	Main Campus
3632	ASEN	5331	1	B	34523	3	CFD Unstructured Grid	LEC	10:00 AM - 11:15 AM	TTH	AERO N240	Jansen,Kenneth Edward	40	Main Campus
3633	ASEN	5440	1	B	34512	3	Space Mission Development	LEC	10:00 AM - 11:15 AM	TTH	AERO 232	France,Kevin Christopher	12	Main Campus
3634	ASEN	5440	1	B	34512	3	Space Mission Development	LEC	10:00 AM - 11:15 AM	TTH	AERO 232	Marshall,Robert Andrew	12	Main Campus
3635	ASEN	5519	1	B	27759	3	Special Topics	LEC	10:00 AM - 11:15 AM	TTH	SEEC N125	Scheeres,Daniel J.	50	Main Campus
3636	ASEN	5519	001B	B	27760	3	Special Topics	LEC	-		Distance Education	Scheeres,Daniel J.	30	Main Campus
3637	ASEN	5519	2	B	27748	3	Special Topics	LEC	02:30 PM - 03:45 PM	TTH	AERO 111	Lahijanian,Morteza	30	Main Campus
3638	ASEN	5519	10	B	26449	1-3	Special Topics	LEC	03:30 PM - 04:20 PM	MW	AERO N100	Schwartz,Trudy Lynn	25	Main Campus
3639	ASEN	5519	11	B	26668	1-3	Special Topics	LAB	12:30 PM - 02:20 PM	TH	AERO N100	Schwartz,Trudy Lynn	25	Main Campus
3640	ASEN	6009	1	B	33834	2	Special Topics Seminar	SEM	12:30 PM - 01:20 PM	F	AERO 120		45	Main Campus
3641	ASEN	6009	2	B	36358	1-2	Special Topics Seminar	SEM	04:30 PM - 05:30 PM	W	AERO 114	Maute,Kurt Karl	50	Main Campus
3642	ASEN	6014	1	B	34122	3	Spacecraft Formation Flying	LEC	08:30 AM - 09:45 AM	TTH	AERO 232	Schaub,Hanspeter	25	Main Campus
3643	ASEN	6014	001B	B	34123	3	Spacecraft Formation Flying	LEC	-		Distance Education	Schaub,Hanspeter	20	Main Campus
3644	ASEN	6028	10	B	25395	3	Graduate Projects II	LEC	05:30 PM - 06:20 PM	M	AERO 111	Rainville,Nicholas	50	Main Campus
3645	ASEN	6028	11	B	25396	3	Graduate Projects II	LAB	11:00 AM - 12:50 PM	TTH	See Class Notes For	Voss,James Shelton	6	Main Campus
3646	ASEN	6028	12	B	27339	3	Graduate Projects II	LAB	09:00 AM - 10:50 AM	TTH	See Class Notes For	Axelrad,Penina	6	Main Campus
3647	ASEN	6028	13	B	27434	3	Graduate Projects II	LAB	01:00 PM - 02:50 PM	MW	See Class Notes For	Marshall,Robert Andrew	6	Main Campus
3648	ASEN	6028	15	B	34522	3	Graduate Projects II	LAB	01:30 PM - 03:20 PM	WF	See Class Notes For	Pilinski,Marcin Dominik	6	Main Campus
3649	ASEN	6028	16	B	34521	3	Graduate Projects II	LAB	01:00 PM - 02:50 PM	MW	See Class Notes For	Palo,Scott Edward	5	Main Campus
3650	ASEN	6028	17	B	27970	3	Graduate Projects II	LAB	09:00 AM - 10:50 AM	MW	See Class Notes For	Nabity,James Allen	5	Main Campus
3651	ASEN	6070	1	B	34515	3	Satellite Geodesy	LEC	08:00 AM - 09:15 AM	TTH	HUMN 1B90	Nerem,Robert Steven	7	Main Campus
3652	ASEN	6070	001B	B	35367	3	Satellite Geodesy	LEC	-		Distance Education	Nerem,Robert Steven	15	Main Campus
3653	ASEN	6090	1	B	34124	3	GNSS Software & Applications	LEC	01:00 PM - 02:15 PM	TTH	AERO 114	Morton,Yu	30	Main Campus
3654	ASEN	6090	001B	B	34125	3	GNSS Software & Applications	LEC	-		Distance Education	Morton,Yu	10	Main Campus
3655	ASEN	6337	1	B	34579	3	Remote Sen Data Analysis	LEC	11:30 AM - 12:45 PM	TTH	AERO 232	Matsuo,Tomoko	30	Main Campus
3656	ASEN	6337	001B	B	34580	3	Remote Sen Data Analysis	LEC	-		Distance Education	Matsuo,Tomoko	30	Main Campus
3657	ASEN	6365	1	B	36359	3	Lidar Remote Sensing	LEC	01:30 PM - 02:20 PM	MWF	SEEC N125	Chu,Xinzhao	30	Main Campus
3658	ASEN	6365	001B	B	36360	3	Lidar Remote Sensing	LEC	-		Distance Education	Chu,Xinzhao	30	Main Campus
3659	ASEN	6519	1	B	27752	3	Special Topics	LEC	08:30 AM - 09:45 AM	TTH	AERO 114	Ahmed,Nisar Razzi	35	Main Campus
3660	ASEN	6519	2	B	27446	3	Special Topics	LEC	01:00 PM - 02:15 PM	TTH	AERO 232		30	Main Campus
3661	ASEN	6519	3	B	27754	3	Special Topics	LEC	01:30 PM - 02:20 PM	MWF			30	Main Campus
3662	ASEN	6519	003B	B	27755	3	Special Topics	LEC	-		Distance Education		30	Main Campus
3663	AREN	1027	10	B	24982	3	Engineering Drawing	LEC	08:00 AM - 09:15 AM	TTH	ECCR 200	Cayko,Lance Michael	106	Main Campus
3664	AREN	1027	10	B	24982	3	Engineering Drawing	LEC	08:00 AM - 09:15 AM	TTH	ECCR 200	Gore,Alexander Keith	106	Main Campus
3665	AREN	1027	11	B	24983	3	Engineering Drawing	LAB	09:15 AM - 10:45 AM	TTH	ECCE 141	Cayko,Lance Michael	46	Main Campus
3666	AREN	1027	11	B	24983	3	Engineering Drawing	LAB	09:15 AM - 10:45 AM	TTH	ECCE 141	Gore,Alexander Keith	46	Main Campus
3667	AREN	1027	12	B	24984	3	Engineering Drawing	LAB	10:50 AM - 12:20 PM	TTH	ECCE 141	Cayko,Lance Michael	46	Main Campus
3668	AREN	1027	12	B	24984	3	Engineering Drawing	LAB	10:50 AM - 12:20 PM	TTH	ECCE 141	Gore,Alexander Keith	46	Main Campus
3669	AREN	1316	1	B	27527	1	Intro to Architectural Eng	LEC	09:00 AM - 09:50 AM	W	ECCE 1B41		49	Main Campus
3670	AREN	2050	1	B	26691	3	Building Materials and Systems	LEC	03:30 PM - 04:45 PM	TTH		Morris,Matthew Robert	48	Main Campus
3671	AREN	2110	1	B	24985	3	Thermodynamics	LEC	02:00 PM - 02:50 PM	MWF	FLMG 104	Hernandez,Mark T	77	Main Campus
3672	AREN	3010	1	B	24986	3	Energy Efficient Buildings	LEC	02:00 PM - 03:15 PM	TTH	ECCE 1B41	Zhai,Zhiqiang	48	Main Campus
3673	AREN	3050	1	B	24987	3	Environment Sys for Bldg	LEC	08:00 AM - 09:15 AM	TTH	ECCR 155	Wujek Jr,Joseph B	48	Main Campus
3674	AREN	3540	1	B	26766	3	Illumination 1	LEC	10:00 AM - 10:50 AM	MWF	ECCR 155	Scheib,Jennifer Grace	48	Main Campus
3675	AREN	4010	1	B	35152	3	HVAC System Modeling & Contro	LEC	04:00 PM - 06:30 PM	T		Henze,Gregor P	20	Main Campus
3676	AREN	4035	1	B	28022	3	Architectural Structures 1	LEC	05:00 PM - 06:15 PM	TTH	ECCR 131	Keely,Jeffrey Andrew	28	Main Campus
3677	AREN	4130	1	B	27618	3	Optical Design: Illumination	LEC	05:30 PM - 06:45 PM	MW	ECCR 110	Jongewaard,Mark Paul	27	Main Campus
3678	AREN	4506	1	B	26767	3	Const Estimating & Scheduling	LEC	11:00 AM - 12:15 PM	TTH	ITLL 1B50	Javernick-Will,Amy Nicole	48	Main Campus
3679	AREN	4530	1	B	35108	3	Advanced Lighting Design	LEC	01:00 PM - 01:45 PM	W	ECCE 1B47	Vasconez,Sandra L.	25	Main Campus
3680	AREN	4530	1	B	35108	3	Advanced Lighting Design	LEC	11:00 AM - 12:45 PM	MW	ECCE 1B47	Vasconez,Sandra L.	25	Main Campus
3681	AREN	4570	1	B	26918	3	Electrical Systems	LEC	12:30 PM - 01:45 PM	TTH	ECCR 139	Krarti,Moncef	27	Main Campus
3682	AREN	4580	1	B	27307	3	Daylighting	LEC	11:00 AM - 12:15 PM	TTH	ECCR 139	Scheib,Jennifer Grace	27	Main Campus
3683	AREN	4830	4	B	26788	3	Special Topics	LEC	02:15 PM - 03:30 PM	MW	ECCE 1B41	Vasconez,Sandra L.	30	Main Campus
3684	AREN	4830	5	B	36404	3	Special Topics	LEC	05:00 PM - 08:00 PM	M	ECCE 1B41	Scheib,Jennifer Grace	35	Main Campus
3685	AREN	4890	1	B	27270	3	Sustainable Building Design	LEC	11:00 AM - 12:15 PM	TTH	ECCR 151	Zuo,Wangda	48	Main Campus
3686	AREN	4830	2	B51	33389	1	Special Topics	LEC	03:30 PM - 06:50 PM	T	ECCE 1B41	Vasconez,Sandra L.	20	Main Campus
3687	AREN	5001	1	B	35110	3	Building Energy Systems	LEC	09:30 AM - 10:45 AM	TTH	FLMG 103	Zhai,Zhiqiang	27	Main Campus
3688	AREN	5001	1	B	35110	3	Building Energy Systems	LEC	09:30 AM - 10:45 AM	TTH	FLMG 103	Baker,Kyri	27	Main Campus
3689	AREN	5001	1	B	35110	3	Building Energy Systems	LEC	09:30 AM - 10:45 AM	TTH	FLMG 103	Scheib,Jennifer Grace	27	Main Campus
3690	AREN	5010	1	B	35154	3	HVAC System Modeling & Contro	LEC	04:00 PM - 06:30 PM	T		Henze,Gregor P	20	Main Campus
3691	AREN	5130	1	B	27619	3	Optical Design: Illumination	LEC	05:30 PM - 06:45 PM	MW	ECCR 110	Jongewaard,Mark Paul	27	Main Campus
3692	AREN	5890	1	B	27271	3	Sustainable Building Design	LEC	11:00 AM - 12:15 PM	TTH	ECCR 151	Zuo,Wangda	48	Main Campus
3693	ATLS	1100	10	B	27579	3	Design Foundations	LEC	09:30 AM - 10:45 AM	TH	ATLS 100	Bethancourt,Matthew Robert	80	Main Campus
3694	ATLS	1100	11	B	27598	3	Design Foundations	REC	03:00 PM - 04:15 PM	F	ATLS 1B31		40	Main Campus
3695	ATLS	1100	12	B	27599	3	Design Foundations	REC	05:00 PM - 06:15 PM	F	ATLS 1B31		40	Main Campus
3696	ATLS	1300	10	B	27982	3	Code	LEC	02:00 PM - 03:15 PM	TTH	ATLS 100	Pierce,Aileen J	60	Main Campus
3697	ATLS	1300	11	B	27983	3	Code	REC	09:00 AM - 10:15 AM	F	ATLS 1B25		15	Main Campus
3698	ATLS	1300	12	B	27984	3	Code	REC	11:00 AM - 12:15 PM	F	ATLS 1B25		15	Main Campus
3699	ATLS	1300	13	B	27985	3	Code	REC	01:00 PM - 02:15 PM	F	ATLS 1B25		15	Main Campus
3700	ATLS	2000	1	B	26669	3	Meaning of Info Technology	LEC	11:00 AM - 12:15 PM	TTH	ATLS 100	Bruns,Annie	75	Main Campus
3701	ATLS	2001	1	B	27777	3	Design Technologies: Toolkit	LEC	12:30 PM - 01:45 PM	TTH	ATLS 100	Hales,Ian Wright	80	Main Campus
3702	ATLS	2002	10	B	27921	3	Design Technologies: Process	LEC	11:00 AM - 12:50 PM	M	ATLS 1B31	Hales,Ian Wright	40	Main Campus
3703	ATLS	2002	11	B	27922	3	Design Technologies: Process	LAB	11:00 AM - 12:50 PM	W	ATLS 1B31	Hales,Ian Wright	40	Main Campus
3704	ATLS	2002	20	B	27923	3	Design Technologies: Process	LEC	03:30 PM - 05:20 PM	T	ATLS 1B31		40	Main Campus
3705	ATLS	2002	21	B	27924	3	Design Technologies: Process	LAB	03:30 PM - 05:20 PM	TH	ATLS 1B31		40	Main Campus
3706	ATLS	2036	1	B	27734	3	Intro to Media Stdy/Humanities	SEM	11:00 AM - 11:50 AM	MWF	LIBR N424B	Emerson,Lori Ann	10	Main Campus
3707	ATLS	2100	10	B	27024	3	Image	LEC	03:00 PM - 04:15 PM	M	ATLS 100		96	Main Campus
3708	ATLS	2100	11	B	27025	3	Image	REC	08:00 AM - 09:15 AM	T	ATLS 1B25		12	Main Campus
3709	ATLS	2100	12	B	27026	3	Image	REC	09:30 AM - 10:45 AM	T	ATLS 1B25		12	Main Campus
3710	ATLS	2100	13	B	27027	3	Image	REC	11:00 AM - 12:15 PM	T	ATLS 1B25		12	Main Campus
3711	ATLS	2100	14	B	27028	3	Image	REC	12:30 PM - 01:45 PM	T	ATLS 1B25		12	Main Campus
3712	ATLS	2100	15	B	27029	3	Image	REC	02:00 PM - 03:15 PM	T	ATLS 1B25		12	Main Campus
3713	ATLS	2100	16	B	27580	3	Image	REC	03:30 PM - 04:45 PM	T	ATLS 1B25		12	Main Campus
3714	ATLS	2100	17	B	27620	3	Image	REC	05:00 PM - 06:15 PM	T	ATLS 1B25		12	Main Campus
3715	ATLS	2100	18	B	27621	3	Image	REC	12:30 PM - 01:45 PM	T	ATLS 1B31		12	Main Campus
3716	ATLS	2200	10	B	27046	3	Web	LEC	09:30 AM - 10:45 AM	T	ATLS 100	Schaal,David Andrew	96	Main Campus
3717	ATLS	2200	11	B	27047	3	Web	REC	08:00 AM - 09:15 AM	TH	ATLS 1B25		12	Main Campus
3718	ATLS	2200	12	B	27048	3	Web	REC	09:30 AM - 10:45 AM	TH	ATLS 1B25		12	Main Campus
3719	ATLS	2200	13	B	27049	3	Web	REC	11:00 AM - 12:15 PM	TH	ATLS 1B25		12	Main Campus
3720	ATLS	2200	14	B	27050	3	Web	REC	12:30 PM - 01:45 PM	TH	ATLS 1B25		12	Main Campus
3721	ATLS	2200	15	B	27051	3	Web	REC	02:00 PM - 03:15 PM	TH	ATLS 1B25		12	Main Campus
3722	ATLS	2200	16	B	27581	3	Web	REC	03:30 PM - 04:45 PM	TH	ATLS 1B25		12	Main Campus
3723	ATLS	2200	17	B	27622	3	Web	REC	05:00 PM - 06:15 PM	TH	ATLS 1B25		12	Main Campus
3724	ATLS	2200	18	B	27623	3	Web	REC	12:30 PM - 01:45 PM	TH	ATLS 1B31		12	Main Campus
3725	ATLS	2300	10	B	27011	3	Text	LEC	03:00 PM - 04:15 PM	W	ATLS 100	Rankin,Daniel W	84	Main Campus
3726	ATLS	2300	11	B	27012	3	Text	REC	08:00 AM - 09:15 AM	F	ATLS 104		12	Main Campus
3727	ATLS	2300	12	B	27013	3	Text	REC	09:30 AM - 10:45 AM	F	ATLS 104		12	Main Campus
3728	ATLS	2300	13	B	27014	3	Text	REC	11:00 AM - 12:15 PM	F	ATLS 104		12	Main Campus
3729	ATLS	2300	14	B	27015	3	Text	REC	12:30 PM - 01:45 PM	F	ATLS 104		12	Main Campus
3730	ATLS	2300	15	B	27016	3	Text	REC	02:00 PM - 03:15 PM	F	ATLS 104		12	Main Campus
3731	ATLS	2300	16	B	27582	3	Text	REC	03:30 PM - 04:45 PM	F	ATLS 104		12	Main Campus
3732	ATLS	2300	17	B	27624	3	Text	REC	05:00 PM - 06:15 PM	F	ATLS 104		12	Main Campus
3733	ATLS	3100	10	B	27034	3	Form	LEC	11:00 AM - 12:15 PM	T	ATLS 1B31		40	Main Campus
3734	ATLS	3100	11	B	27490	3	Form	REC	02:00 PM - 03:15 PM	T	ATLS 104		20	Main Campus
3735	ATLS	3100	12	B	34543	3	Form	REC	02:00 PM - 03:15 PM	TH	ATLS 104		20	Main Campus
3736	ATLS	3110	10	B	27305	3	Motion	LEC	09:00 AM - 10:50 AM	M	ATLS 1B25	Hales,Ian Wright	18	Main Campus
3737	ATLS	3110	11	B	27306	3	Motion	LAB	09:00 AM - 10:50 AM	W	ATLS 1B25	Hales,Ian Wright	18	Main Campus
3738	ATLS	3200	1	B	27035	3	Sound	LEC	09:00 AM - 10:15 AM	MW	ATLS 104	Schaal,David Andrew	20	Main Campus
3739	ATLS	3200	2	B	27626	3	Sound	LEC	11:00 AM - 12:15 PM	MW	ATLS 104	Schaal,David Andrew	20	Main Campus
3740	ATLS	3300	10	B	27778	3	Object	LEC	11:00 AM - 12:15 PM	TH	ATLS 1B31	Hein,Arielle Elizabeth	39	Main Campus
3741	ATLS	3300	11	B	27779	3	Object	REC	09:00 AM - 10:15 AM	F	ATLS 113		13	Main Campus
3742	ATLS	3300	12	B	27780	3	Object	REC	11:00 AM - 12:15 PM	F	ATLS 113		13	Main Campus
3743	ATLS	3300	13	B	27781	3	Object	REC	01:00 PM - 02:15 PM	F	ATLS 113		13	Main Campus
3744	ATLS	3519	1	B	27470	3	Special Topics	LEC	03:00 PM - 04:15 PM	MW	ATLS 1B25		20	Main Campus
3745	ATLS	4010	1	B	27583	4	Capstone Projects I	SEM	01:00 PM - 04:50 PM	W	ENVD 234A	Bethancourt,Matthew Robert	15	Main Campus
3746	ATLS	4010	2	B	27956	4	Capstone Projects I	SEM	01:00 PM - 04:50 PM	TH	ENVD 234A	Hein,Arielle Elizabeth	15	Main Campus
3747	ATLS	4010	3	B	34934	4	Capstone Projects I	SEM	01:00 PM - 04:50 PM	M	ENVD 234A		15	Main Campus
3748	ATLS	4120	10	B	26812	3	Mobile Application Development	LEC	11:00 AM - 12:50 PM	T	ATLS 104	Pierce,Aileen J	20	Main Campus
3749	ATLS	4120	11	B	26813	3	Mobile Application Development	LAB	11:00 AM - 12:50 PM	TH	ATLS 104	Pierce,Aileen J	20	Main Campus
3750	ATLS	4130	10	B	27782	3	Typography	LEC	03:00 PM - 04:50 PM	M	ATLS 104	Swanson,Joel Eric	15	Main Campus
3751	ATLS	4130	11	B	27783	3	Typography	LAB	03:00 PM - 04:50 PM	W	ATLS 104	Swanson,Joel Eric	15	Main Campus
3752	ATLS	4140	10	B	27786	3	Game Development	LEC	01:00 PM - 02:50 PM	M	ATLS 1B31	Bethancourt,Matthew Robert	20	Main Campus
3753	ATLS	4140	11	B	27787	3	Game Development	LAB	01:00 PM - 02:50 PM	W	ATLS 1B31	Bethancourt,Matthew Robert	20	Main Campus
3754	ATLS	4151	1	B	27799	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	5	Main Campus
3755	ATLS	4519	1	B	27155	4	Advanced Special Topics	SEM	01:00 PM - 04:50 PM	T	ENVD 234A	Rankin,Daniel W	15	Main Campus
3756	ATLS	4519	2	B	27791	3	Advanced Special Topics	LEC	10:00 AM - 12:30 PM	W	ENVD 234A	Dupre,Jill VanMatre	15	Main Campus
3757	ATLS	4519	4	B	36032	3	Advanced Special Topics	LEC	12:00 PM - 02:30 PM	F	ATLS 1B31	Harriman,Jeffrey	25	Main Campus
3758	ATLS	4519	8	B	27949	3	Advanced Special Topics	LEC	09:30 AM - 12:00 PM	T	ENVD 234A	Hein,Arielle Elizabeth	10	Main Campus
3759	ATLS	4519	9	B	27552	3	Advanced Special Topics	LEC	02:00 PM - 03:15 PM	TTH	ATLS 1B31	Bruns,Carson	10	Main Campus
3760	ATLS	4519	10	B	35099	4	Advanced Special Topics	LEC	09:00 AM - 10:15 AM	MW	ATLS 1B31		30	Main Campus
3761	ATLS	4519	11	B	35100	4	Advanced Special Topics	LAB	11:00 AM - 12:50 PM	M	ATLS 1B25		15	Main Campus
3762	ATLS	4519	12	B	35101	4	Advanced Special Topics	LAB	11:00 AM - 12:50 PM	W	ATLS 1B25		15	Main Campus
3763	ATLS	4519	60	B	27792	3	Advanced Special Topics	LEC	01:00 PM - 02:50 PM	M	ATLS 1B25		15	Main Campus
3764	ATLS	4519	61	B	27793	3	Advanced Special Topics	LAB	01:00 PM - 02:50 PM	W	ATLS 1B25		15	Main Campus
3765	ATLS	4519	70	B	27903	3	Advanced Special Topics	LEC	01:00 PM - 02:50 PM	M	ATLS 113	Seidle,Alicia	15	Main Campus
3766	ATLS	4519	71	B	27904	3	Advanced Special Topics	LAB	01:00 PM - 02:50 PM	W	ATLS 113	Seidle,Alicia	15	Main Campus
3767	ATLS	4529	1	B	27913	3	Adv Sp Tp: Crit Perspect Tech	LEC	01:00 PM - 02:15 PM	MW	ATLS 104	Bruns,Annie	10	Main Campus
3768	ATLS	4529	3	B	34982	3	Adv Sp Tp: Crit Perspect Tech	LEC	03:00 PM - 05:30 PM	W	ATLS 113	Shapiro,Ryan Benjamin	2	Main Campus
3769	ATLS	4606	1	B	27802	3	Critical Technical Practice	LEC	03:00 PM - 04:15 PM	MW	ATLS 1B31	Devendorf,Laura K	6	Main Campus
3770	ATLS	4630	10	B	27347	3	Web Front-End Development	LEC	09:00 AM - 10:50 AM	T	ATLS 1B31		20	Main Campus
3771	ATLS	4630	11	B	27348	3	Web Front-End Development	LAB	09:00 AM - 10:50 AM	TH	ATLS 1B31	Pierce,Aileen J	20	Main Campus
3772	ATLS	4809	1	B	27317	3	Computer Animation	LEC	05:00 PM - 06:15 PM	MW	ATLS 1B31	King,Roger A	10	Main Campus
3773	ATLS	5120	810	B	26814	3	Mobile Application Development	LEC	11:00 AM - 12:50 PM	T	ATLS 104	Pierce,Aileen J	5	Main Campus
3774	ATLS	5120	811	B	26815	3	Mobile Application Development	LAB	11:00 AM - 12:50 PM	TH	ATLS 104	Pierce,Aileen J	5	Main Campus
3775	ATLS	5130	10	B	27784	3	Typography	LEC	03:00 PM - 04:50 PM	M	ATLS 104	Swanson,Joel Eric	5	Main Campus
3776	ATLS	5130	11	B	27785	3	Typography	LAB	03:00 PM - 04:50 PM	W	ATLS 104	Swanson,Joel Eric	5	Main Campus
3777	ATLS	5140	10	B	27788	3	Game Development	LEC	01:00 PM - 02:50 PM	M	ATLS 1B31	Bethancourt,Matthew Robert	5	Main Campus
3778	ATLS	5140	11	B	27789	3	Game Development	LAB	01:00 PM - 02:50 PM	W	ATLS 1B31	Bethancourt,Matthew Robert	5	Main Campus
3779	ATLS	5151	1	B	27800	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	5	Main Campus
3780	ATLS	5210	1	B	27042	3	Global Development I	SEM	02:30 PM - 03:45 PM	TTH	SEEC N128	Klees,Rita Claire	10	Main Campus
3781	ATLS	5230	1	B	27045	3	ICTD Case Studies	SEM	04:00 PM - 06:30 PM	W	ATLS 225	Dupre,Jill VanMatre	15	Main Campus
3782	ATLS	5240	1	B	26670	3	ICTD Laboratory	LEC	10:00 AM - 12:30 PM	F	ATLS 225	Guinness,Darren Michael	15	Main Campus
3783	ATLS	5519	2	B	27790	3	Advanced Special Topics	LEC	10:00 AM - 12:30 PM	W	ENVD 234A	Dupre,Jill VanMatre	15	Main Campus
3784	ATLS	5519	3	B	27934	3	Advanced Special Topics	LEC	03:30 PM - 06:00 PM	T	ATLS 225	Dupre,Jill VanMatre	10	Main Campus
3785	ATLS	5519	4	B	27958	3	Advanced Special Topics	LEC	04:00 PM - 06:30 PM	M	ATLS 113	Harriman,Jeffrey	15	Main Campus
3786	ATLS	5519	5	B	27962	3	Advanced Special Topics	LEC	04:00 PM - 06:30 PM	W	ENVD 234A	Do,Yi Luen Ellen	10	Main Campus
3787	ATLS	5519	8	B	27950	3	Advanced Special Topics	LEC	09:30 AM - 12:00 PM	T	ENVD 234A	Hein,Arielle Elizabeth	10	Main Campus
3788	ATLS	5519	9	B	27553	3	Advanced Special Topics	LEC	02:00 PM - 03:15 PM	TTH	ATLS 1B31	Bruns,Carson	10	Main Campus
3789	ATLS	5519	60	B	35190	3	Advanced Special Topics	LEC	01:00 PM - 02:50 PM	M	ATLS 1B25		10	Main Campus
3790	ATLS	5519	61	B	35191	3	Advanced Special Topics	LAB	01:00 PM - 02:50 PM	W	ATLS 1B25		10	Main Campus
3791	ATLS	5529	1	B	27914	3	Adv Sp Tp: Crit Perspect Tech	LEC	01:00 PM - 02:15 PM	MW	ATLS 104	Bruns,Annie	10	Main Campus
3792	ATLS	5529	3	B	34983	3	Adv Sp Tp: Crit Perspect Tech	LEC	03:00 PM - 05:30 PM	W	ATLS 113	Shapiro,Ryan Benjamin	8	Main Campus
3793	ATLS	5606	1	B	27803	3	Critical Technical Practice	LEC	03:00 PM - 04:15 PM	MW	ATLS 1B31	Devendorf,Laura K	6	Main Campus
3794	ATLS	5630	810	B	27349	3	Web Front-End Development	LEC	09:00 AM - 10:50 AM	T	ATLS 1B31		5	Main Campus
3795	ATLS	5630	811	B	27350	3	Web Front-End Development	LAB	09:00 AM - 10:50 AM	TH	ATLS 1B31	Pierce,Aileen J	5	Main Campus
3796	ATLS	5809	1	B	27318	3	Computer Animation	LEC	05:00 PM - 06:15 PM	MW	ATLS 1B31	King,Roger A	5	Main Campus
3797	ATLS	6910	1	B	26690	3-6	ICTD Practicum	PRA	08:00 AM - 10:50 AM	TTH	ATLS 225	Dupre,Jill VanMatre	10	Main Campus
3798	ATLS	7000	1	B	28005	1	ATLAS Seminar	SEM	11:30 AM - 12:30 PM	T	ATLS 208	Do,Yi Luen Ellen	10	Main Campus
3799	CHE	1211	100	B	24913	4	General Chem Engineers	LEC	10:00 AM - 10:50 AM	MWF	CHEM 140		390	Main Campus
3800	CHE	1211	110	B	26795	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	T	ECCR 135		30	Main Campus
3801	CHE	1211	111	B	26796	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	T	STAD 140		30	Main Campus
3802	CHE	1211	112	B	26797	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	T	ECCR 151		30	Main Campus
3803	CHE	1211	113	B	26798	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	T	STAD 112		30	Main Campus
3804	CHE	1211	114	B	26799	4	General Chem Engineers	REC	06:00 PM - 06:50 PM	T	STAD 140		30	Main Campus
3805	CHE	1211	115	B	26800	4	General Chem Engineers	REC	06:00 PM - 06:50 PM	T	ECCR 151		30	Main Campus
3806	CHE	1211	116	B	26979	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	T	STAD 135		30	Main Campus
3807	CHE	1211	117	B	26980	4	General Chem Engineers	REC	04:00 PM - 04:50 PM	M	STAD 135		30	Main Campus
3808	CHE	1211	118	B	26981	4	General Chem Engineers	REC	04:00 PM - 04:50 PM	M	STAD 112		30	Main Campus
3809	CHE	1211	119	B	26982	4	General Chem Engineers	REC	04:00 PM - 04:50 PM	M	FLMG 157		30	Main Campus
3810	CHE	1211	120	B	27038	4	General Chem Engineers	REC	03:00 PM - 03:50 PM	M	STAD 112		30	Main Campus
3811	CHE	1211	121	B	27039	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	M	STAD 112		30	Main Campus
3812	CHE	1211	122	B	27040	4	General Chem Engineers	REC	05:00 PM - 05:50 PM	M	FLMG 154		30	Main Campus
3813	CHE	1300	1	B	27494	1	Intro to Chemical Engineering	LEC	03:30 PM - 04:20 PM	F	BIOT A115		120	Main Campus
3814	CHE	1310	100	B	24925	3	Intro Engineering Computing	LEC	08:00 AM - 08:50 AM	TTH	DUAN G1B30		250	Main Campus
3815	CHE	1310	110	B	24926	3	Intro Engineering Computing	REC	09:00 AM - 10:50 AM	M	ECCR 235		25	Main Campus
3816	CHE	1310	111	B	24927	3	Intro Engineering Computing	REC	11:00 AM - 12:50 PM	M	ECCR 235		25	Main Campus
3817	CHE	1310	112	B	24928	3	Intro Engineering Computing	REC	01:00 PM - 02:50 PM	M	ECCR 235		25	Main Campus
3818	CHE	1310	113	B	24929	3	Intro Engineering Computing	REC	03:00 PM - 04:50 PM	M	ECCR 235		25	Main Campus
3819	CHE	1310	114	B	24930	3	Intro Engineering Computing	REC	09:00 AM - 10:50 AM	T	ECCR 235		25	Main Campus
3820	CHE	1310	115	B	24931	3	Intro Engineering Computing	REC	01:00 PM - 02:50 PM	T	ECCR 235		25	Main Campus
3821	CHE	1310	116	B	26155	3	Intro Engineering Computing	REC	03:30 PM - 05:20 PM	T	ECCR 235		25	Main Campus
3822	CHE	1310	117	B	24932	3	Intro Engineering Computing	REC	11:00 AM - 12:50 PM	W	ECCR 235		25	Main Campus
3823	CHE	1310	118	B	24933	3	Intro Engineering Computing	REC	01:00 PM - 02:50 PM	W	ECCR 235		25	Main Campus
3824	CHE	1310	119	B	24934	3	Intro Engineering Computing	REC	04:00 PM - 05:50 PM	W	ECCR 235		25	Main Campus
3825	CHE	2120	1	B	24914	3	Chen Material/Energy Bal	LEC	01:30 PM - 02:20 PM	MWF	BIOT A115		80	Main Campus
3826	CHE	2120	2	B	26737	3	Chen Material/Energy Bal	LEC	02:30 PM - 03:20 PM	MWF	BIOT A115		80	Main Campus
3827	CHE	3010	1	B	28010	3	Applied Data Analysis	LEC	12:30 PM - 01:20 PM	MWF	BIOT A108		85	Main Campus
3828	CHE	3010	2	B	28013	3	Applied Data Analysis	LEC	02:30 PM - 03:20 PM	MWF	BIOT A108		85	Main Campus
3829	CHE	3210	1	B	28012	3	Chem Engineering Heat Transfer	LEC	08:30 AM - 09:45 AM	TTH	BIOT A108		85	Main Campus
3830	CHE	3210	2	B	28011	3	Chem Engineering Heat Transfer	LEC	01:00 PM - 02:15 PM	TTH	BIOT A108		85	Main Campus
3831	CHE	3320	1	B	26536	3	Chem Engr Thermodynamics	LEC	01:30 PM - 02:20 PM	MWF	BIOT A108		85	Main Campus
3832	CHE	3320	2	B	26745	3	Chem Engr Thermodynamics	LEC	03:30 PM - 04:20 PM	MWF	BIOT A108		85	Main Campus
3833	CHE	4130	1	B	25016	3	CHEN Engineering Laboratory	MLS	01:00 PM - 06:00 PM	M	BIOT B171		30	Main Campus
3834	CHE	4130	2	B	25017	3	CHEN Engineering Laboratory	MLS	01:00 PM - 06:00 PM	TH	BIOT B171		30	Main Campus
3835	CHE	4450	1	B	28986	3	Polymer Chemistry	LEC	11:30 AM - 12:45 PM	TTH	BIOT A104		35	Main Campus
3836	CHE	4803	1	B	32935	3	Metabolic Engineering	LEC	09:30 AM - 10:20 AM	MWF	BIOT A104		45	Main Campus
3837	CHE	4810	1	B	25746	3	Biological Engineering Lab	MLS	01:00 PM - 06:00 PM	T	BIOT B180		36	Main Campus
3838	CHE	4820	1	B	25015	3	Biochemical Separations	LEC	10:30 AM - 11:20 AM	MWF	BIOT A108		70	Main Campus
3839	CHE	5090	1	B	26811	1	Seminar in Chemical Engineer	SEM	02:30 PM - 03:45 PM	TTH	BIOT A108		60	Main Campus
3840	CHE	5210	1	B	27400	4	Transport Phenomena	LEC	11:30 AM - 01:20 PM	MW	BIOT A104		35	Main Campus
3841	CHE	5370	1	B	26551	3	Inter Chem Eng Thermodyn	LEC	08:30 AM - 09:20 AM	MWF	BIOT A104		35	Main Campus
3842	CHE	5390	1	B	27496	3	Reaction Engineering	LEC	10:00 AM - 11:15 AM	TTH	BIOT E1B11		35	Main Campus
3843	CHE	5450	1	B	28987	3	Polymer Chemistry	LEC	11:30 AM - 12:45 PM	TTH	BIOT A104		25	Main Campus
3844	CHE	5470	1	B	33742	3	Functional Mat Chem	LEC	01:00 PM - 02:15 PM	TTH	BIOT A104		60	Main Campus
3845	CHE	5803	1	B	32936	3	Metabolic Engineering	LEC	09:30 AM - 10:20 AM	MWF	BIOT A104		15	Main Campus
3846	CHE	5838	1	B41	32934	1	Special Topics	LEC	03:30 PM - 05:20 PM	MW	BIOT B231		30	Main Campus
3847	CHE	5838	2	B42	27928	1	Special Topics	LEC	03:30 PM - 05:20 PM	MW	BIOT B231		30	Main Campus
3848	CVEN	1317	1	B	25011	1	Intro to Civil & Environ Engr	LEC	02:00 PM - 02:50 PM	T	FLMG 156	Bielefeldt,Angela R	68	Main Campus
3849	CVEN	2012	10	B	27411	3	Intro to Geomatics	LEC	12:00 PM - 12:50 PM	MF	ECCR 105	Pfeffer,William T	49	Main Campus
3850	CVEN	2012	11	B	27412	3	Intro to Geomatics	LAB	02:00 PM - 04:50 PM	M	ECCE 1B47	Pfeffer,William T	12	Main Campus
3851	CVEN	2012	12	B	27413	3	Intro to Geomatics	LAB	02:00 PM - 04:50 PM	T	ECCE 1B47	Pfeffer,William T	13	Main Campus
3852	CVEN	2012	13	B	27414	3	Intro to Geomatics	LAB	02:00 PM - 04:50 PM	W	ECCE 1B47	Pfeffer,William T	12	Main Campus
3853	CVEN	2012	14	B	27415	3	Intro to Geomatics	LAB	02:00 PM - 04:50 PM	TH	ECCE 1B47	Pfeffer,William T	12	Main Campus
3854	CVEN	2121	1	B	24988	3	Analytical Mechanics 1	LEC	09:00 AM - 09:50 AM	MWF	ECCR 1B40	Song,Jeong-Hoon	106	Main Campus
3855	CVEN	3161	10	B	24989	3	Mechanics of Materials 1	LEC	09:00 AM - 09:50 AM	MWF	FLMG 157	Hubler,Mija Helena	68	Main Campus
3856	CVEN	3161	11	B	24990	3	Mechanics of Materials 1	LAB	02:00 PM - 03:50 PM	W	ECCE 1B52	Hubler,Mija Helena	34	Main Campus
3857	CVEN	3161	12	B	24991	3	Mechanics of Materials 1	LAB	04:00 PM - 05:50 PM	W	ECCE 1B52	Hubler,Mija Helena	34	Main Campus
3858	CVEN	3246	1	B	25009	3	Introduction to Construction	LEC	11:00 AM - 12:15 PM	TTH	FLMG 157	Morris,Matthew Robert	77	Main Campus
3859	CVEN	3246	400	B	27658	3	Introduction to Construction	LEC	11:00 AM - 12:15 PM	MW	Offered at Colorado	Techera Rocha,Ulises Daniel	30	Main Campus
3860	CVEN	3256	1	B	25010	3	Construction Equip/Meth	LEC	02:00 PM - 03:15 PM	TTH	FLMG 154	Hallowell,Matthew Ryan	48	Main Campus
3861	CVEN	3323	10	B	24993	3	Hydraulic Engineering	LEC	09:30 AM - 10:45 AM	TTH	ECCR 245	Gooseff,Michael Nikolai	106	Main Campus
3862	CVEN	3323	11	B	24994	3	Hydraulic Engineering	LAB	08:00 AM - 08:50 AM	F	See Class Notes For	Gooseff,Michael Nikolai	21	Main Campus
3863	CVEN	3323	12	B	24995	3	Hydraulic Engineering	LAB	09:00 AM - 09:50 AM	F	See Class Notes For	Gooseff,Michael Nikolai	21	Main Campus
3864	CVEN	3323	13	B	24996	3	Hydraulic Engineering	LAB	11:00 AM - 11:50 AM	F	See Class Notes For	Gooseff,Michael Nikolai	21	Main Campus
3865	CVEN	3323	14	B	24997	3	Hydraulic Engineering	LAB	01:00 PM - 01:50 PM	F	See Class Notes For	Gooseff,Michael Nikolai	21	Main Campus
3866	CVEN	3323	15	B	24998	3	Hydraulic Engineering	LAB	02:00 PM - 02:50 PM	F	See Class Notes For	Gooseff,Michael Nikolai	21	Main Campus
3867	CVEN	3414	1	B	25002	3	Fundamentals Environ Engr	LEC	03:00 PM - 03:50 PM	MWF	ECCR 200	Miller,Shelly Lynn	106	Main Campus
3868	CVEN	3414	400	B	35119	3	Fundamentals Environ Engr	LEC	09:00 AM - 10:15 AM	MW	Offered at Colorado	Sholtes,Joel Stephen	30	Main Campus
3869	CVEN	3525	1	B	25006	3	Structural Analysis	LEC	09:00 AM - 09:50 AM	MWF	ECCR 245	Corotis,Ross	106	Main Campus
3870	CVEN	3525	400	B	27659	3	Structural Analysis	LEC	02:00 PM - 03:15 PM	MW	Offered at Colorado	Techera Rocha,Ulises Daniel	30	Main Campus
3871	CVEN	3602	1	B	27550	3	Transportation Systems	LEC	12:30 PM - 01:45 PM	TTH	ECCE 1B41	Torres-Machi,Cristina	48	Main Campus
3872	CVEN	3708	10	B	26777	3	Geotechnical Engineering 1	LEC	02:00 PM - 03:15 PM	TTH	ECCR 105	Zhang,Yida	64	Main Campus
3873	CVEN	3708	11	B	26538	3	Geotechnical Engineering 1	LAB	01:00 PM - 02:50 PM	M	ECCE 1B53	Zhang,Yida	21	Main Campus
3874	CVEN	3708	12	B	26778	3	Geotechnical Engineering 1	LAB	11:00 AM - 12:50 PM	W	ECCE 1B53	Zhang,Yida	21	Main Campus
3875	CVEN	3708	13	B	26539	3	Geotechnical Engineering 1	LAB	01:00 PM - 02:50 PM	W	ECCE 1B53	Zhang,Yida	22	Main Campus
3876	CVEN	3708	400	B	35121	3	Geotechnical Engineering 1	LEC	09:00 AM - 10:50 AM	TTH	Offered at Colorado	Sholtes,Joel Stephen	30	Main Campus
3877	CVEN	3718	10	B	25013	3	Geotechnical Engineering 2	LEC	02:00 PM - 03:15 PM	TTH	ECCR 155	Dashti,Shideh	48	Main Campus
3878	CVEN	3718	11	B	25014	3	Geotechnical Engineering 2	LAB	02:00 PM - 03:50 PM	F	ECCE 1B53	Dashti,Shideh	24	Main Campus
3879	CVEN	3718	12	B	26648	3	Geotechnical Engineering 2	LAB	04:00 PM - 05:50 PM	F	ECCE 1B53	Dashti,Shideh	24	Main Campus
3880	CVEN	4147	1	B	25012	3	Civil Engineering Systems	LEC	08:00 AM - 09:15 AM	TTH	ECCE 1B41	Silverstein,Joann	27	Main Campus
3881	CVEN	4161	10	B	26919	3	Mechanics of Materials 2	LEC	09:00 AM - 09:50 AM	MWF	KTCH 1B71	Xi,Yunping	48	Main Campus
3882	CVEN	4161	11	B	26920	3	Mechanics of Materials 2	LAB	06:00 PM - 08:50 PM	M	ECCE 1B52	Xi,Yunping	48	Main Campus
3883	CVEN	4333	1	B	27162	3	Engineering Hydrology	LEC	11:00 AM - 12:15 PM	TTH	DUAN G125		64	Main Campus
3884	CVEN	4333	400	B	35129	3	Engineering Hydrology	LEC	01:00 PM - 02:15 PM	TTH	Offered at Colorado	Sholtes,Joel Stephen	30	Main Campus
3885	CVEN	4353	1	B	24999	3	Groundwater Engineering	LEC	08:00 AM - 09:15 AM	TTH	ECCR 245	Neupauer,Roseanna M	106	Main Campus
3886	CVEN	4404	1	B	25003	3	Water Chemistry	LEC	10:00 AM - 10:50 AM	MWF	FLMG 154	Rosario-Ortiz,Fernando L.	64	Main Campus
3887	CVEN	4414	1	B	25004	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	T	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
3888	CVEN	4414	2	B	25005	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	W	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
3889	CVEN	4414	3	B	26734	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	TH	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
3890	CVEN	4414	4	B	27342	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	M	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
3891	CVEN	4464	1	B	26673	3	Env Engr Processes	LEC	09:00 AM - 09:50 AM	MWF	FLMG 154	Korak,Julie Ann	64	Main Campus
3892	CVEN	4474	1	B	35139	3	Hazardous & Indstrl Waste Mgmt	LEC	09:30 AM - 10:45 AM	TTH	ECCR 151	Bielefeldt,Angela R	48	Main Campus
3893	CVEN	4511	1	B	26793	3	Intro to Finite Element Anlys	LEC	09:30 AM - 10:45 AM	TTH	ECCE 1B41	Regueiro,Rich	49	Main Campus
3894	CVEN	4525	1	B	25007	3	Matrix Structural Analysis	LEC	11:00 AM - 12:15 PM	TTH	ECCE 1B47	Saouma,Victor	25	Main Campus
3895	CVEN	4555	1	B	26649	3	Reinf Concrete Design	LEC	09:30 AM - 10:45 AM	TTH	ECCR 150	Liel,Abbie Boggiano	64	Main Campus
3896	CVEN	4728	1	B	27946	3	Foundation Engineering	LEC	02:00 PM - 03:15 PM	TTH	FLMG 103		27	Main Campus
3897	CVEN	4837	1	B	27546	3	Special Topics	LEC	01:00 PM - 02:15 PM	TTH	SEEC N125	Salvinelli,Carlo	40	Main Campus
3898	CVEN	4837	400	B	35144	3	Special Topics	LEC	03:00 PM - 04:15 PM	TTH	Offered at Colorado	Sholtes,Joel Stephen	30	Main Campus
3899	CVEN	4897	1	B	26970	2	Prof Issues Civil Eng	LEC	12:30 PM - 01:20 PM	TTH	FLMG 154	Bielefeldt,Angela R	84	Main Campus
3900	CVEN	5111	1	B	27543	3	Structural Dynamics	LEC	01:00 PM - 02:15 PM	MW	ECCE 1B41	Pourahmadian,Fatemeh	48	Main Campus
3901	CVEN	5147	1	B	26735	3	Civil Engineering Systems	LEC	08:00 AM - 09:15 AM	TTH	ECCE 1B41	Silverstein,Joann	27	Main Campus
3902	CVEN	5147	001B	B	27324	3	Civil Engineering Systems	LEC	-		Distance Education	Silverstein,Joann	10	Main Campus
3903	CVEN	5161	10	B	26921	3	Advan Mechanics of Materials I	LEC	09:00 AM - 09:50 AM	MWF	KTCH 1B71	Xi,Yunping	48	Main Campus
3904	CVEN	5161	11	B	26922	3	Advan Mechanics of Materials I	LAB	06:00 PM - 08:50 PM	M	ECCE 1B52	Xi,Yunping	48	Main Campus
3905	CVEN	5276	1	B	35158	3	Engr Risk Dec Analysis	LEC	09:30 AM - 10:45 AM	TTH	ECCR 139	Molenaar,Keith Robert	28	Main Campus
3906	CVEN	5286	1	B	26782	3	Design Construction Operations	LEC	11:00 AM - 12:15 PM	TTH	ECCE 1B41	Goodrum,Paul M	25	Main Campus
3907	CVEN	5313	1	B	26931	3	Environ Fluid Mechanics	LEC	03:30 PM - 04:45 PM	MW	SEEC S125	Crimaldi,John	30	Main Campus
3908	CVEN	5323	1	B	27997	3	Applied Stream Ecology	LEC	10:00 AM - 11:15 AM	TTH	SEEC N129	McKnight,Diane Marie	30	Main Campus
3909	CVEN	5333	1	B	26542	3	Physical Hydrology	LEC	02:30 PM - 03:45 PM	TTH	SEEC N129	Gooseff,Michael Nikolai	30	Main Campus
3910	CVEN	5353	1	B	25000	3	Groundwater Hydrology	LEC	08:00 AM - 09:15 AM	TTH	ECCR 245	Neupauer,Roseanna M	106	Main Campus
3911	CVEN	5404	1	B	28001	3	Water Chemistry	LEC	08:30 AM - 09:45 AM	TTH	SEEC S125	Ryan,Joseph N	30	Main Campus
3912	CVEN	5404	002B	B	27456	3	Water Chemistry	LEC	-		Distance Education	Bilgin,Azize Azra	15	Main Campus
3913	CVEN	5423	1	B	26692	3	Water Resource Engineering Des	LEC	01:30 PM - 02:20 PM	MWF	SEEC N128	Kasprzyk,Joseph Robert	30	Main Campus
3914	CVEN	5464	1	B	27660	3	Env Engr Processes	LEC	11:30 AM - 12:45 PM	TTH	SEEC N125	Summers,Scott R	30	Main Campus
3915	CVEN	5464	001B	B	27661	3	Env Engr Processes	LEC	-		Distance Education	Summers,Scott R	15	Main Campus
3916	CVEN	5474	1	B	35140	3	Hazardous & Indstrl Waste Mgmt	LEC	09:30 AM - 10:45 AM	TTH	ECCR 151	Bielefeldt,Angela R	48	Main Campus
3917	CVEN	5474	001B	B	35141	3	Hazardous & Indstrl Waste Mgmt	LEC	-		Distance Education	Bielefeldt,Angela R	15	Main Campus
3918	CVEN	5484	1	B	27417	3	App Microbiology & Toxicology	LEC	02:30 PM - 03:45 PM	TTH	SEEC C315	Hernandez,Mark T	18	Main Campus
3919	CVEN	5511	1	B	26794	3	Intro to Finite Element Anlys	LEC	09:30 AM - 10:45 AM	TTH	ECCE 1B41	Regueiro,Rich	49	Main Campus
3920	CVEN	5511	001B	B	34076	3	Intro to Finite Element Anlys	LEC	-		Distance Education	Regueiro,Rich	15	Main Campus
3921	CVEN	5525	1	B	25008	3	Matrix Structural Analysis	LEC	11:00 AM - 12:15 PM	TTH	ECCE 1B47	Saouma,Victor	25	Main Campus
3922	CVEN	5537	1	B	33950	3	Num Mthds Civil Engineering	LEC	10:00 AM - 10:50 AM	MWF	ECCE 1B41	Regueiro,Rich	27	Main Campus
3923	CVEN	5537	001B	B	33951	3	Num Mthds Civil Engineering	LEC	-		Distance Education	Regueiro,Rich	15	Main Campus
3924	CVEN	5575	1	B	26930	3	Adv Topics in Steel	LEC	12:30 PM - 01:45 PM	TTH	KCEN S163	Hearn,George	20	Main Campus
3925	CVEN	5584	1	B	26769	3	Water Prof:  Financial & Mgmt	LEC	03:30 PM - 06:15 PM	W	ECCE 1B41	Kuchenrither,R D	49	Main Campus
3926	CVEN	5584	001B	B	26992	3	Water Prof:  Financial & Mgmt	LEC	-		Distance Education	Kuchenrither,R D	15	Main Campus
3927	CVEN	5594	1	B	36448	3	Water Reuse and Reclamation	LEC	03:00 PM - 05:30 PM	F	SEEC N129		20	Main Campus
3928	CVEN	5708	1	B	28018	3	Soil Mechanics	LEC	03:30 PM - 04:45 PM	TTH	ECCR 135	Zhang,Yida	20	Main Campus
3929	CVEN	5728	1	B	27947	3	Foundation Engineering	LEC	02:00 PM - 03:15 PM	TTH	FLMG 103		27	Main Campus
3930	CVEN	5798	1	B	28021	3	Dynamics of Soils/Found	LEC	10:00 AM - 10:50 AM	MWF	KCEN S163	Pak,Ronald Y	20	Main Campus
3931	CVEN	5818	1	B	35182	3	Geotech Earthquake Engineering	LEC	09:30 AM - 10:45 AM	TTH	ECCR 155	Dashti,Shideh	27	Main Campus
3932	CVEN	5830	2	B	26926	3	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	ECCR 139	Krarti,Moncef	27	Main Campus
3933	CVEN	5830	3	B	27551	3	Special Topics	LEC	11:00 AM - 12:15 PM	TTH	ECCR 139	Scheib,Jennifer Grace	27	Main Campus
3934	CVEN	5836	1	B	26784	3	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	ECCR 155	Morris,Matthew Robert	48	Main Campus
3935	CVEN	5837	1	B	27547	3	Special Topics	LEC	01:00 PM - 02:15 PM	TTH	SEEC N125	Salvinelli,Carlo	40	Main Campus
3936	CVEN	5837	001B	B	27544	3	Special Topics	LEC	-		Distance Education	Salvinelli,Carlo	15	Main Campus
3937	CVEN	5919	1	B	26722	3	Sustainable Comm Dvlp 1	LEC	02:30 PM - 03:45 PM	TTH	SEEC N128	Klees,Rita Claire	35	Main Campus
3938	CVEN	5939	1	B	26517	3	SCD Field Practicum	PRA	04:00 PM - 06:30 PM	M	SEEC N124	Klees,Rita Claire	30	Main Campus
3939	CVEN	5969	1	B	26927	3	Water, Sanitation, and Hygiene	LEC	04:00 PM - 05:15 PM	TTH	SEEC N126	Klees,Rita Claire	20	Main Campus
3940	CVEN	5969	2	B	26928	2	Water, Sanitation, and Hygiene	LEC	04:00 PM - 05:15 PM	TTH	SEEC N126	Klees,Rita Claire	20	Main Campus
3941	CVEN	6393	1	B	25001	1	Water Resources Seminar	SEM	11:00 AM - 11:50 AM	W	ECCE 1B41	Balaji,Rajagopalan	49	Main Campus
3942	CVEN	6831	1	B	35042	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	KCEN N252	Song,Jeong-Hoon	27	Main Campus
3943	CVEN	6833	1	B	27036	3	Special Topics	LEC	10:00 AM - 11:15 AM	TTH	SEEC C315	Balaji,Rajagopalan	18	Main Campus
3944	CVEN	5969	3	B51	26929	1	Water, Sanitation, and Hygiene	LEC	04:00 PM - 05:15 PM	TTH	SEEC N126	Klees,Rita Claire	20	Main Campus
3945	CSCI	1200	100	B	27478	3	Intro Computational Thinking	LEC	03:00 PM - 03:50 PM	MF	VAC 1B20		195	Main Campus
3946	CSCI	1300	100	B	26529	4	CS 1: Starting Computing	LEC	09:00 AM - 09:50 AM	MWF	HUMN 1B50		240	Main Campus
3947	CSCI	1300	101	B	26533	4	CS 1: Starting Computing	REC	02:00 PM - 03:15 PM	M	ECES 112		48	Main Campus
3948	CSCI	1300	102	B	26534	4	CS 1: Starting Computing	REC	03:30 PM - 04:45 PM	M	ECES 112		48	Main Campus
3949	CSCI	1300	103	B	26535	4	CS 1: Starting Computing	REC	08:00 AM - 09:15 AM	T	ECES 114		48	Main Campus
3950	CSCI	1300	104	B	26540	4	CS 1: Starting Computing	REC	02:00 PM - 03:15 PM	T	ECES 114		48	Main Campus
3951	CSCI	1300	105	B	24947	4	CS 1: Starting Computing	REC	05:00 PM - 06:15 PM	T	ECES 114		48	Main Campus
3952	CSCI	1300	200	B	27358	4	CS 1: Starting Computing	LEC	02:00 PM - 02:50 PM	MWF	HUMN 1B50		240	Main Campus
3953	CSCI	1300	201	B	27386	4	CS 1: Starting Computing	REC	05:00 PM - 06:15 PM	M	ECES 112		48	Main Campus
3954	CSCI	1300	202	B	27387	4	CS 1: Starting Computing	REC	08:00 AM - 09:15 AM	T	ECES 112		48	Main Campus
3955	CSCI	1300	203	B	26482	4	CS 1: Starting Computing	REC	09:30 AM - 10:45 AM	T	ECES 112		48	Main Campus
3956	CSCI	1300	204	B	27390	4	CS 1: Starting Computing	REC	02:00 PM - 03:15 PM	T	ECCE 141		48	Main Campus
3957	CSCI	1300	300	B	33428	4	CS 1: Starting Computing	LEC	03:00 PM - 03:50 PM	MWF	HALE 270		188	Main Campus
3958	CSCI	1300	301	B	27388	4	CS 1: Starting Computing	REC	11:00 AM - 12:15 PM	T	ECES 112		47	Main Campus
3959	CSCI	1300	302	B	27389	4	CS 1: Starting Computing	REC	12:30 PM - 01:45 PM	T	ECES 112		47	Main Campus
3960	CSCI	1300	303	B	27391	4	CS 1: Starting Computing	REC	05:00 PM - 06:15 PM	T	ECES 112		47	Main Campus
3961	CSCI	1300	304	B	27392	4	CS 1: Starting Computing	REC	04:30 PM - 05:45 PM	W	ECES 114		47	Main Campus
3962	CSCI	1300	400	B	36556	4	CS 1: Starting Computing	LEC	08:00 AM - 08:50 AM	MWF	RAMY C250		175	Main Campus
3963	CSCI	1300	402	B	36560	4	CS 1: Starting Computing	REC	04:30 PM - 05:45 PM	M	ECES 114		44	Main Campus
3964	CSCI	1320	100	B	26825	4	CS1: Engineering Applications	LEC	08:00 AM - 08:50 AM	MWF	MUEN E050		292	Main Campus
3965	CSCI	1320	102	B	26828	4	CS1: Engineering Applications	REC	08:00 AM - 08:50 AM	T	ECCE 141		28	Main Campus
3966	CSCI	1320	103	B	26829	4	CS1: Engineering Applications	REC	11:00 AM - 11:50 AM	T	ECCR 235		26	Main Campus
3967	CSCI	1320	104	B	26830	4	CS1: Engineering Applications	REC	12:00 PM - 12:50 PM	T	ECCR 235		26	Main Campus
3968	CSCI	1320	105	B	26832	4	CS1: Engineering Applications	REC	09:00 AM - 09:50 AM	W	ECCR 235		26	Main Campus
3969	CSCI	1320	106	B	26833	4	CS1: Engineering Applications	REC	10:00 AM - 10:50 AM	W	ECCR 235		26	Main Campus
3970	CSCI	1320	109	B	26836	4	CS1: Engineering Applications	REC	11:00 AM - 11:50 AM	TH	ECCR 235		26	Main Campus
3971	CSCI	1320	110	B	26837	4	CS1: Engineering Applications	REC	12:00 PM - 12:50 PM	TH	ECCR 235		26	Main Campus
3972	CSCI	1320	111	B	26912	4	CS1: Engineering Applications	REC	01:00 PM - 01:50 PM	TH	ECCR 235		26	Main Campus
3973	CSCI	2270	100	B	26546	4	Comp Sci 2: Data Struct	LEC	01:00 PM - 01:50 PM	MWF	FLMG 155		192	Main Campus
3974	CSCI	2270	101	B	26547	4	Comp Sci 2: Data Struct	REC	08:00 AM - 09:15 AM	TH	ECES 114		48	Main Campus
3975	CSCI	2270	102	B	26548	4	Comp Sci 2: Data Struct	REC	02:00 PM - 03:15 PM	TH	ECES 114		48	Main Campus
3976	CSCI	2270	103	B	26549	4	Comp Sci 2: Data Struct	REC	03:30 PM - 04:45 PM	TH	ECES 114		48	Main Campus
3977	CSCI	2270	104	B	26550	4	Comp Sci 2: Data Struct	REC	05:00 PM - 06:15 PM	TH	ECES 114		48	Main Campus
3978	CSCI	2270	200	B	27359	4	Comp Sci 2: Data Struct	LEC	03:00 PM - 03:50 PM	MWF	MUEN E050		274	Main Campus
3979	CSCI	2270	201	B	27394	4	Comp Sci 2: Data Struct	REC	08:00 AM - 09:15 AM	TH	ECES 112		42	Main Campus
3980	CSCI	2270	202	B	27395	4	Comp Sci 2: Data Struct	REC	09:30 AM - 10:45 AM	TH	ECES 112		46	Main Campus
3981	CSCI	2270	203	B	27399	4	Comp Sci 2: Data Struct	REC	11:00 AM - 12:15 PM	TH	ECES 112		47	Main Campus
3982	CSCI	2270	204	B	27396	4	Comp Sci 2: Data Struct	REC	12:30 PM - 01:45 PM	TH	ECES 112		47	Main Campus
3983	CSCI	2270	205	B	27397	4	Comp Sci 2: Data Struct	REC	02:00 PM - 03:15 PM	TH	ECCE 141		46	Main Campus
3984	CSCI	2270	206	B	27398	4	Comp Sci 2: Data Struct	REC	03:30 PM - 04:45 PM	TH	ECES 112		46	Main Campus
3985	CSCI	2275	800	B	27986	4	Programming and Data Structure	LEC	11:00 AM - 11:50 AM	MWF	ECES 114		48	Main Campus
3986	CSCI	2400	100	B	24958	4	Computer Systems	LEC	10:00 AM - 10:50 AM	MWF	FLMG 155		192	Main Campus
3987	CSCI	2400	101	B	24959	4	Computer Systems	REC	01:00 PM - 01:50 PM	M	ECES 112		48	Main Campus
3988	CSCI	2400	102	B	24960	4	Computer Systems	REC	03:30 PM - 04:20 PM	M	ECES 114		48	Main Campus
3989	CSCI	2400	103	B	24992	4	Computer Systems	REC	01:00 PM - 01:50 PM	T	ECCE 141		48	Main Campus
3990	CSCI	2400	104	B	24961	4	Computer Systems	REC	05:00 PM - 05:50 PM	T	ECCE 141		48	Main Campus
3991	CSCI	2400	200	B	27604	4	Computer Systems	LEC	02:00 PM - 03:15 PM	TTH	MATH 100		240	Main Campus
3992	CSCI	2820	1	B	26727	3	Linear Algebra with CS Apps	LEC	02:00 PM - 03:15 PM	TTH	ECCR 1B40		130	Main Campus
3993	CSCI	2824	1	B	24924	3	Discrete Structures	LEC	09:00 AM - 09:50 AM	MWF	FLMG 155		150	Main Campus
3994	CSCI	2824	2	B	27360	3	Discrete Structures	LEC	11:00 AM - 11:50 AM	MWF	HUMN 1B50		220	Main Campus
3995	CSCI	2830	800	B	27998	1	Special Topics	LEC	05:00 PM - 06:15 PM	TH	ECES 112		48	Main Campus
3996	CSCI	2830	801	B	35303	1	Special Topics	LEC	01:00 PM - 02:15 PM	F	ECES 112		48	Main Campus
3997	CSCI	3002	100	B	26770	4	Fundamentals of HCI	LEC	11:00 AM - 12:15 PM	TTH	FLMG 155		190	Main Campus
3998	CSCI	3002	101	B	27652	4	Fundamentals of HCI	REC	04:00 PM - 04:50 PM	TH	FLMG 103		37	Main Campus
3999	CSCI	3002	102	B	27655	4	Fundamentals of HCI	REC	05:00 PM - 05:50 PM	TH	ECCR 135		42	Main Campus
4000	CSCI	3002	103	B	27653	4	Fundamentals of HCI	REC	09:00 AM - 09:50 AM	F	KOBL 375		37	Main Campus
4001	CSCI	3002	104	B	27654	4	Fundamentals of HCI	REC	10:00 AM - 10:50 AM	F	KOBL 375		37	Main Campus
4002	CSCI	3002	105	B	33556	4	Fundamentals of HCI	REC	02:00 PM - 02:50 PM	F	ECES 114		37	Main Campus
4003	CSCI	3010	1	B	27726	3	Programming Project Workshop	LEC	01:00 PM - 02:15 PM	TTH	FLMG 33	Muzny,Felix	48	Main Campus
4004	CSCI	3010	2	B	35309	3	Programming Project Workshop	LEC	09:30 AM - 10:45 AM	WF	FLMG 33		56	Main Campus
4005	CSCI	3022	1	B	27296	3	Intro to Data Sci w Prob/Stat	LEC	01:00 PM - 01:50 PM	MWF	ECCR 200	Wong,Anthony E	106	Main Campus
4006	CSCI	3022	2	B	27577	3	Intro to Data Sci w Prob/Stat	LEC	03:00 PM - 03:50 PM	MWF	ECCR 1B40	Larremore,Daniel Benjamin	130	Main Campus
4007	CSCI	3104	100	B	25021	4	Algorithms	LEC	12:30 PM - 01:45 PM	TTH	ECCS 1B28	Hoenigman,Rhonda Olcott	78	Main Campus
4008	CSCI	3104	100B	B	27475	4	Algorithms	LEC	-	TBA	Distance Education	Hoenigman,Rhonda Olcott	74	Main Campus
4009	CSCI	3104	101	B	26939	4	Algorithms	REC	04:00 PM - 04:50 PM	T	STAD 112	Hoenigman,Rhonda Olcott	39	Main Campus
4010	CSCI	3104	102	B	26135	4	Algorithms	REC	08:00 AM - 08:50 AM	W	ECES 114	Hoenigman,Rhonda Olcott	39	Main Campus
4011	CSCI	3104	111	B	27474	4	Algorithms	REC	12:00 PM - 12:50 PM	W	ECCR 105	Hoenigman,Rhonda Olcott	37	Main Campus
4012	CSCI	3104	112	B	27476	4	Algorithms	REC	09:00 AM - 09:50 AM	TH	ECCR 1B55	Hoenigman,Rhonda Olcott	37	Main Campus
4013	CSCI	3104	200	B	27361	4	Algorithms	LEC	09:30 AM - 10:45 AM	TTH	ECCR 1B40	Chen,Lijun	111	Main Campus
4014	CSCI	3104	201	B	27429	4	Algorithms	REC	03:00 PM - 03:50 PM	T	STAD 112	Chen,Lijun	37	Main Campus
4015	CSCI	3104	202	B	27873	4	Algorithms	REC	09:00 AM - 09:50 AM	W	ECCR 135	Chen,Lijun	37	Main Campus
4016	CSCI	3104	203	B	27473	4	Algorithms	REC	04:30 PM - 05:20 PM	W	ECCR 155	Hoenigman,Rhonda Olcott	37	Main Campus
4017	CSCI	3112	800	B	26671	1-3	Human-Centered Comp Prof Dev	PRA	-	TBA	See Academc Dept	Lewis,Clayton	90	Main Campus
4018	CSCI	3155	100	B	26557	4	Princip of Prog Langs	LEC	02:00 PM - 03:15 PM	TTH	FLMG 155		200	Main Campus
4019	CSCI	3155	101	B	26558	4	Princip of Prog Langs	REC	09:00 AM - 09:50 AM	F	ECCR 135		40	Main Campus
4020	CSCI	3155	102	B	26559	4	Princip of Prog Langs	REC	10:00 AM - 10:50 AM	F	ECCR 150		40	Main Campus
4021	CSCI	3155	103	B	26715	4	Princip of Prog Langs	REC	12:00 PM - 12:50 PM	F	ECES 112		40	Main Campus
4022	CSCI	3155	104	B	26913	4	Princip of Prog Langs	REC	01:00 PM - 01:50 PM	F	KOBL 300		40	Main Campus
4023	CSCI	3155	105	B	27648	4	Princip of Prog Langs	REC	02:00 PM - 02:50 PM	F	KOBL 220		40	Main Campus
4024	CSCI	3202	1	B	26556	3	Intro Artificial Intell	LEC	03:00 PM - 04:15 PM	MW	ECCR 245		106	Main Campus
4025	CSCI	3287	1	B	26653	3	Data Systems	LEC	03:00 PM - 03:50 PM	MWF	HLMS 252		137	Main Campus
4026	CSCI	3308	100	B	27563	3	Software Dev Methods and Tools	LEC	10:00 AM - 10:50 AM	MW	ECCR 150		64	Main Campus
4027	CSCI	3308	100B	B	27766	3	Software Dev Methods and Tools	LEC	-	TBA	Distance Education		86	Main Campus
4028	CSCI	3308	101	B	27762	3	Software Dev Methods and Tools	LAB	05:00 PM - 06:40 PM	W	ECCE 141		38	Main Campus
4029	CSCI	3308	102	B	27219	3	Software Dev Methods and Tools	LAB	08:00 AM - 09:40 AM	F	ECCR 235		26	Main Campus
4030	CSCI	3308	111	B	27564	3	Software Dev Methods and Tools	LAB	02:00 PM - 03:40 PM	TH	ECCR 235		26	Main Campus
4031	CSCI	3308	112	B	27763	3	Software Dev Methods and Tools	LAB	04:00 PM - 05:40 PM	TH	ECCR 235		26	Main Campus
4032	CSCI	3308	113	B	27764	3	Software Dev Methods and Tools	LAB	12:00 PM - 01:40 PM	F	ECCE 141		34	Main Campus
4033	CSCI	3308	200	B	25022	3	Software Dev Methods and Tools	LEC	01:00 PM - 01:50 PM	MW	GOLD A2B70		204	Main Campus
4034	CSCI	3308	201	B	25023	3	Software Dev Methods and Tools	LAB	06:00 PM - 07:40 PM	W	ECCR 235		26	Main Campus
4035	CSCI	3308	202	B	25024	3	Software Dev Methods and Tools	LAB	09:00 AM - 10:40 AM	TH	ECCR 235		26	Main Campus
4036	CSCI	3308	203	B	25025	3	Software Dev Methods and Tools	LAB	03:30 PM - 05:10 PM	TH	ECCE 141		38	Main Campus
4037	CSCI	3308	204	B	33438	3	Software Dev Methods and Tools	LAB	08:00 AM - 09:40 AM	F	ECCE 141		36	Main Campus
4038	CSCI	3308	205	B	25026	3	Software Dev Methods and Tools	LAB	10:00 AM - 11:40 AM	F	ECCR 235		26	Main Campus
4039	CSCI	3308	206	B	26672	3	Software Dev Methods and Tools	LAB	12:00 PM - 01:40 PM	F	ECCR 235		26	Main Campus
4040	CSCI	3308	207	B	26909	3	Software Dev Methods and Tools	LAB	02:00 PM - 03:40 PM	F	ECCR 235		26	Main Campus
4041	CSCI	3434	1	B	26967	3	Theory of Computation	LEC	12:30 PM - 01:45 PM	TTH	ECES 114		48	Main Campus
4042	CSCI	3656	1	B	27302	3	Numerical Computation	LEC	03:00 PM - 04:15 PM	MW	ECCR 155		48	Main Campus
4043	CSCI	3753	100	B	26761	4	Operating Systems	LEC	12:30 PM - 01:45 PM	TTH	ECCR 265		152	Main Campus
4044	CSCI	3753	101	B	26762	4	Operating Systems	REC	04:00 PM - 04:50 PM	TH	FLMG 102		38	Main Campus
4045	CSCI	3753	102	B	26763	4	Operating Systems	REC	08:00 AM - 08:50 AM	F	ECES 112		38	Main Campus
4046	CSCI	3753	103	B	26764	4	Operating Systems	REC	09:00 AM - 09:50 AM	F	ECES 112		38	Main Campus
4047	CSCI	3753	104	B	26914	4	Operating Systems	REC	10:00 AM - 10:50 AM	F	ECCE 141		38	Main Campus
4048	CSCI	4022	1	B	33558	3	Advanced Data Science	LEC	04:00 PM - 05:15 PM	MW	HLMS 252	Wong,Anthony E	109	Main Campus
4049	CSCI	4113	1	B	27952	3	Linux System Administration	LEC	12:30 PM - 01:45 PM	TTH	ECEE 283	Herman,Carey Jay	20	Main Campus
4050	CSCI	4113	2	B	27953	3	Linux System Administration	LEC	03:30 PM - 04:45 PM	TTH	ECCS 1B14	Herman,Carey Jay	20	Main Campus
4051	CSCI	4114	1	B	36483	3	Pract Algorithmic Complexity	LEC	10:00 AM - 10:50 AM	MWF	ECES 114	Grochow,Joshua	24	Main Campus
4052	CSCI	4229	1	B	25027	3	Computer Graphics	LEC	05:00 PM - 07:30 PM	TH	ECCS 1B12	Schreuder,Willem Adriaan	64	Main Campus
4053	CSCI	4253	1	B	27704	3	Datacenter Scale Computing	LEC	12:30 PM - 01:45 PM	TTH	ECCS 1B12		64	Main Campus
4054	CSCI	4273	1	B	25029	3	Network Systems	LEC	12:30 PM - 01:45 PM	TTH	FLMG 104	Ha,Sangtae	52	Main Campus
4055	CSCI	4302	1	B	35336	3	Advanced Robotics	LEC	09:00 AM - 09:50 AM	MWF	ECES 114	Heckman,Christoffer R	20	Main Campus
4056	CSCI	4348	800	B	26976	4	Entrepreneurial Projects	LEC	11:00 AM - 12:15 PM	TTH	FLMG 154		58	Main Campus
4057	CSCI	4348	801	B	26977	4	Entrepreneurial Projects	REC	05:00 PM - 05:50 PM	W	FLMG 154		58	Main Campus
4058	CSCI	4448	1	B	26910	3	Object-Oriented Anlysis/Design	LEC	10:00 AM - 10:50 AM	MWF	ECCS 1B12		64	Main Campus
4059	CSCI	4502	1	B	27362	3	Data Mining	LEC	09:30 AM - 10:45 AM	TTH	ECCS 1B12	Lv,Qin	64	Main Campus
4060	CSCI	4622	1	B	27974	3	Machine Learning	LEC	02:00 PM - 02:50 PM	MWF	ECCR 265		140	Main Campus
4061	CSCI	4802	1	B	27439	1	Data Science Team	SEM	05:00 PM - 06:15 PM	T	FLMG 103		44	Main Campus
4062	CSCI	4809	1	B	27319	3	Computer Animation	LEC	05:00 PM - 06:15 PM	MW	ATLS 1B31	King,Roger A	10	Main Campus
4063	CSCI	4830	1	B	34181	3	Spec Tpcs in Computer Science	LEC	09:30 AM - 10:45 AM	TTH	ECCR 135	Schnabel,Robert	44	Main Campus
4064	CSCI	4830	5	B	35340	3	Spec Tpcs in Computer Science	LEC	11:00 AM - 12:15 PM	TTH	ECES 114	Layer,Ryan Matthew	35	Main Campus
4065	CSCI	4830	6	B	34984	3	Spec Tpcs in Computer Science	LEC	03:00 PM - 05:30 PM	W	ATLS 113	Shapiro,Ryan Benjamin	2	Main Campus
4066	CSCI	4830	800	B51	27964	1	Spec Tpcs in Computer Science	LEC	05:00 PM - 06:50 PM	TH	ECCR 1B08	Muzny,Felix	10	Main Campus
4067	CSCI	5114	1	B	36484	3	Pract. Algorithmic Complexity	LEC	10:00 AM - 10:50 AM	MWF	ECES 114	Grochow,Joshua	12	Main Campus
4068	CSCI	5135	1	B	26802	3	Computer-Aided Verification	LEC	02:00 PM - 03:15 PM	TTH	ECEE 265	Somenzi,Fabio	22	Main Campus
4069	CSCI	5229	1	B	25028	3	Computer Graphics	LEC	05:00 PM - 07:30 PM	TH	ECCS 1B12	Schreuder,Willem Adriaan	30	Main Campus
4070	CSCI	5229	001B	B	26987	3	Computer Graphics	LEC	-	TBA	Distance Education	Schreuder,Willem Adriaan	30	Main Campus
4071	CSCI	5253	1	B	27702	3	Datacenter Scale Computing	LEC	12:30 PM - 01:45 PM	TTH	ECCS 1B12		30	Main Campus
4072	CSCI	5253	001B	B	27703	3	Datacenter Scale Computing	LEC	-	TBA	Distance Education		30	Main Campus
4073	CSCI	5302	1	B	35337	3	Advanced Robotics	LEC	09:00 AM - 09:50 AM	MWF	ECES 114	Heckman,Christoffer R	20	Main Campus
4074	CSCI	5340	1	B	27053	3	Entrepreneurial Projects	LEC	11:00 AM - 12:15 PM	TTH	FLMG 154		10	Main Campus
4075	CSCI	5352	1	B	34103	3	Network Analysis and Modeling	LEC	01:00 PM - 01:50 PM	MWF	ECCR 105	Larremore,Daniel Benjamin	40	Main Campus
4076	CSCI	5352	001B	B	34104	3	Network Analysis and Modeling	LEC	-		Distance Education	Larremore,Daniel Benjamin	30	Main Campus
4077	CSCI	5403	1	B	27905	3	Intro to CyberSecurity	LEC	12:30 PM - 01:45 PM	TTH	ECCR 105	Massey,Daniel Frank	50	Main Campus
4078	CSCI	5403	001B	B	35341	3	Intro to CyberSecurity	LEC	-	TBA	Distance Education	Massey,Daniel Frank	30	Main Campus
4079	CSCI	5413	1	B	27961	3	Security & Ethical Hacking	LEC	09:30 AM - 10:45 AM	TTH	ECES 114	Black,John	48	Main Campus
4080	CSCI	5444	1	B	27806	3	Intro to Theory of Comp	LEC	11:00 AM - 12:15 PM	TTH	HUMN 1B90		25	Main Campus
4081	CSCI	5444	001B	B	27807	3	Intro to Theory of Comp	LEC	-	TBA	Distance Education		30	Main Campus
4082	CSCI	5448	1	B	26911	3	Object-Oriented Anlysis & Dsgn	LEC	10:00 AM - 10:50 AM	MWF	ECCS 1B12		30	Main Campus
4083	CSCI	5448	001B	B	26989	3	Object-Oriented Anlysis & Dsgn	LEC	-	TBA	Distance Education		30	Main Campus
4084	CSCI	5454	1	B	27269	3	Design Anlys of Algos	LEC	11:00 AM - 12:15 PM	TTH	ECCR 150		64	Main Campus
4085	CSCI	5454	001B	B	27297	3	Design Anlys of Algos	LEC	-	TBA	Distance Education		30	Main Campus
4086	CSCI	5502	1	B	27445	3	Data Mining	LEC	09:30 AM - 10:45 AM	TTH	ECCS 1B12	Lv,Qin	30	Main Campus
4087	CSCI	5502	001B	B	27469	3	Data Mining	LEC	-	TBA	Distance Education	Lv,Qin	30	Main Campus
4088	CSCI	5573	1	B	27706	3	Advanced Operating Systems	LEC	11:00 AM - 11:50 AM	MWF	ECCR 150		30	Main Campus
4089	CSCI	5573	001B	B	27707	3	Advanced Operating Systems	LEC	-	TBA	Distance Education		30	Main Campus
4090	CSCI	5606	1	B	25034	3	Prin of Num Computation	LEC	03:00 PM - 04:15 PM	MW	HUMN 1B90	Cai,Xiao-Chuan	25	Main Campus
4091	CSCI	5606	001B	B	27705	3	Prin of Num Computation	LEC	-	TBA	Distance Education	Cai,Xiao-Chuan	30	Main Campus
4092	CSCI	5622	1	B	26938	3	Machine Learning	LEC	05:00 PM - 06:15 PM	MW	ECCS 1B12		80	Main Campus
4093	CSCI	5622	001B	B	27449	3	Machine Learning	LEC	-	TBA	Distance Education		30	Main Campus
4094	CSCI	5636	1	B	26787	3	Num Sol Part Dif Equat	LEC	02:00 PM - 02:50 PM	MWF	ECCR 1B51	Kallen-Brown,Jedediah A	25	Main Campus
4095	CSCI	5636	001B	B	27450	3	Num Sol Part Dif Equat	LEC	-	TBA	Distance Education	Kallen-Brown,Jedediah A	30	Main Campus
4096	CSCI	5676	1	B	35358	3	Numerical Optimization	LEC	-	TBA	See Academc Dept	Cai,Xiao-Chuan	20	Main Campus
4097	CSCI	5802	1	B	27442	1	Data Science Team	SEM	05:00 PM - 06:15 PM	T	FLMG 103		44	Main Campus
4098	CSCI	5809	1	B	27320	3	Computer Animation	LEC	05:00 PM - 06:15 PM	MW	ATLS 1B31	King,Roger A	5	Main Campus
4099	CSCI	5822	1	B	34127	3	Probabilistic Models	LEC	11:00 AM - 12:15 PM	TTH	ECCR 105		68	Main Campus
4100	CSCI	5822	001B	B	34128	3	Probabilistic Models	LEC	-	TBA	Distance Education		10	Main Campus
4101	CSCI	5832	1	B	27052	3	Natural Language Processing	LEC	02:00 PM - 03:15 PM	TTH	HUMN 1B80	Martin,James H	60	Main Campus
4102	CSCI	5832	001B	B	27451	3	Natural Language Processing	LEC	-	TBA	Distance Education	Martin,James H	30	Main Campus
4103	CSCI	5839	1	B	27973	3	User-Centered Design & Dev 1	LEC	02:00 PM - 03:15 PM	MW	ECES 114	Kane,Shaun Kevin	48	Main Campus
4104	CSCI	7000	1	B	27935	3	Current Tpcs in Computer Sci	LEC	12:00 PM - 01:15 PM	WF	ECES 114	Vu,Tam	48	Main Campus
4105	CSCI	7000	4	B	27929	3	Current Tpcs in Computer Sci	LEC	11:00 AM - 12:15 PM	TTH	HLMS 220	Palmer,Martha	15	Main Campus
4106	CSCI	7000	5	B	27942	3	Current Tpcs in Computer Sci	LEC	11:00 AM - 12:15 PM	TTH	ECES 114	Layer,Ryan Matthew	12	Main Campus
4107	CSCI	7000	6	B	34985	3	Current Tpcs in Computer Sci	LEC	03:00 PM - 05:30 PM	W	ATLS 113	Shapiro,Ryan Benjamin	8	Main Campus
4108	CSCI	7000	8	B	27966	3	Current Tpcs in Computer Sci	LEC	12:30 PM - 01:45 PM	TTH	FLMG 157	Rozner,Eric	35	Main Campus
4109	CSCI	7000	10	B	27562	1	Current Tpcs in Computer Sci	LEC	03:30 PM - 04:30 PM	T	FLMG 103		10	Main Campus
4110	CSCI	7412	1	B	26789	2	Cog Sci Rsrch Prac 1	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
4111	CSCI	7422	1	B	25018	2	Cog Sci Rsrch Prac 2	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
4112	CSCI	7772	1	B	25020	1	Tpcs-Cognitive Science	SEM	12:00 PM - 02:00 PM	F	MUEN D430	Sumner,Tamara Ruth	15	Main Campus
4113	ECEN	1100	1	B	24916	1	Exploring ECE	SEM	05:00 PM - 05:50 PM	M	ECCR 200		95	Main Campus
4114	ECEN	1310	10	B	26973	4	C Programming for ECE	LEC	08:00 AM - 08:50 AM	MWF	ECEE 1B32	Cerny,Pavol	60	Main Campus
4115	ECEN	1310	11	B	26688	4	C Programming for ECE	LAB	08:30 AM - 10:20 AM	T	See Academc Dept	Cerny,Pavol	30	Main Campus
4116	ECEN	1310	12	B	26689	4	C Programming for ECE	LAB	03:30 PM - 05:20 PM	T	See Academc Dept	Cerny,Pavol	30	Main Campus
4117	ECEN	1400	10	B	24939	3	Intro Dig/Analog Elect	LEC	02:00 PM - 02:50 PM	MW	ECCR 245		99	Main Campus
4118	ECEN	1400	11	B	24943	3	Intro Dig/Analog Elect	LAB	03:00 PM - 04:50 PM	M	ECEE 281		33	Main Campus
4119	ECEN	1400	12	B	24944	3	Intro Dig/Analog Elect	LAB	03:00 PM - 04:50 PM	W	ECEE 281		33	Main Campus
4120	ECEN	1400	13	B	24945	3	Intro Dig/Analog Elect	LAB	03:00 PM - 04:50 PM	F	ECEE 281		33	Main Campus
4121	ECEN	1500	1	B	25570	3	Sustainable Energy	LEC	12:00 PM - 12:50 PM	MWF	ECEE 1B32	Shaheen,Sean Eric	60	Main Campus
4122	ECEN	2250	1	B	24917	3	Intro Circuits & Electronics	LEC	02:00 PM - 02:50 PM	MWF	ECCR 200	Blum,Arielle Melissa	105	Main Campus
4123	ECEN	2260	1	B	24922	3	Circuits as Systems	LEC	09:00 AM - 09:50 AM	MWF	ECEE 1B32	Erickson,Robert W	60	Main Campus
4124	ECEN	2270	10	B	26693	3	Electronics Design Lab	LEC	03:00 PM - 03:50 PM	M	FLMG 104	Blum,Arielle Melissa	60	Main Campus
4125	ECEN	2270	11	B	26694	3	Electronics Design Lab	LAB	10:30 AM - 12:20 PM	TTH	ECEE 281	Blum,Arielle Melissa	30	Main Campus
4126	ECEN	2270	12	B	26695	3	Electronics Design Lab	LAB	10:30 AM - 12:20 PM	TTH	ECEE 282	Blum,Arielle Melissa	30	Main Campus
4127	ECEN	2310	1	B	27965	1	Math SW Programming	LEC	10:00 AM - 10:50 AM	MW	ECEE 1B32	Somenzi,Fabio	60	Main Campus
4128	ECEN	2350	1	B	24918	3	Digital Logic	LEC	04:00 PM - 04:50 PM	MWF	FLMG 154	Solway,Barry R	75	Main Campus
4129	ECEN	2440	10	B	27435	3	Appli of Embedded Systems	LEC	08:00 AM - 08:50 AM	M	FLMG 104	Graham,Keith A	70	Main Campus
4130	ECEN	2440	11	B	27436	3	Appli of Embedded Systems	LAB	11:00 AM - 12:50 PM	MW	ECEE 281	Graham,Keith A	30	Main Campus
4131	ECEN	2440	12	B	27437	3	Appli of Embedded Systems	LAB	11:00 AM - 12:50 PM	MW	ECEE 282	Graham,Keith A	20	Main Campus
4132	ECEN	2440	13	B	27438	3	Appli of Embedded Systems	LAB	08:00 AM - 09:50 AM	TTH	ECEE 281	Graham,Keith A	20	Main Campus
4133	ECEN	2703	1	B	25033	3	Discrete Math Compt Engineers	LEC	10:00 AM - 10:50 AM	MWF	FLMG 104	Meyer,Francois Georges	60	Main Campus
4134	ECEN	3010	10	B	24949	3	Circ/Elect for Mech Eng	LEC	04:00 PM - 04:50 PM	MW	ECCR 1B40	Newhall,William George	136	Main Campus
4135	ECEN	3010	11	B	24950	3	Circ/Elect for Mech Eng	LAB	11:00 AM - 12:50 PM	F	ITLL 1B10	Newhall,William George	34	Main Campus
4136	ECEN	3010	12	B	24951	3	Circ/Elect for Mech Eng	LAB	11:00 AM - 12:50 PM	F	ITLL 1B10	Newhall,William George	34	Main Campus
4137	ECEN	3010	15	B	28008	3	Circ/Elect for Mech Eng	LAB	01:00 PM - 02:50 PM	F	ITLL 1B10	Newhall,William George	34	Main Campus
4138	ECEN	3010	16	B	28009	3	Circ/Elect for Mech Eng	LAB	01:00 PM - 02:50 PM	F	ITLL 1B10	Newhall,William George	34	Main Campus
4139	ECEN	3030	1	B	24919	3	Elec/Elec Circs Non-Maj	LEC	02:00 PM - 02:50 PM	MWF	ECEE 1B32	Baker,Kyri	60	Main Campus
4140	ECEN	3170	1	B	26523	3	Electromag Energy Conversion 1	LEC	09:00 AM - 09:50 AM	MWF	ECCR 151		40	Main Campus
4141	ECEN	3250	1	B	24956	3	Microelectronics	LEC	12:00 PM - 12:50 PM	MWF	ECCR 200	Le,Hanh-Phuc	70	Main Campus
4142	ECEN	3300	1	B	24957	3	Linear Systems	LEC	01:00 PM - 01:50 PM	MWF	ECEE 1B32	Liu,Youjian	60	Main Campus
4143	ECEN	3350	1	B	26327	3	Programming Digital Systems	LEC	08:00 AM - 08:50 AM	MWF	ECCR 200		100	Main Campus
4144	ECEN	3360	10	B	26757	3	Digital Design Laboratory	LEC	11:00 AM - 11:50 AM	M	ECEE 265	Graham,Keith A	22	Main Campus
4145	ECEN	3360	11	B	26758	3	Digital Design Laboratory	LAB	01:00 PM - 02:50 PM	TTH	ECEE 281	Graham,Keith A	22	Main Campus
4146	ECEN	3400	1	B	25019	3	Electromag Flds/Waves	LEC	03:00 PM - 03:50 PM	MWF	ECEE 1B32	Barton,Taylor	60	Main Campus
4147	ECEN	3810	1	B	24920	3	Intro to Probability	LEC	12:30 PM - 01:45 PM	TTH	ECCR 245	Chen,Xudong	100	Main Campus
4148	ECEN	4006	1	B	35117	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH		Huang,Shu-Wei	25	Main Campus
4149	ECEN	4013	1	B	27493	3	Special Topics	LEC	10:00 AM - 12:30 PM	F	ECEE 281	Bogatin,Eric	15	Main Campus
4150	ECEN	4138	1	B	26971	3	Control Systems Analysis	LEC	12:00 PM - 12:50 PM	MWF	ECEE 283	Pao,Lucy Y	21	Main Campus
4151	ECEN	4242	1	B	26978	3	Communication Theory	LEC	11:00 AM - 11:50 AM	MWF	ECEE 1B32	Mathys,Peter	60	Main Campus
4152	ECEN	4555	1	B	27721	3	Energy Systems and Devices	LEC	03:00 PM - 03:50 PM	MWF	ECEE 265	Hodge,Bri-Mathias	25	Main Campus
4153	ECEN	4593	1	B	27463	3	Computer Organization	LEC	04:00 PM - 04:50 PM	MWF	ECEE 1B32	Sheafor,Stephen James	60	Main Campus
4154	ECEN	4606	10	B	27911	3	Undergrad Optics Lab	LEC	01:00 PM - 02:15 PM	M	ECEE 265		21	Main Campus
4155	ECEN	4606	11	B	27912	3	Undergrad Optics Lab	LAB	03:30 PM - 06:30 PM	T	ECEE 105		21	Main Campus
4156	ECEN	4610	1	B	24921	3	Capstone Laboratory Part 1	MLS	09:30 AM - 12:15 PM	TTH	ECEE 2B37	Femrite,Andrew Jay	49	Main Campus
4157	ECEN	4610	2	B	26759	3	Capstone Laboratory Part 1	MLS	09:30 AM - 12:15 PM	TTH	ECEE 2B39	Femrite,Andrew Jay	49	Main Campus
4158	ECEN	4610	803	B	27959	3	Capstone Laboratory Part 1	MLS	09:30 AM - 12:15 PM	TTH	ECEE 1B10	Femrite,Andrew Jay	20	Main Campus
4159	ECEN	4632	1	B	27908	3	Intro to Digital Filter	LEC	09:00 AM - 09:50 AM	MWF	FLMG 156	Meyer,Francois Georges	50	Main Campus
4160	ECEN	4634	10	B	27330	3	Microwave and RF Lab	LEC	05:00 PM - 06:15 PM	M	ECEE 1B32	Popovic,Z	60	Main Campus
4161	ECEN	4634	11	B	27331	3	Microwave and RF Lab	LAB	12:30 PM - 03:00 PM	T	ECEE 254	Popovic,Z	24	Main Campus
4162	ECEN	4634	12	B	27332	3	Microwave and RF Lab	LAB	09:30 AM - 12:00 PM	TH	ECEE 254	Popovic,Z	24	Main Campus
4163	ECEN	4634	13	B	34926	3	Microwave and RF Lab	LAB	02:00 PM - 04:30 PM	TH	ECEE 254	Popovic,Z	24	Main Campus
4164	ECEN	4797	2	B	28017	3	Intro to Power Electronics	LEC	10:00 AM - 10:50 AM	MWF	ECCR 105	Le,Hanh-Phuc	30	Main Campus
4165	ECEN	4797	002B	B	34987	3	Intro to Power Electronics	LEC	-		Distance Education	Le,Hanh-Phuc	20	Main Campus
4166	ECEN	4827	1	B	27156	3	Analog IC Design	LEC	03:00 PM - 03:50 PM	MWF	ECCR 1B55	Maksimovic,Dragan	20	Main Campus
4167	ECEN	4827	001B	B	27484	3	Analog IC Design	LEC	-		Distance Education	Maksimovic,Dragan	25	Main Campus
4168	ECEN	4013	001B	B51	27542	1	Special Topics	LEC	-			Bogatin,Eric	15	Main Campus
4169	ECEN	5006	1	B	35118	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH		Huang,Shu-Wei	30	Main Campus
4170	ECEN	5007	1	B	27708	3	Special Topics	LEC	09:00 AM - 09:50 AM	MWF	ECEE 283	Maksimovic,Dragan	42	Main Campus
4171	ECEN	5007	001B	B	27709	3	Special Topics	LEC	-		Distance Education	Maksimovic,Dragan	20	Main Campus
4172	ECEN	5007	2	B	27710	3	Special Topics	LEC	05:00 PM - 06:15 PM	TTH	ECEE 265	Krad,Ibrahim	22	Main Campus
4173	ECEN	5008	1	B	28015	3	Special Topics	LEC	08:00 AM - 09:15 AM	TTH	ECCR 151	Poveda,Jorge Ivan	30	Main Campus
4174	ECEN	5009	10	B	27482	3	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	ECEE 1B32	Bell,Roger N	60	Main Campus
4175	ECEN	5009	11	B	27483	3	Special Topics	LAB	02:00 PM - 04:50 PM	M	ECEE 1B65	Bell,Roger N	24	Main Campus
4176	ECEN	5009	12	B	27481	3	Special Topics	LAB	02:00 PM - 04:50 PM	W	ECEE 1B65	Bell,Roger N	24	Main Campus
4177	ECEN	5009	13	B	27597	3	Special Topics	LAB	02:00 PM - 04:50 PM	F	ECEE 1B65	Bell,Roger N	24	Main Campus
4178	ECEN	5013	1	B	26723	3	Special Topics	LEC	10:00 AM - 12:30 PM	F	ECEE 281	Bogatin,Eric	20	Main Campus
4179	ECEN	5013	2	B	33727	3	Special Topics	LEC	03:30 PM - 04:45 PM	TTH	ECCR 150	Heidebrecht,Richard M	12	Main Campus
4180	ECEN	5013	002B	B	33738	3	Special Topics	LEC	-		Distance Education	Heidebrecht,Richard M	12	Main Campus
4181	ECEN	5013	3	B	27612	3	Special Topics	LEC	04:00 PM - 05:15 PM	MW	ECCR 1B55	Graham,Keith A	12	Main Campus
4182	ECEN	5013	003B	B	27613	3	Special Topics	LEC	-		Distance Education		12	Main Campus
4183	ECEN	5013	4	B	35218	3	Special Topics	LEC	03:30 PM - 04:45 PM	TTH	ECCR 155	Wustrow,Eric	20	Main Campus
4184	ECEN	5015	1	B	34950	3	Special Topics	LEC	03:30 PM - 04:45 PM	TTH	KCEN S163		20	Main Campus
4185	ECEN	5023	1	B	26990	3	Special Topics	LEC	02:00 PM - 02:50 PM	MWF	ECEE 283	Graham,Keith A	35	Main Campus
4186	ECEN	5023	001B	B	27385	3	Special Topics	LEC	-		Distance Education	Graham,Keith A	25	Main Campus
4187	ECEN	5033	1	B	27669	3	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	ECEE 265	Keller,Eric Robert	22	Main Campus
4188	ECEN	5053	1	B	27991	3	Special Topics	LEC	05:00 PM - 06:15 PM	TTH	ECCR 116	Mendelson,Jay	25	Main Campus
4189	ECEN	5053	001B	B	27300	3	Special Topics	LEC	-		Distance Education	Mendelson,Jay	25	Main Campus
4190	ECEN	5053	2	B	27479	3	Special Topics	LEC	10:00 AM - 12:30 PM	M	See Academc Dept	Montgomery Jr,Bruce	25	Main Campus
4191	ECEN	5053	002B	B	27480	3	Special Topics	LEC	-		Distance Education	Montgomery Jr,Bruce	25	Main Campus
4192	ECEN	5053	3	B	33734	3	Special Topics	LEC	06:30 PM - 07:45 PM	TTH	ECEE 283	Sluiter,David	35	Main Campus
4193	ECEN	5053	003B	B	33735	3	Special Topics	LEC	-		Distance Education	Sluiter,David	25	Main Campus
4194	ECEN	5104	1	B	27323	3	Comp Aid Microwv Cir Des	LEC	09:00 AM - 10:15 AM	MW	See Academc Dept	Psychogiou,Dimitra	25	Main Campus
4195	ECEN	5134	1	B	26717	3	Electromag Radiation	LEC	08:00 AM - 08:50 AM	MWF	ECCR 155	Filipovic,Dejan S	30	Main Campus
4196	ECEN	5138	1	B	26972	3	Control Systems Analysis	LEC	12:00 PM - 12:50 PM	MWF	ECEE 283	Pao,Lucy Y	21	Main Campus
4197	ECEN	5139	1	B	26801	3	Computer-Aided Verification	LEC	02:00 PM - 03:15 PM	TTH	ECEE 265	Somenzi,Fabio	22	Main Campus
4198	ECEN	5156	1	B	27322	3	Physical Optics	LEC	02:00 PM - 03:15 PM	TTH	ECEE 1B32	Piestun,Rafael	60	Main Campus
4199	ECEN	5244	1	B	34576	3	Sto Environ Signal Processing	LEC	08:00 AM - 09:15 AM	TTH	ECEE 283	Gasiewski,Albin J.	35	Main Campus
4200	ECEN	5244	001B	B	34935	3	Sto Environ Signal Processing	LEC	-		Distance Education	Gasiewski,Albin J.	15	Main Campus
4201	ECEN	5345	1	B	34970	3	Intro to Solid State Physics	LEC	01:00 PM - 01:50 PM	MWF		Gopinath,Juliet T	20	Main Campus
4202	ECEN	5355	1	B	34971	3	Princ of Electric Dev 1	LEC	12:00 PM - 12:50 PM	MWF	ECEE 265	Van Zeghbroeck,Bart J	22	Main Campus
4203	ECEN	5448	1	B	27041	3	Adv Linear Systems	LEC	09:30 AM - 10:45 AM	TTH	ECEE 265	Chen,Xudong	22	Main Campus
4204	ECEN	5555	1	B	27951	3	Energy Systems and Devices	LEC	03:00 PM - 03:50 PM	MWF	ECEE 265	Hodge,Bri-Mathias	25	Main Campus
4205	ECEN	5593	1	B	34924	3	Advn Computer Architecture	LEC	05:00 PM - 06:15 PM	TTH	ECEE 1B32	Wustrow,Eric	30	Main Campus
4206	ECEN	5612	1	B	25032	3	Random Processes	LEC	10:00 AM - 10:50 AM	MWF	ECEE 283	Liu,Youjian	42	Main Campus
4207	ECEN	5612	001B	B	27614	3	Random Processes	LEC	-		Distance Education	Liu,Youjian	56	Main Campus
4208	ECEN	5613	1	B	26810	3	Embedded System Design	LEC	05:30 PM - 08:00 PM	M	ECCR 150	Mc Clure,Linden Howell	35	Main Campus
4209	ECEN	5626	1	B	34972	3	Active Optical Devices	LEC	10:00 AM - 10:50 AM	MWF	ECEE 265		22	Main Campus
4210	ECEN	5632	1	B	27909	3	Thry/Appl Digtl Filtrng	LEC	09:00 AM - 09:50 AM	MWF	FLMG 156	Meyer,Francois Georges	35	Main Campus
4211	ECEN	5634	10	B	27333	3	Grad Microwave and RF Lab	LEC	05:00 PM - 06:15 PM	M	ECEE 1B32	Popovic,Z	60	Main Campus
4212	ECEN	5634	11	B	27334	3	Grad Microwave and RF Lab	LAB	12:30 PM - 03:00 PM	T	ECEE 254	Popovic,Z	24	Main Campus
4213	ECEN	5634	12	B	27335	3	Grad Microwave and RF Lab	LAB	09:30 AM - 12:00 PM	TH	ECEE 254	Popovic,Z	24	Main Campus
4214	ECEN	5634	13	B	34930	3	Grad Microwave and RF Lab	LAB	02:00 PM - 04:30 PM	TH	ECEE 254	Popovic,Z	24	Main Campus
4215	ECEN	5645	1	B	27723	3	Intro to Optical Elec	LEC	09:00 AM - 09:50 AM	MWF	ECEE 265	Mickelson,Alan R	22	Main Campus
4216	ECEN	5696	1	B	27994	3	Fourier Optics	LEC	08:00 AM - 09:15 AM	TTH	ECEE 1B32	Wagner,Kelvin	60	Main Campus
4217	ECEN	5797	2	B	28016	3	Intro to Power Electronics	LEC	10:00 AM - 10:50 AM	MWF	ECCR 105	Le,Hanh-Phuc	35	Main Campus
4218	ECEN	5797	002B	B	26994	3	Intro to Power Electronics	LEC	-		Distance Education	Le,Hanh-Phuc	35	Main Campus
4219	ECEN	5803	1	B	27452	3	Mastering Embedded Systems	LEC	01:00 PM - 01:50 PM	MWF	ECEE 283	Scherr,Timothy Lee	35	Main Campus
4220	ECEN	5803	001B	B	27453	3	Mastering Embedded Systems	LEC	-		Distance Education	Scherr,Timothy Lee	30	Main Campus
4221	ECEN	5813	1	B	27454	3	Principle of Embedded Software	LEC	03:30 PM - 04:45 PM	TTH	ECCR 1B55	Gross,Kevin Paul	40	Main Campus
4222	ECEN	5813	001B	B	27455	3	Principle of Embedded Software	LEC	-		Distance Education	Gross,Kevin Paul	50	Main Campus
4223	ECEN	5823	1	B	27465	3	IOT Embedded Firmware	LEC	02:00 PM - 03:15 PM	TTH	ECCR 1B55	Walkes,Daniel Jay	35	Main Campus
4224	ECEN	5823	001B	B	27466	3	IOT Embedded Firmware	LEC	-		Distance Education		30	Main Campus
4225	ECEN	5827	1	B	27054	3	Analog IC Design	LEC	03:00 PM - 03:50 PM	MWF	ECCR 1B55	Maksimovic,Dragan	22	Main Campus
4226	ECEN	5827	001B	B	27485	3	Analog IC Design	LEC	-		Distance Education	Maksimovic,Dragan	5	Main Campus
4227	ECEN	5863	1	B	28023	3	Programmable Logic Design	LEC	12:30 PM - 01:45 PM	TTH	FLMG 103	Scherr,Timothy Lee	35	Main Campus
4228	ECEN	5863	001B	B	27464	3	Programmable Logic Design	LEC	-		Distance Education	Scherr,Timothy Lee	30	Main Campus
4229	ECEN	7438	1	B	27990	3	Thry of Nonlinear Syst	LEC	09:30 AM - 10:45 AM	TTH	ECEE 1B32	Nicotra,Marco	60	Main Campus
4230	ECEN	5013	001B	B51	34913	1	Special Topics	LEC	-		Distance Education	Bogatin,Eric	12	Main Campus
4231	EHO	1151	1	B	25401	3	Critical Encounters	LEC	09:30 AM - 10:45 AM	TTH	ANDS N103	Douglass,Scot Ray	30	Main Campus
4232	EHO	1151	2	B	26537	3	Critical Encounters	LEC	11:00 AM - 12:15 PM	TTH	ANDS N103	Douglass,Scot Ray	30	Main Campus
4233	EHO	1151	3	B	26718	3	Critical Encounters	LEC	02:00 PM - 03:15 PM	TTH	ANDS N103	Douglass,Scot Ray	30	Main Campus
4234	EME	3100	2	B	36570	3	Intro to Engineering Mgmt	LEC	-		Online Class	Bozic,Christy L	40	Main Campus
4235	EME	4030	1	B	24946	3	Project Management Systems	LEC	05:30 PM - 08:00 PM	M	ECCR 151	Angel,George Gilbert	30	Main Campus
4236	EME	4030	2	B	26915	3	Project Management Systems	LEC	11:00 AM - 12:15 PM	TTH	ECCR 155	McDonald,Patricia Ann	40	Main Campus
4237	EME	4030	3	B	27157	3	Project Management Systems	LEC	-			Gibson,Elizabeth C D	35	Main Campus
4238	EME	4050	1	B	26765	3	Leadershp & Professional Skill	LEC	05:30 PM - 08:00 PM	W	ECCR 151	Murray,Seth Everett	30	Main Campus
4239	EME	4050	2	B	27158	3	Leadershp & Professional Skill	LEC	08:00 AM - 09:15 AM	TTH	FLMG 103	Duren,Ron	30	Main Campus
4240	EME	4050	3	B	34297	3	Leadershp & Professional Skill	LEC	02:00 PM - 03:15 PM	TTH	ECCR 135	Duren,Ron	30	Main Campus
4241	EME	4100	1	B	27159	3	Engineering Economics	LEC	03:30 PM - 04:45 PM	TTH	ECCR 1B51	Svoboda,John David	40	Main Campus
4242	EME	4100	2	B	26995	3	Engineering Economics	LEC	-			Bozic,Christy L	50	Main Campus
4243	EME	4100	3	B	27160	3	Engineering Economics	LEC	05:30 PM - 08:00 PM	W	ECCR 155	Wrobetz,Anne Victoria	40	Main Campus
4244	EME	4110	1	B	27933	3	Supply Chain Management	LEC	02:00 PM - 03:15 PM	TTH	KOBL 220	Ravishankar,Gurumurthi	10	Main Campus
4245	EME	4110	2	B	27931	3	Supply Chain Management	LEC	12:30 PM - 01:45 PM	TTH	KOBL 220	Ravishankar,Gurumurthi	10	Main Campus
4246	EME	4120	1	B	27930	3	Managing Business Processes	LEC	03:30 PM - 04:45 PM	TTH	KOBL 320	Seward,Lori Elizabeth	10	Main Campus
4247	EME	4120	2	B	27932	3	Managing Business Processes	LEC	02:00 PM - 03:15 PM	TTH	KOBL 320	Seward,Lori Elizabeth	10	Main Campus
4248	EME	4200	1	B	26916	3	Eng and Entrep for Dev World	LEC	05:30 PM - 08:00 PM	TH	ECCR 151	Murray,Seth Everett	30	Main Campus
4249	EME	4200	2	B	27737	3	Eng and Entrep for Dev World	LEC	12:30 PM - 01:45 PM	TTH	FLMG 156	Murray,Seth Everett	30	Main Campus
4250	EME	4400	1	B	27534	3	Quality Management	LEC	02:00 PM - 03:15 PM	TTH	ECCR 118		30	Main Campus
4251	EME	4405	1	B	27536	3	Systems Engineering	LEC	05:30 PM - 08:00 PM	M	ECCR 155	Van Atten,William	30	Main Campus
4252	EME	4800	1	B	34891	3	Tech Ventures & Marketing	LEC	02:00 PM - 03:15 PM	TTH	FLMG 104	Judah,Kyle	45	Main Campus
4253	EME	4820	1	B	27801	3	Entrepren Prod Dev	LEC	02:00 PM - 03:15 PM	TTH		Readey,Michael Jeffrey	30	Main Campus
4254	EME	4825	1	B	26968	3	New Venture Creation	LEC	06:00 PM - 08:45 PM	W	KOBL S135	Albright,Hunter	75	Main Campus
4255	EME	4825	2	B	26716	3	New Venture Creation	LEC	05:00 PM - 07:45 PM	T	CASE E250	Werner,Walter	75	Main Campus
4256	EME	5000	1	B	27995	3	Engineering Principles	LEC	-			Mc Cluskey,Alyssa Leigh	30	Main Campus
4257	EME	5005	1	B	24963	3	Intro to Applied Stats	LEC	05:30 PM - 08:00 PM	TH	ECCR 150	Littlejohn,Ray Lynn	50	Main Campus
4258	EME	5005	001B	B	26996	3	Intro to Applied Stats	LEC	-		Distance Education	Littlejohn,Ray Lynn	25	Main Campus
4259	EME	5010	1	B	25985	3	Intro to Engineering Mgmt	LEC	11:00 AM - 01:30 PM	W	ECCS 1B28	Kirschling,Wayne Robert	40	Main Campus
4260	EME	5010	001B	B	26997	3	Intro to Engineering Mgmt	LEC	-		Distance Education	Kirschling,Wayne Robert	40	Main Campus
4261	EME	5020	1	B	24964	3	Finance & Acct for Engr Mngrs	LEC	11:00 AM - 01:30 PM	M	ECCS 1B28	Kirschling,Wayne Robert	40	Main Campus
4262	EME	5020	001B	B	26998	3	Finance & Acct for Engr Mngrs	LEC	-		Distance Education	Kirschling,Wayne Robert	40	Main Campus
4263	EME	5030	1	B	24965	3	Fundamentals of Project Mgmt	LEC	05:30 PM - 08:00 PM	TH	ECCS 1B14	Gibson,Elizabeth C D	30	Main Campus
4264	EME	5030	001B	B	26999	3	Fundamentals of Project Mgmt	LEC	-		Distance Education	Gibson,Elizabeth C D	15	Main Campus
4265	EME	5031	1	B	26917	3	Software Project Management	LEC	05:30 PM - 08:00 PM	M	ECCR 105	MacMillan,Margaret Reid	30	Main Campus
4266	EME	5031	001B	B	26991	3	Software Project Management	LEC	-		Distance Education	MacMillan,Margaret Reid	15	Main Campus
4267	EME	5032	1	B	33936	3	Adv Topics Project Mgmt	LEC	05:30 PM - 08:00 PM	T	ECCS 1B12		30	Main Campus
4268	EME	5032	001B	B	33937	3	Adv Topics Project Mgmt	LEC	-		Distance Education		15	Main Campus
4269	EME	5041	1	B	34378	3	Adv Topics-Value	LEC	-			Bailey,Wendy	30	Main Campus
4270	EME	5042	1	B	24966	3	Mthds for Quality Improv	LEC	-			Bailey,Wendy	30	Main Campus
4271	EME	5050	2	B	27936	3	Leading Oneself	LEC	05:30 PM - 08:00 PM	T	ECCR 105	Duren,Ron	20	Main Campus
4272	EME	5050	002B	B	27937	3	Leading Oneself	LEC	-			Duren,Ron	9	Main Campus
4273	EME	5400	1	B	27740	3	Product Dev & Design	LEC	05:30 PM - 08:00 PM	W	ECCS 1B14	Readey,Michael Jeffrey	25	Main Campus
4274	EME	5400	001B	B	27741	3	Product Dev & Design	LEC	-		Distance Education	Readey,Michael Jeffrey	20	Main Campus
4275	EME	5405	1	B	27443	3	Fund of Systems Engineering	LEC	05:30 PM - 08:00 PM	M	ECCR 1B51	Van Atten,William	30	Main Campus
4276	EME	5405	001B	B	27444	3	Fund of Systems Engineering	LEC	-		Distance Education	Van Atten,William	15	Main Campus
4277	EME	5500	1	B	26136	3	Lean and Agile Management	LEC	05:30 PM - 08:00 PM	T	ECCR 1B55	Ravishankar,Gurumurthi	30	Main Campus
4278	EME	5500	001B	B	27002	3	Lean and Agile Management	LEC	-		Distance Education	Ravishankar,Gurumurthi	15	Main Campus
4279	EME	5610	1	B	25152	3	Adv Stats Engrg Rsch	LEC	05:30 PM - 08:00 PM	T	ECCS 1B14	Littlejohn,Ray Lynn	30	Main Campus
4280	EME	5610	001B	B	27003	3	Adv Stats Engrg Rsch	LEC	-		Distance Education	Littlejohn,Ray Lynn	15	Main Campus
4281	EME	5710	1	B	27161	3	Applied Business Decisions	LEC	05:30 PM - 08:00 PM	W	ECCR 1B51	Svoboda,John David	30	Main Campus
4282	EME	5710	001B	B	27304	3	Applied Business Decisions	LEC	-		Distance Education	Svoboda,John David	15	Main Campus
4283	EME	5830	1	B	27345	3	Special Topics	LEC	05:30 PM - 08:00 PM	W	ECCR 1B55	Moorer Jr,Daniel Fuller	30	Main Campus
4284	EME	5830	001B	B	27044	3	Special Topics	LEC	-		Distance Education	Moorer Jr,Daniel Fuller	15	Main Campus
4285	EME	5830	2	B	27440	3	Special Topics	LEC	05:30 PM - 08:00 PM	T	ECCR 150	Moorer Jr,Daniel Fuller	30	Main Campus
4286	EME	5830	002B	B	27441	3	Special Topics	LEC	-		Distance Education	Moorer Jr,Daniel Fuller	15	Main Campus
4287	EME	5830	3	B	33130	3	Special Topics	LEC	05:30 PM - 08:00 PM	T	See Academc Dept		30	Main Campus
4288	EME	5830	4	B	33133	3	Special Topics	LEC	05:30 PM - 08:00 PM	T	ECCR 1B51	Readey,Michael Jeffrey	30	Main Campus
4289	EME	5830	4	B	33133	3	Special Topics	LEC	05:30 PM - 08:00 PM	T	ECCR 1B51	Wrobetz,Anne Victoria	30	Main Campus
4290	EME	5830	004B	B	33136	3	Special Topics	LEC	-		Distance Education	Wrobetz,Anne Victoria	15	Main Campus
4291	EME	5830	004B	B	33136	3	Special Topics	LEC	-		Distance Education	Readey,Michael Jeffrey	15	Main Campus
4292	EME	5830	5	B	34298	3	Special Topics	LEC	05:30 PM - 08:00 PM	TH	ECCR 1B55	Tobey,Kathryn Graese	30	Main Campus
4293	EME	5830	005B	B	34299	3	Special Topics	LEC	-		Distance Education	Tobey,Kathryn Graese	15	Main Campus
4294	EVEN	1000	1	B	25123	1	Intro Environ Engineer	LEC	02:00 PM - 02:50 PM	TH	FLMG 156	Summers,Scott R	84	Main Campus
4295	EVEN	3012	1	B	36417	3	Thermodynamics 1	LEC	02:00 PM - 02:50 PM	MWF	FLMG 104	Hernandez,Mark T	77	Main Campus
4296	EVEN	4404	1	B	26940	3	Water Chemistry	LEC	10:00 AM - 10:50 AM	MWF	FLMG 154	Rosario-Ortiz,Fernando L.	64	Main Campus
4297	EVEN	4414	1	B	26941	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	T	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
4298	EVEN	4414	2	B	26942	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	W	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
4299	EVEN	4414	3	B	26943	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	TH	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
4300	EVEN	4414	4	B	27343	1	Water Chemistry Laboratory	MLS	03:00 PM - 05:50 PM	M	ECCE 1B67	Rosario-Ortiz,Fernando L.	16	Main Campus
4301	EVEN	4464	1	B	26923	3	Env Engr Processes	LEC	09:00 AM - 09:50 AM	MWF	FLMG 154	Korak,Julie Ann	64	Main Campus
4302	GEE	1010	100	B	26724	4	Engineering Explor thru Phys	LEC	09:00 AM - 09:50 AM	WF	ITLL 1B50	Soltys,Michael Andrew	35	Main Campus
4303	GEE	1010	110	B	26725	4	Engineering Explor thru Phys	LAB	09:00 AM - 10:50 AM	M	ITLL 1B10	Soltys,Michael Andrew	35	Main Campus
4304	GEE	1010	111	B	26726	4	Engineering Explor thru Phys	REC	04:00 PM - 04:50 PM	TH	ITLL 1B50	Soltys,Michael Andrew	30	Main Campus
4305	GEE	1400	10	B	24969	3	Engineering Projects	LEC	11:00 AM - 11:50 AM	M	ITLL 150		30	Main Campus
4306	GEE	1400	11	B	24970	3	Engineering Projects	LAB	11:00 AM - 12:50 PM	TTH	ITLL 150		30	Main Campus
4307	GEE	1400	20	B	24971	3	Engineering Projects	LEC	01:00 PM - 01:50 PM	M	ITLL 150		30	Main Campus
4308	GEE	1400	21	B	24972	3	Engineering Projects	LAB	01:00 PM - 02:50 PM	TTH	ITLL 150		30	Main Campus
4309	GEE	1400	40	B	24975	3	Engineering Projects	LEC	02:00 PM - 02:50 PM	M	ITLL 150	Soltys,Michael Andrew	30	Main Campus
4310	GEE	1400	41	B	24976	3	Engineering Projects	LAB	02:00 PM - 03:50 PM	WF	ITLL 150	Soltys,Michael Andrew	30	Main Campus
4311	GEE	1400	50	B	24977	3	Engineering Projects	LEC	01:00 PM - 01:50 PM	M	ITLL 160		30	Main Campus
4312	GEE	1400	51	B	24978	3	Engineering Projects	LAB	01:00 PM - 02:50 PM	TTH	ITLL 160		30	Main Campus
4313	GEE	1400	60	B	24979	3	Engineering Projects	LEC	03:00 PM - 03:50 PM	M	ITLL 150		30	Main Campus
4314	GEE	1400	61	B	26659	3	Engineering Projects	LAB	03:00 PM - 04:50 PM	TTH	ITLL 150		30	Main Campus
4315	GEE	1400	70	B	24980	3	Engineering Projects	LEC	10:00 AM - 10:50 AM	M	ITLL 150		30	Main Campus
4316	GEE	1400	71	B	24981	3	Engineering Projects	LAB	10:00 AM - 11:50 AM	WF	ITLL 150		30	Main Campus
4317	GEE	1400	110	B	27021	3	Engineering Projects	LEC	02:00 PM - 02:50 PM	M	ITLL 160		30	Main Campus
4318	GEE	1400	111	B	27022	3	Engineering Projects	LAB	01:00 PM - 02:50 PM	WF	ITLL 160		30	Main Campus
4319	GEE	2400	10	B	26785	3	Engr Proj for Community	LEC	12:00 PM - 12:50 PM	M	ITLL 150	Zarske,Malinda Schaefer	30	Main Campus
4320	GEE	2400	11	B	26786	3	Engr Proj for Community	LAB	12:00 PM - 01:50 PM	WF	ITLL 150	Zarske,Malinda Schaefer	30	Main Campus
4321	GEE	2851	1	B	27662	3	Statics for Engineers	LEC	02:00 PM - 03:15 PM	TTH	ITLL 1B50		50	Main Campus
4322	GEE	3010	10	B	27461	3	Circuits for Engineers	LEC	10:00 AM - 10:50 AM	MW	ITLL 1B50	Zarske,Malinda Schaefer	30	Main Campus
4323	GEE	3010	11	B	27462	3	Circuits for Engineers	LAB	09:00 AM - 10:50 AM	F	ITLL 1B10	Zarske,Malinda Schaefer	30	Main Campus
4324	GEE	3400	10	B	24967	3	Invention and Innovation	LEC	11:00 AM - 11:50 AM	M	ITLL 160	Segil,Jacob L	30	Main Campus
4325	GEE	3400	11	B	24968	3	Invention and Innovation	LAB	10:00 AM - 11:50 AM	WF	ITLL 160	Segil,Jacob L	30	Main Campus
4326	GEE	3830	100	B	27538	4	Special Topics	LEC	11:00 AM - 11:50 AM	MWF	ECCR 105	Reamon,Derek T	65	Main Campus
4327	GEE	3830	100	B	27538	4	Special Topics	LEC	11:00 AM - 11:50 AM	MWF	ECCR 105	Tsai,Janet Yi-Jen	65	Main Campus
4328	GEE	3830	101	B	27540	0	Special Topics	REC	09:30 AM - 10:20 AM	T	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4329	GEE	3830	101	B	27540	0	Special Topics	REC	09:30 AM - 10:20 AM	T	ECES 1B12	Reamon,Derek T	30	Main Campus
4330	GEE	3830	102	B	27541	0	Special Topics	REC	11:00 AM - 11:50 AM	T	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4331	GEE	3830	102	B	27541	0	Special Topics	REC	11:00 AM - 11:50 AM	T	ECES 1B12	Reamon,Derek T	30	Main Campus
4332	GEE	3830	103	B	27665	0	Special Topics	REC	12:30 PM - 01:20 PM	T	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4333	GEE	3830	103	B	27665	0	Special Topics	REC	12:30 PM - 01:20 PM	T	ECES 1B12	Reamon,Derek T	30	Main Campus
4334	GEE	3830	104	B	27666	0	Special Topics	REC	02:00 PM - 02:50 PM	T	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4335	GEE	3830	104	B	27666	0	Special Topics	REC	02:00 PM - 02:50 PM	T	ECES 1B12	Reamon,Derek T	30	Main Campus
4336	GEE	3830	105	B	27722	0	Special Topics	REC	03:30 PM - 04:20 PM	T	ECES 1B12	Reamon,Derek T	30	Main Campus
4337	GEE	3830	105	B	27722	0	Special Topics	REC	03:30 PM - 04:20 PM	T	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4338	GEE	3830	110	B	27539	0	Special Topics	LAB	08:00 AM - 09:50 AM	TH	ECES 1B12	Reamon,Derek T	30	Main Campus
4339	GEE	3830	110	B	27539	0	Special Topics	LAB	08:00 AM - 09:50 AM	TH	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4340	GEE	3830	120	B	27664	0	Special Topics	LAB	10:00 AM - 11:50 AM	TH	ECES 1B12	Reamon,Derek T	30	Main Campus
4341	GEE	3830	120	B	27664	0	Special Topics	LAB	10:00 AM - 11:50 AM	TH	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4342	GEE	3830	130	B	27724	0	Special Topics	LAB	12:30 PM - 02:20 PM	TH	ECES 1B12	Reamon,Derek T	30	Main Campus
4343	GEE	3830	130	B	27724	0	Special Topics	LAB	12:30 PM - 02:20 PM	TH	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4344	GEE	3830	140	B	27725	0	Special Topics	LAB	03:00 PM - 04:50 PM	TH	ECES 1B12	Reamon,Derek T	30	Main Campus
4345	GEE	3830	140	B	27725	0	Special Topics	LAB	03:00 PM - 04:50 PM	TH	ECES 1B12	Tsai,Janet Yi-Jen	30	Main Campus
4346	GEE	3830	200	B	27663	4	Special Topics	LEC	03:00 PM - 03:50 PM	MWF	FLMG 157	Tsai,Janet Yi-Jen	65	Main Campus
4347	GEE	3830	200	B	27663	4	Special Topics	LEC	03:00 PM - 03:50 PM	MWF	FLMG 157	Reamon,Derek T	65	Main Campus
4348	GEE	3852	1	B	26776	3	Thermodynamics for Engineers	LEC	12:30 PM - 01:45 PM	TTH	ITLL 1B50	Soltys,Michael Andrew	40	Main Campus
4349	GEE	3853	10	B	35156	4	Data Analysis for Engineers	LEC	09:00 AM - 09:50 AM	W	ITLL 1B10	Stites,Nick Alan	48	Main Campus
4350	GEE	3853	10	B	35156	4	Data Analysis for Engineers	LEC	09:00 AM - 09:50 AM	M	ITLL 1B50	Stites,Nick Alan	48	Main Campus
4351	GEE	3853	11	B	35157	4	Data Analysis for Engineers	LAB	01:00 PM - 02:50 PM	MW	ITLL 1B10	Stites,Nick Alan	48	Main Campus
4352	HUE	1010	1	B	26543	3	Humanities for Engineers	SEM	10:00 AM - 10:50 AM	MWF	LESS 1B01		12	Main Campus
4353	HUE	1010	2	B	25147	3	Humanities for Engineers	SEM	11:00 AM - 11:50 AM	MWF	ECCR 1B06		12	Main Campus
4354	HUE	1010	3	B	25148	3	Humanities for Engineers	SEM	01:00 PM - 01:50 PM	MWF	LESS 1B01		12	Main Campus
4355	HUE	1010	4	B	27023	3	Humanities for Engineers	SEM	02:00 PM - 02:50 PM	MWF	LESS 1B01	Diduch,Paul Jordan	12	Main Campus
4356	HUE	1010	5	B	26524	3	Humanities for Engineers	SEM	03:00 PM - 04:15 PM	MW	LESS 1B01	Diduch,Paul Jordan	12	Main Campus
4357	HUE	1010	6	B	26525	3	Humanities for Engineers	SEM	09:30 AM - 10:45 AM	TTH	ECCR 1B06	Kowalchuk,Andrea	12	Main Campus
4358	HUE	1010	7	B	26526	3	Humanities for Engineers	SEM	09:30 AM - 10:45 AM	TTH	LESS 1B01		12	Main Campus
4359	HUE	1010	8	B	26675	3	Humanities for Engineers	SEM	11:00 AM - 12:15 PM	TTH	LESS 1B01		12	Main Campus
4360	HUE	1010	9	B	26733	3	Humanities for Engineers	SEM	12:30 PM - 01:45 PM	TTH	LESS 1B01		12	Main Campus
4361	HUE	1010	10	B	35120	3	Humanities for Engineers	SEM	02:00 PM - 03:15 PM	TTH	LESS 1B01		12	Main Campus
4362	HUE	2020	580R	B	27363	3	Meaning of Info Technology	LEC	11:00 AM - 12:15 PM	TTH	KCEN N100	Sieber,Diane Elizabeth	50	Main Campus
4363	HUE	2020	581R	B	27364	3	Meaning of Info Technology	LEC	02:00 PM - 03:15 PM	TTH	KCEN N100	Sieber,Diane Elizabeth	50	Main Campus
4364	HUE	2020	582R	B	27365	3	Meaning of Info Technology	LEC	03:30 PM - 04:45 PM	TTH	KCEN N100	Sieber,Diane Elizabeth	50	Main Campus
4365	HUE	2210	1	B	35122	3	Engineering, Science & Society	LEC	09:00 AM - 09:50 AM	MWF	DUAN G131	Diduch,Paul Jordan	40	Main Campus
4366	HUE	2843	1	B	35124	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	KCEN S163	Giovannelli,Leland Frances	20	Main Campus
4367	HUE	3100	1	B	25150	3	Adv. Humanities for Engineers	SEM	09:00 AM - 09:50 AM	MWF	ECCR 1B06		12	Main Campus
4368	HUE	3100	2	B	25151	3	Adv. Humanities for Engineers	SEM	10:00 AM - 10:50 AM	MWF	CHEM 146	Fredricksmeyer,H C F	10	Main Campus
4369	HUE	3100	3	B	25400	3	Adv. Humanities for Engineers	SEM	01:00 PM - 01:50 PM	MWF	ECCR 1B06	Lange,Anja Kerstin	12	Main Campus
4370	HUE	3100	4	B	25915	3	Adv. Humanities for Engineers	SEM	02:00 PM - 02:50 PM	MWF	ECCR 1B06	Lange,Anja Kerstin	12	Main Campus
4371	HUE	3100	5	B	26738	3	Adv. Humanities for Engineers	SEM	03:00 PM - 03:50 PM	MWF	ECCR 1B06		12	Main Campus
4372	HUE	3100	6	B	26771	3	Adv. Humanities for Engineers	SEM	11:00 AM - 12:15 PM	TTH	ECCR 1B06	Giovannelli,Leland Frances	12	Main Campus
4373	HUE	3100	7	B	27019	3	Adv. Humanities for Engineers	SEM	12:30 PM - 01:45 PM	TTH	ECCR 1B06	Kowalchuk,Andrea	12	Main Campus
4374	HUE	3100	8	B	35127	3	Adv. Humanities for Engineers	SEM	02:00 PM - 03:15 PM	TTH	ECCR 1B06	Kowalchuk,Andrea	12	Main Campus
4375	HUE	4830	1	B	36554	3	Special Topics	SEM	10:00 AM - 10:50 AM	MWF	ECCR 1B06		12	Main Campus
4376	MCE	1024	110	B	27729	4	Chem for Energy & Material Sci	LEC	09:00 AM - 09:50 AM	MWF	ECCR 150	Bruns,Carson	56	Main Campus
4377	MCE	1024	120	B	27730	4	Chem for Energy & Material Sci	LEC	11:00 AM - 11:50 AM	MWF	FLMG 154	Bruns,Carson	56	Main Campus
4378	MCE	1024	201	B	26742	0	Chem for Energy & Material Sci	REC	09:00 AM - 09:50 AM	F	KOBL 230	Bruns,Carson	28	Main Campus
4379	MCE	1024	202	B	26743	0	Chem for Energy & Material Sci	REC	10:00 AM - 10:50 AM	F	KOBL 230	Bruns,Carson	28	Main Campus
4380	MCE	1024	203	B	26969	0	Chem for Energy & Material Sci	REC	01:00 PM - 01:50 PM	F	FLMG 271B	Bruns,Carson	28	Main Campus
4381	MCE	1024	204	B	27403	0	Chem for Energy & Material Sci	REC	02:00 PM - 02:50 PM	F	FLMG 271B	Bruns,Carson	28	Main Campus
4382	MCE	1025	100	B	24935	4	Comp Aid Design/Fabrctn	LEC	09:00 AM - 09:50 AM	MW	ECCR 265	Bucciaglia,Joseph D	138	Main Campus
4383	MCE	1025	101	B	26728	4	Comp Aid Design/Fabrctn	LAB	10:00 AM - 11:50 AM	MW	ECCE 141	Bucciaglia,Joseph D	27	Main Campus
4384	MCE	1025	102	B	26729	4	Comp Aid Design/Fabrctn	LAB	10:00 AM - 11:50 AM	MW	ECCE 141	Bucciaglia,Joseph D	19	Main Campus
4385	MCE	1025	103	B	24936	4	Comp Aid Design/Fabrctn	LAB	01:00 PM - 02:50 PM	MW	ECCE 141	Bucciaglia,Joseph D	27	Main Campus
4386	MCE	1025	104	B	24937	4	Comp Aid Design/Fabrctn	LAB	01:00 PM - 02:50 PM	MW	ECCE 141	Bucciaglia,Joseph D	19	Main Campus
4387	MCE	1025	105	B	24938	4	Comp Aid Design/Fabrctn	LAB	03:00 PM - 04:50 PM	MW	ECCE 141	Bucciaglia,Joseph D	27	Main Campus
4388	MCE	1025	106	B	27351	4	Comp Aid Design/Fabrctn	LAB	03:00 PM - 04:50 PM	MW	ECCE 141	Bucciaglia,Joseph D	19	Main Campus
4389	MCE	2000	110	B	26760	1	Mech Engr as a Profession	LEC	12:00 PM - 12:50 PM	M	ATLS 100	Steinbrenner,Julie Elizabeth	100	Main Campus
4390	MCE	2000	120	B	27565	1	Mech Engr as a Profession	LEC	12:00 PM - 12:50 PM	W	ATLS 100	Steinbrenner,Julie Elizabeth	100	Main Campus
4391	MCE	2000	130	B	27584	1	Mech Engr as a Profession	LEC	12:00 PM - 12:50 PM	F	ATLS 100	Steinbrenner,Julie Elizabeth	100	Main Campus
4392	MCE	2000	201	B	27566	0	Mech Engr as a Profession	REC	01:00 PM - 01:50 PM	M	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4393	MCE	2000	202	B	27567	0	Mech Engr as a Profession	REC	02:00 PM - 02:50 PM	M	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4394	MCE	2000	203	B	27568	0	Mech Engr as a Profession	REC	03:00 PM - 03:50 PM	M	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4395	MCE	2000	204	B	27569	0	Mech Engr as a Profession	REC	01:00 PM - 01:50 PM	T	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4396	MCE	2000	205	B	27570	0	Mech Engr as a Profession	REC	02:00 PM - 02:50 PM	T	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4397	MCE	2000	206	B	27571	0	Mech Engr as a Profession	REC	03:00 PM - 03:50 PM	T	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4398	MCE	2000	207	B	27572	0	Mech Engr as a Profession	REC	01:00 PM - 01:50 PM	W	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4399	MCE	2000	208	B	27573	0	Mech Engr as a Profession	REC	02:00 PM - 02:50 PM	W	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4400	MCE	2000	209	B	27574	0	Mech Engr as a Profession	REC	03:00 PM - 03:50 PM	W	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4401	MCE	2000	210	B	27575	0	Mech Engr as a Profession	REC	01:00 PM - 01:50 PM	TH	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4402	MCE	2000	211	B	27576	0	Mech Engr as a Profession	REC	02:00 PM - 02:50 PM	TH	FLMG 271B	Steinbrenner,Julie Elizabeth	25	Main Campus
4403	MCE	2000	401	B	27996	1	Mech Engr as a Profession	LEC	08:00 AM - 08:50 AM	W	See Academc Dept	McNeill,Nathan John	40	Main Campus
4404	MCE	2023	1	B	24940	3	Statics and Structures	LEC	09:30 AM - 10:45 AM	TTH	ECCR 200		85	Main Campus
4405	MCE	2023	2	B	27352	3	Statics and Structures	LEC	02:00 PM - 03:15 PM	TTH	FLMG 157		85	Main Campus
4406	MCE	2024	1	B	26783	3	Materials Science	LEC	02:00 PM - 02:50 PM	MWF	ECCR 1B40	Lee,Se-Hee	120	Main Campus
4407	MCE	2024	2	B	27410	3	Materials Science	LEC	02:00 PM - 02:50 PM	MWF	FLMG 103	Ding,Yifu	45	Main Campus
4408	MCE	2043	3	B	27732	3	Dynamics	LEC	10:00 AM - 10:50 AM	MWF	FLMG 156	Long,Rong	85	Main Campus
4409	MCE	2043	4	B	27731	3	Dynamics	LEC	11:00 AM - 11:50 AM	MWF	FLMG 156	Long,Rong	85	Main Campus
4410	MCE	2063	1	B	27635	3	Mechanics of Solids	LEC	02:00 PM - 02:50 PM	MWF	FLMG 156		75	Main Campus
4411	MCE	2063	2	B	36300	3	Mechanics of Solids	LEC	03:00 PM - 03:50 PM	MWF	FLMG 154		75	Main Campus
4412	MCE	3012	1	B	24941	3	Thermodynamics	LEC	01:00 PM - 01:50 PM	MWF	EKLC E1B20	Rieker,Gregory Brian	100	Main Campus
4413	MCE	3012	400	B	24952	3	Thermodynamics	LEC	08:00 AM - 09:15 AM	MW	Offered at Colorado	Brower,Tim L	40	Main Campus
4414	MCE	3017	400	B	24954	3	Circuits and Electronics	LEC	10:00 AM - 10:50 AM	TTH	Offered at Colorado	Affrunti,Andrew Joseph	36	Main Campus
4415	MCE	3017	401	B	25187	3	Circuits and Electronics	LAB	01:00 PM - 02:50 PM	T	Offered at Colorado	Affrunti,Andrew Joseph	18	Main Campus
4416	MCE	3017	402	B	26780	3	Circuits and Electronics	LAB	01:00 PM - 02:50 PM	TH	Offered at Colorado	Affrunti,Andrew Joseph	18	Main Campus
4417	MCE	3021	1	B	27698	3	Fluid Mechanics	LEC	11:00 AM - 12:15 PM	TTH	FLMG 156		75	Main Campus
4418	MCE	3021	2	B	27733	3	Fluid Mechanics	LEC	03:30 PM - 04:45 PM	TTH	ECCR 200		75	Main Campus
4419	MCE	3021	400	B	24953	3	Fluid Mechanics	LEC	09:30 AM - 11:20 AM	MW	Offered at Colorado	Mitrano,Peter	40	Main Campus
4420	MCE	3022	1	B	26544	3	Heat Transfer	LEC	09:00 AM - 09:50 AM	MWF	ATLS 100		80	Main Campus
4421	MCE	3025	100	B	26545	3	Component Design	LEC	02:00 PM - 03:15 PM	TTH	ECCR 265	Tsai,Janet Yi-Jen	135	Main Campus
4422	MCE	3025	101	B	26658	3	Component Design	LAB	11:00 AM - 12:50 PM	M	FLMG 178A	Tsai,Janet Yi-Jen	45	Main Campus
4423	MCE	3025	102	B	27057	3	Component Design	LAB	01:00 PM - 02:50 PM	M	FLMG 178A	Tsai,Janet Yi-Jen	45	Main Campus
4424	MCE	3025	103	B	27585	3	Component Design	LAB	11:00 AM - 12:50 PM	W	FLMG 178A	Tsai,Janet Yi-Jen	45	Main Campus
4425	MCE	3030	1	B	25391	3	Computational Methods	LEC	12:30 PM - 01:45 PM	TTH	ECCR 1B40	Knutsen,Jeffrey Steven	125	Main Campus
4426	MCE	3030	400	B	25392	3	Computational Methods	LEC	09:00 AM - 09:50 AM	TTH	Offered at Colorado	Castro,Francisco	40	Main Campus
4427	MCE	3030	401	B	27988	3	Computational Methods	LAB	03:00 PM - 04:50 PM	T	Offered at Colorado	Castro,Francisco	20	Main Campus
4428	MCE	3030	402	B	27989	3	Computational Methods	LAB	03:00 PM - 04:50 PM	TH	Offered at Colorado	Mitrano,Peter	20	Main Campus
4429	MCE	3032	1	B	26721	3	Thermodynamics 2	LEC	02:00 PM - 02:50 PM	MWF	FLMG 157	Walker,Michael Edward	85	Main Campus
4430	MCE	3047	100	B	27084	4	Data Analysis/Exp Methods	LEC	08:30 AM - 09:20 AM	TTH	FLMG 155	Regner,Keith	175	Main Campus
4431	MCE	3047	101	B	27085	4	Data Analysis/Exp Methods	LAB	09:00 AM - 10:50 AM	MW	ITLL 2B10	Regner,Keith	35	Main Campus
4432	MCE	3047	102	B	27086	4	Data Analysis/Exp Methods	LAB	11:00 AM - 12:50 PM	MW	ITLL 2B10	Regner,Keith	35	Main Campus
4433	MCE	3047	103	B	27087	4	Data Analysis/Exp Methods	LAB	01:00 PM - 02:50 PM	MW	ITLL 2B10	Regner,Keith	35	Main Campus
4434	MCE	3047	104	B	27586	4	Data Analysis/Exp Methods	LAB	03:00 PM - 04:50 PM	MW	ITLL 2B10	Regner,Keith	35	Main Campus
4435	MCE	4026	100	B	24942	3	Mfg Processes & Systems	LEC	01:00 PM - 01:50 PM	MWF	ATLS 100		140	Main Campus
4436	MCE	4026	101	B	27529	0	Mfg Processes & Systems	LAB	12:40 PM - 02:30 PM	T	FLMG 178A		35	Main Campus
4437	MCE	4026	102	B	27530	0	Mfg Processes & Systems	LAB	02:40 PM - 04:30 PM	T	FLMG 178A		35	Main Campus
4438	MCE	4026	103	B	27531	0	Mfg Processes & Systems	LAB	12:40 PM - 02:30 PM	TH	FLMG 178A		35	Main Campus
4439	MCE	4026	104	B	27528	0	Mfg Processes & Systems	LAB	02:40 PM - 04:30 PM	TH	FLMG 178A		35	Main Campus
4440	MCE	4026	400	B	26328	3	Mfg Processes & Systems	LEC	02:30 PM - 03:20 PM	T	Offered at Colorado		40	Main Campus
4441	MCE	4026	400	B	26328	3	Mfg Processes & Systems	LEC	03:00 PM - 04:50 PM	TTH	Offered at Colorado	McNeill,Nathan John	40	Main Campus
4442	MCE	4032	1	B	26902	3	Sustainable Energy	LEC	11:00 AM - 11:50 AM	MWF	FLMG 104	Milford,Jana Beth	40	Main Campus
4443	MCE	4043	110	B	27915	3	System Dynamics	LEC	11:00 AM - 11:50 AM	MWF	ECCR 245	Ruben,Shalom D	104	Main Campus
4444	MCE	4043	120	B	27941	3	System Dynamics	LEC	03:00 PM - 03:50 PM	MWF	ECCR 265	Ruben,Shalom D	130	Main Campus
4445	MCE	4043	201	B	27916	0	System Dynamics	LAB	12:40 PM - 02:30 PM	T	ITLL 1B10	Ruben,Shalom D	78	Main Campus
4446	MCE	4043	202	B	27917	0	System Dynamics	LAB	02:40 PM - 04:30 PM	T	ITLL 1B10	Ruben,Shalom D	78	Main Campus
4447	MCE	4043	203	B	27918	0	System Dynamics	LAB	02:40 PM - 04:30 PM	TH	ITLL 1B10	Ruben,Shalom D	78	Main Campus
4448	MCE	4043	400	B	26329	3	System Dynamics	LEC	09:00 AM - 09:50 AM	MW	Offered at Colorado	Castro,Francisco	40	Main Campus
4449	MCE	4043	401	B	27408	3	System Dynamics	LAB	01:00 PM - 02:50 PM	M	Offered at Colorado	Castro,Francisco	20	Main Campus
4450	MCE	4043	402	B	27409	3	System Dynamics	LAB	01:00 PM - 02:50 PM	W	Offered at Colorado	Castro,Francisco	20	Main Campus
4451	MCE	4045	100	B	26730	3	ME Design Project 1	LEC	11:00 AM - 12:15 PM	TTH	GOLD A2B70	Steinbrenner,Julie Elizabeth	225	Main Campus
4452	MCE	4045	100	B	26730	3	ME Design Project 1	LEC	11:00 AM - 12:15 PM	TTH	GOLD A2B70	Kotys,Daria Andrea	225	Main Campus
4453	MCE	4045	101	B	26731	3	ME Design Project 1	LAB	09:30 AM - 10:45 AM	TTH	FLMG 274	Kotys,Daria Andrea	225	Main Campus
4454	MCE	4045	101	B	26731	3	ME Design Project 1	LAB	09:30 AM - 10:45 AM	TTH	FLMG 274	Steinbrenner,Julie Elizabeth	225	Main Campus
4455	MCE	4045	200	B	27404	3	ME Design Project 1	LEC	09:30 AM - 10:45 AM	TTH	FLMG 104	Riffell,Daniel Joseph	60	Main Campus
4456	MCE	4045	201	B	27405	3	ME Design Project 1	LAB	11:00 AM - 12:15 PM	TTH	FLMG 104	Riffell,Daniel Joseph	60	Main Campus
4457	MCE	4045	400	B	26330	3	ME Design Project 1	LEC	09:00 AM - 09:50 AM	TTH	Offered at Colorado	McNeill,Nathan John	40	Main Campus
4458	MCE	4045	401	B	27727	3	ME Design Project 1	LAB	10:00 AM - 10:50 AM	TTH	Offered at Colorado	McNeill,Nathan John	40	Main Campus
4459	MCE	4064	1	B	27797	3	Soft Machines	LEC	09:00 AM - 09:50 AM	MWF	ECCR 105	Keplinger,Christoph	20	Main Campus
4460	MCE	4117	400	B	27795	3	Anatomy & Physiology Eng	LEC	11:00 AM - 12:15 PM	TTH	Offered at Colorado	Mitrano,Peter	20	Main Campus
4461	MCE	4123	400	B	36545	3	Vibration Analysis	LEC	03:30 PM - 04:45 PM	MW	Offered at Colorado	Castro,Francisco	20	Main Campus
4462	MCE	4141	1	B	35082	3	Indoor Air Pollution	LEC	09:00 AM - 09:50 AM	MWF	ECCR 155	Miller,Shelly Lynn	25	Main Campus
4463	MCE	4151	1	B	27633	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	25	Main Campus
4464	MCE	4152	1	B	27459	3	Introduction to Combustion	LEC	10:00 AM - 10:50 AM	MWF	FLMG 103	Labbe,Nicole	30	Main Campus
4465	MCE	4183	1	B	35085	3	Mech Composite Materials	LEC	01:00 PM - 01:50 PM	MWF	ECCR 150	Long,Rong	15	Main Campus
4466	MCE	4183	001B	B	35087	3	Mech Composite Materials	LEC	-	TBA	Distance Education	Long,Rong	10	Main Campus
4467	MCE	4228	1	B	25186	3	Sp Tp: Mechnical Engineering	LEC	12:00 PM - 12:50 PM	MWF	FLMG 103	Vernerey,Franck J.	10	Main Campus
4468	MCE	4228	2	B	27615	3	Sp Tp: Mechnical Engineering	LEC	05:00 PM - 06:15 PM	MW	ECCR 139	Raj,Rishi	15	Main Campus
4469	MCE	4228	3	B	26974	3	Sp Tp: Mechnical Engineering	LEC	09:00 AM - 09:50 AM	MWF	FLMG 271B	Ding,Xiaoyun	15	Main Campus
4470	MCE	4228	4	B	33956	3	Sp Tp: Mechnical Engineering	LEC	12:00 PM - 12:50 PM	MWF	ECCR 151	Ruben,Shalom D	30	Main Campus
4471	MCE	4228	5	B	27616	3	Sp Tp: Mechnical Engineering	LEC	03:00 PM - 04:15 PM	MW	ECCR 105	Tan,Wei	15	Main Campus
4472	MCE	4228	7	B	35075	3	Sp Tp: Mechnical Engineering	LEC	11:00 AM - 11:50 AM	MWF	FLMG 271B	Riffell,Daniel Joseph	25	Main Campus
4473	MCE	4228	8	B	35076	3	Sp Tp: Mechnical Engineering	LEC	01:30 PM - 02:45 PM	MW		Pacheco-Borden,Carmen	10	Main Campus
4474	MCE	4228	800	B	27055	1	Sp Tp: Mechnical Engineering	LEC	-	TBA		Knight,Daniel	80	Main Campus
4475	MCE	5020	1	B	24955	3	Methods-Engr Analy I	LEC	09:30 AM - 10:45 AM	TTH	FLMG 154	Li,Baowen	75	Main Campus
4476	MCE	5021	1	B	27978	3	Intro to Fluid Dynamics	LEC	02:00 PM - 02:50 PM	MWF	ECCR 105	Mukherjee,Debanjan	20	Main Campus
4477	MCE	5022	1	B	27007	3	Classical Thermodynamics	LEC	12:00 PM - 12:50 PM	MWF	FLMG 271B	Daily,John Jennings	25	Main Campus
4478	MCE	5023	1	B	27495	3	Solid Mechanics I	LEC	12:00 PM - 12:50 PM	MWF			25	Main Campus
4479	MCE	5024	1	B	26719	3	Materials Chemistry & Structur	LEC	11:00 AM - 12:15 PM	TTH	FLMG 103	Stoldt,Conrad Robert	45	Main Campus
4480	MCE	5032	1	B	26901	3	Sustainable Energy	LEC	11:00 AM - 11:50 AM	MWF	FLMG 104	Milford,Jana Beth	30	Main Campus
4481	MCE	5045	1	B	35081	3	Design for Manufacturability	LEC	04:00 PM - 05:15 PM	MW	ITLL 1B50		45	Main Campus
4482	MCE	5055	800	B	27217	3	Advanced Product Design	LEC	03:00 PM - 03:50 PM	MW	FLMG 33	Whiting,Gregory	25	Main Campus
4483	MCE	5055	801	B	27218	3	Advanced Product Design	LAB	02:00 PM - 03:50 PM	F	FLMG 33	Whiting,Gregory	25	Main Campus
4484	MCE	5064	1	B	27757	3	Soft Machines	LEC	09:00 AM - 09:50 AM	MWF	ECCR 105	Keplinger,Christoph	20	Main Campus
4485	MCE	5065	100	B	26755	3	Graduate Design I	LEC	01:00 PM - 02:50 PM	W	FLMG 33	Rentschler,Mark Edwin	30	Main Campus
4486	MCE	5117	400	B	27796	3	Anatomy & Physiology Eng	LEC	11:00 AM - 12:15 PM	TTH	Offered at Colorado	Mitrano,Peter	20	Main Campus
4487	MCE	5122	1	B	27298	3	Statistical Thermodynamics	LEC	02:00 PM - 03:15 PM	TTH	See Class Notes For	Daily,John Jennings	5	Main Campus
4488	MCE	5141	1	B	35083	3	Indoor Air Pollution	LEC	09:00 AM - 09:50 AM	MWF	ECCR 155	Miller,Shelly Lynn	20	Main Campus
4489	MCE	5151	1	B	27634	3	Flow Visualization	LEC	12:00 PM - 12:50 PM	MWF	ITLL 1B50	Hertzberg,Jean R	20	Main Campus
4490	MCE	5152	1	B	27460	3	Introduction to Combustion	LEC	10:00 AM - 10:50 AM	MWF	FLMG 103	Labbe,Nicole	15	Main Campus
4491	MCE	5183	1	B	35086	3	Mech Composite Materials	LEC	01:00 PM - 01:50 PM	MWF	ECCR 150	Long,Rong	15	Main Campus
4492	MCE	5228	1	B	25185	3	Sp Tp: Mechnical Engineering	LEC	12:00 PM - 12:50 PM	MWF	FLMG 103	Vernerey,Franck J.	15	Main Campus
4493	MCE	5228	2	B	25184	3	Sp Tp: Mechnical Engineering	LEC	05:00 PM - 06:15 PM	MW	ECCR 139	Raj,Rishi	10	Main Campus
4494	MCE	5228	3	B	26975	3	Sp Tp: Mechnical Engineering	LEC	09:00 AM - 09:50 AM	MWF	FLMG 271B	Ding,Xiaoyun	10	Main Campus
4495	MCE	5228	4	B	33957	3	Sp Tp: Mechnical Engineering	LEC	12:00 PM - 12:50 PM	MWF	ECCR 151	Ruben,Shalom D	15	Main Campus
4496	MCE	5228	5	B	27406	3	Sp Tp: Mechnical Engineering	LEC	03:00 PM - 04:15 PM	MW	ECCR 105	Tan,Wei	10	Main Campus
4497	MCE	5228	005B	B	27736	3	Sp Tp: Mechnical Engineering	LEC	-	TBA	Distance Education	Tan,Wei	10	Main Campus
4498	MCE	5228	8	B	36550	3	Sp Tp: Mechnical Engineering	LEC	01:30 PM - 02:45 PM	MW		Pacheco-Borden,Carmen	10	Main Campus
4499	MCE	5228	9	B	35077	3	Sp Tp: Mechnical Engineering	LEC	04:30 PM - 07:00 PM	W	FLMG 157	Neu,Corey P	25	Main Campus
4500	MCE	5228	10	B	35079	3	Sp Tp: Mechnical Engineering	LEC	12:30 PM - 01:45 PM	TTH	ECCR 135	Humbert,James Sean	45	Main Campus
4501	MCE	5228	400	B	36567	3	Sp Tp: Mechnical Engineering	LEC	03:30 PM - 04:45 PM	MW	Offered at Colorado	Castro,Francisco	20	Main Campus
4502	MCE	5228	800	B	27798	1	Sp Tp: Mechnical Engineering	LEC	-	TBA		Knight,Daniel	30	Main Campus
4503	MCE	5636	1	B	26903	3	Microelectromech Syst 1	LEC	04:00 PM - 05:15 PM	MW	ECCR 151	Bright,Victor Mark	45	Main Campus
4504	MCE	6184	1	B	36605	3	Struct & Prop of Polymer	LEC	09:00 AM - 09:50 AM	MWF	LIBR M498		15	Main Campus
4505	TLEN	5050	2	B	27938	3	Leading Oneself	LEC	05:30 PM - 08:00 PM	T	ECCR 105	Duren,Ron	50	Main Campus
4506	TLEN	5050	002B	B	27939	3	Leading Oneself	LEC	-			Duren,Ron	50	Main Campus
4507	TLEN	5700	1	B	27993	2	Research Methods	LEC	03:00 PM - 05:30 PM	W		Gifford,Kevin Kent	68	Main Campus
4508	TLEN	5842	1	B	27356	3	Linux Systems Administration	LEC	12:30 PM - 01:45 PM	TTH	ECEE 283	Herman,Carey Jay	30	Main Campus
4509	TLEN	5842	001B	B	35096	3	Linux Systems Administration	LEC	-		Distance Education		30	Main Campus
4510	TLEN	5842	2	B	27357	3	Linux Systems Administration	LEC	03:30 PM - 04:45 PM	TTH	ECCS 1B14	Herman,Carey Jay	30	Main Campus
4511	TLEN	5842	002B	B	35097	3	Linux Systems Administration	LEC	-		Distance Education		30	Main Campus
4512	APRD	1003	1	B	33578	3	Principles of Strategy Comm	LEC	03:30 PM - 04:45 PM	TTH	FLMG 155	Logan,Kelty Irene	193	Main Campus
4513	APRD	1003	2	B	33579	3	Principles of Strategy Comm	LEC	03:30 PM - 04:45 PM	TTH	VAC 1B20	Willis,Erin N	193	Main Campus
4514	APRD	2000	1	B	24048	3	Principles of Advertising	LEC	11:00 AM - 12:15 PM	TTH	CLRE 207	Colman,Jennifer	60	Main Campus
4515	APRD	2001	100	B	33584	3	Strategic Thinking	LEC	03:30 PM - 04:45 PM	TTH	MCOL W100	Colman,Jennifer	160	Main Campus
4516	APRD	2001	101	B	33592	3	Strategic Thinking	REC	08:00 AM - 08:50 AM	F	CLRE 211		20	Main Campus
4517	APRD	2001	102	B	33593	3	Strategic Thinking	REC	09:00 AM - 09:50 AM	F	ARMR 206A		20	Main Campus
4518	APRD	2001	103	B	33594	3	Strategic Thinking	REC	10:00 AM - 10:50 AM	F	CLRE 207		20	Main Campus
4519	APRD	2001	104	B	33595	3	Strategic Thinking	REC	11:00 AM - 11:50 AM	F			20	Main Campus
4520	APRD	2001	105	B	33596	3	Strategic Thinking	REC	12:00 PM - 12:50 PM	F	ARMR 218		20	Main Campus
4521	APRD	2001	106	B	33597	3	Strategic Thinking	REC	01:00 PM - 01:50 PM	F	CLRE 207		20	Main Campus
4522	APRD	2001	107	B	33598	3	Strategic Thinking	REC	02:00 PM - 02:50 PM	F	CLRE 208		20	Main Campus
4523	APRD	2001	108	B	33599	3	Strategic Thinking	REC	03:00 PM - 03:50 PM	F	CLRE 211		20	Main Campus
4524	APRD	2001	109	B	33600	3	Strategic Thinking	REC	04:00 PM - 04:50 PM	F	CLRE 211		0	Main Campus
4525	APRD	2001	110	B	33602	3	Strategic Thinking	REC	05:00 PM - 05:50 PM	F	CLRE 211		0	Main Campus
4526	APRD	2002	1	B	23640	3	Principles of Public Relations	LEC	11:00 AM - 12:15 PM	TTH	HLMS 199	Doty,Dawn	60	Main Campus
4527	APRD	2003	1	B	24046	3	Principles of Design	LEC	03:30 PM - 04:45 PM	TTH	DUAN G125	Smail,David Carlyle	60	Main Campus
4528	APRD	2004	100	B	33603	3	Intro to Research Methods	LEC	03:00 PM - 03:50 PM	MW	FLMG 155	Hopp,Tobias	190	Main Campus
4529	APRD	2004	101	B	33604	3	Intro to Research Methods	REC	08:00 AM - 08:50 AM	TH	ENVD 122		20	Main Campus
4530	APRD	2004	102	B	33605	3	Intro to Research Methods	REC	09:00 AM - 09:50 AM	TH			20	Main Campus
4531	APRD	2004	103	B	33607	3	Intro to Research Methods	REC	10:00 AM - 10:50 AM	TH	CLRE 302		20	Main Campus
4532	APRD	2004	104	B	33608	3	Intro to Research Methods	REC	11:00 AM - 11:50 AM	TH	EKLC E1B50		20	Main Campus
4533	APRD	2004	105	B	33609	3	Intro to Research Methods	REC	12:00 PM - 12:50 PM	TH	ARMR 206A		20	Main Campus
4534	APRD	2004	106	B	33610	3	Intro to Research Methods	REC	01:00 PM - 01:50 PM	TH	CLRE 208		20	Main Campus
4535	APRD	2004	107	B	33611	3	Intro to Research Methods	REC	02:00 PM - 02:50 PM	TH	ARMR 1B01		20	Main Campus
4536	APRD	2004	108	B	33612	3	Intro to Research Methods	REC	03:00 PM - 03:50 PM	TH			20	Main Campus
4537	APRD	2004	109	B	33613	3	Intro to Research Methods	REC	04:00 PM - 04:50 PM	TH	CLRE 301		0	Main Campus
4538	APRD	2004	110	B	33614	3	Intro to Research Methods	REC	05:00 PM - 05:50 PM	TH	CLRE 211		0	Main Campus
4539	APRD	2005	100	B	34174	3	Strategic Writing	LEC	10:00 AM - 10:50 AM	MW	CLRE 207		60	Main Campus
4540	APRD	2005	101	B	34175	3	Strategic Writing	REC	11:00 AM - 11:50 AM	TH			20	Main Campus
4541	APRD	2005	102	B	34176	3	Strategic Writing	REC	12:00 PM - 12:50 PM	TH	HLMS 251		20	Main Campus
4542	APRD	2005	103	B	34177	3	Strategic Writing	REC	01:00 PM - 01:50 PM	TH			20	Main Campus
4543	APRD	2006	100	B	34159	3	Software and Design App	LEC	01:00 PM - 01:50 PM	MW	CLRE 207		60	Main Campus
4544	APRD	2006	101	B	34215	3	Software and Design App	REC	02:00 PM - 02:50 PM	TH	CLRE 111		20	Main Campus
4545	APRD	2006	102	B	34216	3	Software and Design App	REC	03:00 PM - 03:50 PM	TH	CLRE 111		20	Main Campus
4546	APRD	2006	103	B	34217	3	Software and Design App	REC	04:00 PM - 04:50 PM	TH	CLRE 111		20	Main Campus
4547	APRD	3000	1	B	23637	3	Intermediate Creative Concepts	LEC	09:30 AM - 10:45 AM	TTH	KTCH 1B71	Ligon,Jon	20	Main Campus
4548	APRD	3001	1	B	23866	3	Intermediate Design Concepts	LEC	06:00 PM - 08:30 PM	M	GUGG 205	Stone,Andrew M	20	Main Campus
4549	APRD	3001	2	B	24350	3	Intermediate Design Concepts	LEC	06:00 PM - 08:30 PM	T	HLMS 255	Benjamin,Michael	20	Main Campus
4550	APRD	3001	3	B	24365	3	Intermediate Design Concepts	LEC	01:00 PM - 03:30 PM	W	ARMR 218	Curry,Jeff	20	Main Campus
4551	APRD	3002	1	B	23638	3	Communication Platforms	LEC	03:30 PM - 04:45 PM	TTH	CLRE 302	Cheval,Melinda J	30	Main Campus
4552	APRD	3002	2	B	24351	3	Communication Platforms	LEC	03:30 PM - 04:45 PM	TTH	ENVD 122		30	Main Campus
4553	APRD	3002	3	B	24360	3	Communication Platforms	LEC	06:00 PM - 08:30 PM	T	MUEN D144	Walker,Lauren	30	Main Campus
4554	APRD	3002	550R	B	24218	3	Communication Platforms	LEC	06:30 PM - 09:00 PM	TH	Offered through CU in	Gelb,Amos Peter	30	Main Campus
4555	APRD	3003	1	B	23639	3	Strat Com Research Methods	LEC	02:00 PM - 03:15 PM	TTH	ECON 13	Lee,Seow	30	Main Campus
4556	APRD	3003	2	B	24129	3	Strat Com Research Methods	LEC	05:00 PM - 06:15 PM	TTH	KTCH 1B60	Colman,Jennifer	30	Main Campus
4557	APRD	3003	3	B	24131	3	Strat Com Research Methods	LEC	11:00 AM - 12:15 PM	TTH		Logan,Kelty Irene	30	Main Campus
4558	APRD	3003	4	B	24211	3	Strat Com Research Methods	LEC	09:00 AM - 09:50 AM	MWF	VAC 1B88	Poole,Lisa Lorraine	30	Main Campus
4559	APRD	3003	5	B	24215	3	Strat Com Research Methods	LEC	06:00 PM - 08:30 PM	W	DUAN G131		0	Main Campus
4560	APRD	3004	1	B	23856	3	Account Management	LEC	06:00 PM - 08:30 PM	W	HLMS 237	Oakes,David Raymond	30	Main Campus
4561	APRD	3004	2	B	24209	3	Account Management	LEC	06:00 PM - 08:30 PM	T	ECON 2	Forsyth,Eric	30	Main Campus
4562	APRD	3004	3	B	24212	3	Account Management	LEC	06:00 PM - 08:30 PM	T	ECON 205		30	Main Campus
4563	APRD	3100	1	B	24164	3	Design for Digital Media	LEC	10:00 AM - 11:15 AM	MW	ARMR 218	Curry,Jeff	20	Main Campus
4564	APRD	3102	1	B	23744	3	Story Design I	LEC	06:00 PM - 08:30 PM	W	HLMS 141	Slayden,David Lee	20	Main Campus
4565	APRD	3102	2	B	24352	3	Story Design I	LEC	06:00 PM - 08:30 PM	W	MUEN E417	Znerold,Chris M	20	Main Campus
4566	APRD	3103	1	B	24053	3	Writing for PR	LEC	02:00 PM - 03:15 PM	TTH	DUAN G2B21	Doty,Dawn	20	Main Campus
4567	APRD	3103	2	B	24054	3	Writing for PR	LEC	03:30 PM - 04:45 PM	TTH	MCOL E158	Doty,Dawn	20	Main Campus
4568	APRD	3103	3	B	24235	3	Writing for PR	LEC	12:00 PM - 12:50 PM	MWF	KTCH 1B71	Alviani,Samantha Fields	20	Main Campus
4569	APRD	3103	4	B	24353	3	Writing for PR	LEC	03:30 PM - 04:45 PM	TTH		Fisher,Irma J	20	Main Campus
4570	APRD	3112	1	B	24195	3	International Public Relations	LEC	12:30 PM - 01:45 PM	TTH		Fisher,Irma J	30	Main Campus
4571	APRD	3300	1	B	34180	3	Crisis Communication	LEC	03:30 PM - 04:45 PM	TTH	HLMS 245	St. John,Burton	20	Main Campus
4572	APRD	3301	1	B	24055	3	Social Media Strategies	LEC	09:30 AM - 10:45 AM	TTH		Poole,Lisa Lorraine	30	Main Campus
4573	APRD	3301	2	B	24166	3	Social Media Strategies	LEC	06:00 PM - 08:30 PM	M	HALE 240	Iori,Ron Henry	30	Main Campus
4574	APRD	3301	3	B	24214	3	Social Media Strategies	LEC	06:00 PM - 08:30 PM	M	HLMS 141	Davis,Dayna Lynn	30	Main Campus
4575	APRD	3301	550R	B	24219	3	Social Media Strategies	LEC	06:30 PM - 09:00 PM	TH	Offered through CU in	Gelb,Amos Peter	30	Main Campus
4576	APRD	3302	1	B	24056	3	Case Studies	LEC	11:00 AM - 12:15 PM	TTH	ECON 13	St. John,Burton	18	Main Campus
4577	APRD	3302	550R	B	24223	3	Case Studies	LEC	06:30 PM - 09:00 PM	M	Offered through CU in	Gelb,Amos Peter	18	Main Campus
4578	APRD	3503	1	B	34178	3	Concepting	SEM	11:00 AM - 12:15 PM	TTH	ENVD 1B90	Griffin,Glenn	20	Main Campus
4579	APRD	3503	2	B	34179	3	Concepting	SEM	12:30 PM - 01:45 PM	TTH	ENVD 1B90	Griffin,Glenn	20	Main Campus
4580	APRD	3523	4	B	34986	3	Art of Science Communication	LEC	12:30 PM - 01:45 PM	TTH	CLUB 13	Safran,Rebecca J	10	Main Campus
4581	APRD	3523	4	B	34986	3	Art of Science Communication	LEC	12:30 PM - 01:45 PM	TTH	CLUB 13	Schauster,Erin E	10	Main Campus
4582	APRD	4100	1	B	24051	3	Brands and Culture	LEC	06:00 PM - 08:30 PM	M	MUEN E417	Ford,Kristina Joann	30	Main Campus
4583	APRD	4100	2	B	24210	3	Brands and Culture	LEC	06:00 PM - 08:30 PM	M	DUAN G131	Nottoli,David	30	Main Campus
4584	APRD	4100	3	B	24354	3	Brands and Culture	LEC	06:00 PM - 08:30 PM	M	HLMS 237	Katz,Molly C	30	Main Campus
4585	APRD	4300	1	B	24049	3	Strategic Comm Analytics	LEC	02:00 PM - 03:15 PM	TTH	ENVD 1B90	Vargo,Christopher	20	Main Campus
4586	APRD	4403	1	B	23641	4	Strat Com Campaigns	LEC	10:00 AM - 11:45 AM	MW	ARMR 206A	Goode-Allen,Richard Scott	18	Main Campus
4587	APRD	4403	2	B	23642	4	Strat Com Campaigns	LEC	03:30 PM - 05:15 PM	TTH	ARMR 218	Hooten,Scott J	18	Main Campus
4588	APRD	4403	3	B	23643	4	Strat Com Campaigns	LEC	03:30 PM - 05:15 PM	TTH	KTCH 1B71	Stoner,Michael Hart	18	Main Campus
4589	APRD	4403	4	B	24298	4	Strat Com Campaigns	LEC	12:00 PM - 01:45 PM	MW	ARMR 206A	Goode-Allen,Richard Scott	18	Main Campus
4590	APRD	4403	5	B	24208	4	Strat Com Campaigns	LEC	03:30 PM - 05:15 PM	TTH	CLRE 208	Kinner,Kelly Sue	18	Main Campus
4591	APRD	4404	1	B	24167	3	Advanced Campaigns	LEC	03:00 PM - 05:30 PM	W	ARMR 206A	Stoner,Michael Hart	0	Main Campus
4592	APRD	4501	1	B	24052	3	Design for Social Innovation	STU	09:30 AM - 10:45 AM	TTH	ARMR 206A	Bowen,Russell Alan	20	Main Campus
4593	APRD	4503	801	B	24008	3	Portfolio 1	LEC	06:00 PM - 08:30 PM	T	MUEN E118	Ligon,Jon	18	Main Campus
4594	APRD	4503	802	B	24165	3	Portfolio 1	LEC	11:00 AM - 12:15 PM	TTH	KTCH 1B71	Smail,David Carlyle	18	Main Campus
4595	APRD	4543	1	B	23644	3	Strategic Brand Management	LEC	11:00 AM - 12:15 PM	TTH	STAD 136C	Weintraub,William H	12	Main Campus
4596	APRD	4543	550R	B	24222	3	Strategic Brand Management	LEC	06:30 PM - 09:00 PM	M	Offered through CU in	Gelb,Amos Peter	18	Main Campus
4597	APRD	4873	1	B	24246	3	Special Topics	LEC	06:00 PM - 08:30 PM	T	FLMG 155	Finkel,Dustin	175	Main Campus
4598	APRD	4873	2	B	24168	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	CLUB 13	Smail,David Carlyle	18	Main Campus
4599	APRD	4873	3	B	24169	3	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B71	Ligon,Jon	18	Main Campus
4600	APRD	4873	5	B	34218	3	Special Topics	LEC	04:00 PM - 05:15 PM	MW	HALE 240	Curry,Jeff	20	Main Campus
4601	APRD	4873	6	B	24297	3	Special Topics	LEC	06:00 PM - 08:30 PM	M	HUMN 190	Stoner,Michael Hart	18	Main Campus
4602	APRD	4873	7	B	24355	3	Special Topics	LEC	06:00 PM - 08:30 PM	M	ECON 119	Hooten,Scott J	18	Main Campus
4603	APRD	4873	8	B	34773	3	Special Topics	LEC	06:00 PM - 08:30 PM	W	HUMN 190	Arnett,Trina D	20	Main Campus
4604	APRD	4873	4	BVS	24245	1-3	Special Topics	LEC	-	TBA		Finn,Patrick C	25	Main Campus
4605	APRD	5001	2	B	24236	3	Brand Design Studio 1	STU	06:00 PM - 09:00 PM	T	Meets at Off-Campus	Ahrnsbrak,Brizida C	30	Main Campus
4606	APRD	5002	2	B	24237	3	Experiential Design Studio 1	STU	12:30 PM - 03:30 PM	T	Meets at Off-Campus	Bowen,Russell Alan	30	Main Campus
4607	APRD	5005	2	B	24238	3	Critical Making Studio 1	STU	09:00 AM - 12:00 PM	T	Meets at Off-Campus	Duran,Robert	30	Main Campus
4608	APRD	5006	2	B	24239	3	RE: Studio 1	STU	09:30 AM - 12:30 PM	M	Meets at Off-Campus	Weaver,Jesse Graham	30	Main Campus
4609	APRD	5007	1	B	24241	3	Critical Making Studio 2	STU	09:00 AM - 12:00 PM	W	Meets at Off-Campus	Duran,Robert	30	Main Campus
4610	APRD	5011	2	B	24240	1-6	Book Lab	STU	03:30 PM - 06:30 PM	M	Meets at Off-Campus	Weaver,Jesse Graham	30	Main Campus
4611	APRD	6342	1	B	24311	3	Digital Advertising	LEC	05:00 PM - 06:15 PM	TTH		Vargo,Christopher	55	Main Campus
4612	APRD	6871	1	B	24369	3	Special Topics	SEM	01:00 PM - 04:00 PM	W	See Academc Dept	Ferracane,Louis Joseph	15	Main Campus
4613	APRD	6871	2	B	24370	3	Special Topics	SEM	12:30 PM - 03:30 PM	TH	See Academc Dept	Bowen,Russell Alan	15	Main Campus
4614	APRD	6871	2	B	24370	3	Special Topics	SEM	12:30 PM - 03:30 PM	TH	See Academc Dept	Baker,Andrew Gabriel	15	Main Campus
4615	APRD	7001	1	B	24374	3	ProSeminar in Mass Comm 1	SEM	11:00 AM - 01:30 PM	T	ARMR 1B01	Ferrucci,Patrick Richard	10	Main Campus
4616	APRD	7001	1	B	24374	3	ProSeminar in Mass Comm 1	SEM	11:00 AM - 01:30 PM	T	ARMR 1B01	Sriramesh,Krishnamurthy	10	Main Campus
4617	APRD	7004	1	B	24373	1	Professionalization	SEM	05:00 PM - 05:50 PM	M	ARMR 206A	Ferrucci,Patrick Richard	10	Main Campus
4618	COM	1210	100	B	23617	3	Perspectives on Human Comm	LEC	01:00 PM - 01:50 PM	MW	MUEN E050	Hickerson,Ruth L	300	Main Campus
4619	COM	1210	101	B	23618	3	Perspectives on Human Comm	REC	01:00 PM - 01:50 PM	F	HLMS 263		25	Main Campus
4620	COM	1210	102	B	23619	3	Perspectives on Human Comm	REC	12:00 PM - 12:50 PM	F	CLRE 302		25	Main Campus
4621	COM	1210	103	B	23620	3	Perspectives on Human Comm	REC	12:00 PM - 12:50 PM	F	MUEN D439		25	Main Campus
4622	COM	1210	104	B	23624	3	Perspectives on Human Comm	REC	01:00 PM - 01:50 PM	F	ENVD 122		25	Main Campus
4623	COM	1210	105	B	23621	3	Perspectives on Human Comm	REC	10:00 AM - 10:50 AM	F	KTCH 1B71		25	Main Campus
4624	COM	1210	106	B	24290	3	Perspectives on Human Comm	REC	11:00 AM - 11:50 AM	F	ECON 13		25	Main Campus
4625	COM	1210	107	B	23625	3	Perspectives on Human Comm	REC	01:00 PM - 01:50 PM	F	KCEN N252		25	Main Campus
4626	COM	1210	108	B	23623	3	Perspectives on Human Comm	REC	09:00 AM - 09:50 AM	F	RAMY N1B31		25	Main Campus
4627	COM	1210	109	B	23622	3	Perspectives on Human Comm	REC	09:30 AM - 10:20 AM	TH	CLRE 209		25	Main Campus
4628	COM	1210	110	B	24139	3	Perspectives on Human Comm	REC	11:00 AM - 11:50 AM	TH	GUGG 3		25	Main Campus
4629	COM	1210	111	B	24141	3	Perspectives on Human Comm	REC	01:00 PM - 01:50 PM	F	GUGG 206		25	Main Campus
4630	COM	1210	112	B	24140	3	Perspectives on Human Comm	REC	12:00 PM - 12:50 PM	F	ECON 13		25	Main Campus
4631	COM	1300	1	B	23600	3	Public Speaking	LEC	08:00 AM - 08:50 AM	MWF	HLMS 77		19	Main Campus
4632	COM	1300	2	B	34315	3	Public Speaking	LEC	08:00 AM - 09:15 AM	TTH	STAD 136C		19	Main Campus
4633	COM	1300	3	B	23601	3	Public Speaking	LEC	09:00 AM - 09:50 AM	MWF	HLMS 77		19	Main Campus
4634	COM	1300	4	B	24061	3	Public Speaking	LEC	08:00 AM - 09:15 AM	TTH	HLMS 77	Cook,Michael Warren	19	Main Campus
4635	COM	1300	5	B	23508	3	Public Speaking	LEC	09:30 AM - 10:45 AM	TTH	HLMS 77	Cook,Michael Warren	19	Main Campus
4636	COM	1300	6	B	23602	3	Public Speaking	LEC	11:00 AM - 12:15 PM	TTH	HLMS 77		19	Main Campus
4637	COM	1300	7	B	23596	3	Public Speaking	LEC	12:30 PM - 01:45 PM	TTH	HLMS 77		19	Main Campus
4638	COM	1300	8	B	23512	3	Public Speaking	LEC	04:30 PM - 05:45 PM	MW	CHEM 131		19	Main Campus
4639	COM	1300	9	B	34316	3	Public Speaking	LEC	08:00 AM - 09:15 AM	TTH	DUAN G1B27		19	Main Campus
4640	COM	1300	10	B	23513	3	Public Speaking	LEC	03:00 PM - 04:15 PM	MW	CLRE 212		19	Main Campus
4641	COM	1300	11	B	23514	3	Public Speaking	LEC	10:00 AM - 10:50 AM	MWF	STAD 136C		19	Main Campus
4642	COM	1300	12	B	24258	3	Public Speaking	LEC	11:00 AM - 11:50 AM	MWF	STAD 136C	Del Rincon,Yessica	19	Main Campus
4643	COM	1600	100	B	23509	3	Group Interaction	LEC	12:30 PM - 01:45 PM	T	VAC 1B20	Jahn,Jody L	150	Main Campus
4644	COM	1600	101	B	23510	3	Group Interaction	REC	08:00 AM - 09:15 AM	TH	CLRE 211		25	Main Campus
4645	COM	1600	102	B	33882	3	Group Interaction	REC	12:30 PM - 01:20 PM	TH	STAD 136C		25	Main Campus
4646	COM	1600	103	B	24248	3	Group Interaction	REC	11:00 AM - 12:15 PM	TH	MCOL E158		25	Main Campus
4647	COM	1600	104	B	23515	3	Group Interaction	REC	12:30 PM - 01:45 PM	TH	MCOL E158		25	Main Campus
4648	COM	1600	105	B	23516	3	Group Interaction	REC	09:00 AM - 09:50 AM	F	STAD 136C		25	Main Campus
4649	COM	1600	106	B	33883	3	Group Interaction	REC	12:00 PM - 12:50 PM	F	STAD 136C		25	Main Campus
4650	COM	1600	107	B	24242	3	Group Interaction	REC	07:00 PM - 08:15 PM	TH	HLMS 263		0	Main Campus
4651	COM	1600	108	B	24243	3	Group Interaction	REC	08:00 AM - 08:50 AM	TH	HLMS 193		0	Main Campus
4652	COM	2320	1	B	23613	3	The Craft of Argument	LEC	11:00 AM - 11:50 AM	MWF	DUAN G2B21	Dionne,Terrell Jake	25	Main Campus
4653	COM	2400	1	B	23518	3	Discourse/Culture/Identities	LEC	02:00 PM - 02:50 PM	MWF	KTCH 1B87	Loker,Emily Therese	27	Main Campus
4654	COM	2400	3	B	23583	3	Discourse/Culture/Identities	LEC	03:00 PM - 04:15 PM	MW	CLRE 211		27	Main Campus
4655	COM	2400	4	B	23587	3	Discourse/Culture/Identities	LEC	01:00 PM - 01:50 PM	MWF	HLMS 245	Marras Tate,Joanne Christine	27	Main Campus
4656	COM	2400	6	B	24182	3	Discourse/Culture/Identities	LEC	09:00 AM - 09:50 AM	MWF	CLRE 208	Marras Tate,Joanne Christine	27	Main Campus
4657	COM	2400	7	B	24216	3	Discourse/Culture/Identities	LEC	11:00 AM - 11:50 AM	MWF	EDUC 155	Russell,Charles Vincent	27	Main Campus
4658	COM	2400	8	B	24217	3	Discourse/Culture/Identities	LEC	09:00 AM - 09:50 AM	MWF	EKLC E1B75	Russell,Charles Vincent	27	Main Campus
4659	COM	2400	9	B	24292	3	Discourse/Culture/Identities	LEC	08:00 AM - 09:15 AM	TTH	HLMS 247		27	Main Campus
4660	COM	2400	10	B	34441	3	Discourse/Culture/Identities	LEC	08:00 AM - 09:15 AM	TTH	CHEM 145		27	Main Campus
4661	COM	2400	14	B	34485	3	Discourse/Culture/Identities	LEC	11:00 AM - 12:15 PM	TTH	HALE 240		27	Main Campus
4662	COM	2400	16	B	34893	3	Discourse/Culture/Identities	LEC	05:00 PM - 06:15 PM	TTH	HLMS 251		0	Main Campus
4663	COM	2400	17	B	34894	3	Discourse/Culture/Identities	LEC	12:00 PM - 12:50 PM	MWF	MCOL E186		27	Main Campus
4664	COM	2500	1	B	23520	3	Interpersonal Communication	LEC	01:00 PM - 01:50 PM	MWF	CLRE 209	Musselwhite,Jeanette	27	Main Campus
4665	COM	2650	1	B	24275	3	Business and Professional Comm	LEC	10:00 AM - 10:50 AM	MWF	HLMS 247	Leslie,Kathryn Joan	20	Main Campus
4666	COM	3000	1	B	24145	3	Issues in Communication	LEC	12:30 PM - 01:45 PM	TTH	ECON 2	Sprain,Leah MH	27	Main Campus
4667	COM	3210	100	B	23517	3	Human Communication Thry	LEC	10:00 AM - 10:50 AM	MW	HLMS 252	Kuhn,Timothy R	78	Main Campus
4668	COM	3210	111	B	23603	3	Human Communication Thry	REC	10:00 AM - 10:50 AM	F	HLMS 77		27	Main Campus
4669	COM	3210	112	B	23604	3	Human Communication Thry	REC	11:00 AM - 11:50 AM	F	HLMS 77		27	Main Campus
4670	COM	3210	113	B	23605	3	Human Communication Thry	REC	10:00 AM - 10:50 AM	F	CLRE 212		24	Main Campus
4671	COM	3300	100	B	23523	3	Rhetoric Fndations Comm	LEC	12:00 PM - 12:50 PM	MW	MCOL W100	Motter,Jeffrey Brian	84	Main Campus
4672	COM	3300	111	B	23607	3	Rhetoric Fndations Comm	REC	12:00 PM - 12:50 PM	F	HLMS 77		21	Main Campus
4673	COM	3300	112	B	23608	3	Rhetoric Fndations Comm	REC	01:00 PM - 01:50 PM	F	HLMS 77		21	Main Campus
4674	COM	3300	113	B	23609	3	Rhetoric Fndations Comm	REC	12:00 PM - 12:50 PM	F	MCOL W100		21	Main Campus
4675	COM	3300	114	B	23610	3	Rhetoric Fndations Comm	REC	01:00 PM - 01:50 PM	F	HUMN 1B70	Del Rincon,Yessica	21	Main Campus
4676	COM	3320	1	B	23598	3	Persuasion in Society	LEC	03:00 PM - 04:15 PM	MW	HUMN 1B80		0	Main Campus
4677	COM	3320	2	B	35088	3	Persuasion in Society	LEC	11:00 AM - 11:50 AM	MWF	CLRE 207	Motter,Jeffrey Brian	75	Main Campus
4678	COM	3330	1	B	23597	3	Social Movements	LEC	09:30 AM - 10:45 AM	TTH	GUGG 2	Gomez,Logan Rae	27	Main Campus
4679	COM	3370	1	B	24143	3	Environmental Communication	LEC	12:30 PM - 01:45 PM	TTH	HLMS 141	Pezzullo,Phaedra Carmen	27	Main Campus
4680	COM	3410	1	B	23524	3	Intercultural Communication	LEC	09:30 AM - 10:45 AM	TTH	KTCH 1B87		27	Main Campus
4681	COM	3410	2	B	23525	3	Intercultural Communication	LEC	11:00 AM - 12:15 PM	TTH	ECON 2	Cruz,Joelle M	27	Main Campus
4682	COM	3410	3	B	23526	3	Intercultural Communication	LEC	12:30 PM - 01:45 PM	TTH	STAD 135		27	Main Campus
4683	COM	3410	4	B	23586	3	Intercultural Communication	LEC	04:30 PM - 05:45 PM	MW	HLMS 245		27	Main Campus
4684	COM	3410	6	B	24261	3	Intercultural Communication	LEC	11:00 AM - 11:50 AM	MWF	ECON 205		27	Main Campus
4685	COM	3410	7	B	34478	3	Intercultural Communication	LEC	09:30 AM - 10:45 AM	TTH	HLMS 247		27	Main Campus
4686	COM	3410	8	B	34479	3	Intercultural Communication	LEC	11:00 AM - 12:15 PM	TTH	VAC 1B88		27	Main Campus
4687	COM	3410	10	B	34481	3	Intercultural Communication	LEC	10:00 AM - 10:50 AM	MWF	MCOL E186		27	Main Campus
4688	COM	3410	11	B	34482	3	Intercultural Communication	LEC	09:30 AM - 10:45 AM	TTH	CLRE 207	Boromisza-Habashi,David	60	Main Campus
4689	COM	3410	12	B	34483	3	Intercultural Communication	LEC	08:00 AM - 09:15 AM	TTH	EKLC M203		27	Main Campus
4690	COM	3420	1	B	23612	3	Gender and Communication	LEC	03:00 PM - 05:30 PM	W	STAD 136C	Ashcraft,Karen Lee	20	Main Campus
4691	COM	3420	4	B	35232	3	Gender and Communication	LEC	11:00 AM - 12:15 PM	TTH	HUMN 1B80	Hickerson,Ruth L	60	Main Campus
4692	COM	3430	1	B	36201	3	Comm, Culture and Sport	LEC	12:30 PM - 01:45 PM	TTH	MCOL E155	Skerski,Jamie	27	Main Campus
4693	COM	3510	1	B	23599	3	Family Communication	LEC	03:30 PM - 04:45 PM	TTH	HUMN 190	Poole,Lisa Lorraine	27	Main Campus
4694	COM	3610	1	B	24059	3	Comm, Tech, & Society	LEC	12:30 PM - 01:45 PM	TTH	GUGG 2	Poole,Lisa Lorraine	27	Main Campus
4695	COM	3610	2	B	24128	3	Comm, Tech, & Society	LEC	04:30 PM - 05:45 PM	MW	RAMY N1B31		0	Main Campus
4696	COM	3620	1	B	36203	3	Adv Teamwork and Collaboratn	LEC	09:30 AM - 10:45 AM	TTH	EKLC E1B75	Jahn,Jody L	27	Main Campus
4697	COM	3630	1	B	23522	3	Organizational Communication	LEC	09:30 AM - 10:45 AM	TTH	CLRE 208	Marshall,Dana Harrington	27	Main Campus
4698	COM	3740	1	B	23585	3	Qual Comm Resch Methods	LEC	05:00 PM - 07:30 PM	W	HLMS 251	Frey,Lawrence R	30	Main Campus
4699	COM	3750	1	B	23527	3	Quantitative Research Methods	LEC	06:00 PM - 08:30 PM	T	HLMS 263	Frey,Lawrence R	24	Main Campus
4700	COM	3760	1	B	23584	3	Rhetorical Criticism	LEC	12:30 PM - 01:45 PM	TTH	CLRE 209	Naputi,Tiara Rose	24	Main Campus
4701	COM	4100	801	B	23616	3	Sem: Honors Wrt & Rsch	SEM	03:00 PM - 05:30 PM	W	HLMS 196	White,Cindy Hagemeier	10	Main Campus
4702	COM	4220	1	B	34303	3	Sem:Functions of Communication	SEM	12:30 PM - 01:45 PM	TTH	GUGG 206	Boromisza-Habashi,David	27	Main Campus
4703	COM	4220	2	B	36558	3	Sem:Functions of Communication	SEM	03:00 PM - 04:15 PM	MW	EKLC M203		20	Main Campus
4704	COM	4220	3	B	36565	3	Sem:Functions of Communication	SEM	05:00 PM - 06:15 PM	MW	MUEN D144		24	Main Campus
4705	COM	4300	1	B	23528	3	Senior Seminar: Rhetoric	LEC	09:30 AM - 10:45 AM	TTH	CASE E250	Pezzullo,Phaedra Carmen	19	Main Campus
4706	COM	4510	1	B	24196	3	Senior Sem: Interpersonal Comm	SEM	05:00 PM - 06:15 PM	MW	HLMS 185	Hickerson,Ruth L	20	Main Campus
4707	COM	5310	1	B	33893	3	Contemp Rhet Criticism	SEM	03:30 PM - 06:00 PM	TH	HLMS 77	Naputi,Tiara Rose	20	Main Campus
4708	COM	5435	1	B	34687	3	Rdgs Comnty & Soc Interaction	SEM	06:15 PM - 08:45 PM	M	HLMS 77	Shrikant,Natasha	15	Main Campus
4709	COM	5610	1	B	33891	3	Organizational Ethnography	SEM	03:30 PM - 06:00 PM	W	HLMS 77	Taylor,Bryan Copeland	15	Main Campus
4710	COM	6010	1	B	24005	3	Comm Research & Theory	LEC	03:30 PM - 06:00 PM	M	HLMS 77	Striphas,Theodore G	10	Main Campus
4711	COM	6200	1	B	24144	3	Sem-Selected Topics	SEM	03:30 PM - 06:00 PM	T	HLMS 77	Simonson,Peter D.	15	Main Campus
4712	COM	6200	1	B	24144	3	Sem-Selected Topics	SEM	03:30 PM - 06:00 PM	T	HLMS 77	Sprain,Leah MH	15	Main Campus
4713	COM	6750	1	B	33889	3	Critical-Cultural Org Comm	SEM	06:30 PM - 08:45 PM	T	HLMS 77	Cruz,Joelle M	15	Main Campus
4714	COM	6910	1	B	24253	1	Research and Theory Practicum	PRA	03:30 PM - 04:30 PM	M	HLMS 77	Striphas,Theodore G	6	Main Campus
4715	CMD	1400	10	B	23645	4	Intro to Contemp Media Culture	LEC	11:00 AM - 12:15 PM	TTH	ECCR 200	Young,Andrew Phillip	100	Main Campus
4716	CMD	2100	10	B	24172	3	Historical Media Practices	LEC	02:00 PM - 02:50 PM	MWF	ATLS 100	Young,Andrew Phillip	120	Main Campus
4717	CMD	2100	11	B	34975	3	Historical Media Practices	REC	08:00 AM - 08:50 AM	F	ENVD 214B		15	Main Campus
4718	CMD	2100	12	B	34976	3	Historical Media Practices	REC	09:00 AM - 09:50 AM	F	ENVD 214B		15	Main Campus
4719	CMD	2100	13	B	34977	3	Historical Media Practices	REC	10:00 AM - 10:50 AM	F	ENVD 214B		15	Main Campus
4720	CMD	2100	14	B	34978	3	Historical Media Practices	REC	11:00 AM - 11:50 AM	F	ENVD 214B		15	Main Campus
4721	CMD	2100	15	B	34979	3	Historical Media Practices	REC	12:00 PM - 12:50 PM	F	ENVD 214B		15	Main Campus
4722	CMD	2100	16	B	34980	3	Historical Media Practices	REC	01:00 PM - 01:50 PM	F	ENVD 214B		15	Main Campus
4723	CMD	2500	1	B	24020	3	Introd to Media Practices	SEM	09:00 AM - 10:45 AM	MW	ENVD 214B	Clark,Patrick Ryan	12	Main Campus
4724	CMD	2500	2	B	24194	3	Introd to Media Practices	SEM	11:30 AM - 01:15 PM	TTH	ENVD 214B	Coombs Esmail,Eric David	12	Main Campus
4725	CMD	2500	3	B	24314	3	Introd to Media Practices	SEM	03:00 PM - 04:45 PM	MW	ENVD 214B	Clark,Patrick Ryan	12	Main Campus
4726	CMD	2500	4	B	24357	3	Introd to Media Practices	SEM	02:00 PM - 03:45 PM	TTH	ENVD 214A		12	Main Campus
4727	CMD	2820	100	B	24228	3	Culture & Gender Through Film	LEC	09:30 AM - 10:20 AM	TTH	MUEN E050	Hammons,Christian Stanford	32	Main Campus
4728	CMD	2860	1	B	24002	2	Performance Audio Recording	SEM	02:00 PM - 02:50 PM	MW	MUS N1B49	Lobel,Herbert Hugh	12	Main Campus
4729	CMD	3400	1	B	24019	3	Media Aesthetics	LEC	02:00 PM - 03:15 PM	TTH	ECCR 150	Auguiste,Reece Luke	30	Main Campus
4730	CMD	3450	1	B	35019	3	Critical Perspectives in Media	LEC	11:00 AM - 12:15 PM	TTH	ENVD 214A		15	Main Campus
4731	CMD	3510	1	B	24234	1-3	Workshop II	STU	09:30 AM - 10:45 AM	TTH	STAD 136	Gnerre,Jason Robert	15	Main Campus
4732	CMD	3510	2	B	24315	1-3	Workshop II	STU	03:00 PM - 05:30 PM	F	ENVD 215	Lobel,Herbert Hugh	15	Main Campus
4733	CMD	3510	3	B	34981	1-3	Workshop II	STU	03:00 PM - 04:15 PM	MW	ENVD 214A		15	Main Campus
4734	CMD	3600	1	B	24021	3	Creative Media Making	STU	03:30 PM - 05:15 PM	TTH	ENVD 214B		15	Main Campus
4735	CMD	3600	2	B	24022	3	Creative Media Making	STU	09:30 AM - 11:15 AM	TTH	ENVD 214B	Coombs Esmail,Eric David	15	Main Campus
4736	CMD	3600	3	B	24316	3	Creative Media Making	STU	11:00 AM - 12:45 PM	MW	ENVD 214A	Clark,Patrick Ryan	15	Main Campus
4737	CMD	3700	1	B	24173	3	Digital Photographic Practices	STU	09:00 AM - 10:45 AM	MW	ENVD 214A	Tracy,Britland Irene Marie	15	Main Campus
4738	CMD	3700	2	B	24317	3	Digital Photographic Practices	STU	11:00 AM - 12:45 PM	MW	ENVD 214B	Tracy,Britland Irene Marie	15	Main Campus
4739	CMD	3800	1	B	23646	3	Documentary Media Poetics	SEM	12:30 PM - 01:45 PM	TTH	ENVD 214B		12	Main Campus
4740	CMD	3810	1	B	24174	3	Engaged Doc Media	STU	01:30 PM - 03:15 PM	TTH	ENVD 214A		15	Main Campus
4741	CMD	3820	1	B	24175	3	Performance Media Practices	STU	01:00 PM - 02:45 PM	MW	ENVD 214B	Geary,Ondine	15	Main Campus
4742	CMD	3860	1	B	24003	3	Intro to Music Technology	SEM	12:00 PM - 01:15 PM	MW	MUS N1B49	Lobel,Herbert Hugh	12	Main Campus
4743	CMD	4620	1	B	34990	3	Media Environments	STU	01:00 PM - 02:45 PM	MW	ENVD 214A		15	Main Campus
4744	CMD	4870	1	B	24333	3	Sound and Technology Topics	STU	10:00 AM - 11:15 AM	MW	MUS N1B49		12	Main Campus
4745	CMD	4900	2	B	24361	3	Cncpts Pract of Contemp Media	STU	03:00 PM - 05:30 PM	F	ENVD 214B		15	Main Campus
4746	CMD	5500	1	B	24334	3	Doc Prod Workshops	WKS	03:00 PM - 03:50 PM	T	STAD 255-32		12	Main Campus
4747	CMD	7100	1	B	24176	3	History of Media Arts & Tech	LEC	03:00 PM - 03:50 PM	TH	STAD 255-32	Young,Andrew Phillip	12	Main Campus
4748	CMD	7200	1	B	24177	3	Research and Methodologies I	SEM	10:00 AM - 12:30 PM	T	VAC 455	Cordova,James M.	12	Main Campus
4749	CMD	7450	1	B	24340	3	Comprehensive Exam Seminar	SEM	03:00 PM - 05:30 PM	W	STAD 255-32		12	Main Campus
4750	CMD	7500	1	B	24178	3	Production Methods I	STU	03:00 PM - 03:50 PM	T	STAD 255-32		12	Main Campus
4751	CMD	8100	1	B	34991	3	Dissertation Development	SEM	03:00 PM - 05:30 PM	F	STAD 255-32		12	Main Campus
4752	INFO	1101	10	B	24179	3	Computation in Society	LEC	03:00 PM - 04:15 PM	M	MATH 100	Sylvester,Roshanna	350	Main Campus
4753	INFO	1101	10	B	24179	3	Computation in Society	LEC	03:00 PM - 04:15 PM	M	MATH 100	Fiesler,Casey Lynn	350	Main Campus
4754	INFO	1101	11	B	33497	3	Computation in Society	REC	08:00 AM - 09:15 AM	T	EKLC E1B20	Fiesler,Casey Lynn	100	Main Campus
4755	INFO	1101	12	B	35059	3	Computation in Society	REC	03:30 PM - 04:45 PM	T	BESC 180	Sylvester,Roshanna	100	Main Campus
4756	INFO	1101	13	B	35060	3	Computation in Society	REC	08:00 AM - 09:15 AM	TH	EKLC E1B20	Sylvester,Roshanna	50	Main Campus
4757	INFO	1101	13	B	35060	3	Computation in Society	REC	08:00 AM - 09:15 AM	TH	EKLC E1B20	Fiesler,Casey Lynn	50	Main Campus
4758	INFO	1101	14	B	35061	3	Computation in Society	REC	03:30 PM - 04:45 PM	TH	BESC 180	Sylvester,Roshanna	100	Main Campus
4759	INFO	1111	10	B	24041	4	Intro to Info Sci: Data	LEC	11:00 AM - 12:15 PM	TTH	MCOL W100	Brubaker,Jed Richards	120	Main Campus
4760	INFO	1201	10	B	24040	3	Computational Reasoning 1	LEC	12:00 PM - 12:50 PM	MWF	MATH 100	Zietz,Jason Ian	280	Main Campus
4761	INFO	2131	1	B	24344	3	Information Ecosystems	LEC	03:30 PM - 04:45 PM	TTH	HLMS 267	Barker,Lecia Jane	50	Main Campus
4762	INFO	2201	10	B	34994	3	Computational Reasoning 2	LEC	10:00 AM - 10:50 AM	MWF	DUAN G131	Zietz,Jason Ian	40	Main Campus
4763	INFO	2201	11	B	35007	3	Computational Reasoning 2	LAB	02:00 PM - 02:50 PM	M	DUAN G131	Zietz,Jason Ian	40	Main Campus
4764	INFO	3402	1	B	35008	3	Information Exposition	LEC	11:00 AM - 11:50 AM	MWF		Keegan,Brian	35	Main Campus
4765	INFO	4602	1	B	35163	3	Information Visualization	LEC	09:30 AM - 10:45 AM	TTH	CLUB 13	Szafir,Danielle N	30	Main Campus
4766	INFO	4609	1	B	35228	3	User-Centered Design	LEC	03:30 PM - 04:45 PM	TTH	RAMY N1B23	Zietz,Jason Ian	40	Main Campus
4767	INFO	4871	2	B	35146	3	Special Topics	LEC	11:00 AM - 12:15 PM	TTH	MUEN E432	Voida,Stephen	25	Main Campus
4768	INFO	4871	3	B	35150	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	HLMS 267	Paul,Michael John	30	Main Campus
4769	INFO	2001	1	B81	24347	1	Portfolio and Professions	SEM	03:30 PM - 05:30 PM	M	RAMY N1B23	Brubaker,Jed Richards	20	Main Campus
4770	INFO	4001	2	B81	24348	1	Portfolio and Professions	LEC	03:30 PM - 05:30 PM	M	RAMY N1B23	Brubaker,Jed Richards	20	Main Campus
4771	INFO	5602	1	B	35172	3	Information Visualization	LEC	12:30 PM - 01:45 PM	TTH		Szafir,Danielle N	30	Main Campus
4772	INFO	5609	1	B	35229	3	User-Centered Design	LEC	03:30 PM - 04:45 PM	TTH	RAMY N1B23	Zietz,Jason Ian	20	Main Campus
4773	INFO	5871	1	B	35145	3	Special Topics	SEM	05:00 PM - 07:30 PM	M	HLMS 229	Burke,Robin	35	Main Campus
4774	INFO	5871	2	B	35147	3	Special Topics	SEM	11:00 AM - 12:15 PM	TTH	MUEN E432	Voida,Stephen	15	Main Campus
4775	INFO	5871	3	B	35148	3	Special Topics	SEM	02:00 PM - 03:15 PM	TTH	HLMS 267	Paul,Michael John	20	Main Campus
4776	INFO	6500	1	B	24152	1	Information Science Seminar	SEM	02:00 PM - 02:50 PM	W	HALE 235	Fiesler,Casey Lynn	15	Main Campus
4777	INFO	7000	1	B	24133	3	Doctoral Studies	LEC	02:00 PM - 04:30 PM	F	See Academc Dept	Voida,Amy	20	Main Campus
4778	JRNL	1000	100	B	23647	3	Princpls Jour & Networked Comm	LEC	04:00 PM - 04:50 PM	MW	HALE 270	Ferrucci,Patrick Richard	150	Main Campus
4779	JRNL	1000	110	B	24004	3	Princpls Jour & Networked Comm	REC	08:00 AM - 08:50 AM	F	KTCH 1B44	Ferrucci,Patrick Richard	25	Main Campus
4780	JRNL	1000	120	B	23851	3	Princpls Jour & Networked Comm	REC	08:00 AM - 08:50 AM	F	HUMN 1B70	Ferrucci,Patrick Richard	25	Main Campus
4781	JRNL	1000	130	B	23852	3	Princpls Jour & Networked Comm	REC	03:00 PM - 03:50 PM	F	HLMS 177	Ferrucci,Patrick Richard	25	Main Campus
4782	JRNL	1000	140	B	23853	3	Princpls Jour & Networked Comm	REC	02:00 PM - 02:50 PM	F	ENVD 122	Ferrucci,Patrick Richard	25	Main Campus
4783	JRNL	1000	150	B	23854	3	Princpls Jour & Networked Comm	REC	02:00 PM - 02:50 PM	F	ARMR 206A	Ferrucci,Patrick Richard	25	Main Campus
4784	JRNL	1000	160	B	24371	3	Princpls Jour & Networked Comm	REC	01:00 PM - 01:50 PM	F	ARMR 206A	Ferrucci,Patrick Richard	25	Main Campus
4785	JRNL	2000	1	B	24362	3	Writing for the Media	LEC	12:30 PM - 01:45 PM	TTH	KTCH 1B84	Larson,Christine M	20	Main Campus
4786	JRNL	2000	2	B	24363	3	Writing for the Media	LEC	03:30 PM - 04:45 PM	TTH	CASE E250	Chuang,Angie I	20	Main Campus
4787	JRNL	2000	3	B	24364	3	Writing for the Media	LEC	01:00 PM - 01:50 PM	MWF	KTCH 1B71	Whitt,Jan	20	Main Campus
4788	JRNL	2001	1	B	23648	3	Reporting Technologies	LEC	04:00 PM - 05:15 PM	MW	ARMR 209	Daugherty,Paul Joseph	20	Main Campus
4789	JRNL	2001	2	B	23649	3	Reporting Technologies	LEC	02:00 PM - 03:15 PM	TTH	ARMR 201	Clark,Patrick Ryan	20	Main Campus
4790	JRNL	2001	3	B	23650	3	Reporting Technologies	LEC	12:30 PM - 01:45 PM	TTH	ARMR 211	Dion,Michael	20	Main Campus
4791	JRNL	2401	1	B	34496	3	Media and Diverse Populations	LEC	11:00 AM - 12:15 PM	TTH	ECCR 135	Chuang,Angie I	50	Main Campus
4792	JRNL	3102	1	B	23651	3	Photojournalism I	LEC	12:30 PM - 01:45 PM	TTH	ARMR 201	Cote,Nick Alexander	20	Main Campus
4793	JRNL	3112	1	B	34497	3	Concepts in Visual Culture	LEC	09:00 AM - 09:50 AM	MWF	HUMN 1B90		35	Main Campus
4794	JRNL	3202	550R	B	24221	3	Covering Political Campaigns	LEC	06:30 PM - 09:00 PM	TH	Offered through CU in	Gelb,Amos Peter	30	Main Campus
4795	JRNL	3211	1	B	34498	3	History of Broadcasting	LEC	03:30 PM - 04:45 PM	TTH	HLMS 141		50	Main Campus
4796	JRNL	3614	1	B	24266	3	Principles of Audio Production	LEC	12:00 PM - 02:30 PM	M	ARMR 201	Browsh,Jared Bahir	16	Main Campus
4797	JRNL	3644	10	B	23738	3	Principles of TV Production	LEC	01:00 PM - 02:50 PM	TTH		Daugherty,Paul Joseph	20	Main Campus
4798	JRNL	3644	11	B	23739	3	Principles of TV Production	LAB	03:00 PM - 04:50 PM	TTH	ATLS 2B31	Daugherty,Paul Joseph	16	Main Campus
4799	JRNL	3651	1	B	23819	3	Media Law and Ethics	LEC	08:00 AM - 09:15 AM	TTH	HLMS 199		50	Main Campus
4800	JRNL	3651	2	B	23820	3	Media Law and Ethics	LEC	02:00 PM - 03:15 PM	TTH	DUAN G125		50	Main Campus
4801	JRNL	3651	3	B	24349	3	Media Law and Ethics	LEC	05:00 PM - 06:15 PM	TTH	DUAN G125		50	Main Campus
4802	JRNL	3674	10	B	23740	3	TV Production 2	LEC	09:30 AM - 10:45 AM	TTH	STAD 136C	Jones,Stephen	20	Main Campus
4803	JRNL	3674	11	B	23741	3	TV Production 2	LAB	11:00 AM - 12:50 PM	TTH	ATLS 2B31	Jones,Stephen	20	Main Campus
4804	JRNL	3704	1	B	24153	3	Sports Writing	LEC	06:00 PM - 08:30 PM	TH	ARMR 218	Siegel,Henry J	20	Main Campus
4805	JRNL	3804	1	B	24269	3	Sports, Media and Society	LEC	03:30 PM - 04:45 PM	TTH	CLRE 207	Brisbane,Gayle Jansen	50	Main Campus
4806	JRNL	4002	1	B	23652	3	Reporting 2	LEC	09:30 AM - 10:45 AM	TTH	CHEM 145	Kodas,Michael	16	Main Campus
4807	JRNL	4002	2	B	23653	3	Reporting 2	LEC	09:30 AM - 10:45 AM	TTH	ARMR 1B01	Potter,Elizabeth	16	Main Campus
4808	JRNL	4351	1	B	23865	3	Reporting Wars/Conflict/Peace	LEC	12:30 PM - 01:45 PM	TTH	CASE E250	Kim,Hun  Shik	35	Main Campus
4809	JRNL	4354	1	B	23654	3	TV Reporting	LEC	03:30 PM - 04:45 PM	TTH	ARMR 211	Kim,Hun  Shik	20	Main Campus
4810	JRNL	4354	2	B	24132	3	TV Reporting	LEC	03:30 PM - 04:45 PM	TTH	ARMR 201		20	Main Campus
4811	JRNL	4401	1	B	34499	3	News and Public Perception	LEC	12:30 PM - 01:45 PM	TTH	VAC 1B90		35	Main Campus
4812	JRNL	4562	1	B	23655	3	Digital Journalism	LEC	09:30 AM - 10:45 AM	TTH	ARMR 201	Browsh,Jared Bahir	10	Main Campus
4813	JRNL	4572	1	B	24154	3	News Corps	PRA	02:00 PM - 03:15 PM	TTH	VAC 1B90	Plunkett,Chuck	60	Main Campus
4814	JRNL	4602	1	B	24272	3	Opinion Writing	LEC	02:00 PM - 03:15 PM	TTH	CLRE 302	McDevitt,Michael Joseph	10	Main Campus
4815	JRNL	4624	10	B	23742	4	NewsTeam	LEC	01:00 PM - 02:50 PM	F	ARMR 218	Daugherty,Paul Joseph	20	Main Campus
4816	JRNL	4624	11	B	23743	4	NewsTeam	LAB	11:00 AM - 12:50 PM	TTH	ATLS 2B31		9	Main Campus
4817	JRNL	4624	11	B	23743	4	NewsTeam	LAB	08:00 AM - 11:00 AM	TTH	ARMR 209	Daugherty,Paul Joseph	9	Main Campus
4818	JRNL	4624	11	B	23743	4	NewsTeam	LAB	08:00 AM - 11:00 AM	TTH	ARMR 209	Canella,Gino	9	Main Campus
4819	JRNL	4634	801	B	23657	1-3	Broadcast Projects	PRA	-	TBA	See Academc Dept	Daugherty,Paul Joseph	10	Main Campus
4820	JRNL	4674	1	B	23659	1-3	Television Production 3	LEC	08:00 AM - 12:50 PM	TTH	ATLS 2B31	Jones,Stephen	15	Main Campus
4821	JRNL	4684	1	B	23660	3	Advanced Camera & Editing	LEC	09:00 AM - 11:30 AM	F	ARMR 218	Daugherty,Paul Joseph	12	Main Campus
4822	JRNL	4702	1	B	34500	3	Arts/Cult Reporting & Critic	LEC	11:00 AM - 12:15 PM	TTH	VAC 1B90		10	Main Campus
4823	JRNL	4714	1	B	24057	3	Sports Broadcasting	LEC	06:00 PM - 08:30 PM	T	ARMR 206A	Schanno,Michael Scott	20	Main Campus
4824	JRNL	4802	1	B	24156	3	Feature Writing	LEC	11:00 AM - 12:15 PM	TTH		Larson,Christine M	10	Main Campus
4825	JRNL	4874	1	B	23855	3	Special Topics	LEC	03:00 PM - 04:15 PM	MW	MUEN E130	McDevitt,Michael Joseph	20	Main Campus
4826	JRNL	5011	1	B	23662	3	Newsgath Multimed Storytelling	LEC	04:00 PM - 06:30 PM	MW	ARMR 211	Kodas,Michael	18	Main Campus
4827	JRNL	5521	1	B	24273	3	Data Journalism	LEC	05:00 PM - 07:30 PM	W	HUMN 1B80		15	Main Campus
4828	JRNL	5562	1	B	23656	3	Digital Journalism	LEC	09:30 AM - 10:45 AM	TTH	ARMR 201	Browsh,Jared Bahir	8	Main Campus
4829	JRNL	5572	1	B	24274	3	CU News Corps	PRA	02:00 PM - 03:15 PM	TTH	VAC 1B90	Plunkett,Chuck	15	Main Campus
4830	JRNL	5602	1	B	24276	3	Opinion Writing	LEC	02:00 PM - 03:15 PM	TTH	CLRE 302	McDevitt,Michael Joseph	8	Main Campus
4831	JRNL	5624	10	B	23802	4	NewsTeam	LEC	01:00 PM - 02:50 PM	F	ARMR 218	Daugherty,Paul Joseph	5	Main Campus
4832	JRNL	5624	11	B	23803	4	NewsTeam	LAB	08:00 AM - 11:00 AM	TTH	ARMR 209	Daugherty,Paul Joseph	5	Main Campus
4833	JRNL	5624	11	B	23803	4	NewsTeam	LAB	11:00 AM - 12:50 PM	TTH	ATLS 2B31		5	Main Campus
4834	JRNL	5624	11	B	23803	4	NewsTeam	LAB	08:00 AM - 11:00 AM	TTH	ARMR 209	Canella,Gino	5	Main Campus
4835	JRNL	5634	801	B	23658	1-3	Broadcast Projects	PRA	-	TBA	See Academc Dept	Daugherty,Paul Joseph	10	Main Campus
4836	JRNL	5684	1	B	23661	3	Advanced Camera & Editing	LEC	09:00 AM - 11:30 AM	F	ARMR 218	Daugherty,Paul Joseph	8	Main Campus
4837	JRNL	5702	1	B	34502	3	Arts/Cult Reporting & Critic	LEC	11:00 AM - 12:15 PM	TTH	VAC 1B90		10	Main Campus
4838	JRNL	5802	1	B	24277	3	Feature Writing	LEC	11:00 AM - 12:15 PM	TTH		Larson,Christine M	8	Main Campus
4839	JRNL	5812	1	B	24009	3	Science Writing	LEC	12:00 PM - 02:30 PM	M	ARMR 1B01	Yulsman,Tom	15	Main Campus
4840	JRNL	7001	1	B	24278	3	ProSeminar in Mass Comm 1	SEM	11:00 AM - 01:30 PM	T	ARMR 1B01	Sriramesh,Krishnamurthy	10	Main Campus
4841	JRNL	7001	1	B	24278	3	ProSeminar in Mass Comm 1	SEM	11:00 AM - 01:30 PM	T	ARMR 1B01	Ferrucci,Patrick Richard	10	Main Campus
4842	JRNL	7002	1	B	34501	3	Research Design	SEM	03:30 PM - 06:00 PM	TH	ARMR 1B01	Skewes,Elizabeth A	20	Main Campus
4843	JRNL	7004	1	B	24372	1	Professionalization	SEM	05:00 PM - 05:50 PM	M	ARMR 206A	Ferrucci,Patrick Richard	10	Main Campus
4844	MDST	1001	1	B	24157	3	Foundations of Media Studies	LEC	09:30 AM - 10:45 AM	TTH	EDUC 220	Mclean,Polly E	100	Main Campus
4845	MDST	1002	1	B	33450	3	Introduction to Social Media	LEC	11:00 AM - 12:15 PM	TTH	HLMS 252	Stevens,John Richard	100	Main Campus
4846	MDST	2002	1	B	23630	3	Media/Communication History	LEC	09:00 AM - 09:50 AM	MWF	MCOL E155		40	Main Campus
4847	MDST	2002	2	B	24284	3	Media/Communication History	LEC	11:00 AM - 11:50 AM	MWF	DUAN G2B47		40	Main Campus
4848	MDST	2002	3	B	24356	3	Media/Communication History	LEC	12:30 PM - 01:45 PM	TTH	DUAN G2B47		40	Main Campus
4849	MDST	2002	4	B	34448	3	Media/Communication History	LEC	12:30 PM - 01:45 PM	TTH	ARMR 218		30	Main Campus
4850	MDST	2011	1	B	24158	3	Disruptive Entrepreneurship	LEC	02:00 PM - 03:15 PM	TTH	KTCH 1B71	Schneider,Nathan Todd	40	Main Campus
4851	MDST	2021	1	B	24280	3	Comic Books: Culture&Industry	LEC	02:00 PM - 03:15 PM	TTH	VAC 1B88	Stevens,John Richard	40	Main Campus
4852	MDST	2032	1	B	24281	3	Visual Literacies & Design	LEC	11:00 AM - 12:15 PM	TTH	ARMR 211	Frost,Steven Earl	20	Main Campus
4853	MDST	3001	1	B	24039	3	Media Research	LEC	12:30 PM - 01:45 PM	TTH		Putri,Ully Damari	40	Main Campus
4854	MDST	3002	1	B	24159	3	Digital Culture and Politics	LEC	09:30 AM - 10:45 AM	TTH	MCOL E155	Calabrese,Andrew	40	Main Campus
4855	MDST	3201	1	B	24160	3	Media, Culture & Globalization	LEC	03:30 PM - 04:45 PM	TTH	MUEN E064	Tracey,Michael	40	Main Campus
4856	MDST	3711	1	B	34760	3	Media and Popular Culture	LEC	05:00 PM - 06:15 PM	TTH	MUEN E064		30	Main Campus
4857	MDST	3791	1	B	23631	3	Media and the Public	LEC	11:00 AM - 12:15 PM	TTH	HALE 260	Tracey,Michael	40	Main Campus
4858	MDST	3791	550R	B	24220	3	Media and the Public	LEC	06:30 PM - 09:00 PM	TH	Offered through CU in	Gelb,Amos Peter	97	Main Campus
4859	MDST	4331	1	B	24283	3	Gndr, Race, Clss, Sex Pop Cult	LEC	02:00 PM - 03:15 PM	TTH	ARMR 218	Mclean,Polly E	35	Main Campus
4860	MDST	4371	1	B	24161	3	Media and Religion	LEC	09:30 AM - 10:45 AM	TTH	ARMR 218		35	Main Campus
4861	MDST	5001	1	B	23862	3	Connected Media Practices	SEM	09:00 AM - 11:30 AM	M	ARMR 1B01	Schneider,Nathan Todd	15	Main Campus
4862	MDST	5871	1	B	34450	3	Special Topics	LEC	01:00 PM - 03:30 PM	W	ARMR 1B01	Echchaibi,Nabil	15	Main Campus
4863	MDST	5871	2	B	36034	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	ARMR 209	Frost,Steven Earl	15	Main Campus
4864	MDST	6201	1	B	34451	3	Global Media and Culture	LEC	02:00 PM - 04:30 PM	M	ARMR 206A	Mclean,Polly E	15	Main Campus
4865	MDST	6871	1	B	24207	3	Special Topics	SEM	09:00 AM - 11:30 AM	W	ARMR 1B01	Ardizzoni,Michela	15	Main Campus
4866	MDST	7001	1	B	34452	1	PhD Colloquium Series	SEM	11:30 AM - 01:00 PM	W	See Academc Dept		15	Main Campus
4867	DST	7011	1	B	23629	3	Prosem in Media/Comm Theory I	SEM	03:30 PM - 06:00 PM	T	ARMR 1B01	Calabrese,Andrew	15	Main Campus
4868	MDST	7011	1	B	23629	3	Prosem in Media/Comm Theory I	SEM	03:30 PM - 06:00 PM	T	ARMR 1B01	Echchaibi,Nabil	15	Main Campus
4869	MDST	7061	1	B	34453	3	Quant Resrch Methods in Media	SEM	11:00 AM - 01:30 PM	TH	ARMR 1B01	Lee,Seow	15	Main Campus
4870	CMCI	1010	100	B	23626	4	Concepts and Creativity 1	LEC	09:30 AM - 10:45 AM	TTH	FLMG 155		110	Main Campus
4871	CMCI	1010	101	B	23790	4	Concepts and Creativity 1	REC	11:00 AM - 12:15 PM	TH	ARMR 206A		13	Main Campus
4872	CMCI	1010	105	B	23793	4	Concepts and Creativity 1	REC	11:00 AM - 11:50 AM	F	ARMR 1B01		13	Main Campus
4873	CMCI	1010	106	B	23794	4	Concepts and Creativity 1	REC	12:00 PM - 12:50 PM	F	VAC 1B90		13	Main Campus
4874	CMCI	1010	108	B	23795	4	Concepts and Creativity 1	REC	02:00 PM - 02:50 PM	F	KTCH 1B64		13	Main Campus
4875	CMCI	1010	200	B	23627	4	Concepts and Creativity 1	LEC	09:30 AM - 10:45 AM	TTH	RAMY C250		110	Main Campus
4876	CMCI	1010	201	B	23796	4	Concepts and Creativity 1	REC	11:00 AM - 12:15 PM	TH	ARMR 218		13	Main Campus
4877	CMCI	1010	202	B	23797	4	Concepts and Creativity 1	REC	02:00 PM - 02:50 PM	F	RAMY N1B31		13	Main Campus
4878	CMCI	1010	203	B	23798	4	Concepts and Creativity 1	REC	09:00 AM - 09:50 AM	F	ARMR 1B01		13	Main Campus
4879	CMCI	1010	204	B	24255	4	Concepts and Creativity 1	REC	10:00 AM - 10:50 AM	F	ARMR 1B01		13	Main Campus
4880	CMCI	1010	205	B	23799	4	Concepts and Creativity 1	REC	11:00 AM - 11:50 AM	F	ARMR 206A		13	Main Campus
4881	CMCI	1010	206	B	23800	4	Concepts and Creativity 1	REC	12:00 PM - 12:50 PM	F	KCEN N252		13	Main Campus
4882	CMCI	1010	208	B	23801	4	Concepts and Creativity 1	REC	02:00 PM - 02:50 PM	F	HUMN 145		13	Main Campus
4883	CMCI	1010	221R	B	24012	4	Concepts and Creativity 1	REC	03:30 PM - 04:45 PM	TH	BUCK S106		19	Main Campus
4884	CMCI	1010	222R	B	24016	4	Concepts and Creativity 1	REC	05:00 PM - 06:15 PM	TH	BUCK S106		19	Main Campus
4885	CMCI	1010	223R	B	24180	4	Concepts and Creativity 1	REC	02:00 PM - 02:50 PM	F	BUCK S106		19	Main Campus
4886	CMCI	1010	231R	B	24014	4	Concepts and Creativity 1	REC	03:30 PM - 04:45 PM	TH	BUCK N101		19	Main Campus
4887	CMCI	1010	232R	B	24017	4	Concepts and Creativity 1	REC	05:00 PM - 06:15 PM	TH	BUCK N101		19	Main Campus
4888	CMCI	1010	233R	B	24181	4	Concepts and Creativity 1	REC	02:00 PM - 02:50 PM	F	BUCK N101		19	Main Campus
4889	CMCI	2030	10	B	24304	4	Becoming CMCI	LEC	12:30 PM - 01:45 PM	TTH	EDUC 220		92	Main Campus
4890	CMCI	2030	11	B	24305	4	Becoming CMCI	LAB	02:00 PM - 03:15 PM	TH	ARMR 206A		23	Main Campus
4891	CMCI	2030	14	B	35241	4	Becoming CMCI	LAB	06:30 PM - 07:45 PM	TH	HLMS 247		23	Main Campus
4892	CMCI	3000	550R	B	24225	1-3	Special Topics in CMCI	LEC	09:00 AM - 05:00 PM	F	Offered through CU in	Gelb,Amos Peter	25	Main Campus
4893	MUS	1081	1	B	28197	3	Intensive Music Theory	LEC	08:00 AM - 08:50 AM	MWF	MUS C125		23	Main Campus
4894	MUS	1101	1	B	28198	2	Semester 1 Theory	LEC	08:00 AM - 08:50 AM	TTH	ATLS 102	Chang,Philip C	50	Main Campus
4895	MUS	1101	2	B	28199	2	Semester 1 Theory	LEC	08:00 AM - 08:50 AM	MW	ATLS 102	Chang,Philip C	50	Main Campus
4896	MUS	1103	1	B	28703	1	Becoming a Music Teacher	LEC	11:00 AM - 11:50 AM	TH	MCKY 102	Heil,Leila Theresa	30	Main Campus
4897	MUS	1121	1	B	28200	1	Aural Skills Lab, Semester 1	LEC	08:00 AM - 08:50 AM	MW	MUS N1B59		15	Main Campus
4898	MUS	1121	2	B	28201	1	Aural Skills Lab, Semester 1	LEC	08:00 AM - 08:50 AM	MW	MUS N180D		15	Main Campus
4899	MUS	1121	3	B	28495	1	Aural Skills Lab, Semester 1	LEC	09:00 AM - 09:50 AM	MW	MUS N180D		15	Main Campus
4900	MUS	1121	4	B	28496	1	Aural Skills Lab, Semester 1	LEC	09:00 AM - 09:50 AM	MW	MUS C125		15	Main Campus
4901	MUS	1121	5	B	28503	1	Aural Skills Lab, Semester 1	LEC	09:00 AM - 09:50 AM	TTH	MUS N1B59		15	Main Campus
4902	MUS	1121	6	B	28202	1	Aural Skills Lab, Semester 1	LEC	09:00 AM - 09:50 AM	TTH	MUS C125	Chang,Philip C	15	Main Campus
4903	MUS	1121	801	B	28203	1	Aural Skills Lab, Semester 1	LEC	08:00 AM - 08:50 AM	TTH	MUS N180D		23	Main Campus
4904	MUS	1325	1	B	28748	1	Sightreading for Piano	LEC	01:00 PM - 01:50 PM	MW	MUS N180C	Nguyen,Alexandra	12	Main Campus
4905	MUS	1326	1	B	34382	2	Guitar Musicianship and Accomp	STU	03:30 PM - 04:20 PM	T	MUS N1B59	Spera,Nicolo Ruggero Ferruccio	10	Main Campus
4906	MUS	1544	1	B	28213	1	Italian Diction	LEC	03:30 PM - 04:20 PM	TTH	MUS N180D	Moteki,Mutsumi	15	Main Campus
4907	MUS	1802	1	B	28212	3	Intro Musical Style/Idea	LEC	11:00 AM - 11:50 AM	MWF	MUS N1B95D	Okigbo,Austin Chinagorom	117	Main Campus
4908	MUS	2081	1	B	28204	2	Prepared for the Soundcheck	LEC	10:00 AM - 10:50 AM	MW	MUS N1B46	Harbison,Kevin Allan	15	Main Campus
4909	MUS	2101	1	B	28205	2	Semester 3 Theory	LEC	09:00 AM - 09:50 AM	MW	ATLS 102	Arnett,Mark L	50	Main Campus
4910	MUS	2101	2	B	28206	2	Semester 3 Theory	LEC	10:00 AM - 10:50 AM	MW	ATLS 102	Arnett,Mark L	50	Main Campus
4911	MUS	2103	1	B	28389	2	Intro to Music Education	LEC	11:00 AM - 11:50 AM	MW	MCKY 213	Rickels,David Aaron	30	Main Campus
4912	MUS	2121	1	B	28207	1	Aural Skills Lab, Semester 3	LEC	10:00 AM - 10:50 AM	MW	MUS N180D		15	Main Campus
4913	MUS	2121	2	B	28208	1	Aural Skills Lab, Semester 3	LEC	08:00 AM - 08:50 AM	MW	MUS N1B85		15	Main Campus
4914	MUS	2121	3	B	28209	1	Aural Skills Lab, Semester 3	LEC	09:00 AM - 09:50 AM	MW	MUS N1B85		15	Main Campus
4915	MUS	2121	4	B	28497	1	Aural Skills Lab, Semester 3	LEC	10:00 AM - 10:50 AM	TTH	MUS C125		15	Main Campus
4916	MUS	2121	5	B	28498	1	Aural Skills Lab, Semester 3	LEC	08:00 AM - 08:50 AM	TTH	MUS N1B85		15	Main Campus
4917	MUS	2608	1	B	28719	1	Studies/Alexander Technq	LEC	10:00 AM - 10:50 AM	TTH	MUS N1B85	Brody,James M	9	Main Campus
4918	MUS	2608	2	B	28399	1	Studies/Alexander Technq	LEC	02:00 PM - 02:50 PM	MW	MUS N1B85	Brody,James M	9	Main Campus
4919	MUS	2772	1	B	28755	3	World Musics: Asia/Oceania	LEC	10:00 AM - 10:50 AM	MWF	MCKY 102	Romero,Brenda M	68	Main Campus
4920	MUS	2918	1	B	28402	2	Building Your Music Career	LEC	10:00 AM - 10:50 AM	MW	MUS C125	Nytch,Jeffrey	28	Main Campus
4921	MUS	2918	2	B	28724	2	Building Your Music Career	LEC	10:00 AM - 10:50 AM	TTH	MUS N1B59	Nytch,Jeffrey	26	Main Campus
4922	MUS	3013	1	B	28390	1	String Class	MLS	08:00 AM - 08:50 AM	MWF	MUS E160	Fix,Rebecca	20	Main Campus
4923	MUS	3061	1	B	28293	2	Jazz Improvisation I	LEC	10:00 AM - 10:50 AM	TTH	MCKY 1B03B		20	Main Campus
4924	MUS	3081	1	B	28708	3	Jazz Theory & Aural Fndtns 1	LEC	10:00 AM - 10:50 AM	MWF	MCKY 117	McKee,Paul	15	Main Campus
4925	MUS	3163	1	B	28391	2	Teaching String Instru	LEC	08:00 AM - 08:50 AM	MWF	MUS E160	Fix,Rebecca	20	Main Campus
4926	MUS	3176	1	B	28395	2	Conducting I	LEC	02:00 PM - 02:50 PM	MW	MCKY 102	Swanson,Elizabeth Kay	20	Main Campus
4927	MUS	3176	2	B	28396	2	Conducting I	LEC	11:00 AM - 11:50 AM	MW	MUS E160	McKinney,Donald J	20	Main Campus
4928	MUS	3176	3	B	28397	2	Conducting I	LEC	10:00 AM - 10:50 AM	MW	MUS E160	Roeder,Matthew James	20	Main Campus
4929	MUS	3193	1	B	28392	2	Vocal Ped/Young Voices	LEC	08:00 AM - 08:50 AM	MW	MCKY 213		20	Main Campus
4930	MUS	3243	1	B	34307	2	Teaching Percussion Instrument	LEC	08:00 AM - 09:15 AM	TTH	MUS E160		20	Main Campus
4931	MUS	3363	1	B	28393	2	Marching Band Techniques	LEC	09:30 AM - 10:20 AM	TTH	MUS E160		15	Main Campus
4932	MUS	3444	1	B	28214	1	French Diction	LEC	02:00 PM - 02:50 PM	TTH	MUS N180D	Moteki,Mutsumi	15	Main Campus
4933	MUS	3642	1	B	28714	3	History of Jazz 1	LEC	02:00 PM - 03:15 PM	TTH	MCKY 117		20	Main Campus
4934	MUS	3802	1	B	28286	3	History of Western Music 1	LEC	09:00 AM - 09:50 AM	MWF	MCKY 102	Maloy,Rebecca	68	Main Campus
4935	MUS	4021	1	B	28492	2	18th Century Counterpoint	LEC	02:00 PM - 02:50 PM	MW	MUS N180D	Arnett,Mark L	16	Main Campus
4936	MUS	4031	1	B	28706	2	Jazz Arranging 1	LEC	01:00 PM - 01:50 PM	MW	MCKY 117	McKee,Paul	20	Main Campus
4937	MUS	4041	1	B	34391	2	Orchestration	LEC	11:00 AM - 11:50 AM	MW	MUS C125	Kellogg,Daniel Dixon	10	Main Campus
4938	MUS	4071	1	B	34392	2	Post-Tonal Thry & Analys	LEC	02:00 PM - 02:50 PM	TTH	MUS N1B59	Leong,Daphne	16	Main Campus
4939	MUS	4101	1	B	28289	1-3	Theory and Aural Skills Review	LEC	09:00 AM - 09:50 AM	TTH	MUS N1B85	Drumheller III,John Earl	15	Main Campus
4940	MUS	4103	1	B	28705	1	Intro Student Teaching	LEC	09:00 AM - 09:50 AM	F	MUS N180D	Taft,Seth Andrew	20	Main Campus
4941	MUS	4111	1	B	34393	2	Composing at Computer	LEC	02:00 PM - 02:50 PM	TTH	MUS N1B46		15	Main Campus
4942	MUS	4113	1	B	34308	3	Teaching General Music 2	LEC	09:30 AM - 10:45 AM	TTH	MCKY 213	Miranda,Martina L	15	Main Campus
4943	MUS	4122	1	B	34323	3	Music in Jewish Culture	LEC	12:30 PM - 01:45 PM	TTH	MCKY 213	Malin,Jonathan	30	Main Campus
4944	MUS	4133	1	B	28394	3	Student Teaching Practicum	PRA	-	TBA	See Academc Dept	Rickels,David Aaron	10	Main Campus
4945	MUS	4151	1	B	28768	2	Topics in Music Analysis	LEC	10:00 AM - 10:50 AM	MW	MUS N1B59	Waters,Keith John	15	Main Campus
4946	MUS	4161	1	B	34274	2	Adv Jazz Comp and Analysis	LEC	12:00 PM - 12:50 PM	TTH	MCKY 117	Jenkins,Jeffrey C	20	Main Campus
4947	MUS	4163	1	B	34310	2	Choral Lit: School Ensmnl	LEC	02:00 PM - 03:40 PM	F	MCKY 213	Heil,Leila Theresa	20	Main Campus
4948	MUS	4168	1	B	34325	3	World Music Theories	LEC	02:00 PM - 03:15 PM	TTH	MUS C121	Romero,Brenda M	12	Main Campus
4949	MUS	4193	1	B	28504	1	Sem-Student Teaching	SEM	04:00 PM - 05:15 PM	M	MUS N285	Ewer,Michelle Berndt	15	Main Campus
4950	MUS	4202	1	B	34327	3	Special Topic in Musicology	LEC	10:00 AM - 10:50 AM	MWF	MUS C121	Thomas,Susan	14	Main Campus
4951	MUS	4323	1	B	34397	3	Differentiating Music Inst.	LEC	02:00 PM - 03:15 PM	TTH	MCKY 213	Miranda,Martina L	30	Main Campus
4952	MUS	4325	1	B	34276	2	Keyboard Literature 1	SEM	12:00 PM - 12:50 PM	TTH	MUS C125	Hayghe,Jennifer C	15	Main Campus
4953	MUS	4346	1	B	34909	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Ishikawa,Yoshiyuki	25	Main Campus
4954	MUS	4346	1	B	34909	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Jennings,Christina A	25	Main Campus
4955	MUS	4346	1	B	34909	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Myer,Tom R	25	Main Campus
4956	MUS	4346	1	B	34909	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Silver,Daniel S	25	Main Campus
4957	MUS	4405	1	B	34277	2	Basso-Continuo Accompaniment	LEC	01:00 PM - 01:50 PM	MW	See Academc Dept	Hill,Robert S	10	Main Campus
4958	MUS	4608	1	B	28721	1	Adv Studies in Alex Tech	LEC	10:00 AM - 10:50 AM	MW	MUS N1B85	Brody,James M	7	Main Campus
4959	MUS	4772	1	B	28700	3	History of Opera	LEC	11:00 AM - 11:50 AM	MWF	MUS N1B85	Maloy,Rebecca	13	Main Campus
4960	MUS	4978	1	B	28776	3	Arts Administration & Mgmt	LEC	04:00 PM - 05:15 PM	MW	MUS C121	Braun,Joan Mc Lean	12	Main Campus
4961	MUS	5021	1	B	28493	2	18th Century Counterpoint	LEC	02:00 PM - 02:50 PM	MW	MUS N180D	Arnett,Mark L	16	Main Campus
4962	MUS	5061	1	B	28292	3	Advanced Tonal Analysis	LEC	09:30 AM - 10:45 AM	TTH	MCKY 117	Bruns,Steven Michael	14	Main Campus
4963	MUS	5071	1	B	28290	3	Post-Tnal Thry & Anlys I	LEC	09:30 AM - 10:45 AM	TTH	MUS N180D	Leong,Daphne	16	Main Campus
4964	MUS	5081	1	B	28291	3	Applications Mus Tech	LEC	12:30 PM - 01:45 PM	TTH	MUS N1B46	Drumheller III,John Earl	12	Main Campus
4965	MUS	5103	1	B	34309	3	Teaching General Music	LEC	09:30 AM - 10:45 AM	TTH	MCKY 213	Miranda,Martina L	15	Main Campus
4966	MUS	5112	1	B	34328	3	Prosem: Ethnomusicology	LEC	12:30 PM - 03:20 PM	W	MUS C121	Keister,Jay	12	Main Campus
4967	MUS	5136	1	B	28398	2	Adv Conducting Inst	LEC	09:00 AM - 10:50 AM	W	See Class Notes For	Lewis,Gary Joe	10	Main Campus
4968	MUS	5151	1	B	28453	3	Topics Music Analysis	LEC	04:00 PM - 05:15 PM	MW	MUS C125	Waters,Keith John	12	Main Campus
4969	MUS	5156	1	B	34219	2	Choral Music Symposium	SEM	11:00 AM - 11:50 AM	MW	MCKY 102	Gentry,Gregory Reid	10	Main Campus
4970	MUS	5168	1	B	34326	3	World Music Theories	LEC	02:00 PM - 03:15 PM	TTH	MUS C121	Romero,Brenda M	12	Main Campus
4971	MUS	5183	1	B	34311	2	Research Music Teaching	LEC	04:30 PM - 06:10 PM	T	MUS C125	Rickels,David Aaron	12	Main Campus
4972	MUS	5246	1	B	34275	3	Jazz Improv & Analysis	LEC	04:00 PM - 05:15 PM	MW	MCKY 117	Goode,Bradley M.	15	Main Campus
4973	MUS	5273	1	B	34312	2	Comp String Pedagogy	SEM	09:00 AM - 10:40 AM	W	MCKY 213		12	Main Campus
4974	MUS	5305	1	B	34278	2	Piano Ped-Group Tech	LEC	01:00 PM - 01:50 PM	TTH	MUS C125	Cremaschi,Alejandro M	15	Main Campus
4975	MUS	5346	1	B	34912	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Ishikawa,Yoshiyuki	25	Main Campus
4976	MUS	5346	1	B	34912	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Myer,Tom R	25	Main Campus
4977	MUS	5346	1	B	34912	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Jennings,Christina A	25	Main Campus
4978	MUS	5346	1	B	34912	3	Woodwind Pedagogy	LEC	09:00 AM - 11:50 AM	F	MUS C125	Silver,Daniel S	25	Main Campus
4979	MUS	5375	1	B	28528	2	Opera for Pianists	LEC	10:00 AM - 11:30 AM	F	MUS N1B59	Carthy,Nicholas R.	10	Main Campus
4980	MUS	5375	1	B	28528	2	Opera for Pianists	LEC	10:00 AM - 11:30 AM	F	MUS N1B59	Reger,Jeremy J	10	Main Campus
4981	MUS	5405	1	B	28527	2	Basso-Continuo Accompaniment	LEC	01:00 PM - 01:50 PM	MW	See Academc Dept	Hill,Robert S	10	Main Campus
4982	MUS	5425	1	B	34279	2	Coll Piano Literature I	SEM	09:00 AM - 10:40 AM	TH	MUS C121	Mc Donald,Margaret Mary	12	Main Campus
4983	MUS	5444	1	B	28404	2	Vocal Pedagogy	LEC	02:00 PM - 02:50 PM	TTH	MUS C125	Seesholtz,John	25	Main Campus
4984	MUS	5564	1	B	28459	2	German Song Literature	LEC	09:00 AM - 09:50 AM	MW	MUS N1B59	Bird-Arvidsson,Jennifer	14	Main Campus
4985	MUS	5608	1	B	28720	1	Grad Stdy in Alexander Tech	LEC	10:00 AM - 10:50 AM	TTH	MUS N1B85	Brody,James M	5	Main Campus
4986	MUS	5608	2	B	28400	1	Grad Stdy in Alexander Tech	LEC	02:00 PM - 02:50 PM	MW	MUS N1B85	Brody,James M	5	Main Campus
4987	MUS	5708	1	B	28287	2	Intro Mus Biblio Rsch	LEC	09:00 AM - 09:50 AM	MW	MUS N285	Sampsel,Laurie J	15	Main Campus
4988	MUS	5708	2	B	28288	2	Intro Mus Biblio Rsch	LEC	10:00 AM - 10:50 AM	MW	MUS N285	Sampsel,Laurie J	15	Main Campus
4989	MUS	5772	1	B	28701	3	History of Opera	LEC	11:00 AM - 11:50 AM	MWF	MUS N1B85	Maloy,Rebecca	10	Main Campus
4990	MUS	5808	1	B	28722	1	Adv Alex Tech Graduate	SEM	10:00 AM - 10:50 AM	MW	MUS N1B85	Brody,James M	5	Main Campus
4991	MUS	5832	1	B	34329	3	Studies in Amer Music	LEC	12:30 PM - 01:45 PM	TTH	MUS N1B59	Smith,Jeremy	12	Main Campus
4992	MUS	5918	1	B	28471	2	Building Your Music Career	LEC	10:00 AM - 10:50 AM	MW	MUS C125	Nytch,Jeffrey	28	Main Campus
4993	MUS	5918	2	B	28725	2	Building Your Music Career	LEC	10:00 AM - 10:50 AM	TTH	MUS N1B59	Nytch,Jeffrey	26	Main Campus
4994	MUS	5978	1	B	28775	3	Arts Administration & Mgmt	LEC	04:00 PM - 05:15 PM	MW	MUS C121	Braun,Joan Mc Lean	12	Main Campus
4995	MUS	6243	1	B	28518	1	Applications of Music Pedagogy	LEC	06:30 PM - 08:00 PM	M	MUS C121		8	Main Campus
4996	MUS	6325	1	B	28684	2	Sem-Piano Literature	SEM	11:00 AM - 12:40 PM	F	See Academc Dept	Hill,Robert S	10	Main Campus
4997	MUS	6801	1	B	28604	3	Adv Tpcs in Music Theory	SEM	02:00 PM - 03:15 PM	TTH	MUS N1B85	Bruns,Steven Michael	12	Main Campus
4998	MUS	6822	1	B	28475	3	Adv Studies Musicology	SEM	09:30 AM - 10:45 AM	TTH	MUS N285	Smith,Jeremy	12	Main Campus
4999	MUS	7143	1	B	34313	3	Qual Rsch in Music Education	SEM	12:00 PM - 02:30 PM	TH	MUS N285	Berg,Margaret H	8	Main Campus
5000	MUS	7203	1	B	34314	3	Doctoral Sem-Music Education	SEM	12:00 PM - 02:30 PM	W	MUS N285	Austin,James R	8	Main Campus
5001	MUS	7822	1	B	28454	3	Musicology Seminar	SEM	04:00 PM - 06:50 PM	W	MUS N285	Okigbo,Austin Chinagorom	12	Main Campus
5002	MUEL	1081	1	B	28494	3	Basic Music Theory	LEC	08:00 AM - 08:50 AM	MWF	MCKY 102		50	Main Campus
5003	MUEL	1081	2	B	34383	3	Basic Music Theory	LEC	08:00 AM - 09:15 AM	TTH	MCKY 102	Malin,Jonathan	50	Main Campus
5004	MUEL	1832	1	B	28189	3	Appreciation of Music	LEC	09:30 AM - 10:45 AM	TTH	MUS N1B95D		269	Main Campus
5005	MUEL	1832	2	B	28188	3	Appreciation of Music	LEC	08:00 AM - 09:15 AM	TTH	MUS N1B95D		269	Main Campus
5006	MUEL	2742	1	B	28757	3	Wild West Soundscapes	LEC	01:00 PM - 01:50 PM	MWF	MUS C125	Sampsel,Laurie J	26	Main Campus
5007	MUEL	2752	880	B	28476	3	Music in Amer Culture	LEC	02:00 PM - 02:50 PM	MWF	LIBR N424A	Jones,Daniel C	7	Main Campus
5008	MUEL	2772	1	B	28756	3	World Musics: Asia/Oceania	LEC	10:00 AM - 10:50 AM	MWF	MCKY 102	Romero,Brenda M	68	Main Campus
5009	MUEL	2772	880	B	34466	3	World Musics: Asia/Oceania	LEC	12:00 PM - 12:50 PM	MWF	LIBR N424A	Jones,Daniel C	7	Main Campus
5010	MUEL	2852	1	B	28455	3	Music in the Rock Era	LEC	02:00 PM - 03:15 PM	TTH	MUS N1B95D	Barnett,Michael Todd	269	Main Campus
5011	MUEL	2852	2	B	28699	3	Music in the Rock Era	LEC	12:30 PM - 01:45 PM	TTH	MUS N1B95D	Barnett,Michael Todd	269	Main Campus
5012	MUEL	3642	1	B	28505	3	History of Jazz	LEC	12:30 PM - 01:45 PM	TTH	MUS C112		350	Main Campus
5013	MUEL	3822	1	B	28460	3	Words and Music	LEC	08:00 AM - 09:15 AM	TTH	MCKY 213		33	Main Campus
5014	MUEL	3892	1	B	34321	3	Music and Space	LEC	09:30 AM - 10:45 AM	TTH	MCKY 102	Keister,Jay	68	Main Campus
5015	MUEL	4012	1	B	34322	3-6	African Music	LEC	12:30 PM - 01:45 PM	TTH	MUS N180D		23	Main Campus
5016	EMU	1217	1	B	28228	1	University Singers	LEC	12:00 PM - 12:50 PM	M-TH	MCKY 102	Gentry,Gregory Reid	50	Main Campus
5017	EMU	1227	1	B	28231	1	University Choir	LEC	01:00 PM - 01:50 PM	M-TH	MCKY 102	Swanson,Elizabeth Kay	68	Main Campus
5018	EMU	1237	1	B	28234	1	Women's Chorus	STU	02:00 PM - 03:15 PM	TTH	MCKY 102		50	Main Campus
5019	EMU	1247	1	B	28679	1	Men's Chorus	STU	04:00 PM - 05:15 PM	MW	MCKY 102		50	Main Campus
5020	EMU	1257	1	B	28236	1	Collegiate Chorale	STU	03:30 PM - 04:45 PM	TTH	MCKY 102		68	Main Campus
5021	EMU	1287	1	B	28238	1	Marching Band	LEC	04:00 PM - 05:50 PM	MWF	See Class Notes For	Dockendorf,Matthew Paul	300	Main Campus
5022	EMU	1297	1	B	28472	1	Wind Symphony	STU	11:30 AM - 01:45 PM	TTH	MUS E160	McKinney,Donald J	60	Main Campus
5023	EMU	1307	1	B	28240	1	Symphonic Band	LEC	02:00 PM - 03:30 PM	MWF	MUS E160	Dockendorf,Matthew Paul	75	Main Campus
5024	EMU	1317	1	B	28243	1	Concert Band	STU	07:00 PM - 09:30 PM	M	MUS E160		115	Main Campus
5025	EMU	1327	1	B	28245	1	Symphony Orchestra	STU	12:00 PM - 01:30 PM	MWF	MUS E160	Lewis,Gary Joe	100	Main Campus
5026	EMU	1367	1	B	28248	1	Early Music Ensembles	LEC	-	TBA	See Academc Dept	Hill,Robert S	15	Main Campus
5027	EMU	1417	1	B	28251	1	Percussion Ensemble	STU	04:30 PM - 05:20 PM	T	See Class Notes For	Walter,Douglas William	15	Main Campus
5028	EMU	1417	1	B	28251	1	Percussion Ensemble	STU	03:30 PM - 05:20 PM	TH	See Class Notes For	Walter,Douglas William	15	Main Campus
5029	EMU	1417	2	B	28461	1	Percussion Ensemble	STU	04:00 PM - 06:50 PM	M	See Class Notes For	Dixon,Carl Day	15	Main Campus
5030	EMU	1427	1	B	28253	1	Jazz Ensemble	STU	04:30 PM - 06:00 PM	TTH	MUS E160		25	Main Campus
5031	EMU	1427	2	B	28715	1	Jazz Ensemble	STU	06:15 PM - 07:45 PM	TTH	MUS E160		25	Main Campus
5032	EMU	1427	3	B	28726	1	Jazz Ensemble	STU	06:15 PM - 07:45 PM	TTH	MCKY 1B03B		25	Main Campus
5033	EMU	1437	1	B	28456	1	Jazz Combo	STU	-	TBA	See Academc Dept		60	Main Campus
5034	EMU	1447	1	B	28258	1	Guitar Ensemble	STU	-	TBA	See Academc Dept	Spera,Nicolo Ruggero Ferruccio	10	Main Campus
5035	EMU	1467	1	B	28261	1	World Music Ensemble	STU	04:00 PM - 06:50 PM	TH	MCKY 1B03D	Itasaka,Mami	30	Main Campus
5036	EMU	1467	2	B	28263	1	World Music Ensemble	STU	06:00 PM - 08:50 PM	T	MCKY 1B03D	Lasmawan,I Made	30	Main Campus
5037	EMU	1467	3	B	28262	1	World Music Ensemble	STU	05:00 PM - 07:50 PM	M	MCKY 1B03D	Mensah,Maputo	30	Main Campus
5038	EMU	1507	800	B	28478	1	Chamber Music	STU	-	TBA		Weiss,Meta	50	Main Campus
5039	EMU	1507	801	B	28479	1	Chamber Music	STU	-	TBA	See Academc Dept	Weiss,Meta	50	Main Campus
5040	EMU	1507	802	B	28480	1	Chamber Music	STU	-	TBA	See Academc Dept	Weiss,Meta	50	Main Campus
5041	EMU	1507	803	B	28481	1	Chamber Music	STU	04:30 PM - 05:30 PM	TTH	See Academc Dept	Weiss,Meta	50	Main Campus
5042	EMU	1517	1	B	28270	1	Campus Orchestra	STU	07:00 PM - 09:30 PM	W	MUS E160		115	Main Campus
5043	EMU	3217	1	B	28229	1	University Singers	LEC	12:00 PM - 12:50 PM	M-TH	MCKY 102	Gentry,Gregory Reid	50	Main Campus
5044	EMU	3227	1	B	28232	1	University Choir	LEC	01:00 PM - 01:50 PM	M-TH	MCKY 102	Swanson,Elizabeth Kay	68	Main Campus
5045	EMU	3237	1	B	28235	1	Women's Chorus	STU	02:00 PM - 03:15 PM	TTH	MCKY 102		50	Main Campus
5046	EMU	3247	1	B	28680	1	Men's Chorus	STU	04:00 PM - 05:15 PM	MW	MCKY 102		50	Main Campus
5047	EMU	3257	1	B	28237	1	Collegiate Chorale	STU	03:30 PM - 04:45 PM	TTH	MCKY 102		68	Main Campus
5048	EMU	3287	1	B	28239	1	Marching Band	LEC	04:00 PM - 05:50 PM	MWF	See Class Notes For	Dockendorf,Matthew Paul	300	Main Campus
5049	EMU	3297	1	B	28473	1	Wind Symphony	STU	11:30 AM - 01:45 PM	TTH	MUS E160	McKinney,Donald J	60	Main Campus
5050	EMU	3307	1	B	28241	1	Symphonic Band	LEC	02:00 PM - 03:30 PM	MWF	MUS E160	Dockendorf,Matthew Paul	75	Main Campus
5051	EMU	3317	1	B	28244	1	Concert Band	STU	07:00 PM - 09:30 PM	M	MUS E160		115	Main Campus
5052	EMU	3327	1	B	28246	1	Symphony Orchestra	STU	12:00 PM - 01:30 PM	MWF	MUS E160	Lewis,Gary Joe	100	Main Campus
5053	EMU	3367	1	B	28249	1	Early Music Ensembles	LEC	-	TBA	See Academc Dept	Hill,Robert S	15	Main Campus
5054	EMU	3417	1	B	28252	1	Percussion Ensemble	STU	04:30 PM - 05:20 PM	T	See Class Notes For	Walter,Douglas William	15	Main Campus
5055	EMU	3417	1	B	28252	1	Percussion Ensemble	STU	03:30 PM - 05:20 PM	TH	See Class Notes For	Walter,Douglas William	15	Main Campus
5056	EMU	3417	2	B	28462	1	Percussion Ensemble	STU	04:00 PM - 06:50 PM	M	See Class Notes For	Dixon,Carl Day	15	Main Campus
5057	EMU	3427	1	B	28254	1	Jazz Ensemble	STU	04:30 PM - 06:00 PM	TTH	MUS E160		25	Main Campus
5058	EMU	3427	2	B	28716	1	Jazz Ensemble	STU	06:15 PM - 07:45 PM	TTH	MUS E160		25	Main Campus
5059	EMU	3427	3	B	28727	1	Jazz Ensemble	STU	06:15 PM - 07:45 PM	TTH	MCKY 1B03B		25	Main Campus
5060	EMU	3437	1	B	28256	1	Jazz Combo	STU	-	TBA	See Academc Dept		60	Main Campus
5061	EMU	3447	1	B	28259	1	Guitar Ensemble	STU	-	TBA	See Academc Dept	Spera,Nicolo Ruggero Ferruccio	10	Main Campus
5062	EMU	3467	1	B	28264	1	World Music Ensemble	STU	04:00 PM - 06:50 PM	TH	MCKY 1B03D	Itasaka,Mami	30	Main Campus
5063	EMU	3467	2	B	28266	1	World Music Ensemble	STU	06:00 PM - 08:50 PM	T	MCKY 1B03D	Lasmawan,I Made	30	Main Campus
5064	EMU	3467	3	B	28265	1	World Music Ensemble	STU	05:00 PM - 07:50 PM	M	MCKY 1B03D	Mensah,Maputo	30	Main Campus
5065	EMU	3507	800	B	28482	1	Chamber Music	STU	-	TBA		Weiss,Meta	50	Main Campus
5066	EMU	3507	801	B	28483	1	Chamber Music	STU	-	TBA	See Academc Dept	Weiss,Meta	50	Main Campus
5067	EMU	3507	802	B	28484	1	Chamber Music	STU	-	TBA	See Academc Dept	Weiss,Meta	50	Main Campus
5068	EMU	3507	803	B	28485	1	Chamber Music	STU	04:30 PM - 05:30 PM	TTH	See Academc Dept	Weiss,Meta	50	Main Campus
5069	EMU	3517	1	B	28271	1	Campus Orchestra	STU	07:00 PM - 09:30 PM	W	MUS E160		115	Main Campus
5070	EMU	5217	1	B	28230	1	University Singers	LEC	12:00 PM - 12:50 PM	M-TH	MCKY 102	Gentry,Gregory Reid	50	Main Campus
5071	EMU	5227	1	B	28233	1	University Choir	STU	01:00 PM - 01:50 PM	M-TH	MCKY 102	Swanson,Elizabeth Kay	68	Main Campus
5072	EMU	5297	1	B	28474	1	Wind Symphony	STU	11:30 AM - 01:45 PM	TTH	MUS E160	McKinney,Donald J	60	Main Campus
5073	EMU	5307	1	B	28242	1	Symphonic Band	LEC	02:00 PM - 03:30 PM	MWF	MUS E160	Dockendorf,Matthew Paul	75	Main Campus
5074	EMU	5327	1	B	28247	1	Symphony Orchestra	STU	12:00 PM - 01:30 PM	MWF	MUS E160	Lewis,Gary Joe	100	Main Campus
5075	EMU	5367	1	B	28250	1	Early Music Ensembles	LEC	-	TBA	See Academc Dept	Hill,Robert S	15	Main Campus
5076	EMU	5417	1	B	28723	1	Percussion Ensemble	STU	03:30 PM - 05:20 PM	TH	See Class Notes For	Walter,Douglas William	15	Main Campus
5077	EMU	5417	1	B	28723	1	Percussion Ensemble	STU	04:30 PM - 05:20 PM	T	See Class Notes For	Walter,Douglas William	15	Main Campus
5078	EMU	5417	2	B	28463	1	Percussion Ensemble	STU	04:00 PM - 06:50 PM	M	See Class Notes For	Dixon,Carl Day	15	Main Campus
5079	EMU	5427	1	B	28255	1	Jazz Ensemble	STU	04:30 PM - 06:00 PM	TTH	MUS E160		25	Main Campus
5080	EMU	5427	2	B	28717	1	Jazz Ensemble	STU	06:15 PM - 07:45 PM	TTH	MUS E160		25	Main Campus
5081	EMU	5427	3	B	28728	1	Jazz Ensemble	STU	06:15 PM - 07:45 PM	TTH	MCKY 1B03B		25	Main Campus
5082	EMU	5437	1	B	28257	1	Jazz Combo	STU	-	TBA	See Academc Dept		15	Main Campus
5083	EMU	5447	1	B	28260	1	Guitar Ensemble	STU	-	TBA	See Academc Dept	Spera,Nicolo Ruggero Ferruccio	10	Main Campus
5084	EMU	5467	1	B	28267	1	World Music Ensemble	STU	04:00 PM - 06:50 PM	TH	MCKY 1B03D	Itasaka,Mami	30	Main Campus
5085	EMU	5467	2	B	28269	1	World Music Ensemble	STU	06:00 PM - 08:50 PM	T	MCKY 1B03D	Lasmawan,I Made	30	Main Campus
5086	EMU	5467	3	B	28268	1	World Music Ensemble	STU	05:00 PM - 07:50 PM	M	MCKY 1B03D	Mensah,Maputo	30	Main Campus
5087	EMU	5507	800	B	28486	1	Chamber Music	STU	-	TBA		Weiss,Meta	50	Main Campus
5088	EMU	5507	801	B	28487	1	Chamber Music	STU	-	TBA	See Academc Dept	Weiss,Meta	50	Main Campus
5089	EMU	5507	802	B	28488	1	Chamber Music	STU	-	TBA	See Academc Dept	Weiss,Meta	50	Main Campus
5090	EMU	5507	803	B	28489	1	Chamber Music	STU	04:30 PM - 05:30 PM	TTH	See Academc Dept	Weiss,Meta	50	Main Campus
5091	PMU	1117	1	B	34394	2	Musical Theatre Studio I	LEC	09:00 AM - 09:50 AM	MWF	MUS N1B95D	Chellis,Matthew Wren	15	Main Campus
5092	PMU	1184	1	B	34395	1	Voice Class	LEC	11:00 AM - 11:50 AM	TTH	MUS C125		10	Main Campus
5093	PMU	1506	800	B	28655	2-4	Bassoon	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Ishikawa,Yoshiyuki	25	Main Campus
5094	PMU	1515	1	B	28707	2	Jazz Piano Class	LEC	12:00 PM - 12:50 PM	MW	MUS N180C	Jenkins,Jeffrey C	15	Main Campus
5095	PMU	1516	800	B	28659	2-4	Clarinet	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Silver,Daniel S	25	Main Campus
5096	PMU	1526	800	B	28294	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Drumheller III,John Earl	15	Main Campus
5097	PMU	1526	801	B	28295	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Kellogg,Daniel Dixon	15	Main Campus
5098	PMU	1526	802	B	28296	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5099	PMU	1526	803	B	28297	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5100	PMU	1526	804	B	28444	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Nytch,Jeffrey	15	Main Campus
5101	PMU	1546	800	B	28519	2-4	Euphonium	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5102	PMU	1556	800	B	28663	2-4	Flute	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Jennings,Christina A	25	Main Campus
5103	PMU	1566	800	B	28448	2-4	Guitar	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Spera,Nicolo Ruggero Ferruccio	25	Main Campus
5104	PMU	1576	800	B	28576	2-4	Harp	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Harriman,Janet Kay	5	Main Campus
5105	PMU	1586	800	B	28529	2-4	Harpsichord	STU	-	TBA	See Academc Dept	Hill,Robert S	10	Main Campus
5106	PMU	1596	800	B	28523	2-4	Horn	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Thornton,Michael Robert	25	Main Campus
5107	PMU	1606	800	B	28667	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Cooper,Peter W.	25	Main Campus
5108	PMU	1606	801	B	28668	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Lichtenwalter,Jason M	25	Main Campus
5109	PMU	1616	800	B	28530	2-4	Organ	STU	-	TBA	MCKY 213	Hill,Robert S	10	Main Campus
5110	PMU	1626	800	B	28558	2-4	Percussion	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Walter,Douglas William	25	Main Campus
5111	PMU	1636	800	B	28534	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5112	PMU	1636	801	B	28535	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For		20	Main Campus
5113	PMU	1636	802	B	28536	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Hayghe,Jennifer C	20	Main Campus
5114	PMU	1636	803	B	28537	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cooperstock,Andrew B	20	Main Campus
5115	PMU	1636	804	B	28538	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5116	PMU	1636	805	B	28539	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Sher,Daniel P	20	Main Campus
5117	PMU	1646	800	B	28675	2-4	Saxophone	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Myer,Tom R	25	Main Campus
5118	PMU	1656	800	B	28581	2-4	Double Bass	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5119	PMU	1666	800	B	28562	2-4	Trombone	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Stanley,William J	25	Main Campus
5120	PMU	1676	800	B	28566	2-4	Trumpet	STU	03:30 PM - 04:20 PM	T	See Class Notes For		25	Main Campus
5121	PMU	1686	800	B	28570	2-4	Tuba	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5122	PMU	1696	800	B	28586	2-4	Viola	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Eckert,Erika L	25	Main Campus
5123	PMU	1706	800	B	28590	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Rhodes,Harumi B	6	Main Campus
5124	PMU	1706	802	B	28686	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5125	PMU	1706	803	B	28778	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Schranz,Karoly	25	Main Campus
5126	PMU	1716	800	B	28598	2-4	Violoncello	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Requiro,David	25	Main Campus
5127	PMU	1726	800	B	28625	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Bird-Arvidsson,Jennifer	25	Main Campus
5128	PMU	1726	801	B	28626	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Chellis,Matthew Wren	25	Main Campus
5129	PMU	1726	802	B	28627	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Nims,Abigail Andrews	25	Main Campus
5130	PMU	1726	803	B	28628	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Seesholtz,John	25	Main Campus
5131	PMU	1726	804	B	28629	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Garland,Andrew B	25	Main Campus
5132	PMU	1806	800	B	28692	2-4	Jazz Piano	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Jenkins,Jeffrey C	15	Main Campus
5133	PMU	1816	800	B	28353	2-4	Jazz Bass	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Barbosa,Eduardo Da Silva	15	Main Campus
5134	PMU	1826	800	B	28359	2-4	Jazz Drum Set	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Romaine,Paul Christian	15	Main Campus
5135	PMU	1846	800	B	28365	2-4	Jazz Guitar	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Corbus,David Allen	15	Main Campus
5136	PMU	1856	800	B	28371	2-4	Jazz Trumpet	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Goode,Bradley M.	15	Main Campus
5137	PMU	1866	800	B	28377	2-4	Jazz Trombone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	McKee,Paul	15	Main Campus
5138	PMU	1876	800	B	28383	2-4	Jazz Saxophone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Gunther,John G	15	Main Campus
5139	PMU	2506	800	B	28656	2-4	Bassoon	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Ishikawa,Yoshiyuki	25	Main Campus
5140	PMU	2516	800	B	28660	2-4	Clarinet	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Silver,Daniel S	25	Main Campus
5141	PMU	2526	800	B	28605	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Drumheller III,John Earl	15	Main Campus
5142	PMU	2526	801	B	28606	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Kellogg,Daniel Dixon	15	Main Campus
5143	PMU	2526	802	B	28607	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5144	PMU	2526	803	B	28608	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5145	PMU	2526	804	B	28609	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Nytch,Jeffrey	15	Main Campus
5146	PMU	2546	800	B	28520	2-4	Euphonium	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5147	PMU	2556	800	B	28664	2-4	Flute	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Jennings,Christina A	25	Main Campus
5148	PMU	2566	800	B	28449	2-4	Guitar	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Spera,Nicolo Ruggero Ferruccio	25	Main Campus
5149	PMU	2576	800	B	28577	2-4	Harp	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Harriman,Janet Kay	5	Main Campus
5150	PMU	2586	800	B	28303	2-4	Harpsichord	STU	-	TBA	See Academc Dept	Hill,Robert S	10	Main Campus
5151	PMU	2596	800	B	28524	2-4	Horn	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Thornton,Michael Robert	25	Main Campus
5152	PMU	2606	800	B	28669	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Cooper,Peter W.	25	Main Campus
5153	PMU	2606	801	B	28670	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Lichtenwalter,Jason M	25	Main Campus
5154	PMU	2616	800	B	28531	2-4	Organ	STU	-	TBA	MCKY 213	Hill,Robert S	10	Main Campus
5155	PMU	2626	800	B	28559	2-4	Percussion	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Walter,Douglas William	25	Main Campus
5156	PMU	2636	800	B	28540	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5157	PMU	2636	801	B	28541	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For		20	Main Campus
5158	PMU	2636	802	B	28542	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Hayghe,Jennifer C	20	Main Campus
5159	PMU	2636	803	B	28543	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cooperstock,Andrew B	20	Main Campus
5160	PMU	2636	804	B	28544	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5161	PMU	2636	805	B	28545	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Sher,Daniel P	20	Main Campus
5162	PMU	2646	800	B	28676	2-4	Saxophone	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Myer,Tom R	25	Main Campus
5163	PMU	2656	800	B	28582	2-4	Double Bass	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5164	PMU	2666	800	B	28563	2-4	Trombone	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Stanley,William J	25	Main Campus
5165	PMU	2676	800	B	28567	2-4	Trumpet	STU	03:30 PM - 04:20 PM	T	See Class Notes For		25	Main Campus
5166	PMU	2686	800	B	28571	2-4	Tuba	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5167	PMU	2696	800	B	28587	2-4	Viola	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Eckert,Erika L	25	Main Campus
5168	PMU	2706	800	B	28592	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Rhodes,Harumi B	6	Main Campus
5169	PMU	2706	801	B	28593	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5170	PMU	2706	802	B	28689	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5171	PMU	2706	803	B	28779	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Schranz,Karoly	25	Main Campus
5172	PMU	2716	800	B	28599	2-4	Violoncello	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Requiro,David	25	Main Campus
5173	PMU	2726	800	B	28635	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Bird-Arvidsson,Jennifer	25	Main Campus
5174	PMU	2726	801	B	28636	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Chellis,Matthew Wren	25	Main Campus
5175	PMU	2726	802	B	28637	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Nims,Abigail Andrews	25	Main Campus
5176	PMU	2726	803	B	28638	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Seesholtz,John	25	Main Campus
5177	PMU	2726	804	B	28639	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Garland,Andrew B	25	Main Campus
5178	PMU	2806	800	B	28693	2-4	Jazz Piano	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Jenkins,Jeffrey C	15	Main Campus
5179	PMU	2816	800	B	28354	2-4	Jazz Bass	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Barbosa,Eduardo Da Silva	15	Main Campus
5180	PMU	2826	800	B	28360	2-4	Jazz Drum Set	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Romaine,Paul Christian	15	Main Campus
5181	PMU	2846	800	B	28366	2-4	Jazz Guitar	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Corbus,David Allen	15	Main Campus
5182	PMU	2856	800	B	28372	2-4	Jazz Trumpet	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Goode,Bradley M.	15	Main Campus
5183	PMU	2866	800	B	28378	2-4	Jazz Trombone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	McKee,Paul	15	Main Campus
5184	PMU	2876	800	B	28384	2-4	Jazz Saxophone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Gunther,John G	15	Main Campus
5185	PMU	3506	800	B	28657	2-4	Bassoon	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Ishikawa,Yoshiyuki	25	Main Campus
5186	PMU	3516	800	B	28661	2-4	Clarinet	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Silver,Daniel S	25	Main Campus
5187	PMU	3526	800	B	28610	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Drumheller III,John Earl	15	Main Campus
5188	PMU	3526	801	B	28611	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Kellogg,Daniel Dixon	15	Main Campus
5189	PMU	3526	802	B	28612	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5190	PMU	3526	803	B	28613	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5191	PMU	3526	804	B	28614	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Nytch,Jeffrey	15	Main Campus
5192	PMU	3546	800	B	28521	2-4	Euphonium	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5193	PMU	3556	800	B	28665	2-4	Flute	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Jennings,Christina A	25	Main Campus
5194	PMU	3566	800	B	28574	2-4	Guitar	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Spera,Nicolo Ruggero Ferruccio	25	Main Campus
5195	PMU	3576	800	B	28302	2-4	Harp	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Harriman,Janet Kay	5	Main Campus
5196	PMU	3586	800	B	28304	2-4	Harpsichord	STU	-	TBA	See Academc Dept	Hill,Robert S	10	Main Campus
5197	PMU	3596	800	B	28525	2-4	Horn	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Thornton,Michael Robert	25	Main Campus
5198	PMU	3606	800	B	28671	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Cooper,Peter W.	25	Main Campus
5199	PMU	3606	801	B	28672	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Lichtenwalter,Jason M	25	Main Campus
5200	PMU	3616	800	B	28532	2-4	Organ	STU	-	TBA	MCKY 213	Hill,Robert S	10	Main Campus
5201	PMU	3626	800	B	28560	2-4	Percussion	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Walter,Douglas William	25	Main Campus
5202	PMU	3636	800	B	28546	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5203	PMU	3636	801	B	28547	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For		20	Main Campus
5204	PMU	3636	802	B	28548	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Hayghe,Jennifer C	20	Main Campus
5205	PMU	3636	803	B	28549	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cooperstock,Andrew B	20	Main Campus
5206	PMU	3636	804	B	28550	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5207	PMU	3636	805	B	28551	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Sher,Daniel P	20	Main Campus
5208	PMU	3646	800	B	28677	2-4	Saxophone	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Myer,Tom R	25	Main Campus
5209	PMU	3656	800	B	28583	2-4	Double Bass	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5210	PMU	3666	800	B	28564	2-4	Trombone	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Stanley,William J	25	Main Campus
5211	PMU	3676	800	B	28568	2-4	Trumpet	STU	03:30 PM - 04:20 PM	T	See Class Notes For		25	Main Campus
5212	PMU	3686	800	B	28572	2-4	Tuba	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5213	PMU	3696	800	B	28588	2-4	Viola	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Eckert,Erika L	25	Main Campus
5214	PMU	3706	800	B	28594	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Rhodes,Harumi B	6	Main Campus
5215	PMU	3706	801	B	28595	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5216	PMU	3706	802	B	28687	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5217	PMU	3706	803	B	28780	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Schranz,Karoly	25	Main Campus
5218	PMU	3716	800	B	28600	2-4	Violoncello	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Requiro,David	25	Main Campus
5219	PMU	3726	800	B	28645	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Bird-Arvidsson,Jennifer	25	Main Campus
5220	PMU	3726	801	B	28646	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Chellis,Matthew Wren	25	Main Campus
5221	PMU	3726	802	B	28647	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Nims,Abigail Andrews	25	Main Campus
5222	PMU	3726	803	B	28648	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Seesholtz,John	25	Main Campus
5223	PMU	3726	804	B	28649	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Garland,Andrew B	25	Main Campus
5224	PMU	3806	800	B	28694	2-4	Jazz Piano	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Jenkins,Jeffrey C	15	Main Campus
5225	PMU	3816	800	B	28355	2-4	Jazz Bass	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Barbosa,Eduardo Da Silva	15	Main Campus
5226	PMU	3826	800	B	28361	2-4	Jazz Drum Set	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Romaine,Paul Christian	15	Main Campus
5227	PMU	3846	800	B	28367	2-4	Jazz Guitar	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Corbus,David Allen	15	Main Campus
5228	PMU	3856	800	B	28373	2-4	Jazz Trumpet	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Goode,Bradley M.	15	Main Campus
5229	PMU	3866	800	B	28379	2-4	Jazz Trombone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	McKee,Paul	15	Main Campus
5230	PMU	3876	800	B	28385	2-4	Jazz Saxophone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Gunther,John G	15	Main Campus
5231	PMU	4105	800	B	34296	1	Supervised Accompanying	LEC	-	TBA	See Academc Dept	Mc Donald,Margaret Mary	12	Main Campus
5232	PMU	4105	800	B	34296	1	Supervised Accompanying	LEC	-	TBA	See Academc Dept	Kim,Suyeon	12	Main Campus
5233	PMU	4105	800	B	34296	1	Supervised Accompanying	LEC	-	TBA	See Academc Dept	Nguyen,Alexandra	12	Main Campus
5234	PMU	4137	1	B	28220	1	Opera Theatre 1	STU	10:00 AM - 10:50 AM	MW	MUS N1B95D	Holman,Leigh Karen	20	Main Campus
5235	PMU	4157	1	B	28221	1-3	Opera Practicum	PRA	07:00 PM - 09:50 PM	MTTF	MUS N1B95D	Holman,Leigh Karen	20	Main Campus
5236	PMU	4157	1	B	28221	1-3	Opera Practicum	PRA	07:00 PM - 09:50 PM	MTTF	MUS N1B95D	Carthy,Nicholas R.	20	Main Campus
5237	PMU	4157	1	B	28221	1-3	Opera Practicum	PRA	04:00 PM - 06:00 PM		MUS N1B95D	Holman,Leigh Karen	20	Main Campus
5238	PMU	4157	1	B	28221	1-3	Opera Practicum	PRA	04:00 PM - 06:00 PM		MUS N1B95D	Carthy,Nicholas R.	20	Main Campus
5239	PMU	4167	1	B	34396	1-3	Opera Theatre Lab	PRA	-	TBA	See Academc Dept	Mueller,Ronald Wayne	20	Main Campus
5240	PMU	4497	1	B	28222	1-2	Vocal Rep. Coaching	LEC	11:00 AM - 11:50 AM	MW	MUS N1B59	Reger,Jeremy J	12	Main Campus
5241	PMU	4506	800	B	28658	2-4	Bassoon	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Ishikawa,Yoshiyuki	25	Main Campus
5242	PMU	4516	800	B	28662	2-4	Clarinet	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Silver,Daniel S	25	Main Campus
5243	PMU	4517	1	B	28223	2	Orchestral Repertoire	LEC	04:00 PM - 04:50 PM	MW	MUS N180D		20	Main Campus
5244	PMU	4526	800	B	28615	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Drumheller III,John Earl	15	Main Campus
5245	PMU	4526	801	B	28616	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Kellogg,Daniel Dixon	15	Main Campus
5246	PMU	4526	802	B	28617	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5247	PMU	4526	803	B	28618	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5248	PMU	4526	804	B	28619	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Nytch,Jeffrey	15	Main Campus
5249	PMU	4546	800	B	28522	2-4	Euphonium	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5250	PMU	4556	800	B	28666	2-4	Flute	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Jennings,Christina A	25	Main Campus
5251	PMU	4566	800	B	28575	2-4	Guitar	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Spera,Nicolo Ruggero Ferruccio	25	Main Campus
5252	PMU	4576	800	B	28578	2-4	Harp	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Harriman,Janet Kay	5	Main Campus
5253	PMU	4586	800	B	28305	2-4	Harpsichord	STU	-	TBA	See Academc Dept	Hill,Robert S	10	Main Campus
5254	PMU	4596	800	B	28526	2-4	Horn	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Thornton,Michael Robert	25	Main Campus
5255	PMU	4606	800	B	28673	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Cooper,Peter W.	25	Main Campus
5256	PMU	4606	801	B	28674	2-4	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Lichtenwalter,Jason M	25	Main Campus
5257	PMU	4616	800	B	28533	2-4	Organ	STU	-	TBA	MCKY 213	Hill,Robert S	10	Main Campus
5258	PMU	4626	800	B	28561	2-4	Percussion	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Walter,Douglas William	25	Main Campus
5259	PMU	4636	800	B	28552	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5260	PMU	4636	801	B	28553	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For		20	Main Campus
5261	PMU	4636	802	B	28554	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Hayghe,Jennifer C	20	Main Campus
5262	PMU	4636	803	B	28555	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cooperstock,Andrew B	20	Main Campus
5263	PMU	4636	804	B	28556	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5264	PMU	4636	805	B	28557	2-4	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Sher,Daniel P	20	Main Campus
5265	PMU	4646	800	B	28678	2-4	Saxophone	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Myer,Tom R	25	Main Campus
5266	PMU	4656	800	B	28584	2-4	Double Bass	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5267	PMU	4666	800	B	28565	2-4	Trombone	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Stanley,William J	25	Main Campus
5268	PMU	4676	800	B	28569	2-4	Trumpet	STU	03:30 PM - 04:20 PM	T	See Class Notes For		25	Main Campus
5269	PMU	4686	800	B	28573	2-4	Tuba	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5270	PMU	4696	800	B	28589	2-4	Viola	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Eckert,Erika L	25	Main Campus
5271	PMU	4706	800	B	28596	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Rhodes,Harumi B	6	Main Campus
5272	PMU	4706	801	B	28597	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5273	PMU	4706	802	B	28690	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5274	PMU	4706	803	B	28781	2-4	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Schranz,Karoly	25	Main Campus
5275	PMU	4716	800	B	28601	2-4	Violoncello	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Requiro,David	25	Main Campus
5276	PMU	4726	800	B	28650	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Bird-Arvidsson,Jennifer	25	Main Campus
5277	PMU	4726	801	B	28651	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Chellis,Matthew Wren	25	Main Campus
5278	PMU	4726	802	B	28652	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Nims,Abigail Andrews	25	Main Campus
5279	PMU	4726	803	B	28653	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Seesholtz,John	25	Main Campus
5280	PMU	4726	804	B	28654	2-4	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Garland,Andrew B	25	Main Campus
5281	PMU	4806	800	B	28695	2-4	Jazz Piano	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Jenkins,Jeffrey C	15	Main Campus
5282	PMU	4816	800	B	28356	2-4	Jazz Bass	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Barbosa,Eduardo Da Silva	15	Main Campus
5283	PMU	4826	800	B	28362	2-4	Jazz Drum Set	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Romaine,Paul Christian	15	Main Campus
5284	PMU	4846	800	B	28368	2-4	Jazz Guitar	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Corbus,David Allen	15	Main Campus
5285	PMU	4856	800	B	28374	2-4	Jazz Trumpet	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Goode,Bradley M.	15	Main Campus
5286	PMU	4866	800	B	28380	2-4	Jazz Trombone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	McKee,Paul	15	Main Campus
5287	PMU	4876	800	B	28388	2-4	Jazz Saxophone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Gunther,John G	15	Main Campus
5288	PMU	5137	1	B	28224	2	Opera Theatre 1	STU	01:00 PM - 02:50 PM	MW	MUS N1B95D	Holman,Leigh Karen	20	Main Campus
5289	PMU	5157	1	B	28225	1-3	Opera Theatre Practicum	PRA	04:00 PM - 06:00 PM		MUS N1B95D	Holman,Leigh Karen	20	Main Campus
5290	PMU	5157	1	B	28225	1-3	Opera Theatre Practicum	PRA	04:00 PM - 06:00 PM		MUS N1B95D	Carthy,Nicholas R.	20	Main Campus
5291	PMU	5157	1	B	28225	1-3	Opera Theatre Practicum	PRA	07:00 PM - 09:50 PM	MTTF	MUS N1B95D	Carthy,Nicholas R.	20	Main Campus
5292	PMU	5157	1	B	28225	1-3	Opera Theatre Practicum	PRA	07:00 PM - 09:50 PM	MTTF	MUS N1B95D	Holman,Leigh Karen	20	Main Campus
5293	PMU	5497	1	B	28226	1-2	Vocal Repertoire Coaching	LEC	11:00 AM - 11:50 AM	MW	MUS N1B59	Reger,Jeremy J	12	Main Campus
5294	PMU	5497	2	B	28227	1-2	Vocal Repertoire Coaching	LEC	- 12:50 AM	TBA	See Academc Dept	Reger,Jeremy J	10	Main Campus
5295	PMU	5497	3	B	35261	1-2	Vocal Repertoire Coaching	LEC	- 12:50 AM	TBA	See Academc Dept	Moteki,Mutsumi	10	Main Campus
5296	PMU	5506	1	B	28272	2-3	Bassoon	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Ishikawa,Yoshiyuki	25	Main Campus
5297	PMU	5516	1	B	28274	2-3	Clarinet	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Silver,Daniel S	25	Main Campus
5298	PMU	5526	1	B	28620	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Drumheller III,John Earl	15	Main Campus
5299	PMU	5526	2	B	28621	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Kellogg,Daniel Dixon	15	Main Campus
5300	PMU	5526	3	B	28622	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5301	MU	5526	4	B	28623	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213		15	Main Campus
5302	PMU	5526	5	B	28624	2-3	Composition	STU	02:00 PM - 03:50 PM	W	MCKY 213	Nytch,Jeffrey	15	Main Campus
5303	PMU	5536	1	B	28507	2-4	Intermed Conducting	STU	-	TBA	See Academc Dept	Lewis,Gary Joe	5	Main Campus
5304	PMU	5536	2	B	28508	2-4	Intermed Conducting	STU	-	TBA	See Academc Dept	Gentry,Gregory Reid	5	Main Campus
5305	PMU	5536	3	B	28509	2-4	Intermed Conducting	STU	-	TBA	See Academc Dept	Roeder,Matthew James	5	Main Campus
5306	PMU	5536	4	B	28510	2-4	Intermed Conducting	STU	-	TBA	See Academc Dept	McKinney,Donald J	5	Main Campus
5307	PMU	5536	5	B	28511	2-4	Intermed Conducting	STU	-	TBA	See Academc Dept	Swanson,Elizabeth Kay	5	Main Campus
5308	PMU	5546	1	B	28298	2-3	Euphonium	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5309	PMU	5556	1	B	28300	2-3	Flute	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Jennings,Christina A	25	Main Campus
5310	PMU	5566	1	B	28450	2-3	Guitar	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Spera,Nicolo Ruggero Ferruccio	25	Main Campus
5311	PMU	5576	1	B	28579	2-3	Harp	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Harriman,Janet Kay	5	Main Campus
5312	PMU	5586	1	B	28306	2-3	Harpsichord	STU	-	TBA	See Academc Dept	Hill,Robert S	10	Main Campus
5313	PMU	5596	1	B	28308	2-3	Horn	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Thornton,Michael Robert	25	Main Campus
5314	PMU	5606	1	B	28310	2-3	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Cooper,Peter W.	25	Main Campus
5315	PMU	5606	2	B	28311	2-3	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Lichtenwalter,Jason M	25	Main Campus
5316	PMU	5616	1	B	28313	2-3	Organ	STU	-	TBA	MCKY 213	Hill,Robert S	10	Main Campus
5317	PMU	5626	1	B	28315	2-3	Percussion	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Walter,Douglas William	25	Main Campus
5318	PMU	5636	1	B	28317	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5319	PMU	5636	2	B	28318	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For		20	Main Campus
5320	PMU	5636	3	B	28319	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Hayghe,Jennifer C	20	Main Campus
5321	PMU	5636	4	B	28320	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cooperstock,Andrew B	20	Main Campus
5322	PMU	5636	5	B	28321	2-3	Piano	STU	04:00 PM - 05:50 PM	M	See Class Notes For	Nguyen,Alexandra	10	Main Campus
5323	PMU	5636	5	B	28321	2-3	Piano	STU	04:00 PM - 05:50 PM	M	See Class Notes For	Mc Donald,Margaret Mary	10	Main Campus
5324	PMU	5636	6	B	28501	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Sher,Daniel P	20	Main Campus
5325	PMU	5646	1	B	28327	2-3	Saxophone	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Myer,Tom R	25	Main Campus
5326	PMU	5656	1	B	28329	2-3	Double Bass	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5327	PMU	5666	1	B	28330	2-3	Trombone	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Stanley,William J	25	Main Campus
5328	PMU	5676	1	B	28332	2-3	Trumpet	STU	03:30 PM - 04:20 PM	T	See Class Notes For		25	Main Campus
5329	PMU	5686	1	B	28334	2-3	Tuba	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5330	PMU	5696	1	B	28336	2-3	Viola	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Eckert,Erika L	25	Main Campus
5331	PMU	5706	1	B	28338	2-3	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Rhodes,Harumi B	6	Main Campus
5332	PMU	5706	3	B	28688	2-3	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5333	PMU	5706	4	B	28782	2-3	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Schranz,Karoly	25	Main Campus
5334	PMU	5716	1	B	28602	2-3	Violoncello	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Requiro,David	25	Main Campus
5335	PMU	5726	1	B	28343	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Bird-Arvidsson,Jennifer	25	Main Campus
5336	PMU	5726	2	B	28344	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Chellis,Matthew Wren	25	Main Campus
5337	PMU	5726	3	B	28345	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Nims,Abigail Andrews	25	Main Campus
5338	PMU	5726	4	B	28346	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Seesholtz,John	25	Main Campus
5339	PMU	5726	5	B	28347	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Garland,Andrew B	25	Main Campus
5340	PMU	5806	1	B	28696	1-2	Jazz Piano	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Jenkins,Jeffrey C	15	Main Campus
5341	PMU	5816	1	B	28357	1-2	Jazz Bass	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Barbosa,Eduardo Da Silva	15	Main Campus
5342	PMU	5826	1	B	28363	1-2	Jazz Drum Set	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Romaine,Paul Christian	15	Main Campus
5343	PMU	5846	1	B	28369	1-2	Jazz Guitar	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Corbus,David Allen	15	Main Campus
5344	PMU	5856	1	B	28375	1-2	Jazz Trumpet	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Goode,Bradley M.	15	Main Campus
5345	PMU	5866	1	B	28381	1-2	Jazz Trombone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	McKee,Paul	15	Main Campus
5346	PMU	5876	1	B	28386	1-2	Jazz Saxophone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Gunther,John G	15	Main Campus
5347	PMU	6506	1	B	28273	2-3	Bassoon	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Ishikawa,Yoshiyuki	25	Main Campus
5348	PMU	6516	1	B	28275	2-3	Clarinet	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Silver,Daniel S	25	Main Campus
5349	PMU	6536	1	B	28512	2-4	Adv Conducting	STU	-	TBA	See Academc Dept	Lewis,Gary Joe	5	Main Campus
5350	PMU	6536	2	B	28513	2-4	Adv Conducting	STU	-	TBA	See Academc Dept	Gentry,Gregory Reid	5	Main Campus
5351	PMU	6536	3	B	28514	2-4	Adv Conducting	STU	-	TBA	See Academc Dept	Roeder,Matthew James	5	Main Campus
5352	PMU	6536	4	B	28515	2-4	Adv Conducting	STU	-	TBA	See Academc Dept	McKinney,Donald J	5	Main Campus
5353	PMU	6536	5	B	28516	2-4	Adv Conducting	STU	-	TBA	See Academc Dept	Swanson,Elizabeth Kay	5	Main Campus
5354	PMU	6546	1	B	28299	2-3	Euphonium	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5355	PMU	6556	1	B	28301	2-3	Flute	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Jennings,Christina A	25	Main Campus
5356	PMU	6566	1	B	28451	2-3	Guitar	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Spera,Nicolo Ruggero Ferruccio	25	Main Campus
5357	PMU	6576	1	B	28580	2-3	Harp	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Harriman,Janet Kay	5	Main Campus
5358	PMU	6586	1	B	28307	2-4	Harpsichord	STU	-	TBA	See Academc Dept	Hill,Robert S	10	Main Campus
5359	PMU	6596	1	B	28309	2-3	Horn	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Thornton,Michael Robert	25	Main Campus
5360	PMU	6606	1	B	28312	2-3	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Cooper,Peter W.	25	Main Campus
5361	PMU	6606	2	B	28698	2-3	Oboe	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Lichtenwalter,Jason M	25	Main Campus
5362	PMU	6616	1	B	28314	2-3	Organ	STU	-	TBA	MCKY 213	Hill,Robert S	10	Main Campus
5363	PMU	6626	1	B	28316	2-3	Percussion	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Walter,Douglas William	25	Main Campus
5364	PMU	6636	1	B	28322	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cremaschi,Alejandro M	20	Main Campus
5365	PMU	6636	2	B	28323	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For		20	Main Campus
5366	PMU	6636	3	B	28324	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Hayghe,Jennifer C	20	Main Campus
5367	PMU	6636	4	B	28325	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Cooperstock,Andrew B	20	Main Campus
5368	PMU	6636	5	B	28326	2-3	Piano	STU	04:00 PM - 05:50 PM	M	See Class Notes For	Mc Donald,Margaret Mary	10	Main Campus
5369	PMU	6636	5	B	28326	2-3	Piano	STU	04:00 PM - 05:50 PM	M	See Class Notes For	Nguyen,Alexandra	10	Main Campus
5370	PMU	6636	6	B	28502	2-3	Piano	STU	02:00 PM - 02:50 PM	M	See Class Notes For	Sher,Daniel P	20	Main Campus
5371	PMU	6646	1	B	28328	2-3	Saxophone	STU	03:30 PM - 04:20 PM	TH	See Class Notes For	Myer,Tom R	25	Main Campus
5372	PMU	6656	1	B	28585	2-3	Double Bass	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5373	PMU	6666	1	B	28331	2-3	Trombone	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Stanley,William J	25	Main Campus
5374	PMU	6676	1	B	28333	2-3	Trumpet	STU	03:30 PM - 04:20 PM	T	See Class Notes For		25	Main Campus
5375	PMU	6686	1	B	28335	2-3	Tuba	STU	03:30 PM - 04:20 PM	T	See Class Notes For	Dunn,James M	25	Main Campus
5376	PMU	6696	1	B	28337	2-3	Viola	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Eckert,Erika L	25	Main Campus
5377	PMU	6706	1	B	28340	2-3	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Rhodes,Harumi B	6	Main Campus
5378	PMU	6706	3	B	28691	2-3	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For		25	Main Campus
5379	PMU	6706	4	B	28783	2-3	Violin	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Schranz,Karoly	25	Main Campus
5380	PMU	6716	1	B	28342	2-3	Violoncello	STU	03:00 PM - 03:50 PM	M	See Class Notes For	Requiro,David	25	Main Campus
5381	PMU	6726	1	B	28348	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Bird-Arvidsson,Jennifer	25	Main Campus
5382	PMU	6726	2	B	28349	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Chellis,Matthew Wren	25	Main Campus
5383	PMU	6726	3	B	28350	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Nims,Abigail Andrews	25	Main Campus
5384	PMU	6726	4	B	28351	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Seesholtz,John	25	Main Campus
5385	PMU	6726	5	B	28352	2-3	Voice	STU	03:00 PM - 03:50 PM	W	See Class Notes For	Garland,Andrew B	25	Main Campus
5386	PMU	6806	1	B	28697	1-2	Jazz Piano	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Jenkins,Jeffrey C	15	Main Campus
5387	PMU	6816	1	B	28358	1-2	Jazz Bass	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Barbosa,Eduardo Da Silva	15	Main Campus
5388	PMU	6826	1	B	28364	1-2	Jazz Drum Set	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Romaine,Paul Christian	15	Main Campus
5389	PMU	6846	1	B	28370	1-2	Jazz Guitar	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Corbus,David Allen	15	Main Campus
5390	PMU	6856	1	B	28376	1-2	Jazz Trumpet	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Goode,Bradley M.	15	Main Campus
5391	PMU	6866	1	B	28382	1-2	Jazz Trombone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	McKee,Paul	15	Main Campus
5392	PMU	6876	1	B	28387	1-2	Jazz Saxophone	STU	11:00 AM - 11:50 AM	TH	MCKY 1B03B	Gunther,John G	15	Main Campus
5393	TMUS	4413	800	B	28277	1-3	Special Study Music Education	LEC	-			Austin,James R	15	Main Campus
5394	TMUS	4423	800	B	28278	1-3	Special Study Music Theory	LEC	-			Austin,James R	12	Main Campus
5395	TMUS	4433	800	B	28279	1-3	Sp Stdy Choral	LEC	-			Austin,James R	15	Main Campus
5396	TMUS	4443	800	B	28280	1-3	Special Study Keyboard	LEC	-			Austin,James R	15	Main Campus
5397	TMUS	4453	800	B	28281	1-3	Sp Stdy Conducting	LEC	-			Austin,James R	15	Main Campus
5398	TMUS	4473	800	B	28283	1-3	Special Study Voice	LEC	-			Austin,James R	15	Main Campus
5399	TMUS	4483	800	B	28284	1-3	Sp Stdy Wind/Brass/Perc	LEC	-			Austin,James R	15	Main Campus
5400	TMUS	4493	800	B	28285	1-3	Special Studies Omnibus	LEC	-			Austin,James R	15	Main Campus
5401	AIRR	1010	10	B	24396	1	Foundations of USAF I	LEC	11:00 AM - 11:50 AM	TH	STAD 112	Sheiner,Chad	45	Main Campus
5402	AIRR	1010	20	B	24398	1	Foundations of USAF I	LEC	02:00 PM - 02:50 PM	TH	ECCR 245	Sheiner,Chad	45	Main Campus
5403	AIRR	1234	1	B	35137	0	Leadership Laboratory	LAB	03:30 PM - 04:20 PM	TH	DUAN G1B30		325	Main Campus
5404	AIRR	2010	10	B	24400	1	Evl USAF Air/Space Pwr 1	LEC	12:30 PM - 01:20 PM	TH	STAD 112	Cruz,Steve	25	Main Campus
5405	AIRR	2010	20	B	24401	1	Evl USAF Air/Space Pwr 1	LEC	02:00 PM - 02:50 PM	TH	STAD 112	Cruz,Steve	25	Main Campus
5406	AIRR	3010	10	B	24402	3	Air Force Leaderships Stds I	LEC	09:30 AM - 10:45 AM	TTH	DUAN G2B21	Barnes,Danielle	30	Main Campus
5407	AIRR	3010	10	B	24402	3	Air Force Leaderships Stds I	LEC	09:30 AM - 10:45 AM	TTH	DUAN G2B21	Lambert,Megan Claire	30	Main Campus
5408	AIRR	3010	20	B	24404	3	Air Force Leaderships Stds I	LEC	02:00 PM - 03:15 PM	TTH	STAD 135	Lambert,Megan Claire	30	Main Campus
5409	AIRR	3010	20	B	24404	3	Air Force Leaderships Stds I	LEC	02:00 PM - 03:15 PM	TTH	STAD 135	Barnes,Danielle	30	Main Campus
5410	AIRR	4010	10	B	24406	3	Natl Sec Affrs/Prep Duty	LEC	11:00 AM - 12:15 PM	TTH	STAD 135	Havard,Jessica	25	Main Campus
5411	AIRR	4010	30	B	24442	3	Natl Sec Affrs/Prep Duty	LEC	02:00 PM - 03:15 PM	TTH	STAD 140	Havard,Jessica	25	Main Campus
5412	MILR	1011	10	B	24408	2	Adventures in Leadership 1	LEC	08:00 AM - 08:50 AM	TTH	STAD 140	Freund,Karl Wilhelm	30	Main Campus
5413	MILR	1011	10	B	24408	2	Adventures in Leadership 1	LEC	08:00 AM - 08:50 AM	TTH	STAD 140	Palermo,William Scott	30	Main Campus
5414	MILR	1011	10	B	24408	2	Adventures in Leadership 1	LEC	08:00 AM - 08:50 AM	TTH	STAD 140	Lojka,Jason R	30	Main Campus
5415	MILR	1011	11	B	24413	2	Adventures in Leadership 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Palermo,William Scott	60	Main Campus
5416	MILR	1011	11	B	24413	2	Adventures in Leadership 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Freund,Karl Wilhelm	60	Main Campus
5417	MILR	1011	20	B	24409	2	Adventures in Leadership 1	LEC	09:30 AM - 10:20 AM	TTH	STAD 112	Palermo,William Scott	30	Main Campus
5418	MILR	1011	20	B	24409	2	Adventures in Leadership 1	LEC	09:30 AM - 10:20 AM	TTH	STAD 112	Freund,Karl Wilhelm	30	Main Campus
5419	MILR	1011	21	B	24414	2	Adventures in Leadership 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Freund,Karl Wilhelm	60	Main Campus
5420	MILR	1011	21	B	24414	2	Adventures in Leadership 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Palermo,William Scott	60	Main Campus
5421	MILR	2031	20	B	24447	3	Meths Leadership/Mgmt 1	LEC	08:00 AM - 09:15 AM	TTH	STAD 112	Huck,Nyland	30	Main Campus
5422	MILR	2031	20	B	24447	3	Meths Leadership/Mgmt 1	LEC	08:00 AM - 09:15 AM	TTH	STAD 112	Palermo,William Scott	30	Main Campus
5423	MILR	2031	21	B	24411	3	Meths Leadership/Mgmt 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Huck,Nyland	65	Main Campus
5424	MILR	2031	21	B	24411	3	Meths Leadership/Mgmt 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Kelley,Rebecca	65	Main Campus
5425	MILR	2031	21	B	24411	3	Meths Leadership/Mgmt 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Palermo,William Scott	65	Main Campus
5426	MILR	3052	10	B	24410	3	Military Operations/Training 1	LEC	09:30 AM - 10:45 AM	TTH	STAD 140	James,Joshua Robert	30	Main Campus
5427	MILR	3052	10	B	24410	3	Military Operations/Training 1	LEC	09:30 AM - 10:45 AM	TTH	STAD 140	Palermo,William Scott	30	Main Campus
5428	MILR	3052	11	B	24412	3	Military Operations/Training 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Palermo,William Scott	30	Main Campus
5429	MILR	3052	11	B	24412	3	Military Operations/Training 1	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	James,Joshua Robert	30	Main Campus
5430	MILR	3090	800	B	24448	1	Mil Theory & Tactical Ldrshp	LAB	06:00 AM - 06:50 AM	MW	See Class Notes For	Lojka,Jason R	30	Main Campus
5431	MILR	3090	801	B	24449	1	Mil Theory & Tactical Ldrshp	LEC	06:00 AM - 06:50 AM	T	See Class Notes For	Lojka,Jason R	30	Main Campus
5432	MILR	4072	10	B	24446	3	Adaptive Leadership	LEC	11:00 AM - 12:15 PM	TTH	STAD 140	Lojka,Jason R	40	Main Campus
5433	MILR	4072	11	B	24427	3	Adaptive Leadership	LAB	03:30 PM - 04:50 PM	TH	See Class Notes For	Lojka,Jason R	40	Main Campus
5434	NAVR	1010	200	B	24383	2	Introduction to Naval Science	LEC	09:00 AM - 09:50 AM	MW	STAD 140	Seiders,Joden L	45	Main Campus
5435	NAVR	1010	210	B	24384	2	Introduction to Naval Science	LAB	03:30 PM - 05:50 PM	TTH	MUEN E050		45	Main Campus
5436	NAVR	1010	211	B	24385	2	Introduction to Naval Science	REC	09:00 AM - 09:50 AM	F	STAD 140	Seiders,Joden L	45	Main Campus
5437	NAVR	1010	400	B	24388	2	Introduction to Naval Science	LEC	09:00 AM - 09:50 AM	MW	STAD 140	Seiders,Joden L	3	Main Campus
5438	NAVR	1010	410	B	24389	2	Introduction to Naval Science	REC	09:00 AM - 09:50 AM	F	STAD 140	Seiders,Joden L	3	Main Campus
5439	NAVR	3020	10	B	24432	3	Naval Operatn/Seamanship	LEC	09:00 AM - 09:50 AM	MWF	STAD 135	Wagner,Kyle Henry	18	Main Campus
5440	NAVR	3020	11	B	24433	3	Naval Operatn/Seamanship	LAB	03:30 PM - 05:50 PM	TTH	MUEN E050		36	Main Campus
5441	NAVR	3020	20	B	24434	3	Naval Operatn/Seamanship	LEC	09:00 AM - 09:50 AM	MWF	STAD 135	Wagner,Kyle Henry	18	Main Campus
5442	NAVR	3040	10	B	24436	3	Naval Weapons Systems	LEC	08:00 AM - 09:15 AM	TTH	DUAN G1B25	Asbury,Jonathan	18	Main Campus
5443	NAVR	3040	11	B	24437	3	Naval Weapons Systems	LAB	03:30 PM - 05:50 PM	TTH	MUEN E050		36	Main Campus
5444	NAVR	3040	20	B	24438	3	Naval Weapons Systems	LEC	08:00 AM - 09:15 AM	TTH	DUAN G1B25	Asbury,Jonathan	18	Main Campus
5445	NAVR	3101	10	B	24450	3	Evolution of Warfare	LEC	08:00 AM - 09:15 AM	TTH	STAD 135	Colgrove,Justin Cody	30	Main Campus
5446	NAVR	3101	11	B	24451	3	Evolution of Warfare	LAB	03:30 PM - 05:50 PM	TTH	MUEN E050		30	Main Campus
5447	NAVR	3101	20	B	24452	3	Evolution of Warfare	LEC	08:00 AM - 09:15 AM	TTH	STAD 135	Colgrove,Justin Cody	10	Main Campus
5448	NAVR	4010	10	B	24390	3	Leadership and Mgmt	LEC	09:00 AM - 09:50 AM	MWF	STAD 112	Brown IV,Charles Wilson	18	Main Campus
5449	NAVR	4010	11	B	24391	3	Leadership and Mgmt	LAB	03:30 PM - 05:50 PM	TTH	MUEN E050		18	Main Campus
5450	NAVR	4010	20	B	24392	3	Leadership and Mgmt	LEC	10:00 AM - 10:50 AM	MWF	STAD 112	Brown IV,Charles Wilson	18	Main Campus
5451	NAVR	4010	21	B	24393	3	Leadership and Mgmt	LAB	03:30 PM - 05:50 PM	TTH	MUEN E050		18	Main Campus
5452	NAVR	4010	30	B	24394	3	Leadership and Mgmt	LEC	09:00 AM - 09:50 AM	MWF	STAD 112	Brown IV,Charles Wilson	5	Main Campus
5453	NAVR	4010	40	B	24395	3	Leadership and Mgmt	LEC	10:00 AM - 10:50 AM	MWF	STAD 112	Brown IV,Charles Wilson	5	Main Campus
5454	PRLC	1810	800	B	24435	3	Lead Found and Applications I	LEC	06:00 PM - 07:50 PM	T	MUEN E0046	Shepherd,Juliemarie Anjali	60	Main Campus
5455	PRLC	1810	810	B	24415	3	Lead Found and Applications I	REC	03:30 PM - 05:30 PM	TH	HUMN 145	Shepherd,Juliemarie Anjali	10	Main Campus
5456	PRLC	1810	811	B	24416	3	Lead Found and Applications I	REC	05:30 PM - 07:30 PM	TH	HLMS 220	Shepherd,Juliemarie Anjali	10	Main Campus
5457	PRLC	1810	812	B	24417	3	Lead Found and Applications I	REC	05:30 PM - 07:30 PM	TH	LIBR M498	Shepherd,Juliemarie Anjali	10	Main Campus
5458	PRLC	1810	813	B	24430	3	Lead Found and Applications I	REC	05:30 PM - 07:30 PM	TH	HUMN 335	Shepherd,Juliemarie Anjali	10	Main Campus
5459	PRLC	1810	814	B	24431	3	Lead Found and Applications I	REC	03:30 PM - 05:30 PM	TH	LIBR M498	Shepherd,Juliemarie Anjali	10	Main Campus
5837	REAL	4400	2	B	36547	3	Real Estate Economics	LEC	09:30 AM - 10:45 AM	TTH			42	Main Campus
5460	PRLC	1810	815	B	24440	3	Lead Found and Applications I	REC	03:30 PM - 05:30 PM	TH	HLMS 104	Shepherd,Juliemarie Anjali	10	Main Campus
5461	PRLC	2820	810	B	24512	3	Multilevel Issue in Leadership	LEC	11:00 AM - 11:50 AM	MW	CASE E250	Shepherd,Juliemarie Anjali	60	Main Campus
5462	PRLC	2820	811	B	24513	3	Multilevel Issue in Leadership	REC	11:00 AM - 11:50 AM	F	LIBR M498		30	Main Campus
5463	PRLC	2820	812	B	24514	3	Multilevel Issue in Leadership	REC	11:00 AM - 11:50 AM	F	CASE E250		30	Main Campus
5464	PRLC	2820	813	B	24515	3	Multilevel Issue in Leadership	REC	11:00 AM - 11:50 AM	F	HLMS 255		30	Main Campus
5465	PRLC	3810	800	B	24428	3	Global Issues in Leadership	LEC	03:00 PM - 04:15 PM	MW	KTCH 1B87	Dinauer,Stephen R	28	Main Campus
5466	PRLC	4010	550R	B	24453	3-4	21st Century Leadership	LEC	-				25	Main Campus
5467	PRLC	4010	800	B	24441	3-4	21st Century Leadership	LEC	-			Kasynski,Jessie Lee	25	Main Campus
5468	ACCT	3220	1	B	22948	3	Corporate Financial Rprtng 1	LEC	09:30 AM - 10:45 AM	TTH	KOBL S125	Zechman,Sarah LC	65	Main Campus
5469	ACCT	3220	2	B	23352	3	Corporate Financial Rprtng 1	LEC	11:00 AM - 12:15 PM	TTH	KOBL S125	Zechman,Sarah LC	65	Main Campus
5470	ACCT	3220	3	B	22953	3	Corporate Financial Rprtng 1	LEC	03:30 PM - 04:45 PM	TTH	KOBL 340	Stephan,Andrew Perry	65	Main Campus
5471	ACCT	3220	4	B	23101	3	Corporate Financial Rprtng 1	LEC	11:00 AM - 12:15 PM	TTH	KOBL 340	Stephan,Andrew Perry	65	Main Campus
5472	ACCT	3220	5	B	23027	3	Corporate Financial Rprtng 1	LEC	02:00 PM - 03:15 PM	TTH	KOBL 340	Zechman,Sarah LC	40	Main Campus
5473	ACCT	3220	6	B	23185	3	Corporate Financial Rprtng 1	LEC	12:30 PM - 01:45 PM	TTH	KOBL 340	Stephan,Andrew Perry	65	Main Campus
5474	ACCT	3230	1	B	22956	3	Corporate Financial Rprtng 2	LEC	12:30 PM - 01:45 PM	MW	KOBL 340	Rock,Steven Karl	70	Main Campus
5475	ACCT	3230	2	B	23353	3	Corporate Financial Rprtng 2	LEC	11:00 AM - 12:15 PM	MW	KOBL 340	Rock,Steven Karl	70	Main Campus
5476	ACCT	3320	1	B	22952	3	Cost Management	LEC	11:00 AM - 12:15 PM	MW			60	Main Campus
5477	ACCT	3320	2	B	22959	3	Cost Management	LEC	12:30 PM - 01:45 PM	MW			42	Main Campus
5478	ACCT	3320	3	B	23270	3	Cost Management	LEC	08:00 AM - 09:15 AM	TTH	KOBL 340	Ballantine Jr,John T	60	Main Campus
5479	ACCT	3320	4	B	23316	3	Cost Management	LEC	09:30 AM - 10:45 AM	TTH	KOBL 340	Ballantine Jr,John T	60	Main Campus
5480	ACCT	3440	1	B	23206	3	Income Taxation of Individuals	LEC	09:30 AM - 10:45 AM	TTH	KOBL 255	Lazzeri,Nicole	50	Main Campus
5481	ACCT	3440	2	B	23320	3	Income Taxation of Individuals	LEC	11:00 AM - 12:15 PM	TTH	KOBL 255	Lazzeri,Nicole	50	Main Campus
5482	ACCT	3440	3	B	23354	3	Income Taxation of Individuals	LEC	08:00 AM - 09:15 AM	TTH	KOBL 255	Lazzeri,Nicole	50	Main Campus
5483	ACCT	4240	2	B	23183	3	Advanced Financial Accounting	LEC	05:00 PM - 06:15 PM	MW	KOBL 300	Munter,Paul Herry	20	Main Campus
5484	ACCT	4250	1	B	23489	3	Financial Statement Analysis	LEC	08:00 AM - 09:15 AM	TTH	KOBL S125	Maxwell,Christopher	20	Main Campus
5485	ACCT	4250	2	B	36568	3	Financial Statement Analysis	LEC	12:30 PM - 01:45 PM	MW	KOBL 255	Maxwell,Christopher	20	Main Campus
5486	ACCT	4540	1	B	23195	3	Accounting Information Systems	LEC	06:30 PM - 09:15 PM	W	KOBL 320		20	Main Campus
5487	ACCT	4620	1	B	22954	3	Auditing and Assurance Service	LEC	03:30 PM - 04:45 PM	MW	KOBL 220		20	Main Campus
5488	ACCT	4620	2	B	22955	3	Auditing and Assurance Service	LEC	05:00 PM - 06:15 PM	MW	KOBL 220		20	Main Campus
5489	ACCT	4850	1	B	22957	3	SR Seminar - Accounting Ethics	SEM	11:00 AM - 12:15 PM	MW	KOBL 255	Maxwell,Christopher	40	Main Campus
5490	ACCT	4850	2	B	23355	3	SR Seminar - Accounting Ethics	SEM	09:30 AM - 10:45 AM	MW	KOBL 255	Maxwell,Christopher	40	Main Campus
5491	ACCT	5240	2	B	23184	3	Advanced Financial Accounting	LEC	05:00 PM - 06:15 PM	MW	KOBL 300	Munter,Paul Herry	33	Main Campus
5492	ACCT	5250	1	B	23490	3	Financial Statement Analysis	LEC	08:00 AM - 09:15 AM	TTH	KOBL S125	Maxwell,Christopher	20	Main Campus
5493	ACCT	5250	2	B	35300	3	Financial Statement Analysis	LEC	12:30 PM - 01:45 PM	MW	KOBL 255	Maxwell,Christopher	50	Main Campus
5494	ACCT	5540	1	B	23196	3	Accounting Information Systems	LEC	06:30 PM - 09:15 PM	W	KOBL 320		30	Main Campus
5495	ACCT	5620	1	B	22991	3	Auditing and Assurance Service	LEC	03:30 PM - 04:45 PM	MW	KOBL 220		30	Main Campus
5496	ACCT	5620	2	B	22992	3	Auditing and Assurance Service	LEC	05:00 PM - 06:15 PM	MW	KOBL 220		30	Main Campus
5497	ACCT	5700	1	B	23207	3	International Accounting	LEC	02:00 PM - 04:45 PM	W	KOBL S110	Munter,Paul Herry	50	Main Campus
5498	ACCT	5820	1	B	22993	3	Topics in Business	LEC	06:30 PM - 09:15 PM	M	KOBL 375	Giehl,Alan Joseph	40	Main Campus
5499	ACCT	5827	1	B	23194	3	Integrated Report for Soc Resp	LEC	12:30 PM - 01:45 PM	TTH	KOBL 235	Milburn,Catherine C	40	Main Campus
5500	ACCT	6350	1	B	34995	3	Current Iss Prof ACCT--Ethics	LEC	06:30 PM - 09:15 PM	T	KOBL S110	Munter,Paul Herry	60	Main Campus
5501	ACCT	6420	801	B	23285	3	Res Wrtg/Income Taxation	LEC	12:30 PM - 03:15 PM	M	KOBL S233	Morley,Susan	25	Main Campus
5502	ACCT	6430	801	B	23230	3	Taxation of Partnerships	LEC	03:30 PM - 04:45 PM	TTH	WLAW 306	Speck,Sloan G	20	Main Campus
5503	ACCT	6620	802	B	23322	3	Adv Aud/Bus Risk & Dec	LEC	06:30 PM - 09:15 PM	T	KOBL 235		23	Main Campus
5504	ACCT	6700	801	B	23186	4	Income Taxation	LEC	09:00 AM - 10:10 AM	MTTH	WLAW 207	Speck,Sloan G	15	Main Campus
5505	ACCT	7320	1	B	23295	3	Doc Sem: Acct & Capital Mktg I	LEC	-				25	Main Campus
5506	BAD	1250	610R	B	23212	1.5	First-Yr Seminar for Business	SEM	03:30 PM - 04:45 PM	TH	CHEY 252A	Hayes,Katelyn Ann	25	Main Campus
5507	BAD	1250	611R	B	23255	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	T	CHEY 252A	Straccia,Andrea Rooks	25	Main Campus
5508	BAD	1250	612R	B	23213	1.5	First-Yr Seminar for Business	SEM	02:00 PM - 03:15 PM	T	CHEY 252A	Straccia,Andrea Rooks	25	Main Campus
5509	BAD	1250	613R	B	23214	1.5	First-Yr Seminar for Business	SEM	02:00 PM - 03:15 PM	W	CHEY 252A	Hayes,Katelyn Ann	25	Main Campus
5510	BAD	1250	614R	B	23256	1.5	First-Yr Seminar for Business	SEM	09:30 AM - 10:45 AM	TH	CHEY 140	Sindwani,Monica	25	Main Campus
5511	BAD	1250	615R	B	23296	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	TH	CHEY 140	Abeloe,Jaclyn	25	Main Campus
5512	BAD	1250	616R	B	23215	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	TH	CHEY 140	Duarte,Joe	25	Main Campus
5513	BAD	1250	617R	B	23257	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	TH	CHEY 252A	Abeloe,Jaclyn	25	Main Campus
5514	BAD	1250	618R	B	23102	1.5	First-Yr Seminar for Business	SEM	02:00 PM - 03:15 PM	TH	CHEY 140	Straccia,Andrea Rooks	25	Main Campus
5515	BAD	1250	619R	B	23349	1.5	First-Yr Seminar for Business	SEM	02:00 PM - 03:15 PM	TH	CHEY 252A	Hayes,Katelyn Ann	25	Main Campus
5516	BAD	1250	620R	B	23187	1.5	First-Yr Seminar for Business	SEM	03:30 PM - 04:45 PM	TH	CHEY 140	Straccia,Andrea Rooks	25	Main Campus
5517	BAD	1250	621R	B	23293	1.5	First-Yr Seminar for Business	SEM	09:30 AM - 10:45 AM	F	CHEY 252A	Abeloe,Jaclyn	25	Main Campus
5518	BAD	1250	622R	B	23188	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	CHEY 252A	Abeloe,Jaclyn	25	Main Campus
5519	BAD	1250	623R	B	23189	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	CHEY 240	Rosenbaum,Sarah Elizabeth	25	Main Campus
5520	BAD	1250	640R	B	23280	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	M	WVN 107	Napier,Vanessa Muriel	25	Main Campus
5521	BAD	1250	641R	B	23281	1.5	First-Yr Seminar for Business	SEM	02:00 PM - 03:15 PM	M	WVN 107	Napier,Vanessa Muriel	25	Main Campus
5522	BAD	1250	642R	B	23282	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	T	WVN 107	Heymann,Stephen	25	Main Campus
5523	BAD	1250	643R	B	23283	1.5	First-Yr Seminar for Business	SEM	01:00 PM - 02:15 PM	T	WVN 107	Heymann,Stephen	25	Main Campus
5524	BAD	1250	644R	B	23297	1.5	First-Yr Seminar for Business	SEM	10:00 AM - 11:15 AM	W	WVN 107	Napier,Vanessa Muriel	25	Main Campus
5525	BAD	1250	645R	B	23298	1.5	First-Yr Seminar for Business	SEM	11:30 AM - 12:45 PM	W	WVN 107	Clark,Heather Rebecca	25	Main Campus
5526	BAD	1250	646R	B	23299	1.5	First-Yr Seminar for Business	SEM	01:00 PM - 02:15 PM	W	WVN 107	Napier,Vanessa Muriel	25	Main Campus
5527	BAD	1250	647R	B	23284	1.5	First-Yr Seminar for Business	SEM	02:30 PM - 03:45 PM	W	WVN 107	Clark,Heather Rebecca	25	Main Campus
5528	BAD	1250	648R	B	23318	1.5	First-Yr Seminar for Business	SEM	10:00 AM - 11:15 AM	TH	WVN 107	Clark,Heather Rebecca	25	Main Campus
5529	BAD	1250	649R	B	23319	1.5	First-Yr Seminar for Business	SEM	11:30 AM - 12:45 PM	TH	WVN 107	Heymann,Stephen	25	Main Campus
5530	BAD	1250	650R	B	23452	1.5	First-Yr Seminar for Business	SEM	01:00 PM - 02:15 PM	TH	WVN 107	Clark,Heather Rebecca	25	Main Campus
5531	BAD	1250	651R	B	23453	1.5	First-Yr Seminar for Business	SEM	02:30 PM - 03:45 PM	TH	WVN 107	Heymann,Stephen	25	Main Campus
5532	BAD	1250	831	B	23232	1.5	First-Yr Seminar for Business	SEM	10:00 AM - 11:15 AM	F	KOBL 220	Zechman,Darrell S	25	Main Campus
5533	BAD	1250	832	B	23233	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	F	KOBL 220	Zechman,Darrell S	25	Main Campus
5534	BAD	1250	841	B	23201	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	KOBL 235		25	Main Campus
5535	BAD	1250	844	B	23203	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	KOBL 340		25	Main Campus
5536	BAD	1250	845	B	23204	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	F	KOBL 235		25	Main Campus
5537	BAD	1250	848	B	23210	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:45 PM	F	KOBL 375		25	Main Campus
5538	BAD	1250	850	B	23211	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	KOBL 375		25	Main Campus
5539	BAD	1250	853	B	23234	1.5	First-Yr Seminar for Business	SEM	12:30 PM - 01:20 PM	F	KOBL 230		25	Main Campus
5540	BAD	1250	855	B	23275	1.5	First-Yr Seminar for Business	SEM	02:00 PM - 03:15 PM	F	KOBL 230		25	Main Campus
5541	BAD	1250	859	B	23350	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	KOBL 230		25	Main Campus
5542	BAD	1250	860	B	23351	1.5	First-Yr Seminar for Business	SEM	11:00 AM - 12:15 PM	F	KOBL 300		25	Main Campus
5543	BAD	2010	1	B	23107	1	Excel in Business	MLS	01:00 PM - 01:50 PM	F	KOBL 320	Cherry,Jason Michael	40	Main Campus
5544	BAD	2010	3	B	23200	1	Excel in Business	MLS	12:00 PM - 12:50 PM	F	KOBL 320	Cherry,Jason Michael	40	Main Campus
5545	BAD	2010	4	B	23235	1	Excel in Business	MLS	10:00 AM - 10:50 AM	F	KOBL 320	Colvin,Ann	40	Main Campus
5546	BAD	2010	613R	B	23231	1	Excel in Business	MLS	10:00 AM - 10:50 AM	TH	CHEY 240	Colvin,Ann	40	Main Campus
5547	BAD	2010	614R	B	23323	1	Excel in Business	MLS	01:00 PM - 01:50 PM	F	CHEY 240	Colvin,Ann	40	Main Campus
5548	BAD	6820	1	B82	35331	1-3	Topics in Business Admin	SEM	09:30 AM - 12:15 PM	MW	KOBL 375		20	Main Campus
5549	BAD	6820	2	B82	35332	1-3	Topics in Business Admin	SEM	02:00 PM - 04:45 PM	TTH	KOBL 355		20	Main Campus
5550	BCO	1015	1	B	23238	3	The World of Business	LEC	05:00 PM - 06:15 PM	TTH	KOBL 220	Milburn,Catherine C	50	Main Campus
5551	BCO	1015	2	B	23326	3	The World of Business	LEC	03:30 PM - 04:45 PM	TTH	KOBL 220	Milburn,Catherine C	50	Main Campus
5552	BCO	1015	3	B	35315	3	The World of Business	LEC	12:30 PM - 01:45 PM	TTH	KOBL 255		50	Main Campus
5553	BCO	1015	4	B	35316	3	The World of Business	LEC	08:00 AM - 09:15 AM	TTH			50	Main Campus
5554	BCO	1015	5	B	35318	3	The World of Business	LEC	05:00 PM - 06:15 PM	TTH	KOBL S110		50	Main Campus
5555	BCO	1015	6	B	35319	3	The World of Business	LEC	09:30 AM - 10:45 AM	MW	KOBL 300		50	Main Campus
5556	BCO	1015	7	B	35320	3	The World of Business	LEC	08:00 AM - 09:15 AM	MW	KOBL 255		50	Main Campus
5557	BCO	1015	8	B	35321	3	The World of Business	LEC	06:00 PM - 08:45 PM	T			50	Main Campus
5558	BCO	1015	9	B	35322	3	The World of Business	LEC	06:30 PM - 09:15 PM	M	KOBL 220		50	Main Campus
5559	BCO	1015	611R	B	23208	3	The World of Business	LEC	12:30 PM - 01:45 PM	MW	CHEY 240		197	Main Campus
5560	BCO	1015	612R	B	23209	3	The World of Business	LEC	02:00 PM - 03:15 PM	MW	CHEY 240		197	Main Campus
5561	BCO	1015	613R	B	23197	3	The World of Business	LEC	03:30 PM - 04:45 PM	MW	CHEY 240		197	Main Campus
5562	BCO	1015	614R	B	23198	3	The World of Business	LEC	02:00 PM - 03:15 PM	TTH	CHEY 240		197	Main Campus
5563	BCO	1015	615R	B	23360	3	The World of Business	LEC	03:30 PM - 04:45 PM	TTH	CHEY 240		197	Main Campus
5564	BCO	1015	640R	B	23361	3	The World of Business	LEC	09:30 AM - 10:45 AM	MW	WVN 181A		197	Main Campus
5565	BCO	1015	641R	B	23362	3	The World of Business	LEC	11:00 AM - 12:15 PM	MW	WVN 181A		197	Main Campus
5566	BCO	1015	642	B	23363	3	The World of Business	LEC	12:30 PM - 01:45 PM	TTH	WVN 181A		197	Main Campus
5895	ENVD	4361	1	B	36548	3	Spec Top: Social Factors	LEC	09:00 AM - 09:50 AM	MWF			12	Main Campus
5567	BCO	1025	300	B	23248	3	Statistical Analys in Business	LEC	09:30 AM - 10:45 AM	TTH		Schaub,Kevin David	70	Main Campus
5568	BCO	1030	1	B	23225	3	Communication Strategy	LEC	03:00 PM - 04:15 PM	MW	ECCR 108		25	Main Campus
5569	BCO	1030	2	B	23356	3	Communication Strategy	LEC	09:30 AM - 10:45 AM	TTH	HLMS 245		25	Main Campus
5570	BCO	1030	3	B	23357	3	Communication Strategy	LEC	08:00 AM - 09:15 AM	TTH	DUAN G2B21		25	Main Campus
5571	BCO	1030	4	B	23358	3	Communication Strategy	LEC	02:00 PM - 02:50 PM	MWF	CHEM 145		25	Main Campus
5572	BCO	1030	5	B	23226	3	Communication Strategy	LEC	03:00 PM - 04:15 PM	MW	CHEM 145		25	Main Campus
5573	BCO	1030	6	B	23227	3	Communication Strategy	LEC	02:00 PM - 03:15 PM	TTH	HLMS 245		25	Main Campus
5574	BCO	1030	7	B	23260	3	Communication Strategy	LEC	08:00 AM - 09:15 AM	TTH	KOBL 230		25	Main Campus
5575	BCO	1030	8	B	23261	3	Communication Strategy	LEC	03:30 PM - 04:45 PM	TTH	KTCH 1B87		25	Main Campus
5576	BCO	1030	9	B	23262	3	Communication Strategy	LEC	05:00 PM - 06:15 PM	TTH	HLMS 259		25	Main Campus
5577	BCO	1030	10	B	23263	3	Communication Strategy	LEC	04:30 PM - 05:45 PM	MW	ECCR 108		25	Main Campus
5578	BCO	1030	11	B	23359	3	Communication Strategy	LEC	11:00 AM - 12:15 PM	TTH	HLMS 245		25	Main Campus
5579	BCO	1030	12	B	23236	3	Communication Strategy	LEC	02:00 PM - 03:15 PM	TTH	CHEM 131		25	Main Campus
5580	BCO	1030	14	B	23271	3	Communication Strategy	LEC	01:00 PM - 01:50 PM	MWF	DUAN G2B41		25	Main Campus
5581	BCO	1030	15	B	23272	3	Communication Strategy	LEC	03:30 PM - 04:45 PM	TTH	FLMG 157		25	Main Campus
5582	BCO	1030	16	B	23455	3	Communication Strategy	LEC	09:00 AM - 09:50 AM	MWF	DUAN G1B25		25	Main Campus
5583	BCO	1030	17	B	23456	3	Communication Strategy	LEC	10:00 AM - 10:50 AM	MWF	HLMS 245		25	Main Campus
5584	BCO	1030	18	B	23457	3	Communication Strategy	LEC	11:00 AM - 11:50 AM	MWF	DUAN G1B27		25	Main Campus
5585	BCO	1030	19	B	23458	3	Communication Strategy	LEC	09:00 AM - 09:50 AM	MWF	DUAN G1B27		25	Main Campus
5586	BCO	1030	20	B	23273	3	Communication Strategy	LEC	02:00 PM - 03:15 PM	TTH			25	Main Campus
5587	BCO	1030	21	B	23498	3	Communication Strategy	LEC	12:00 PM - 12:50 PM	MWF	DUAN G2B41		25	Main Campus
5588	BCO	1030	22	B	23277	3	Communication Strategy	LEC	09:30 AM - 10:45 AM	TTH	CLRE 104		25	Main Campus
5589	BCO	1030	23	B	23507	3	Communication Strategy	LEC	03:00 PM - 05:30 PM	W	ECCR 131		25	Main Campus
5590	BCO	1030	610R	B	23220	3	Communication Strategy	LEC	09:30 AM - 10:45 AM	MW	CHEY 252A		22	Main Campus
5591	BCO	1030	611R	B	23221	3	Communication Strategy	LEC	11:00 AM - 12:15 PM	MW	CHEY 252A		22	Main Campus
5592	BCO	1030	612R	B	23258	3	Communication Strategy	LEC	11:00 AM - 12:15 PM	MW	CHEY 240		22	Main Campus
5593	BCO	1030	613R	B	23222	3	Communication Strategy	LEC	12:30 PM - 01:45 PM	MW	CHEY 252A		22	Main Campus
5594	BCO	1030	614R	B	23223	3	Communication Strategy	LEC	09:30 AM - 10:45 AM	TTH	CHEY 252A		22	Main Campus
5595	BCO	1030	615R	B	23224	3	Communication Strategy	LEC	11:00 AM - 12:15 PM	TTH	CHEY 252A		22	Main Campus
5596	BCO	1030	616R	B	23228	3	Communication Strategy	LEC	11:00 AM - 12:15 PM	TTH	CHEY 240		22	Main Campus
5597	BCO	1030	617R	B	23276	3	Communication Strategy	LEC	12:30 PM - 01:45 PM	TTH	CHEY 240		22	Main Campus
5598	BCO	2201	1	B81	23324	1.5	Principles of Marketing	LEC	08:00 AM - 09:15 AM	MW	KOBL S127	Waddell,Jay L	75	Main Campus
5599	BCO	2201	2	B81	23325	1.5	Principles of Marketing	LEC	09:30 AM - 10:45 AM	MW	KOBL S127	Lewis,Mary Beth	75	Main Campus
5600	BCO	2201	3	B81	23382	1.5	Principles of Marketing	LEC	11:00 AM - 12:15 PM	MW	KOBL S127	Lewis,Mary Beth	75	Main Campus
5601	BCO	2201	4	B81	23383	1.5	Principles of Marketing	LEC	02:00 PM - 03:15 PM	MW	KOBL S127	McMahon,Kevin Christopher	75	Main Campus
5602	BCO	2201	5	B81	23384	1.5	Principles of Marketing	LEC	03:30 PM - 04:45 PM	MW	KOBL S127	McMahon,Kevin Christopher	75	Main Campus
5603	BCO	2201	6	B81	23385	1.5	Principles of Marketing	LEC	05:00 PM - 06:15 PM	MW	KOBL S127	McMahon,Kevin Christopher	75	Main Campus
5604	BCO	2202	7	B81	23398	1.5	Princ of Organizational Behav	LEC	08:00 AM - 09:15 AM	TTH	KOBL S127	Adams,Heather L	75	Main Campus
5605	BCO	2202	8	B81	23399	1.5	Princ of Organizational Behav	LEC	09:30 AM - 10:45 AM	TTH	KOBL S127	Adams,Heather L	75	Main Campus
5606	BCO	2202	9	B81	23400	1.5	Princ of Organizational Behav	LEC	11:00 AM - 12:15 PM	TTH	KOBL S127		75	Main Campus
5607	BCO	2202	10	B81	23401	1.5	Princ of Organizational Behav	LEC	02:00 PM - 03:15 PM	TTH	KOBL S127	Schaub,Kevin David	75	Main Campus
5608	BCO	2202	11	B81	23402	1.5	Princ of Organizational Behav	LEC	03:30 PM - 04:45 PM	TTH	KOBL S127	Schaub,Kevin David	75	Main Campus
5609	BCO	2202	12	B81	23403	1.5	Princ of Organizational Behav	LEC	05:00 PM - 06:15 PM	TTH	KOBL S127	Schaub,Kevin David	75	Main Campus
5610	BCO	2203	1	B81	23404	1.5	Principles of Accounting I	LEC	08:00 AM - 09:15 AM	MW	KOBL 330	Contreras,Jeremiah	75	Main Campus
5611	BCO	2203	2	B81	23405	1.5	Principles of Accounting I	LEC	09:30 AM - 10:45 AM	MW	KOBL 330	Contreras,Jeremiah	75	Main Campus
5612	BCO	2203	3	B81	23406	1.5	Principles of Accounting I	LEC	11:00 AM - 12:15 PM	MW	KOBL 330	Mukhopadhyay,Tathagat	75	Main Campus
5613	BCO	2203	4	B81	23407	1.5	Principles of Accounting I	LEC	02:00 PM - 03:15 PM	MW	KOBL 330	Mukhopadhyay,Tathagat	75	Main Campus
5614	BCO	2203	5	B81	23408	1.5	Principles of Accounting I	LEC	03:30 PM - 04:45 PM	MW	KOBL 330	Mukhopadhyay,Tathagat	75	Main Campus
5615	BCO	2203	6	B81	23409	1.5	Principles of Accounting I	LEC	05:00 PM - 06:15 PM	MW	KOBL 330	Mukhopadhyay,Tathagat	75	Main Campus
5616	BCO	2203	7	B81	23410	1.5	Principles of Accounting I	LEC	08:00 AM - 09:15 AM	TTH	KOBL 330	Mukhopadhyay,Tathagat	75	Main Campus
5617	BCO	2203	9	B81	23412	1.5	Principles of Accounting I	LEC	11:00 AM - 12:15 PM	TTH	KOBL 330	Marshall,Nathan Thomas	75	Main Campus
5618	BCO	2203	10	B81	23413	1.5	Principles of Accounting I	LEC	02:00 PM - 03:15 PM	TTH	KOBL 330	Marshall,Nathan Thomas	75	Main Campus
5619	BCO	2203	11	B81	23414	1.5	Principles of Accounting I	LEC	03:30 PM - 04:45 PM	TTH	KOBL 330	Marshall,Nathan Thomas	75	Main Campus
5620	BCO	2203	12	B81	23415	1.5	Principles of Accounting I	LEC	12:30 PM - 01:45 PM	TTH	KOBL 330	Marshall,Nathan Thomas	75	Main Campus
5621	BCO	2205	1	B81	23428	1.5	Intro to Info Mgmt and Analyt	LEC	08:00 AM - 09:15 AM	MW	KOBL 210	Fisher,Christina	75	Main Campus
5622	BCO	2205	2	B81	23429	1.5	Intro to Info Mgmt and Analyt	LEC	09:30 AM - 10:45 AM	MW	KOBL 210	Fisher,Christina	75	Main Campus
5623	BCO	2205	3	B81	23430	1.5	Intro to Info Mgmt and Analyt	LEC	11:00 AM - 12:15 PM	MW	KOBL 210	Zikmund,Noah Todd	75	Main Campus
5624	BCO	2205	4	B81	23431	1.5	Intro to Info Mgmt and Analyt	LEC	02:00 PM - 03:15 PM	MW	KOBL 210	Fisher,Christina	75	Main Campus
5625	BCO	2205	5	B81	23432	1.5	Intro to Info Mgmt and Analyt	LEC	03:30 PM - 04:45 PM	MW	KOBL 210	Oest,Donald G	75	Main Campus
5626	BCO	2205	6	B81	23433	1.5	Intro to Info Mgmt and Analyt	LEC	05:00 PM - 06:15 PM	MW	KOBL 210	Oest,Donald G	75	Main Campus
5627	BCO	2206	7	B81	23446	1.5	Princ of Operations Mgmt	LEC	08:00 AM - 09:15 AM	TTH	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5628	BCO	2206	8	B81	23447	1.5	Princ of Operations Mgmt	LEC	09:30 AM - 10:45 AM	TTH	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5629	BCO	2206	9	B81	23448	1.5	Princ of Operations Mgmt	LEC	11:00 AM - 12:15 PM	TTH	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5630	BCO	2206	10	B81	23449	1.5	Princ of Operations Mgmt	LEC	02:00 PM - 03:15 PM	TTH	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5631	BCO	2206	11	B81	23450	1.5	Princ of Operations Mgmt	LEC	03:30 PM - 04:45 PM	TTH	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5632	BCO	2206	12	B81	23451	1.5	Princ of Operations Mgmt	LEC	05:00 PM - 06:15 PM	TTH	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5633	BCO	2301	1	B81	35153	1.5	Business Law	LEC	02:00 PM - 03:15 PM	MW	KOBL S135	Maciszewski,Michael Arthur	75	Main Campus
5634	BCO	2302	2	B81	35161	1.5	Bus Ethics and Soc Responsibil	LEC	02:00 PM - 03:15 PM	TTH	KOBL S135		75	Main Campus
5635	BCO	2302	3	B81	35162	1.5	Bus Ethics and Soc Responsibil	LEC	12:30 PM - 01:45 PM	TTH	KOBL S135		75	Main Campus
5636	BCO	2303	1	B81	35165	1.5	Principles of Accounting II	LEC	03:30 PM - 04:45 PM	MW	KOBL S135	Contreras,Jeremiah	75	Main Campus
5637	BCO	2303	2	B81	35169	1.5	Principles of Accounting II	LEC	05:00 PM - 06:15 PM	MW	KOBL S135	Contreras,Jeremiah	75	Main Campus
5638	BCO	2304	3	B81	35184	1.5	Strategic and Entrepr Thinking	LEC	03:30 PM - 04:45 PM	TTH	KOBL S135		75	Main Campus
5639	BCO	2201	7	B82	23386	1.5	Principles of Marketing	LEC	08:00 AM - 09:15 AM	TTH	KOBL S127	Waddell,Jay L	75	Main Campus
5640	BCO	2201	8	B82	23387	1.5	Principles of Marketing	LEC	09:30 AM - 10:45 AM	TTH	KOBL S127	Lewis,Mary Beth	75	Main Campus
5641	BCO	2201	9	B82	23388	1.5	Principles of Marketing	LEC	11:00 AM - 12:15 PM	TTH	KOBL S127	Lewis,Mary Beth	75	Main Campus
5642	BCO	2201	10	B82	23389	1.5	Principles of Marketing	LEC	02:00 PM - 03:15 PM	TTH	KOBL S127	McMahon,Kevin Christopher	75	Main Campus
5643	BCO	2201	11	B82	23390	1.5	Principles of Marketing	LEC	03:30 PM - 04:45 PM	TTH	KOBL S127	McMahon,Kevin Christopher	75	Main Campus
5644	BCO	2202	1	B82	23392	1.5	Princ of Organizational Behav	LEC	08:00 AM - 09:15 AM	MW	KOBL S127	Cunningham,Cory Brooke	75	Main Campus
5645	BCO	2202	2	B82	23393	1.5	Princ of Organizational Behav	LEC	09:30 AM - 10:45 AM	MW	KOBL S127	Cunningham,Cory Brooke	75	Main Campus
5646	BCO	2202	3	B82	23394	1.5	Princ of Organizational Behav	LEC	11:00 AM - 12:15 PM	MW	KOBL S127	Cunningham,Cory Brooke	75	Main Campus
5647	BCO	2202	4	B82	23395	1.5	Princ of Organizational Behav	LEC	02:00 PM - 03:15 PM	MW	KOBL S127	Cunningham,Cory Brooke	75	Main Campus
5648	BCO	2202	5	B82	23396	1.5	Princ of Organizational Behav	LEC	03:30 PM - 04:45 PM	MW	KOBL S127	Hekman,David R	75	Main Campus
5649	BCO	2202	6	B82	23397	1.5	Princ of Organizational Behav	LEC	05:00 PM - 06:15 PM	MW	KOBL S127	Hekman,David R	75	Main Campus
5650	BCO	2204	1	B82	23416	1.5	Princ of Financial Mgmt	LEC	08:00 AM - 09:15 AM	MW	KOBL 330	Zhang,Xingtan	75	Main Campus
5651	BCO	2204	2	B82	23417	1.5	Princ of Financial Mgmt	LEC	09:30 AM - 10:45 AM	MW	KOBL 330	Zhang,Xingtan	75	Main Campus
5652	BCO	2204	3	B82	23418	1.5	Princ of Financial Mgmt	LEC	11:00 AM - 12:15 PM	MW	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5653	BCO	2204	4	B82	23419	1.5	Princ of Financial Mgmt	LEC	02:00 PM - 03:15 PM	MW	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5654	BCO	2204	5	B82	23420	1.5	Princ of Financial Mgmt	LEC	03:30 PM - 04:45 PM	MW	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5655	BCO	2204	6	B82	23421	1.5	Princ of Financial Mgmt	LEC	05:00 PM - 06:15 PM	MW	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5656	BCO	2204	7	B82	23422	1.5	Princ of Financial Mgmt	LEC	08:00 AM - 09:15 AM	TTH	KOBL 330	Zhang,Xingtan	75	Main Campus
5657	BCO	2204	8	B82	23423	1.5	Princ of Financial Mgmt	LEC	09:30 AM - 10:45 AM	TTH	KOBL 330	Zhang,Xingtan	75	Main Campus
5658	BCO	2204	9	B82	23424	1.5	Princ of Financial Mgmt	LEC	11:00 AM - 12:15 PM	TTH	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5659	BCO	2204	10	B82	23425	1.5	Princ of Financial Mgmt	LEC	02:00 PM - 03:15 PM	TTH	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5660	BCO	2204	11	B82	23426	1.5	Princ of Financial Mgmt	LEC	03:30 PM - 04:45 PM	TTH	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5661	BCO	2204	12	B82	23427	1.5	Princ of Financial Mgmt	LEC	12:30 PM - 01:45 PM	TTH	KOBL 330	Merrell,Jeffrey Charles	75	Main Campus
5662	BCO	2205	7	B82	23434	1.5	Intro to Info Mgmt and Analyt	LEC	08:00 AM - 09:15 AM	TTH	KOBL 210	Fisher,Christina	75	Main Campus
5663	BCO	2205	8	B82	23435	1.5	Intro to Info Mgmt and Analyt	LEC	09:30 AM - 10:45 AM	TTH	KOBL 210	Zikmund,Noah Todd	75	Main Campus
5664	BCO	2205	9	B82	23436	1.5	Intro to Info Mgmt and Analyt	LEC	11:00 AM - 12:15 PM	TTH	KOBL 210	Fisher,Christina	75	Main Campus
5665	BCO	2205	10	B82	23437	1.5	Intro to Info Mgmt and Analyt	LEC	02:00 PM - 03:15 PM	TTH	KOBL 210	Zikmund,Noah Todd	75	Main Campus
5666	BCO	2205	11	B82	23438	1.5	Intro to Info Mgmt and Analyt	LEC	03:30 PM - 04:45 PM	TTH	KOBL 210	Zikmund,Noah Todd	75	Main Campus
5667	BCO	2206	1	B82	23440	1.5	Princ of Operations Mgmt	LEC	08:00 AM - 09:15 AM	MW	KOBL 210		75	Main Campus
5668	BCO	2206	2	B82	23441	1.5	Princ of Operations Mgmt	LEC	09:30 AM - 10:45 AM	MW	KOBL 210		75	Main Campus
5669	BCO	2206	3	B82	23442	1.5	Princ of Operations Mgmt	LEC	11:00 AM - 12:15 PM	MW	KOBL 210		75	Main Campus
5670	BCO	2206	4	B82	23443	1.5	Princ of Operations Mgmt	LEC	02:00 PM - 03:15 PM	MW	KOBL 210		75	Main Campus
5671	BCO	2206	5	B82	23444	1.5	Princ of Operations Mgmt	LEC	03:30 PM - 04:45 PM	MW	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5672	BCO	2206	6	B82	23445	1.5	Princ of Operations Mgmt	LEC	05:00 PM - 06:15 PM	MW	KOBL 210	Macaluso,Gregg Richard	75	Main Campus
5673	BCO	2301	2	B82	35159	1.5	Business Law	LEC	02:00 PM - 03:15 PM	TTH	KOBL S135	Maciszewski,Michael Arthur	75	Main Campus
5674	BCO	2302	1	B82	35160	1.5	Bus Ethics and Soc Responsibil	LEC	02:00 PM - 03:15 PM	MW	KOBL S135		75	Main Campus
5675	BCO	2303	3	B82	35170	1.5	Principles of Accounting II	LEC	03:30 PM - 04:45 PM	TTH	KOBL S135	Contreras,Jeremiah	75	Main Campus
5676	BCO	2304	1	B82	35181	1.5	Strategic and Entrepr Thinking	LEC	03:30 PM - 04:45 PM	MW	KOBL S135	Deng,Jing	75	Main Campus
5677	BCO	2304	2	B82	35183	1.5	Strategic and Entrepr Thinking	LEC	05:00 PM - 06:15 PM	MW	KOBL S135	Deng,Jing	75	Main Campus
5678	BSL	4120	2	B	23312	3	Advanced Business Law	LEC	-				50	Main Campus
5679	BSL	5120	2	B	23313	3	Advanced Business Law	LEC	03:30 PM - 04:45 PM	TTH		Ballantine Jr,John T	50	Main Campus
5680	CESR	3040	1	B	23334	3	Fund Soc Rspnsble Lead	LEC	03:30 PM - 04:45 PM	MW		Meaney,Mark E	50	Main Campus
5681	CESR	4000	801	B	23466	3	Leadership Challenges	LEC	03:30 PM - 06:20 PM	M	KOBL S110	Christoff,Lorna Colleen	26	Main Campus
5682	CESR	4005	3	B	23484	3	Bus Solutions Dev World	LEC	12:30 PM - 01:45 PM	MW	KOBL S125	Reznicek,Birdie C	40	Main Campus
5683	CESR	4130	1	B	23286	3	Sustainable Operations	LEC	12:30 PM - 01:45 PM	MW	KOBL 235	Stockton,Keith Michael	10	Main Campus
5684	CESR	4430	1	B	35203	3	Corporate Boards in Action	LEC	08:00 AM - 09:15 AM	MW		Stapp,Elizabeth	50	Main Campus
5685	CESR	4827	1	B	23108	3	Integrated Report for Soc Resp	LEC	-				32	Main Campus
5686	ESBM	3700	1	B	22951	3	Entrepreneurial Environs	LEC	11:00 AM - 12:15 PM	MW		Banks,Cynthia Lee	42	Main Campus
5687	ESBM	3700	2	B	23348	3	Entrepreneurial Environs	LEC	09:30 AM - 10:45 AM	MW		Banks,Cynthia Lee	42	Main Campus
5688	ESBM	3700	3	B	23237	3	Entrepreneurial Environs	LEC	02:00 PM - 03:15 PM	MW	KOBL 235		42	Main Campus
5689	ESBM	4570	1	B	23249	3	Entrepreneurial Finance	LEC	02:00 PM - 03:15 PM	MW		Bhagat,Sanjai	42	Main Campus
5690	ESBM	4830	1	B	23217	3	New Venture Creation	LEC	06:00 PM - 08:45 PM	W	KOBL S135	Albright,Hunter	30	Main Campus
5691	ESBM	4830	3	B	23181	3	New Venture Creation	LEC	05:00 PM - 07:45 PM	T	CASE E250	Werner,Walter	30	Main Campus
5692	FNCE	2010	1	B	23287	3	Fndmnts of Financial Analysis	LEC	12:30 PM - 01:45 PM	TTH		Brown,Daniel g	42	Main Campus
5693	FNCE	2010	2	B	23344	3	Fndmnts of Financial Analysis	LEC	02:00 PM - 03:15 PM	TTH		Brown,Daniel g	42	Main Campus
5694	FNCE	2010	3	B	23259	3	Fndmnts of Financial Analysis	LEC	05:00 PM - 06:15 PM	TTH	KOBL S125	Delgado,Francisco Antenor	40	Main Campus
5695	FNCE	2010	4	B	23459	3	Fndmnts of Financial Analysis	LEC	03:30 PM - 04:45 PM	TTH	KOBL S125	Delgado,Francisco Antenor	40	Main Campus
5696	FNCE	2820	1	B	23251	3	Intro Personal Finances	LEC	02:00 PM - 03:15 PM	MW			42	Main Campus
5697	FNCE	2820	2	B	23252	3	Intro Personal Finances	LEC	03:30 PM - 04:45 PM	MW			42	Main Campus
5698	FNCE	3010	1	B	22965	3	Corporate Finance	LEC	08:00 AM - 09:15 AM	MW	KOBL 300	Donchez,Robert Michael	42	Main Campus
5699	FNCE	3010	2	B	22966	3	Corporate Finance	LEC	09:30 AM - 10:45 AM	MW		Donchez,Robert Michael	42	Main Campus
5700	FNCE	3010	3	B	22967	3	Corporate Finance	LEC	03:30 PM - 04:45 PM	MW		Kline,Bruce Richard	42	Main Campus
5701	FNCE	3010	4	B	22968	3	Corporate Finance	LEC	05:00 PM - 06:15 PM	MW	FLMG 156	Kline,Bruce Richard	42	Main Campus
5702	FNCE	3010	5	B	23288	3	Corporate Finance	LEC	03:30 PM - 04:45 PM	MW	KOBL 255	Bernstein,Asaf	50	Main Campus
5703	FNCE	3010	5	B	23288	3	Corporate Finance	LEC	03:30 PM - 04:45 PM	MW	KOBL 255	Van Wesep,Edward D	50	Main Campus
5704	FNCE	3010	6	B	23182	3	Corporate Finance	LEC	02:00 PM - 03:15 PM	MW	KOBL 255	Van Wesep,Edward D	50	Main Campus
5705	FNCE	3010	6	B	23182	3	Corporate Finance	LEC	02:00 PM - 03:15 PM	MW	KOBL 255	Bernstein,Asaf	50	Main Campus
5706	FNCE	3010	7	B	23250	3	Corporate Finance	LEC	09:30 AM - 10:45 AM	MW	KOBL 340	Bernstein,Asaf	50	Main Campus
5707	FNCE	3010	7	B	23250	3	Corporate Finance	LEC	09:30 AM - 10:45 AM	MW	KOBL 340	Van Wesep,Edward D	50	Main Campus
5708	FNCE	3010	8	B	23460	3	Corporate Finance	LEC	08:00 AM - 09:15 AM	MW	KOBL 340	Van Wesep,Edward D	50	Main Campus
5709	FNCE	3010	8	B	23460	3	Corporate Finance	LEC	08:00 AM - 09:15 AM	MW	KOBL 340	Bernstein,Asaf	50	Main Campus
5710	FNCE	3010	9	B	23461	3	Corporate Finance	LEC	05:00 PM - 06:15 PM	TTH	FLMG 156	Kline,Bruce Richard	42	Main Campus
5711	FNCE	3030	1	B	22962	3	Invstmnt & Prtfolio Mgmt	LEC	11:00 AM - 12:15 PM	TTH		Clark,Andrew	42	Main Campus
5712	FNCE	3030	2	B	22969	3	Invstmnt & Prtfolio Mgmt	LEC	08:00 AM - 09:15 AM	TTH	DUAN G131	Clark,Andrew	42	Main Campus
5713	FNCE	3030	3	B	35220	3	Invstmnt & Prtfolio Mgmt	LEC	09:30 AM - 10:45 AM	TTH		Clark,Andrew	42	Main Campus
5714	FNCE	3030	4	B	22970	3	Invstmnt & Prtfolio Mgmt	LEC	03:30 PM - 04:45 PM	TTH	KOBL 235	Lewis,Ryan C	42	Main Campus
5715	FNCE	3030	5	B	23253	3	Invstmnt & Prtfolio Mgmt	LEC	05:00 PM - 06:15 PM	TTH	KOBL 235	Waters,Brian Todd	42	Main Campus
5716	FNCE	3030	5	B	23253	3	Invstmnt & Prtfolio Mgmt	LEC	05:00 PM - 06:15 PM	TTH	KOBL 235	Lewis,Ryan C	42	Main Campus
5717	FNCE	3030	6	B	23254	3	Invstmnt & Prtfolio Mgmt	LEC	02:00 PM - 03:15 PM	TTH	KOBL 235	Waters,Brian Todd	42	Main Campus
5718	FNCE	3030	6	B	23254	3	Invstmnt & Prtfolio Mgmt	LEC	02:00 PM - 03:15 PM	TTH	KOBL 235	Lewis,Ryan C	42	Main Campus
5719	FNCE	3030	7	B	23279	3	Invstmnt & Prtfolio Mgmt	LEC	11:00 AM - 12:15 PM	TTH	KOBL 300	Lewis,Ryan C	42	Main Campus
5720	FNCE	3030	8	B	23345	3	Invstmnt & Prtfolio Mgmt	LEC	08:00 AM - 09:15 AM	TTH	KOBL 300	Lewis,Ryan C	42	Main Campus
5721	FNCE	3030	9	B	23462	3	Invstmnt & Prtfolio Mgmt	LEC	09:30 AM - 10:45 AM	TTH	KOBL 300	Waters,Brian Todd	42	Main Campus
5722	FNCE	3030	9	B	23462	3	Invstmnt & Prtfolio Mgmt	LEC	09:30 AM - 10:45 AM	TTH	KOBL 300	Lewis,Ryan C	42	Main Campus
5723	FNCE	3040	2	B	23471	3	Retirement Planning	LEC	05:00 PM - 07:45 PM	W	KOBL 255	Gardner,David Eugene	40	Main Campus
5724	FNCE	3060	2	B	23472	3	Estate Planning	LEC	05:00 PM - 07:45 PM	T	KOBL 375	Goodman,Miriam Mimi A	39	Main Campus
5725	FNCE	3820	2	B	23470	3	Principles of PFP and Insuranc	LEC	02:00 PM - 03:15 PM	MW	KOBL 320	Starn Jr,Harry Mohr	50	Main Campus
5726	FNCE	4040	1	B	23346	3	Derivative Securities	LEC	09:30 AM - 10:45 AM	TTH	KOBL 230	Davies,Shaun William	42	Main Campus
5727	FNCE	4040	2	B	23306	3	Derivative Securities	LEC	12:30 PM - 01:45 PM	TTH	KOBL 230	Davies,Shaun William	42	Main Campus
5728	FNCE	4040	3	B	23310	3	Derivative Securities	LEC	11:00 AM - 12:15 PM	TTH	KOBL 230	Davies,Shaun William	42	Main Campus
5729	FNCE	4040	4	B	23311	3	Derivative Securities	LEC	08:00 AM - 09:15 AM	MW	KOBL 230	Davies,Shaun William	42	Main Campus
5730	FNCE	4040	5	B	35223	3	Derivative Securities	LEC	09:30 AM - 10:45 AM	MW	KOBL 230	Davies,Shaun William	42	Main Campus
5731	FNCE	4040	6	B	35224	3	Derivative Securities	LEC	11:00 AM - 12:15 PM	MW	KOBL 230	Davies,Shaun William	42	Main Campus
5732	FNCE	4050	1	B	22963	3	Capitl Invstmnt Analysis	LEC	11:00 AM - 12:15 PM	TTH		Donchez,Robert Michael	42	Main Campus
5733	FNCE	4050	2	B	22964	3	Capitl Invstmnt Analysis	LEC	12:30 PM - 01:45 PM	TTH		Donchez,Robert Michael	42	Main Campus
5734	FNCE	4070	1	B	23465	3	Fin Markets & Institutns	LEC	05:00 PM - 06:15 PM	TTH	KOBL 330	Brown,Daniel g	50	Main Campus
5735	FNCE	4826	1	B	35227	3	Expr Seminar: Corp Governance	LEC	06:30 PM - 09:15 PM	M	KOBL 230	Bhagat,Sanjai	30	Main Campus
5736	FNCE	4830	800	B	23062	3	Seminar in Investment Banking	LEC	03:30 PM - 06:15 PM	W	KOBL 340	Leach,Chris	30	Main Campus
5737	FNCE	4830	800	B	23062	3	Seminar in Investment Banking	LEC	03:30 PM - 06:15 PM	W	KOBL 340	Caccia,Roberto	30	Main Campus
5738	FNCE	4835	1	B	23301	3	Fixed Income Securities	LEC	12:30 PM - 01:45 PM	TTH	KOBL S233	Stutzer,Michael J.	20	Main Campus
5739	FNCE	4840	2	B	23473	3	Prsnal Financial Plan Capstone	LEC	05:00 PM - 05:50 PM	W	KOBL 355	McNary,Judith D	20	Main Campus
5740	FNCE	4850	1	B	22960	3	Bus Senior Sem in Finance	SEM	03:30 PM - 04:45 PM	TTH	KOBL 230	Stephenson,Craig Allen	42	Main Campus
5741	FNCE	4850	2	B	22961	3	Bus Senior Sem in Finance	SEM	02:00 PM - 03:15 PM	TTH	KOBL 230	Stephenson,Craig Allen	42	Main Campus
5742	FNCE	4850	3	B	23347	3	Bus Senior Sem in Finance	SEM	05:00 PM - 06:15 PM	TTH	KOBL 230	Stephenson,Craig Allen	42	Main Campus
5743	INBU	3450	1	B	23343	3	International Marketing	LEC	02:00 PM - 03:15 PM	MW	KOBL 220	Koc,Ozlem	50	Main Campus
5744	MGM	3100	1	B	23045	3	Operations Management	LEC	12:30 PM - 01:45 PM	TTH	KOBL 375	Denton,D. Keith	39	Main Campus
5745	MGM	3100	2	B	23046	3	Operations Management	LEC	02:00 PM - 03:15 PM	TTH	KOBL 375	Denton,D. Keith	39	Main Campus
5746	MGM	3100	3	B	23315	3	Operations Management	LEC	03:30 PM - 04:45 PM	TTH	KOBL 375	Denton,D. Keith	39	Main Campus
5747	MGM	4110	1	B	23047	3	Supply Chain Management	LEC	02:00 PM - 03:15 PM	TTH	KOBL 220	Ravishankar,Gurumurthi	40	Main Campus
5748	MGM	4110	2	B	23099	3	Supply Chain Management	LEC	12:30 PM - 01:45 PM	TTH	KOBL 220	Ravishankar,Gurumurthi	40	Main Campus
5749	MGM	4120	1	B	23050	3	Managing Business Processes	LEC	03:30 PM - 04:45 PM	TTH	KOBL 320	Seward,Lori Elizabeth	40	Main Campus
5750	MGM	4120	2	B	23267	3	Managing Business Processes	LEC	02:00 PM - 03:15 PM	TTH	KOBL 320	Seward,Lori Elizabeth	40	Main Campus
5751	MGM	4130	1	B	23025	3	Sustainable Operations	LEC	12:30 PM - 01:45 PM	MW	KOBL 235	Stockton,Keith Michael	32	Main Campus
5752	MGM	4140	1	B	23026	3	Project Management	LEC	02:00 PM - 03:15 PM	MW		Zikmund,Noah Todd	42	Main Campus
5753	MGM	4140	2	B	23193	3	Project Management	LEC	12:30 PM - 01:45 PM	TTH	KOBL 320	Lacek,David	50	Main Campus
5754	MGM	4140	3	B	23341	3	Project Management	LEC	05:00 PM - 06:15 PM	TTH	KOBL S135	Rodgers,Timothy William	50	Main Campus
5755	MGM	4140	4	B	23268	3	Project Management	LEC	03:30 PM - 04:45 PM	MW		Zikmund,Noah Todd	42	Main Campus
5756	MGM	4150	1	B	22996	3	Intrntnl Operatns Mgmt	LEC	03:30 PM - 06:15 PM	M	KOBL 340	D'Esposito Jr,Pasquale George	70	Main Campus
5757	MGM	4200	1	B	23292	3	Competitive Strategy	LEC	11:00 AM - 01:45 PM	M	KOBL 220	Hawk,Ashton Lewis	40	Main Campus
5758	MGM	4820	1	B	35237	3	Topics in Business	LEC	11:00 AM - 12:15 PM	TTH	KOBL 320	Seward,Lori Elizabeth	50	Main Campus
5759	MGM	4850	2	B	23179	3	Senior Seminar in Management	SEM	12:30 PM - 01:45 PM	TTH	KOBL 210	Lewis,Edward	60	Main Campus
5760	MKT	3050	1	B	34750	3	Customer Analytics	LEC	02:00 PM - 03:15 PM	TTH	CASE E250	Bein,Jonathan Weber	40	Main Campus
5761	MKT	3100	1	B	23229	3	Fundamentals of Prof Selling	LEC	05:00 PM - 06:15 PM	MW	KOBL 235	Higgins,Brian	42	Main Campus
5762	MKT	3100	2	B	23266	3	Fundamentals of Prof Selling	LEC	03:30 PM - 04:45 PM	MW	KOBL 235	Higgins,Brian	42	Main Campus
5763	MKT	3100	3	B	23336	3	Fundamentals of Prof Selling	LEC	12:30 PM - 01:45 PM	MW	KOBL S127	Lewis,Mary Beth	50	Main Campus
5764	MKT	3201	1	B	35063	3	Business Analytics	LEC	09:30 AM - 10:45 AM	MW	KOBL 320	Larsen,Kai R	10	Main Campus
5765	MKT	3201	2	B	23269	3	Business Analytics	LEC	11:00 AM - 12:15 PM	MW	KOBL 320	Larsen,Kai R	20	Main Campus
5766	MKT	3250	1	B	23337	3	Buyer Behavior	LEC	12:30 PM - 01:45 PM	MW	KOBL 300	Purmehdi,Mostafa	52	Main Campus
5767	MKT	3250	2	B	22943	3	Buyer Behavior	LEC	02:00 PM - 03:15 PM	MW	KOBL 300	Purmehdi,Mostafa	52	Main Campus
5768	MKT	3250	3	B	22944	3	Buyer Behavior	LEC	11:00 AM - 12:15 PM	TTH			42	Main Campus
5769	MKT	3250	4	B	23338	3	Buyer Behavior	LEC	12:30 PM - 01:45 PM	TTH			42	Main Campus
5770	MKT	3350	1	B	22945	3	Marketing Research & Analytics	LEC	08:00 AM - 09:15 AM	TTH	KOBL 235	Koc,Ozlem	42	Main Campus
5771	MKT	3350	2	B	22946	3	Marketing Research & Analytics	LEC	09:30 AM - 10:45 AM	TTH	KOBL 235	Koc,Ozlem	42	Main Campus
5772	MKT	3350	3	B	22947	3	Marketing Research & Analytics	LEC	12:30 PM - 01:45 PM	TTH	KOBL 300	Koc,Ozlem	50	Main Campus
5773	MKT	3350	4	B	23199	3	Marketing Research & Analytics	LEC	02:00 PM - 03:15 PM	TTH	KOBL 300	Bumbaca,Federico	50	Main Campus
5774	MKT	3700	1	B	23290	3	Digital Marketing	LEC	08:00 AM - 09:15 AM	TTH	DUAN G125	McMahon,Kevin Christopher	42	Main Campus
5775	MKT	3700	2	B	23339	3	Digital Marketing	LEC	09:30 AM - 10:45 AM	TTH		McMahon,Kevin Christopher	42	Main Campus
5776	MKT	4250	1	B	22941	3	Product Strategy	LEC	11:00 AM - 12:15 PM	MW		Goren,Bahriye	46	Main Campus
5777	MKT	4250	2	B	22942	3	Product Strategy	LEC	12:30 PM - 01:45 PM	MW		Goren,Bahriye	42	Main Campus
5778	MKT	4250	3	B	23340	3	Product Strategy	LEC	02:00 PM - 03:15 PM	MW		Goren,Bahriye	42	Main Campus
5779	MKT	4300	1	B	23063	3	Pricing & Chan of Distribution	LEC	05:00 PM - 06:15 PM	MW	KOBL 230	Liu,Liu	42	Main Campus
5780	MKT	4300	2	B	23064	3	Pricing & Chan of Distribution	LEC	03:30 PM - 04:45 PM	MW	KOBL 230	Liu,Liu	42	Main Campus
5781	MKT	4300	3	B	23065	3	Pricing & Chan of Distribution	LEC	02:00 PM - 03:15 PM	MW	KOBL 230	Liu,Liu	42	Main Campus
5782	MKT	4300	4	B	23265	3	Pricing & Chan of Distribution	LEC	11:00 AM - 12:15 PM	TTH	KOBL 235	Bein,Jonathan Weber	42	Main Campus
5783	MKT	4550	1	B	22939	3	Advrtisng & Promotn Mgmt	LEC	09:30 AM - 10:45 AM	MW	KOBL 235	Young,E Morgan	42	Main Campus
5784	MKT	4550	2	B	22940	3	Advrtisng & Promotn Mgmt	LEC	08:00 AM - 09:15 AM	MW	KOBL 235	Young,E Morgan	42	Main Campus
5785	MKT	4550	3	B	23049	3	Advrtisng & Promotn Mgmt	LEC	11:00 AM - 12:15 PM	MW	KOBL 235	Young,E Morgan	42	Main Campus
5786	MKT	4820	4	B	23061	3	Special Topics in Mktg	LEC	11:00 AM - 12:15 PM	TTH	STAD 136C	Weintraub,William H	8	Main Campus
5787	MKT	4850	1	B	23264	3	Senior Seminar in Marketing	SEM	12:30 PM - 01:45 PM	TTH	KOBL S127		77	Main Campus
5788	MKT	7810	1	B	23493	3	Doc Sem: Psyc Appr to Res Mktg	SEM	09:45 AM - 12:45 PM	W		Williams,Lawrence Edwin	10	Main Campus
5789	MBAX	6110	2	B	23469	3	Entrepeneurial Finance	LEC	02:00 PM - 03:15 PM	TTH		Leach,Chris	42	Main Campus
5790	MBAX	6170	2	B	23067	3	New Venture Creation	LEC	06:30 PM - 09:15 PM	W	KTCH 1B71	Werner,Walter	20	Main Campus
5791	MBAX	6220	1	B	23327	3	Invstmnt Mgmt & Analysis	LEC	11:00 AM - 12:15 PM	MW	KOBL 300	Gross,David Michael	55	Main Campus
5792	MBAX	6240	1	B	23218	3	Financial Mrkts, Instns & Regs	LEC	09:30 AM - 10:45 AM	MW		Brown,Daniel g	42	Main Campus
5793	MBAX	6280	1	B	35273	3	Entrepreneurship Valuation	LEC	07:00 AM - 08:45 AM	TTH	KOBL S233	Caccia,Roberto	15	Main Campus
5794	MBAX	6310	1	B	35277	3	Marketing Strategy	LEC	02:00 PM - 03:15 PM	MW	KOBL 340	Kennedy,Heather Lee	30	Main Campus
5795	MBAX	6330	1	B	23291	3	Market Intelligence	LEC	08:00 AM - 09:15 AM	TTH	ECCS 1B12	Purmehdi,Mostafa	55	Main Campus
5796	MBAX	6360	1	B	23364	3	New Product Development	LEC	03:30 PM - 04:45 PM	MW	KOBL 300	Waddell,Jay L	50	Main Campus
5797	MBAX	6420	1	B	22986	3	IT and Business Strategy	LEC	09:30 AM - 12:15 PM	W	KOBL S110	Montealegre,Ramiro	30	Main Campus
5798	MBAX	6500	1	B	22987	3	Mgmt of Orgnzatnl Change	LEC	06:30 PM - 09:15 PM	M	KOBL 235	Bennett,Douglas P	55	Main Campus
5799	MBAX	6530	1	B	23028	3	Negotiatng/Conflict Mgmt	LEC	02:00 PM - 04:45 PM	W	KOBL S125	Bennett,Douglas P	25	Main Campus
5800	MBAX	6610	1	B	22988	3	Real Est Fnce/Invst Anal	LEC	11:00 AM - 12:15 PM	TTH	KOBL 220	Thibodeau,Thomas G	50	Main Campus
5801	MBAX	6640	1	B	22989	3	Real Estate Law & Practice	LEC	08:00 AM - 09:15 AM	MW		Mankamyer Jr,Jack Laverne	20	Main Campus
5802	MBAX	6250	2	B82	23309	3	Derivative Securities	LEC	09:30 AM - 10:45 AM	TTH	KOBL 375	Garcia,Diego	30	Main Campus
5803	MBAX	6610	3	B82	23502	3	Real Est Fnce/Invst Anal	LEC	09:30 AM - 12:15 PM	MTH		Thibodeau,Thomas G	50	Main Campus
5804	MBAX	6630	1	B82	23029	3	Real Estate Economics	LEC	02:00 PM - 04:45 PM	MW	KOBL 355	Billings,Stephen Bradley	15	Main Campus
5805	MBA	6002	1	B	35244	3	S M E Foundations for Business	LEC	09:30 AM - 12:00 PM	F	KOBL S125		50	Main Campus
5806	MBA	6002	2	B	35246	3	S M E Foundations for Business	LEC	02:00 PM - 04:30 PM	F	KOBL S125		50	Main Campus
5807	MBA	6081	1	B	35250	3	Data and Decisions	LEC	09:30 AM - 12:00 PM	M	KOBL S125		50	Main Campus
5808	MBA	6081	2	B	35251	3	Data and Decisions	LEC	02:00 PM - 04:30 PM	M	KOBL S125		50	Main Campus
5809	MSB	5030	1	B	23328	3	Quantitative Methods	LEC	09:30 AM - 10:45 AM	TTH	KOBL 220	Cookson,John Anthony	42	Main Campus
5810	MSB	5030	2	B	23329	3	Quantitative Methods	LEC	08:00 AM - 09:15 AM	TTH	ECCS 1B28	Cookson,John Anthony	50	Main Campus
5811	MSB	5030	002B	B	23480	3	Quantitative Methods	LEC	-			Cookson,John Anthony	50	Main Campus
5812	MSB	5030	3	B	23491	3	Quantitative Methods	LEC	02:00 PM - 03:15 PM	TTH		Cookson,John Anthony	42	Main Campus
5813	MSB	5680	2	B	23503	3	Decision Modeling and Applicat	LEC	02:00 PM - 04:45 PM	W	KOBL S233	Laguna,Manuel	20	Main Campus
5814	MSB	5015	2	B81	23504	1.5	Managerial Economics	LEC	09:30 AM - 12:15 PM	M	KOBL 375	Van Wesep,Edward D	39	Main Campus
5815	MSB	5020	1	B81	23331	1.5	Financial Accounting	LEC	09:30 AM - 12:15 PM	W	KOBL 375	Neil,Joshua Ryan	39	Main Campus
5816	MSB	5060	1	B81	23332	3	Corporate Finance	LEC	09:30 AM - 12:15 PM	TTH	KOBL 375	Gross,David Michael	39	Main Campus
5817	MSBX	5405	1	B	23330	3	Struct Data Modeling/Analysis	LEC	09:30 AM - 10:45 AM	TTH	ECCS 1B28		75	Main Campus
5818	MSBX	5405	001B	B	23479	3	Struct Data Modeling/Analysis	LEC	-				75	Main Campus
5819	MSBX	5405	2	B	23492	3	Struct Data Modeling/Analysis	LEC	11:00 AM - 12:15 PM	TTH	CASE E250		42	Main Campus
5820	MSBX	5450	3	B	23495	3	Transportation and Logistics	LEC	05:30 PM - 08:00 PM	T	ECCS 1B28	Yokell,Ben E	75	Main Campus
5821	MSBX	5450	003B	B	23497	3	Transportation and Logistics	LEC	-			Yokell,Ben E	75	Main Campus
5822	MSBX	5470	2	B	23496	3	Procurement and Contracting	LEC	05:30 PM - 08:00 PM	TH	ECCS 1B28	Nuzum,Paul M	75	Main Campus
5823	MSBX	5470	002B	B	23481	3	Procurement and Contracting	LEC	-			Nuzum,Paul M	75	Main Campus
5824	MSBX	5480	2	B	23500	3	Information Security Managemnt	LEC	12:30 PM - 01:45 PM	MW		Eargle,David	30	Main Campus
5825	OPIM	7400	1	B	23304	3	Stochastic Dynamic Programming	LEC	-	TBA		Zhang,Dan	10	Main Campus
5826	ORM	7310	1	B	23464	3	Sem-Organizational Behav	SEM	-	TBA		Volpone,Sabrina	10	Main Campus
5827	ORM	7310	1	B	23464	3	Sem-Organizational Behav	SEM	-	TBA		Hekman,David R	10	Main Campus
5828	REAL	3000	1	B	22938	3	Principles of Real Estate	LEC	08:00 AM - 09:15 AM	TTH	KOBL S110	Sears,Curtis R	40	Main Campus
5829	REAL	3000	2	B	22994	3	Principles of Real Estate	LEC	12:30 PM - 01:45 PM	TTH	KOBL S125	Sears,Curtis R	40	Main Campus
5830	REAL	3000	3	B	23087	3	Principles of Real Estate	LEC	02:00 PM - 03:15 PM	TTH	KOBL S125	Sears,Curtis R	40	Main Campus
5831	REAL	4000	1	B	23066	3	Real Estate Law	LEC	05:00 PM - 07:45 PM	TH	KOBL S125		60	Main Campus
5832	REAL	4100	1	B	23100	3	Finance & Invstmnt Anal	LEC	03:30 PM - 04:45 PM	TTH	KOBL 255	Gallagher,Emily	50	Main Campus
5833	REAL	4100	2	B	23106	3	Finance & Invstmnt Anal	LEC	05:00 PM - 06:15 PM	TTH	KOBL 255	Gallagher,Emily	50	Main Campus
5834	REAL	4100	3	B	35068	3	Finance & Invstmnt Anal	LEC	02:00 PM - 03:15 PM	TTH	KOBL 255	Gallagher,Emily	50	Main Campus
5835	REAL	4200	1	B	23467	3	Not Your Parents Real Estate	LEC	03:30 PM - 06:15 PM	M	KOBL S233	Delprete,Anthony	20	Main Campus
5836	REAL	4400	1	B	36546	3	Real Estate Economics	LEC	08:00 AM - 09:15 AM	TTH			42	Main Campus
5838	REAL	4820	2	B	23308	3	Topics:Real Estate Development	LEC	05:00 PM - 07:45 PM	T	MUEN E432	Hibbard,Ryan Jones	50	Main Campus
5839	ARC	2100	10	B	36110	6	Foundations of Architecture	LEC	01:00 PM - 01:50 PM	W	ENVD 301		64	Main Campus
5840	ARC	2100	10	B	36110	6	Foundations of Architecture	LEC	01:00 PM - 01:50 PM	M	ENVD 120		64	Main Campus
5841	ARC	2100	11	B	36111	6	Foundations of Architecture	LAB	10:00 AM - 12:30 PM	MW	ENVD 122		16	Main Campus
5842	ARC	2100	11	B	36111	6	Foundations of Architecture	LAB	09:00 AM - 09:50 AM	MW	ENVD 301		16	Main Campus
5843	ARC	2100	12	B	36112	6	Foundations of Architecture	LAB	09:00 AM - 12:30 PM	MW	ENVD 301		16	Main Campus
5844	ARC	2100	13	B	36113	6	Foundations of Architecture	LAB	09:00 AM - 12:30 PM	MW	ENVD 301		0	Main Campus
5845	ARC	2100	14	B	36114	6	Foundations of Architecture	LAB	02:00 PM - 05:30 PM	MW	ENVD 120		16	Main Campus
5846	ARC	2100	15	B	36115	6	Foundations of Architecture	LAB	02:00 PM - 05:30 PM	MW	ENVD 301		16	Main Campus
5847	ARC	2100	16	B	36116	6	Foundations of Architecture	LAB	02:00 PM - 05:30 PM	MW	ENVD 301		0	Main Campus
5848	ARC	2115	1	B	36312	3	ARCH Materials and Methods	LEC	12:30 PM - 01:45 PM	TTH	CHEM 142		150	Main Campus
5849	ARC	3100	10	B	36035	6	Intermediate Architecture	LEC	09:00 AM - 09:50 AM	MW	ENVD 301		20	Main Campus
5850	ARC	3100	11	B	36036	6	Intermediate Architecture	LAB	10:00 AM - 01:30 PM	MW	ENVD 301		16	Main Campus
5851	ARC	3100	20	B	36037	6	Intermediate Architecture	LEC	09:00 AM - 09:50 AM	MW	ENVD 301		20	Main Campus
5852	ARC	3100	21	B	36039	6	Intermediate Architecture	LAB	10:00 AM - 01:30 PM	MW	ENVD 301		16	Main Campus
5853	ARC	3100	30	B	36040	6	Intermediate Architecture	LEC	09:00 AM - 09:50 AM	MW	ENVD 301		20	Main Campus
5854	ARC	3100	31	B	36041	6	Intermediate Architecture	LAB	10:00 AM - 01:30 PM	MW	ENVD 301		16	Main Campus
5855	ARC	3100	40	B	36042	6	Intermediate Architecture	LEC	01:00 PM - 01:50 PM	MW	ENVD 301		20	Main Campus
5856	ARC	3100	41	B	36043	6	Intermediate Architecture	LAB	02:00 PM - 05:30 PM	MW	ENVD 301		16	Main Campus
5857	ARC	3100	50	B	36044	6	Intermediate Architecture	LEC	01:00 PM - 01:50 PM	MW	ENVD 301		20	Main Campus
5858	ARC	3100	51	B	36045	6	Intermediate Architecture	LAB	02:00 PM - 05:30 PM	MW	ENVD 301		16	Main Campus
5859	ARC	4010	1	B	13304	5	Architectural Apprec & Design	LEC	03:00 PM - 05:30 PM	MW	ENVD 301		15	Main Campus
5860	ARC	4010	2	B	13305	5	Architectural Apprec & Design	LEC	03:00 PM - 05:30 PM	MW	ENVD 301		15	Main Campus
5861	ARC	4010	3	B	13306	5	Architectural Apprec & Design	LEC	03:00 PM - 05:30 PM	MW			0	Main Campus
5862	ARC	4115	1	B	36310	3	ARCH Building Technology	LEC	09:30 AM - 10:45 AM	TTH	MCOL W100		150	Main Campus
5863	ENVD	1004	10	B	13314	3	Intro Environ Design	LEC	03:30 PM - 04:45 PM	TTH	HUMN 1B50		160	Main Campus
5864	ENVD	1004	16	B	13334	3	Intro Environ Design	REC	11:00 AM - 11:50 AM	TH	ENVD 1B05F		20	Main Campus
5865	ENVD	1022	1	B	36135	1	Tech 3: Apps for ENVD	SEM	08:30 AM - 09:20 AM	T	CINC 152  H		40	Main Campus
5866	ENVD	1022	2	B	36136	1	Tech 3: Apps for ENVD	SEM	10:00 AM - 10:50 AM	T	CINC 152  H		40	Main Campus
5867	ENVD	1022	3	B	36137	1	Tech 3: Apps for ENVD	SEM	11:00 AM - 11:50 AM	T	CINC 152  H		40	Main Campus
5868	ENVD	1022	4	B	36138	1	Tech 3: Apps for ENVD	SEM	10:00 AM - 10:50 AM	TH	CINC 152  H		40	Main Campus
5869	ENVD	1022	5	B	36139	1	Tech 3: Apps for ENVD	SEM	11:00 AM - 11:50 AM	TH	CINC 152  H		40	Main Campus
5870	ENVD	1024	1	B	36317	3	History: Built Environment	LEC	03:30 PM - 04:45 PM	TTH	RAMY C250		150	Main Campus
5871	ENVD	1150	1	B	36344	3	ENVD First Year Writing	SEM	09:00 AM - 09:50 AM	MWF	HALE 240		20	Main Campus
5872	ENVD	1150	2	B	36345	3	ENVD First Year Writing	SEM	02:00 PM - 02:50 PM	MWF	HALE 260		20	Main Campus
5873	ENVD	1150	3	B	36347	3	ENVD First Year Writing	SEM	09:30 AM - 10:45 AM	TTH			20	Main Campus
5874	ENVD	1150	4	B	36348	3	ENVD First Year Writing	SEM	10:00 AM - 10:50 AM	MWF			20	Main Campus
5875	ENVD	1976	1	B	13387	1	Colloquium Exploration Seminar	SEM	05:00 PM - 05:50 PM	T	RAMY C250		160	Main Campus
5876	ENVD	2101	1	B	36319	3	Planning and Implementation	LEC	02:00 PM - 03:15 PM	TTH	CHEM 142		150	Main Campus
5877	ENVD	3152	1	B	13287	3	Intro Comp Graph Applic	LEC	09:00 AM - 09:50 AM	MWF	ENVD 211		20	Main Campus
5878	ENVD	3152	2	B	33563	3	Intro Comp Graph Applic	LEC	09:30 AM - 10:45 AM	TTH	ENVD 211		20	Main Campus
5879	ENVD	3152	3	B	13364	3	Intro Comp Graph Applic	LEC	10:00 AM - 10:50 AM	MWF	ENVD 211		20	Main Campus
5880	ENVD	3152	4	B	13367	3	Intro Comp Graph Applic	LEC	11:00 AM - 11:50 AM	MWF	ENVD 211		20	Main Campus
5881	ENVD	3152	5	B	33564	3	Intro Comp Graph Applic	LEC	11:00 AM - 12:15 PM	TTH	ENVD 211		20	Main Campus
5882	ENVD	3152	6	B	33565	3	Intro Comp Graph Applic	LEC	12:30 PM - 01:45 PM	TTH	ENVD 211		20	Main Campus
5883	ENVD	3152	7	B	33566	3	Intro Comp Graph Applic	LEC	02:00 PM - 03:15 PM	TTH	ENVD 211		20	Main Campus
5884	ENVD	3152	8	B	33567	3	Intro Comp Graph Applic	LEC	03:30 PM - 04:45 PM	TTH	ENVD 211		20	Main Campus
5885	ENVD	3152	9	B	33568	3	Intro Comp Graph Applic	LEC	05:00 PM - 06:15 PM	TTH	ENVD 211		20	Main Campus
5886	ENVD	3929	802	B	13389	1	Peer Leadership and Mentorship	SEM	12:00 PM - 12:50 PM	F	ENVD 122	Richmond,Alea Robyn	25	Main Campus
5887	ENVD	3929	802	B	13389	1	Peer Leadership and Mentorship	SEM	12:00 PM - 12:50 PM	F	ENVD 122	West,Dylan Andrew	25	Main Campus
5888	ENVD	3972	1	B	13388	3	Advanced Writing ENVD	SEM	12:00 PM - 12:50 PM	MWF	MUEN E126	Fantalis,Maryanne	20	Main Campus
5889	ENVD	4100	1	B	13288	3	Advanced Design Lab 1	LEC	11:00 AM - 12:15 PM	TTH	ENVD 122		15	Main Campus
5890	ENVD	4322	1	B	33516	3	Special Topics: Graphics	SEM	09:30 AM - 10:45 AM	TTH	ENVD 122		20	Main Campus
5891	ENVD	4352	1	B	13319	3	Spec Topics: Comput Meth	SEM	05:00 PM - 06:15 PM	MW			20	Main Campus
5892	ENVD	4352	1	B	13319	3	Spec Topics: Comput Meth	SEM	02:00 PM - 03:15 PM	TTH	CINC 152  H		20	Main Campus
5893	ENVD	4352	3	B	13366	3	Spec Topics: Comput Meth	SEM	03:30 PM - 04:45 PM	TTH	CINC 152  H		20	Main Campus
5894	ENVD	4352	5	B	13368	3	Spec Topics: Comput Meth	SEM	11:00 AM - 12:15 PM	TTH	CINC 152  H	Ehly,Jeremy	20	Main Campus
5896	ENVD	4365	1	B	13333	3	Spec Tpcs: Techno & Prac	SEM	05:30 PM - 06:45 PM	TTH	CINC 152  H		28	Main Campus
5897	ENVD	4365	100	B	33517	3	Spec Tpcs: Techno & Prac	SEM	12:30 PM - 01:45 PM	TTH	ENVD 120		60	Main Campus
5898	ENVD	4972	800	B	13312	2	Honors Research Methods	SEM	03:30 PM - 04:45 PM	TTH	ENVD 120		20	Main Campus
5899	ENVD	1010	10	B81	36054	3	Intro to Products of Design	LEC	12:00 PM - 12:50 PM	W	FLMG 155		160	Main Campus
5900	ENVD	1010	11	B81	36055	3	Intro to Products of Design	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5901	ENVD	1010	12	B81	36056	3	Intro to Products of Design	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5902	ENVD	1010	13	B81	36057	3	Intro to Products of Design	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5903	ENVD	1010	14	B81	36058	3	Intro to Products of Design	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5904	ENVD	1010	21	B81	36059	3	Intro to Products of Design	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5905	ENVD	1010	22	B81	36060	3	Intro to Products of Design	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5906	ENVD	1010	23	B81	36061	3	Intro to Products of Design	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5907	ENVD	1010	24	B81	36062	3	Intro to Products of Design	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5908	ENVD	1110	10	B81	36082	3	Fundamentals of EPOD	LEC	12:00 PM - 12:50 PM	F	FLMG 155		32	Main Campus
5909	ENVD	1110	11	B81	36083	3	Fundamentals of EPOD	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5910	ENVD	1110	12	B81	36084	3	Fundamentals of EPOD	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5911	ENVD	1110	13	B81	36085	3	Fundamentals of EPOD	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		0	Main Campus
5912	ENVD	1120	10	B81	36086	3	Fundamentals of Architecture	LEC	12:00 PM - 12:50 PM	M	FLMG 155		64	Main Campus
5913	ENVD	1120	11	B81	36087	3	Fundamentals of Architecture	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5914	ENVD	1120	12	B81	36090	3	Fundamentals of Architecture	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5915	ENVD	1120	21	B81	36088	3	Fundamentals of Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5916	ENVD	1120	22	B81	36089	3	Fundamentals of Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5917	ENVD	1130	10	B81	36091	3	Fundamentals of Landscape Arch	LEC	12:00 PM - 12:50 PM	M			32	Main Campus
5918	ENVD	1130	11	B81	36092	3	Fundamentals of Landscape Arch	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5919	ENVD	1130	12	B81	36093	3	Fundamentals of Landscape Arch	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5920	ENVD	1140	20	B81	36349	3	Fundamentals of Planning/Urban	LEC	12:00 PM - 12:50 PM	M	ENVD 301		32	Main Campus
5921	ENVD	1140	21	B81	36350	3	Fundamentals of Planning/Urban	LAB	01:00 PM - 01:50 PM	MWF	ENVD 301		16	Main Campus
5922	ENVD	1140	22	B81	36351	3	Fundamentals of Planning/Urban	LAB	01:00 PM - 01:50 PM	MWF	ENVD 301		16	Main Campus
5923	ENVD	3152	300	B81	33561	3	Intro Comp Graph Applic	LEC	03:00 PM - 05:30 PM	MWF	ENVD 211		20	Main Campus
5924	ENVD	1020	10	B82	36073	3	Introduction to Architecture	LEC	12:00 PM - 12:50 PM	W	FLMG 155		160	Main Campus
5925	ENVD	1020	11	B82	36074	3	Introduction to Architecture	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5926	ENVD	1020	12	B82	36081	3	Introduction to Architecture	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5927	ENVD	1020	13	B82	36075	3	Introduction to Architecture	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5928	ENVD	1020	14	B82	36076	3	Introduction to Architecture	LAB	09:00 AM - 11:20 AM	MWF	ENVD 1B05F		20	Main Campus
5929	ENVD	1020	21	B82	36077	3	Introduction to Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5930	ENVD	1020	22	B82	36078	3	Introduction to Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5931	ENVD	1020	23	B82	36079	3	Introduction to Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5932	ENVD	1020	24	B82	36080	3	Introduction to Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 1B05F		20	Main Campus
5933	ENVD	1110	10	B82	36094	3	Fundamentals of EPOD	LEC	12:00 PM - 12:50 PM	F	FLMG 155		48	Main Campus
5934	ENVD	1110	11	B82	36095	3	Fundamentals of EPOD	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5935	ENVD	1110	12	B82	36096	3	Fundamentals of EPOD	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5936	ENVD	1110	13	B82	36097	3	Fundamentals of EPOD	LAB	09:00 AM - 11:20 AM	MWF	ENVD 301		16	Main Campus
5937	ENVD	1120	10	B82	36098	3	Fundamentals of Architecture	LEC	12:00 PM - 12:50 PM	M	FLMG 155		50	Main Campus
5938	ENVD	1120	11	B82	36099	3	Fundamentals of Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5939	ENVD	1120	12	B82	36100	3	Fundamentals of Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5940	ENVD	1120	13	B82	36101	3	Fundamentals of Architecture	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5941	ENVD	1130	10	B82	36102	3	Fundamentals of Landscape Arch	LEC	12:00 PM - 12:50 PM	M			48	Main Campus
5942	ENVD	1130	11	B82	36103	3	Fundamentals of Landscape Arch	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5943	ENVD	1130	12	B82	36104	3	Fundamentals of Landscape Arch	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5944	ENVD	1130	13	B82	36105	3	Fundamentals of Landscape Arch	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		16	Main Campus
5945	ENVD	1140	20	B82	36352	3	Fundamentals of Planning/Urban	LEC	12:00 PM - 12:50 PM	M	ENVD 301		16	Main Campus
5946	ENVD	1140	21	B82	36353	3	Fundamentals of Planning/Urban	LAB	01:00 PM - 03:20 PM	MW	ENVD 301		16	Main Campus
5947	ENVD	1140	22	B82	36354	3	Fundamentals of Planning/Urban	LAB	01:00 PM - 03:20 PM	MWF	ENVD 301		0	Main Campus
5948	ENVD	3152	400	B82	33562	3	Intro Comp Graph Applic	LEC	03:00 PM - 05:30 PM	MWF	ENVD 211		20	Main Campus
5949	ENVD	5346	1	B	13320	3	Spec Topics: ENV Design	LEC	05:00 PM - 06:15 PM	TTH	ENVD 120		15	Main Campus
5950	EDU	1020	1	B	34489	1	First Year Success at CU	SEM	03:00 PM - 03:50 PM	M	EDUC 132		20	Main Campus
5951	EDU	1020	2	B	34490	1	First Year Success at CU	SEM	04:00 PM - 04:50 PM	M	EDUC 132		20	Main Campus
5952	EDU	1020	3	B	34491	1	First Year Success at CU	SEM	03:30 PM - 04:20 PM	T	EDUC 132		20	Main Campus
5953	EDU	1020	4	B	34492	1	First Year Success at CU	SEM	03:00 PM - 03:50 PM	W	EDUC 134		20	Main Campus
5954	EDU	1020	6	B	34494	1	First Year Success at CU	SEM	03:30 PM - 04:20 PM	TH	EDUC 134		20	Main Campus
5955	EDU	1500	801	B	24822	1	Success Strategy in Higher Ed	LEC	02:00 PM - 02:50 PM	TH	FLMG 265		20	Main Campus
5956	EDU	1500	802	B	24823	1	Success Strategy in Higher Ed	LEC	12:00 PM - 12:50 PM	F	FLMG 265		20	Main Campus
5957	EDU	1580	1	B	24778	3	Energy and Interactions	LEC	09:30 AM - 10:45 AM	TTH	EDUC 341	Writer,Jeffrey Hawkins	12	Main Campus
5958	EDU	1580	2	B	24813	3	Energy and Interactions	LEC	02:00 PM - 03:15 PM	TTH	EDUC 341	Writer,Jeffrey Hawkins	12	Main Campus
5959	EDU	1580	3	B	24833	3	Energy and Interactions	LEC	03:30 PM - 04:45 PM	TTH	EDUC 341	Writer,Jeffrey Hawkins	12	Main Campus
5960	EDU	1580	4	B	34372	3	Energy and Interactions	LEC	05:00 PM - 07:30 PM	M	EDUC 341		12	Main Campus
5961	EDU	2020	1	B	24525	1	Step 1 Inquiry App Tchg	SEM	11:00 AM - 12:15 PM	T	EDUC 346	Andrew,Julie Ann	30	Main Campus
5962	EDU	2020	2	B	24526	1	Step 1 Inquiry App Tchg	SEM	02:00 PM - 03:15 PM	T	EDUC 346	Andrew,Julie Ann	30	Main Campus
5963	EDU	2020	3	B	24840	1	Step 1 Inquiry App Tchg	SEM	11:00 AM - 12:15 PM	TH	EDUC 346	Andrew,Julie Ann	30	Main Campus
5964	EDU	2020	4	B	24862	1	Step 1 Inquiry App Tchg	SEM	02:00 PM - 03:15 PM	TH	EDUC 346	Andrew,Julie Ann	30	Main Campus
5965	EDU	2030	1	B	24527	2	Step 2 Inquiry Lsson Des	SEM	11:00 AM - 11:50 AM	MW	EDUC 346	Andrew,Julie Ann	30	Main Campus
5966	EDU	2030	2	B	24528	2	Step 2 Inquiry Lsson Des	SEM	12:00 PM - 12:50 PM	MW	EDUC 346	Andrew,Julie Ann	30	Main Campus
5967	EDU	2125	1	B	24797	3	Hist Amer Public Educ	SEM	05:00 PM - 07:30 PM	T	EDUC 155		48	Main Campus
5968	EDU	2150	1	B	24720	3	Education in Film	SEM	05:00 PM - 07:30 PM	M	EDUC 231		35	Main Campus
5969	EDU	2311	1	B	34538	3	Child Lit Engmt Elem Sch	LEC	02:00 PM - 03:15 PM	TTH	GUGG 206		30	Main Campus
5970	EDU	2311	801	B	24701	3	Child Lit Engmt Elem Sch	LEC	05:00 PM - 07:30 PM	TH	EDUC 231		30	Main Campus
5971	EDU	2311	802	B	24892	3	Child Lit Engmt Elem Sch	LEC	05:00 PM - 07:30 PM	W	EDUC 231		30	Main Campus
5972	EDU	2311	803	B	34539	3	Child Lit Engmt Elem Sch	LEC	03:30 PM - 04:45 PM	TTH	EDUC 231		30	Main Campus
5973	EDU	2411	10	B	24561	4	Ed Psyc for Elem Schools	LEC	08:30 AM - 09:45 AM	MW	EDUC 134		36	Main Campus
5974	EDU	2411	11	B	24702	4	Ed Psyc for Elem Schools	PRA	03:00 PM - 05:00 PM	M	Meets at Off-Campus		12	Main Campus
5975	EDU	2411	12	B	24703	4	Ed Psyc for Elem Schools	PRA	03:00 PM - 05:00 PM	T	Meets at Off-Campus		12	Main Campus
5976	EDU	2411	13	B	24704	4	Ed Psyc for Elem Schools	PRA	03:00 PM - 05:00 PM	W	Meets at Off-Campus		12	Main Campus
5977	EDU	2910	311R	B	24906	1-3	Field Practicum I	PRA	12:00 PM - 12:50 PM	F	FLMG 294		20	Main Campus
5978	EDU	2919	10	B	34409	3	Renewing Democracy	LEC	01:00 PM - 01:50 PM	MW	EDUC 136		25	Main Campus
5979	EDU	2919	11	B	34410	3	Renewing Democracy	PRA	-	TBA	Meets at Off-Campus		25	Main Campus
5980	EDU	2919	20	B	34411	3	Renewing Democracy	LEC	03:00 PM - 03:50 PM	MW	EDUC 136		25	Main Campus
5981	EDU	2919	21	B	34412	3	Renewing Democracy	PRA	-	TBA	Meets at Off-Campus		25	Main Campus
5982	EDU	3013	1	B	24770	3	School & Society	LEC	05:00 PM - 07:30 PM	TH	EDUC 143		25	Main Campus
5983	EDU	3013	2	B	24536	3	School & Society	LEC	05:00 PM - 07:30 PM	W	MUEN E123		25	Main Campus
5984	EDU	3013	3	B	24531	3	School & Society	LEC	05:00 PM - 07:30 PM	W	MUEN E118		25	Main Campus
5985	EDU	3013	4	B	24529	3	School & Society	LEC	05:00 PM - 07:30 PM	M	HLMS 251		25	Main Campus
5986	EDU	3013	5	B	24534	3	School & Society	LEC	05:00 PM - 07:30 PM	M	MUEN E118		25	Main Campus
5987	EDU	3013	6	B	24535	3	School & Society	LEC	05:00 PM - 07:30 PM	T	HLMS 193		25	Main Campus
5988	EDU	3013	7	B	24530	3	School & Society	LEC	05:00 PM - 07:30 PM	T	EDUC 143		25	Main Campus
5989	EDU	3013	8	B	24864	3	School & Society	LEC	03:30 PM - 04:45 PM	TTH	EDUC 143		25	Main Campus
5990	EDU	3013	9	B	24537	3	School & Society	LEC	03:30 PM - 04:45 PM	TTH	CLRE 104		25	Main Campus
5991	EDU	3013	10	B	24533	3	School & Society	LEC	02:00 PM - 03:15 PM	TTH	EDUC 134		25	Main Campus
5992	EDU	3013	11	B	24532	3	School & Society	LEC	12:30 PM - 01:45 PM	TTH	EDUC 251		25	Main Campus
5993	EDU	3350	10	B	36029	3	Dis/Ability in Classrooms	SEM	11:00 AM - 12:15 PM	TTH	EDUC 231		25	Main Campus
5994	EDU	3350	11	B	36030	3	Dis/Ability in Classrooms	PRA	08:00 AM - 03:30 PM	W	Meets at Off-Campus		25	Main Campus
5995	EDU	3570	1	B	24757	3	Learning With Technology	LEC	05:00 PM - 07:30 PM	W	EDUC 143		30	Main Campus
5996	EDU	4023	10	B	24538	3	Diff Instructn Secondary	LEC	05:00 PM - 07:30 PM	T	HLMS 137		15	Main Campus
5997	EDU	4023	11	B	24539	3	Diff Instructn Secondary	PRA	-	TBA	Meets at Off-Campus		15	Main Campus
5998	EDU	4050	1	B	24699	3	Know & Lrng Math/Sci	SEM	05:00 PM - 07:30 PM	T	EDUC 346		30	Main Campus
5999	EDU	4060	10	B	24811	3	Classroom Interactions	SEM	05:00 PM - 07:30 PM	W	EDUC 341		20	Main Campus
6000	EDU	4112	1	B	24542	3	Adolescent Development	LEC	12:30 PM - 01:45 PM	TTH	EDUC 143		15	Main Campus
6001	EDU	4112	2	B	24834	3	Adolescent Development	LEC	08:00 AM - 09:15 AM	TTH	EDUC 143		15	Main Campus
6002	EDU	4112	3	B	24835	3	Adolescent Development	LEC	02:00 PM - 03:15 PM	TTH	MUEN E064		15	Main Campus
6003	EDU	4125	10	B	24717	3	Sec World Lang Methods	SEM	05:00 PM - 07:30 PM	TH	EDUC 338		24	Main Campus
6004	EDU	4125	11	B	24754	3	Sec World Lang Methods	PRA	-		Meets at Off-Campus		24	Main Campus
6005	EDU	4135	1	B	24850	3	Story and Memoir	SEM	12:30 PM - 01:45 PM	TTH	EDUC 136		20	Main Campus
6006	EDU	4295	1	B	28872	3	Narrative/Story in Humanities	LEC	09:00 AM - 11:30 AM	M	EDUC 251		7	Main Campus
6007	EDU	4320	10	B	24779	3	Reading Instr for Elem Schools	LEC	09:30 AM - 10:45 AM	TTH	EDUC 231		30	Main Campus
6008	EDU	4320	11	B	24780	3	Reading Instr for Elem Schools	PRA	08:00 AM - 03:30 PM	M	Meets at Off-Campus		30	Main Campus
6009	EDU	4325	1	B	28875	3	Queering Literacy Sec Clsrm	LEC	09:00 AM - 11:30 AM	W	EDUC 136		8	Main Campus
6010	EDU	4330	1	B	28876	3	Social Studies Methods I	LEC	05:00 PM - 07:30 PM	W	EDUC 136		8	Main Campus
6011	EDU	4331	10	B	24814	3	Elem Soc Stud Methods	LEC	10:25 AM - 12:55 PM	M	EDUC 231		30	Main Campus
6012	EDU	4331	11	B	24815	3	Elem Soc Stud Methods	PRA	10:30 AM - 12:50 PM	W	Meets at Off-Campus		30	Main Campus
6013	EDU	4341	10	B	24816	3	Elem Read Assmt Instr	LEC	07:50 AM - 10:20 AM	M	EDUC 231		30	Main Campus
6014	EDU	4341	11	B	24817	3	Elem Read Assmt Instr	PRA	07:00 AM - 10:20 AM	W	Meets at Off-Campus		30	Main Campus
6015	EDU	4345	10	B	24806	3	Secondary English Methods I	LEC	09:00 AM - 11:30 AM	F	EDUC 231		8	Main Campus
6016	EDU	4425	1	B	24758	3	Found Bil/Multi Ed	LEC	05:00 PM - 07:30 PM	TH	EDUC 134		20	Main Campus
6017	EDU	4513	1	B	24588	2	Education and Practice	SEM	04:00 PM - 05:50 PM	W	Meets at Off-Campus		100	Main Campus
6018	EDU	4535	1	B	34654	3	Assess for Bilingual Learner	LEC	02:00 PM - 03:15 PM	TTH	EDUC 251		30	Main Campus
6019	EDU	4610	8	B	34503	2	Becoming a Learning Assistant	SEM	-				35	Main Campus
6020	EDU	4615	1	B	34676	3	Language Acquisition	LEC	03:30 PM - 04:45 PM	TTH	EDUC 251		30	Main Campus
6021	EDU	4691	1	B	24589	10	Student Teach: Elem 1	PRA	-	TBA	Meets at Off-Campus		100	Main Campus
6022	EDU	4712	1	B	24590	10	Student Tchg: Secondary	PRA	-	TBA	Meets at Off-Campus		100	Main Campus
6023	EDU	4716	1	B	34226	3	Basic Statistical Meth	LEC	05:00 PM - 07:30 PM	T	EDUC 251		10	Main Campus
6024	EDU	4722	1	B	24591	5	Student Tchg: Secondry 2	PRA	-	TBA	Meets at Off-Campus		100	Main Campus
6025	EDU	4732	1	B	24592	4-12	Student Teaching K-12	PRA	-	TBA	Meets at Off-Campus		100	Main Campus
6026	EDU	4742	1	B	24828	9	Student Teach Sec 4 Engineers	PRA	-	TBA	Meets at Off-Campus		100	Main Campus
6027	EDU	4800	1	B	24902	3	Special Topics	LEC	02:00 PM - 03:15 PM	TTH	EDUC 143		20	Main Campus
6028	EDU	4800	2	B	36033	3	Special Topics	LEC	03:00 PM - 03:50 PM	MWF	EDUC 251		34	Main Campus
6029	EDU	4800	10	B	34504	2	Special Topics	LEC	04:00 PM - 06:00 PM	T	EDUC 338		20	Main Campus
6030	EDU	4800	20	B	34505	2	Special Topics	LEC	04:00 PM - 06:00 PM	W	EDUC 132		20	Main Campus
6031	EDU	4800	30	B	36452	3	Special Topics	LEC	12:30 PM - 01:45 PM	TTH	EDUC 346		16	Main Campus
6032	EDU	4833	1	B	24808	3	Tching & Lrning Earth Systems	LEC	05:00 PM - 07:30 PM	TH	EDUC 346		20	Main Campus
6033	EDU	4901	1	B	28874	3	Student Teaching I	PRA	08:00 AM - 03:00 PM	TTH	Meets at Off-Campus		30	Main Campus
6034	EDU	5005	1	B	24796	3	Adv Soc Foundations of Educ	LEC	12:00 PM - 02:30 PM	M	EDUC 251		27	Main Campus
6035	EDU	5060	10	B	24812	3	Classroom Interactions	SEM	05:00 PM - 07:30 PM	W	EDUC 341		10	Main Campus
6036	EDU	5060	11	B	24756	3	Classroom Interactions	PRA	-		Meets at Off-Campus		10	Main Campus
6037	EDU	5075	1	B	34301	3	Sociology in Education	LEC	05:00 PM - 07:30 PM	TH	EDUC 132		20	Main Campus
6038	EDU	5135	1	B	24851	3	Story and Memoir	SEM	12:30 PM - 01:45 PM	TTH	EDUC 136		5	Main Campus
6039	EDU	5215	10	B	24798	3	Elem Science Thry/Methds	LEC	10:25 AM - 12:55 PM	F	EDUC 346		30	Main Campus
6040	EDU	5215	11	B	24799	3	Elem Science Thry/Methds	PRA	01:00 PM - 03:30 PM	W	Meets at Off-Campus		30	Main Campus
6041	EDU	5245	1	B	24852	3	Foundations of Readng	LEC	05:00 PM - 07:30 PM	TH	HLMS 193		40	Main Campus
6042	EDU	5275	1	B	24545	3	Assessment in Literacy	LEC	05:00 PM - 07:30 PM	M	EDUC 251		25	Main Campus
6043	EDU	5295	1	B	28873	3	Narrative/Story in Humanities	LEC	09:00 AM - 11:30 AM	M	EDUC 251		20	Main Campus
6044	EDU	5316	1	B	24721	3	Natr of Soc Stdy/Soc Stdy Educ	LEC	05:00 PM - 07:30 PM	TH	HLMS 137		28	Main Campus
6045	EDU	5317	1	B	24546	3	Perspectives on Mathematics	SEM	05:00 PM - 07:30 PM	M	EDUC 346		20	Main Campus
6046	EDU	5317	001B	B	24901	3	Perspectives on Mathematics	SEM	05:00 PM - 07:30 PM	M	Distance Education		20	Main Campus
6047	EDU	5325	1	B	24807	3	Queering Literacy Sec Clsrm	LEC	09:00 AM - 11:30 AM	W	EDUC 136		20	Main Campus
6048	EDU	5330	1	B	28877	3	Social Studies Methods I	LEC	05:00 PM - 07:30 PM	W	EDUC 136		20	Main Campus
6049	EDU	5345	10	B	24810	3	Secondary English Methods I	LEC	09:00 AM - 11:30 AM	F	EDUC 231		20	Main Campus
6050	EDU	5375	10	B	34408	4	Problem-Based Math Instruction	LEC	05:00 PM - 07:30 PM	W	EDUC 346		20	Main Campus
6051	EDU	5375	11	B	24706	4	Problem-Based Math Instruction	PRA	-	TBA	Meets at Off-Campus		20	Main Campus
6052	EDU	5385	10	B	24711	4	Problem-Based Science Instrct	LEC	05:00 PM - 07:30 PM	W	EDUC 346		10	Main Campus
6053	EDU	5385	11	B	24712	4	Problem-Based Science Instrct	PRA	-	TBA	Meets at Off-Campus		10	Main Campus
6054	EDU	5425	1	B	24700	3	Found Bil/Multi Ed	LEC	05:00 PM - 07:30 PM	TH	EDUC 134		10	Main Campus
6055	EDU	5485	10	B	24824	3	Differentiation in the Classrm	LEC	05:00 PM - 07:30 PM	T	HLMS 137		20	Main Campus
6056	EDU	5485	11	B	24825	3	Differentiation in the Classrm	PRA	08:00 AM - 12:00 PM	M	Meets at Off-Campus	Boardman,Alison Gould	20	Main Campus
6057	EDU	5525	1	B	34206	3	Resrch Issues in Spec Ed	LEC	05:00 PM - 07:30 PM	T	EDUC 132		24	Main Campus
6058	EDU	5535	1	B	34207	3	Diag Test Esl/Biling Ed	LEC	05:00 PM - 07:30 PM	W	EDUC 251		27	Main Campus
6059	EDU	5595	1	B	34210	3	Pract-Ling Different: ESL	PRA	-				15	Main Campus
6060	EDU	5615	1	B	24912	3	Scnd Lang Acquisition	LEC	04:30 PM - 07:00 PM	M	EDUC 134		28	Main Campus
6061	EDU	5625	1	B	34212	3	Methods Teaching ESL	LEC	-		Meets at Off-Campus		25	Main Campus
6062	EDU	5716	1	B	24547	3	Basic Statistical Meth	LEC	05:00 PM - 07:30 PM	T	EDUC 251		15	Main Campus
6063	EDU	5726	1	B	24548	3	Intro Disciplined Inq	LEC	05:00 PM - 07:30 PM	W	EDUC 134		28	Main Campus
6064	EDU	5800	1	B	34364	3	MA Spec Tpcs	SEM	02:00 PM - 03:15 PM	TTH	EDUC 143		10	Main Campus
6065	EDU	5800	30	B	36453	3	MA Spec Tpcs	SEM	12:30 PM - 01:45 PM	TTH	EDUC 346		8	Main Campus
6066	EDU	5833	1	B	24809	3	Tching & Lrning Earth Systems	LEC	05:00 PM - 07:30 PM	TH	EDUC 346		10	Main Campus
6067	EDU	6250	1	B	24847	3	Higher Education in the US	SEM	05:00 PM - 07:30 PM	M	EDUC 136		25	Main Campus
6068	EDU	6318	1	B	34227	3	Psych Foundations of Education	LEC	05:00 PM - 07:30 PM	TH	EDUC 251		27	Main Campus
6069	EDU	6405	1	B	34302	3	Coll St Devel and Couns Thries	SEM	05:00 PM - 07:30 PM	TH	EDUC 136		25	Main Campus
6070	EDU	6506	1	B	24795	2	Cog Sci Rsrch Prac 1	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
6071	EDU	6516	1	B	24559	2	Cog Sci Rsrch Prac 2	PRA	09:30 AM - 11:30 AM	F	MUEN D424	Sumner,Tamara Ruth	15	Main Campus
6072	EDU	6804	1	B	24893	3	Special Topics	LEC	05:00 PM - 07:30 PM	M	EDUC 143		28	Main Campus
6073	EDU	6804	2	B	36031	1-4	Special Topics	LEC	05:00 PM - 07:30 PM	W	EDUC 338		16	Main Campus
6074	EDU	7416	1	B	24896	3	Seminr: Research Meth	SEM	01:00 PM - 03:30 PM	M	EDUC 134	Shepard,Loretta A S	30	Main Campus
6075	EDU	7456	1	B	24891	3	Multilevel Modeling	SEM	09:00 AM - 11:30 AM	W	EDUC 132	Atteberry,Allison	20	Main Campus
6076	EDU	7775	1	B	24560	1	Tpcs-Cognitive Science	SEM	12:00 PM - 02:00 PM	F	MUEN D430	Sumner,Tamara Ruth	15	Main Campus
6077	EDU	8115	1	B	34677	3	Hist and Policy Teach Educ	SEM	09:00 AM - 11:30 AM	T	EDUC 132		15	Main Campus
6078	EDU	8165	1	B	34214	3	Adv Tpcs: Mathematics Educ	SEM	09:00 AM - 11:30 AM	F	EDUC 341		15	Main Campus
6079	EDU	8175	1	B	34531	3	Adv Tpcs: Science Education	SEM	09:00 AM - 11:30 AM	F	EDUC 341		10	Main Campus
6080	EDU	8210	1	B	24552	3	Classroom Tchg & Lrng	SEM	09:00 AM - 11:30 AM	T	EDUC 338	Hand,Victoria	20	Main Campus
6081	EDU	8230	10	B	24553	3	Quant Methods I	LEC	09:00 AM - 11:30 AM	W	EDUC 251		20	Main Campus
6082	EDU	8230	11	B	24554	3	Quant Methods I	LAB	01:30 PM - 02:30 PM	W	EDUC 251		20	Main Campus
6083	EDU	8250	1	B	24830	3	Qual Methods I	SEM	09:00 AM - 11:30 AM	TH	EDUC 132		20	Main Campus
6084	EDU	8348	1	B	24855	3	Sem: Human Development	SEM	09:00 AM - 11:30 AM	M	EDUC 338	Penuel,William Richard	25	Main Campus
6085	EDU	8610	1	B	34211	3	Adv Topics in EECD	SEM	01:00 PM - 03:30 PM	T	EDUC 338		15	Main Campus
6086	EDU	8804	1	B	35041	3	Semn Current Theories	SEM	01:00 PM - 03:30 PM	TH	EDUC 338	Furtak,Erin Marie	25	Main Campus
6087	EDU	5030	1	B51	34203	1	Access Disability Higher Ed	SEM	05:00 PM - 07:30 PM	T	EDUC 136		25	Main Campus
6088	EDU	5031	1	B52	34204	1	Instl Rsrch & Analytics HEd	SEM	05:00 PM - 07:30 PM	T	EDUC 136		25	Main Campus
6089	EDU	5032	1	B53	34205	1	Coll Student Lead Devel	SEM	05:00 PM - 07:30 PM	T	EDUC 136		25	Main Campus
6090	LEAD	1000	1	B	34404	3	Becoming a Leader	LEC	11:00 AM - 12:15 PM	TTH	HLMS 255		30	Main Campus
6091	LEAD	1000	2	B	24845	3	Becoming a Leader	LEC	12:30 PM - 01:45 PM	TTH	EDUC 231	Vanbuskirk,Allison Nicole	30	Main Campus
6092	LEAD	1000	3	B	24819	3	Becoming a Leader	LEC	03:30 PM - 04:45 PM	TTH	RAMY N1B31		30	Main Campus
6093	LEAD	1000	4	B	24829	3	Becoming a Leader	LEC	09:30 AM - 10:45 AM	TTH	EDUC 134		28	Main Campus
6094	LEAD	1000	5	B	24856	3	Becoming a Leader	LEC	09:30 AM - 10:45 AM	TTH	HLMS 229	Moorer,Medford A	30	Main Campus
6095	LEAD	1000	310R	B	24860	3	Becoming a Leader	LEC	12:00 PM - 01:15 PM	MW	FLMG 294	Johnson,Cherell	18	Main Campus
6096	LEAD	1000	802	B	36038	3	Becoming a Leader	LEC	02:00 PM - 03:15 PM	TTH	EDUC 231		30	Main Campus
6097	LEAD	4000	10	B	24800	4	Leadership Capstone	SEM	03:00 PM - 05:30 PM	M	STAD 136C	Pasquesi,Kira	25	Main Campus
6098	LEAD	4000	11	B	24801	4	Leadership Capstone	PRA	-		Meets at Off-Campus	Pasquesi,Kira	25	Main Campus
6099	LEAD	4000	20	B	24802	4	Leadership Capstone	SEM	03:00 PM - 04:15 PM	MW	EDUC 231	Maes,Johanna Bernita	25	Main Campus
6100	LEAD	4000	21	B	24803	4	Leadership Capstone	PRA	-		Meets at Off-Campus	Maes,Johanna Bernita	25	Main Campus
6101	LEAD	4000	30	B	24820	4	Leadership Capstone	SEM	03:30 PM - 04:45 PM	TTH	EDUC 136	Vanbuskirk,Allison Nicole	25	Main Campus
6102	LEAD	4000	31	B	24821	4	Leadership Capstone	PRA	-		Meets at Off-Campus	Vanbuskirk,Allison Nicole	25	Main Campus
6103	LEAD	4000	40	B	24841	4	Leadership Capstone	SEM	05:00 PM - 07:30 PM	TH	HLMS 245	Sideris,Sabrina Carolina	25	Main Campus
6104	LEAD	4000	41	B	24842	4	Leadership Capstone	PRA	- 12:00 PM		Meets at Off-Campus	Sideris,Sabrina Carolina	25	Main Campus
6105	LAW	6004	801	B	28067	3	Real Estate Transactions	LEC	05:00 PM - 07:30 PM	TH	WLAW 305	Widoff,Joshua J	20	Main Campus
6106	LAW	6007	801	B	28081	4	Income Taxation	LEC	09:00 AM - 10:10 AM	MTTH	WLAW 207	Speck,Sloan G	75	Main Campus
6107	LAW	6045	801	B	35368	3	Criminal Procedure	LEC	10:30 AM - 11:50 AM	MW	WLAW 301	Gruber,Marisa Aya	75	Main Campus
6108	LAW	6103	801	B	28026	3	Legal Ethics Professionalism	LEC	04:00 PM - 05:15 PM	TTH	WLAW 205	Hart,Melissa	45	Main Campus
6109	LAW	6103	802	B	28040	3	Legal Ethics Professionalism	LEC	03:00 PM - 04:20 PM	MW	WLAW 207	Stark,David William	45	Main Campus
6110	LAW	6103	803	B	28126	3	Legal Ethics Professionalism	LEC	09:00 AM - 10:20 AM	MW	WLAW 305	Fero,Jonathan P	45	Main Campus
6111	LAW	6108	801	B	28135	3	Conflict of Laws	LEC	09:00 AM - 10:20 AM	MW	WLAW 304	Desautels-Stein,Justin	15	Main Campus
6112	LAW	6109	801	B	28046	2	Trial Advocacy	LEC	-				16	Main Campus
6113	LAW	6167	801	B	28093	3	Partnership Taxation	LEC	03:30 PM - 04:45 PM	TTH	WLAW 306	Speck,Sloan G	30	Main Campus
6114	LAW	6211	801	B	28077	3	Corporations	LEC	01:00 PM - 02:15 PM	TTH	WLAW 204	Schwartz,Andrew A	97	Main Campus
6115	LAW	6221	801	B	28103	3	Compliance	LEC	03:30 PM - 04:45 PM	TTH	WLAW 307	Francis,John Allen	50	Main Campus
6116	LAW	6301	801	B	28109	3	Intro Intellectual Property	LEC	01:00 PM - 02:20 PM	MW	WLAW 207	Surden,Harry Adam	75	Main Campus
6117	LAW	6353	801	B	28027	3	Evidence	LEC	09:00 AM - 09:50 AM	TWTH	WLAW 204	Mueller,Chris	97	Main Campus
6118	LAW	6361	801	B	28102	3	Information Privacy	LEC	03:00 PM - 04:20 PM	MW	WLAW 206	Kaminski,Margot	40	Main Campus
6119	LAW	6400	801	B	28090	3	International Law	LEC	01:00 PM - 02:20 PM	MW	WLAW 304	Desautels-Stein,Justin	75	Main Campus
6120	LAW	6502	801	B	34593	2	Wildlife and the Law	LEC	01:00 PM - 02:40 PM	TH	WLAW 307	Helle,Sean	50	Main Campus
6121	LAW	6511	801	B	28137	3	Labor Law	LEC	10:30 AM - 11:45 AM	TTH	WLAW 204	White,Ahmed A	50	Main Campus
6122	LAW	6521	801	B	28083	3	Employment Law	LEC	03:00 PM - 04:20 PM	MW	WLAW 204	Moss,Scott A.	75	Main Campus
6123	LAW	6708	802	B	28180	1	Special Topics	LEC	04:30 PM - 06:00 PM	TH	WLAW 303	Anaya,Stephen	20	Main Campus
6124	LAW	6732	801	B	34594	3	Renew Energy Project Fin & Dev	LEC	09:20 AM - 11:50 AM	W	WLAW 207	Safty,Mark D	50	Main Campus
6125	LAW	6856	801	B	35892	2-3	Advanced Legal Research	LEC	02:30 PM - 03:50 PM	MW	WLAW 304	Schultz,Lisa A	50	Main Campus
6126	LAW	7019	807	B	28153	1-2	Advanced Clinical Practicum	CLN	-			Cantrell,Deborah Jane	10	Main Campus
6127	LAW	7045	801	B	28110	3	Crim Pro Adjuc Proc	LEC	03:30 PM - 04:50 PM	MW	WLAW 205	Levin,Benjamin	75	Main Campus
6128	LAW	7051	801	B	28071	2	Transactional Drafting	LEC	10:15 AM - 11:55 AM	T	WLAW 307	Bauer,Amy	20	Main Campus
6129	LAW	7065	801	B	35388	3	Immigration Law	LEC	10:30 AM - 11:45 AM	TTH	WLAW 304	Chen,Ming Hsu	50	Main Campus
6130	LAW	7169	801	B	28138	2	Motions Advocacy	CLN	04:15 PM - 06:00 PM	T	WLAW 102	Mix,Kristen Louise	18	Main Campus
6131	LAW	7201	801	B	28139	3	Antitrust	LEC	04:30 PM - 05:50 PM	MW	WLAW 301	Blattner,Jeffrey H	75	Main Campus
6132	LAW	7201	801	B	28139	3	Antitrust	LEC	04:30 PM - 05:50 PM	MW	WLAW 301	Weiser,Philip J	75	Main Campus
6133	LAW	7202	801	B	34596	3	Environmental Law	LEC	01:00 PM - 01:20 PM	MW	WLAW 307	Jacobs,Sharon Bogas	75	Main Campus
6134	LAW	7222	801	B	28089	3	Environmental Decision-Making	LEC	02:30 PM - 03:50 PM	MW	WLAW 301	Squillace,Mark S	50	Main Campus
6135	LAW	7241	801	B	28070	3	Telecom Law & Policy	LEC	10:30 AM - 11:45 AM	TTH	WLAW 206	Reid,Blake Ellis	60	Main Campus
6136	LAW	7271	801	B	28069	3	Ventur Cap & Priv Equity	LEC	08:00 AM - 09:20 AM	MW	WLAW 307	Mendelson,Jason	50	Main Campus
6137	LAW	7271	801	B	28069	3	Ventur Cap & Priv Equity	LEC	08:00 AM - 09:20 AM	MW	WLAW 307	Bernthal,John B	50	Main Campus
6138	LAW	7318	801	B	35389	3	Econ of Am Legal System	LEC	03:00 PM - 04:20 PM	MW	WLAW 303	Campos,Paul F	20	Main Campus
6139	LAW	7425	801	B	28098	3	Health Law and Policy	LEC	01:00 PM - 02:15 PM	TTH	WLAW 304	Konnoth,Craig	50	Main Campus
6140	LAW	7425	801	B	28098	3	Health Law and Policy	LEC	-				50	Main Campus
6141	LAW	7433	801	B	28141	3	Remedies	LEC	03:00 PM - 04:20 PM	MW	WLAW 202	Deforest,Denise	20	Main Campus
6142	LAW	7440	801	B	35376	3	Intl Human Rts & Hum Law	LEC	09:00 AM - 10:20 AM	MW	WLAW 306	Spain Bradley,Anna	50	Main Campus
6143	LAW	7465	801	B	28092	2	Public Health Law & Ethics	LEC	-			O Rourke,Patrick Terrence	50	Main Campus
6144	LAW	7505	801	B	28099	2	Sexuality and the Law	LEC	03:00 PM - 04:40 PM	T	WLAW 300	Konnoth,Craig	27	Main Campus
6145	LAW	7513	801	B	34597	3	Domestic Violence	LEC	01:00 PM - 02:20 PM	MW	WLAW 306	Ramsey,Carolyn	50	Main Campus
6146	LAW	7715	801	B	28142	3	Indigenous Peoples Intl Law	LEC	02:30 PM - 03:50 PM	MW	WLAW 307	Carpenter,Kristen	50	Main Campus
6147	LAW	7725	801	B	28045	3	American Indian Law I	LEC	09:00 AM - 10:15 AM	TTH	WLAW 304	Krakoff,Sarah A	75	Main Campus
6148	LAW	7751	801	B	28114	3	Arbitration	LEC	09:00 AM - 11:30 AM	T	WLAW 300	Wells,Todd Allen	27	Main Campus
6149	LAW	8015	801	B	28143	2	Sem: Constitutional Theory	SEM	03:00 PM - 04:40 PM	T	WLAW 303	Schlag,Pierre	12	Main Campus
6150	LAW	8035	801	B	34598	2	Sem Antdscrm & 1st Amend	SEM	10:00 AM - 11:50 AM	M	WLAW 411	Norton,Helen Louise	12	Main Campus
6151	LAW	8315	801	B	28144	2	Sem Adv Crim Just	SEM	10:00 AM - 11:50 AM	M	WLAW 202	Levin,Benjamin	12	Main Campus
6152	LAW	8320	801	B	28075	3	Sem: Oil & Intl Relations	SEM	10:30 AM - 11:45 AM	TTH	WLAW 330	Guruswamy,Lakshman	12	Main Campus
6153	LAW	8440	801	B	28145	2	Sem Intl Human Rights	SEM	04:30 PM - 06:00 PM	TH	WLAW 303	Anaya,Stephen	12	Main Campus
6154	LAW	8533	801	B	28147	2	Criminal Law in Context	SEM	01:00 PM - 02:40 PM	T	WLAW 303	Gruber,Marisa Aya	12	Main Campus
6155	LAW	8535	801	B	28148	2	Seminar: Class and Law	SEM	03:00 PM - 04:40 PM	T	WLAW 330	White,Ahmed A	12	Main Campus
6156	LAW	8548	801	B	34599	2	Sem: Theory of Punishment	SEM	09:00 AM - 10:50 AM	M	WLAW 421	Campos,Paul F	12	Main Campus
6157	LAW	8565	801	B	28117	3	Citizenship	SEM	10:00 AM - 11:40 AM	W	WLAW 303	Chen,Ming Hsu	12	Main Campus
6158	LAW	8611	801	B	34600	2	US Natl Sec & Foreign Rel	SEM	01:00 PM - 02:40 PM	T	WLAW 303	Spain Bradley,Anna	12	Main Campus
6159	LAW	5646	801	BVS	28108	1	Foundations of Legal Research	LEC	04:00 PM - 04:50 PM	TTH	WLAW 1B12	Sturgeon,Jill A	20	Main Campus
6160	LAW	6213	801	BVS	28091	2	Adv Appellate Advocacy	LEC	10:00 AM - 11:40 AM	TTH	WLAW 305	Bruce,Teresa	10	Main Campus
6161	LAW	6836	801	BVS	28150	1	Special Topics: Legal Research	LEC	01:00 PM - 01:50 PM	TTH	WLAW 305	Rowe,Kerri-Ann Y.	20	Main Campus
\.

--

