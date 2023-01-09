--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Debian 13.9-0+deb11u1)
-- Dumped by pg_dump version 13.9 (Debian 13.9-0+deb11u1)

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
-- Name: pg_repack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_repack WITH SCHEMA public;


--
-- Name: EXTENSION pg_repack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_repack IS 'Reorganize tables in PostgreSQL databases with minimal locks';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: definitions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.definitions (
    id bigint NOT NULL,
    definition_id integer,
    table_name character varying(255),
    name character varying(255),
    coding_instructions text,
    target_value text,
    support_definition text,
    notes text,
    ref character varying(255),
    vocabulary_en character varying(255),
    title_name character varying(255),
    short_name character varying(255),
    default_value character varying(255),
    usual_range character varying(255),
    valid_range character varying(255),
    data_source character varying(255),
    defs_table_id integer,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    defs_table_id_multi integer[],
    notes_tsv tsvector,
    indexing character varying(255),
    indexing_tsv tsvector,
    inserted_by character varying(255),
    updated_by character varying(255)
);


ALTER TABLE public.definitions OWNER TO postgres;

--
-- Name: definitions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.definitions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.definitions_id_seq OWNER TO postgres;

--
-- Name: definitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.definitions_id_seq OWNED BY public.definitions.id;


--
-- Name: defs_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defs_codes (
    id bigint NOT NULL,
    code character varying(255),
    code_system character varying(255),
    description text,
    note text,
    definition_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.defs_codes OWNER TO postgres;

--
-- Name: defs_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.defs_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.defs_codes_id_seq OWNER TO postgres;

--
-- Name: defs_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.defs_codes_id_seq OWNED BY public.defs_codes.id;


--
-- Name: defs_options; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defs_options (
    id bigint NOT NULL,
    name character varying(255),
    code character varying(255),
    selection_text text,
    selection_definition text,
    selection_notes text,
    definition_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    selection_reference character varying(255)
);


ALTER TABLE public.defs_options OWNER TO postgres;

--
-- Name: defs_options_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.defs_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.defs_options_id_seq OWNER TO postgres;

--
-- Name: defs_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.defs_options_id_seq OWNED BY public.defs_options.id;


--
-- Name: defs_sentences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defs_sentences (
    id bigint NOT NULL,
    language character varying(2),
    sentence text,
    note text,
    definition_id bigint,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.defs_sentences OWNER TO postgres;

--
-- Name: defs_sentences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.defs_sentences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.defs_sentences_id_seq OWNER TO postgres;

--
-- Name: defs_sentences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.defs_sentences_id_seq OWNED BY public.defs_sentences.id;


--
-- Name: defs_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.defs_tables (
    id bigint NOT NULL,
    cda_xml text,
    code character varying(255),
    code_system character varying(255),
    code_system_name character varying(255),
    display_name character varying(255),
    name character varying(255),
    note text,
    template_id character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    info_coronary_id character varying(255)
);


ALTER TABLE public.defs_tables OWNER TO postgres;

--
-- Name: defs_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.defs_tables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.defs_tables_id_seq OWNER TO postgres;

--
-- Name: defs_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.defs_tables_id_seq OWNED BY public.defs_tables.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.languages (
    id bigint NOT NULL,
    alpha2 character varying(255),
    english character varying(255)
);


ALTER TABLE public.languages OWNER TO postgres;

--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.languages_id_seq OWNER TO postgres;

--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.languages_id_seq OWNED BY public.languages.id;


--
-- Name: opts_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opts_codes (
    id bigint NOT NULL,
    code_system character varying(255),
    code character varying(255),
    description text,
    notes text,
    definition_id integer,
    defs_option_id integer,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.opts_codes OWNER TO postgres;

--
-- Name: opts_codes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opts_codes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opts_codes_id_seq OWNER TO postgres;

--
-- Name: opts_codes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opts_codes_id_seq OWNED BY public.opts_codes.id;


--
-- Name: opts_images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opts_images (
    id bigint NOT NULL,
    image character varying(255),
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    defs_option_id bigint,
    mime_type character varying(255),
    mime_size character varying(255),
    radlex_id character varying(255),
    dicom_reference character varying(255),
    dicom_size character varying(255),
    data_responsible character varying(255),
    data_owner character varying(255)
);


ALTER TABLE public.opts_images OWNER TO postgres;

--
-- Name: opts_images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opts_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opts_images_id_seq OWNER TO postgres;

--
-- Name: opts_images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opts_images_id_seq OWNED BY public.opts_images.id;


--
-- Name: opts_sentences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.opts_sentences (
    id bigint NOT NULL,
    language character varying(255),
    sentence text,
    note text,
    definition_id integer,
    inserted_at timestamp(0) without time zone NOT NULL,
    updated_at timestamp(0) without time zone NOT NULL,
    defs_option_id bigint
);


ALTER TABLE public.opts_sentences OWNER TO postgres;

--
-- Name: opts_sentences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.opts_sentences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opts_sentences_id_seq OWNER TO postgres;

--
-- Name: opts_sentences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.opts_sentences_id_seq OWNED BY public.opts_sentences.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: definitions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.definitions ALTER COLUMN id SET DEFAULT nextval('public.definitions_id_seq'::regclass);


--
-- Name: defs_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_codes ALTER COLUMN id SET DEFAULT nextval('public.defs_codes_id_seq'::regclass);


--
-- Name: defs_options id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_options ALTER COLUMN id SET DEFAULT nextval('public.defs_options_id_seq'::regclass);


--
-- Name: defs_sentences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_sentences ALTER COLUMN id SET DEFAULT nextval('public.defs_sentences_id_seq'::regclass);


--
-- Name: defs_tables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_tables ALTER COLUMN id SET DEFAULT nextval('public.defs_tables_id_seq'::regclass);


--
-- Name: languages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public.languages_id_seq'::regclass);


--
-- Name: opts_codes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_codes ALTER COLUMN id SET DEFAULT nextval('public.opts_codes_id_seq'::regclass);


--
-- Name: opts_images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_images ALTER COLUMN id SET DEFAULT nextval('public.opts_images_id_seq'::regclass);


--
-- Name: opts_sentences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_sentences ALTER COLUMN id SET DEFAULT nextval('public.opts_sentences_id_seq'::regclass);


--
-- Name: definitions definitions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT definitions_pkey PRIMARY KEY (id);


--
-- Name: defs_codes defs_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_codes
    ADD CONSTRAINT defs_codes_pkey PRIMARY KEY (id);


--
-- Name: defs_options defs_options_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_options
    ADD CONSTRAINT defs_options_pkey PRIMARY KEY (id);


--
-- Name: defs_sentences defs_sentences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_sentences
    ADD CONSTRAINT defs_sentences_pkey PRIMARY KEY (id);


--
-- Name: defs_tables defs_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_tables
    ADD CONSTRAINT defs_tables_pkey PRIMARY KEY (id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- Name: definitions name_constrain_idx; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.definitions
    ADD CONSTRAINT name_constrain_idx UNIQUE (name);


--
-- Name: opts_codes opts_codes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_codes
    ADD CONSTRAINT opts_codes_pkey PRIMARY KEY (id);


--
-- Name: opts_images opts_images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_images
    ADD CONSTRAINT opts_images_pkey PRIMARY KEY (id);


--
-- Name: opts_sentences opts_sentences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_sentences
    ADD CONSTRAINT opts_sentences_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: definitions_indexing_tsv_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX definitions_indexing_tsv_idx ON public.definitions USING gin (to_tsvector('english'::regconfig, (indexing_tsv)::text));


--
-- Name: definitions_notes_tsv_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX definitions_notes_tsv_idx ON public.definitions USING gin (to_tsvector('english'::regconfig, (notes_tsv)::text));


--
-- Name: definitions tsv_definitions_indexing; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tsv_definitions_indexing BEFORE INSERT OR UPDATE ON public.definitions FOR EACH ROW EXECUTE FUNCTION tsvector_update_trigger('indexing_tsv', 'pg_catalog.english', 'indexing');


--
-- Name: definitions tsv_definitions_notes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER tsv_definitions_notes BEFORE INSERT OR UPDATE ON public.definitions FOR EACH ROW EXECUTE FUNCTION tsvector_update_trigger('notes_tsv', 'pg_catalog.english', 'notes');


--
-- Name: defs_codes defs_codes_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_codes
    ADD CONSTRAINT defs_codes_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES public.definitions(id) ON DELETE CASCADE;


--
-- Name: defs_options defs_options_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_options
    ADD CONSTRAINT defs_options_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES public.definitions(id) ON DELETE CASCADE;


--
-- Name: defs_sentences defs_sentences_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.defs_sentences
    ADD CONSTRAINT defs_sentences_definition_id_fkey FOREIGN KEY (definition_id) REFERENCES public.definitions(id) ON DELETE CASCADE;


--
-- Name: opts_images opts_images_defs_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_images
    ADD CONSTRAINT opts_images_defs_option_id_fkey FOREIGN KEY (defs_option_id) REFERENCES public.defs_options(id) ON DELETE CASCADE;


--
-- Name: opts_sentences opts_sentences_defs_option_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.opts_sentences
    ADD CONSTRAINT opts_sentences_defs_option_id_fkey FOREIGN KEY (defs_option_id) REFERENCES public.defs_options(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

