--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: rdata; Type: SCHEMA; Schema: -; Owner: robert
--

CREATE SCHEMA rdata;


ALTER SCHEMA rdata OWNER TO robert;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = rdata, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ability_cov; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE ability_cov (
    id integer NOT NULL,
    cov_general numeric,
    cov_picture numeric,
    cov_blocks numeric,
    cov_maze numeric,
    cov_reading numeric,
    cov_vocab numeric,
    center numeric,
    n_obs numeric
);


ALTER TABLE ability_cov OWNER TO robert;

--
-- Name: ability_cov_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE ability_cov_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ability_cov_id_seq OWNER TO robert;

--
-- Name: ability_cov_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE ability_cov_id_seq OWNED BY ability_cov.id;


--
-- Name: airmiles; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE airmiles (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE airmiles OWNER TO robert;

--
-- Name: airmiles_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE airmiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE airmiles_id_seq OWNER TO robert;

--
-- Name: airmiles_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE airmiles_id_seq OWNED BY airmiles.id;


--
-- Name: airpassengers; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE airpassengers (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE airpassengers OWNER TO robert;

--
-- Name: airpassengers_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE airpassengers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE airpassengers_id_seq OWNER TO robert;

--
-- Name: airpassengers_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE airpassengers_id_seq OWNED BY airpassengers.id;


--
-- Name: airquality; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE airquality (
    id integer NOT NULL,
    ozone text,
    solar_r text,
    wind numeric,
    temp text,
    month text,
    day text
);


ALTER TABLE airquality OWNER TO robert;

--
-- Name: airquality_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE airquality_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE airquality_id_seq OWNER TO robert;

--
-- Name: airquality_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE airquality_id_seq OWNED BY airquality.id;


--
-- Name: anscombe; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE anscombe (
    id integer NOT NULL,
    x1 numeric,
    x2 numeric,
    x3 numeric,
    x4 numeric,
    y1 numeric,
    y2 numeric,
    y3 numeric,
    y4 numeric
);


ALTER TABLE anscombe OWNER TO robert;

--
-- Name: anscombe_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE anscombe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE anscombe_id_seq OWNER TO robert;

--
-- Name: anscombe_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE anscombe_id_seq OWNED BY anscombe.id;


--
-- Name: attenu; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE attenu (
    id integer NOT NULL,
    event numeric,
    mag numeric,
    station text,
    dist numeric,
    accel numeric
);


ALTER TABLE attenu OWNER TO robert;

--
-- Name: attenu_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE attenu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE attenu_id_seq OWNER TO robert;

--
-- Name: attenu_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE attenu_id_seq OWNED BY attenu.id;


--
-- Name: attitude; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE attitude (
    id integer NOT NULL,
    rating numeric,
    complaints numeric,
    privileges numeric,
    learning numeric,
    raises numeric,
    critical numeric,
    advance numeric
);


ALTER TABLE attitude OWNER TO robert;

--
-- Name: attitude_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE attitude_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE attitude_id_seq OWNER TO robert;

--
-- Name: attitude_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE attitude_id_seq OWNED BY attitude.id;


--
-- Name: austres; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE austres (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE austres OWNER TO robert;

--
-- Name: austres_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE austres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE austres_id_seq OWNER TO robert;

--
-- Name: austres_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE austres_id_seq OWNED BY austres.id;


--
-- Name: beaver1; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE beaver1 (
    id integer NOT NULL,
    day numeric,
    "time" numeric,
    temp numeric,
    activ numeric
);


ALTER TABLE beaver1 OWNER TO robert;

--
-- Name: beaver1_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE beaver1_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE beaver1_id_seq OWNER TO robert;

--
-- Name: beaver1_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE beaver1_id_seq OWNED BY beaver1.id;


--
-- Name: beaver2; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE beaver2 (
    id integer NOT NULL,
    day numeric,
    "time" numeric,
    temp numeric,
    activ numeric
);


ALTER TABLE beaver2 OWNER TO robert;

--
-- Name: beaver2_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE beaver2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE beaver2_id_seq OWNER TO robert;

--
-- Name: beaver2_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE beaver2_id_seq OWNED BY beaver2.id;


--
-- Name: bjsales; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE bjsales (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE bjsales OWNER TO robert;

--
-- Name: bjsales_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE bjsales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bjsales_id_seq OWNER TO robert;

--
-- Name: bjsales_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE bjsales_id_seq OWNED BY bjsales.id;


--
-- Name: bjsales_lead; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE bjsales_lead (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE bjsales_lead OWNER TO robert;

--
-- Name: bjsales_lead_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE bjsales_lead_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bjsales_lead_id_seq OWNER TO robert;

--
-- Name: bjsales_lead_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE bjsales_lead_id_seq OWNED BY bjsales_lead.id;


--
-- Name: bod; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE bod (
    id integer NOT NULL,
    "time" numeric,
    demand numeric
);


ALTER TABLE bod OWNER TO robert;

--
-- Name: bod_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE bod_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE bod_id_seq OWNER TO robert;

--
-- Name: bod_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE bod_id_seq OWNED BY bod.id;


--
-- Name: cars; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE cars (
    id integer NOT NULL,
    speed numeric,
    dist numeric
);


ALTER TABLE cars OWNER TO robert;

--
-- Name: cars_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cars_id_seq OWNER TO robert;

--
-- Name: cars_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE cars_id_seq OWNED BY cars.id;


--
-- Name: chickweight; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE chickweight (
    id integer NOT NULL,
    weight numeric,
    "time" numeric,
    chick text,
    diet text
);


ALTER TABLE chickweight OWNER TO robert;

--
-- Name: chickweight_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE chickweight_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE chickweight_id_seq OWNER TO robert;

--
-- Name: chickweight_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE chickweight_id_seq OWNED BY chickweight.id;


--
-- Name: chickwts; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE chickwts (
    id integer NOT NULL,
    weight numeric,
    feed text
);


ALTER TABLE chickwts OWNER TO robert;

--
-- Name: chickwts_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE chickwts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE chickwts_id_seq OWNER TO robert;

--
-- Name: chickwts_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE chickwts_id_seq OWNED BY chickwts.id;


--
-- Name: co2; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE co2 (
    id integer NOT NULL,
    plant text,
    type text,
    treatment text,
    conc numeric,
    uptake numeric
);


ALTER TABLE co2 OWNER TO robert;

--
-- Name: co2_2; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE co2_2 (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE co2_2 OWNER TO robert;

--
-- Name: co2_2_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE co2_2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE co2_2_id_seq OWNER TO robert;

--
-- Name: co2_2_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE co2_2_id_seq OWNED BY co2_2.id;


--
-- Name: co2_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE co2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE co2_id_seq OWNER TO robert;

--
-- Name: co2_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE co2_id_seq OWNED BY co2.id;


--
-- Name: crimtab; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE crimtab (
    id integer NOT NULL,
    var1 text,
    var2 text,
    freq text
);


ALTER TABLE crimtab OWNER TO robert;

--
-- Name: crimtab_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE crimtab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE crimtab_id_seq OWNER TO robert;

--
-- Name: crimtab_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE crimtab_id_seq OWNED BY crimtab.id;


--
-- Name: discoveries; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE discoveries (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE discoveries OWNER TO robert;

--
-- Name: discoveries_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE discoveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE discoveries_id_seq OWNER TO robert;

--
-- Name: discoveries_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE discoveries_id_seq OWNED BY discoveries.id;


--
-- Name: dnase; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE dnase (
    id integer NOT NULL,
    run text,
    conc numeric,
    density numeric
);


ALTER TABLE dnase OWNER TO robert;

--
-- Name: dnase_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE dnase_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dnase_id_seq OWNER TO robert;

--
-- Name: dnase_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE dnase_id_seq OWNED BY dnase.id;


--
-- Name: esoph; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE esoph (
    id integer NOT NULL,
    agegp text,
    alcgp text,
    tobgp text,
    ncases numeric,
    ncontrols numeric
);


ALTER TABLE esoph OWNER TO robert;

--
-- Name: esoph_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE esoph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE esoph_id_seq OWNER TO robert;

--
-- Name: esoph_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE esoph_id_seq OWNED BY esoph.id;


--
-- Name: euro; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE euro (
    id integer NOT NULL,
    "eval(parse(text_=_name))" numeric
);


ALTER TABLE euro OWNER TO robert;

--
-- Name: euro_cross; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE euro_cross (
    id integer NOT NULL,
    ats numeric,
    bef numeric,
    dem numeric,
    esp numeric,
    fim numeric,
    frf numeric,
    iep numeric,
    itl numeric,
    luf numeric,
    nlg numeric,
    pte numeric
);


ALTER TABLE euro_cross OWNER TO robert;

--
-- Name: euro_cross_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE euro_cross_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE euro_cross_id_seq OWNER TO robert;

--
-- Name: euro_cross_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE euro_cross_id_seq OWNED BY euro_cross.id;


--
-- Name: euro_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE euro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE euro_id_seq OWNER TO robert;

--
-- Name: euro_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE euro_id_seq OWNED BY euro.id;


--
-- Name: eustockmarkets; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE eustockmarkets (
    id integer NOT NULL,
    dax numeric,
    smi numeric,
    cac numeric,
    ftse numeric
);


ALTER TABLE eustockmarkets OWNER TO robert;

--
-- Name: eustockmarkets_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE eustockmarkets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE eustockmarkets_id_seq OWNER TO robert;

--
-- Name: eustockmarkets_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE eustockmarkets_id_seq OWNED BY eustockmarkets.id;


--
-- Name: faithful; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE faithful (
    id integer NOT NULL,
    eruptions numeric,
    waiting numeric
);


ALTER TABLE faithful OWNER TO robert;

--
-- Name: faithful_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE faithful_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE faithful_id_seq OWNER TO robert;

--
-- Name: faithful_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE faithful_id_seq OWNED BY faithful.id;


--
-- Name: fdeaths; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE fdeaths (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE fdeaths OWNER TO robert;

--
-- Name: fdeaths_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE fdeaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE fdeaths_id_seq OWNER TO robert;

--
-- Name: fdeaths_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE fdeaths_id_seq OWNED BY fdeaths.id;


--
-- Name: formaldehyde; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE formaldehyde (
    id integer NOT NULL,
    carb numeric,
    optden numeric
);


ALTER TABLE formaldehyde OWNER TO robert;

--
-- Name: formaldehyde_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE formaldehyde_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE formaldehyde_id_seq OWNER TO robert;

--
-- Name: formaldehyde_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE formaldehyde_id_seq OWNED BY formaldehyde.id;


--
-- Name: freeny; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE freeny (
    id integer NOT NULL,
    y numeric,
    lag_quarterly_revenue numeric,
    price_index numeric,
    income_level numeric,
    market_potential numeric
);


ALTER TABLE freeny OWNER TO robert;

--
-- Name: freeny_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE freeny_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE freeny_id_seq OWNER TO robert;

--
-- Name: freeny_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE freeny_id_seq OWNED BY freeny.id;


--
-- Name: freeny_x; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE freeny_x (
    id integer NOT NULL,
    lag_quarterly_revenue numeric,
    price_index numeric,
    income_level numeric,
    market_potential numeric
);


ALTER TABLE freeny_x OWNER TO robert;

--
-- Name: freeny_x_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE freeny_x_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE freeny_x_id_seq OWNER TO robert;

--
-- Name: freeny_x_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE freeny_x_id_seq OWNED BY freeny_x.id;


--
-- Name: freeny_y; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE freeny_y (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE freeny_y OWNER TO robert;

--
-- Name: freeny_y_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE freeny_y_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE freeny_y_id_seq OWNER TO robert;

--
-- Name: freeny_y_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE freeny_y_id_seq OWNED BY freeny_y.id;


--
-- Name: haireyecolor; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE haireyecolor (
    id integer NOT NULL,
    hair text,
    eye text,
    sex text,
    freq numeric
);


ALTER TABLE haireyecolor OWNER TO robert;

--
-- Name: haireyecolor_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE haireyecolor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE haireyecolor_id_seq OWNER TO robert;

--
-- Name: haireyecolor_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE haireyecolor_id_seq OWNED BY haireyecolor.id;


--
-- Name: harman23_cor; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE harman23_cor (
    id integer NOT NULL,
    cov_height numeric,
    cov_arm_span numeric,
    cov_forearm numeric,
    cov_lower_leg numeric,
    cov_weight numeric,
    cov_bitro_diameter numeric,
    cov_chest_girth numeric,
    cov_chest_width numeric,
    center numeric,
    n_obs numeric
);


ALTER TABLE harman23_cor OWNER TO robert;

--
-- Name: harman23_cor_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE harman23_cor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE harman23_cor_id_seq OWNER TO robert;

--
-- Name: harman23_cor_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE harman23_cor_id_seq OWNED BY harman23_cor.id;


--
-- Name: harman74_cor; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE harman74_cor (
    id integer NOT NULL,
    cov_visualperception numeric,
    cov_cubes numeric,
    cov_paperformboard numeric,
    cov_flags numeric,
    cov_generalinformation numeric,
    cov_pargraphcomprehension numeric,
    cov_sentencecompletion numeric,
    cov_wordclassification numeric,
    cov_wordmeaning numeric,
    cov_addition numeric,
    cov_code numeric,
    cov_countingdots numeric,
    cov_straightcurvedcapitals numeric,
    cov_wordrecognition numeric,
    cov_numberrecognition numeric,
    cov_figurerecognition numeric,
    cov_objectnumber numeric,
    cov_numberfigure numeric,
    cov_figureword numeric,
    cov_deduction numeric,
    cov_numericalpuzzles numeric,
    cov_problemreasoning numeric,
    cov_seriescompletion numeric,
    cov_arithmeticproblems numeric,
    center numeric,
    n_obs numeric
);


ALTER TABLE harman74_cor OWNER TO robert;

--
-- Name: harman74_cor_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE harman74_cor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE harman74_cor_id_seq OWNER TO robert;

--
-- Name: harman74_cor_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE harman74_cor_id_seq OWNED BY harman74_cor.id;


--
-- Name: indometh; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE indometh (
    id integer NOT NULL,
    subject text,
    "time" numeric,
    conc numeric
);


ALTER TABLE indometh OWNER TO robert;

--
-- Name: indometh_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE indometh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE indometh_id_seq OWNER TO robert;

--
-- Name: indometh_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE indometh_id_seq OWNED BY indometh.id;


--
-- Name: infert; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE infert (
    id integer NOT NULL,
    education text,
    age numeric,
    parity numeric,
    induced numeric,
    "case" numeric,
    spontaneous numeric,
    stratum text,
    pooled_stratum numeric
);


ALTER TABLE infert OWNER TO robert;

--
-- Name: infert_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE infert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE infert_id_seq OWNER TO robert;

--
-- Name: infert_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE infert_id_seq OWNED BY infert.id;


--
-- Name: insectsprays; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE insectsprays (
    id integer NOT NULL,
    count numeric,
    spray text
);


ALTER TABLE insectsprays OWNER TO robert;

--
-- Name: insectsprays_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE insectsprays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE insectsprays_id_seq OWNER TO robert;

--
-- Name: insectsprays_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE insectsprays_id_seq OWNED BY insectsprays.id;


--
-- Name: iris; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE iris (
    id integer NOT NULL,
    sepal_length numeric,
    sepal_width numeric,
    petal_length numeric,
    petal_width numeric,
    species text
);


ALTER TABLE iris OWNER TO robert;

--
-- Name: iris3; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE iris3 (
    id integer NOT NULL,
    sepal_l__setosa numeric,
    sepal_w__setosa numeric,
    petal_l__setosa numeric,
    petal_w__setosa numeric,
    sepal_l__versicolor numeric,
    sepal_w__versicolor numeric,
    petal_l__versicolor numeric,
    petal_w__versicolor numeric,
    sepal_l__virginica numeric,
    sepal_w__virginica numeric,
    petal_l__virginica numeric,
    petal_w__virginica numeric
);


ALTER TABLE iris3 OWNER TO robert;

--
-- Name: iris3_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE iris3_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE iris3_id_seq OWNER TO robert;

--
-- Name: iris3_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE iris3_id_seq OWNED BY iris3.id;


--
-- Name: iris_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE iris_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE iris_id_seq OWNER TO robert;

--
-- Name: iris_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE iris_id_seq OWNED BY iris.id;


--
-- Name: islands; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE islands (
    id integer NOT NULL,
    "eval(parse(text_=_name))" numeric
);


ALTER TABLE islands OWNER TO robert;

--
-- Name: islands_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE islands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE islands_id_seq OWNER TO robert;

--
-- Name: islands_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE islands_id_seq OWNED BY islands.id;


--
-- Name: johnsonjohnson; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE johnsonjohnson (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE johnsonjohnson OWNER TO robert;

--
-- Name: johnsonjohnson_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE johnsonjohnson_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE johnsonjohnson_id_seq OWNER TO robert;

--
-- Name: johnsonjohnson_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE johnsonjohnson_id_seq OWNED BY johnsonjohnson.id;


--
-- Name: lakehuron; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE lakehuron (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE lakehuron OWNER TO robert;

--
-- Name: lakehuron_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE lakehuron_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lakehuron_id_seq OWNER TO robert;

--
-- Name: lakehuron_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE lakehuron_id_seq OWNED BY lakehuron.id;


--
-- Name: ldeaths; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE ldeaths (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE ldeaths OWNER TO robert;

--
-- Name: ldeaths_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE ldeaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ldeaths_id_seq OWNER TO robert;

--
-- Name: ldeaths_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE ldeaths_id_seq OWNED BY ldeaths.id;


--
-- Name: lh; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE lh (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE lh OWNER TO robert;

--
-- Name: lh_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE lh_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lh_id_seq OWNER TO robert;

--
-- Name: lh_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE lh_id_seq OWNED BY lh.id;


--
-- Name: lifecyclesavings; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE lifecyclesavings (
    id integer NOT NULL,
    sr numeric,
    pop15 numeric,
    pop75 numeric,
    dpi numeric,
    ddpi numeric
);


ALTER TABLE lifecyclesavings OWNER TO robert;

--
-- Name: lifecyclesavings_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE lifecyclesavings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lifecyclesavings_id_seq OWNER TO robert;

--
-- Name: lifecyclesavings_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE lifecyclesavings_id_seq OWNED BY lifecyclesavings.id;


--
-- Name: loblolly; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE loblolly (
    id integer NOT NULL,
    height numeric,
    age numeric,
    seed text
);


ALTER TABLE loblolly OWNER TO robert;

--
-- Name: loblolly_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE loblolly_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE loblolly_id_seq OWNER TO robert;

--
-- Name: loblolly_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE loblolly_id_seq OWNED BY loblolly.id;


--
-- Name: longley; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE longley (
    id integer NOT NULL,
    gnp_deflator numeric,
    gnp numeric,
    unemployed numeric,
    armed_forces numeric,
    population numeric,
    year text,
    employed numeric
);


ALTER TABLE longley OWNER TO robert;

--
-- Name: longley_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE longley_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE longley_id_seq OWNER TO robert;

--
-- Name: longley_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE longley_id_seq OWNED BY longley.id;


--
-- Name: lynx; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE lynx (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE lynx OWNER TO robert;

--
-- Name: lynx_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE lynx_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lynx_id_seq OWNER TO robert;

--
-- Name: lynx_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE lynx_id_seq OWNED BY lynx.id;


--
-- Name: mdeaths; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE mdeaths (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE mdeaths OWNER TO robert;

--
-- Name: mdeaths_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE mdeaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mdeaths_id_seq OWNER TO robert;

--
-- Name: mdeaths_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE mdeaths_id_seq OWNED BY mdeaths.id;


--
-- Name: morley; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE morley (
    id integer NOT NULL,
    expt text,
    run text,
    speed text
);


ALTER TABLE morley OWNER TO robert;

--
-- Name: morley_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE morley_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE morley_id_seq OWNER TO robert;

--
-- Name: morley_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE morley_id_seq OWNED BY morley.id;


--
-- Name: mtcars; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE mtcars (
    id integer NOT NULL,
    mpg numeric,
    cyl numeric,
    disp numeric,
    hp numeric,
    drat numeric,
    wt numeric,
    qsec numeric,
    vs numeric,
    am boolean,
    gear numeric,
    carb numeric
);


ALTER TABLE mtcars OWNER TO robert;

--
-- Name: mtcars_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE mtcars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE mtcars_id_seq OWNER TO robert;

--
-- Name: mtcars_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE mtcars_id_seq OWNED BY mtcars.id;


--
-- Name: nhtemp; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE nhtemp (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE nhtemp OWNER TO robert;

--
-- Name: nhtemp_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE nhtemp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nhtemp_id_seq OWNER TO robert;

--
-- Name: nhtemp_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE nhtemp_id_seq OWNED BY nhtemp.id;


--
-- Name: nile; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE nile (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE nile OWNER TO robert;

--
-- Name: nile_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE nile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nile_id_seq OWNER TO robert;

--
-- Name: nile_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE nile_id_seq OWNED BY nile.id;


--
-- Name: nottem; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE nottem (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE nottem OWNER TO robert;

--
-- Name: nottem_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE nottem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE nottem_id_seq OWNER TO robert;

--
-- Name: nottem_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE nottem_id_seq OWNED BY nottem.id;


--
-- Name: occupationalstatus; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE occupationalstatus (
    id integer NOT NULL,
    origin text,
    destination text,
    freq text
);


ALTER TABLE occupationalstatus OWNER TO robert;

--
-- Name: occupationalstatus_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE occupationalstatus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE occupationalstatus_id_seq OWNER TO robert;

--
-- Name: occupationalstatus_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE occupationalstatus_id_seq OWNED BY occupationalstatus.id;


--
-- Name: orange; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE orange (
    id integer NOT NULL,
    tree text,
    age numeric,
    circumference numeric
);


ALTER TABLE orange OWNER TO robert;

--
-- Name: orange_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE orange_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orange_id_seq OWNER TO robert;

--
-- Name: orange_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE orange_id_seq OWNED BY orange.id;


--
-- Name: orchardsprays; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE orchardsprays (
    id integer NOT NULL,
    decrease numeric,
    rowpos numeric,
    colpos numeric,
    treatment text
);


ALTER TABLE orchardsprays OWNER TO robert;

--
-- Name: orchardsprays_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE orchardsprays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE orchardsprays_id_seq OWNER TO robert;

--
-- Name: orchardsprays_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE orchardsprays_id_seq OWNED BY orchardsprays.id;


--
-- Name: plantgrowth; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE plantgrowth (
    id integer NOT NULL,
    weight numeric,
    "group" text
);


ALTER TABLE plantgrowth OWNER TO robert;

--
-- Name: plantgrowth_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE plantgrowth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE plantgrowth_id_seq OWNER TO robert;

--
-- Name: plantgrowth_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE plantgrowth_id_seq OWNED BY plantgrowth.id;


--
-- Name: precip; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE precip (
    id integer NOT NULL,
    "eval(parse(text_=_name))" numeric
);


ALTER TABLE precip OWNER TO robert;

--
-- Name: precip_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE precip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE precip_id_seq OWNER TO robert;

--
-- Name: precip_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE precip_id_seq OWNED BY precip.id;


--
-- Name: presidents; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE presidents (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE presidents OWNER TO robert;

--
-- Name: presidents_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE presidents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE presidents_id_seq OWNER TO robert;

--
-- Name: presidents_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE presidents_id_seq OWNED BY presidents.id;


--
-- Name: pressure; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE pressure (
    id integer NOT NULL,
    temperature numeric,
    pressure numeric
);


ALTER TABLE pressure OWNER TO robert;

--
-- Name: pressure_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE pressure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pressure_id_seq OWNER TO robert;

--
-- Name: pressure_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE pressure_id_seq OWNED BY pressure.id;


--
-- Name: puromycin; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE puromycin (
    id integer NOT NULL,
    conc numeric,
    rate numeric,
    state text
);


ALTER TABLE puromycin OWNER TO robert;

--
-- Name: puromycin_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE puromycin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE puromycin_id_seq OWNER TO robert;

--
-- Name: puromycin_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE puromycin_id_seq OWNED BY puromycin.id;


--
-- Name: quakes; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE quakes (
    id integer NOT NULL,
    lat numeric,
    long numeric,
    depth text,
    mag numeric,
    stations text
);


ALTER TABLE quakes OWNER TO robert;

--
-- Name: quakes_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE quakes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE quakes_id_seq OWNER TO robert;

--
-- Name: quakes_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE quakes_id_seq OWNED BY quakes.id;


--
-- Name: randu; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE randu (
    id integer NOT NULL,
    x numeric,
    y numeric,
    z numeric
);


ALTER TABLE randu OWNER TO robert;

--
-- Name: randu_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE randu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE randu_id_seq OWNER TO robert;

--
-- Name: randu_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE randu_id_seq OWNED BY randu.id;


--
-- Name: rivers; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE rivers (
    id integer NOT NULL,
    "eval(parse(text_=_name))" numeric
);


ALTER TABLE rivers OWNER TO robert;

--
-- Name: rivers_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE rivers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rivers_id_seq OWNER TO robert;

--
-- Name: rivers_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE rivers_id_seq OWNED BY rivers.id;


--
-- Name: rock; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE rock (
    id integer NOT NULL,
    area text,
    peri numeric,
    shape numeric,
    perm numeric
);


ALTER TABLE rock OWNER TO robert;

--
-- Name: rock_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE rock_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rock_id_seq OWNER TO robert;

--
-- Name: rock_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE rock_id_seq OWNED BY rock.id;


--
-- Name: seatbelts; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE seatbelts (
    id integer NOT NULL,
    driverskilled numeric,
    drivers numeric,
    front numeric,
    rear numeric,
    kms numeric,
    petrolprice numeric,
    vankilled numeric,
    law numeric
);


ALTER TABLE seatbelts OWNER TO robert;

--
-- Name: seatbelts_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE seatbelts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seatbelts_id_seq OWNER TO robert;

--
-- Name: seatbelts_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE seatbelts_id_seq OWNED BY seatbelts.id;


--
-- Name: sleep; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE sleep (
    id integer NOT NULL,
    extra numeric,
    "group" text,
    rid text
);


ALTER TABLE sleep OWNER TO robert;

--
-- Name: sleep_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE sleep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sleep_id_seq OWNER TO robert;

--
-- Name: sleep_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE sleep_id_seq OWNED BY sleep.id;


--
-- Name: stack_loss; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE stack_loss (
    id integer NOT NULL,
    "eval(parse(text_=_name))" numeric
);


ALTER TABLE stack_loss OWNER TO robert;

--
-- Name: stack_loss_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE stack_loss_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stack_loss_id_seq OWNER TO robert;

--
-- Name: stack_loss_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE stack_loss_id_seq OWNED BY stack_loss.id;


--
-- Name: stack_x; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE stack_x (
    id integer NOT NULL,
    air_flow numeric,
    water_temp numeric,
    acid_conc_ numeric
);


ALTER TABLE stack_x OWNER TO robert;

--
-- Name: stack_x_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE stack_x_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stack_x_id_seq OWNER TO robert;

--
-- Name: stack_x_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE stack_x_id_seq OWNED BY stack_x.id;


--
-- Name: stackloss; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE stackloss (
    id integer NOT NULL,
    air_flow numeric,
    water_temp numeric,
    acid_conc_ numeric,
    stack_loss numeric
);


ALTER TABLE stackloss OWNER TO robert;

--
-- Name: stackloss_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE stackloss_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE stackloss_id_seq OWNER TO robert;

--
-- Name: stackloss_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE stackloss_id_seq OWNED BY stackloss.id;


--
-- Name: state_abb; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_abb (
    id integer NOT NULL,
    "eval(parse(text_=_name))" text
);


ALTER TABLE state_abb OWNER TO robert;

--
-- Name: state_abb_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_abb_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_abb_id_seq OWNER TO robert;

--
-- Name: state_abb_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_abb_id_seq OWNED BY state_abb.id;


--
-- Name: state_area; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_area (
    id integer NOT NULL,
    "eval(parse(text_=_name))" numeric
);


ALTER TABLE state_area OWNER TO robert;

--
-- Name: state_area_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_area_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_area_id_seq OWNER TO robert;

--
-- Name: state_area_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_area_id_seq OWNED BY state_area.id;


--
-- Name: state_center; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_center (
    id integer NOT NULL,
    x numeric,
    y numeric
);


ALTER TABLE state_center OWNER TO robert;

--
-- Name: state_center_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_center_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_center_id_seq OWNER TO robert;

--
-- Name: state_center_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_center_id_seq OWNED BY state_center.id;


--
-- Name: state_division; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_division (
    id integer NOT NULL,
    "eval(parse(text_=_name))" text
);


ALTER TABLE state_division OWNER TO robert;

--
-- Name: state_division_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_division_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_division_id_seq OWNER TO robert;

--
-- Name: state_division_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_division_id_seq OWNED BY state_division.id;


--
-- Name: state_name; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_name (
    id integer NOT NULL,
    "eval(parse(text_=_name))" text
);


ALTER TABLE state_name OWNER TO robert;

--
-- Name: state_name_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_name_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_name_id_seq OWNER TO robert;

--
-- Name: state_name_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_name_id_seq OWNED BY state_name.id;


--
-- Name: state_region; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_region (
    id integer NOT NULL,
    "eval(parse(text_=_name))" text
);


ALTER TABLE state_region OWNER TO robert;

--
-- Name: state_region_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_region_id_seq OWNER TO robert;

--
-- Name: state_region_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_region_id_seq OWNED BY state_region.id;


--
-- Name: state_x77; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE state_x77 (
    id integer NOT NULL,
    population numeric,
    income numeric,
    illiteracy numeric,
    life_exp numeric,
    murder numeric,
    hs_grad numeric,
    frost numeric,
    area numeric
);


ALTER TABLE state_x77 OWNER TO robert;

--
-- Name: state_x77_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE state_x77_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE state_x77_id_seq OWNER TO robert;

--
-- Name: state_x77_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE state_x77_id_seq OWNED BY state_x77.id;


--
-- Name: sunspot_month; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE sunspot_month (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE sunspot_month OWNER TO robert;

--
-- Name: sunspot_month_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE sunspot_month_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sunspot_month_id_seq OWNER TO robert;

--
-- Name: sunspot_month_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE sunspot_month_id_seq OWNED BY sunspot_month.id;


--
-- Name: sunspot_year; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE sunspot_year (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE sunspot_year OWNER TO robert;

--
-- Name: sunspot_year_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE sunspot_year_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sunspot_year_id_seq OWNER TO robert;

--
-- Name: sunspot_year_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE sunspot_year_id_seq OWNED BY sunspot_year.id;


--
-- Name: sunspots; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE sunspots (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE sunspots OWNER TO robert;

--
-- Name: sunspots_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE sunspots_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sunspots_id_seq OWNER TO robert;

--
-- Name: sunspots_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE sunspots_id_seq OWNED BY sunspots.id;


--
-- Name: swiss; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE swiss (
    id integer NOT NULL,
    fertility numeric,
    agriculture numeric,
    examination text,
    education text,
    catholic numeric,
    infant_mortality numeric
);


ALTER TABLE swiss OWNER TO robert;

--
-- Name: swiss_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE swiss_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE swiss_id_seq OWNER TO robert;

--
-- Name: swiss_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE swiss_id_seq OWNED BY swiss.id;


--
-- Name: theoph; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE theoph (
    id integer NOT NULL,
    subject text,
    wt numeric,
    dose numeric,
    "time" numeric,
    conc numeric
);


ALTER TABLE theoph OWNER TO robert;

--
-- Name: theoph_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE theoph_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE theoph_id_seq OWNER TO robert;

--
-- Name: theoph_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE theoph_id_seq OWNED BY theoph.id;


--
-- Name: titanic; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE titanic (
    id integer NOT NULL,
    class text,
    sex text,
    age text,
    survived text,
    freq numeric
);


ALTER TABLE titanic OWNER TO robert;

--
-- Name: titanic_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE titanic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE titanic_id_seq OWNER TO robert;

--
-- Name: titanic_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE titanic_id_seq OWNED BY titanic.id;


--
-- Name: toothgrowth; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE toothgrowth (
    id integer NOT NULL,
    len numeric,
    supp text,
    dose numeric
);


ALTER TABLE toothgrowth OWNER TO robert;

--
-- Name: toothgrowth_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE toothgrowth_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE toothgrowth_id_seq OWNER TO robert;

--
-- Name: toothgrowth_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE toothgrowth_id_seq OWNED BY toothgrowth.id;


--
-- Name: treering; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE treering (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE treering OWNER TO robert;

--
-- Name: treering_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE treering_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE treering_id_seq OWNER TO robert;

--
-- Name: treering_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE treering_id_seq OWNED BY treering.id;


--
-- Name: trees; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE trees (
    id integer NOT NULL,
    girth numeric,
    height numeric,
    volume numeric
);


ALTER TABLE trees OWNER TO robert;

--
-- Name: trees_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE trees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE trees_id_seq OWNER TO robert;

--
-- Name: trees_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE trees_id_seq OWNED BY trees.id;


--
-- Name: ucbadmissions; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE ucbadmissions (
    id integer NOT NULL,
    admit text,
    gender text,
    dept text,
    freq numeric
);


ALTER TABLE ucbadmissions OWNER TO robert;

--
-- Name: ucbadmissions_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE ucbadmissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ucbadmissions_id_seq OWNER TO robert;

--
-- Name: ucbadmissions_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE ucbadmissions_id_seq OWNED BY ucbadmissions.id;


--
-- Name: ukdriverdeaths; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE ukdriverdeaths (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE ukdriverdeaths OWNER TO robert;

--
-- Name: ukdriverdeaths_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE ukdriverdeaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ukdriverdeaths_id_seq OWNER TO robert;

--
-- Name: ukdriverdeaths_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE ukdriverdeaths_id_seq OWNED BY ukdriverdeaths.id;


--
-- Name: ukgas; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE ukgas (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE ukgas OWNER TO robert;

--
-- Name: ukgas_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE ukgas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ukgas_id_seq OWNER TO robert;

--
-- Name: ukgas_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE ukgas_id_seq OWNED BY ukgas.id;


--
-- Name: usaccdeaths; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE usaccdeaths (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE usaccdeaths OWNER TO robert;

--
-- Name: usaccdeaths_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE usaccdeaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usaccdeaths_id_seq OWNER TO robert;

--
-- Name: usaccdeaths_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE usaccdeaths_id_seq OWNED BY usaccdeaths.id;


--
-- Name: usarrests; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE usarrests (
    id integer NOT NULL,
    murder numeric,
    assault text,
    urbanpop text,
    rape numeric
);


ALTER TABLE usarrests OWNER TO robert;

--
-- Name: usarrests_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE usarrests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usarrests_id_seq OWNER TO robert;

--
-- Name: usarrests_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE usarrests_id_seq OWNED BY usarrests.id;


--
-- Name: usjudgeratings; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE usjudgeratings (
    id integer NOT NULL,
    cont numeric,
    intg numeric,
    dmnr numeric,
    dilg numeric,
    cfmg numeric,
    deci numeric,
    prep numeric,
    fami numeric,
    oral numeric,
    writ numeric,
    phys numeric,
    rten numeric
);


ALTER TABLE usjudgeratings OWNER TO robert;

--
-- Name: usjudgeratings_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE usjudgeratings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usjudgeratings_id_seq OWNER TO robert;

--
-- Name: usjudgeratings_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE usjudgeratings_id_seq OWNED BY usjudgeratings.id;


--
-- Name: uspersonalexpenditure; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE uspersonalexpenditure (
    id integer NOT NULL,
    "1940" numeric,
    "1945" numeric,
    "1950" numeric,
    "1955" numeric,
    "1960" numeric
);


ALTER TABLE uspersonalexpenditure OWNER TO robert;

--
-- Name: uspersonalexpenditure_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE uspersonalexpenditure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE uspersonalexpenditure_id_seq OWNER TO robert;

--
-- Name: uspersonalexpenditure_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE uspersonalexpenditure_id_seq OWNED BY uspersonalexpenditure.id;


--
-- Name: uspop; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE uspop (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE uspop OWNER TO robert;

--
-- Name: uspop_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE uspop_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE uspop_id_seq OWNER TO robert;

--
-- Name: uspop_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE uspop_id_seq OWNED BY uspop.id;


--
-- Name: vadeaths; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE vadeaths (
    id integer NOT NULL,
    rural_male numeric,
    rural_female numeric,
    urban_male numeric,
    urban_female numeric
);


ALTER TABLE vadeaths OWNER TO robert;

--
-- Name: vadeaths_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE vadeaths_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE vadeaths_id_seq OWNER TO robert;

--
-- Name: vadeaths_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE vadeaths_id_seq OWNED BY vadeaths.id;


--
-- Name: volcano; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE volcano (
    id integer NOT NULL,
    v1 numeric,
    v2 numeric,
    v3 numeric,
    v4 numeric,
    v5 numeric,
    v6 numeric,
    v7 numeric,
    v8 numeric,
    v9 numeric,
    v10 numeric,
    v11 numeric,
    v12 numeric,
    v13 numeric,
    v14 numeric,
    v15 numeric,
    v16 numeric,
    v17 numeric,
    v18 numeric,
    v19 numeric,
    v20 numeric,
    v21 numeric,
    v22 numeric,
    v23 numeric,
    v24 numeric,
    v25 numeric,
    v26 numeric,
    v27 numeric,
    v28 numeric,
    v29 numeric,
    v30 numeric,
    v31 numeric,
    v32 numeric,
    v33 numeric,
    v34 numeric,
    v35 numeric,
    v36 numeric,
    v37 numeric,
    v38 numeric,
    v39 numeric,
    v40 numeric,
    v41 numeric,
    v42 numeric,
    v43 numeric,
    v44 numeric,
    v45 numeric,
    v46 numeric,
    v47 numeric,
    v48 numeric,
    v49 numeric,
    v50 numeric,
    v51 numeric,
    v52 numeric,
    v53 numeric,
    v54 numeric,
    v55 numeric,
    v56 numeric,
    v57 numeric,
    v58 numeric,
    v59 numeric,
    v60 numeric,
    v61 numeric
);


ALTER TABLE volcano OWNER TO robert;

--
-- Name: volcano_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE volcano_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE volcano_id_seq OWNER TO robert;

--
-- Name: volcano_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE volcano_id_seq OWNED BY volcano.id;


--
-- Name: warpbreaks; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE warpbreaks (
    id integer NOT NULL,
    breaks numeric,
    wool text,
    tension text
);


ALTER TABLE warpbreaks OWNER TO robert;

--
-- Name: warpbreaks_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE warpbreaks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE warpbreaks_id_seq OWNER TO robert;

--
-- Name: warpbreaks_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE warpbreaks_id_seq OWNED BY warpbreaks.id;


--
-- Name: women; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE women (
    id integer NOT NULL,
    height numeric,
    weight numeric
);


ALTER TABLE women OWNER TO robert;

--
-- Name: women_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE women_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE women_id_seq OWNER TO robert;

--
-- Name: women_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE women_id_seq OWNED BY women.id;


--
-- Name: worldphones; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE worldphones (
    id integer NOT NULL,
    n_amer numeric,
    europe numeric,
    asia numeric,
    s_amer numeric,
    oceania numeric,
    africa numeric,
    mid_amer numeric
);


ALTER TABLE worldphones OWNER TO robert;

--
-- Name: worldphones_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE worldphones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE worldphones_id_seq OWNER TO robert;

--
-- Name: worldphones_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE worldphones_id_seq OWNED BY worldphones.id;


--
-- Name: wwwusage; Type: TABLE; Schema: rdata; Owner: robert; Tablespace: 
--

CREATE TABLE wwwusage (
    id integer NOT NULL,
    x numeric
);


ALTER TABLE wwwusage OWNER TO robert;

--
-- Name: wwwusage_id_seq; Type: SEQUENCE; Schema: rdata; Owner: robert
--

CREATE SEQUENCE wwwusage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wwwusage_id_seq OWNER TO robert;

--
-- Name: wwwusage_id_seq; Type: SEQUENCE OWNED BY; Schema: rdata; Owner: robert
--

ALTER SEQUENCE wwwusage_id_seq OWNED BY wwwusage.id;


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY ability_cov ALTER COLUMN id SET DEFAULT nextval('ability_cov_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY airmiles ALTER COLUMN id SET DEFAULT nextval('airmiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY airpassengers ALTER COLUMN id SET DEFAULT nextval('airpassengers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY airquality ALTER COLUMN id SET DEFAULT nextval('airquality_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY anscombe ALTER COLUMN id SET DEFAULT nextval('anscombe_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY attenu ALTER COLUMN id SET DEFAULT nextval('attenu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY attitude ALTER COLUMN id SET DEFAULT nextval('attitude_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY austres ALTER COLUMN id SET DEFAULT nextval('austres_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY beaver1 ALTER COLUMN id SET DEFAULT nextval('beaver1_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY beaver2 ALTER COLUMN id SET DEFAULT nextval('beaver2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY bjsales ALTER COLUMN id SET DEFAULT nextval('bjsales_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY bjsales_lead ALTER COLUMN id SET DEFAULT nextval('bjsales_lead_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY bod ALTER COLUMN id SET DEFAULT nextval('bod_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY cars ALTER COLUMN id SET DEFAULT nextval('cars_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY chickweight ALTER COLUMN id SET DEFAULT nextval('chickweight_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY chickwts ALTER COLUMN id SET DEFAULT nextval('chickwts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY co2 ALTER COLUMN id SET DEFAULT nextval('co2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY co2_2 ALTER COLUMN id SET DEFAULT nextval('co2_2_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY crimtab ALTER COLUMN id SET DEFAULT nextval('crimtab_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY discoveries ALTER COLUMN id SET DEFAULT nextval('discoveries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY dnase ALTER COLUMN id SET DEFAULT nextval('dnase_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY esoph ALTER COLUMN id SET DEFAULT nextval('esoph_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY euro ALTER COLUMN id SET DEFAULT nextval('euro_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY euro_cross ALTER COLUMN id SET DEFAULT nextval('euro_cross_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY eustockmarkets ALTER COLUMN id SET DEFAULT nextval('eustockmarkets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY faithful ALTER COLUMN id SET DEFAULT nextval('faithful_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY fdeaths ALTER COLUMN id SET DEFAULT nextval('fdeaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY formaldehyde ALTER COLUMN id SET DEFAULT nextval('formaldehyde_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY freeny ALTER COLUMN id SET DEFAULT nextval('freeny_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY freeny_x ALTER COLUMN id SET DEFAULT nextval('freeny_x_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY freeny_y ALTER COLUMN id SET DEFAULT nextval('freeny_y_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY haireyecolor ALTER COLUMN id SET DEFAULT nextval('haireyecolor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY harman23_cor ALTER COLUMN id SET DEFAULT nextval('harman23_cor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY harman74_cor ALTER COLUMN id SET DEFAULT nextval('harman74_cor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY indometh ALTER COLUMN id SET DEFAULT nextval('indometh_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY infert ALTER COLUMN id SET DEFAULT nextval('infert_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY insectsprays ALTER COLUMN id SET DEFAULT nextval('insectsprays_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY iris ALTER COLUMN id SET DEFAULT nextval('iris_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY iris3 ALTER COLUMN id SET DEFAULT nextval('iris3_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY islands ALTER COLUMN id SET DEFAULT nextval('islands_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY johnsonjohnson ALTER COLUMN id SET DEFAULT nextval('johnsonjohnson_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY lakehuron ALTER COLUMN id SET DEFAULT nextval('lakehuron_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY ldeaths ALTER COLUMN id SET DEFAULT nextval('ldeaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY lh ALTER COLUMN id SET DEFAULT nextval('lh_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY lifecyclesavings ALTER COLUMN id SET DEFAULT nextval('lifecyclesavings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY loblolly ALTER COLUMN id SET DEFAULT nextval('loblolly_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY longley ALTER COLUMN id SET DEFAULT nextval('longley_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY lynx ALTER COLUMN id SET DEFAULT nextval('lynx_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY mdeaths ALTER COLUMN id SET DEFAULT nextval('mdeaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY morley ALTER COLUMN id SET DEFAULT nextval('morley_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY mtcars ALTER COLUMN id SET DEFAULT nextval('mtcars_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY nhtemp ALTER COLUMN id SET DEFAULT nextval('nhtemp_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY nile ALTER COLUMN id SET DEFAULT nextval('nile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY nottem ALTER COLUMN id SET DEFAULT nextval('nottem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY occupationalstatus ALTER COLUMN id SET DEFAULT nextval('occupationalstatus_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY orange ALTER COLUMN id SET DEFAULT nextval('orange_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY orchardsprays ALTER COLUMN id SET DEFAULT nextval('orchardsprays_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY plantgrowth ALTER COLUMN id SET DEFAULT nextval('plantgrowth_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY precip ALTER COLUMN id SET DEFAULT nextval('precip_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY presidents ALTER COLUMN id SET DEFAULT nextval('presidents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY pressure ALTER COLUMN id SET DEFAULT nextval('pressure_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY puromycin ALTER COLUMN id SET DEFAULT nextval('puromycin_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY quakes ALTER COLUMN id SET DEFAULT nextval('quakes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY randu ALTER COLUMN id SET DEFAULT nextval('randu_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY rivers ALTER COLUMN id SET DEFAULT nextval('rivers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY rock ALTER COLUMN id SET DEFAULT nextval('rock_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY seatbelts ALTER COLUMN id SET DEFAULT nextval('seatbelts_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY sleep ALTER COLUMN id SET DEFAULT nextval('sleep_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY stack_loss ALTER COLUMN id SET DEFAULT nextval('stack_loss_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY stack_x ALTER COLUMN id SET DEFAULT nextval('stack_x_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY stackloss ALTER COLUMN id SET DEFAULT nextval('stackloss_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_abb ALTER COLUMN id SET DEFAULT nextval('state_abb_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_area ALTER COLUMN id SET DEFAULT nextval('state_area_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_center ALTER COLUMN id SET DEFAULT nextval('state_center_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_division ALTER COLUMN id SET DEFAULT nextval('state_division_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_name ALTER COLUMN id SET DEFAULT nextval('state_name_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_region ALTER COLUMN id SET DEFAULT nextval('state_region_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY state_x77 ALTER COLUMN id SET DEFAULT nextval('state_x77_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY sunspot_month ALTER COLUMN id SET DEFAULT nextval('sunspot_month_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY sunspot_year ALTER COLUMN id SET DEFAULT nextval('sunspot_year_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY sunspots ALTER COLUMN id SET DEFAULT nextval('sunspots_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY swiss ALTER COLUMN id SET DEFAULT nextval('swiss_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY theoph ALTER COLUMN id SET DEFAULT nextval('theoph_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY titanic ALTER COLUMN id SET DEFAULT nextval('titanic_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY toothgrowth ALTER COLUMN id SET DEFAULT nextval('toothgrowth_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY treering ALTER COLUMN id SET DEFAULT nextval('treering_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY trees ALTER COLUMN id SET DEFAULT nextval('trees_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY ucbadmissions ALTER COLUMN id SET DEFAULT nextval('ucbadmissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY ukdriverdeaths ALTER COLUMN id SET DEFAULT nextval('ukdriverdeaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY ukgas ALTER COLUMN id SET DEFAULT nextval('ukgas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY usaccdeaths ALTER COLUMN id SET DEFAULT nextval('usaccdeaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY usarrests ALTER COLUMN id SET DEFAULT nextval('usarrests_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY usjudgeratings ALTER COLUMN id SET DEFAULT nextval('usjudgeratings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY uspersonalexpenditure ALTER COLUMN id SET DEFAULT nextval('uspersonalexpenditure_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY uspop ALTER COLUMN id SET DEFAULT nextval('uspop_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY vadeaths ALTER COLUMN id SET DEFAULT nextval('vadeaths_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY volcano ALTER COLUMN id SET DEFAULT nextval('volcano_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY warpbreaks ALTER COLUMN id SET DEFAULT nextval('warpbreaks_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY women ALTER COLUMN id SET DEFAULT nextval('women_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY worldphones ALTER COLUMN id SET DEFAULT nextval('worldphones_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: rdata; Owner: robert
--

ALTER TABLE ONLY wwwusage ALTER COLUMN id SET DEFAULT nextval('wwwusage_id_seq'::regclass);


--
-- Data for Name: ability_cov; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY ability_cov (id, cov_general, cov_picture, cov_blocks, cov_maze, cov_reading, cov_vocab, center, n_obs) FROM stdin;
1	24.641	5.991	33.52	6.023	20.755	29.701	0	112
2	5.991	6.7	18.137	1.782	4.936	7.204	0	112
3	33.52	18.137	149.831	19.424	31.43	50.753	0	112
4	6.023	1.782	19.424	12.711	4.757	9.075	0	112
5	20.755	4.936	31.43	4.757	52.604	66.762	0	112
6	29.701	7.204	50.753	9.075	66.762	135.292	0	112
\.


--
-- Name: ability_cov_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('ability_cov_id_seq', 6, true);


--
-- Data for Name: airmiles; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY airmiles (id, x) FROM stdin;
1	412
2	480
3	683
4	1052
5	1385
6	1418
7	1634
8	2178
9	3362
10	5948
11	6109
12	5981
13	6753
14	8003
15	10566
16	12528
17	14760
18	16769
19	19819
20	22362
21	25340
22	25343
23	29269
24	30514
\.


--
-- Name: airmiles_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('airmiles_id_seq', 24, true);


--
-- Data for Name: airpassengers; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY airpassengers (id, x) FROM stdin;
1	112
2	118
3	132
4	129
5	121
6	135
7	148
8	148
9	136
10	119
11	104
12	118
13	115
14	126
15	141
16	135
17	125
18	149
19	170
20	170
21	158
22	133
23	114
24	140
25	145
26	150
27	178
28	163
29	172
30	178
31	199
32	199
33	184
34	162
35	146
36	166
37	171
38	180
39	193
40	181
41	183
42	218
43	230
44	242
45	209
46	191
47	172
48	194
49	196
50	196
51	236
52	235
53	229
54	243
55	264
56	272
57	237
58	211
59	180
60	201
61	204
62	188
63	235
64	227
65	234
66	264
67	302
68	293
69	259
70	229
71	203
72	229
73	242
74	233
75	267
76	269
77	270
78	315
79	364
80	347
81	312
82	274
83	237
84	278
85	284
86	277
87	317
88	313
89	318
90	374
91	413
92	405
93	355
94	306
95	271
96	306
97	315
98	301
99	356
100	348
101	355
102	422
103	465
104	467
105	404
106	347
107	305
108	336
109	340
110	318
111	362
112	348
113	363
114	435
115	491
116	505
117	404
118	359
119	310
120	337
121	360
122	342
123	406
124	396
125	420
126	472
127	548
128	559
129	463
130	407
131	362
132	405
133	417
134	391
135	419
136	461
137	472
138	535
139	622
140	606
141	508
142	461
143	390
144	432
\.


--
-- Name: airpassengers_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('airpassengers_id_seq', 144, true);


--
-- Data for Name: airquality; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY airquality (id, ozone, solar_r, wind, temp, month, day) FROM stdin;
1	41	190	7.4	67	5	1
2	36	118	8	72	5	2
3	12	149	12.6	74	5	3
4	18	313	11.5	62	5	4
5	\N	\N	14.3	56	5	5
6	28	\N	14.9	66	5	6
7	23	299	8.6	65	5	7
8	19	99	13.8	59	5	8
9	8	19	20.1	61	5	9
10	\N	194	8.6	69	5	10
11	7	\N	6.9	74	5	11
12	16	256	9.7	69	5	12
13	11	290	9.2	66	5	13
14	14	274	10.9	68	5	14
15	18	65	13.2	58	5	15
16	14	334	11.5	64	5	16
17	34	307	12	66	5	17
18	6	78	18.4	57	5	18
19	30	322	11.5	68	5	19
20	11	44	9.7	62	5	20
21	1	8	9.7	59	5	21
22	11	320	16.6	73	5	22
23	4	25	9.7	61	5	23
24	32	92	12	61	5	24
25	\N	66	16.6	57	5	25
26	\N	266	14.9	58	5	26
27	\N	\N	8	57	5	27
28	23	13	12	67	5	28
29	45	252	14.9	81	5	29
30	115	223	5.7	79	5	30
31	37	279	7.4	76	5	31
32	\N	286	8.6	78	6	1
33	\N	287	9.7	74	6	2
34	\N	242	16.1	67	6	3
35	\N	186	9.2	84	6	4
36	\N	220	8.6	85	6	5
37	\N	264	14.3	79	6	6
38	29	127	9.7	82	6	7
39	\N	273	6.9	87	6	8
40	71	291	13.8	90	6	9
41	39	323	11.5	87	6	10
42	\N	259	10.9	93	6	11
43	\N	250	9.2	92	6	12
44	23	148	8	82	6	13
45	\N	332	13.8	80	6	14
46	\N	322	11.5	79	6	15
47	21	191	14.9	77	6	16
48	37	284	20.7	72	6	17
49	20	37	9.2	65	6	18
50	12	120	11.5	73	6	19
51	13	137	10.3	76	6	20
52	\N	150	6.3	77	6	21
53	\N	59	1.7	76	6	22
54	\N	91	4.6	76	6	23
55	\N	250	6.3	76	6	24
56	\N	135	8	75	6	25
57	\N	127	8	78	6	26
58	\N	47	10.3	73	6	27
59	\N	98	11.5	80	6	28
60	\N	31	14.9	77	6	29
61	\N	138	8	83	6	30
62	135	269	4.1	84	7	1
63	49	248	9.2	85	7	2
64	32	236	9.2	81	7	3
65	\N	101	10.9	84	7	4
66	64	175	4.6	83	7	5
67	40	314	10.9	83	7	6
68	77	276	5.1	88	7	7
69	97	267	6.3	92	7	8
70	97	272	5.7	92	7	9
71	85	175	7.4	89	7	10
72	\N	139	8.6	82	7	11
73	10	264	14.3	73	7	12
74	27	175	14.9	81	7	13
75	\N	291	14.9	91	7	14
76	7	48	14.3	80	7	15
77	48	260	6.9	81	7	16
78	35	274	10.3	82	7	17
79	61	285	6.3	84	7	18
80	79	187	5.1	87	7	19
81	63	220	11.5	85	7	20
82	16	7	6.9	74	7	21
83	\N	258	9.7	81	7	22
84	\N	295	11.5	82	7	23
85	80	294	8.6	86	7	24
86	108	223	8	85	7	25
87	20	81	8.6	82	7	26
88	52	82	12	86	7	27
89	82	213	7.4	88	7	28
90	50	275	7.4	86	7	29
91	64	253	7.4	83	7	30
92	59	254	9.2	81	7	31
93	39	83	6.9	81	8	1
94	9	24	13.8	81	8	2
95	16	77	7.4	82	8	3
96	78	\N	6.9	86	8	4
97	35	\N	7.4	85	8	5
98	66	\N	4.6	87	8	6
99	122	255	4	89	8	7
100	89	229	10.3	90	8	8
101	110	207	8	90	8	9
102	\N	222	8.6	92	8	10
103	\N	137	11.5	86	8	11
104	44	192	11.5	86	8	12
105	28	273	11.5	82	8	13
106	65	157	9.7	80	8	14
107	\N	64	11.5	79	8	15
108	22	71	10.3	77	8	16
109	59	51	6.3	79	8	17
110	23	115	7.4	76	8	18
111	31	244	10.9	78	8	19
112	44	190	10.3	78	8	20
113	21	259	15.5	77	8	21
114	9	36	14.3	72	8	22
115	\N	255	12.6	75	8	23
116	45	212	9.7	79	8	24
117	168	238	3.4	81	8	25
118	73	215	8	86	8	26
119	\N	153	5.7	88	8	27
120	76	203	9.7	97	8	28
121	118	225	2.3	94	8	29
122	84	237	6.3	96	8	30
123	85	188	6.3	94	8	31
124	96	167	6.9	91	9	1
125	78	197	5.1	92	9	2
126	73	183	2.8	93	9	3
127	91	189	4.6	93	9	4
128	47	95	7.4	87	9	5
129	32	92	15.5	84	9	6
130	20	252	10.9	80	9	7
131	23	220	10.3	78	9	8
132	21	230	10.9	75	9	9
133	24	259	9.7	73	9	10
134	44	236	14.9	81	9	11
135	21	259	15.5	76	9	12
136	28	238	6.3	77	9	13
137	9	24	10.9	71	9	14
138	13	112	11.5	71	9	15
139	46	237	6.9	78	9	16
140	18	224	13.8	67	9	17
141	13	27	10.3	76	9	18
142	24	238	10.3	68	9	19
143	16	201	8	82	9	20
144	13	238	12.6	64	9	21
145	23	14	9.2	71	9	22
146	36	139	10.3	81	9	23
147	7	49	10.3	69	9	24
148	14	20	16.6	63	9	25
149	30	193	6.9	70	9	26
150	\N	145	13.2	77	9	27
151	14	191	14.3	75	9	28
152	18	131	8	76	9	29
153	20	223	11.5	68	9	30
\.


--
-- Name: airquality_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('airquality_id_seq', 153, true);


--
-- Data for Name: anscombe; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY anscombe (id, x1, x2, x3, x4, y1, y2, y3, y4) FROM stdin;
1	10	10	10	8	8.04	9.14	7.46	6.58
2	8	8	8	8	6.95	8.14	6.77	5.76
3	13	13	13	8	7.58	8.74	12.74	7.71
4	9	9	9	8	8.81	8.77	7.11	8.84
5	11	11	11	8	8.33	9.26	7.81	8.47
6	14	14	14	8	9.96	8.1	8.84	7.04
7	6	6	6	8	7.24	6.13	6.08	5.25
8	4	4	4	19	4.26	3.1	5.39	12.5
9	12	12	12	8	10.84	9.13	8.15	5.56
10	7	7	7	8	4.82	7.26	6.42	7.91
11	5	5	5	8	5.68	4.74	5.73	6.89
\.


--
-- Name: anscombe_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('anscombe_id_seq', 11, true);


--
-- Data for Name: attenu; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY attenu (id, event, mag, station, dist, accel) FROM stdin;
1	1	7.0	117	12.0	0.359
2	2	7.4	1083	148.0	0.014
3	2	7.4	1095	42.0	0.196
4	2	7.4	283	85.0	0.135
5	2	7.4	135	107.0	0.062
6	2	7.4	475	109.0	0.054
7	2	7.4	113	156.0	0.014
8	2	7.4	1008	224.0	0.018
9	2	7.4	1028	293.0	0.010
10	2	7.4	2001	359.0	0.004
11	2	7.4	117	370.0	0.004
12	3	5.3	1117	8.0	0.127
13	4	6.1	1438	16.1	0.411
14	4	6.1	1083	63.6	0.018
15	4	6.1	1013	6.6	0.509
16	4	6.1	1014	9.3	0.467
17	4	6.1	1015	13.0	0.279
18	4	6.1	1016	17.3	0.072
19	4	6.1	1095	105.0	0.012
20	4	6.1	1011	112.0	0.006
21	4	6.1	1028	123.0	0.003
22	5	6.6	270	105.0	0.018
23	5	6.6	280	122.0	0.048
24	5	6.6	116	141.0	0.011
25	5	6.6	266	200.0	0.007
26	5	6.6	117	45.0	0.142
27	5	6.6	113	130.0	0.031
28	5	6.6	112	147.0	0.006
29	5	6.6	130	187.0	0.010
30	5	6.6	475	197.0	0.010
31	5	6.6	269	203.0	0.006
32	5	6.6	135	211.0	0.013
33	6	5.6	1093	62.0	0.005
34	7	5.7	1093	62.0	0.003
35	8	5.3	111	19.0	0.086
36	8	5.3	116	21.0	0.179
37	8	5.3	290	13.0	0.205
38	8	5.3	112	22.0	0.073
39	8	5.3	113	29.0	0.045
40	9	6.6	128	17.0	0.374
41	9	6.6	126	19.6	0.200
42	9	6.6	127	20.2	0.147
43	9	6.6	141	21.1	0.188
44	9	6.6	266	21.9	0.204
45	9	6.6	110	24.2	0.335
46	9	6.6	1027	66.0	0.057
47	9	6.6	111	87.0	0.021
48	9	6.6	125	23.4	0.152
49	9	6.6	135	24.6	0.217
50	9	6.6	475	25.7	0.114
51	9	6.6	262	28.6	0.150
52	9	6.6	269	37.4	0.148
53	9	6.6	1052	46.7	0.112
54	9	6.6	411	56.9	0.043
55	9	6.6	290	60.7	0.057
56	9	6.6	130	61.4	0.030
57	9	6.6	272	62.0	0.027
58	9	6.6	1096	64.0	0.028
59	9	6.6	1102	82.0	0.034
60	9	6.6	112	88.0	0.030
61	9	6.6	113	91.0	0.039
62	10	5.3	1028	31.0	0.030
63	11	7.7	2714	45.0	0.110
64	11	7.7	2708	145.0	0.010
65	11	7.7	2715	300.0	0.010
66	12	6.2	3501	5.0	0.390
67	13	5.6	655	50.0	0.031
68	13	5.6	272	16.0	0.130
69	14	5.2	1032	17.0	0.011
70	14	5.2	1377	8.0	0.120
71	14	5.2	1028	10.0	0.170
72	14	5.2	1250	10.0	0.140
73	15	6.0	1051	8.0	0.110
74	15	6.0	1293	32.0	0.040
75	15	6.0	1291	30.0	0.070
76	15	6.0	1292	31.0	0.080
77	16	5.1	283	2.9	0.210
78	16	5.1	885	3.2	0.390
79	16	5.1	\N	7.6	0.280
80	17	7.6	2734	25.4	0.160
81	17	7.6	\N	32.9	0.064
82	17	7.6	2728	92.2	0.090
83	18	5.8	1413	1.2	0.420
84	18	5.8	1445	1.6	0.230
85	18	5.8	1408	9.1	0.130
86	18	5.8	1411	3.7	0.260
87	18	5.8	1410	5.3	0.270
88	18	5.8	1409	7.4	0.260
89	18	5.8	1377	17.9	0.110
90	18	5.8	1492	19.2	0.120
91	18	5.8	1251	23.4	0.038
92	18	5.8	1422	30.0	0.044
93	18	5.8	1376	38.9	0.046
94	19	6.5	\N	23.5	0.170
95	19	6.5	286	26.0	0.210
96	19	6.5	\N	0.5	0.320
97	19	6.5	5028	0.6	0.520
98	19	6.5	942	1.3	0.720
99	19	6.5	\N	1.4	0.320
100	19	6.5	5054	2.6	0.810
101	19	6.5	958	3.8	0.640
102	19	6.5	952	4.0	0.560
103	19	6.5	5165	5.1	0.510
104	19	6.5	117	6.2	0.400
105	19	6.5	955	6.8	0.610
106	19	6.5	5055	7.5	0.260
107	19	6.5	\N	7.6	0.240
108	19	6.5	\N	8.4	0.460
109	19	6.5	5060	8.5	0.220
110	19	6.5	412	8.5	0.230
111	19	6.5	5053	10.6	0.280
112	19	6.5	5058	12.6	0.380
113	19	6.5	5057	12.7	0.270
114	19	6.5	\N	12.9	0.310
115	19	6.5	5051	14.0	0.200
116	19	6.5	\N	15.0	0.110
117	19	6.5	5115	16.0	0.430
118	19	6.5	\N	17.7	0.270
119	19	6.5	931	18.0	0.150
120	19	6.5	5056	22.0	0.150
121	19	6.5	5059	22.0	0.150
122	19	6.5	5061	23.0	0.130
123	19	6.5	\N	23.2	0.190
124	19	6.5	5062	29.0	0.130
125	19	6.5	5052	32.0	0.066
126	19	6.5	\N	32.7	0.350
127	19	6.5	724	36.0	0.100
128	19	6.5	\N	43.5	0.160
129	19	6.5	5066	49.0	0.140
130	19	6.5	5050	60.0	0.049
131	19	6.5	2316	64.0	0.034
132	20	5.0	5055	7.5	0.264
133	20	5.0	942	8.8	0.263
134	20	5.0	5028	8.9	0.230
135	20	5.0	5165	9.4	0.147
136	20	5.0	952	9.7	0.286
137	20	5.0	958	9.7	0.157
138	20	5.0	955	10.5	0.237
139	20	5.0	117	10.5	0.133
140	20	5.0	412	12.0	0.055
141	20	5.0	5053	12.2	0.097
142	20	5.0	5054	12.8	0.129
143	20	5.0	5058	14.6	0.192
144	20	5.0	5057	14.9	0.147
145	20	5.0	5115	17.6	0.154
146	20	5.0	5056	23.9	0.060
147	20	5.0	5060	25.0	0.057
148	21	5.8	1030	10.8	0.120
149	21	5.8	1418	15.7	0.154
150	21	5.8	1383	16.7	0.052
151	21	5.8	1308	20.8	0.045
152	21	5.8	1298	28.5	0.086
153	21	5.8	1299	33.1	0.056
154	21	5.8	1219	40.3	0.065
155	22	5.5	\N	4.0	0.259
156	22	5.5	\N	10.1	0.267
157	22	5.5	1030	11.1	0.071
158	22	5.5	1418	17.7	0.275
159	22	5.5	1383	22.5	0.058
160	22	5.5	\N	26.5	0.026
161	22	5.5	1299	29.0	0.039
162	22	5.5	1308	30.9	0.112
163	22	5.5	1219	37.8	0.065
164	22	5.5	1456	48.3	0.026
165	23	5.3	5045	5.8	0.123
166	23	5.3	5044	12.0	0.133
167	23	5.3	5160	12.1	0.073
168	23	5.3	5043	20.5	0.097
169	23	5.3	5047	20.5	0.096
170	23	5.3	c168	25.3	0.230
171	23	5.3	5068	35.9	0.082
172	23	5.3	c118	36.1	0.110
173	23	5.3	5042	36.3	0.110
174	23	5.3	5067	38.5	0.094
175	23	5.3	5049	41.4	0.040
176	23	5.3	c204	43.6	0.050
177	23	5.3	5070	44.4	0.022
178	23	5.3	c266	46.1	0.070
179	23	5.3	c203	47.1	0.080
180	23	5.3	5069	47.7	0.033
181	23	5.3	5073	49.2	0.017
182	23	5.3	5072	53.1	0.022
\.


--
-- Name: attenu_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('attenu_id_seq', 182, true);


--
-- Data for Name: attitude; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY attitude (id, rating, complaints, privileges, learning, raises, critical, advance) FROM stdin;
1	43	51	30	39	61	92	45
2	63	64	51	54	63	73	47
3	71	70	68	69	76	86	48
4	61	63	45	47	54	84	35
5	81	78	56	66	71	83	47
6	43	55	49	44	54	49	34
7	58	67	42	56	66	68	35
8	71	75	50	55	70	66	41
9	72	82	72	67	71	83	31
10	67	61	45	47	62	80	41
11	64	53	53	58	58	67	34
12	67	60	47	39	59	74	41
13	69	62	57	42	55	63	25
14	68	83	83	45	59	77	35
15	77	77	54	72	79	77	46
16	81	90	50	72	60	54	36
17	74	85	64	69	79	79	63
18	65	60	65	75	55	80	60
19	65	70	46	57	75	85	46
20	50	58	68	54	64	78	52
21	50	40	33	34	43	64	33
22	64	61	52	62	66	80	41
23	53	66	52	50	63	80	37
24	40	37	42	58	50	57	49
25	63	54	42	48	66	75	33
26	66	77	66	63	88	76	72
27	78	75	58	74	80	78	49
28	48	57	44	45	51	83	38
29	85	85	71	71	77	74	55
30	82	82	39	59	64	78	39
\.


--
-- Name: attitude_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('attitude_id_seq', 30, true);


--
-- Data for Name: austres; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY austres (id, x) FROM stdin;
1	13067.3
2	13130.5
3	13198.4
4	13254.2
5	13303.7
6	13353.9
7	13409.3
8	13459.2
9	13504.5
10	13552.6
11	13614.3
12	13669.5
13	13722.6
14	13772.1
15	13832
16	13862.6
17	13893
18	13926.8
19	13968.9
20	14004.7
21	14033.1
22	14066
23	14110.1
24	14155.6
25	14192.2
26	14231.7
27	14281.5
28	14330.3
29	14359.3
30	14396.6
31	14430.8
32	14478.4
33	14515.7
34	14554.9
35	14602.5
36	14646.4
37	14695.4
38	14746.6
39	14807.4
40	14874.4
41	14923.3
42	14988.7
43	15054.1
44	15121.7
45	15184.2
46	15239.3
47	15288.9
48	15346.2
49	15393.5
50	15439
51	15483.5
52	15531.5
53	15579.4
54	15628.5
55	15677.3
56	15736.7
57	15788.3
58	15839.7
59	15900.6
60	15961.5
61	16018.3
62	16076.9
63	16139
64	16203
65	16263.3
66	16327.9
67	16398.9
68	16478.3
69	16538.2
70	16621.6
71	16697
72	16777.2
73	16833.1
74	16891.6
75	16956.8
76	17026.3
77	17085.4
78	17106.9
79	17169.4
80	17239.4
81	17292
82	17354.2
83	17414.2
84	17447.3
85	17482.6
86	17526
87	17568.7
88	17627.1
89	17661.5
\.


--
-- Name: austres_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('austres_id_seq', 89, true);


--
-- Data for Name: beaver1; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY beaver1 (id, day, "time", temp, activ) FROM stdin;
1	346	840	36.33	0
2	346	850	36.34	0
3	346	900	36.35	0
4	346	910	36.42	0
5	346	920	36.55	0
6	346	930	36.69	0
7	346	940	36.71	0
8	346	950	36.75	0
9	346	1000	36.81	0
10	346	1010	36.88	0
11	346	1020	36.89	0
12	346	1030	36.91	0
13	346	1040	36.85	0
14	346	1050	36.89	0
15	346	1100	36.89	0
16	346	1110	36.67	0
17	346	1120	36.5	0
18	346	1130	36.74	0
19	346	1140	36.77	0
20	346	1150	36.76	0
21	346	1200	36.78	0
22	346	1210	36.82	0
23	346	1220	36.89	0
24	346	1230	36.99	0
25	346	1240	36.92	0
26	346	1250	36.99	0
27	346	1300	36.89	0
28	346	1310	36.94	0
29	346	1320	36.92	0
30	346	1330	36.97	0
31	346	1340	36.91	0
32	346	1350	36.79	0
33	346	1400	36.77	0
34	346	1410	36.69	0
35	346	1420	36.62	0
36	346	1430	36.54	0
37	346	1440	36.55	0
38	346	1450	36.67	0
39	346	1500	36.69	0
40	346	1510	36.62	0
41	346	1520	36.64	0
42	346	1530	36.59	0
43	346	1540	36.65	0
44	346	1550	36.75	0
45	346	1600	36.8	0
46	346	1610	36.81	0
47	346	1620	36.87	0
48	346	1630	36.87	0
49	346	1640	36.89	0
50	346	1650	36.94	0
51	346	1700	36.98	0
52	346	1710	36.95	0
53	346	1720	37	0
54	346	1730	37.07	1
55	346	1740	37.05	0
56	346	1750	37	0
57	346	1800	36.95	0
58	346	1810	37	0
59	346	1820	36.94	0
60	346	1830	36.88	0
61	346	1840	36.93	0
62	346	1850	36.98	0
63	346	1900	36.97	0
64	346	1910	36.85	0
65	346	1920	36.92	0
66	346	1930	36.99	0
67	346	1940	37.01	0
68	346	1950	37.1	1
69	346	2000	37.09	0
70	346	2010	37.02	0
71	346	2020	36.96	0
72	346	2030	36.84	0
73	346	2040	36.87	0
74	346	2050	36.85	0
75	346	2100	36.85	0
76	346	2110	36.87	0
77	346	2120	36.89	0
78	346	2130	36.86	0
79	346	2140	36.91	0
80	346	2150	37.53	1
81	346	2200	37.23	0
82	346	2210	37.2	0
83	346	2230	37.25	1
84	346	2240	37.2	0
85	346	2250	37.21	0
86	346	2300	37.24	1
87	346	2310	37.1	0
88	346	2320	37.2	0
89	346	2330	37.18	0
90	346	2340	36.93	0
91	346	2350	36.83	0
92	347	0	36.93	0
93	347	10	36.83	0
94	347	20	36.8	0
95	347	30	36.75	0
96	347	40	36.71	0
97	347	50	36.73	0
98	347	100	36.75	0
99	347	110	36.72	0
100	347	120	36.76	0
101	347	130	36.7	0
102	347	140	36.82	0
103	347	150	36.88	0
104	347	200	36.94	0
105	347	210	36.79	0
106	347	220	36.78	0
107	347	230	36.8	0
108	347	240	36.82	0
109	347	250	36.84	0
110	347	300	36.86	0
111	347	310	36.88	0
112	347	320	36.93	0
113	347	330	36.97	0
114	347	340	37.15	1
\.


--
-- Name: beaver1_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('beaver1_id_seq', 114, true);


--
-- Data for Name: beaver2; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY beaver2 (id, day, "time", temp, activ) FROM stdin;
1	307	930	36.58	0
2	307	940	36.73	0
3	307	950	36.93	0
4	307	1000	37.15	0
5	307	1010	37.23	0
6	307	1020	37.24	0
7	307	1030	37.24	0
8	307	1040	36.9	0
9	307	1050	36.95	0
10	307	1100	36.89	0
11	307	1110	36.95	0
12	307	1120	37	0
13	307	1130	36.9	0
14	307	1140	36.99	0
15	307	1150	36.99	0
16	307	1200	37.01	0
17	307	1210	37.04	0
18	307	1220	37.04	0
19	307	1230	37.14	0
20	307	1240	37.07	0
21	307	1250	36.98	0
22	307	1300	37.01	0
23	307	1310	36.97	0
24	307	1320	36.97	0
25	307	1330	37.12	0
26	307	1340	37.13	0
27	307	1350	37.14	0
28	307	1400	37.15	0
29	307	1410	37.17	0
30	307	1420	37.12	0
31	307	1430	37.12	0
32	307	1440	37.17	0
33	307	1450	37.28	0
34	307	1500	37.28	0
35	307	1510	37.44	0
36	307	1520	37.51	0
37	307	1530	37.64	0
38	307	1540	37.51	0
39	307	1550	37.98	1
40	307	1600	38.02	1
41	307	1610	38	1
42	307	1620	38.24	1
43	307	1630	38.1	1
44	307	1640	38.24	1
45	307	1650	38.11	1
46	307	1700	38.02	1
47	307	1710	38.11	1
48	307	1720	38.01	1
49	307	1730	37.91	1
50	307	1740	37.96	1
51	307	1750	38.03	1
52	307	1800	38.17	1
53	307	1810	38.19	1
54	307	1820	38.18	1
55	307	1830	38.15	1
56	307	1840	38.04	1
57	307	1850	37.96	1
58	307	1900	37.84	1
59	307	1910	37.83	1
60	307	1920	37.84	1
61	307	1930	37.74	1
62	307	1940	37.76	1
63	307	1950	37.76	1
64	307	2000	37.64	1
65	307	2010	37.63	1
66	307	2020	38.06	1
67	307	2030	38.19	1
68	307	2040	38.35	1
69	307	2050	38.25	1
70	307	2100	37.86	1
71	307	2110	37.95	1
72	307	2120	37.95	1
73	307	2130	37.76	1
74	307	2140	37.6	1
75	307	2150	37.89	1
76	307	2200	37.86	1
77	307	2210	37.71	1
78	307	2220	37.78	1
79	307	2230	37.82	1
80	307	2240	37.76	1
81	307	2250	37.81	1
82	307	2300	37.84	1
83	307	2310	38.01	1
84	307	2320	38.1	1
85	307	2330	38.15	1
86	307	2340	37.92	1
87	307	2350	37.64	1
88	308	0	37.7	1
89	308	10	37.46	1
90	308	20	37.41	1
91	308	30	37.46	1
92	308	40	37.56	1
93	308	50	37.55	1
94	308	100	37.75	1
95	308	110	37.76	1
96	308	120	37.73	1
97	308	130	37.77	1
98	308	140	38.01	1
99	308	150	38.04	1
100	308	200	38.07	1
\.


--
-- Name: beaver2_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('beaver2_id_seq', 100, true);


--
-- Data for Name: bjsales; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY bjsales (id, x) FROM stdin;
1	200.1
2	199.5
3	199.4
4	198.9
5	199
6	200.2
7	198.6
8	200
9	200.3
10	201.2
11	201.6
12	201.5
13	201.5
14	203.5
15	204.9
16	207.1
17	210.5
18	210.5
19	209.8
20	208.8
21	209.5
22	213.2
23	213.7
24	215.1
25	218.7
26	219.8
27	220.5
28	223.8
29	222.8
30	223.8
31	221.7
32	222.3
33	220.8
34	219.4
35	220.1
36	220.6
37	218.9
38	217.8
39	217.7
40	215
41	215.3
42	215.9
43	216.7
44	216.7
45	217.7
46	218.7
47	222.9
48	224.9
49	222.2
50	220.7
51	220
52	218.7
53	217
54	215.9
55	215.8
56	214.1
57	212.3
58	213.9
59	214.6
60	213.6
61	212.1
62	211.4
63	213.1
64	212.9
65	213.3
66	211.5
67	212.3
68	213
69	211
70	210.7
71	210.1
72	211.4
73	210
74	209.7
75	208.8
76	208.8
77	208.8
78	210.6
79	211.9
80	212.8
81	212.5
82	214.8
83	215.3
84	217.5
85	218.8
86	220.7
87	222.2
88	226.7
89	228.4
90	233.2
91	235.7
92	237.1
93	240.6
94	243.8
95	245.3
96	246
97	246.3
98	247.7
99	247.6
100	247.8
101	249.4
102	249
103	249.9
104	250.5
105	251.5
106	249
107	247.6
108	248.8
109	250.4
110	250.7
111	253
112	253.7
113	255
114	256.2
115	256
116	257.4
117	260.4
118	260
119	261.3
120	260.4
121	261.6
122	260.8
123	259.8
124	259
125	258.9
126	257.4
127	257.7
128	257.9
129	257.4
130	257.3
131	257.6
132	258.9
133	257.8
134	257.7
135	257.2
136	257.5
137	256.8
138	257.5
139	257
140	257.6
141	257.3
142	257.5
143	259.6
144	261.1
145	262.9
146	263.3
147	262.8
148	261.8
149	262.2
150	262.7
\.


--
-- Name: bjsales_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('bjsales_id_seq', 150, true);


--
-- Data for Name: bjsales_lead; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY bjsales_lead (id, x) FROM stdin;
1	10.01
2	10.07
3	10.32
4	9.75
5	10.33
6	10.13
7	10.36
8	10.32
9	10.13
10	10.16
11	10.58
12	10.62
13	10.86
14	11.2
15	10.74
16	10.56
17	10.48
18	10.77
19	11.33
20	10.96
21	11.16
22	11.7
23	11.39
24	11.42
25	11.94
26	11.24
27	11.59
28	10.96
29	11.4
30	11.02
31	11.01
32	11.23
33	11.33
34	10.83
35	10.84
36	11.14
37	10.38
38	10.9
39	11.05
40	11.11
41	11.01
42	11.22
43	11.21
44	11.91
45	11.69
46	10.93
47	10.99
48	11.01
49	10.84
50	10.76
51	10.77
52	10.88
53	10.49
54	10.5
55	11
56	10.98
57	10.61
58	10.48
59	10.53
60	11.07
61	10.61
62	10.86
63	10.34
64	10.78
65	10.8
66	10.33
67	10.44
68	10.5
69	10.75
70	10.4
71	10.4
72	10.34
73	10.55
74	10.46
75	10.82
76	10.91
77	10.87
78	10.67
79	11.11
80	10.88
81	11.28
82	11.27
83	11.44
84	11.52
85	12.1
86	11.83
87	12.62
88	12.41
89	12.43
90	12.73
91	13.01
92	12.74
93	12.73
94	12.76
95	12.92
96	12.64
97	12.79
98	13.05
99	12.69
100	13.01
101	12.9
102	13.12
103	12.47
104	12.47
105	12.94
106	13.1
107	12.91
108	13.39
109	13.13
110	13.34
111	13.34
112	13.14
113	13.49
114	13.87
115	13.39
116	13.59
117	13.27
118	13.7
119	13.2
120	13.32
121	13.15
122	13.3
123	12.94
124	13.29
125	13.26
126	13.08
127	13.24
128	13.31
129	13.52
130	13.02
131	13.25
132	13.12
133	13.26
134	13.11
135	13.3
136	13.06
137	13.32
138	13.1
139	13.27
140	13.64
141	13.58
142	13.87
143	13.53
144	13.41
145	13.25
146	13.5
147	13.58
148	13.51
149	13.77
150	13.4
\.


--
-- Name: bjsales_lead_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('bjsales_lead_id_seq', 150, true);


--
-- Data for Name: bod; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY bod (id, "time", demand) FROM stdin;
1	1	8.3
2	2	10.3
3	3	19
4	4	16
5	5	15.6
6	7	19.8
\.


--
-- Name: bod_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('bod_id_seq', 6, true);


--
-- Data for Name: cars; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY cars (id, speed, dist) FROM stdin;
1	4	2
2	4	10
3	7	4
4	7	22
5	8	16
6	9	10
7	10	18
8	10	26
9	10	34
10	11	17
11	11	28
12	12	14
13	12	20
14	12	24
15	12	28
16	13	26
17	13	34
18	13	34
19	13	46
20	14	26
21	14	36
22	14	60
23	14	80
24	15	20
25	15	26
26	15	54
27	16	32
28	16	40
29	17	32
30	17	40
31	17	50
32	18	42
33	18	56
34	18	76
35	18	84
36	19	36
37	19	46
38	19	68
39	20	32
40	20	48
41	20	52
42	20	56
43	20	64
44	22	66
45	23	54
46	24	70
47	24	92
48	24	93
49	24	120
50	25	85
\.


--
-- Name: cars_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('cars_id_seq', 50, true);


--
-- Data for Name: chickweight; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY chickweight (id, weight, "time", chick, diet) FROM stdin;
1	42	0	1	1
2	51	2	1	1
3	59	4	1	1
4	64	6	1	1
5	76	8	1	1
6	93	10	1	1
7	106	12	1	1
8	125	14	1	1
9	149	16	1	1
10	171	18	1	1
11	199	20	1	1
12	205	21	1	1
13	40	0	2	1
14	49	2	2	1
15	58	4	2	1
16	72	6	2	1
17	84	8	2	1
18	103	10	2	1
19	122	12	2	1
20	138	14	2	1
21	162	16	2	1
22	187	18	2	1
23	209	20	2	1
24	215	21	2	1
25	43	0	3	1
26	39	2	3	1
27	55	4	3	1
28	67	6	3	1
29	84	8	3	1
30	99	10	3	1
31	115	12	3	1
32	138	14	3	1
33	163	16	3	1
34	187	18	3	1
35	198	20	3	1
36	202	21	3	1
37	42	0	4	1
38	49	2	4	1
39	56	4	4	1
40	67	6	4	1
41	74	8	4	1
42	87	10	4	1
43	102	12	4	1
44	108	14	4	1
45	136	16	4	1
46	154	18	4	1
47	160	20	4	1
48	157	21	4	1
49	41	0	5	1
50	42	2	5	1
51	48	4	5	1
52	60	6	5	1
53	79	8	5	1
54	106	10	5	1
55	141	12	5	1
56	164	14	5	1
57	197	16	5	1
58	199	18	5	1
59	220	20	5	1
60	223	21	5	1
61	41	0	6	1
62	49	2	6	1
63	59	4	6	1
64	74	6	6	1
65	97	8	6	1
66	124	10	6	1
67	141	12	6	1
68	148	14	6	1
69	155	16	6	1
70	160	18	6	1
71	160	20	6	1
72	157	21	6	1
73	41	0	7	1
74	49	2	7	1
75	57	4	7	1
76	71	6	7	1
77	89	8	7	1
78	112	10	7	1
79	146	12	7	1
80	174	14	7	1
81	218	16	7	1
82	250	18	7	1
83	288	20	7	1
84	305	21	7	1
85	42	0	8	1
86	50	2	8	1
87	61	4	8	1
88	71	6	8	1
89	84	8	8	1
90	93	10	8	1
91	110	12	8	1
92	116	14	8	1
93	126	16	8	1
94	134	18	8	1
95	125	20	8	1
96	42	0	9	1
97	51	2	9	1
98	59	4	9	1
99	68	6	9	1
100	85	8	9	1
101	96	10	9	1
102	90	12	9	1
103	92	14	9	1
104	93	16	9	1
105	100	18	9	1
106	100	20	9	1
107	98	21	9	1
108	41	0	10	1
109	44	2	10	1
110	52	4	10	1
111	63	6	10	1
112	74	8	10	1
113	81	10	10	1
114	89	12	10	1
115	96	14	10	1
116	101	16	10	1
117	112	18	10	1
118	120	20	10	1
119	124	21	10	1
120	43	0	11	1
121	51	2	11	1
122	63	4	11	1
123	84	6	11	1
124	112	8	11	1
125	139	10	11	1
126	168	12	11	1
127	177	14	11	1
128	182	16	11	1
129	184	18	11	1
130	181	20	11	1
131	175	21	11	1
132	41	0	12	1
133	49	2	12	1
134	56	4	12	1
135	62	6	12	1
136	72	8	12	1
137	88	10	12	1
138	119	12	12	1
139	135	14	12	1
140	162	16	12	1
141	185	18	12	1
142	195	20	12	1
143	205	21	12	1
144	41	0	13	1
145	48	2	13	1
146	53	4	13	1
147	60	6	13	1
148	65	8	13	1
149	67	10	13	1
150	71	12	13	1
151	70	14	13	1
152	71	16	13	1
153	81	18	13	1
154	91	20	13	1
155	96	21	13	1
156	41	0	14	1
157	49	2	14	1
158	62	4	14	1
159	79	6	14	1
160	101	8	14	1
161	128	10	14	1
162	164	12	14	1
163	192	14	14	1
164	227	16	14	1
165	248	18	14	1
166	259	20	14	1
167	266	21	14	1
168	41	0	15	1
169	49	2	15	1
170	56	4	15	1
171	64	6	15	1
172	68	8	15	1
173	68	10	15	1
174	67	12	15	1
175	68	14	15	1
176	41	0	16	1
177	45	2	16	1
178	49	4	16	1
179	51	6	16	1
180	57	8	16	1
181	51	10	16	1
182	54	12	16	1
183	42	0	17	1
184	51	2	17	1
185	61	4	17	1
186	72	6	17	1
187	83	8	17	1
188	89	10	17	1
189	98	12	17	1
190	103	14	17	1
191	113	16	17	1
192	123	18	17	1
193	133	20	17	1
194	142	21	17	1
195	39	0	18	1
196	35	2	18	1
197	43	0	19	1
198	48	2	19	1
199	55	4	19	1
200	62	6	19	1
201	65	8	19	1
202	71	10	19	1
203	82	12	19	1
204	88	14	19	1
205	106	16	19	1
206	120	18	19	1
207	144	20	19	1
208	157	21	19	1
209	41	0	20	1
210	47	2	20	1
211	54	4	20	1
212	58	6	20	1
213	65	8	20	1
214	73	10	20	1
215	77	12	20	1
216	89	14	20	1
217	98	16	20	1
218	107	18	20	1
219	115	20	20	1
220	117	21	20	1
221	40	0	21	2
222	50	2	21	2
223	62	4	21	2
224	86	6	21	2
225	125	8	21	2
226	163	10	21	2
227	217	12	21	2
228	240	14	21	2
229	275	16	21	2
230	307	18	21	2
231	318	20	21	2
232	331	21	21	2
233	41	0	22	2
234	55	2	22	2
235	64	4	22	2
236	77	6	22	2
237	90	8	22	2
238	95	10	22	2
239	108	12	22	2
240	111	14	22	2
241	131	16	22	2
242	148	18	22	2
243	164	20	22	2
244	167	21	22	2
245	43	0	23	2
246	52	2	23	2
247	61	4	23	2
248	73	6	23	2
249	90	8	23	2
250	103	10	23	2
251	127	12	23	2
252	135	14	23	2
253	145	16	23	2
254	163	18	23	2
255	170	20	23	2
256	175	21	23	2
257	42	0	24	2
258	52	2	24	2
259	58	4	24	2
260	74	6	24	2
261	66	8	24	2
262	68	10	24	2
263	70	12	24	2
264	71	14	24	2
265	72	16	24	2
266	72	18	24	2
267	76	20	24	2
268	74	21	24	2
269	40	0	25	2
270	49	2	25	2
271	62	4	25	2
272	78	6	25	2
273	102	8	25	2
274	124	10	25	2
275	146	12	25	2
276	164	14	25	2
277	197	16	25	2
278	231	18	25	2
279	259	20	25	2
280	265	21	25	2
281	42	0	26	2
282	48	2	26	2
283	57	4	26	2
284	74	6	26	2
285	93	8	26	2
286	114	10	26	2
287	136	12	26	2
288	147	14	26	2
289	169	16	26	2
290	205	18	26	2
291	236	20	26	2
292	251	21	26	2
293	39	0	27	2
294	46	2	27	2
295	58	4	27	2
296	73	6	27	2
297	87	8	27	2
298	100	10	27	2
299	115	12	27	2
300	123	14	27	2
301	144	16	27	2
302	163	18	27	2
303	185	20	27	2
304	192	21	27	2
305	39	0	28	2
306	46	2	28	2
307	58	4	28	2
308	73	6	28	2
309	92	8	28	2
310	114	10	28	2
311	145	12	28	2
312	156	14	28	2
313	184	16	28	2
314	207	18	28	2
315	212	20	28	2
316	233	21	28	2
317	39	0	29	2
318	48	2	29	2
319	59	4	29	2
320	74	6	29	2
321	87	8	29	2
322	106	10	29	2
323	134	12	29	2
324	150	14	29	2
325	187	16	29	2
326	230	18	29	2
327	279	20	29	2
328	309	21	29	2
329	42	0	30	2
330	48	2	30	2
331	59	4	30	2
332	72	6	30	2
333	85	8	30	2
334	98	10	30	2
335	115	12	30	2
336	122	14	30	2
337	143	16	30	2
338	151	18	30	2
339	157	20	30	2
340	150	21	30	2
341	42	0	31	3
342	53	2	31	3
343	62	4	31	3
344	73	6	31	3
345	85	8	31	3
346	102	10	31	3
347	123	12	31	3
348	138	14	31	3
349	170	16	31	3
350	204	18	31	3
351	235	20	31	3
352	256	21	31	3
353	41	0	32	3
354	49	2	32	3
355	65	4	32	3
356	82	6	32	3
357	107	8	32	3
358	129	10	32	3
359	159	12	32	3
360	179	14	32	3
361	221	16	32	3
362	263	18	32	3
363	291	20	32	3
364	305	21	32	3
365	39	0	33	3
366	50	2	33	3
367	63	4	33	3
368	77	6	33	3
369	96	8	33	3
370	111	10	33	3
371	137	12	33	3
372	144	14	33	3
373	151	16	33	3
374	146	18	33	3
375	156	20	33	3
376	147	21	33	3
377	41	0	34	3
378	49	2	34	3
379	63	4	34	3
380	85	6	34	3
381	107	8	34	3
382	134	10	34	3
383	164	12	34	3
384	186	14	34	3
385	235	16	34	3
386	294	18	34	3
387	327	20	34	3
388	341	21	34	3
389	41	0	35	3
390	53	2	35	3
391	64	4	35	3
392	87	6	35	3
393	123	8	35	3
394	158	10	35	3
395	201	12	35	3
396	238	14	35	3
397	287	16	35	3
398	332	18	35	3
399	361	20	35	3
400	373	21	35	3
401	39	0	36	3
402	48	2	36	3
403	61	4	36	3
404	76	6	36	3
405	98	8	36	3
406	116	10	36	3
407	145	12	36	3
408	166	14	36	3
409	198	16	36	3
410	227	18	36	3
411	225	20	36	3
412	220	21	36	3
413	41	0	37	3
414	48	2	37	3
415	56	4	37	3
416	68	6	37	3
417	80	8	37	3
418	83	10	37	3
419	103	12	37	3
420	112	14	37	3
421	135	16	37	3
422	157	18	37	3
423	169	20	37	3
424	178	21	37	3
425	41	0	38	3
426	49	2	38	3
427	61	4	38	3
428	74	6	38	3
429	98	8	38	3
430	109	10	38	3
431	128	12	38	3
432	154	14	38	3
433	192	16	38	3
434	232	18	38	3
435	280	20	38	3
436	290	21	38	3
437	42	0	39	3
438	50	2	39	3
439	61	4	39	3
440	78	6	39	3
441	89	8	39	3
442	109	10	39	3
443	130	12	39	3
444	146	14	39	3
445	170	16	39	3
446	214	18	39	3
447	250	20	39	3
448	272	21	39	3
449	41	0	40	3
450	55	2	40	3
451	66	4	40	3
452	79	6	40	3
453	101	8	40	3
454	120	10	40	3
455	154	12	40	3
456	182	14	40	3
457	215	16	40	3
458	262	18	40	3
459	295	20	40	3
460	321	21	40	3
461	42	0	41	4
462	51	2	41	4
463	66	4	41	4
464	85	6	41	4
465	103	8	41	4
466	124	10	41	4
467	155	12	41	4
468	153	14	41	4
469	175	16	41	4
470	184	18	41	4
471	199	20	41	4
472	204	21	41	4
473	42	0	42	4
474	49	2	42	4
475	63	4	42	4
476	84	6	42	4
477	103	8	42	4
478	126	10	42	4
479	160	12	42	4
480	174	14	42	4
481	204	16	42	4
482	234	18	42	4
483	269	20	42	4
484	281	21	42	4
485	42	0	43	4
486	55	2	43	4
487	69	4	43	4
488	96	6	43	4
489	131	8	43	4
490	157	10	43	4
491	184	12	43	4
492	188	14	43	4
493	197	16	43	4
494	198	18	43	4
495	199	20	43	4
496	200	21	43	4
497	42	0	44	4
498	51	2	44	4
499	65	4	44	4
500	86	6	44	4
501	103	8	44	4
502	118	10	44	4
503	127	12	44	4
504	138	14	44	4
505	145	16	44	4
506	146	18	44	4
507	41	0	45	4
508	50	2	45	4
509	61	4	45	4
510	78	6	45	4
511	98	8	45	4
512	117	10	45	4
513	135	12	45	4
514	141	14	45	4
515	147	16	45	4
516	174	18	45	4
517	197	20	45	4
518	196	21	45	4
519	40	0	46	4
520	52	2	46	4
521	62	4	46	4
522	82	6	46	4
523	101	8	46	4
524	120	10	46	4
525	144	12	46	4
526	156	14	46	4
527	173	16	46	4
528	210	18	46	4
529	231	20	46	4
530	238	21	46	4
531	41	0	47	4
532	53	2	47	4
533	66	4	47	4
534	79	6	47	4
535	100	8	47	4
536	123	10	47	4
537	148	12	47	4
538	157	14	47	4
539	168	16	47	4
540	185	18	47	4
541	210	20	47	4
542	205	21	47	4
543	39	0	48	4
544	50	2	48	4
545	62	4	48	4
546	80	6	48	4
547	104	8	48	4
548	125	10	48	4
549	154	12	48	4
550	170	14	48	4
551	222	16	48	4
552	261	18	48	4
553	303	20	48	4
554	322	21	48	4
555	40	0	49	4
556	53	2	49	4
557	64	4	49	4
558	85	6	49	4
559	108	8	49	4
560	128	10	49	4
561	152	12	49	4
562	166	14	49	4
563	184	16	49	4
564	203	18	49	4
565	233	20	49	4
566	237	21	49	4
567	41	0	50	4
568	54	2	50	4
569	67	4	50	4
570	84	6	50	4
571	105	8	50	4
572	122	10	50	4
573	155	12	50	4
574	175	14	50	4
575	205	16	50	4
576	234	18	50	4
577	264	20	50	4
578	264	21	50	4
\.


--
-- Name: chickweight_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('chickweight_id_seq', 578, true);


--
-- Data for Name: chickwts; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY chickwts (id, weight, feed) FROM stdin;
1	179	horsebean
2	160	horsebean
3	136	horsebean
4	227	horsebean
5	217	horsebean
6	168	horsebean
7	108	horsebean
8	124	horsebean
9	143	horsebean
10	140	horsebean
11	309	linseed
12	229	linseed
13	181	linseed
14	141	linseed
15	260	linseed
16	203	linseed
17	148	linseed
18	169	linseed
19	213	linseed
20	257	linseed
21	244	linseed
22	271	linseed
23	243	soybean
24	230	soybean
25	248	soybean
26	327	soybean
27	329	soybean
28	250	soybean
29	193	soybean
30	271	soybean
31	316	soybean
32	267	soybean
33	199	soybean
34	171	soybean
35	158	soybean
36	248	soybean
37	423	sunflower
38	340	sunflower
39	392	sunflower
40	339	sunflower
41	341	sunflower
42	226	sunflower
43	320	sunflower
44	295	sunflower
45	334	sunflower
46	322	sunflower
47	297	sunflower
48	318	sunflower
49	325	meatmeal
50	257	meatmeal
51	303	meatmeal
52	315	meatmeal
53	380	meatmeal
54	153	meatmeal
55	263	meatmeal
56	242	meatmeal
57	206	meatmeal
58	344	meatmeal
59	258	meatmeal
60	368	casein
61	390	casein
62	379	casein
63	260	casein
64	404	casein
65	318	casein
66	352	casein
67	359	casein
68	216	casein
69	222	casein
70	283	casein
71	332	casein
\.


--
-- Name: chickwts_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('chickwts_id_seq', 71, true);


--
-- Data for Name: co2; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY co2 (id, plant, type, treatment, conc, uptake) FROM stdin;
1	Qn1	Quebec	nonchilled	95	16.0
2	Qn1	Quebec	nonchilled	175	30.4
3	Qn1	Quebec	nonchilled	250	34.8
4	Qn1	Quebec	nonchilled	350	37.2
5	Qn1	Quebec	nonchilled	500	35.3
6	Qn1	Quebec	nonchilled	675	39.2
7	Qn1	Quebec	nonchilled	1000	39.7
8	Qn2	Quebec	nonchilled	95	13.6
9	Qn2	Quebec	nonchilled	175	27.3
10	Qn2	Quebec	nonchilled	250	37.1
11	Qn2	Quebec	nonchilled	350	41.8
12	Qn2	Quebec	nonchilled	500	40.6
13	Qn2	Quebec	nonchilled	675	41.4
14	Qn2	Quebec	nonchilled	1000	44.3
15	Qn3	Quebec	nonchilled	95	16.2
16	Qn3	Quebec	nonchilled	175	32.4
17	Qn3	Quebec	nonchilled	250	40.3
18	Qn3	Quebec	nonchilled	350	42.1
19	Qn3	Quebec	nonchilled	500	42.9
20	Qn3	Quebec	nonchilled	675	43.9
21	Qn3	Quebec	nonchilled	1000	45.5
22	Qc1	Quebec	chilled	95	14.2
23	Qc1	Quebec	chilled	175	24.1
24	Qc1	Quebec	chilled	250	30.3
25	Qc1	Quebec	chilled	350	34.6
26	Qc1	Quebec	chilled	500	32.5
27	Qc1	Quebec	chilled	675	35.4
28	Qc1	Quebec	chilled	1000	38.7
29	Qc2	Quebec	chilled	95	9.3
30	Qc2	Quebec	chilled	175	27.3
31	Qc2	Quebec	chilled	250	35.0
32	Qc2	Quebec	chilled	350	38.8
33	Qc2	Quebec	chilled	500	38.6
34	Qc2	Quebec	chilled	675	37.5
35	Qc2	Quebec	chilled	1000	42.4
36	Qc3	Quebec	chilled	95	15.1
37	Qc3	Quebec	chilled	175	21.0
38	Qc3	Quebec	chilled	250	38.1
39	Qc3	Quebec	chilled	350	34.0
40	Qc3	Quebec	chilled	500	38.9
41	Qc3	Quebec	chilled	675	39.6
42	Qc3	Quebec	chilled	1000	41.4
43	Mn1	Mississippi	nonchilled	95	10.6
44	Mn1	Mississippi	nonchilled	175	19.2
45	Mn1	Mississippi	nonchilled	250	26.2
46	Mn1	Mississippi	nonchilled	350	30.0
47	Mn1	Mississippi	nonchilled	500	30.9
48	Mn1	Mississippi	nonchilled	675	32.4
49	Mn1	Mississippi	nonchilled	1000	35.5
50	Mn2	Mississippi	nonchilled	95	12.0
51	Mn2	Mississippi	nonchilled	175	22.0
52	Mn2	Mississippi	nonchilled	250	30.6
53	Mn2	Mississippi	nonchilled	350	31.8
54	Mn2	Mississippi	nonchilled	500	32.4
55	Mn2	Mississippi	nonchilled	675	31.1
56	Mn2	Mississippi	nonchilled	1000	31.5
57	Mn3	Mississippi	nonchilled	95	11.3
58	Mn3	Mississippi	nonchilled	175	19.4
59	Mn3	Mississippi	nonchilled	250	25.8
60	Mn3	Mississippi	nonchilled	350	27.9
61	Mn3	Mississippi	nonchilled	500	28.5
62	Mn3	Mississippi	nonchilled	675	28.1
63	Mn3	Mississippi	nonchilled	1000	27.8
64	Mc1	Mississippi	chilled	95	10.5
65	Mc1	Mississippi	chilled	175	14.9
66	Mc1	Mississippi	chilled	250	18.1
67	Mc1	Mississippi	chilled	350	18.9
68	Mc1	Mississippi	chilled	500	19.5
69	Mc1	Mississippi	chilled	675	22.2
70	Mc1	Mississippi	chilled	1000	21.9
71	Mc2	Mississippi	chilled	95	7.7
72	Mc2	Mississippi	chilled	175	11.4
73	Mc2	Mississippi	chilled	250	12.3
74	Mc2	Mississippi	chilled	350	13.0
75	Mc2	Mississippi	chilled	500	12.5
76	Mc2	Mississippi	chilled	675	13.7
77	Mc2	Mississippi	chilled	1000	14.4
78	Mc3	Mississippi	chilled	95	10.6
79	Mc3	Mississippi	chilled	175	18.0
80	Mc3	Mississippi	chilled	250	17.9
81	Mc3	Mississippi	chilled	350	17.9
82	Mc3	Mississippi	chilled	500	17.9
83	Mc3	Mississippi	chilled	675	18.9
84	Mc3	Mississippi	chilled	1000	19.9
\.


--
-- Data for Name: co2_2; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY co2_2 (id, x) FROM stdin;
1	315.42
2	316.31
3	316.5
4	317.56
5	318.13
6	318
7	316.39
8	314.65
9	313.68
10	313.18
11	314.66
12	315.43
13	316.27
14	316.81
15	317.42
16	318.87
17	319.87
18	319.43
19	318.01
20	315.74
21	314
22	313.68
23	314.84
24	316.03
25	316.73
26	317.54
27	318.38
28	319.31
29	320.42
30	319.61
31	318.42
32	316.63
33	314.83
34	315.16
35	315.94
36	316.85
37	317.78
38	318.4
39	319.53
40	320.42
41	320.85
42	320.45
43	319.45
44	317.25
45	316.11
46	315.27
47	316.53
48	317.53
49	318.58
50	318.92
51	319.7
52	321.22
53	322.08
54	321.31
55	319.58
56	317.61
57	316.05
58	315.83
59	316.91
60	318.2
61	319.41
62	320.07
63	320.74
64	321.4
65	322.06
66	321.73
67	320.27
68	318.54
69	316.54
70	316.71
71	317.53
72	318.55
73	319.27
74	320.28
75	320.73
76	321.97
77	322
78	321.71
79	321.05
80	318.71
81	317.66
82	317.14
83	318.7
84	319.25
85	320.46
86	321.43
87	322.23
88	323.54
89	323.91
90	323.59
91	322.24
92	320.2
93	318.48
94	317.94
95	319.63
96	320.87
97	322.17
98	322.34
99	322.88
100	324.25
101	324.83
102	323.93
103	322.38
104	320.76
105	319.1
106	319.24
107	320.56
108	321.8
109	322.4
110	322.99
111	323.73
112	324.86
113	325.4
114	325.2
115	323.98
116	321.95
117	320.18
118	320.09
119	321.16
120	322.74
121	323.83
122	324.26
123	325.47
124	326.5
125	327.21
126	326.54
127	325.72
128	323.5
129	322.22
130	321.62
131	322.69
132	323.95
133	324.89
134	325.82
135	326.77
136	327.97
137	327.91
138	327.5
139	326.18
140	324.53
141	322.93
142	322.9
143	323.85
144	324.96
145	326.01
146	326.51
147	327.01
148	327.62
149	328.76
150	328.4
151	327.2
152	325.27
153	323.2
154	323.4
155	324.63
156	325.85
157	326.6
158	327.47
159	327.58
160	329.56
161	329.9
162	328.92
163	327.88
164	326.16
165	324.68
166	325.04
167	326.34
168	327.39
169	328.37
170	329.4
171	330.14
172	331.33
173	332.31
174	331.9
175	330.7
176	329.15
177	327.35
178	327.02
179	327.99
180	328.48
181	329.18
182	330.55
183	331.32
184	332.48
185	332.92
186	332.08
187	331.01
188	329.23
189	327.27
190	327.21
191	328.29
192	329.41
193	330.23
194	331.25
195	331.87
196	333.14
197	333.8
198	333.43
199	331.73
200	329.9
201	328.4
202	328.17
203	329.32
204	330.59
205	331.58
206	332.39
207	333.33
208	334.41
209	334.71
210	334.17
211	332.89
212	330.77
213	329.14
214	328.78
215	330.14
216	331.52
217	332.75
218	333.24
219	334.53
220	335.9
221	336.57
222	336.1
223	334.76
224	332.59
225	331.42
226	330.98
227	332.24
228	333.68
229	334.8
230	335.22
231	336.47
232	337.59
233	337.84
234	337.72
235	336.37
236	334.51
237	332.6
238	332.38
239	333.75
240	334.78
241	336.05
242	336.59
243	337.79
244	338.71
245	339.3
246	339.12
247	337.56
248	335.92
249	333.75
250	333.7
251	335.12
252	336.56
253	337.84
254	338.19
255	339.91
256	340.6
257	341.29
258	341
259	339.39
260	337.43
261	335.72
262	335.84
263	336.93
264	338.04
265	339.06
266	340.3
267	341.21
268	342.33
269	342.74
270	342.08
271	340.32
272	338.26
273	336.52
274	336.68
275	338.19
276	339.44
277	340.57
278	341.44
279	342.53
280	343.39
281	343.96
282	343.18
283	341.88
284	339.65
285	337.81
286	337.69
287	339.09
288	340.32
289	341.2
290	342.35
291	342.93
292	344.77
293	345.58
294	345.14
295	343.81
296	342.21
297	339.69
298	339.82
299	340.98
300	342.82
301	343.52
302	344.33
303	345.11
304	346.88
305	347.25
306	346.62
307	345.22
308	343.11
309	340.9
310	341.18
311	342.8
312	344.04
313	344.79
314	345.82
315	347.25
316	348.17
317	348.74
318	348.07
319	346.38
320	344.51
321	342.92
322	342.62
323	344.06
324	345.38
325	346.11
326	346.78
327	347.68
328	349.37
329	350.03
330	349.37
331	347.76
332	345.73
333	344.68
334	343.99
335	345.48
336	346.72
337	347.84
338	348.29
339	349.23
340	350.8
341	351.66
342	351.07
343	349.33
344	347.92
345	346.27
346	346.18
347	347.64
348	348.78
349	350.25
350	351.54
351	352.05
352	353.41
353	354.04
354	353.62
355	352.22
356	350.27
357	348.55
358	348.72
359	349.91
360	351.18
361	352.6
362	352.92
363	353.53
364	355.26
365	355.52
366	354.97
367	353.75
368	351.52
369	349.64
370	349.83
371	351.14
372	352.37
373	353.5
374	354.55
375	355.23
376	356.04
377	357
378	356.07
379	354.67
380	352.76
381	350.82
382	351.04
383	352.69
384	354.07
385	354.59
386	355.63
387	357.03
388	358.48
389	359.22
390	358.12
391	356.06
392	353.92
393	352.05
394	352.11
395	353.64
396	354.89
397	355.88
398	356.63
399	357.72
400	359.07
401	359.58
402	359.17
403	356.94
404	354.92
405	352.94
406	353.23
407	354.09
408	355.33
409	356.63
410	357.1
411	358.32
412	359.41
413	360.23
414	359.55
415	357.53
416	355.48
417	353.67
418	353.95
419	355.3
420	356.78
421	358.34
422	358.89
423	359.95
424	361.25
425	361.67
426	360.94
427	359.55
428	357.49
429	355.84
430	356
431	357.59
432	359.05
433	359.98
434	361.03
435	361.66
436	363.48
437	363.82
438	363.3
439	361.94
440	359.5
441	358.11
442	357.8
443	359.61
444	360.74
445	362.09
446	363.29
447	364.06
448	364.76
449	365.45
450	365.01
451	363.7
452	361.54
453	359.51
454	359.65
455	360.8
456	362.38
457	363.23
458	364.06
459	364.61
460	366.4
461	366.84
462	365.68
463	364.52
464	362.57
465	360.24
466	360.83
467	362.49
468	364.34
\.


--
-- Name: co2_2_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('co2_2_id_seq', 468, true);


--
-- Name: co2_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('co2_id_seq', 84, true);


--
-- Data for Name: crimtab; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY crimtab (id, var1, var2, freq) FROM stdin;
1	9.4	142.24	 0
2	9.5	142.24	 0
3	9.6	142.24	 0
4	9.7	142.24	 0
5	9.8	142.24	 0
6	9.9	142.24	 0
7	10	142.24	 1
8	10.1	142.24	 0
9	10.2	142.24	 0
10	10.3	142.24	 0
11	10.4	142.24	 0
12	10.5	142.24	 0
13	10.6	142.24	 0
14	10.7	142.24	 0
15	10.8	142.24	 0
16	10.9	142.24	 0
17	11	142.24	 0
18	11.1	142.24	 0
19	11.2	142.24	 0
20	11.3	142.24	 0
21	11.4	142.24	 0
22	11.5	142.24	 0
23	11.6	142.24	 0
24	11.7	142.24	 0
25	11.8	142.24	 0
26	11.9	142.24	 0
27	12	142.24	 0
28	12.1	142.24	 0
29	12.2	142.24	 0
30	12.3	142.24	 0
31	12.4	142.24	 0
32	12.5	142.24	 0
33	12.6	142.24	 0
34	12.7	142.24	 0
35	12.8	142.24	 0
36	12.9	142.24	 0
37	13	142.24	 0
38	13.1	142.24	 0
39	13.2	142.24	 0
40	13.3	142.24	 0
41	13.4	142.24	 0
42	13.5	142.24	 0
43	9.4	144.78	 0
44	9.5	144.78	 0
45	9.6	144.78	 0
46	9.7	144.78	 0
47	9.8	144.78	 0
48	9.9	144.78	 0
49	10	144.78	 0
50	10.1	144.78	 0
51	10.2	144.78	 0
52	10.3	144.78	 1
53	10.4	144.78	 0
54	10.5	144.78	 0
55	10.6	144.78	 0
56	10.7	144.78	 0
57	10.8	144.78	 0
58	10.9	144.78	 0
59	11	144.78	 0
60	11.1	144.78	 0
61	11.2	144.78	 0
62	11.3	144.78	 0
63	11.4	144.78	 0
64	11.5	144.78	 0
65	11.6	144.78	 0
66	11.7	144.78	 0
67	11.8	144.78	 0
68	11.9	144.78	 0
69	12	144.78	 0
70	12.1	144.78	 0
71	12.2	144.78	 0
72	12.3	144.78	 0
73	12.4	144.78	 0
74	12.5	144.78	 0
75	12.6	144.78	 0
76	12.7	144.78	 0
77	12.8	144.78	 0
78	12.9	144.78	 0
79	13	144.78	 0
80	13.1	144.78	 0
81	13.2	144.78	 0
82	13.3	144.78	 0
83	13.4	144.78	 0
84	13.5	144.78	 0
85	9.4	147.32	 0
86	9.5	147.32	 0
87	9.6	147.32	 0
88	9.7	147.32	 0
89	9.8	147.32	 0
90	9.9	147.32	 1
91	10	147.32	 0
92	10.1	147.32	 0
93	10.2	147.32	 2
94	10.3	147.32	 1
95	10.4	147.32	 1
96	10.5	147.32	 0
97	10.6	147.32	 0
98	10.7	147.32	 1
99	10.8	147.32	 0
100	10.9	147.32	 0
101	11	147.32	 0
102	11.1	147.32	 0
103	11.2	147.32	 0
104	11.3	147.32	 0
105	11.4	147.32	 0
106	11.5	147.32	 0
107	11.6	147.32	 0
108	11.7	147.32	 0
109	11.8	147.32	 0
110	11.9	147.32	 0
111	12	147.32	 0
112	12.1	147.32	 0
113	12.2	147.32	 0
114	12.3	147.32	 0
115	12.4	147.32	 0
116	12.5	147.32	 0
117	12.6	147.32	 0
118	12.7	147.32	 0
119	12.8	147.32	 0
120	12.9	147.32	 0
121	13	147.32	 0
122	13.1	147.32	 0
123	13.2	147.32	 0
124	13.3	147.32	 0
125	13.4	147.32	 0
126	13.5	147.32	 0
127	9.4	149.86	 0
128	9.5	149.86	 0
129	9.6	149.86	 0
130	9.7	149.86	 0
131	9.8	149.86	 0
132	9.9	149.86	 0
133	10	149.86	 1
134	10.1	149.86	 1
135	10.2	149.86	 2
136	10.3	149.86	 3
137	10.4	149.86	 1
138	10.5	149.86	 1
139	10.6	149.86	 1
140	10.7	149.86	 2
141	10.8	149.86	 2
142	10.9	149.86	 0
143	11	149.86	 2
144	11.1	149.86	 3
145	11.2	149.86	 3
146	11.3	149.86	 1
147	11.4	149.86	 0
148	11.5	149.86	 0
149	11.6	149.86	 0
150	11.7	149.86	 0
151	11.8	149.86	 0
152	11.9	149.86	 0
153	12	149.86	 0
154	12.1	149.86	 0
155	12.2	149.86	 0
156	12.3	149.86	 0
157	12.4	149.86	 0
158	12.5	149.86	 0
159	12.6	149.86	 0
160	12.7	149.86	 0
161	12.8	149.86	 0
162	12.9	149.86	 0
163	13	149.86	 0
164	13.1	149.86	 0
165	13.2	149.86	 0
166	13.3	149.86	 0
167	13.4	149.86	 0
168	13.5	149.86	 0
169	9.4	152.4	 0
170	9.5	152.4	 0
171	9.6	152.4	 0
172	9.7	152.4	 0
173	9.8	152.4	 0
174	9.9	152.4	 1
175	10	152.4	 2
176	10.1	152.4	 3
177	10.2	152.4	 2
178	10.3	152.4	 2
179	10.4	152.4	 2
180	10.5	152.4	 3
181	10.6	152.4	 4
182	10.7	152.4	 4
183	10.8	152.4	 5
184	10.9	152.4	 2
185	11	152.4	 6
186	11.1	152.4	 3
187	11.2	152.4	 2
188	11.3	152.4	 0
189	11.4	152.4	 3
190	11.5	152.4	 0
191	11.6	152.4	 2
192	11.7	152.4	 0
193	11.8	152.4	 1
194	11.9	152.4	 1
195	12	152.4	 0
196	12.1	152.4	 0
197	12.2	152.4	 0
198	12.3	152.4	 0
199	12.4	152.4	 0
200	12.5	152.4	 0
201	12.6	152.4	 0
202	12.7	152.4	 0
203	12.8	152.4	 0
204	12.9	152.4	 0
205	13	152.4	 0
206	13.1	152.4	 0
207	13.2	152.4	 0
208	13.3	152.4	 0
209	13.4	152.4	 0
210	13.5	152.4	 0
211	9.4	154.94	 0
212	9.5	154.94	 1
213	9.6	154.94	 0
214	9.7	154.94	 0
215	9.8	154.94	 0
216	9.9	154.94	 0
217	10	154.94	 0
218	10.1	154.94	 1
219	10.2	154.94	 1
220	10.3	154.94	 2
221	10.4	154.94	 3
222	10.5	154.94	 7
223	10.6	154.94	 5
224	10.7	154.94	 9
225	10.8	154.94	 6
226	10.9	154.94	 6
227	11	154.94	12
228	11.1	154.94	12
229	11.2	154.94	 7
230	11.3	154.94	 5
231	11.4	154.94	 4
232	11.5	154.94	 5
233	11.6	154.94	 1
234	11.7	154.94	 2
235	11.8	154.94	 0
236	11.9	154.94	 1
237	12	154.94	 0
238	12.1	154.94	 0
239	12.2	154.94	 0
240	12.3	154.94	 0
241	12.4	154.94	 0
242	12.5	154.94	 0
243	12.6	154.94	 0
244	12.7	154.94	 0
245	12.8	154.94	 0
246	12.9	154.94	 0
247	13	154.94	 0
248	13.1	154.94	 0
249	13.2	154.94	 0
250	13.3	154.94	 0
251	13.4	154.94	 0
252	13.5	154.94	 0
253	9.4	157.48	 0
254	9.5	157.48	 0
255	9.6	157.48	 0
256	9.7	157.48	 0
257	9.8	157.48	 1
258	9.9	157.48	 1
259	10	157.48	 2
260	10.1	157.48	 0
261	10.2	157.48	 0
262	10.3	157.48	 3
263	10.4	157.48	 3
264	10.5	157.48	 6
265	10.6	157.48	 9
266	10.7	157.48	14
267	10.8	157.48	14
268	10.9	157.48	14
269	11	157.48	15
270	11.1	157.48	22
271	11.2	157.48	21
272	11.3	157.48	10
273	11.4	157.48	 9
274	11.5	157.48	11
275	11.6	157.48	 4
276	11.7	157.48	 9
277	11.8	157.48	 2
278	11.9	157.48	 2
279	12	157.48	 1
280	12.1	157.48	 0
281	12.2	157.48	 1
282	12.3	157.48	 0
283	12.4	157.48	 1
284	12.5	157.48	 0
285	12.6	157.48	 0
286	12.7	157.48	 0
287	12.8	157.48	 0
288	12.9	157.48	 0
289	13	157.48	 0
290	13.1	157.48	 0
291	13.2	157.48	 0
292	13.3	157.48	 0
293	13.4	157.48	 0
294	13.5	157.48	 0
295	9.4	160.02	 0
296	9.5	160.02	 0
297	9.6	160.02	 0
298	9.7	160.02	 0
299	9.8	160.02	 0
300	9.9	160.02	 0
301	10	160.02	 0
302	10.1	160.02	 1
303	10.2	160.02	 2
304	10.3	160.02	 5
305	10.4	160.02	 4
306	10.5	160.02	 4
307	10.6	160.02	14
308	10.7	160.02	16
309	10.8	160.02	27
310	10.9	160.02	24
311	11	160.02	31
312	11.1	160.02	26
313	11.2	160.02	30
314	11.3	160.02	24
315	11.4	160.02	29
316	11.5	160.02	17
317	11.6	160.02	13
318	11.7	160.02	17
319	11.8	160.02	11
320	11.9	160.02	12
321	12	160.02	 4
322	12.1	160.02	 2
323	12.2	160.02	 2
324	12.3	160.02	 0
325	12.4	160.02	 1
326	12.5	160.02	 1
327	12.6	160.02	 0
328	12.7	160.02	 0
329	12.8	160.02	 0
330	12.9	160.02	 0
331	13	160.02	 0
332	13.1	160.02	 0
333	13.2	160.02	 0
334	13.3	160.02	 0
335	13.4	160.02	 0
336	13.5	160.02	 0
337	9.4	162.56	 0
338	9.5	162.56	 0
339	9.6	162.56	 0
340	9.7	162.56	 0
341	9.8	162.56	 0
342	9.9	162.56	 0
343	10	162.56	 0
344	10.1	162.56	 1
345	10.2	162.56	 0
346	10.3	162.56	 0
347	10.4	162.56	 3
348	10.5	162.56	 3
349	10.6	162.56	 6
350	10.7	162.56	15
351	10.8	162.56	10
352	10.9	162.56	27
353	11	162.56	37
354	11.1	162.56	24
355	11.2	162.56	38
356	11.3	162.56	26
357	11.4	162.56	56
358	11.5	162.56	33
359	11.6	162.56	37
360	11.7	162.56	30
361	11.8	162.56	15
362	11.9	162.56	10
363	12	162.56	 8
364	12.1	162.56	 4
365	12.2	162.56	 5
366	12.3	162.56	 4
367	12.4	162.56	 1
368	12.5	162.56	 0
369	12.6	162.56	 0
370	12.7	162.56	 0
371	12.8	162.56	 0
372	12.9	162.56	 0
373	13	162.56	 0
374	13.1	162.56	 0
375	13.2	162.56	 0
376	13.3	162.56	 0
377	13.4	162.56	 0
378	13.5	162.56	 0
379	9.4	165.1	 0
380	9.5	165.1	 0
381	9.6	165.1	 0
382	9.7	165.1	 0
383	9.8	165.1	 0
384	9.9	165.1	 0
385	10	165.1	 1
386	10.1	165.1	 0
387	10.2	165.1	 1
388	10.3	165.1	 0
389	10.4	165.1	 3
390	10.5	165.1	 1
391	10.6	165.1	 3
392	10.7	165.1	 7
393	10.8	165.1	 7
394	10.9	165.1	14
395	11	165.1	27
396	11.1	165.1	26
397	11.2	165.1	29
398	11.3	165.1	39
399	11.4	165.1	58
400	11.5	165.1	57
401	11.6	165.1	39
402	11.7	165.1	37
403	11.8	165.1	35
404	11.9	165.1	27
405	12	165.1	19
406	12.1	165.1	13
407	12.2	165.1	 6
408	12.3	165.1	 8
409	12.4	165.1	 2
410	12.5	165.1	 1
411	12.6	165.1	 1
412	12.7	165.1	 1
413	12.8	165.1	 0
414	12.9	165.1	 0
415	13	165.1	 0
416	13.1	165.1	 0
417	13.2	165.1	 0
418	13.3	165.1	 0
419	13.4	165.1	 0
420	13.5	165.1	 0
421	9.4	167.64	 0
422	9.5	167.64	 0
423	9.6	167.64	 0
424	9.7	167.64	 0
425	9.8	167.64	 0
426	9.9	167.64	 0
427	10	167.64	 0
428	10.1	167.64	 0
429	10.2	167.64	 0
430	10.3	167.64	 0
431	10.4	167.64	 0
432	10.5	167.64	 3
433	10.6	167.64	 1
434	10.7	167.64	 3
435	10.8	167.64	 1
436	10.9	167.64	10
437	11	167.64	17
438	11.1	167.64	24
439	11.2	167.64	27
440	11.3	167.64	26
441	11.4	167.64	26
442	11.5	167.64	38
443	11.6	167.64	48
444	11.7	167.64	48
445	11.8	167.64	41
446	11.9	167.64	32
447	12	167.64	42
448	12.1	167.64	22
449	12.2	167.64	23
450	12.3	167.64	10
451	12.4	167.64	 7
452	12.5	167.64	 3
453	12.6	167.64	 0
454	12.7	167.64	 1
455	12.8	167.64	 1
456	12.9	167.64	 0
457	13	167.64	 3
458	13.1	167.64	 0
459	13.2	167.64	 1
460	13.3	167.64	 0
461	13.4	167.64	 0
462	13.5	167.64	 0
463	9.4	170.18	 0
464	9.5	170.18	 0
465	9.6	170.18	 0
466	9.7	170.18	 0
467	9.8	170.18	 0
468	9.9	170.18	 0
469	10	170.18	 0
470	10.1	170.18	 0
471	10.2	170.18	 0
472	10.3	170.18	 0
473	10.4	170.18	 0
474	10.5	170.18	 1
475	10.6	170.18	 0
476	10.7	170.18	 1
477	10.8	170.18	 2
478	10.9	170.18	 4
479	11	170.18	10
480	11.1	170.18	 7
481	11.2	170.18	20
482	11.3	170.18	24
483	11.4	170.18	22
484	11.5	170.18	34
485	11.6	170.18	38
486	11.7	170.18	45
487	11.8	170.18	34
488	11.9	170.18	35
489	12	170.18	39
490	12.1	170.18	28
491	12.2	170.18	17
492	12.3	170.18	13
493	12.4	170.18	12
494	12.5	170.18	12
495	12.6	170.18	 3
496	12.7	170.18	 7
497	12.8	170.18	 2
498	12.9	170.18	 1
499	13	170.18	 0
500	13.1	170.18	 1
501	13.2	170.18	 1
502	13.3	170.18	 0
503	13.4	170.18	 0
504	13.5	170.18	 0
505	9.4	172.72	 0
506	9.5	172.72	 0
507	9.6	172.72	 0
508	9.7	172.72	 0
509	9.8	172.72	 0
510	9.9	172.72	 0
511	10	172.72	 0
512	10.1	172.72	 0
513	10.2	172.72	 0
514	10.3	172.72	 0
515	10.4	172.72	 0
516	10.5	172.72	 0
517	10.6	172.72	 0
518	10.7	172.72	 2
519	10.8	172.72	 1
520	10.9	172.72	 1
521	11	172.72	 6
522	11.1	172.72	 4
523	11.2	172.72	 4
524	11.3	172.72	 7
525	11.4	172.72	10
526	11.5	172.72	25
527	11.6	172.72	27
528	11.7	172.72	24
529	11.8	172.72	29
530	11.9	172.72	19
531	12	172.72	22
532	12.1	172.72	15
533	12.2	172.72	16
534	12.3	172.72	20
535	12.4	172.72	 4
536	12.5	172.72	11
537	12.6	172.72	 5
538	12.7	172.72	 5
539	12.8	172.72	 3
540	12.9	172.72	 2
541	13	172.72	 1
542	13.1	172.72	 1
543	13.2	172.72	 0
544	13.3	172.72	 0
545	13.4	172.72	 0
546	13.5	172.72	 0
547	9.4	175.26	 0
548	9.5	175.26	 0
549	9.6	175.26	 0
550	9.7	175.26	 0
551	9.8	175.26	 0
552	9.9	175.26	 0
553	10	175.26	 0
554	10.1	175.26	 0
555	10.2	175.26	 0
556	10.3	175.26	 0
557	10.4	175.26	 0
558	10.5	175.26	 1
559	10.6	175.26	 1
560	10.7	175.26	 0
561	10.8	175.26	 0
562	10.9	175.26	 0
563	11	175.26	 0
564	11.1	175.26	 1
565	11.2	175.26	 1
566	11.3	175.26	 2
567	11.4	175.26	11
568	11.5	175.26	11
569	11.6	175.26	12
570	11.7	175.26	 9
571	11.8	175.26	10
572	11.9	175.26	10
573	12	175.26	16
574	12.1	175.26	27
575	12.2	175.26	11
576	12.3	175.26	23
577	12.4	175.26	 7
578	12.5	175.26	 8
579	12.6	175.26	 7
580	12.7	175.26	 5
581	12.8	175.26	 1
582	12.9	175.26	 2
583	13	175.26	 0
584	13.1	175.26	 0
585	13.2	175.26	 1
586	13.3	175.26	 0
587	13.4	175.26	 0
588	13.5	175.26	 0
589	9.4	177.8	 0
590	9.5	177.8	 0
591	9.6	177.8	 0
592	9.7	177.8	 0
593	9.8	177.8	 0
594	9.9	177.8	 0
595	10	177.8	 0
596	10.1	177.8	 0
597	10.2	177.8	 0
598	10.3	177.8	 0
599	10.4	177.8	 0
600	10.5	177.8	 0
601	10.6	177.8	 0
602	10.7	177.8	 0
603	10.8	177.8	 0
604	10.9	177.8	 0
605	11	177.8	 0
606	11.1	177.8	 0
607	11.2	177.8	 0
608	11.3	177.8	 0
609	11.4	177.8	 0
610	11.5	177.8	 2
611	11.6	177.8	 2
612	11.7	177.8	 9
613	11.8	177.8	 5
614	11.9	177.8	 9
615	12	177.8	 8
616	12.1	177.8	10
617	12.2	177.8	 8
618	12.3	177.8	 6
619	12.4	177.8	 7
620	12.5	177.8	 6
621	12.6	177.8	 8
622	12.7	177.8	 8
623	12.8	177.8	 8
624	12.9	177.8	 0
625	13	177.8	 1
626	13.1	177.8	 0
627	13.2	177.8	 0
628	13.3	177.8	 0
629	13.4	177.8	 0
630	13.5	177.8	 0
631	9.4	180.34	 0
632	9.5	180.34	 0
633	9.6	180.34	 0
634	9.7	180.34	 0
635	9.8	180.34	 0
636	9.9	180.34	 0
637	10	180.34	 0
638	10.1	180.34	 0
639	10.2	180.34	 0
640	10.3	180.34	 0
641	10.4	180.34	 0
642	10.5	180.34	 0
643	10.6	180.34	 0
644	10.7	180.34	 0
645	10.8	180.34	 0
646	10.9	180.34	 0
647	11	180.34	 0
648	11.1	180.34	 0
649	11.2	180.34	 0
650	11.3	180.34	 0
651	11.4	180.34	 0
652	11.5	180.34	 0
653	11.6	180.34	 2
654	11.7	180.34	 2
655	11.8	180.34	 1
656	11.9	180.34	 3
657	12	180.34	 2
658	12.1	180.34	 4
659	12.2	180.34	 1
660	12.3	180.34	 5
661	12.4	180.34	 1
662	12.5	180.34	 8
663	12.6	180.34	 6
664	12.7	180.34	 2
665	12.8	180.34	 5
666	12.9	180.34	 1
667	13	180.34	 0
668	13.1	180.34	 0
669	13.2	180.34	 3
670	13.3	180.34	 0
671	13.4	180.34	 0
672	13.5	180.34	 0
673	9.4	182.88	 0
674	9.5	182.88	 0
675	9.6	182.88	 0
676	9.7	182.88	 0
677	9.8	182.88	 0
678	9.9	182.88	 0
679	10	182.88	 0
680	10.1	182.88	 0
681	10.2	182.88	 0
682	10.3	182.88	 0
683	10.4	182.88	 0
684	10.5	182.88	 0
685	10.6	182.88	 0
686	10.7	182.88	 0
687	10.8	182.88	 0
688	10.9	182.88	 0
689	11	182.88	 0
690	11.1	182.88	 0
691	11.2	182.88	 0
692	11.3	182.88	 0
693	11.4	182.88	 0
694	11.5	182.88	 0
695	11.6	182.88	 0
696	11.7	182.88	 0
697	11.8	182.88	 0
698	11.9	182.88	 1
699	12	182.88	 2
700	12.1	182.88	 1
701	12.2	182.88	 1
702	12.3	182.88	 0
703	12.4	182.88	 0
704	12.5	182.88	 0
705	12.6	182.88	 3
706	12.7	182.88	 2
707	12.8	182.88	 3
708	12.9	182.88	 1
709	13	182.88	 2
710	13.1	182.88	 0
711	13.2	182.88	 0
712	13.3	182.88	 1
713	13.4	182.88	 0
714	13.5	182.88	 0
715	9.4	185.42	 0
716	9.5	185.42	 0
717	9.6	185.42	 0
718	9.7	185.42	 0
719	9.8	185.42	 0
720	9.9	185.42	 0
721	10	185.42	 0
722	10.1	185.42	 0
723	10.2	185.42	 0
724	10.3	185.42	 0
725	10.4	185.42	 0
726	10.5	185.42	 0
727	10.6	185.42	 0
728	10.7	185.42	 0
729	10.8	185.42	 0
730	10.9	185.42	 0
731	11	185.42	 0
732	11.1	185.42	 0
733	11.2	185.42	 0
734	11.3	185.42	 0
735	11.4	185.42	 0
736	11.5	185.42	 0
737	11.6	185.42	 1
738	11.7	185.42	 0
739	11.8	185.42	 0
740	11.9	185.42	 0
741	12	185.42	 0
742	12.1	185.42	 0
743	12.2	185.42	 0
744	12.3	185.42	 0
745	12.4	185.42	 0
746	12.5	185.42	 2
747	12.6	185.42	 1
748	12.7	185.42	 0
749	12.8	185.42	 1
750	12.9	185.42	 0
751	13	185.42	 1
752	13.1	185.42	 0
753	13.2	185.42	 0
754	13.3	185.42	 0
755	13.4	185.42	 0
756	13.5	185.42	 1
757	9.4	187.96	 0
758	9.5	187.96	 0
759	9.6	187.96	 0
760	9.7	187.96	 0
761	9.8	187.96	 0
762	9.9	187.96	 0
763	10	187.96	 0
764	10.1	187.96	 0
765	10.2	187.96	 0
766	10.3	187.96	 0
767	10.4	187.96	 0
768	10.5	187.96	 0
769	10.6	187.96	 0
770	10.7	187.96	 0
771	10.8	187.96	 0
772	10.9	187.96	 0
773	11	187.96	 0
774	11.1	187.96	 0
775	11.2	187.96	 0
776	11.3	187.96	 0
777	11.4	187.96	 0
778	11.5	187.96	 0
779	11.6	187.96	 0
780	11.7	187.96	 0
781	11.8	187.96	 0
782	11.9	187.96	 0
783	12	187.96	 0
784	12.1	187.96	 0
785	12.2	187.96	 0
786	12.3	187.96	 0
787	12.4	187.96	 1
788	12.5	187.96	 0
789	12.6	187.96	 1
790	12.7	187.96	 0
791	12.8	187.96	 1
792	12.9	187.96	 0
793	13	187.96	 0
794	13.1	187.96	 0
795	13.2	187.96	 0
796	13.3	187.96	 1
797	13.4	187.96	 0
798	13.5	187.96	 0
799	9.4	190.5	 0
800	9.5	190.5	 0
801	9.6	190.5	 0
802	9.7	190.5	 0
803	9.8	190.5	 0
804	9.9	190.5	 0
805	10	190.5	 0
806	10.1	190.5	 0
807	10.2	190.5	 0
808	10.3	190.5	 0
809	10.4	190.5	 0
810	10.5	190.5	 0
811	10.6	190.5	 0
812	10.7	190.5	 0
813	10.8	190.5	 0
814	10.9	190.5	 0
815	11	190.5	 0
816	11.1	190.5	 0
817	11.2	190.5	 0
818	11.3	190.5	 0
819	11.4	190.5	 0
820	11.5	190.5	 0
821	11.6	190.5	 0
822	11.7	190.5	 0
823	11.8	190.5	 0
824	11.9	190.5	 0
825	12	190.5	 0
826	12.1	190.5	 0
827	12.2	190.5	 0
828	12.3	190.5	 0
829	12.4	190.5	 0
830	12.5	190.5	 0
831	12.6	190.5	 0
832	12.7	190.5	 0
833	12.8	190.5	 0
834	12.9	190.5	 0
835	13	190.5	 0
836	13.1	190.5	 0
837	13.2	190.5	 0
838	13.3	190.5	 0
839	13.4	190.5	 0
840	13.5	190.5	 0
841	9.4	193.04	 0
842	9.5	193.04	 0
843	9.6	193.04	 0
844	9.7	193.04	 0
845	9.8	193.04	 0
846	9.9	193.04	 0
847	10	193.04	 0
848	10.1	193.04	 0
849	10.2	193.04	 0
850	10.3	193.04	 0
851	10.4	193.04	 0
852	10.5	193.04	 0
853	10.6	193.04	 0
854	10.7	193.04	 0
855	10.8	193.04	 0
856	10.9	193.04	 0
857	11	193.04	 0
858	11.1	193.04	 0
859	11.2	193.04	 0
860	11.3	193.04	 0
861	11.4	193.04	 0
862	11.5	193.04	 0
863	11.6	193.04	 0
864	11.7	193.04	 0
865	11.8	193.04	 0
866	11.9	193.04	 0
867	12	193.04	 0
868	12.1	193.04	 0
869	12.2	193.04	 0
870	12.3	193.04	 0
871	12.4	193.04	 0
872	12.5	193.04	 0
873	12.6	193.04	 0
874	12.7	193.04	 0
875	12.8	193.04	 0
876	12.9	193.04	 0
877	13	193.04	 0
878	13.1	193.04	 0
879	13.2	193.04	 0
880	13.3	193.04	 0
881	13.4	193.04	 0
882	13.5	193.04	 0
883	9.4	195.58	 0
884	9.5	195.58	 0
885	9.6	195.58	 0
886	9.7	195.58	 0
887	9.8	195.58	 0
888	9.9	195.58	 0
889	10	195.58	 0
890	10.1	195.58	 0
891	10.2	195.58	 0
892	10.3	195.58	 0
893	10.4	195.58	 0
894	10.5	195.58	 0
895	10.6	195.58	 0
896	10.7	195.58	 0
897	10.8	195.58	 0
898	10.9	195.58	 0
899	11	195.58	 0
900	11.1	195.58	 0
901	11.2	195.58	 1
902	11.3	195.58	 0
903	11.4	195.58	 0
904	11.5	195.58	 0
905	11.6	195.58	 0
906	11.7	195.58	 0
907	11.8	195.58	 0
908	11.9	195.58	 0
909	12	195.58	 0
910	12.1	195.58	 0
911	12.2	195.58	 0
912	12.3	195.58	 0
913	12.4	195.58	 0
914	12.5	195.58	 0
915	12.6	195.58	 0
916	12.7	195.58	 0
917	12.8	195.58	 0
918	12.9	195.58	 0
919	13	195.58	 0
920	13.1	195.58	 0
921	13.2	195.58	 0
922	13.3	195.58	 0
923	13.4	195.58	 0
924	13.5	195.58	 0
\.


--
-- Name: crimtab_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('crimtab_id_seq', 924, true);


--
-- Data for Name: discoveries; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY discoveries (id, x) FROM stdin;
1	5
2	3
3	0
4	2
5	0
6	3
7	2
8	3
9	6
10	1
11	2
12	1
13	2
14	1
15	3
16	3
17	3
18	5
19	2
20	4
21	4
22	0
23	2
24	3
25	7
26	12
27	3
28	10
29	9
30	2
31	3
32	7
33	7
34	2
35	3
36	3
37	6
38	2
39	4
40	3
41	5
42	2
43	2
44	4
45	0
46	4
47	2
48	5
49	2
50	3
51	3
52	6
53	5
54	8
55	3
56	6
57	6
58	0
59	5
60	2
61	2
62	2
63	6
64	3
65	4
66	4
67	2
68	2
69	4
70	7
71	5
72	3
73	3
74	0
75	2
76	2
77	2
78	1
79	3
80	4
81	2
82	2
83	1
84	1
85	1
86	2
87	1
88	4
89	4
90	3
91	2
92	1
93	4
94	1
95	1
96	1
97	0
98	0
99	2
100	0
\.


--
-- Name: discoveries_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('discoveries_id_seq', 100, true);


--
-- Data for Name: dnase; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY dnase (id, run, conc, density) FROM stdin;
1	1	0.04882812	0.017
2	1	0.04882812	0.018
3	1	0.19531250	0.121
4	1	0.19531250	0.124
5	1	0.39062500	0.206
6	1	0.39062500	0.215
7	1	0.78125000	0.377
8	1	0.78125000	0.374
9	1	1.56250000	0.614
10	1	1.56250000	0.609
11	1	3.12500000	1.019
12	1	3.12500000	1.001
13	1	6.25000000	1.334
14	1	6.25000000	1.364
15	1	12.50000000	1.730
16	1	12.50000000	1.710
17	2	0.04882812	0.045
18	2	0.04882812	0.050
19	2	0.19531250	0.137
20	2	0.19531250	0.123
21	2	0.39062500	0.225
22	2	0.39062500	0.207
23	2	0.78125000	0.401
24	2	0.78125000	0.383
25	2	1.56250000	0.672
26	2	1.56250000	0.681
27	2	3.12500000	1.116
28	2	3.12500000	1.078
29	2	6.25000000	1.554
30	2	6.25000000	1.526
31	2	12.50000000	1.932
32	2	12.50000000	1.914
33	3	0.04882812	0.070
34	3	0.04882812	0.068
35	3	0.19531250	0.173
36	3	0.19531250	0.165
37	3	0.39062500	0.277
38	3	0.39062500	0.248
39	3	0.78125000	0.434
40	3	0.78125000	0.426
41	3	1.56250000	0.703
42	3	1.56250000	0.689
43	3	3.12500000	1.067
44	3	3.12500000	1.077
45	3	6.25000000	1.629
46	3	6.25000000	1.479
47	3	12.50000000	2.003
48	3	12.50000000	1.884
49	4	0.04882812	0.011
50	4	0.04882812	0.016
51	4	0.19531250	0.118
52	4	0.19531250	0.108
53	4	0.39062500	0.200
54	4	0.39062500	0.206
55	4	0.78125000	0.364
56	4	0.78125000	0.360
57	4	1.56250000	0.620
58	4	1.56250000	0.640
59	4	3.12500000	0.979
60	4	3.12500000	0.973
61	4	6.25000000	1.424
62	4	6.25000000	1.399
63	4	12.50000000	1.740
64	4	12.50000000	1.732
65	5	0.04882812	0.035
66	5	0.04882812	0.035
67	5	0.19531250	0.132
68	5	0.19531250	0.135
69	5	0.39062500	0.224
70	5	0.39062500	0.220
71	5	0.78125000	0.385
72	5	0.78125000	0.390
73	5	1.56250000	0.658
74	5	1.56250000	0.647
75	5	3.12500000	1.060
76	5	3.12500000	1.031
77	5	6.25000000	1.425
78	5	6.25000000	1.409
79	5	12.50000000	1.750
80	5	12.50000000	1.738
81	6	0.04882812	0.086
82	6	0.04882812	0.103
83	6	0.19531250	0.191
84	6	0.19531250	0.189
85	6	0.39062500	0.272
86	6	0.39062500	0.277
87	6	0.78125000	0.440
88	6	0.78125000	0.426
89	6	1.56250000	0.686
90	6	1.56250000	0.676
91	6	3.12500000	1.062
92	6	3.12500000	1.072
93	6	6.25000000	1.424
94	6	6.25000000	1.459
95	6	12.50000000	1.768
96	6	12.50000000	1.806
97	7	0.04882812	0.094
98	7	0.04882812	0.092
99	7	0.19531250	0.182
100	7	0.19531250	0.182
101	7	0.39062500	0.282
102	7	0.39062500	0.273
103	7	0.78125000	0.444
104	7	0.78125000	0.439
105	7	1.56250000	0.686
106	7	1.56250000	0.668
107	7	3.12500000	1.052
108	7	3.12500000	1.035
109	7	6.25000000	1.409
110	7	6.25000000	1.392
111	7	12.50000000	1.759
112	7	12.50000000	1.739
113	8	0.04882812	0.054
114	8	0.04882812	0.054
115	8	0.19531250	0.152
116	8	0.19531250	0.148
117	8	0.39062500	0.226
118	8	0.39062500	0.222
119	8	0.78125000	0.392
120	8	0.78125000	0.383
121	8	1.56250000	0.658
122	8	1.56250000	0.644
123	8	3.12500000	1.043
124	8	3.12500000	1.002
125	8	6.25000000	1.466
126	8	6.25000000	1.381
127	8	12.50000000	1.743
128	8	12.50000000	1.724
129	9	0.04882812	0.032
130	9	0.04882812	0.043
131	9	0.19531250	0.142
132	9	0.19531250	0.155
133	9	0.39062500	0.239
134	9	0.39062500	0.242
135	9	0.78125000	0.420
136	9	0.78125000	0.395
137	9	1.56250000	0.624
138	9	1.56250000	0.705
139	9	3.12500000	1.046
140	9	3.12500000	1.026
141	9	6.25000000	1.398
142	9	6.25000000	1.405
143	9	12.50000000	1.693
144	9	12.50000000	1.729
145	10	0.04882812	0.052
146	10	0.04882812	0.094
147	10	0.19531250	0.164
148	10	0.19531250	0.166
149	10	0.39062500	0.259
150	10	0.39062500	0.256
151	10	0.78125000	0.439
152	10	0.78125000	0.439
153	10	1.56250000	0.690
154	10	1.56250000	0.701
155	10	3.12500000	1.042
156	10	3.12500000	1.075
157	10	6.25000000	1.340
158	10	6.25000000	1.406
159	10	12.50000000	1.699
160	10	12.50000000	1.708
161	11	0.04882812	0.047
162	11	0.04882812	0.057
163	11	0.19531250	0.159
164	11	0.19531250	0.155
165	11	0.39062500	0.246
166	11	0.39062500	0.252
167	11	0.78125000	0.427
168	11	0.78125000	0.411
169	11	1.56250000	0.704
170	11	1.56250000	0.684
171	11	3.12500000	0.994
172	11	3.12500000	0.980
173	11	6.25000000	1.421
174	11	6.25000000	1.385
175	11	12.50000000	1.715
176	11	12.50000000	1.721
\.


--
-- Name: dnase_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('dnase_id_seq', 176, true);


--
-- Data for Name: esoph; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY esoph (id, agegp, alcgp, tobgp, ncases, ncontrols) FROM stdin;
1	25-34	0-39g/day	0-9g/day	0	40
2	25-34	0-39g/day	10-19	0	10
3	25-34	0-39g/day	20-29	0	6
4	25-34	0-39g/day	30+	0	5
5	25-34	40-79	0-9g/day	0	27
6	25-34	40-79	10-19	0	7
7	25-34	40-79	20-29	0	4
8	25-34	40-79	30+	0	7
9	25-34	80-119	0-9g/day	0	2
10	25-34	80-119	10-19	0	1
11	25-34	80-119	30+	0	2
12	25-34	120+	0-9g/day	0	1
13	25-34	120+	10-19	1	1
14	25-34	120+	20-29	0	1
15	25-34	120+	30+	0	2
16	35-44	0-39g/day	0-9g/day	0	60
17	35-44	0-39g/day	10-19	1	14
18	35-44	0-39g/day	20-29	0	7
19	35-44	0-39g/day	30+	0	8
20	35-44	40-79	0-9g/day	0	35
21	35-44	40-79	10-19	3	23
22	35-44	40-79	20-29	1	14
23	35-44	40-79	30+	0	8
24	35-44	80-119	0-9g/day	0	11
25	35-44	80-119	10-19	0	6
26	35-44	80-119	20-29	0	2
27	35-44	80-119	30+	0	1
28	35-44	120+	0-9g/day	2	3
29	35-44	120+	10-19	0	3
30	35-44	120+	20-29	2	4
31	45-54	0-39g/day	0-9g/day	1	46
32	45-54	0-39g/day	10-19	0	18
33	45-54	0-39g/day	20-29	0	10
34	45-54	0-39g/day	30+	0	4
35	45-54	40-79	0-9g/day	6	38
36	45-54	40-79	10-19	4	21
37	45-54	40-79	20-29	5	15
38	45-54	40-79	30+	5	7
39	45-54	80-119	0-9g/day	3	16
40	45-54	80-119	10-19	6	14
41	45-54	80-119	20-29	1	5
42	45-54	80-119	30+	2	4
43	45-54	120+	0-9g/day	4	4
44	45-54	120+	10-19	3	4
45	45-54	120+	20-29	2	3
46	45-54	120+	30+	4	4
47	55-64	0-39g/day	0-9g/day	2	49
48	55-64	0-39g/day	10-19	3	22
49	55-64	0-39g/day	20-29	3	12
50	55-64	0-39g/day	30+	4	6
51	55-64	40-79	0-9g/day	9	40
52	55-64	40-79	10-19	6	21
53	55-64	40-79	20-29	4	17
54	55-64	40-79	30+	3	6
55	55-64	80-119	0-9g/day	9	18
56	55-64	80-119	10-19	8	15
57	55-64	80-119	20-29	3	6
58	55-64	80-119	30+	4	4
59	55-64	120+	0-9g/day	5	10
60	55-64	120+	10-19	6	7
61	55-64	120+	20-29	2	3
62	55-64	120+	30+	5	6
63	65-74	0-39g/day	0-9g/day	5	48
64	65-74	0-39g/day	10-19	4	14
65	65-74	0-39g/day	20-29	2	7
66	65-74	0-39g/day	30+	0	2
67	65-74	40-79	0-9g/day	17	34
68	65-74	40-79	10-19	3	10
69	65-74	40-79	20-29	5	9
70	65-74	80-119	0-9g/day	6	13
71	65-74	80-119	10-19	4	12
72	65-74	80-119	20-29	2	3
73	65-74	80-119	30+	1	1
74	65-74	120+	0-9g/day	3	4
75	65-74	120+	10-19	1	2
76	65-74	120+	20-29	1	1
77	65-74	120+	30+	1	1
78	75+	0-39g/day	0-9g/day	1	18
79	75+	0-39g/day	10-19	2	6
80	75+	0-39g/day	30+	1	3
81	75+	40-79	0-9g/day	2	5
82	75+	40-79	10-19	1	3
83	75+	40-79	20-29	0	3
84	75+	40-79	30+	1	1
85	75+	80-119	0-9g/day	1	1
86	75+	80-119	10-19	1	1
87	75+	120+	0-9g/day	2	2
88	75+	120+	10-19	1	1
\.


--
-- Name: esoph_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('esoph_id_seq', 88, true);


--
-- Data for Name: euro; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY euro (id, "eval(parse(text_=_name))") FROM stdin;
1	13.7603
2	40.3399
3	1.95583
4	166.386
5	5.94573
6	6.55957
7	0.787564
8	1936.27
9	40.3399
10	2.20371
11	200.482
\.


--
-- Data for Name: euro_cross; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY euro_cross (id, ats, bef, dem, esp, fim, frf, iep, itl, luf, nlg, pte) FROM stdin;
1	1	2.93161486304804	0.142135709250525	12.0917421858535	0.432093050296869	0.476702542822467	0.0572345079685763	140.714228614202	2.93161486304804	0.160149851384054	14.5695951396408
2	0.341108926893721	1	0.0484837592557245	4.12460120129202	0.147390796704999	0.16260749282968	0.0195232015944512	47.998879521268	1	0.0546285439478035	4.96981896335886
3	7.03552967282433	20.6254633582673	1	85.071810944714	3.04000347678479	3.35385488513828	0.402675079122419	989.999130803802	20.6254633582673	1.12673903151092	102.50481892598
4	0.0827010685995216	0.242447681896313	0.0117547750411693	1	0.0357345569939779	0.0394238096955273	0.00473335496976909	11.6372170735519	0.242447681896313	0.0132445638455158	1.20492108711069
5	2.31431632448833	6.78468413466471	0.328946992211217	27.984116332225	1	1.10324047677913	0.132458756115733	325.65723636963	6.78468413466471	0.370637415422497	33.7186518728567
6	2.09774421189194	6.14977811045541	0.298164361383444	25.3653821820638	0.906420695258988	1	0.120063357811564	295.182458606281	6.14977811045541	0.335953423776254	30.5632838737905
7	17.4719768806091	51.2211071100253	2.48339182593415	211.266639917518	7.54951978505874	8.32893580712171	1	2458.55574912007	51.2211071100253	2.79813450081517	254.559629439639
8	0.00710660186854106	0.02083381966358	0.00101010189694619	0.0859311976119033	0.00307071327862333	0.00338773518156042	0.000406742861274512	1	0.02083381966358	0.00113812123309249	0.103540312043258
9	0.341108926893721	1	0.0484837592557245	4.12460120129202	0.147390796704999	0.16260749282968	0.0195232015944512	47.998879521268	1	0.0546285439478035	4.96981896335886
10	6.24415190746514	18.3054485390546	0.887516960035576	75.5026750343739	2.69805464421362	2.97660309205839	0.357380962104814	878.641019008853	18.3054485390546	1	90.9747652821832
11	0.0686360870302571	0.201214572879361	0.00975563891022635	0.829929869015672	0.0296571762053451	0.0327189972167077	0.00392835267006514	9.65807404155984	0.201214572879361	0.0109920591374787	1
\.


--
-- Name: euro_cross_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('euro_cross_id_seq', 11, true);


--
-- Name: euro_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('euro_id_seq', 11, true);


--
-- Data for Name: eustockmarkets; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY eustockmarkets (id, dax, smi, cac, ftse) FROM stdin;
1	1628.75	1678.1	1772.8	2443.6
2	1613.63	1688.5	1750.5	2460.2
3	1606.51	1678.6	1718	2448.2
4	1621.04	1684.1	1708.1	2470.4
5	1618.16	1686.6	1723.1	2484.7
6	1610.61	1671.6	1714.3	2466.8
7	1630.75	1682.9	1734.5	2487.9
8	1640.17	1703.6	1757.4	2508.4
9	1635.47	1697.5	1754	2510.5
10	1645.89	1716.3	1754.3	2497.4
11	1647.84	1723.8	1759.8	2532.5
12	1638.35	1730.5	1755.5	2556.8
13	1629.93	1727.4	1758.1	2561
14	1621.49	1733.3	1757.5	2547.3
15	1624.74	1734	1763.5	2541.5
16	1627.63	1728.3	1762.8	2558.5
17	1631.99	1737.1	1768.9	2587.9
18	1621.18	1723.1	1778.1	2580.5
19	1613.42	1723.6	1780.1	2579.6
20	1604.95	1719	1767.7	2589.3
21	1605.75	1721.2	1757.9	2595
22	1616.67	1725.3	1756.6	2595.6
23	1619.29	1727.2	1754.7	2588.8
24	1620.49	1727.2	1766.8	2591.7
25	1619.67	1731.6	1766.5	2601.7
26	1623.07	1724.1	1762.2	2585.4
27	1613.98	1716.9	1759.5	2573.3
28	1631.87	1723.4	1782.4	2597.4
29	1630.37	1723	1789.5	2600.6
30	1633.47	1728.4	1783.5	2570.6
31	1626.55	1722.1	1780.4	2569.4
32	1650.43	1724.5	1808.8	2584.9
33	1650.06	1733.6	1820.3	2608.8
34	1654.11	1739	1820.3	2617.2
35	1653.6	1726.2	1820.3	2621
36	1501.82	1587.4	1687.5	2540.5
37	1524.28	1630.6	1725.6	2554.5
38	1603.65	1685.5	1792.9	2601.9
39	1622.49	1701.3	1819.1	2623
40	1636.68	1718	1833.5	2640.7
41	1652.1	1726.2	1853.4	2640.7
42	1645.81	1716.6	1849.7	2619.8
43	1650.36	1725.8	1851.8	2624.2
44	1651.55	1737.4	1857.7	2638.2
45	1649.88	1736.6	1864.3	2645.7
46	1653.52	1732.4	1863.5	2679.6
47	1657.51	1731.2	1873.2	2669
48	1649.55	1726.9	1860.8	2664.6
49	1649.09	1727.8	1868.7	2663.3
50	1646.41	1720.2	1860.4	2667.4
51	1638.65	1715.4	1855.9	2653.2
52	1625.8	1708.7	1840.5	2630.8
53	1628.64	1713	1842.6	2626.6
54	1632.22	1713.5	1861.2	2641.9
55	1633.65	1718	1876.2	2625.8
56	1631.17	1701.7	1878.3	2606
57	1635.8	1701.7	1878.4	2594.4
58	1621.27	1684.9	1869.4	2583.6
59	1624.7	1687.2	1880.4	2588.7
60	1616.13	1690.6	1885.5	2600.3
61	1618.12	1684.3	1888.4	2579.5
62	1627.8	1679.9	1885.2	2576.6
63	1625.79	1672.9	1877.9	2597.8
64	1614.8	1663.1	1876.5	2595.6
65	1612.8	1669.3	1883.8	2599
66	1605.47	1664.7	1880.6	2621.7
67	1609.32	1672.3	1887.4	2645.6
68	1607.48	1687.7	1878.3	2644.2
69	1607.48	1686.8	1867.1	2625.6
70	1604.89	1686.6	1851.9	2624.6
71	1589.12	1675.8	1843.6	2596.2
72	1582.27	1677.4	1848.1	2599.5
73	1567.99	1673.2	1843.4	2584.1
74	1568.16	1665	1843.6	2570.8
75	1569.71	1671.3	1833.8	2555
76	1571.74	1672.4	1833.4	2574.5
77	1585.41	1676.2	1856.9	2576.7
78	1570.01	1692.6	1863.4	2579
79	1561.89	1696.5	1855.5	2588.7
80	1565.18	1716.1	1864.2	2601.1
81	1570.34	1713.3	1846	2575.7
82	1577	1705.1	1836.8	2559.5
83	1590.29	1711.3	1830.4	2561.1
84	1572.72	1709.8	1831.6	2528.3
85	1572.07	1688.6	1834.8	2514.7
86	1579.19	1698.9	1852.1	2558.5
87	1588.73	1700	1849.8	2553.3
88	1586.01	1693	1861.8	2577.1
89	1579.77	1683.9	1856.7	2566
90	1572.58	1679.2	1856.7	2549.5
91	1568.09	1673.9	1841.5	2527.8
92	1578.21	1683.9	1846.9	2540.9
93	1573.94	1688.4	1836.1	2534.2
94	1582.06	1693.9	1838.6	2538
95	1610.18	1720.9	1857.6	2559
96	1605.16	1717.9	1857.6	2554.9
97	1623.84	1733.6	1858.4	2575.5
98	1615.26	1729.7	1846.8	2546.5
99	1627.08	1735.6	1868.5	2561.6
100	1626.97	1734.1	1863.2	2546.6
101	1605.7	1699.3	1808.3	2502.9
102	1589.7	1678.6	1765.1	2463.1
103	1589.7	1675.5	1763.5	2472.6
104	1603.26	1670.1	1766	2463.5
105	1599.75	1652.2	1741.3	2446.3
106	1590.86	1635	1743.3	2456.2
107	1603.5	1654.9	1769	2471.5
108	1589.86	1642	1757.9	2447.5
109	1587.92	1638.7	1754.9	2428.6
110	1571.06	1622.6	1739.7	2420.2
111	1549.81	1596.1	1708.8	2414.9
112	1549.36	1612.4	1722.2	2420.2
113	1554.65	1625	1713.9	2423.8
114	1557.52	1610.5	1703.2	2407
115	1555.31	1606.6	1685.7	2388.7
116	1559.76	1610.7	1663.4	2409.6
117	1548.44	1603.1	1636.9	2392
118	1543.99	1591.5	1645.6	2380.2
119	1550.21	1605.2	1671.6	2423.3
120	1557.03	1621.4	1688.3	2451.6
121	1551.78	1622.5	1696.8	2440.8
122	1562.89	1626.6	1711.7	2432.9
123	1570.28	1627.4	1706.2	2413.6
124	1559.26	1614.9	1684.2	2391.6
125	1545.87	1602.3	1648.5	2358.1
126	1542.77	1598.3	1633.6	2345.4
127	1542.77	1627	1699.1	2384.4
128	1542.77	1627	1699.1	2384.4
129	1542.77	1627	1722.5	2384.4
130	1564.27	1655.7	1720.7	2418.7
131	1577.26	1670.1	1741.9	2420
132	1577.26	1670.1	1765.7	2493.1
133	1577.26	1670.1	1765.7	2493.1
134	1598.19	1670.1	1749.9	2492.8
135	1604.05	1704	1770.3	2504.1
136	1604.69	1711.8	1787.6	2493.2
137	1593.65	1700.5	1778.7	2482.9
138	1581.68	1690.3	1785.6	2467.1
139	1599.14	1715.4	1833.9	2497.9
140	1613.82	1723.5	1837.4	2477.9
141	1620.45	1719.4	1824.3	2490.1
142	1629.51	1734.4	1843.8	2516.3
143	1663.7	1772.8	1873.6	2537.1
144	1664.09	1760.3	1860.2	2541.6
145	1669.29	1747.2	1860.2	2536.7
146	1685.14	1750.2	1865.9	2544.9
147	1687.07	1755.3	1867.9	2543.4
148	1680.13	1754.6	1841.3	2522
149	1671.84	1751.2	1838.7	2525.3
150	1669.52	1752.5	1849.9	2510.4
151	1686.71	1769.4	1869.3	2539.9
152	1685.51	1767.6	1890.6	2552
153	1671.01	1750	1879.6	2546.5
154	1683.06	1747.1	1873.9	2550.8
155	1685.7	1753.5	1875.3	2571.2
156	1685.66	1752.8	1857	2560.2
157	1678.77	1752.9	1856.5	2556.8
158	1685.85	1764.7	1865.8	2547.1
159	1683.71	1776.8	1860.6	2534.3
160	1686.59	1779.3	1861.6	2517.2
161	1683.73	1785.1	1865.6	2538.4
162	1679.14	1798.2	1864.1	2537.1
163	1685.03	1794.1	1861.6	2523.7
164	1680.81	1795.2	1876.5	2522.6
165	1676.17	1780.4	1865.1	2513.9
166	1688.46	1789.5	1882.1	2541
167	1696.55	1794.2	1912.2	2555.9
168	1690.24	1784.4	1915.4	2536.7
169	1711.35	1800.1	1951.2	2543.4
170	1711.29	1804	1962.4	2542.3
171	1729.86	1816.2	1976.5	2559.7
172	1716.63	1810.5	1953.5	2546.8
173	1743.36	1821.9	1981.3	2565
174	1745.17	1828.2	1985.1	2562
175	1746.76	1840.6	1983.4	2562.1
176	1749.29	1841.1	1979.7	2554.3
177	1763.86	1846.3	1983.8	2565.4
178	1762.27	1850	1988.1	2558.4
179	1762.29	1839	1973	2538.3
180	1746.77	1820.2	1966.9	2533.1
181	1753.5	1815.2	1976.3	2550.7
182	1753.21	1820.6	1993.9	2574.8
183	1739.88	1807.1	1968	2522.4
184	1723.92	1791.4	1941.8	2493.3
185	1734.42	1806.2	1947.1	2476
186	1723.13	1798.7	1929.2	2470.7
187	1732.92	1818.2	1943.6	2491.2
188	1729.89	1820.5	1928.2	2464.7
189	1725.74	1833.3	1922	2467.6
190	1730.9	1837.1	1919.1	2456.6
191	1714.17	1818.2	1884.6	2441
192	1716.2	1824.1	1896.3	2458.7
193	1719.06	1830.1	1928.3	2464.9
194	1718.21	1835.6	1934.8	2472.2
195	1698.84	1828.7	1923.5	2447.9
196	1714.76	1839.2	1943.8	2452.9
197	1718.35	1837.2	1942.4	2440.1
198	1706.69	1826.7	1928.1	2408.6
199	1723.37	1838	1942	2405.4
200	1716.18	1829.1	1942.7	2382.7
201	1738.78	1843.1	1974.8	2400.9
202	1737.41	1850.5	1975.4	2404.2
203	1714.77	1827.1	1907.5	2393.2
204	1724.24	1829.1	1943.6	2436.4
205	1733.77	1848	1974.1	2572.6
206	1729.96	1840.5	1963.3	2591
207	1734.46	1853.8	1972.3	2600.5
208	1744.35	1874.1	1990.7	2640.2
209	1746.88	1871.3	1978.2	2638.6
210	1746.88	1871.3	1978.2	2638.6
211	1746.88	1871.3	1978.2	2638.6
212	1747.47	1860.5	1980.4	2625.8
213	1753.1	1874.7	1983.7	2607.8
214	1745.17	1880.1	1978.1	2609.8
215	1745.72	1874.7	1984.9	2643
216	1742.92	1875.6	1995.7	2658.2
217	1731.68	1859.5	2006.6	2651
218	1731.18	1874.2	2036.7	2664.9
219	1728.09	1880.1	2031.1	2654.1
220	1728.09	1880.1	2031.1	2659.8
221	1731.29	1907.7	2041.6	2659.8
222	1733.82	1920.5	2046.9	2662.2
223	1745.78	1937.3	2047.2	2698.7
224	1752.57	1936.8	2063.4	2701.9
225	1748.13	1949.1	2063.4	2725.7
226	1750.7	1963.7	2077.5	2737.8
227	1747.91	1950.8	2063.6	2722.4
228	1745.79	1953.5	2053.2	2720.5
229	1735.34	1945	2017	2694.7
230	1719.92	1921.1	2024	2682.6
231	1763.59	1939.1	2051.6	2703.6
232	1766.76	1928	2023.1	2700.6
233	1785.4	1933.4	2030.8	2711.9
234	1783.56	1925.7	2016.8	2702
235	1804.42	1931.7	2045.1	2715
236	1812.33	1928.7	2046.3	2715
237	1799.51	1924.5	2029.6	2704.6
238	1792.8	1914.2	2014.1	2698.6
239	1792.8	1914.2	2014.1	2694.2
240	1806.36	1920.6	2033.3	2707.6
241	1798.23	1923.3	2017.4	2697.6
242	1800.62	1930.4	2024.9	2705.9
243	1786.19	1915.2	1992.6	2680.9
244	1791.35	1916.9	1994.9	2681.9
245	1789.05	1913.8	1981.6	2668.5
246	1789.05	1913.8	1981.6	2645.8
247	1784.71	1899.7	1962.2	2635.4
248	1789.45	1888	1953.7	2636.1
249	1779.74	1868.8	1928.8	2614.1
250	1786.97	1879.9	1928.3	2603.7
251	1773.25	1865.7	1918.1	2593.6
252	1781.62	1881.3	1931.4	2616.3
253	1773.75	1873.1	1908.8	2598.4
254	1773.75	1862.5	1891.8	2562.7
255	1776.34	1869.3	1913.9	2584.8
256	1770.72	1846.9	1885.8	2550.3
257	1772.39	1847.1	1895.8	2560.6
258	1762.55	1838.3	1899.6	2532.6
259	1764.35	1845.8	1920.3	2557.3
260	1752.83	1835.5	1915.3	2534.1
261	1755.98	1846.6	1907.3	2515.8
262	1754.95	1854.8	1900.6	2521.2
263	1759.9	1845.3	1880.9	2493.9
264	1759.84	1854.5	1873.5	2476.1
265	1776.5	1870.5	1883.6	2497.1
266	1769.98	1862.6	1868.5	2469
267	1766.98	1856.6	1879.1	2493.7
268	1752.29	1837.6	1847.8	2472.6
269	1760.17	1846.7	1861.8	2497.9
270	1750.32	1856.5	1859.4	2490.8
271	1731.44	1841.8	1859.4	2478.3
272	1735.51	1835	1859.4	2484
273	1733.84	1844.4	1853.3	2486.4
274	1730.78	1838.9	1851.2	2483.4
275	1699.46	1805.6	1801.8	2431.9
276	1652.71	1756.6	1767.9	2403.7
277	1654.09	1786.1	1762.7	2415.6
278	1636.81	1757.1	1727.5	2387.9
279	1622.81	1762.8	1734.6	2399.5
280	1613.36	1756.8	1734.6	2377.2
281	1617.78	1761.9	1755.4	2348
282	1617.18	1778.5	1769	2373.4
283	1637.62	1812.7	1801.6	2423.2
284	1622.2	1806.1	1782.6	2411.6
285	1608.49	1798.1	1754.7	2399.6
286	1605.11	1794.9	1784.4	2420.2
287	1609.61	1805.4	1787.6	2407.5
288	1624.94	1820.3	1798	2392.8
289	1618.07	1819.6	1793.8	2377.6
290	1611.96	1809.6	1777.3	2350.1
291	1578.95	1799.9	1755.2	2325.7
292	1561.39	1800.3	1737.8	2309.6
293	1547.87	1793.3	1730.1	2303.1
294	1548.63	1784.8	1722.4	2318
295	1560.16	1791.7	1753.5	2356.8
296	1554.76	1800.2	1757.3	2376.1
297	1531.87	1788.6	1736.7	2354.7
298	1526.14	1775.7	1734.2	2363.5
299	1509.03	1753.5	1724.2	2359.4
300	1530.03	1768.2	1744.2	2365.7
301	1484.97	1727.9	1689.7	2311.1
302	1464.03	1709.6	1667.7	2281
303	1475.11	1704.6	1667.8	2285
304	1516.12	1740.6	1687.6	2311.6
305	1519.69	1745.7	1687.5	2312.6
306	1529.97	1751.7	1684.9	2312.6
307	1516.44	1747.3	1674.2	2298.4
308	1515.53	1757.8	1711.4	2313
309	1543.89	1774.2	1780.5	2381.9
310	1534.72	1774.4	1779	2362.2
311	1538.66	1788.3	1779.3	2372.2
312	1536.71	1788	1763.7	2337.7
313	1523.83	1779.1	1756.8	2327.5
314	1527.1	1792.8	1774.2	2340.6
315	1530.2	1812	1802	2370.9
316	1601.5	1872.1	1873.6	2422.1
317	1580.29	1851.4	1836.2	2370
318	1595.09	1873.4	1859.8	2378.3
319	1579.47	1889.6	1852.7	2483.9
320	1600.59	1897.5	1882.9	2567
321	1566	1888.8	1826.1	2560.1
322	1557.01	1900.4	1832.8	2586
323	1542.74	1913.4	1828.9	2580.5
324	1536.3	1909.9	1829.5	2621.2
325	1510.66	1910.8	1843.5	2601
326	1481.03	1879.2	1770.3	2560
327	1483.83	1880.2	1731.9	2565.5
328	1470.09	1878.3	1736.7	2553
329	1484.78	1885.2	1724	2572.3
330	1475.41	1867.6	1683.3	2549.7
331	1402.34	1788	1611	2446.3
332	1421.49	1820.5	1612.5	2488.4
333	1434.61	1858.2	1654.2	2517.1
334	1446.32	1870.3	1673.9	2538.8
335	1437.65	1878.4	1657.3	2541.2
336	1441.57	1881.5	1655.1	2557.2
337	1471.64	1893.2	1685.1	2584.7
338	1453.95	1889.3	1667.9	2574.7
339	1453.79	1877.3	1650	2546.6
340	1458.02	1884	1664.2	2563.9
341	1479.59	1904.7	1679.1	2562.2
342	1504.89	1922.7	1731.3	2617
343	1496.54	1908.5	1722.2	2645.7
344	1511	1911.4	1730.7	2658.1
345	1528.86	1921.1	1766.4	2669.7
346	1534.02	1930.8	1770.7	2661.6
347	1536.6	1927.8	1774.5	2669.8
348	1508.19	1908.3	1749.9	2650.4
349	1493.54	1905.9	1730.9	2642.3
350	1489.68	1911.1	1742.4	2658.3
351	1482.44	1921.6	1742.4	2687.8
352	1483.34	1933.6	1786.9	2705.6
353	1470.57	1942	1804.1	2691.7
354	1484.84	1951.5	1804.7	2711.1
355	1487.71	1955.7	1793.6	2702.7
356	1508.63	1957.4	1786.7	2695.4
357	1515.27	1962.3	1798.5	2714.6
358	1509.84	1946.1	1798.5	2696.8
359	1542.28	1950.2	1821.5	2726.4
360	1541.79	1929.7	1796.8	2697.5
361	1542.48	1913.4	1772.7	2679.6
362	1550.27	1889.5	1764.4	2679.2
363	1550.27	1882.8	1759.2	2704
364	1543.37	1895.4	1722.3	2706.2
365	1547.84	1897.9	1724.2	2732.4
366	1523.62	1891.5	1674.8	2722.9
367	1526.68	1880.1	1720.6	2727.1
368	1513.42	1887	1721	2709.6
369	1523.02	1891.4	1739.7	2741.8
370	1529.69	1914.6	1749.7	2760.1
371	1545.12	1931.2	1771.4	2778.8
372	1546.82	1929.2	1792.3	2792
373	1528.12	1924.3	1783.3	2764.1
374	1530.65	1927	1799.4	2771
375	1526.25	1935	1781.7	2759.4
376	1519.48	1955.4	1788.6	2754.5
377	1506.65	1962.2	1765.9	2769.8
378	1504.3	1980.7	1791.2	2750.7
379	1480.65	1987.7	1769.5	2726.5
380	1476.7	1993.7	1758.7	2716.2
381	1478.07	2015.7	1738.3	2721.8
382	1479.62	2005	1744.8	2717.9
383	1477.55	2023.9	1736.7	2732.8
384	1472.59	2028.5	1735.2	2740.3
385	1495.6	2044.9	1760.1	2789.7
386	1517.45	2045.8	1786.3	2807.7
387	1520.93	2057.3	1824.4	2842
388	1527.06	2061.7	1821.1	2827.4
389	1527.06	2061.7	1854.6	2827.5
390	1527.06	2061.7	1854.6	2827.5
391	1547.51	2092.3	1857.5	2827.5
392	1545.82	2090.1	1870.3	2847.8
393	1538.43	2105.4	1858.8	2832.5
394	1538.43	2105.4	1857.8	2846.5
395	1538.43	2105.4	1857.8	2846.5
396	1538.04	2117.7	1843.1	2861.5
397	1554.03	2128.2	1850.8	2833.6
398	1551.17	2124.7	1859.6	2826
399	1538.37	2079.9	1844.5	2816.5
400	1529.1	2074.9	1852.6	2799.2
401	1522.26	2046.4	1814.6	2773.4
402	1533.79	2079.8	1796.8	2757.9
403	1510.18	2076.7	1782.5	2745.3
404	1526.91	2104.5	1803.5	2759.2
405	1555.52	2101.3	1827.1	2765.1
406	1581.49	2084	1837.5	2763.1
407	1572.61	2063.9	1837.7	2737.6
408	1572.69	2062.7	1818.8	2748.7
409	1580.64	2089.9	1812.2	2773.3
410	1593.35	2102.9	1820.4	2781.2
411	1571.28	2086	1779.9	2771.9
412	1575.59	2085.9	1792.6	2835.7
413	1561.78	2064.1	1777.4	2832.5
414	1572.68	2072.7	1780.6	2816.9
415	1574.04	2091	1772.2	2807.2
416	1590.33	2120.2	1785.9	2851.6
417	1584.14	2120.4	1787.3	2834.4
418	1605.91	2117.6	1824.1	2873.8
419	1615.98	2123.7	1854.4	2865.9
420	1643.83	2132.2	1908.2	2862.9
421	1646.85	2137	1904.7	2870
422	1639.12	2134.8	1894.1	2831.3
423	1642.8	2121.4	1893.3	2816.4
424	1659.07	2127.5	1905.6	2834.3
425	1649.64	2135.5	1912	2843
426	1674.93	2144.8	1899.5	2845.9
427	1651.6	2131	1878.2	2812.2
428	1656.35	2112.9	1905	2814
429	1670.9	2131.3	1926.5	2837.7
430	1683.3	2117.8	1937.2	2840
431	1679.41	2096.1	1959.2	2838.3
432	1658.09	2051.5	1944.1	2818
433	1652.92	2065.7	1953.4	2817
434	1661.96	2061	1944.6	2828.7
435	1680.02	2100.6	1983.7	2868
436	1691.37	2120.5	1998.8	2882.6
437	1701.46	2130.9	2001.5	2882.3
438	1690.48	2142.4	1995.2	2918.6
439	1685.46	2139.5	1986.8	2904.8
440	1686.15	2134.6	1995.1	2916.6
441	1702.27	2132.2	2004.3	2957.3
442	1711.91	2150.1	2009.7	2949.9
443	1714.48	2157	1992.4	2956.7
444	1708.65	2165	1988.9	2953.4
445	1688.74	2127.2	1965.2	2915.9
446	1705.05	2157.2	1986	2922.4
447	1700.28	2150.8	1975.3	2919.3
448	1689.71	2139.1	1967.3	2889.9
449	1696.38	2154.7	1963.5	2883.3
450	1686.57	2182.4	1962.7	2900.1
451	1656.59	2161.3	1939.3	2863.9
452	1653.2	2166.3	1952.2	2861.1
453	1666.72	2146.8	1954.6	2860.6
454	1663.27	2135.7	2001.4	2852.8
455	1667.26	2160.9	2025.8	2852.9
456	1675.18	2175.7	2033.9	2846.5
457	1686.64	2188.9	2035.9	2861
458	1676.84	2190.3	2031.4	2878.7
459	1670.04	2188.4	2005.9	2878.4
460	1657.06	2190.3	1990.8	2869.9
461	1658.36	2184	1974.7	2838.8
462	1667.64	2196	1995.3	2832.2
463	1654.6	2184.9	1984	2822.1
464	1658.13	2188.3	1986.9	2821.8
465	1658.13	2188.3	1986.9	2821.8
466	1658.13	2188.3	1986.9	2821.8
467	1671.54	2181.7	2018.1	2846.8
468	1674.95	2165.7	2015.4	2842.1
469	1674.67	2160.5	1988.6	2839.7
470	1678.65	2162.9	1986.7	2824.4
471	1687.14	2166.3	1968.9	2830
472	1680.06	2170.8	1949.3	2856.1
473	1666.49	2178.1	1931.9	2869.6
474	1680.01	2177.3	1944.5	2881.1
475	1656.03	2162.3	1916.6	2843.8
476	1643.53	2140.4	1911.6	2822.3
477	1636.59	2124.7	1927.4	2832.7
478	1630.88	2138.2	1942.5	2797.3
479	1618.6	2123.2	1920.6	2786.8
480	1626.83	2129.7	1939	2813.1
481	1632	2152.8	1937	2813.1
482	1619.92	2160	1923.6	2812.6
483	1628.88	2165.8	1926.3	2796.5
484	1617.74	2165.4	1920.5	2786.3
485	1607.7	2162.6	1878.6	2793.7
486	1616.45	2179.1	1877.2	2829.7
487	1613.46	2191.1	1854.5	2836.1
488	1632.99	2191.5	1872.7	2860.8
489	1636.02	2183.3	1879.9	2849.3
490	1632.35	2186.3	1851.7	2847
491	1630.37	2205.2	1835.7	2858.1
492	1619.26	2227.2	1846.4	2847.3
493	1606.64	2227	1836.8	2819.7
494	1606.64	2227	1836.8	2816.8
495	1613.98	2232.9	1836.8	2812.2
496	1608.58	2237.4	1861.4	2825.6
497	1623.05	2243.5	1891.1	2837.7
498	1617.18	2247.5	1890.4	2846.9
499	1633.18	2267.1	1904.6	2855.3
500	1627.21	2271.6	1888.7	2840.7
501	1627.21	2271.6	1888.7	2840.7
502	1625.59	2253.8	1872.8	2849.2
503	1628.53	2259.8	1875.8	2863
504	1630.56	2269	1867.9	2852.8
505	1638.47	2284.2	1859.7	2829.9
506	1660.88	2309.7	1887.9	2844.8
507	1662.28	2294.5	1893.7	2844.4
508	1679.69	2312.5	1915.2	2866.9
509	1679.69	2309.2	1911.2	2860
510	1685.85	2308.6	1920.4	2861.8
511	1686.44	2293.8	1916.8	2885.5
512	1684.57	2274	1897.9	2870
513	1689.93	2294.6	1918.8	2883
514	1681.47	2323.4	1900.3	2875.7
515	1687.14	2318	1910.3	2879.4
516	1697.26	2329.5	1929.2	2903.4
517	1698.33	2335	1935.3	2907.6
518	1690.96	2323.9	1942.4	2900.7
519	1692.16	2335.8	1963.3	2894.7
520	1699.52	2347.3	1960.8	2887.5
521	1712.33	2369.8	1991	2897
522	1703.05	2371.9	1977.5	2886
523	1700.93	2376.2	1971.9	2900
524	1698.36	2375.5	1960.2	2888.8
525	1697.39	2368.8	1941.2	2857.7
526	1694.83	2364.4	1925.4	2838.5
527	1705.66	2390.9	1935.1	2848.1
528	1739.48	2372	1943.7	2848.3
529	1798.63	2397.1	1980.4	2845.9
530	1798.36	2403	1985.7	2843.2
531	1808.74	2408.7	1992.2	2830.9
532	1806.52	2418.1	1991.2	2837.1
533	1815.63	2410.5	1991.2	2832.3
534	1807.12	2399.9	1963.1	2831.7
535	1829.36	2396.4	1974.9	2833
536	1835.09	2381.8	1981.7	2842.9
537	1826.45	2324.5	1968.4	2823.9
538	1821.28	2313.7	1947.5	2814.1
539	1828.53	2340.2	1965.7	2820.1
540	1830.61	2350.5	1995	2827.7
541	1859.49	2388.7	2006.2	2844.2
542	1846.02	2398	1998.1	2879.4
543	1832.2	2408.7	1989.5	2884.2
544	1823.4	2401.5	2036	2917.6
545	1823.07	2400.9	2085.9	2926.5
546	1818.1	2400.7	2129	2941.7
547	1857.36	2429.8	2110.6	2945
548	1861.22	2431.5	2101.4	2941.3
549	1870.8	2424.9	2115.3	2943.4
550	1878.94	2423.3	2149.8	2969.8
551	1870.24	2420.5	2138.5	2986.4
552	1864.51	2384.5	2139.8	2971.6
553	1894.56	2411.1	2167.4	3006.1
554	1908.69	2449.5	2161.9	3009.1
555	1917.69	2461	2148	3010.1
556	1903.44	2478.7	2148	3008.3
557	1918.75	2464.9	2136.3	3025
558	1930.29	2488	2160.8	3073.6
559	1937.77	2480.6	2139.2	3065.5
560	1909.53	2474.5	2128.2	3057.6
561	1893.48	2467.3	2111.4	3042
562	1907.65	2472.4	2123.4	3049.3
563	1915.59	2499.7	2159.3	3079.2
564	1890.58	2475.2	2173.6	3079.2
565	1909.54	2478.6	2183.9	3100.6
566	1929.56	2481	2205.7	3100.6
567	1931.88	2488.5	2216.5	3100
568	1923.67	2470.4	2191.9	3085.1
569	1928.63	2463.8	2185.1	3072.6
570	1920.43	2438.8	2156.1	3057.3
571	1911.15	2392.5	2158	3055.4
572	1878.77	2403.4	2137.3	3038.6
573	1870.32	2397.9	2129.4	3035.4
574	1870.46	2382.1	2108.8	3031.2
575	1868.28	2363.6	2108.4	3037
576	1874.38	2365.6	2119.1	3024.8
577	1869.25	2388.3	2134.1	3028
578	1852.81	2361.8	2078.5	2989.4
579	1862.62	2374.4	2075.6	3003.9
580	1884.67	2385.2	2099.5	3005.5
581	1922.69	2418.4	2107.4	3004.5
582	1922.05	2431.8	2094.4	3001.6
583	1899.54	2414.6	2080	3007.5
584	1902.14	2425.8	2057.5	3001.3
585	1890.18	2445.9	2092.6	3005.2
586	1914.4	2482.4	2108.6	3026.3
587	1915.61	2478.3	2120	3036.9
588	1908.97	2485.4	2126.8	3030.1
589	1910.23	2473.1	2114.6	3037.5
590	1920.46	2481.6	2116.7	3039.3
591	1934.99	2490.3	2128.7	3067.7
592	1973.45	2521.3	2158.8	3085.2
593	1994.09	2534.8	2164.5	3100.8
594	1991.95	2528	2147.4	3092.4
595	2015.71	2533.6	2156.4	3108.6
596	2009.28	2548.5	2138.7	3102.2
597	2004.11	2552.5	2126.9	3094.7
598	1999.6	2571	2127.3	3080.9
599	1995.35	2586.4	2113.9	3086.3
600	2023.26	2612.6	2139.3	3120.8
601	2032.25	2663.6	2145	3137.6
602	2036.93	2660.7	2147.3	3129.6
603	2029.87	2668.4	2149.7	3156.3
604	2048.05	2690.1	2199.7	3188.3
605	2083.62	2701.4	2231.9	3199
606	2061.18	2685	2227.7	3184.8
607	2048.75	2700.2	2210.4	3165.3
608	2040.97	2715.9	2192	3154.3
609	2053.66	2720.9	2196	3163
610	2064.98	2723.2	2182	3171
611	2068.51	2727.1	2182	3164.4
612	2086.4	2742.9	2169.7	3164.1
613	2086.22	2749.9	2171.2	3162.3
614	2057.1	2706.6	2136	3149
615	2013.65	2654.2	2081	3085.6
616	2007.5	2675.3	2084.8	3077.6
617	2040.74	2727.1	2112.9	3096
618	2020.11	2742.1	2087.3	3098.5
619	2021.81	2720.1	2087.3	3099.7
620	2023.06	2721.1	2096.9	3099.1
621	2047.2	2717.4	2117.9	3093.3
622	2070.17	2712.3	2115.9	3097.5
623	2070.17	2711.1	2148	3120
624	2075.99	2727.1	2149.7	3125.5
625	2072.13	2733.9	2145.2	3108
626	2020.36	2696.5	2082.6	3070.6
627	2027.99	2702.1	2071.5	3069.3
628	2036.45	2717.8	2070.6	3067.2
629	2057.8	2726.8	2118.4	3093.1
630	2045.25	2741.9	2120.6	3111.4
631	2052.09	2738.2	2119.3	3135.8
632	2052.92	2738.5	2110.1	3166.9
633	2089.77	2774.3	2154	3233.2
634	2099.76	2787.2	2160.5	3223.9
635	2128.3	2819	2188.4	3234.2
636	2118.01	2836.4	2186.7	3237.3
637	2127.39	2834.8	2176.1	3237.3
638	2165.95	2843.8	2205.3	3277.4
639	2166.58	2858.4	2211.4	3271.6
640	2165.5	2861.2	2198.1	3261.3
641	2163.83	2876.9	2196.3	3254.6
642	2128.07	2867.8	2156.5	3248.4
643	2129.52	2850.6	2162.6	3278.8
644	2144.03	2867.7	2160.3	3311.2
645	2154.76	2889.5	2196.4	3337.1
646	2188.18	2909	2223.5	3364.9
647	2183.78	2918	2215.9	3342.4
648	2209.17	2942.4	2225.8	3355.7
649	2227.63	2967.4	2243	3396.5
650	2227.63	2967.4	2251.5	3412.3
651	2266.7	2972.6	2276.6	3412.3
652	2236.91	2930.9	2264.6	3412.3
653	2229.62	2934.2	2281.9	3462
654	2255.29	2957.6	2281.2	3428.8
655	2255.29	2957.6	2268.2	3418.4
656	2274.62	2996.2	2290.6	3418.4
657	2249.85	2999.2	2274.3	3408.5
658	2233.61	3009.4	2249.6	3379.2
659	2220.63	3021.9	2275.1	3403
660	2224.95	3042.9	2307.6	3446
661	2225	3015.9	2317.3	3440.6
662	2228.1	3026.6	2331.3	3413.8
663	2182.06	2999	2281.9	3372
664	2142.37	2949.9	2252.2	3360
665	2151.05	2990.6	2262.3	3400.6
666	2115.56	3011.1	2234.8	3407.8
667	2130.35	3037.5	2247.4	3437
668	2132.52	3049.4	2274.7	3475.1
669	2098.36	3045.9	2257.8	3470
670	2073.94	3039.3	2244	3484.2
671	2107.29	3041.3	2274.5	3481.4
672	2090.78	3066.5	2278.3	3444
673	2128.66	3091.3	2282.4	3436.1
674	2123.31	3095.2	2281	3427.3
675	2156.61	3140.7	2313.2	3447.4
676	2192.6	3178.4	2334.4	3491.8
677	2181.88	3148.7	2331.3	3481.5
678	2184.05	3169.1	2355.9	3520.3
679	2137.08	3151.9	2322	3491.5
680	2143.9	3166.6	2329.2	3475.4
681	2095.11	3089.8	2287.1	3419.1
682	2099.57	3097.2	2299.9	3440.2
683	2116.43	3054.2	2302.1	3429.1
684	2119.69	3012.2	2296.8	3407
685	2108.77	3012.2	2275.1	3378.9
686	2101.93	2947.1	2281.6	3363.5
687	2130.71	2947.1	2258	3393.2
688	2135.25	2947.1	2258	3417.7
689	2162.29	3033.4	2281.2	3425.3
690	2133.85	3025.9	2251.8	3382.6
691	2108.06	2997.6	2215.2	3350.3
692	2113.64	2982.8	2226.7	3333.7
693	2140.25	3027.5	2252	3341.9
694	2082.9	2958.4	2208.3	3267.5
695	2075.33	2929.3	2199	3281.2
696	2103.24	2888.2	2238.1	3328.1
697	2057.2	2847.4	2183.1	3270.6
698	2018.69	2768.5	2144.7	3248.1
699	2044.45	2803.4	2144.7	3246.5
700	2076.76	2865.2	2178.7	3278
701	2132.12	2918.7	2219.9	3305.9
702	2125.47	2902.4	2216.4	3264.4
703	2118.01	2858.5	2199.7	3246.7
704	2124.51	2861.2	2184.6	3233.9
705	2101.89	2831.6	2175	3191.9
706	2169.4	2870.5	2215	3233.4
707	2178.91	2906.9	2258.5	3267.4
708	2168.11	2887.1	2242.7	3242.9
709	2160.45	2887.7	2247.8	3255.7
710	2140.39	2843.5	2221.3	3218.1
711	2130.55	2804.3	2202.7	3198
712	2141.7	2824.7	2200.7	3201.5
713	2162.96	2857	2200.2	3155.3
714	2144.36	2850.8	2152.6	3121.7
715	2144	2831.8	2136.6	3129
716	2167.72	2862.4	2144.5	3129.5
717	2162.82	2827.4	2123.4	3123.4
718	2151.84	2814.5	2083.9	3092.4
719	2142.88	2794.8	2081.9	3086.4
720	2142.88	2794.8	2081.9	3086.4
721	2142.88	2794.8	2081.9	3086.4
722	2177.09	2807.3	2100.3	3116.2
723	2184.89	2830.2	2128.2	3131.5
724	2202.57	2860.9	2119.6	3129
725	2203.18	2873.4	2114.8	3120.8
726	2224.85	2884	2145.3	3149.4
727	2211.19	2887.8	2148.6	3159.1
728	2215.19	2877.7	2152.4	3145.8
729	2198.24	2843.7	2139.1	3131.7
730	2211.92	2872.9	2159.6	3168.3
731	2218.37	2869.1	2160.1	3138.2
732	2193.89	2837.1	2136	3128
733	2194.09	2818.7	2102.7	3098.3
734	2194.41	2781.6	2092	3101.2
735	2218.13	2787.9	2135.2	3133.7
736	2208.68	2763.5	2116.3	3106.1
737	2241.36	2776.2	2130.9	3125.3
738	2256.98	2791.3	2147.3	3150
739	2237.82	2768.9	2150.3	3129.9
740	2252.51	2736.3	2166	3125.3
741	2266.72	2765.2	2186.2	3125.3
742	2261.71	2755.9	2179	3100
743	2241.85	2705.6	2141.6	3070.5
744	2249.78	2682.2	2162.6	3106
745	2233.55	2641.4	2158.2	3106
746	2218.77	2569.5	2139.4	3097.8
747	2241.34	2629	2165	3136.3
748	2248.02	2633	2176.7	3130.5
749	2248.02	2633	2176.7	3137.8
750	2257.33	2678.7	2187	3119.2
751	2272.96	2709	2187.8	3115.6
752	2268.11	2727.1	2195.2	3123.5
753	2254.21	2740.6	2184	3116.5
754	2245.79	2725.8	2165.4	3122.8
755	2238.97	2732.7	2155.4	3127.3
756	2238.97	2732.7	2155.4	3108.4
757	2188.01	2692	2133.3	3089.1
758	2137.56	2673.1	2084.4	3020.7
759	2146	2689.2	2091.9	3019.7
760	2112.8	2711.9	2050.7	2966.4
761	2129.76	2742.9	2052.5	2966.4
762	2137.34	2722.9	2029.9	2970.5
763	2113.62	2731.5	1979.7	2931.9
764	2120.23	2725.9	2007.4	2980.8
765	2158.88	2728.4	2041.7	2997.8
766	2163.59	2781.4	2037.2	3009.4
767	2131.8	2778.1	2023.7	3004.8
768	2143.93	2801.1	2046.8	3038.2
769	2131.14	2777.2	2028.4	3028.9
770	2143.58	2763.8	2020.7	3055.9
771	2084.42	2744.2	1977.7	3016.3
772	2088.44	2740	1992	3039.6
773	2073.21	2701.8	1966.4	3045.8
774	2047.29	2666.6	1942.8	3030.1
775	2031.8	2627.6	1936	3022.9
776	1986.42	2545	1903	2971.1
777	1957.08	2544.2	1890.8	2940.2
778	2004.93	2595.7	1917	2960.4
779	2032.52	2626.7	1939	2942.4
780	2005.07	2577.2	1907	2876.6
781	2000.48	2561.4	1911.6	2899.9
782	2022.25	2604.4	1925.8	2909
783	2042.45	2631.2	1936.3	2946.3
784	2020.85	2608.8	1892	2919.2
785	2040.69	2588.9	1872.9	2936.4
786	2061.7	2636.4	1866.2	2970.4
787	2034.64	2609.7	1878.7	2965
788	2031.33	2598.9	1889	2946.7
789	2049.1	2590.5	1920.8	2964.4
790	2047.83	2560.3	1920.8	2962.4
791	2069.46	2562.5	1949.8	2983.8
792	2048.57	2508	1942.1	2963.9
793	2051.25	2474.5	1974.6	3005.3
794	2070.71	2528.3	1974.6	3050.4
795	2103.54	2514.9	1974.6	3074.8
796	2116.96	2494.7	2025.1	3082
797	2129.86	2521.6	2052.3	3091.3
798	2120.97	2562.3	2043.7	3077.2
799	2126.75	2579.4	2053.8	3095.1
800	2148.23	2599.2	2041.4	3114.7
801	2144.21	2601.2	2059.8	3106.1
802	2163.32	2604.4	2076.8	3117.2
803	2135.93	2544.9	2055.7	3082.3
804	2134.12	2559.3	2053.4	3095.9
805	2152.19	2579.5	2075	3082.6
806	2161.5	2579.5	2069.6	3097.4
807	2193.63	2629.7	2117.2	3157.5
808	2190.83	2620.7	2115	3160.4
809	2176.66	2615.3	2096.5	3150.5
810	2188.81	2600.8	2107.1	3167.5
811	2182.32	2617.5	2106.3	3171.9
812	2160.56	2585.5	2074.5	3168.6
813	2166.51	2591.4	2064.2	3167
814	2156.31	2588.8	2038.9	3138.2
815	2133.74	2580.5	2007	3142.3
816	2134.34	2570.6	2007	3142.2
817	2152.65	2588.7	2012.4	3147.3
818	2166.56	2599.3	2035	3190.3
819	2151.44	2582.7	2010.5	3182.6
820	2143.84	2557	2001.3	3191.4
821	2113.37	2532.4	1972.6	3171.3
822	2121.25	2530.9	2000.6	3175.1
823	2132.98	2541.1	2006.3	3205.2
824	2153.48	2551.1	2026.5	3234.2
825	2190.58	2581.3	2062.7	3265.1
826	2215.72	2635.2	2075.3	3265.1
827	2205.82	2635.7	2060.4	3249.6
828	2207.09	2645.6	2069.1	3251.3
829	2185.78	2628.4	2034.9	3216.5
830	2197.38	2672	2020.4	3222.7
831	2173.6	2674.5	1998.2	3241.5
832	2158.07	2652.4	1961.5	3205.4
833	2167.68	2662.5	1964.2	3203.9
834	2178.1	2664.1	1983.4	3180
835	2155.58	2642.1	1948.8	3139.3
836	2155.81	2643	1966.8	3128.8
837	2157.15	2658.8	1969.4	3121.4
838	2118.17	2637.7	1952.9	3079.8
839	2129.36	2628.6	1977.3	3112.7
840	2097.45	2603.3	1924.6	3065.1
841	2100.55	2614.7	1922.9	3079.1
842	2059.15	2593	1919.3	3037.3
843	2067.17	2594	1897.2	3014.8
844	2072.81	2602.9	1899.4	3021.2
845	2097.33	2609.1	1927.4	3028.2
846	2057.83	2586.1	1902.7	2999.8
847	2056.89	2581	1901.3	3008.5
848	2070.36	2590	1905	3038.7
849	2016.08	2558	1876.2	2992.5
850	2002.3	2534.4	1879.3	3026.3
851	2002.3	2499.5	1852.8	2983.5
852	1988.67	2522.5	1876.1	3001.8
853	1946.49	2480.4	1833.7	2956.3
854	1965.41	2484.8	1843.4	2984.4
855	1977.67	2496.9	1856.4	2998.7
856	2048.56	2553.4	1898.3	3032.3
857	2087.71	2570.2	1919	3073
858	2072.68	2562.7	1918.1	3100.5
859	2108.08	2593.3	1955.6	3141.9
860	2118.52	2585.3	1933	3106.7
861	2095.58	2575.6	1906.4	3120.2
862	2069.58	2542.5	1898.6	3085.3
863	2055.94	2529.8	1876.3	3060.8
864	2048.15	2530.9	1867.4	3063.2
865	2016.6	2508.6	1842.1	3032.8
866	2022.64	2525.2	1841.6	3029.1
867	1995.85	2494.7	1824.4	3000.9
868	2009.45	2477.2	1831.5	2999.9
869	2026.37	2458.6	1858.1	3029.6
870	2064.86	2490.5	1905.7	3083.8
871	2061.58	2506.5	1905.7	3097.4
872	2066.18	2503.9	1905.7	3096.3
873	2039.91	2500	1873.6	3081.3
874	2061.37	2534.8	1911.1	3104.4
875	2069.39	2541	1931.7	3097.6
876	2043.3	2557.9	1906.1	3065.8
877	2056.36	2543.9	1921.5	3063.8
878	2090.78	2590.4	1943.9	3099.6
879	2098.04	2602.7	1948.4	3103.5
880	2073.67	2597.8	1948.4	3075.9
881	2091.04	2590.9	1941.1	3095.3
882	2112.21	2591.9	1954.5	3135.4
883	2112.21	2609.4	1950.2	3146.5
884	2091.94	2600.9	1927.5	3127.5
885	2089.48	2606.5	1926.5	3131
886	2097.2	2607	1927.8	3121
887	2073.29	2571.8	1911.4	3078.7
888	2040.05	2546.1	1893.1	3027.5
889	2058.79	2568.6	1934.7	3036.6
890	2056.27	2572.5	1945.9	3033.5
891	2050.82	2579.4	1952.4	3047.1
892	2036.24	2584.7	1940	3061.1
893	2057.08	2594.9	1975.9	3081.4
894	2045.54	2576	1964	3039.6
895	2042.38	2577.5	1982.7	3017.3
896	2067.26	2611	1973.7	3033.5
897	2046.99	2589.1	1969	3016.1
898	2044.04	2584.3	1969.8	3012.5
899	2041.85	2589.3	1954.1	3013.8
900	2024.19	2576	1937	2977.3
901	2003.64	2562.8	1919.3	2943.4
902	2019.13	2566	1917.1	2946.4
903	2040.94	2581.4	1930.2	2980.6
904	2054.23	2598	1931.1	2973.4
905	2069.9	2604.7	1924.2	3013.6
906	2066.59	2600.7	1928.1	3034.4
907	2080.16	2614.7	1924.7	3058.1
908	2095.5	2636.1	1940.9	3070.4
909	2102.25	2649.8	1952.1	3091.7
910	2100.98	2651	1949.9	3083.4
911	2100.98	2651	1966.6	3083.4
912	2110.77	2673.5	1956	3083.4
913	2097.34	2656.2	1927.8	3095.8
914	2074.68	2628.8	1894.2	3065.6
915	2097.51	2628.8	1881.2	3065.5
916	2079.19	2628.8	1881.2	3065.5
917	2068.92	2612.3	1885.9	3065.7
918	2072.9	2632.4	1901.8	3051.6
919	2051.46	2613.1	1871.5	3032.3
920	2058.2	2622.3	1886.4	3065
921	2053.41	2617.3	1864.2	3055.8
922	2062.08	2600.4	1859.2	3060.4
923	2061.76	2597	1849.1	3049.4
924	2059.68	2600.5	1844.1	3033.2
925	2064.14	2600.2	1854	3048.3
926	2088.25	2591.6	1872.8	3076.7
927	2081.39	2582.8	1856.9	3054
928	2085.62	2593.6	1860.3	3054.9
929	2079.6	2595.5	1837.1	3028.6
930	2050.86	2574.6	1813.3	2995.9
931	2013.03	2525.3	1772.8	2954.2
932	2027.67	2534.8	1780.2	2969
933	2026.97	2525.5	1802.5	2982.2
934	2040.79	2554.7	1826.3	3007.3
935	2030.56	2552.4	1814.1	3022.2
936	2026.68	2540.2	1813.4	2995.9
937	2024.82	2536.9	1797.9	2991.6
938	2047.44	2560.8	1827.8	3017.3
939	2038.46	2563.7	1816.1	3034.7
940	2077.94	2589.4	1842.4	3059.7
941	2085.08	2621.4	1872.1	3062
942	2093.01	2628	1870.4	3072.7
943	2087.78	2617.4	1850.9	3072.5
944	2117.8	2636.9	1874.4	3099
945	2127.56	2635.4	1869.4	3109.9
946	2118.96	2636	1850.1	3081.1
947	2128.33	2642.4	1856.1	3071.3
948	2135.49	2636	1861.9	3074.9
949	2112.06	2621	1835	3051.1
950	2119.29	2601	1822.5	3044.2
951	2101.98	2597.2	1802.2	3018.6
952	2101.82	2609.6	1805.6	3023.4
953	2096.26	2610	1804.4	3019.5
954	2126.44	2632.1	1827	3049.3
955	2117.59	2623.3	1805.7	3037.7
956	2106.05	2607.5	1802.2	3025.3
957	2097.85	2600.4	1776.9	3009.3
958	2127.21	2619.2	1808.4	3041.2
959	2116.64	2617.2	1807.4	3038.2
960	2094.16	2586.5	1795.2	3025.1
961	2069.95	2553.2	1773.3	3001.9
962	2041.26	2543.1	1748.6	2977
963	2029.38	2515.8	1756.8	2992.1
964	1989.2	2461.5	1727.1	2986.9
965	2008.85	2467.7	1743.1	3021.1
966	1974.14	2450.3	1721.8	3011.8
967	2022.5	2463.3	1769	3050.6
968	1995.22	2475	1738.6	3047
969	2016.15	2491.7	1785.8	3094.1
970	1979.52	2497.5	1788.8	3089.3
971	1984.99	2516	1811.6	3124.2
972	1984.15	2505.5	1813.8	3135
973	1978.07	2501.9	1818	3139.7
974	1935.08	2480.7	1795.7	3136.4
975	1935.87	2526.6	1817.3	3153.4
976	1928.82	2518.1	1836.1	3149.8
977	1911.7	2495.6	1837.2	3128.3
978	1918.85	2495	1852.4	3142.3
979	1949.76	2533.1	1893	3176.2
980	1914.69	2508.9	1859.5	3137.9
981	1934.96	2511.1	1864	3143.1
982	1965.68	2536.2	1882.8	3188.1
983	1972.59	2536.3	1872.9	3190.2
984	1976.52	2556.1	1890.2	3200.9
985	1978.71	2559.3	1900.4	3210.9
986	1980.81	2561.2	1880.9	3204.2
987	1979.26	2563.1	1869.3	3190.9
988	1991.08	2562.4	1871.9	3209.8
989	1982.99	2560.3	1881.1	3208.8
990	1982.99	2560.3	1881.1	3208.8
991	1982.99	2560.3	1881.1	3208.8
992	1954.62	2547.1	1855.7	3194.5
993	1943.88	2516.8	1874.9	3170.1
994	1955.33	2544.2	1882	3174.7
995	1987.7	2560.8	1928.4	3199.9
996	1978.97	2554.8	1918.5	3209.3
997	2007.57	2561.1	1945.9	3214.9
998	2028.52	2574.4	1942.3	3226.2
999	2024.25	2567	1931	3217.6
1000	2017.95	2597.2	1918.5	3216.7
1001	2017.95	2597.2	1918.5	3220.4
1002	2036.47	2621.4	1936.9	3248.2
1003	2037.99	2618.6	1971.1	3262.6
1004	2034.15	2641.7	1946.2	3264.3
1005	2021.22	2650.5	1927.4	3251.7
1006	2030.65	2658.8	1927.4	3251.7
1007	2050.66	2655.6	1988.7	3261.2
1008	2064.41	2661.4	1996.7	3290.1
1009	2086.41	2701	2003.6	3317.9
1010	2102.4	2728.2	2017.3	3310.3
1011	2092	2739	1991.5	3310.7
1012	2109.36	2746.6	2001.3	3300.8
1013	2088.99	2739.8	2004.7	3297.4
1014	2083.8	2727.7	1989.8	3285.8
1015	2064.42	2701	1965.5	3261
1016	2096.87	2751.2	1979.5	3284.5
1017	2083.55	2750.4	1965.3	3291.8
1018	2105.88	2778.5	1960.7	3327.3
1019	2105.88	2778.5	1960.7	3328.2
1020	2065.71	2751.7	1919.1	3311.1
1021	2069.26	2762.5	1927.8	3311.1
1022	2081.46	2779.4	1927.3	3309.9
1023	2099.95	2786.4	1948	3319.4
1024	2119.24	2807.8	1960.8	3340.6
1025	2132.72	2805.3	1971.3	3345
1026	2132.72	2805.3	1971.3	3376.6
1027	2154.17	2809.7	1965.9	3380
1028	2136.72	2819.6	1974.7	3370.8
1029	2137.21	2806.8	1951.2	3380.8
1030	2107.16	2795.3	1897	3337.7
1031	2127.79	2802.3	1907.8	3344.6
1032	2124.25	2800.9	1922.8	3348
1033	2124.84	2798.1	1893.7	3339.8
1034	2130.78	2800.2	1920.7	3370.4
1035	2125.06	2775.4	1905	3366.1
1036	2154.13	2803	1918.4	3381.3
1037	2140.36	2805.6	1896.1	3377.2
1038	2144.88	2816.8	1902.8	3378.3
1039	2144.88	2843.3	1925.2	3403.8
1040	2144.88	2837.7	1895.1	3379.4
1041	2137.36	2830.3	1902.4	3309.2
1042	2128.99	2845.1	1877.7	3313.2
1043	2091.3	2836.8	1865.5	3282.7
1044	2094.68	2845.6	1861.9	3294
1045	2089.04	2825.3	1858.8	3314.6
1046	2099.68	2827.5	1879.7	3323.7
1047	2110.13	2847.5	1889.4	3349.2
1048	2117.63	2843.7	1907.8	3394.9
1049	2111.35	2833.7	1889.5	3388.3
1050	2163.37	2848.4	1950.8	3462.9
1051	2184.39	2842.9	1949.4	3455
1052	2194.15	2847.3	1961.3	3464
1053	2200.32	2867.9	1961.7	3450.6
1054	2193.72	2869.7	1948.3	3447.2
1055	2191.25	2863.4	1948.3	3429.2
1056	2201.36	2892.3	1951.5	3442.6
1057	2183.71	2875.1	1929	3420.7
1058	2195.31	2856.2	1931.2	3405.3
1059	2183.52	2822.2	1905.9	3400.4
1060	2196.54	2830.2	1908.9	3413.1
1061	2232.02	2836.6	1926.6	3431.6
1062	2232.23	2833.2	1941.3	3432.9
1063	2237.73	2827.1	1942.5	3454.3
1064	2239.36	2824.7	1947.9	3458.3
1065	2217.91	2833.1	1932.8	3468.9
1066	2222.51	2826.8	1920	3463.3
1067	2211.26	2826.8	1917.8	3449.9
1068	2249.6	2852.3	1960	3499.9
1069	2234.86	2814.3	1950.8	3475.6
1070	2236.68	2807.1	1957.1	3482.4
1071	2244.56	2800.6	1950.4	3483.5
1072	2236.89	2797.4	1954.7	3468.8
1073	2222.28	2781.3	1943.7	3468.3
1074	2236.72	2802.6	1949.2	3474.7
1075	2228.44	2820.1	1946.2	3467.5
1076	2208.41	2807.2	1946.2	3441.4
1077	2236.73	2838.4	1946.2	3444.4
1078	2251.64	2880.6	1970.4	3465.1
1079	2253.93	2880	1967.3	3470.6
1080	2265.86	2889.5	1971.6	3509.8
1081	2269.6	2886.7	1984.4	3535.7
1082	2258.97	2900.8	1963.3	3530.2
1083	2262.66	2896.8	1957.4	3515.9
1084	2253.91	2887.1	1939.2	3520
1085	2257.34	2893.8	1937.8	3524.9
1086	2240.31	2883.3	1890.1	3524.9
1087	2230.27	2887.3	1899.5	3502.6
1088	2251.3	2915.7	1921.4	3504
1089	2234.23	2908.8	1883.4	3477.8
1090	2242.76	2918.3	1881.7	3509.4
1091	2263.08	2952.7	1900.5	3522.7
1092	2266.57	2971.1	1902.5	3532.4
1093	2266.37	2999.6	1884.8	3557.7
1094	2263.27	2989.1	1861.7	3545.6
1095	2266.77	2989.2	1854.9	3554.5
1096	2268.26	2986.3	1869.7	3549.3
1097	2266.07	2990.5	1873.6	3535.9
1098	2300.72	3016.8	1898.2	3570.8
1099	2300.29	3011.6	1892.4	3565.4
1100	2305.58	3025.4	1880	3564.6
1101	2289.49	3008.1	1871.7	3533.3
1102	2306.66	3033.5	1882.5	3541.4
1103	2294.15	3029	1863.8	3561.5
1104	2275.72	3039.1	1853.9	3557.9
1105	2204.44	2994.7	1790.7	3514.8
1106	2212.97	3015.3	1800.6	3507
1107	2232.02	3045.5	1816.3	3523.3
1108	2190.9	3009.8	1791.8	3485
1109	2184.24	3000.6	1767.6	3479
1110	2201.27	3014.8	1788.4	3508.2
1111	2197.01	3039	1780.7	3520.2
1112	2197.01	3049	1800.7	3524.2
1113	2211.6	3036.5	1803.9	3544.1
1114	2191.54	3036.6	1800.3	3544.4
1115	2176.35	3054	1809.6	3526.5
1116	2157.41	3064	1785.7	3510.3
1117	2137.01	3050	1778	3460.1
1118	2153.56	3073	1794.4	3474.3
1119	2159.73	3083.7	1803.8	3523.8
1120	2206.11	3109.2	1817	3568
1121	2193.85	3116.3	1790.5	3557.3
1122	2185.52	3112.3	1779.7	3562.2
1123	2197.57	3135.4	1770.7	3593
1124	2176.09	3124.5	1757.3	3578.6
1125	2148.12	3120.4	1740.7	3551.4
1126	2116.86	3041.7	1721.1	3531.5
1127	2114.88	3062.3	1724.2	3535.3
1128	2140.74	3078.9	1764.1	3537.8
1129	2142.74	3080	1754.1	3519.6
1130	2112.01	3026.6	1742.4	3497.9
1131	2149.71	3057.9	1795.3	3510
1132	2165.76	3108.2	1814	3529.1
1133	2182.11	3128.5	1814	3518.7
1134	2180.49	3123.4	1828.7	3523
1135	2169.69	3137.6	1832.1	3500.4
1136	2168.57	3123.2	1822.6	3514.8
1137	2174.27	3133.8	1857.4	3522.4
1138	2184.05	3132.6	1866.3	3537.1
1139	2182.47	3150.1	1852.6	3541.6
1140	2174.78	3130.4	1839.8	3523.4
1141	2195.15	3121.4	1838.2	3536.8
1142	2197.34	3133	1838.2	3547.9
1143	2196.64	3124.8	1875.2	3571.4
1144	2199.29	3148.4	1905.1	3610.8
1145	2196.59	3152.5	1890.5	3609.2
1146	2204.01	3182.2	1881.4	3628.8
1147	2201.9	3183.9	1872.9	3604.1
1148	2194.53	3201	1875.5	3632.4
1149	2197.26	3209.2	1867.1	3602.5
1150	2210.92	3220.1	1891	3624
1151	2247.97	3251	1889.8	3649
1152	2242.91	3229.5	1870.3	3648.8
1153	2249.75	3245.9	1857.3	3655.5
1154	2254.95	3251.6	1828.3	3664.3
1155	2266.56	3261.2	1820.9	3664.3
1156	2261.08	3278.4	1774.9	3669.7
1157	2269.34	3278.5	1814.9	3664.2
1158	2274.94	3281.5	1834.8	3662.8
1159	2260.62	3245.7	1846.8	3639.5
1160	2277.7	3246.6	1856.3	3630
1161	2277.7	3261.6	1849.6	3652.1
1162	2278.64	3280.9	1848.9	3654.9
1163	2283.26	3273.4	1833.8	3662.4
1164	2286.21	3272.2	1875	3671.6
1165	2283.84	3289.8	1859.3	3642.6
1166	2240.24	3251.6	1820.5	3596.1
1167	2241.43	3217.7	1810.2	3576.9
1168	2268.07	3254.3	1831.2	3613.7
1169	2268.35	3255	1834.4	3633.3
1170	2280.81	3277.9	1873.4	3658.3
1171	2280.81	3277.9	1873.4	3658.3
1172	2280.81	3277.9	1866.7	3658.3
1173	2280.44	3317.1	1877	3676.4
1174	2273.9	3297.7	1879.1	3676.7
1175	2260.69	3297.7	1872	3689.3
1176	2260.69	3297.7	1872	3689.3
1177	2307.7	3297.7	1908.4	3687.9
1178	2326.18	3384.5	1943	3715.6
1179	2332.81	3395.8	1931.2	3714.1
1180	2315.66	3376.1	1917.7	3704.5
1181	2336.76	3368.1	1916.6	3720.6
1182	2351.47	3361.5	1916.3	3720.6
1183	2340.31	3314.8	1910.1	3671.5
1184	2330.98	3284.1	1897.9	3654.9
1185	2353.89	3292.9	1907.6	3657.3
1186	2361.38	3233.9	1924.4	3662.7
1187	2379.43	3254.8	1952.1	3710.6
1188	2375.63	3219.3	1966	3704.2
1189	2389.62	3257.8	1960.1	3748.7
1190	2400.58	3253.1	1964.3	3748.4
1191	2391.74	3249.9	1954.4	3754.2
1192	2393.12	3219	1934.1	3735
1193	2436.68	3221.3	1946	3758.2
1194	2437.02	3211.2	1950.2	3734.2
1195	2449.71	3191.4	1966.7	3734.7
1196	2437.7	3198.2	1980.7	3734.6
1197	2456.09	3236.8	2003.1	3735.3
1198	2463	3248.7	2021	3759.3
1199	2472.53	3279.9	2024.1	3752.8
1200	2459.81	3270	2022.2	3781.3
1201	2416.84	3221.7	1985.6	3746.6
1202	2437.98	3253.8	1988.5	3747.5
1203	2442.43	3262.7	1983.3	3726.1
1204	2411.49	3245.6	1956.2	3708.4
1205	2435.07	3242.7	1960.7	3716.3
1206	2428.59	3253.1	1967.7	3726.6
1207	2436.09	3260.1	1983.3	3747.6
1208	2427.77	3266.1	1956.4	3745
1209	2426.51	3272.2	1964.2	3779.8
1210	2423.6	3280.3	1952.5	3770.9
1211	2387.6	3270.6	1939.7	3744.3
1212	2373.01	3243.5	1932.4	3714.6
1213	2401.59	3253	1936.9	3725.6
1214	2421.93	3264.4	1953.3	3740
1215	2449.52	3296.2	1976.9	3740.3
1216	2438.73	3298.6	1960.9	3704.2
1217	2449.09	3309.9	1974.5	3715.9
1218	2486.95	3360.5	1996.9	3738.2
1219	2485.18	3354.8	1990.8	3727.6
1220	2488.85	3385.5	2017.2	3752.7
1221	2486.83	3400.6	2015.3	3768.6
1222	2472.52	3383.4	2001.9	3777.1
1223	2471.38	3408.3	2005.9	3758.9
1224	2479.38	3581.9	2008	3758.2
1225	2448.8	3549.7	1975.5	3710.3
1226	2419.72	3506.2	1948.9	3674.5
1227	2415.29	3540.5	1932.1	3639.5
1228	2417	3558.3	1944.3	3640.3
1229	2432.46	3578.4	1962.4	3681.8
1230	2458	3561.1	1950.1	3644.8
1231	2472.55	3583.6	1965	3669.6
1232	2484.74	3605.1	1967.2	3693
1233	2491.73	3611.1	1969.8	3685.4
1234	2505.32	3629.3	1976.9	3698.3
1235	2479.84	3647.7	1974.4	3707
1236	2514.8	3677	2003.8	3681.9
1237	2505.78	3658.1	2008	3660.9
1238	2523.81	3671	2030.5	3672.4
1239	2502.94	3640.3	2020	3672.6
1240	2489.35	3646.5	2044.8	3699.7
1241	2500.75	3654.3	2055.6	3718.4
1242	2508.11	3648.3	2070.4	3728.5
1243	2489.52	3606.7	2064	3725.1
1244	2498.75	3611.1	2075	3755.6
1245	2498.75	3611.1	2075	3755.6
1246	2498.75	3611.1	2075	3755.6
1247	2510.81	3594.4	2081.7	3758.6
1248	2525.59	3601.5	2093.9	3767.4
1249	2508.12	3566.9	2072.5	3744.2
1250	2526.74	3575.5	2074.7	3766.8
1251	2540.79	3589.6	2080.6	3790.5
1252	2547.32	3607.5	2097.3	3825.3
1253	2519.82	3603.9	2075.1	3805.6
1254	2524.18	3601.2	2086	3820.7
1255	2535.86	3628.1	2092.5	3857.1
1256	2549.27	3673.2	2116.5	3852.7
1257	2549.12	3647.3	2112	3833
1258	2524.84	3668.4	2122.1	3817.6
1259	2538.68	3668.1	2116.4	3819.3
1260	2539.88	3696	2138.4	3832.8
1261	2505.97	3658.2	2130.8	3809.2
1262	2492.63	3651	2146.8	3817.9
1263	2492.63	3651	2146.8	3806
1264	2465.49	3635.8	2136.8	3776.4
1265	2472.43	3611.2	2115.4	3751.6
1266	2473.52	3591.6	2090.4	3751.6
1267	2476.79	3583.6	2083.7	3723
1268	2466.21	3534.1	2083.7	3707.3
1269	2470.57	3521.6	2085.4	3728.3
1270	2499.02	3556.9	2114.8	3754.4
1271	2496.33	3557.8	2100.9	3739.2
1272	2528.2	3582.4	2122.1	3759.7
1273	2534.4	3572.5	2124.6	3776.2
1274	2534.4	3572.5	2124.6	3753.6
1275	2552.29	3593	2136.9	3789.6
1276	2541.98	3584	2120.6	3778.2
1277	2564.12	3587.3	2129.7	3789.4
1278	2548.79	3550	2103.5	3764.2
1279	2546.55	3547.4	2114.5	3747
1280	2549.53	3572.2	2117.7	3752.1
1281	2549.53	3572.2	2117.7	3752.1
1282	2559.15	3583.8	2132.9	3760.2
1283	2548.53	3558.2	2117.1	3775.7
1284	2535.78	3537.7	2108.4	3746.7
1285	2523.81	3556.1	2110.1	3747.8
1286	2543.99	3544.6	2121.1	3739.2
1287	2550.42	3568.1	2111	3755.2
1288	2551.03	3572	2115.4	3753.4
1289	2559.02	3585.5	2133.2	3760.3
1290	2536.03	3547.9	2102	3706.8
1291	2552.96	3575.8	2120.8	3728.8
1292	2571.1	3575.6	2137.5	3755.7
1293	2569.9	3600.9	2137.3	3769.2
1294	2566.13	3607.4	2126.2	3761.7
1295	2544.9	3593.9	2111.8	3753.6
1296	2549.71	3600.1	2113	3761.5
1297	2554.12	3628.3	2107.9	3756.4
1298	2546.04	3643.6	2100.7	3753.2
1299	2532.22	3655.4	2077.1	3727.5
1300	2547.78	3687.3	2084.2	3722.3
1301	2562.19	3701.5	2097.6	3710.8
1302	2578.36	3699.6	2118.4	3679.5
1303	2572.06	3723.5	2113.3	3695.5
1304	2551.8	3703	2112.9	3678.8
1305	2570.44	3732.9	2123.7	3711
1306	2573.44	3728.2	2118.8	3725.6
1307	2565.32	3750.8	2111.8	3725.7
1308	2566.32	3757	2114	3714.1
1309	2578.74	3771.3	2126.8	3760.6
1310	2568.79	3731.2	2098.8	3743.2
1311	2561.51	3732.8	2079.1	3741.5
1312	2562.24	3773.4	2076.6	3752.3
1313	2573	3788	2081.9	3765.8
1314	2561.95	3810	2073.4	3749
1315	2548.97	3785.8	2050.6	3728.3
1316	2529.5	3755.4	2029.5	3698.3
1317	2475.98	3678.1	1989.5	3632.3
1318	2497.69	3656.2	1995.1	3658.2
1319	2505.56	3649.2	2007.3	3693.4
1320	2498.35	3661.5	1992.8	3710.5
1321	2468.32	3566.1	1960.3	3681.3
1322	2488.82	3585.2	1982.2	3708.4
1323	2459.13	3482.6	1954.1	3668.8
1324	2464.51	3537.4	1974.7	3684.7
1325	2469.51	3537.8	1962.9	3673.3
1326	2472.25	3549.5	1961.1	3678.8
1327	2466.84	3518.2	1968.5	3668.5
1328	2491.5	3494.4	1995.9	3703.2
1329	2504.16	3494.4	2009.9	3734.4
1330	2520.26	3604.6	2023.4	3770.6
1331	2520.52	3623.3	2013.2	3788.3
1332	2527.73	3629	1999.3	3788.4
1333	2541.41	3662.6	1996.7	3811.1
1334	2534.63	3653.4	1997.4	3811.4
1335	2532.96	3643.2	1985.4	3810.7
1336	2529.14	3623.1	1978.2	3803.3
1337	2545.65	3630.2	1980.6	3823.4
1338	2544.61	3650.7	1979.5	3830.3
1339	2542.75	3646.3	1979.5	3837.4
1340	2567.96	3670.5	1979.5	3872.9
1341	2556.25	3664.4	1986.2	3863.7
1342	2562.12	3698.2	2019.3	3883.2
1343	2534.44	3683.8	2000.6	3872.1
1344	2559.42	3713	2017.8	3891.1
1345	2562.12	3725.4	2020.8	3907.5
1346	2554.42	3714.6	2020.4	3907.5
1347	2563.59	3722.4	2018	3905.7
1348	2556.64	3692.6	2002.9	3918.7
1349	2548.84	3682.6	1977.6	3885
1350	2534.49	3646.3	1970.6	3867.6
1351	2538.34	3654.7	1977	3884.4
1352	2528.73	3623.9	1971.4	3855.9
1353	2526.18	3634.2	1984.8	3872.7
1354	2532.55	3627.1	1996.2	3887.2
1355	2542.74	3637.8	2004.8	3893
1356	2549.71	3684.4	2020.3	3910.8
1357	2568.77	3694.2	2042.1	3916.1
1358	2568.7	3678.9	2038.1	3905.6
1359	2588.04	3687.2	2065.4	3932.6
1360	2614.5	3716.8	2080.4	3967.9
1361	2630.24	3722.7	2086.2	3977.2
1362	2626.43	3690	2080.9	3972.3
1363	2621.2	3690.1	2072.7	3955.7
1364	2625.46	3694.9	2082.3	3974.3
1365	2641.5	3694.9	2079.5	3964.1
1366	2624.18	3635.5	2067.1	3919.7
1367	2643.42	3661.2	2081.5	3910.5
1368	2663.1	3697.7	2103.4	3935.7
1369	2664.96	3699.5	2104.1	3933.2
1370	2659.86	3696.6	2107.1	3946.4
1371	2655.49	3736.4	2132.8	3953.7
1372	2654.34	3737.5	2123.2	3992.2
1373	2685.29	3760.2	2141.8	4015.1
1374	2685.29	3771.6	2136.1	4000
1375	2704.25	3771.6	2152.7	4024.8
1376	2705.21	3813.7	2151.6	4031.5
1377	2702.6	3818.1	2161.5	4035.6
1378	2685.23	3807.9	2146.7	4009.3
1379	2683.52	3797.3	2135.6	3994.7
1380	2692.69	3805.2	2147.1	4028.1
1381	2700.83	3813.7	2143.6	4038.7
1382	2718.73	3822.2	2168.3	4050.8
1383	2705.06	3790.2	2158.5	4024.4
1384	2717.5	3793.2	2165.3	4042.1
1385	2727.56	3803.3	2185.2	4053.1
1386	2733.67	3788.2	2180.2	4073.1
1387	2721.74	3775.3	2175.6	4057.2
1388	2678.89	3742.9	2148.9	4028.4
1389	2681.94	3753.6	2151.6	3999.4
1390	2690.79	3758.7	2162.4	4022.4
1391	2703.33	3763.5	2150.4	4025.3
1392	2675.5	3732	2125.7	3993.5
1393	2664.72	3723.1	2124.8	3963.9
1394	2671.4	3725.3	2140.5	3979.1
1395	2670.19	3736.1	2140.5	3948.5
1396	2678.73	3749.2	2142.2	3928.1
1397	2716.16	3784.8	2187.3	3921.1
1398	2735.28	3815.4	2213.4	3935.7
1399	2724.25	3811.5	2211.8	3900.4
1400	2732.29	3812	2205.2	3910.8
1401	2730.44	3827.6	2205.2	3914.4
1402	2764	3829.8	2229.1	3934.3
1403	2770.61	3825.7	2217.2	3926.9
1404	2784.39	3856.4	2218.2	3926.1
1405	2800.6	3897.9	2240.3	3958.2
1406	2768.68	3888.3	2228.8	3962.1
1407	2781.54	3892.6	2240.1	3978.1
1408	2766.08	3883.3	2233.4	3962.8
1409	2765.29	3861.5	2233.6	3953.8
1410	2769.47	3882.8	2255.5	4018.7
1411	2800.52	3891.7	2277.1	4054.6
1412	2808.62	3878.2	2275.1	4068.4
1413	2793.86	3845.3	2270.8	4049.2
1414	2829.68	3884.1	2290.3	4050.2
1415	2848.84	3902.5	2315.7	4058
1416	2853.46	3874	2318.6	4038.5
1417	2900.76	3924.5	2349.1	4061.5
1418	2880.89	3910.6	2308.7	4045.2
1419	2894.43	3913.8	2292.5	4051.2
1420	2832.53	3835.5	2240.7	3963
1421	2870.3	3874	2255.8	4011.6
1422	2890.95	3885.4	2251.4	4035.7
1423	2836.36	3857.6	2213.3	3982.5
1424	2846.94	3860	2212.1	3990.7
1425	2815.77	3839.3	2203.4	3972.4
1426	2841.16	3869.2	2222.6	3993.8
1427	2808.5	3850.4	2193.7	3979.6
1428	2814.23	3874	2218.9	4018.2
1429	2824.83	3880.8	2248.7	4051.3
1430	2835.54	3890.1	2278.5	4077.6
1431	2844.09	3875.5	2287.4	4087.2
1432	2844.09	3869.8	2289.6	4092.5
1433	2844.09	3869.8	2289.6	4092.5
1434	2844.09	3869.8	2303.8	4092.5
1435	2859.22	3922.2	2307	4091
1436	2880.07	3948.3	2318.6	4115.7
1437	2880.07	3942.2	2315.7	4118.5
1438	2880.07	3942.2	2315.7	4118.5
1439	2820.81	3942.2	2257	4057.4
1440	2863.26	3940.1	2282.8	4089.5
1441	2890.2	3923.8	2306.7	4106.5
1442	2876.34	3922.9	2301.7	4078.8
1443	2904.08	3944.9	2331.6	4087.5
1444	2936.69	3966.2	2349.1	4087
1445	2915.81	3947.4	2327.5	4056.6
1446	2956.78	3975.5	2361.3	4107.3
1447	2978.84	3983.6	2402.1	4168.2
1448	2976.56	3979.6	2388	4158.9
1449	2996.12	4007.1	2407.8	4197.5
1450	3006.87	4019.9	2425.1	4207.7
1451	2999.19	4009.5	2406.1	4194
1452	3000.66	4023.1	2409.9	4195.5
1453	3026.63	4115.4	2442.5	4219.1
1454	3037.28	4161	2461.3	4219.1
1455	2982.63	4125.5	2430.3	4218.8
1456	2992.55	4127.3	2435.2	4212
1457	3028.27	4182.3	2482.8	4237.4
1458	2997.95	4169.7	2465	4207.5
1459	3018.58	4209.1	2503.1	4228.4
1460	3037.7	4272.2	2516.6	4275.8
1461	3064.7	4282.8	2508.6	4257.8
1462	3067.48	4296.5	2503.1	4260.9
1463	3114.73	4305.5	2541.3	4281.5
1464	3124.78	4309.8	2558.4	4265.9
1465	3161.36	4357.9	2597.5	4307.8
1466	3185.72	4384.3	2595.4	4307.7
1467	3191.45	4408.4	2582.1	4304.3
1468	3211.01	4444.1	2599.3	4304.3
1469	3256.86	4436.3	2628.4	4327.1
1470	3249.17	4464.2	2627.4	4341
1471	3260.3	4514.6	2634.5	4337.8
1472	3230.83	4490.7	2617.5	4332.3
1473	3209.04	4525.5	2594.8	4357.4
1474	3197.09	4530.8	2575.2	4356.1
1475	3203.79	4522.5	2562.8	4336.8
1476	3180.63	4463.2	2567.9	4331.1
1477	3233.34	4503.9	2607.7	4344.7
1478	3245.02	4539	2602.2	4329.3
1479	3272.58	4519.7	2629.4	4339.2
1480	3261.04	4487.6	2607.8	4308.3
1481	3258.74	4460.1	2600.3	4307.1
1482	3345.09	4513.7	2651.7	4357.7
1483	3375.45	4547.1	2666.2	4360.1
1484	3396.55	4605.2	2698.9	4399.3
1485	3419.51	4638.9	2708.3	4420.3
1486	3426.77	4684.4	2709.2	4437.4
1487	3430.95	4677.1	2686.2	4444.3
1488	3382.4	4676.2	2641.7	4422.5
1489	3367.82	4609.9	2632.1	4397.7
1490	3404.29	4636.2	2645.6	4424.3
1491	3337.11	4556.5	2588.4	4373.3
1492	3289.59	4519.9	2574	4356.8
1493	3305.72	4535.1	2596.8	4332.2
1494	3247.03	4442.9	2553.7	4258.1
1495	3288.52	4491.3	2587.1	4254.8
1496	3302.57	4497.3	2579.3	4214.8
1497	3374.93	4558.6	2624.3	4270.7
1498	3439.22	4620.5	2648.7	4301.5
1499	3407.83	4659.2	2656.7	4312.9
1500	3407.83	4659.2	2656.7	4312.9
1501	3407.83	4659.2	2656.7	4312.9
1502	3281.46	4501.7	2581.8	4248.1
1503	3210.94	4488.7	2530.3	4236.6
1504	3212.82	4463.9	2514.5	4214.6
1505	3235.35	4471.5	2518	4236.6
1506	3342.77	4588	2572.3	4271.7
1507	3328.13	4582.6	2579	4269.3
1508	3364.76	4634.9	2617.6	4292.3
1509	3352.58	4626.6	2608	4313.2
1510	3319.24	4604.2	2574.6	4270.7
1511	3297.52	4586.3	2566.1	4251.7
1512	3369.26	4643.4	2620.6	4286.8
1513	3347.54	4625.6	2621	4294.6
1514	3361.8	4665.7	2615.2	4298.9
1515	3361.2	4699.1	2547.6	4310.5
1516	3328.41	4740.1	2522.7	4328.7
1517	3348.9	4752.3	2514.7	4346.1
1518	3366.87	4781.1	2533.6	4387.7
1519	3396.49	4836.1	2539.8	4388.5
1520	3357.57	4772.3	2536.3	4369.7
1521	3372.96	4793.3	2550.3	4389.7
1522	3425.86	4855.1	2602.9	4433.2
1523	3438.09	4897.6	2639.5	4436
1524	3438.09	4897.6	2639.5	4445
1525	3491.08	4953.5	2655.3	4455.6
1526	3565.69	5029.6	2672.8	4455.6
1527	3548.52	4988.4	2651.9	4519.3
1528	3537.45	5016	2643.3	4537.5
1529	3537.45	5016	2643.3	4580.4
1530	3533.21	5004.7	2633.9	4630.9
1531	3593.14	5042.5	2693.1	4669.6
1532	3559.29	5084.2	2719.6	4691
1533	3588.57	5134.3	2774.6	4686.9
1534	3564.85	5141.7	2776	4681.2
1535	3569.26	5157.5	2784.3	4693.9
1536	3569.26	5157.5	2784.3	4645.2
1537	3516.2	5081	2751.1	4607.5
1538	3600.4	5178.6	2786.4	4642
1539	3575.44	5176.4	2741.7	4651.8
1540	3621.72	5181	2762.9	4661.8
1541	3669.31	5196.7	2654.7	4661.8
1542	3665.43	5190	2680.3	4681.6
1543	3626.6	5133.1	2583.2	4677.5
1544	3635.38	5132.1	2579.2	4672.3
1545	3562.73	5041.6	2583.9	4621.3
1546	3596.4	5150	2601.5	4562.8
1547	3655.59	5207.2	2624.5	4557.8
1548	3651.59	5238.5	2635.4	4557.1
1549	3684.6	5251.2	2690.9	4576.2
1550	3700.53	5320	2719.3	4645
1551	3668.61	5368.8	2686.2	4686.7
1552	3671.16	5361.9	2664.2	4739.6
1553	3671.87	5308.6	2696.2	4724.8
1554	3737.16	5364.2	2760.3	4757.4
1555	3752.37	5384.6	2808.5	4783.1
1556	3750.02	5362	2795.9	4745.1
1557	3721.18	5345.9	2762.6	4682.2
1558	3730.56	5405	2751.7	4657
1559	3777.56	5510.3	2739.7	4653.7
1560	3788.54	5561.8	2757.1	4593.9
1561	3748.79	5587.8	2762.2	4575.8
1562	3761.07	5576.1	2784.8	4596.3
1563	3819.52	5662.4	2867.4	4640
1564	3820.16	5669.9	2893.6	4657.9
1565	3809.92	5700.3	2891	4640.3
1566	3766.89	5620.6	2858.3	4604.6
1567	3834.84	5654.8	2944	4728.3
1568	3867.53	5674.3	2909.5	4751.4
1569	3939.73	5804.9	2937	4831.7
1570	3946.73	5846.5	2934.5	4812.8
1571	4003.35	5947	2947.7	4810.7
1572	4030.1	6012.6	2929.8	4758.5
1573	4026.97	5977.1	2950.6	4762.4
1574	4000.65	5885.4	2929.1	4767.8
1575	4074.3	5801.5	2941.6	4799.5
1576	4142.19	5845.8	2941.6	4857.4
1577	4139.68	5844.7	2950.7	4899.3
1578	4223.69	5927.5	2988	4964.2
1579	4203.91	5868.3	2958.6	4949
1580	4131.94	5737.1	2876.7	4877.2
1581	4139.96	5620.5	2874.1	4805.7
1582	4297.64	5677.1	2921.1	4846.7
1583	4384.82	5869.9	3003.5	4874.5
1584	4320.52	5849.2	2973.5	4862.9
1585	4368.54	5847	3025.9	4851.5
1586	4400.3	5888	3022.2	4862.6
1587	4377.7	5842.1	3023.6	4876.6
1588	4458.66	5929.5	3069.3	4927.3
1589	4405.52	5898.2	3075.7	4907.5
1590	4336.98	5898.2	3049.5	4899.3
1591	4302.5	5771	2992.4	4895.7
1592	4325.86	5765.2	2984.1	4960.6
1593	4364.25	5812.1	3037.1	5026.2
1594	4428.08	5922.1	3056.3	5086.8
1595	4342.31	5864.8	2996.3	5031.3
1596	4333.15	5825.6	2983.4	5031.9
1597	4377.51	5808.4	2998.6	5075.8
1598	4237.06	5682.1	2924	5003.6
1599	4195.53	5579.5	2921.8	4991.3
1600	4077.59	5498.5	2921.8	4865.8
1601	4080.55	5405.6	2870.1	4835
1602	4190.45	5580.1	2936.2	4914.2
1603	4251.93	5690.1	2979.3	4958.4
1604	4204.81	5668.8	2957.2	4978
1605	4090.14	5475.8	2904.2	4901.1
1606	4076.75	5473.9	2898.6	4901.1
1607	3993.7	5363.3	2869.3	4886.3
1608	3992.03	5409.6	2871.7	4906.9
1609	3897.43	5217.3	2828.4	4845.4
1610	3919.79	5216.7	2770.5	4817.5
1611	4001.81	5271.5	2805.8	4870.2
1612	4127.28	5447.5	2921.2	4952.2
1613	4062.13	5478.6	2918	4976.9
1614	4093.43	5478.1	2927	4991.3
1615	4073.71	5532.9	2924.5	4994.2
1616	4131.26	5505.3	2940.9	4985.2
1617	4104.57	5445.1	2919.7	4950.5
1618	4028	5356.7	2874.6	4905.2
1619	3890.24	5280.8	2843.6	4854.8
1620	3796.61	5281.9	2834.1	4848.2
1621	3869.53	5321.7	2898.6	4902.9
1622	3995.69	5417.8	2940.6	4976.4
1623	3970.44	5550.4	2944	5013.1
1624	4004.04	5629	2978.4	5046.2
1625	3983.06	5611	2977.2	5023.8
1626	4096.85	5705.1	3017.5	5075.7
1627	4091.77	5730.4	2997.2	5027.5
1628	4150.95	5732.5	3023.7	5077.2
1629	4104.93	5667.1	3005.4	5065.5
1630	4135.09	5716.6	2985.6	5226.3
1631	4116.52	5691.8	2989	5220.3
1632	4154.89	5673.6	3008.3	5244.2
1633	4262.98	5754.7	3054.9	5317.1
1634	4266.17	5825	3052.1	5296.1
1635	4266.17	5929	3094	5330.8
1636	4326.35	5897.4	3078	5300
1637	4311.13	5846.9	3064.4	5305.6
1638	4267.4	5822.3	3024.1	5262.1
1639	4179.92	5732.2	2960.7	5217.8
1640	4164.62	5699.5	2955.1	5227.3
1641	4225.27	5792.8	3002.9	5300.1
1642	4215.23	5836.3	3002.5	5298.9
1643	4168.62	5815.9	2992.2	5263.7
1644	4149.92	5806.8	2992.9	5287.9
1645	4049.16	5751.6	2958	5271.1
1646	4069.25	5777.2	2946.7	5211
1647	4172.47	5862.9	2989.9	5225.9
1648	4124.86	5803.2	2958.1	5148.8
1649	3976.38	5651.8	2856.9	4991.5
1650	3981.44	5689.5	2849	4970.2
1651	3871.39	5533.5	2769.6	4840.7
1652	3645.69	5279.7	2651.3	4755.4
1653	3806.66	5479	2818	4871.8
1654	3748.88	5370.9	2739.5	4801.9
1655	3753.66	5467.2	2739.3	4842.3
1656	3847.73	5581.6	2788	4906.4
1657	3784.8	5538.2	2774.9	4897.4
1658	3841.39	5601.6	2822.4	4908.3
1659	3813.88	5557.4	2781.8	4863.8
1660	3715.38	5438.6	2707.1	4764.3
1661	3728.37	5459.7	2707.1	4806.8
1662	3734.79	5483.9	2707.1	4793.7
1663	3697.48	5434	2694.5	4720.4
1664	3701.94	5418.2	2700.7	4711
1665	3676.65	5437	2698.9	4741.8
1666	3816.71	5565	2773	4867
1667	3844.14	5574.2	2782.6	4845.4
1668	3876.9	5571.7	2790.6	4830.1
1669	3931.81	5650.4	2821.2	4908.4
1670	3941.91	5725.5	2861.7	4985.8
1671	3832.1	5645.7	2802.5	4898.6
1672	3850.14	5666.3	2786.3	4863.5
1673	3926.93	5738.3	2811.7	4891.2
1674	3961.97	5772.4	2829	4889
1675	3972.08	5775.9	2854.4	4831.8
1676	4125.92	5875.1	2918.5	4921.8
1677	4096.4	5919.9	2913.1	4977.6
1678	4074.55	5922.7	2902.4	4970.7
1679	4159.72	5969.5	2914.5	5082.3
1680	4191.81	6009	2910.1	5142.9
1681	4208.14	6095.3	2932.5	5187.4
1682	4187.13	6103.2	2959.4	5177.1
1683	4116.7	6056.6	2932.2	5130.7
1684	4016.7	6021.8	2828.5	5035.9
1685	4061.91	6018.7	2830.3	5045.2
1686	4029.08	5986.6	2838.3	5121.8
1687	4150.31	6092.7	2912.2	5203.4
1688	4154.57	6122.1	2893.3	5190.8
1689	4162.92	6115.1	2894.5	5168.3
1690	4055.35	5989.9	2822.9	5020.2
1691	4125.54	6049.3	2869.7	5018.2
1692	4132.79	6044.7	2858.1	5049.8
1693	4132.79	6046.7	2874.1	5013.9
1694	4132.79	6046.7	2874.1	5013.9
1695	4132.79	6046.7	2875.1	5013.9
1696	4266.02	6190.4	2939.5	5112.4
1697	4224.3	6267.6	2975.5	5132.3
1698	4224.3	6265.5	2998.9	5135.5
1699	4224.3	6265.5	2998.9	5135.5
1700	4364.32	6265.5	3038.7	5193.5
1701	4416.95	6397	3072.8	5262.5
1702	4360.05	6375.7	3037.7	5264.4
1703	4339.98	6390	3006.7	5224.1
1704	4293.64	6330.2	2954.9	5237.1
1705	4237.75	6251.8	2919.8	5138.3
1706	4134.64	6062.1	2862.5	5068.8
1707	4150.01	6169.3	2902.9	5083.9
1708	4145.41	6149.8	2919.8	5106.9
1709	4140.22	6148.5	2932.8	5165.8
1710	4216.24	6274	2976.1	5263.1
1711	4290.05	6340.4	2987	5273.6
1712	4310.83	6397.5	3008.3	5278.2
1713	4250.47	6391.4	2998.1	5272.3
1714	4238.77	6356.1	2988.6	5253.1
1715	4222.16	6391	2966.2	5181.4
1716	4266.34	6411	3000.5	5237.2
1717	4316.05	6424	3052	5326.3
1718	4385.29	6508.7	3088.3	5372.6
1719	4444.53	6530.4	3133.8	5422.4
1720	4442.53	6582.6	3172.1	5458.5
1721	4529.88	6688	3187.5	5599
1722	4529.18	6720.7	3188.4	5612.8
1723	4509.25	6708.9	3166.3	5595.8
1724	4494.72	6772	3189.6	5606.4
1725	4536.91	6857.1	3216.7	5629.7
1726	4519.56	6828.4	3220.9	5600.9
1727	4558.62	6860.8	3235.8	5613.3
1728	4552.46	6931.6	3240	5607.9
1729	4509.37	6856	3178.7	5552.5
1730	4522.42	6898.9	3187.7	5582.3
1731	4535.56	6905.3	3225.1	5619.9
1732	4627.42	6990.5	3280.5	5709.5
1733	4611.66	6966.2	3281.7	5723.4
1734	4581.08	6953.2	3250.6	5718.5
1735	4583.03	6986.7	3262.5	5718.5
1736	4610.66	6986.1	3273.5	5702.8
1737	4604.55	6945	3262.3	5651
1738	4704.58	7065.4	3348.2	5745.1
1739	4695.78	7118.6	3397	5764.8
1740	4693.86	7153.1	3421.9	5767.3
1741	4781.62	7273	3446.7	5820.6
1742	4759.62	7259.5	3414.9	5807.7
1743	4690.52	7130.5	3381.3	5733.1
1744	4676.42	7077.3	3395.8	5695.6
1745	4762.71	7197.2	3483.2	5782.9
1746	4828.89	7187.5	3525.9	5818.9
1747	4852.22	7246.5	3521.5	5828.5
1748	4862.41	7276.7	3539.4	5829.8
1749	4838.67	7267.9	3526.6	5794.8
1750	4872.24	7328	3540.2	5782.3
1751	4905.59	7261.2	3598.3	5785.1
1752	4945.91	7236.5	3661.3	5834.9
1753	4908.55	7132.4	3652.5	5903.6
1754	4949.91	7143.8	3688.7	5997.9
1755	5045.16	7300.5	3688.9	5956.3
1756	5014.13	7341	3680.1	5947
1757	5064.35	7407.4	3738.5	5983.7
1758	5114.13	7472.1	3818.7	5967.8
1759	5029	7415.9	3783.8	5905.6
1760	5066.9	7530.3	3810.2	5939.3
1761	5069.89	7536.3	3800.2	5911.9
1762	5097.25	7585.5	3875.3	5932.2
1763	5135.35	7615.5	3883.3	6017.6
1764	5179.04	7638.8	3935.9	6052.8
1765	5254.32	7725.9	3932	6064.2
1766	5345.89	7827.7	3986.8	6105.8
1767	5309.67	7744.3	3903.3	6094
1768	5267.35	7588.1	3873.9	6055.2
1769	5312.25	7624.1	3894.5	6105.5
1770	5312.25	7624.1	3894.5	6105.5
1771	5312.25	7624.1	3894.5	6105.5
1772	5367.98	7662.9	3867.7	6104.1
1773	5359.24	7616.3	3884.6	6074.1
1774	5292.97	7500.1	3845.9	6002
1775	5326.63	7453.7	3861.6	5922.2
1776	5407.93	7500.1	3885.7	5954.1
1777	5373.8	7369.1	3860.4	5955
1778	5312.28	7308.9	3835.1	5931.1
1779	5262.57	7265.5	3822.1	5898.1
1780	5144.42	7232.3	3788.7	5863.9
1781	5002.71	7053.5	3689.4	5722.4
1782	5110.88	7180.1	3777.2	5806.6
1783	5083.8	7241.8	3726.2	5833.1
1784	5241.23	7401.4	3867.9	5928.3
1785	5241.23	7401.4	3867.9	6011.3
1786	5337.75	7640.8	3979.3	6011.3
1787	5226.2	7596.2	3945.5	5986.5
1788	5264.62	7610.8	3947.5	5992.4
1789	5164.89	7536	3912.8	5938
1790	5270.61	7587.1	3912.8	5969.8
1791	5348.75	7677.5	4007.3	6028.3
1792	5307.82	7627.3	3986.1	5956.7
1793	5371.99	7582.8	4018.5	5972.9
1794	5374.11	7550.6	4012	5948.5
1795	5414.31	7519.4	3990.2	5917.8
1796	5343.66	7371.4	3945.3	5826.2
1797	5441	7483.2	3980.8	5877.8
1798	5514.51	7495.8	4047.9	5907.4
1799	5514.51	7495.8	4047.9	5935.6
1800	5530.19	7542.7	4049.8	5955.6
1801	5592.46	7657.1	4108.7	5955.6
1802	5639.89	7731.9	4115.9	5970.7
1803	5466.88	7633.5	4017.4	5870.2
1804	5507.36	7605	4014.9	5862.3
1805	5556.99	7656.1	4041.2	5870.7
1806	5556.99	7656.1	4041.2	5837.9
1807	5583.83	7657.5	4087	5842.3
1808	5640.42	7676.3	4149.4	5898.4
1809	5605.38	7592.9	4119	5860.8
1810	5724.75	7699.5	4185.1	5947.3
1811	5787.05	7743.4	4204.6	6037.8
1812	5773.77	7716.8	4201.9	6019.8
1813	5799.22	7652.6	4208.6	5987.4
1814	5799.22	7498.4	4141.6	5852.5
1815	5631.34	7417.4	4050.8	5769.8
1816	5581.24	7342.7	4005.3	5715.7
1817	5621.71	7388.7	4013.3	5729.7
1818	5742.83	7562.7	4092.9	5832.7
1819	5689.89	7488	4052.3	5812.1
1820	5644.22	7518.6	4027.3	5748.1
1821	5648.11	7511.8	4018.6	5712.4
1822	5748.34	7624.8	4065	5772
1823	5784.4	7667.9	4126.3	5804.9
1824	5886.72	7794.7	4203.8	5858.9
1825	5870.49	7816.9	4215.7	5877.4
1826	5933.73	7881.9	4248.2	5884.5
1827	5841.83	7882	4203.5	5832.5
1828	5910.51	8038.2	4260.7	5919.9
1829	5905.15	8047.3	4252.1	5960.2
1830	5961.45	8099	4304.4	5988.4
1831	5942.06	8166	4311.1	5990.3
1832	5975.88	8160	4333.1	6003.4
1833	6018.89	8227.2	4339.9	6009.6
1834	6000.84	8205	4319.2	5969.7
1835	6001.24	8192.4	4256.4	5927.9
1836	6023.31	8141.9	4256.4	5958.2
1837	6101.9	8180.5	4256.4	6100.2
1838	6106.1	8158.1	4344.3	6151.5
1839	6108	8126.5	4358.1	6116.8
1840	6162.86	8288.2	4388.5	6174
1841	6186.09	8400.8	4368.9	6179
1842	6184.1	8412	4322.1	6132.7
1843	6081.11	8340.7	4220.1	5989.6
1844	6043.82	8229.2	4235.9	5976.2
1845	6040.58	8205.7	4205.4	5892.3
1846	5854.35	7998.7	4139.5	5836.1
1847	5867.52	8093	4122.4	5835.8
1848	5828.74	8102.7	4139.2	5844.1
1849	5906.33	8205.5	4197.6	5910.7
1850	5861.19	8239.5	4177.3	5837
1851	5774.38	8139.2	4095	5809.7
1852	5718.7	8170.2	4047.9	5736.1
1853	5614.77	7943.2	3976.4	5632.5
1854	5528.12	7846.2	3968.6	5594.1
1855	5598.32	7952.9	4041.9	5680.4
1856	5460.43	7721.3	3939.5	5587.6
1857	5285.78	7447.9	3846	5432.8
1858	5386.94	7607.5	3945.7	5462.2
1859	5355.03	7552.6	3951.7	5399.5
1860	5473.72	7676.3	3995	5455
\.


--
-- Name: eustockmarkets_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('eustockmarkets_id_seq', 1860, true);


--
-- Data for Name: faithful; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY faithful (id, eruptions, waiting) FROM stdin;
1	3.6	79
2	1.8	54
3	3.333	74
4	2.283	62
5	4.533	85
6	2.883	55
7	4.7	88
8	3.6	85
9	1.95	51
10	4.35	85
11	1.833	54
12	3.917	84
13	4.2	78
14	1.75	47
15	4.7	83
16	2.167	52
17	1.75	62
18	4.8	84
19	1.6	52
20	4.25	79
21	1.8	51
22	1.75	47
23	3.45	78
24	3.067	69
25	4.533	74
26	3.6	83
27	1.967	55
28	4.083	76
29	3.85	78
30	4.433	79
31	4.3	73
32	4.467	77
33	3.367	66
34	4.033	80
35	3.833	74
36	2.017	52
37	1.867	48
38	4.833	80
39	1.833	59
40	4.783	90
41	4.35	80
42	1.883	58
43	4.567	84
44	1.75	58
45	4.533	73
46	3.317	83
47	3.833	64
48	2.1	53
49	4.633	82
50	2	59
51	4.8	75
52	4.716	90
53	1.833	54
54	4.833	80
55	1.733	54
56	4.883	83
57	3.717	71
58	1.667	64
59	4.567	77
60	4.317	81
61	2.233	59
62	4.5	84
63	1.75	48
64	4.8	82
65	1.817	60
66	4.4	92
67	4.167	78
68	4.7	78
69	2.067	65
70	4.7	73
71	4.033	82
72	1.967	56
73	4.5	79
74	4	71
75	1.983	62
76	5.067	76
77	2.017	60
78	4.567	78
79	3.883	76
80	3.6	83
81	4.133	75
82	4.333	82
83	4.1	70
84	2.633	65
85	4.067	73
86	4.933	88
87	3.95	76
88	4.517	80
89	2.167	48
90	4	86
91	2.2	60
92	4.333	90
93	1.867	50
94	4.817	78
95	1.833	63
96	4.3	72
97	4.667	84
98	3.75	75
99	1.867	51
100	4.9	82
101	2.483	62
102	4.367	88
103	2.1	49
104	4.5	83
105	4.05	81
106	1.867	47
107	4.7	84
108	1.783	52
109	4.85	86
110	3.683	81
111	4.733	75
112	2.3	59
113	4.9	89
114	4.417	79
115	1.7	59
116	4.633	81
117	2.317	50
118	4.6	85
119	1.817	59
120	4.417	87
121	2.617	53
122	4.067	69
123	4.25	77
124	1.967	56
125	4.6	88
126	3.767	81
127	1.917	45
128	4.5	82
129	2.267	55
130	4.65	90
131	1.867	45
132	4.167	83
133	2.8	56
134	4.333	89
135	1.833	46
136	4.383	82
137	1.883	51
138	4.933	86
139	2.033	53
140	3.733	79
141	4.233	81
142	2.233	60
143	4.533	82
144	4.817	77
145	4.333	76
146	1.983	59
147	4.633	80
148	2.017	49
149	5.1	96
150	1.8	53
151	5.033	77
152	4	77
153	2.4	65
154	4.6	81
155	3.567	71
156	4	70
157	4.5	81
158	4.083	93
159	1.8	53
160	3.967	89
161	2.2	45
162	4.15	86
163	2	58
164	3.833	78
165	3.5	66
166	4.583	76
167	2.367	63
168	5	88
169	1.933	52
170	4.617	93
171	1.917	49
172	2.083	57
173	4.583	77
174	3.333	68
175	4.167	81
176	4.333	81
177	4.5	73
178	2.417	50
179	4	85
180	4.167	74
181	1.883	55
182	4.583	77
183	4.25	83
184	3.767	83
185	2.033	51
186	4.433	78
187	4.083	84
188	1.833	46
189	4.417	83
190	2.183	55
191	4.8	81
192	1.833	57
193	4.8	76
194	4.1	84
195	3.966	77
196	4.233	81
197	3.5	87
198	4.366	77
199	2.25	51
200	4.667	78
201	2.1	60
202	4.35	82
203	4.133	91
204	1.867	53
205	4.6	78
206	1.783	46
207	4.367	77
208	3.85	84
209	1.933	49
210	4.5	83
211	2.383	71
212	4.7	80
213	1.867	49
214	3.833	75
215	3.417	64
216	4.233	76
217	2.4	53
218	4.8	94
219	2	55
220	4.15	76
221	1.867	50
222	4.267	82
223	1.75	54
224	4.483	75
225	4	78
226	4.117	79
227	4.083	78
228	4.267	78
229	3.917	70
230	4.55	79
231	4.083	70
232	2.417	54
233	4.183	86
234	2.217	50
235	4.45	90
236	1.883	54
237	1.85	54
238	4.283	77
239	3.95	79
240	2.333	64
241	4.15	75
242	2.35	47
243	4.933	86
244	2.9	63
245	4.583	85
246	3.833	82
247	2.083	57
248	4.367	82
249	2.133	67
250	4.35	74
251	2.2	54
252	4.45	83
253	3.567	73
254	4.5	73
255	4.15	88
256	3.817	80
257	3.917	71
258	4.45	83
259	2	56
260	4.283	79
261	4.767	78
262	4.533	84
263	1.85	58
264	4.25	83
265	1.983	43
266	2.25	60
267	4.75	75
268	4.117	81
269	2.15	46
270	4.417	90
271	1.817	46
272	4.467	74
\.


--
-- Name: faithful_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('faithful_id_seq', 272, true);


--
-- Data for Name: fdeaths; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY fdeaths (id, x) FROM stdin;
1	901
2	689
3	827
4	677
5	522
6	406
7	441
8	393
9	387
10	582
11	578
12	666
13	830
14	752
15	785
16	664
17	467
18	438
19	421
20	412
21	343
22	440
23	531
24	771
25	767
26	1141
27	896
28	532
29	447
30	420
31	376
32	330
33	357
34	445
35	546
36	764
37	862
38	660
39	663
40	643
41	502
42	392
43	411
44	348
45	387
46	385
47	411
48	638
49	796
50	853
51	737
52	546
53	530
54	446
55	431
56	362
57	387
58	430
59	425
60	679
61	821
62	785
63	727
64	612
65	478
66	429
67	405
68	379
69	393
70	411
71	487
72	574
\.


--
-- Name: fdeaths_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('fdeaths_id_seq', 72, true);


--
-- Data for Name: formaldehyde; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY formaldehyde (id, carb, optden) FROM stdin;
1	0.1	0.086
2	0.3	0.269
3	0.5	0.446
4	0.6	0.538
5	0.7	0.626
6	0.9	0.782
\.


--
-- Name: formaldehyde_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('formaldehyde_id_seq', 6, true);


--
-- Data for Name: freeny; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY freeny (id, y, lag_quarterly_revenue, price_index, income_level, market_potential) FROM stdin;
1	8.79236	8.79636	4.70997	5.8211	12.9699
2	8.79137	8.79236	4.70217	5.82558	12.9733
3	8.81486	8.79137	4.68944	5.83112	12.9774
4	8.81301	8.81486	4.68558	5.84046	12.9806
5	8.90751	8.81301	4.64019	5.85036	12.9831
6	8.93673	8.90751	4.62553	5.86464	12.9854
7	8.96161	8.93673	4.61991	5.87769	12.99
8	8.96044	8.96161	4.61654	5.89763	12.9943
9	9.00868	8.96044	4.61407	5.92574	12.9992
10	9.03049	9.00868	4.60766	5.94232	13.0033
11	9.06906	9.03049	4.60227	5.95365	13.0099
12	9.05871	9.06906	4.5896	5.9612	13.0159
13	9.10698	9.05871	4.57592	5.97805	13.0212
14	9.12685	9.10698	4.58661	6.00377	13.0265
15	9.17096	9.12685	4.57997	6.02829	13.0351
16	9.18665	9.17096	4.57176	6.03475	13.0429
17	9.23823	9.18665	4.56104	6.03906	13.0497
18	9.26487	9.23823	4.54906	6.05046	13.0551
19	9.28436	9.26487	4.53957	6.05563	13.0634
20	9.31378	9.28436	4.51018	6.06093	13.0693
21	9.35025	9.31378	4.50352	6.07103	13.0737
22	9.35835	9.35025	4.4936	6.08018	13.077
23	9.39767	9.35835	4.46505	6.08858	13.0849
24	9.4215	9.39767	4.44924	6.10199	13.0918
25	9.44223	9.4215	4.43966	6.11207	13.095
26	9.48721	9.44223	4.42025	6.11596	13.0984
27	9.52374	9.48721	4.4106	6.12129	13.1089
28	9.5398	9.52374	4.41151	6.122	13.1169
29	9.58123	9.5398	4.3981	6.13119	13.1222
30	9.60048	9.58123	4.38513	6.14705	13.1266
31	9.64496	9.60048	4.3732	6.15336	13.1356
32	9.6439	9.64496	4.3277	6.15627	13.1415
33	9.69405	9.6439	4.32023	6.16274	13.1444
34	9.69958	9.69405	4.30909	6.17369	13.1459
35	9.68683	9.69958	4.30909	6.16135	13.152
36	9.71774	9.68683	4.30552	6.18231	13.1593
37	9.74924	9.71774	4.29627	6.18768	13.1579
38	9.77536	9.74924	4.27839	6.19377	13.1625
39	9.79424	9.77536	4.27789	6.2003	13.1664
\.


--
-- Name: freeny_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('freeny_id_seq', 39, true);


--
-- Data for Name: freeny_x; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY freeny_x (id, lag_quarterly_revenue, price_index, income_level, market_potential) FROM stdin;
1	8.79636	4.70997	5.8211	12.9699
2	8.79236	4.70217	5.82558	12.9733
3	8.79137	4.68944	5.83112	12.9774
4	8.81486	4.68558	5.84046	12.9806
5	8.81301	4.64019	5.85036	12.9831
6	8.90751	4.62553	5.86464	12.9854
7	8.93673	4.61991	5.87769	12.99
8	8.96161	4.61654	5.89763	12.9943
9	8.96044	4.61407	5.92574	12.9992
10	9.00868	4.60766	5.94232	13.0033
11	9.03049	4.60227	5.95365	13.0099
12	9.06906	4.5896	5.9612	13.0159
13	9.05871	4.57592	5.97805	13.0212
14	9.10698	4.58661	6.00377	13.0265
15	9.12685	4.57997	6.02829	13.0351
16	9.17096	4.57176	6.03475	13.0429
17	9.18665	4.56104	6.03906	13.0497
18	9.23823	4.54906	6.05046	13.0551
19	9.26487	4.53957	6.05563	13.0634
20	9.28436	4.51018	6.06093	13.0693
21	9.31378	4.50352	6.07103	13.0737
22	9.35025	4.4936	6.08018	13.077
23	9.35835	4.46505	6.08858	13.0849
24	9.39767	4.44924	6.10199	13.0918
25	9.4215	4.43966	6.11207	13.095
26	9.44223	4.42025	6.11596	13.0984
27	9.48721	4.4106	6.12129	13.1089
28	9.52374	4.41151	6.122	13.1169
29	9.5398	4.3981	6.13119	13.1222
30	9.58123	4.38513	6.14705	13.1266
31	9.60048	4.3732	6.15336	13.1356
32	9.64496	4.3277	6.15627	13.1415
33	9.6439	4.32023	6.16274	13.1444
34	9.69405	4.30909	6.17369	13.1459
35	9.69958	4.30909	6.16135	13.152
36	9.68683	4.30552	6.18231	13.1593
37	9.71774	4.29627	6.18768	13.1579
38	9.74924	4.27839	6.19377	13.1625
39	9.77536	4.27789	6.2003	13.1664
\.


--
-- Name: freeny_x_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('freeny_x_id_seq', 39, true);


--
-- Data for Name: freeny_y; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY freeny_y (id, x) FROM stdin;
1	8.79236
2	8.79137
3	8.81486
4	8.81301
5	8.90751
6	8.93673
7	8.96161
8	8.96044
9	9.00868
10	9.03049
11	9.06906
12	9.05871
13	9.10698
14	9.12685
15	9.17096
16	9.18665
17	9.23823
18	9.26487
19	9.28436
20	9.31378
21	9.35025
22	9.35835
23	9.39767
24	9.4215
25	9.44223
26	9.48721
27	9.52374
28	9.5398
29	9.58123
30	9.60048
31	9.64496
32	9.6439
33	9.69405
34	9.69958
35	9.68683
36	9.71774
37	9.74924
38	9.77536
39	9.79424
\.


--
-- Name: freeny_y_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('freeny_y_id_seq', 39, true);


--
-- Data for Name: haireyecolor; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY haireyecolor (id, hair, eye, sex, freq) FROM stdin;
1	Black	Brown	Male	32
2	Brown	Brown	Male	53
3	Red	Brown	Male	10
4	Blond	Brown	Male	3
5	Black	Blue	Male	11
6	Brown	Blue	Male	50
7	Red	Blue	Male	10
8	Blond	Blue	Male	30
9	Black	Hazel	Male	10
10	Brown	Hazel	Male	25
11	Red	Hazel	Male	7
12	Blond	Hazel	Male	5
13	Black	Green	Male	3
14	Brown	Green	Male	15
15	Red	Green	Male	7
16	Blond	Green	Male	8
17	Black	Brown	Female	36
18	Brown	Brown	Female	66
19	Red	Brown	Female	16
20	Blond	Brown	Female	4
21	Black	Blue	Female	9
22	Brown	Blue	Female	34
23	Red	Blue	Female	7
24	Blond	Blue	Female	64
25	Black	Hazel	Female	5
26	Brown	Hazel	Female	29
27	Red	Hazel	Female	7
28	Blond	Hazel	Female	5
29	Black	Green	Female	2
30	Brown	Green	Female	14
31	Red	Green	Female	7
32	Blond	Green	Female	8
\.


--
-- Name: haireyecolor_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('haireyecolor_id_seq', 32, true);


--
-- Data for Name: harman23_cor; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY harman23_cor (id, cov_height, cov_arm_span, cov_forearm, cov_lower_leg, cov_weight, cov_bitro_diameter, cov_chest_girth, cov_chest_width, center, n_obs) FROM stdin;
1	1	0.846	0.805	0.859	0.473	0.398	0.301	0.382	0	305
2	0.846	1	0.881	0.826	0.376	0.326	0.277	0.415	0	305
3	0.805	0.881	1	0.801	0.38	0.319	0.237	0.345	0	305
4	0.859	0.826	0.801	1	0.436	0.329	0.327	0.365	0	305
5	0.473	0.376	0.38	0.436	1	0.762	0.73	0.629	0	305
6	0.398	0.326	0.319	0.329	0.762	1	0.583	0.577	0	305
7	0.301	0.277	0.237	0.327	0.73	0.583	1	0.539	0	305
8	0.382	0.415	0.345	0.365	0.629	0.577	0.539	1	0	305
\.


--
-- Name: harman23_cor_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('harman23_cor_id_seq', 8, true);


--
-- Data for Name: harman74_cor; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY harman74_cor (id, cov_visualperception, cov_cubes, cov_paperformboard, cov_flags, cov_generalinformation, cov_pargraphcomprehension, cov_sentencecompletion, cov_wordclassification, cov_wordmeaning, cov_addition, cov_code, cov_countingdots, cov_straightcurvedcapitals, cov_wordrecognition, cov_numberrecognition, cov_figurerecognition, cov_objectnumber, cov_numberfigure, cov_figureword, cov_deduction, cov_numericalpuzzles, cov_problemreasoning, cov_seriescompletion, cov_arithmeticproblems, center, n_obs) FROM stdin;
1	1	0.318	0.403	0.468	0.321	0.335	0.304	0.332	0.326	0.116	0.308	0.314	0.489	0.125	0.238	0.414	0.176	0.368	0.27	0.365	0.369	0.413	0.474	0.282	0	145
2	0.318	1	0.317	0.23	0.285	0.234	0.157	0.157	0.195	0.057	0.15	0.145	0.239	0.103	0.131	0.272	0.005	0.255	0.112	0.292	0.306	0.232	0.348	0.211	0	145
3	0.403	0.317	1	0.305	0.247	0.268	0.223	0.382	0.184	-0.075	0.091	0.14	0.321	0.177	0.065	0.263	0.177	0.211	0.312	0.297	0.165	0.25	0.383	0.203	0	145
4	0.468	0.23	0.305	1	0.227	0.327	0.335	0.391	0.325	0.099	0.11	0.16	0.327	0.066	0.127	0.322	0.187	0.251	0.137	0.339	0.349	0.38	0.335	0.248	0	145
5	0.321	0.285	0.247	0.227	1	0.622	0.656	0.578	0.723	0.311	0.344	0.215	0.344	0.28	0.229	0.187	0.208	0.263	0.19	0.398	0.318	0.441	0.435	0.42	0	145
6	0.335	0.234	0.268	0.327	0.622	1	0.722	0.527	0.714	0.203	0.353	0.095	0.309	0.292	0.251	0.291	0.273	0.167	0.251	0.435	0.263	0.386	0.431	0.433	0	145
7	0.304	0.157	0.223	0.335	0.656	0.722	1	0.619	0.685	0.246	0.232	0.181	0.345	0.236	0.172	0.18	0.228	0.159	0.226	0.451	0.314	0.396	0.405	0.437	0	145
8	0.332	0.157	0.382	0.391	0.578	0.527	0.619	1	0.532	0.285	0.3	0.271	0.395	0.252	0.175	0.296	0.255	0.25	0.274	0.427	0.362	0.357	0.501	0.388	0	145
9	0.326	0.195	0.184	0.325	0.723	0.714	0.685	0.532	1	0.17	0.28	0.113	0.28	0.26	0.248	0.242	0.274	0.208	0.274	0.446	0.266	0.483	0.504	0.424	0	145
10	0.116	0.057	-0.075	0.099	0.311	0.203	0.246	0.285	0.17	1	0.484	0.585	0.408	0.172	0.154	0.124	0.289	0.317	0.19	0.173	0.405	0.16	0.262	0.531	0	145
11	0.308	0.15	0.091	0.11	0.344	0.353	0.232	0.3	0.28	0.484	1	0.428	0.535	0.35	0.24	0.314	0.362	0.35	0.29	0.202	0.399	0.304	0.251	0.412	0	145
12	0.314	0.145	0.14	0.16	0.215	0.095	0.181	0.271	0.113	0.585	0.428	1	0.512	0.131	0.173	0.119	0.278	0.349	0.11	0.246	0.355	0.193	0.35	0.414	0	145
13	0.489	0.239	0.321	0.327	0.344	0.309	0.345	0.395	0.28	0.408	0.535	0.512	1	0.195	0.139	0.281	0.194	0.323	0.263	0.241	0.425	0.279	0.382	0.358	0	145
14	0.125	0.103	0.177	0.066	0.28	0.292	0.236	0.252	0.26	0.172	0.35	0.131	0.195	1	0.37	0.412	0.341	0.201	0.206	0.302	0.183	0.243	0.242	0.304	0	145
15	0.238	0.131	0.065	0.127	0.229	0.251	0.172	0.175	0.248	0.154	0.24	0.173	0.139	0.37	1	0.325	0.345	0.334	0.192	0.272	0.232	0.246	0.256	0.165	0	145
16	0.414	0.272	0.263	0.322	0.187	0.291	0.18	0.296	0.242	0.124	0.314	0.119	0.281	0.412	0.325	1	0.324	0.344	0.258	0.388	0.348	0.283	0.36	0.262	0	145
17	0.176	0.005	0.177	0.187	0.208	0.273	0.228	0.255	0.274	0.289	0.362	0.278	0.194	0.341	0.345	0.324	1	0.448	0.324	0.262	0.173	0.273	0.287	0.326	0	145
18	0.368	0.255	0.211	0.251	0.263	0.167	0.159	0.25	0.208	0.317	0.35	0.349	0.323	0.201	0.334	0.344	0.448	1	0.358	0.301	0.357	0.317	0.272	0.405	0	145
19	0.27	0.112	0.312	0.137	0.19	0.251	0.226	0.274	0.274	0.19	0.29	0.11	0.263	0.206	0.192	0.258	0.324	0.358	1	0.167	0.331	0.342	0.303	0.374	0	145
20	0.365	0.292	0.297	0.339	0.398	0.435	0.451	0.427	0.446	0.173	0.202	0.246	0.241	0.302	0.272	0.388	0.262	0.301	0.167	1	0.413	0.463	0.509	0.366	0	145
21	0.369	0.306	0.165	0.349	0.318	0.263	0.314	0.362	0.266	0.405	0.399	0.355	0.425	0.183	0.232	0.348	0.173	0.357	0.331	0.413	1	0.374	0.451	0.448	0	145
22	0.413	0.232	0.25	0.38	0.441	0.386	0.396	0.357	0.483	0.16	0.304	0.193	0.279	0.243	0.246	0.283	0.273	0.317	0.342	0.463	0.374	1	0.503	0.375	0	145
23	0.474	0.348	0.383	0.335	0.435	0.431	0.405	0.501	0.504	0.262	0.251	0.35	0.382	0.242	0.256	0.36	0.287	0.272	0.303	0.509	0.451	0.503	1	0.434	0	145
24	0.282	0.211	0.203	0.248	0.42	0.433	0.437	0.388	0.424	0.531	0.412	0.414	0.358	0.304	0.165	0.262	0.326	0.405	0.374	0.366	0.448	0.375	0.434	1	0	145
\.


--
-- Name: harman74_cor_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('harman74_cor_id_seq', 24, true);


--
-- Data for Name: indometh; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY indometh (id, subject, "time", conc) FROM stdin;
1	1	0.25	1.50
2	1	0.50	0.94
3	1	0.75	0.78
4	1	1.00	0.48
5	1	1.25	0.37
6	1	2.00	0.19
7	1	3.00	0.12
8	1	4.00	0.11
9	1	5.00	0.08
10	1	6.00	0.07
11	1	8.00	0.05
12	2	0.25	2.03
13	2	0.50	1.63
14	2	0.75	0.71
15	2	1.00	0.70
16	2	1.25	0.64
17	2	2.00	0.36
18	2	3.00	0.32
19	2	4.00	0.20
20	2	5.00	0.25
21	2	6.00	0.12
22	2	8.00	0.08
23	3	0.25	2.72
24	3	0.50	1.49
25	3	0.75	1.16
26	3	1.00	0.80
27	3	1.25	0.80
28	3	2.00	0.39
29	3	3.00	0.22
30	3	4.00	0.12
31	3	5.00	0.11
32	3	6.00	0.08
33	3	8.00	0.08
34	4	0.25	1.85
35	4	0.50	1.39
36	4	0.75	1.02
37	4	1.00	0.89
38	4	1.25	0.59
39	4	2.00	0.40
40	4	3.00	0.16
41	4	4.00	0.11
42	4	5.00	0.10
43	4	6.00	0.07
44	4	8.00	0.07
45	5	0.25	2.05
46	5	0.50	1.04
47	5	0.75	0.81
48	5	1.00	0.39
49	5	1.25	0.30
50	5	2.00	0.23
51	5	3.00	0.13
52	5	4.00	0.11
53	5	5.00	0.08
54	5	6.00	0.10
55	5	8.00	0.06
56	6	0.25	2.31
57	6	0.50	1.44
58	6	0.75	1.03
59	6	1.00	0.84
60	6	1.25	0.64
61	6	2.00	0.42
62	6	3.00	0.24
63	6	4.00	0.17
64	6	5.00	0.13
65	6	6.00	0.10
66	6	8.00	0.09
\.


--
-- Name: indometh_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('indometh_id_seq', 66, true);


--
-- Data for Name: infert; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY infert (id, education, age, parity, induced, "case", spontaneous, stratum, pooled_stratum) FROM stdin;
1	0-5yrs	26	6	1	1	2	 1	3
2	0-5yrs	42	1	1	1	0	 2	1
3	0-5yrs	39	6	2	1	0	 3	4
4	0-5yrs	34	4	2	1	0	 4	2
5	6-11yrs	35	3	1	1	1	 5	32
6	6-11yrs	36	4	2	1	1	 6	36
7	6-11yrs	23	1	0	1	0	 7	6
8	6-11yrs	32	2	0	1	0	 8	22
9	6-11yrs	21	1	0	1	1	 9	5
10	6-11yrs	28	2	0	1	0	10	19
11	6-11yrs	29	2	1	1	0	11	20
12	6-11yrs	37	4	2	1	1	12	37
13	6-11yrs	31	1	1	1	0	13	9
14	6-11yrs	29	3	2	1	0	14	29
15	6-11yrs	31	2	1	1	1	15	21
16	6-11yrs	27	2	2	1	0	16	18
17	6-11yrs	30	5	2	1	1	17	38
18	6-11yrs	26	1	0	1	1	18	7
19	6-11yrs	25	3	2	1	1	19	28
20	6-11yrs	44	1	0	1	1	20	17
21	6-11yrs	40	1	0	1	1	21	14
22	6-11yrs	35	2	2	1	0	22	24
23	6-11yrs	28	2	0	1	2	23	19
24	6-11yrs	36	1	0	1	1	24	12
25	6-11yrs	27	2	1	1	1	25	18
26	6-11yrs	40	2	0	1	2	26	27
27	6-11yrs	38	2	0	1	2	27	26
28	6-11yrs	34	3	0	1	2	28	31
29	6-11yrs	28	4	1	1	2	29	34
30	6-11yrs	30	4	2	1	0	30	35
31	6-11yrs	32	1	0	1	1	31	10
32	6-11yrs	34	2	1	1	0	32	23
33	6-11yrs	42	1	1	1	0	33	16
34	6-11yrs	32	2	0	1	2	34	22
35	6-11yrs	39	1	1	1	0	35	13
36	6-11yrs	35	2	0	1	2	36	24
37	6-11yrs	36	1	0	1	1	37	12
38	6-11yrs	34	3	1	1	2	38	31
39	6-11yrs	30	3	0	1	0	39	30
40	6-11yrs	28	1	0	1	1	40	8
41	6-11yrs	39	3	0	1	2	41	33
42	6-11yrs	35	1	0	1	0	42	11
43	6-11yrs	41	1	0	1	0	43	15
44	6-11yrs	37	2	1	1	1	44	25
45	12+ yrs	30	1	0	1	0	45	44
46	12+ yrs	37	1	1	1	0	46	48
47	12+ yrs	28	2	0	1	2	47	51
48	12+ yrs	27	4	2	1	0	48	61
49	12+ yrs	26	2	2	1	0	49	49
50	12+ yrs	38	3	0	1	2	50	60
51	12+ yrs	24	3	1	1	2	51	56
52	12+ yrs	36	5	1	1	2	52	62
53	12+ yrs	27	3	1	1	1	53	57
54	12+ yrs	28	1	0	1	1	54	42
55	12+ yrs	29	2	0	1	2	55	52
56	12+ yrs	36	2	0	1	2	56	55
57	12+ yrs	28	2	1	1	0	57	51
58	12+ yrs	28	2	0	1	2	58	51
59	12+ yrs	28	1	0	1	1	59	42
60	12+ yrs	27	2	0	1	2	60	50
61	12+ yrs	35	2	0	1	2	61	54
62	12+ yrs	25	1	0	1	1	62	41
63	12+ yrs	34	1	0	1	1	63	47
64	12+ yrs	31	2	0	1	2	64	53
65	12+ yrs	26	2	1	1	0	65	49
66	12+ yrs	32	1	0	1	1	66	46
67	12+ yrs	21	1	0	1	1	67	39
68	12+ yrs	28	3	1	1	2	68	58
69	12+ yrs	37	3	0	1	2	69	59
70	12+ yrs	25	1	1	1	0	70	41
71	12+ yrs	32	1	1	1	0	71	46
72	12+ yrs	25	1	0	1	1	72	41
73	12+ yrs	31	1	0	1	1	73	45
74	12+ yrs	38	6	0	1	2	74	63
75	12+ yrs	26	2	0	1	2	75	49
76	12+ yrs	31	1	0	1	1	76	45
77	12+ yrs	31	2	0	1	1	77	53
78	12+ yrs	25	1	1	1	0	78	41
79	12+ yrs	31	1	0	1	1	79	45
80	12+ yrs	34	1	0	1	1	80	47
81	12+ yrs	35	2	2	1	0	81	54
82	12+ yrs	29	1	0	1	1	82	43
83	12+ yrs	23	1	0	1	1	83	40
84	0-5yrs	26	6	2	0	0	 1	3
85	0-5yrs	42	1	0	0	0	 2	1
86	0-5yrs	39	6	2	0	0	 3	4
87	0-5yrs	34	4	0	0	1	 4	2
88	6-11yrs	35	3	2	0	0	 5	32
89	6-11yrs	36	4	1	0	1	 6	36
90	6-11yrs	23	1	0	0	0	 7	6
91	6-11yrs	32	2	2	0	0	 8	22
92	6-11yrs	21	1	0	0	1	 9	5
93	6-11yrs	28	2	0	0	1	10	19
94	6-11yrs	29	2	0	0	0	11	20
95	6-11yrs	37	4	1	0	1	12	37
96	6-11yrs	31	1	0	0	0	13	9
97	6-11yrs	29	3	0	0	1	14	29
98	6-11yrs	31	2	1	0	0	15	21
99	6-11yrs	27	2	1	0	0	16	18
100	6-11yrs	30	5	0	0	2	17	38
101	6-11yrs	26	1	0	0	0	18	7
102	6-11yrs	25	3	0	0	1	19	28
103	6-11yrs	44	1	0	0	0	20	17
104	6-11yrs	40	1	0	0	0	21	14
105	6-11yrs	35	2	0	0	0	22	24
106	6-11yrs	28	2	0	0	0	23	19
107	6-11yrs	36	1	0	0	0	24	12
108	6-11yrs	27	2	0	0	1	25	18
109	6-11yrs	40	2	0	0	0	26	27
110	6-11yrs	38	2	0	0	0	27	26
111	6-11yrs	34	3	0	0	0	28	31
112	6-11yrs	28	4	0	0	2	29	34
113	6-11yrs	30	4	1	0	1	30	35
114	6-11yrs	32	1	0	0	0	31	10
115	6-11yrs	34	2	1	0	0	32	23
116	6-11yrs	42	1	1	0	0	33	16
117	6-11yrs	32	2	0	0	0	34	22
118	6-11yrs	39	1	0	0	0	35	13
119	6-11yrs	35	2	0	0	0	36	24
120	6-11yrs	36	1	0	0	0	37	12
121	6-11yrs	34	3	2	0	0	38	31
122	6-11yrs	30	3	0	0	2	39	30
123	6-11yrs	28	1	1	0	0	40	8
124	6-11yrs	39	3	1	0	0	41	33
125	6-11yrs	35	1	0	0	0	42	11
126	6-11yrs	41	1	0	0	0	43	15
127	6-11yrs	37	2	0	0	0	44	25
128	12+ yrs	30	1	1	0	0	45	44
129	12+ yrs	37	1	0	0	0	46	48
130	12+ yrs	28	2	1	0	0	47	51
131	12+ yrs	27	4	2	0	1	48	61
132	12+ yrs	26	2	1	0	0	49	49
133	12+ yrs	38	3	1	0	0	50	60
134	12+ yrs	24	3	2	0	1	51	56
135	12+ yrs	36	5	1	0	1	52	62
136	12+ yrs	27	3	1	0	1	53	57
137	12+ yrs	28	1	1	0	0	54	42
138	12+ yrs	29	2	1	0	0	55	52
139	12+ yrs	36	2	1	0	0	56	55
140	12+ yrs	28	2	1	0	1	57	51
141	12+ yrs	28	2	2	0	0	58	51
142	12+ yrs	28	1	1	0	0	59	42
143	12+ yrs	27	2	1	0	0	60	50
144	12+ yrs	35	2	2	0	0	61	54
145	12+ yrs	25	1	1	0	0	62	41
146	12+ yrs	34	1	0	0	0	63	47
147	12+ yrs	31	2	0	0	0	64	53
148	12+ yrs	26	2	0	0	1	65	49
149	12+ yrs	32	1	0	0	0	66	46
150	12+ yrs	21	1	0	0	1	67	39
151	12+ yrs	28	3	2	0	0	68	58
152	12+ yrs	37	3	1	0	1	69	59
153	12+ yrs	25	1	0	0	0	70	41
154	12+ yrs	32	1	1	0	0	71	46
155	12+ yrs	25	1	0	0	0	72	41
156	12+ yrs	31	1	0	0	1	73	45
157	12+ yrs	26	2	0	0	2	75	49
158	12+ yrs	31	1	0	0	0	76	45
159	12+ yrs	31	2	2	0	0	77	53
160	12+ yrs	25	1	0	0	0	78	41
161	12+ yrs	31	1	0	0	0	79	45
162	12+ yrs	34	1	0	0	0	80	47
163	12+ yrs	35	2	0	0	0	81	54
164	12+ yrs	29	1	0	0	1	82	43
165	12+ yrs	23	1	0	0	1	83	40
166	0-5yrs	26	6	2	0	0	 1	3
167	0-5yrs	42	1	0	0	0	 2	1
168	0-5yrs	39	6	2	0	0	 3	4
169	0-5yrs	34	4	0	0	2	 4	2
170	6-11yrs	35	3	0	0	0	 5	32
171	6-11yrs	36	4	0	0	2	 6	36
172	6-11yrs	23	1	0	0	0	 7	6
173	6-11yrs	32	2	0	0	1	 8	22
174	6-11yrs	21	1	1	0	0	 9	5
175	6-11yrs	28	2	0	0	1	10	19
176	6-11yrs	29	2	0	0	1	11	20
177	6-11yrs	37	4	0	0	1	12	37
178	6-11yrs	31	1	0	0	0	13	9
179	6-11yrs	29	3	0	0	2	14	29
180	6-11yrs	31	2	1	0	0	15	21
181	6-11yrs	27	2	0	0	0	16	18
182	6-11yrs	30	5	1	0	2	17	38
183	6-11yrs	26	1	1	0	0	18	7
184	6-11yrs	25	3	1	0	1	19	28
185	6-11yrs	44	1	1	0	0	20	17
186	6-11yrs	40	1	0	0	0	21	14
187	6-11yrs	35	2	0	0	0	22	24
188	6-11yrs	28	2	2	0	0	23	19
189	6-11yrs	36	1	0	0	1	24	12
190	6-11yrs	27	2	0	0	2	25	18
191	6-11yrs	40	2	0	0	0	26	27
192	6-11yrs	38	2	0	0	0	27	26
193	6-11yrs	34	3	0	0	0	28	31
194	6-11yrs	28	4	2	0	1	29	34
195	6-11yrs	30	4	1	0	1	30	35
196	6-11yrs	32	1	0	0	0	31	10
197	6-11yrs	34	2	0	0	0	32	23
198	6-11yrs	42	1	0	0	0	33	16
199	6-11yrs	32	2	2	0	0	34	22
200	6-11yrs	39	1	0	0	0	35	13
201	6-11yrs	35	2	0	0	0	36	24
202	6-11yrs	36	1	0	0	0	37	12
203	6-11yrs	34	3	2	0	0	38	31
204	6-11yrs	30	3	0	0	1	39	30
205	6-11yrs	28	1	0	0	0	40	8
206	6-11yrs	39	3	0	0	0	41	33
207	6-11yrs	35	1	0	0	0	42	11
208	6-11yrs	41	1	0	0	0	43	15
209	6-11yrs	37	2	0	0	0	44	25
210	12+ yrs	30	1	0	0	0	45	44
211	12+ yrs	37	1	0	0	1	46	48
212	12+ yrs	28	2	1	0	0	47	51
213	12+ yrs	27	4	2	0	0	48	61
214	12+ yrs	26	2	1	0	0	49	49
215	12+ yrs	38	3	1	0	0	50	60
216	12+ yrs	24	3	2	0	0	51	56
217	12+ yrs	36	5	2	0	1	52	62
218	12+ yrs	27	3	2	0	0	53	57
219	12+ yrs	28	1	0	0	1	54	42
220	12+ yrs	29	2	1	0	1	55	52
221	12+ yrs	36	2	0	0	1	56	55
222	12+ yrs	28	2	2	0	0	57	51
223	12+ yrs	28	2	1	0	0	58	51
224	12+ yrs	28	1	0	0	0	59	42
225	12+ yrs	27	2	1	0	0	60	50
226	12+ yrs	35	2	1	0	0	61	54
227	12+ yrs	25	1	1	0	0	62	41
228	12+ yrs	34	1	0	0	0	63	47
229	12+ yrs	31	2	1	0	0	64	53
230	12+ yrs	26	2	0	0	2	65	49
231	12+ yrs	32	1	1	0	0	66	46
232	12+ yrs	21	1	0	0	0	67	39
233	12+ yrs	28	3	2	0	0	68	58
234	12+ yrs	37	3	0	0	2	69	59
235	12+ yrs	25	1	1	0	0	70	41
236	12+ yrs	32	1	0	0	0	71	46
237	12+ yrs	25	1	1	0	0	72	41
238	12+ yrs	31	1	0	0	0	73	45
239	12+ yrs	38	6	0	0	2	74	63
240	12+ yrs	26	2	1	0	1	75	49
241	12+ yrs	31	1	1	0	0	76	45
242	12+ yrs	31	2	0	0	1	77	53
243	12+ yrs	25	1	0	0	1	78	41
244	12+ yrs	31	1	0	0	1	79	45
245	12+ yrs	34	1	0	0	0	80	47
246	12+ yrs	35	2	2	0	0	81	54
247	12+ yrs	29	1	0	0	1	82	43
248	12+ yrs	23	1	0	0	1	83	40
\.


--
-- Name: infert_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('infert_id_seq', 248, true);


--
-- Data for Name: insectsprays; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY insectsprays (id, count, spray) FROM stdin;
1	10	A
2	7	A
3	20	A
4	14	A
5	14	A
6	12	A
7	10	A
8	23	A
9	17	A
10	20	A
11	14	A
12	13	A
13	11	B
14	17	B
15	21	B
16	11	B
17	16	B
18	14	B
19	17	B
20	17	B
21	19	B
22	21	B
23	7	B
24	13	B
25	0	C
26	1	C
27	7	C
28	2	C
29	3	C
30	1	C
31	2	C
32	1	C
33	3	C
34	0	C
35	1	C
36	4	C
37	3	D
38	5	D
39	12	D
40	6	D
41	4	D
42	3	D
43	5	D
44	5	D
45	5	D
46	5	D
47	2	D
48	4	D
49	3	E
50	5	E
51	3	E
52	5	E
53	3	E
54	6	E
55	1	E
56	1	E
57	3	E
58	2	E
59	6	E
60	4	E
61	11	F
62	9	F
63	15	F
64	22	F
65	15	F
66	16	F
67	13	F
68	10	F
69	26	F
70	26	F
71	24	F
72	13	F
\.


--
-- Name: insectsprays_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('insectsprays_id_seq', 72, true);


--
-- Data for Name: iris; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY iris (id, sepal_length, sepal_width, petal_length, petal_width, species) FROM stdin;
1	5.1	3.5	1.4	0.2	setosa
2	4.9	3.0	1.4	0.2	setosa
3	4.7	3.2	1.3	0.2	setosa
4	4.6	3.1	1.5	0.2	setosa
5	5.0	3.6	1.4	0.2	setosa
6	5.4	3.9	1.7	0.4	setosa
7	4.6	3.4	1.4	0.3	setosa
8	5.0	3.4	1.5	0.2	setosa
9	4.4	2.9	1.4	0.2	setosa
10	4.9	3.1	1.5	0.1	setosa
11	5.4	3.7	1.5	0.2	setosa
12	4.8	3.4	1.6	0.2	setosa
13	4.8	3.0	1.4	0.1	setosa
14	4.3	3.0	1.1	0.1	setosa
15	5.8	4.0	1.2	0.2	setosa
16	5.7	4.4	1.5	0.4	setosa
17	5.4	3.9	1.3	0.4	setosa
18	5.1	3.5	1.4	0.3	setosa
19	5.7	3.8	1.7	0.3	setosa
20	5.1	3.8	1.5	0.3	setosa
21	5.4	3.4	1.7	0.2	setosa
22	5.1	3.7	1.5	0.4	setosa
23	4.6	3.6	1.0	0.2	setosa
24	5.1	3.3	1.7	0.5	setosa
25	4.8	3.4	1.9	0.2	setosa
26	5.0	3.0	1.6	0.2	setosa
27	5.0	3.4	1.6	0.4	setosa
28	5.2	3.5	1.5	0.2	setosa
29	5.2	3.4	1.4	0.2	setosa
30	4.7	3.2	1.6	0.2	setosa
31	4.8	3.1	1.6	0.2	setosa
32	5.4	3.4	1.5	0.4	setosa
33	5.2	4.1	1.5	0.1	setosa
34	5.5	4.2	1.4	0.2	setosa
35	4.9	3.1	1.5	0.2	setosa
36	5.0	3.2	1.2	0.2	setosa
37	5.5	3.5	1.3	0.2	setosa
38	4.9	3.6	1.4	0.1	setosa
39	4.4	3.0	1.3	0.2	setosa
40	5.1	3.4	1.5	0.2	setosa
41	5.0	3.5	1.3	0.3	setosa
42	4.5	2.3	1.3	0.3	setosa
43	4.4	3.2	1.3	0.2	setosa
44	5.0	3.5	1.6	0.6	setosa
45	5.1	3.8	1.9	0.4	setosa
46	4.8	3.0	1.4	0.3	setosa
47	5.1	3.8	1.6	0.2	setosa
48	4.6	3.2	1.4	0.2	setosa
49	5.3	3.7	1.5	0.2	setosa
50	5.0	3.3	1.4	0.2	setosa
51	7.0	3.2	4.7	1.4	versicolor
52	6.4	3.2	4.5	1.5	versicolor
53	6.9	3.1	4.9	1.5	versicolor
54	5.5	2.3	4.0	1.3	versicolor
55	6.5	2.8	4.6	1.5	versicolor
56	5.7	2.8	4.5	1.3	versicolor
57	6.3	3.3	4.7	1.6	versicolor
58	4.9	2.4	3.3	1.0	versicolor
59	6.6	2.9	4.6	1.3	versicolor
60	5.2	2.7	3.9	1.4	versicolor
61	5.0	2.0	3.5	1.0	versicolor
62	5.9	3.0	4.2	1.5	versicolor
63	6.0	2.2	4.0	1.0	versicolor
64	6.1	2.9	4.7	1.4	versicolor
65	5.6	2.9	3.6	1.3	versicolor
66	6.7	3.1	4.4	1.4	versicolor
67	5.6	3.0	4.5	1.5	versicolor
68	5.8	2.7	4.1	1.0	versicolor
69	6.2	2.2	4.5	1.5	versicolor
70	5.6	2.5	3.9	1.1	versicolor
71	5.9	3.2	4.8	1.8	versicolor
72	6.1	2.8	4.0	1.3	versicolor
73	6.3	2.5	4.9	1.5	versicolor
74	6.1	2.8	4.7	1.2	versicolor
75	6.4	2.9	4.3	1.3	versicolor
76	6.6	3.0	4.4	1.4	versicolor
77	6.8	2.8	4.8	1.4	versicolor
78	6.7	3.0	5.0	1.7	versicolor
79	6.0	2.9	4.5	1.5	versicolor
80	5.7	2.6	3.5	1.0	versicolor
81	5.5	2.4	3.8	1.1	versicolor
82	5.5	2.4	3.7	1.0	versicolor
83	5.8	2.7	3.9	1.2	versicolor
84	6.0	2.7	5.1	1.6	versicolor
85	5.4	3.0	4.5	1.5	versicolor
86	6.0	3.4	4.5	1.6	versicolor
87	6.7	3.1	4.7	1.5	versicolor
88	6.3	2.3	4.4	1.3	versicolor
89	5.6	3.0	4.1	1.3	versicolor
90	5.5	2.5	4.0	1.3	versicolor
91	5.5	2.6	4.4	1.2	versicolor
92	6.1	3.0	4.6	1.4	versicolor
93	5.8	2.6	4.0	1.2	versicolor
94	5.0	2.3	3.3	1.0	versicolor
95	5.6	2.7	4.2	1.3	versicolor
96	5.7	3.0	4.2	1.2	versicolor
97	5.7	2.9	4.2	1.3	versicolor
98	6.2	2.9	4.3	1.3	versicolor
99	5.1	2.5	3.0	1.1	versicolor
100	5.7	2.8	4.1	1.3	versicolor
101	6.3	3.3	6.0	2.5	virginica
102	5.8	2.7	5.1	1.9	virginica
103	7.1	3.0	5.9	2.1	virginica
104	6.3	2.9	5.6	1.8	virginica
105	6.5	3.0	5.8	2.2	virginica
106	7.6	3.0	6.6	2.1	virginica
107	4.9	2.5	4.5	1.7	virginica
108	7.3	2.9	6.3	1.8	virginica
109	6.7	2.5	5.8	1.8	virginica
110	7.2	3.6	6.1	2.5	virginica
111	6.5	3.2	5.1	2.0	virginica
112	6.4	2.7	5.3	1.9	virginica
113	6.8	3.0	5.5	2.1	virginica
114	5.7	2.5	5.0	2.0	virginica
115	5.8	2.8	5.1	2.4	virginica
116	6.4	3.2	5.3	2.3	virginica
117	6.5	3.0	5.5	1.8	virginica
118	7.7	3.8	6.7	2.2	virginica
119	7.7	2.6	6.9	2.3	virginica
120	6.0	2.2	5.0	1.5	virginica
121	6.9	3.2	5.7	2.3	virginica
122	5.6	2.8	4.9	2.0	virginica
123	7.7	2.8	6.7	2.0	virginica
124	6.3	2.7	4.9	1.8	virginica
125	6.7	3.3	5.7	2.1	virginica
126	7.2	3.2	6.0	1.8	virginica
127	6.2	2.8	4.8	1.8	virginica
128	6.1	3.0	4.9	1.8	virginica
129	6.4	2.8	5.6	2.1	virginica
130	7.2	3.0	5.8	1.6	virginica
131	7.4	2.8	6.1	1.9	virginica
132	7.9	3.8	6.4	2.0	virginica
133	6.4	2.8	5.6	2.2	virginica
134	6.3	2.8	5.1	1.5	virginica
135	6.1	2.6	5.6	1.4	virginica
136	7.7	3.0	6.1	2.3	virginica
137	6.3	3.4	5.6	2.4	virginica
138	6.4	3.1	5.5	1.8	virginica
139	6.0	3.0	4.8	1.8	virginica
140	6.9	3.1	5.4	2.1	virginica
141	6.7	3.1	5.6	2.4	virginica
142	6.9	3.1	5.1	2.3	virginica
143	5.8	2.7	5.1	1.9	virginica
144	6.8	3.2	5.9	2.3	virginica
145	6.7	3.3	5.7	2.5	virginica
146	6.7	3.0	5.2	2.3	virginica
147	6.3	2.5	5.0	1.9	virginica
148	6.5	3.0	5.2	2.0	virginica
149	6.2	3.4	5.4	2.3	virginica
150	5.9	3.0	5.1	1.8	virginica
\.


--
-- Data for Name: iris3; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY iris3 (id, sepal_l__setosa, sepal_w__setosa, petal_l__setosa, petal_w__setosa, sepal_l__versicolor, sepal_w__versicolor, petal_l__versicolor, petal_w__versicolor, sepal_l__virginica, sepal_w__virginica, petal_l__virginica, petal_w__virginica) FROM stdin;
1	5.1	3.5	1.4	0.2	7	3.2	4.7	1.4	6.3	3.3	6	2.5
2	4.9	3	1.4	0.2	6.4	3.2	4.5	1.5	5.8	2.7	5.1	1.9
3	4.7	3.2	1.3	0.2	6.9	3.1	4.9	1.5	7.1	3	5.9	2.1
4	4.6	3.1	1.5	0.2	5.5	2.3	4	1.3	6.3	2.9	5.6	1.8
5	5	3.6	1.4	0.2	6.5	2.8	4.6	1.5	6.5	3	5.8	2.2
6	5.4	3.9	1.7	0.4	5.7	2.8	4.5	1.3	7.6	3	6.6	2.1
7	4.6	3.4	1.4	0.3	6.3	3.3	4.7	1.6	4.9	2.5	4.5	1.7
8	5	3.4	1.5	0.2	4.9	2.4	3.3	1	7.3	2.9	6.3	1.8
9	4.4	2.9	1.4	0.2	6.6	2.9	4.6	1.3	6.7	2.5	5.8	1.8
10	4.9	3.1	1.5	0.1	5.2	2.7	3.9	1.4	7.2	3.6	6.1	2.5
11	5.4	3.7	1.5	0.2	5	2	3.5	1	6.5	3.2	5.1	2
12	4.8	3.4	1.6	0.2	5.9	3	4.2	1.5	6.4	2.7	5.3	1.9
13	4.8	3	1.4	0.1	6	2.2	4	1	6.8	3	5.5	2.1
14	4.3	3	1.1	0.1	6.1	2.9	4.7	1.4	5.7	2.5	5	2
15	5.8	4	1.2	0.2	5.6	2.9	3.6	1.3	5.8	2.8	5.1	2.4
16	5.7	4.4	1.5	0.4	6.7	3.1	4.4	1.4	6.4	3.2	5.3	2.3
17	5.4	3.9	1.3	0.4	5.6	3	4.5	1.5	6.5	3	5.5	1.8
18	5.1	3.5	1.4	0.3	5.8	2.7	4.1	1	7.7	3.8	6.7	2.2
19	5.7	3.8	1.7	0.3	6.2	2.2	4.5	1.5	7.7	2.6	6.9	2.3
20	5.1	3.8	1.5	0.3	5.6	2.5	3.9	1.1	6	2.2	5	1.5
21	5.4	3.4	1.7	0.2	5.9	3.2	4.8	1.8	6.9	3.2	5.7	2.3
22	5.1	3.7	1.5	0.4	6.1	2.8	4	1.3	5.6	2.8	4.9	2
23	4.6	3.6	1	0.2	6.3	2.5	4.9	1.5	7.7	2.8	6.7	2
24	5.1	3.3	1.7	0.5	6.1	2.8	4.7	1.2	6.3	2.7	4.9	1.8
25	4.8	3.4	1.9	0.2	6.4	2.9	4.3	1.3	6.7	3.3	5.7	2.1
26	5	3	1.6	0.2	6.6	3	4.4	1.4	7.2	3.2	6	1.8
27	5	3.4	1.6	0.4	6.8	2.8	4.8	1.4	6.2	2.8	4.8	1.8
28	5.2	3.5	1.5	0.2	6.7	3	5	1.7	6.1	3	4.9	1.8
29	5.2	3.4	1.4	0.2	6	2.9	4.5	1.5	6.4	2.8	5.6	2.1
30	4.7	3.2	1.6	0.2	5.7	2.6	3.5	1	7.2	3	5.8	1.6
31	4.8	3.1	1.6	0.2	5.5	2.4	3.8	1.1	7.4	2.8	6.1	1.9
32	5.4	3.4	1.5	0.4	5.5	2.4	3.7	1	7.9	3.8	6.4	2
33	5.2	4.1	1.5	0.1	5.8	2.7	3.9	1.2	6.4	2.8	5.6	2.2
34	5.5	4.2	1.4	0.2	6	2.7	5.1	1.6	6.3	2.8	5.1	1.5
35	4.9	3.1	1.5	0.2	5.4	3	4.5	1.5	6.1	2.6	5.6	1.4
36	5	3.2	1.2	0.2	6	3.4	4.5	1.6	7.7	3	6.1	2.3
37	5.5	3.5	1.3	0.2	6.7	3.1	4.7	1.5	6.3	3.4	5.6	2.4
38	4.9	3.6	1.4	0.1	6.3	2.3	4.4	1.3	6.4	3.1	5.5	1.8
39	4.4	3	1.3	0.2	5.6	3	4.1	1.3	6	3	4.8	1.8
40	5.1	3.4	1.5	0.2	5.5	2.5	4	1.3	6.9	3.1	5.4	2.1
41	5	3.5	1.3	0.3	5.5	2.6	4.4	1.2	6.7	3.1	5.6	2.4
42	4.5	2.3	1.3	0.3	6.1	3	4.6	1.4	6.9	3.1	5.1	2.3
43	4.4	3.2	1.3	0.2	5.8	2.6	4	1.2	5.8	2.7	5.1	1.9
44	5	3.5	1.6	0.6	5	2.3	3.3	1	6.8	3.2	5.9	2.3
45	5.1	3.8	1.9	0.4	5.6	2.7	4.2	1.3	6.7	3.3	5.7	2.5
46	4.8	3	1.4	0.3	5.7	3	4.2	1.2	6.7	3	5.2	2.3
47	5.1	3.8	1.6	0.2	5.7	2.9	4.2	1.3	6.3	2.5	5	1.9
48	4.6	3.2	1.4	0.2	6.2	2.9	4.3	1.3	6.5	3	5.2	2
49	5.3	3.7	1.5	0.2	5.1	2.5	3	1.1	6.2	3.4	5.4	2.3
50	5	3.3	1.4	0.2	5.7	2.8	4.1	1.3	5.9	3	5.1	1.8
\.


--
-- Name: iris3_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('iris3_id_seq', 50, true);


--
-- Name: iris_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('iris_id_seq', 150, true);


--
-- Data for Name: islands; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY islands (id, "eval(parse(text_=_name))") FROM stdin;
1	11506
2	5500
3	16988
4	2968
5	16
6	184
7	23
8	280
9	84
10	73
11	25
12	43
13	21
14	82
15	3745
16	840
17	13
18	30
19	30
20	89
21	40
22	33
23	49
24	14
25	42
26	227
27	16
28	36
29	29
30	15
31	306
32	44
33	58
34	43
35	9390
36	32
37	13
38	29
39	6795
40	16
41	15
42	183
43	14
44	26
45	19
46	13
47	12
48	82
\.


--
-- Name: islands_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('islands_id_seq', 48, true);


--
-- Data for Name: johnsonjohnson; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY johnsonjohnson (id, x) FROM stdin;
1	0.71
2	0.63
3	0.85
4	0.44
5	0.61
6	0.69
7	0.92
8	0.55
9	0.72
10	0.77
11	0.92
12	0.6
13	0.83
14	0.8
15	1
16	0.77
17	0.92
18	1
19	1.24
20	1
21	1.16
22	1.3
23	1.45
24	1.25
25	1.26
26	1.38
27	1.86
28	1.56
29	1.53
30	1.59
31	1.83
32	1.86
33	1.53
34	2.07
35	2.34
36	2.25
37	2.16
38	2.43
39	2.7
40	2.25
41	2.79
42	3.42
43	3.69
44	3.6
45	3.6
46	4.32
47	4.32
48	4.05
49	4.86
50	5.04
51	5.04
52	4.41
53	5.58
54	5.85
55	6.57
56	5.31
57	6.03
58	6.39
59	6.93
60	5.85
61	6.93
62	7.74
63	7.83
64	6.12
65	7.74
66	8.91
67	8.28
68	6.84
69	9.54
70	10.26
71	9.54
72	8.73
73	11.88
74	12.06
75	12.15
76	8.91
77	14.04
78	12.96
79	14.85
80	9.99
81	16.2
82	14.67
83	16.02
84	11.61
\.


--
-- Name: johnsonjohnson_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('johnsonjohnson_id_seq', 84, true);


--
-- Data for Name: lakehuron; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY lakehuron (id, x) FROM stdin;
1	580.38
2	581.86
3	580.97
4	580.8
5	579.79
6	580.39
7	580.42
8	580.82
9	581.4
10	581.32
11	581.44
12	581.68
13	581.17
14	580.53
15	580.01
16	579.91
17	579.14
18	579.16
19	579.55
20	579.67
21	578.44
22	578.24
23	579.1
24	579.09
25	579.35
26	578.82
27	579.32
28	579.01
29	579
30	579.8
31	579.83
32	579.72
33	579.89
34	580.01
35	579.37
36	578.69
37	578.19
38	578.67
39	579.55
40	578.92
41	578.09
42	579.37
43	580.13
44	580.14
45	579.51
46	579.24
47	578.66
48	578.86
49	578.05
50	577.79
51	576.75
52	576.75
53	577.82
54	578.64
55	580.58
56	579.48
57	577.38
58	576.9
59	576.94
60	576.24
61	576.84
62	576.85
63	576.9
64	577.79
65	578.18
66	577.51
67	577.23
68	578.42
69	579.61
70	579.05
71	579.26
72	579.22
73	579.38
74	579.1
75	577.95
76	578.12
77	579.75
78	580.85
79	580.41
80	579.96
81	579.61
82	578.76
83	578.18
84	577.21
85	577.13
86	579.1
87	578.25
88	577.91
89	576.89
90	575.96
91	576.8
92	577.68
93	578.38
94	578.52
95	579.74
96	579.31
97	579.89
98	579.96
\.


--
-- Name: lakehuron_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('lakehuron_id_seq', 98, true);


--
-- Data for Name: ldeaths; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY ldeaths (id, x) FROM stdin;
1	3035
2	2552
3	2704
4	2554
5	2014
6	1655
7	1721
8	1524
9	1596
10	2074
11	2199
12	2512
13	2933
14	2889
15	2938
16	2497
17	1870
18	1726
19	1607
20	1545
21	1396
22	1787
23	2076
24	2837
25	2787
26	3891
27	3179
28	2011
29	1636
30	1580
31	1489
32	1300
33	1356
34	1653
35	2013
36	2823
37	3102
38	2294
39	2385
40	2444
41	1748
42	1554
43	1498
44	1361
45	1346
46	1564
47	1640
48	2293
49	2815
50	3137
51	2679
52	1969
53	1870
54	1633
55	1529
56	1366
57	1357
58	1570
59	1535
60	2491
61	3084
62	2605
63	2573
64	2143
65	1693
66	1504
67	1461
68	1354
69	1333
70	1492
71	1781
72	1915
\.


--
-- Name: ldeaths_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('ldeaths_id_seq', 72, true);


--
-- Data for Name: lh; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY lh (id, x) FROM stdin;
1	2.4
2	2.4
3	2.4
4	2.2
5	2.1
6	1.5
7	2.3
8	2.3
9	2.5
10	2
11	1.9
12	1.7
13	2.2
14	1.8
15	3.2
16	3.2
17	2.7
18	2.2
19	2.2
20	1.9
21	1.9
22	1.8
23	2.7
24	3
25	2.3
26	2
27	2
28	2.9
29	2.9
30	2.7
31	2.7
32	2.3
33	2.6
34	2.4
35	1.8
36	1.7
37	1.5
38	1.4
39	2.1
40	3.3
41	3.5
42	3.5
43	3.1
44	2.6
45	2.1
46	3.4
47	3
48	2.9
\.


--
-- Name: lh_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('lh_id_seq', 48, true);


--
-- Data for Name: lifecyclesavings; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY lifecyclesavings (id, sr, pop15, pop75, dpi, ddpi) FROM stdin;
1	11.43	29.35	2.87	2329.68	2.87
2	12.07	23.32	4.41	1507.99	3.93
3	13.17	23.8	4.43	2108.47	3.82
4	5.75	41.89	1.67	189.13	0.22
5	12.88	42.19	0.83	728.47	4.56
6	8.79	31.72	2.85	2982.88	2.43
7	0.6	39.74	1.34	662.86	2.67
8	11.9	44.75	0.67	289.52	6.51
9	4.98	46.64	1.06	276.65	3.08
10	10.78	47.64	1.14	471.24	2.8
11	16.85	24.42	3.93	2496.53	3.99
12	3.59	46.31	1.19	287.77	2.19
13	11.24	27.84	2.37	1681.25	4.32
14	12.64	25.06	4.7	2213.82	4.52
15	12.55	23.31	3.35	2457.12	3.44
16	10.67	25.62	3.1	870.85	6.28
17	3.01	46.05	0.87	289.71	1.48
18	7.7	47.32	0.58	232.44	3.19
19	1.27	34.03	3.08	1900.1	1.12
20	9	41.31	0.96	88.94	1.54
21	11.34	31.16	4.19	1139.95	2.99
22	14.28	24.52	3.48	1390	3.54
23	21.1	27.01	1.91	1257.28	8.21
24	3.98	41.74	0.91	207.68	5.81
25	10.35	21.8	3.73	2449.39	1.57
26	15.48	32.54	2.47	601.05	8.12
27	10.25	25.95	3.67	2231.03	3.62
28	14.65	24.71	3.25	1740.7	7.66
29	10.67	32.61	3.17	1487.52	1.76
30	7.3	45.04	1.21	325.54	2.48
31	4.44	43.56	1.2	568.56	3.61
32	2.02	41.18	1.05	220.56	1.03
33	12.7	44.19	1.28	400.06	0.67
34	12.78	46.26	1.12	152.01	2
35	12.49	28.96	2.85	579.51	7.48
36	11.14	31.94	2.28	651.11	2.19
37	13.3	31.92	1.52	250.96	2
38	11.77	27.74	2.87	768.79	4.35
39	6.86	21.44	4.54	3299.49	3.01
40	14.13	23.49	3.73	2630.96	2.7
41	5.13	43.42	1.08	389.66	2.96
42	2.81	46.12	1.21	249.87	1.13
43	7.81	23.27	4.46	1813.93	2.01
44	7.56	29.81	3.43	4001.89	2.45
45	9.22	46.4	0.9	813.39	0.53
46	18.56	45.25	0.56	138.33	5.14
47	7.72	41.12	1.73	380.47	10.23
48	9.24	28.13	2.72	766.54	1.88
49	8.89	43.69	2.07	123.58	16.71
50	4.71	47.2	0.66	242.69	5.08
\.


--
-- Name: lifecyclesavings_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('lifecyclesavings_id_seq', 50, true);


--
-- Data for Name: loblolly; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY loblolly (id, height, age, seed) FROM stdin;
1	4.51	3	301
2	10.89	5	301
3	28.72	10	301
4	41.74	15	301
5	52.70	20	301
6	60.92	25	301
7	4.55	3	303
8	10.92	5	303
9	29.07	10	303
10	42.83	15	303
11	53.88	20	303
12	63.39	25	303
13	4.79	3	305
14	11.37	5	305
15	30.21	10	305
16	44.40	15	305
17	55.82	20	305
18	64.10	25	305
19	3.91	3	307
20	9.48	5	307
21	25.66	10	307
22	39.07	15	307
23	50.78	20	307
24	59.07	25	307
25	4.81	3	309
26	11.20	5	309
27	28.66	10	309
28	41.66	15	309
29	53.31	20	309
30	63.05	25	309
31	3.88	3	311
32	9.40	5	311
33	25.99	10	311
34	39.55	15	311
35	51.46	20	311
36	59.64	25	311
37	4.32	3	315
38	10.43	5	315
39	27.16	10	315
40	40.85	15	315
41	51.33	20	315
42	60.07	25	315
43	4.57	3	319
44	10.57	5	319
45	27.90	10	319
46	41.13	15	319
47	52.43	20	319
48	60.69	25	319
49	3.77	3	321
50	9.03	5	321
51	25.45	10	321
52	38.98	15	321
53	49.76	20	321
54	60.28	25	321
55	4.33	3	323
56	10.79	5	323
57	28.97	10	323
58	42.44	15	323
59	53.17	20	323
60	61.62	25	323
61	4.38	3	325
62	10.48	5	325
63	27.93	10	325
64	40.20	15	325
65	50.06	20	325
66	58.49	25	325
67	4.12	3	327
68	9.92	5	327
69	26.54	10	327
70	37.82	15	327
71	48.43	20	327
72	56.81	25	327
73	3.93	3	329
74	9.34	5	329
75	26.08	10	329
76	37.79	15	329
77	48.31	20	329
78	56.43	25	329
79	3.46	3	331
80	9.05	5	331
81	25.85	10	331
82	39.15	15	331
83	49.12	20	331
84	59.49	25	331
\.


--
-- Name: loblolly_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('loblolly_id_seq', 84, true);


--
-- Data for Name: longley; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY longley (id, gnp_deflator, gnp, unemployed, armed_forces, population, year, employed) FROM stdin;
1	83	234.289	235.6	159	107.608	1947	60.323
2	88.5	259.426	232.5	145.6	108.632	1948	61.122
3	88.2	258.054	368.2	161.6	109.773	1949	60.171
4	89.5	284.599	335.1	165	110.929	1950	61.187
5	96.2	328.975	209.9	309.9	112.075	1951	63.221
6	98.1	346.999	193.2	359.4	113.27	1952	63.639
7	99	365.385	187	354.7	115.094	1953	64.989
8	100	363.112	357.8	335	116.219	1954	63.761
9	101.2	397.469	290.4	304.8	117.388	1955	66.019
10	104.6	419.18	282.2	285.7	118.734	1956	67.857
11	108.4	442.769	293.6	279.8	120.445	1957	68.169
12	110.8	444.546	468.1	263.7	121.95	1958	66.513
13	112.6	482.704	381.3	255.2	123.366	1959	68.655
14	114.2	502.601	393.1	251.4	125.368	1960	69.564
15	115.7	518.173	480.6	257.2	127.852	1961	69.331
16	116.9	554.894	400.7	282.7	130.081	1962	70.551
\.


--
-- Name: longley_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('longley_id_seq', 16, true);


--
-- Data for Name: lynx; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY lynx (id, x) FROM stdin;
1	269
2	321
3	585
4	871
5	1475
6	2821
7	3928
8	5943
9	4950
10	2577
11	523
12	98
13	184
14	279
15	409
16	2285
17	2685
18	3409
19	1824
20	409
21	151
22	45
23	68
24	213
25	546
26	1033
27	2129
28	2536
29	957
30	361
31	377
32	225
33	360
34	731
35	1638
36	2725
37	2871
38	2119
39	684
40	299
41	236
42	245
43	552
44	1623
45	3311
46	6721
47	4254
48	687
49	255
50	473
51	358
52	784
53	1594
54	1676
55	2251
56	1426
57	756
58	299
59	201
60	229
61	469
62	736
63	2042
64	2811
65	4431
66	2511
67	389
68	73
69	39
70	49
71	59
72	188
73	377
74	1292
75	4031
76	3495
77	587
78	105
79	153
80	387
81	758
82	1307
83	3465
84	6991
85	6313
86	3794
87	1836
88	345
89	382
90	808
91	1388
92	2713
93	3800
94	3091
95	2985
96	3790
97	674
98	81
99	80
100	108
101	229
102	399
103	1132
104	2432
105	3574
106	2935
107	1537
108	529
109	485
110	662
111	1000
112	1590
113	2657
114	3396
\.


--
-- Name: lynx_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('lynx_id_seq', 114, true);


--
-- Data for Name: mdeaths; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY mdeaths (id, x) FROM stdin;
1	2134
2	1863
3	1877
4	1877
5	1492
6	1249
7	1280
8	1131
9	1209
10	1492
11	1621
12	1846
13	2103
14	2137
15	2153
16	1833
17	1403
18	1288
19	1186
20	1133
21	1053
22	1347
23	1545
24	2066
25	2020
26	2750
27	2283
28	1479
29	1189
30	1160
31	1113
32	970
33	999
34	1208
35	1467
36	2059
37	2240
38	1634
39	1722
40	1801
41	1246
42	1162
43	1087
44	1013
45	959
46	1179
47	1229
48	1655
49	2019
50	2284
51	1942
52	1423
53	1340
54	1187
55	1098
56	1004
57	970
58	1140
59	1110
60	1812
61	2263
62	1820
63	1846
64	1531
65	1215
66	1075
67	1056
68	975
69	940
70	1081
71	1294
72	1341
\.


--
-- Name: mdeaths_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('mdeaths_id_seq', 72, true);


--
-- Data for Name: morley; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY morley (id, expt, run, speed) FROM stdin;
1	1	1	850
2	1	2	740
3	1	3	900
4	1	4	1070
5	1	5	930
6	1	6	850
7	1	7	950
8	1	8	980
9	1	9	980
10	1	10	880
11	1	11	1000
12	1	12	980
13	1	13	930
14	1	14	650
15	1	15	760
16	1	16	810
17	1	17	1000
18	1	18	1000
19	1	19	960
20	1	20	960
21	2	1	960
22	2	2	940
23	2	3	960
24	2	4	940
25	2	5	880
26	2	6	800
27	2	7	850
28	2	8	880
29	2	9	900
30	2	10	840
31	2	11	830
32	2	12	790
33	2	13	810
34	2	14	880
35	2	15	880
36	2	16	830
37	2	17	800
38	2	18	790
39	2	19	760
40	2	20	800
41	3	1	880
42	3	2	880
43	3	3	880
44	3	4	860
45	3	5	720
46	3	6	720
47	3	7	620
48	3	8	860
49	3	9	970
50	3	10	950
51	3	11	880
52	3	12	910
53	3	13	850
54	3	14	870
55	3	15	840
56	3	16	840
57	3	17	850
58	3	18	840
59	3	19	840
60	3	20	840
61	4	1	890
62	4	2	810
63	4	3	810
64	4	4	820
65	4	5	800
66	4	6	770
67	4	7	760
68	4	8	740
69	4	9	750
70	4	10	760
71	4	11	910
72	4	12	920
73	4	13	890
74	4	14	860
75	4	15	880
76	4	16	720
77	4	17	840
78	4	18	850
79	4	19	850
80	4	20	780
81	5	1	890
82	5	2	840
83	5	3	780
84	5	4	810
85	5	5	760
86	5	6	810
87	5	7	790
88	5	8	810
89	5	9	820
90	5	10	850
91	5	11	870
92	5	12	870
93	5	13	810
94	5	14	740
95	5	15	810
96	5	16	940
97	5	17	950
98	5	18	800
99	5	19	810
100	5	20	870
\.


--
-- Name: morley_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('morley_id_seq', 100, true);


--
-- Data for Name: mtcars; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY mtcars (id, mpg, cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb) FROM stdin;
1	21	6	160	110	3.9	2.62	16.46	0	1	4	4
2	21	6	160	110	3.9	2.875	17.02	0	1	4	4
3	22.8	4	108	93	3.85	2.32	18.61	1	1	4	1
4	21.4	6	258	110	3.08	3.215	19.44	1	0	3	1
5	18.7	8	360	175	3.15	3.44	17.02	0	0	3	2
6	18.1	6	225	105	2.76	3.46	20.22	1	0	3	1
7	14.3	8	360	245	3.21	3.57	15.84	0	0	3	4
8	24.4	4	146.7	62	3.69	3.19	20	1	0	4	2
9	22.8	4	140.8	95	3.92	3.15	22.9	1	0	4	2
10	19.2	6	167.6	123	3.92	3.44	18.3	1	0	4	4
11	17.8	6	167.6	123	3.92	3.44	18.9	1	0	4	4
12	16.4	8	275.8	180	3.07	4.07	17.4	0	0	3	3
13	17.3	8	275.8	180	3.07	3.73	17.6	0	0	3	3
14	15.2	8	275.8	180	3.07	3.78	18	0	0	3	3
15	10.4	8	472	205	2.93	5.25	17.98	0	0	3	4
16	10.4	8	460	215	3	5.424	17.82	0	0	3	4
17	14.7	8	440	230	3.23	5.345	17.42	0	0	3	4
18	32.4	4	78.7	66	4.08	2.2	19.47	1	1	4	1
19	30.4	4	75.7	52	4.93	1.615	18.52	1	1	4	2
20	33.9	4	71.1	65	4.22	1.835	19.9	1	1	4	1
21	21.5	4	120.1	97	3.7	2.465	20.01	1	0	3	1
22	15.5	8	318	150	2.76	3.52	16.87	0	0	3	2
23	15.2	8	304	150	3.15	3.435	17.3	0	0	3	2
24	13.3	8	350	245	3.73	3.84	15.41	0	0	3	4
25	19.2	8	400	175	3.08	3.845	17.05	0	0	3	2
26	27.3	4	79	66	4.08	1.935	18.9	1	1	4	1
27	26	4	120.3	91	4.43	2.14	16.7	0	1	5	2
28	30.4	4	95.1	113	3.77	1.513	16.9	1	1	5	2
29	15.8	8	351	264	4.22	3.17	14.5	0	1	5	4
30	19.7	6	145	175	3.62	2.77	15.5	0	1	5	6
31	15	8	301	335	3.54	3.57	14.6	0	1	5	8
32	21.4	4	121	109	4.11	2.78	18.6	1	1	4	2
\.


--
-- Name: mtcars_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('mtcars_id_seq', 32, true);


--
-- Data for Name: nhtemp; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY nhtemp (id, x) FROM stdin;
1	49.9
2	52.3
3	49.4
4	51.1
5	49.4
6	47.9
7	49.8
8	50.9
9	49.3
10	51.9
11	50.8
12	49.6
13	49.3
14	50.6
15	48.4
16	50.7
17	50.9
18	50.6
19	51.5
20	52.8
21	51.8
22	51.1
23	49.8
24	50.2
25	50.4
26	51.6
27	51.8
28	50.9
29	48.8
30	51.7
31	51
32	50.6
33	51.7
34	51.5
35	52.1
36	51.3
37	51
38	54
39	51.4
40	52.7
41	53.1
42	54.6
43	52
44	52
45	50.9
46	52.6
47	50.2
48	52.6
49	51.6
50	51.9
51	50.5
52	50.9
53	51.7
54	51.4
55	51.7
56	50.8
57	51.9
58	51.8
59	51.9
60	53
\.


--
-- Name: nhtemp_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('nhtemp_id_seq', 60, true);


--
-- Data for Name: nile; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY nile (id, x) FROM stdin;
1	1120
2	1160
3	963
4	1210
5	1160
6	1160
7	813
8	1230
9	1370
10	1140
11	995
12	935
13	1110
14	994
15	1020
16	960
17	1180
18	799
19	958
20	1140
21	1100
22	1210
23	1150
24	1250
25	1260
26	1220
27	1030
28	1100
29	774
30	840
31	874
32	694
33	940
34	833
35	701
36	916
37	692
38	1020
39	1050
40	969
41	831
42	726
43	456
44	824
45	702
46	1120
47	1100
48	832
49	764
50	821
51	768
52	845
53	864
54	862
55	698
56	845
57	744
58	796
59	1040
60	759
61	781
62	865
63	845
64	944
65	984
66	897
67	822
68	1010
69	771
70	676
71	649
72	846
73	812
74	742
75	801
76	1040
77	860
78	874
79	848
80	890
81	744
82	749
83	838
84	1050
85	918
86	986
87	797
88	923
89	975
90	815
91	1020
92	906
93	901
94	1170
95	912
96	746
97	919
98	718
99	714
100	740
\.


--
-- Name: nile_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('nile_id_seq', 100, true);


--
-- Data for Name: nottem; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY nottem (id, x) FROM stdin;
1	40.6
2	40.8
3	44.4
4	46.7
5	54.1
6	58.5
7	57.7
8	56.4
9	54.3
10	50.5
11	42.9
12	39.8
13	44.2
14	39.8
15	45.1
16	47
17	54.1
18	58.7
19	66.3
20	59.9
21	57
22	54.2
23	39.7
24	42.8
25	37.5
26	38.7
27	39.5
28	42.1
29	55.7
30	57.8
31	56.8
32	54.3
33	54.3
34	47.1
35	41.8
36	41.7
37	41.8
38	40.1
39	42.9
40	45.8
41	49.2
42	52.7
43	64.2
44	59.6
45	54.4
46	49.2
47	36.3
48	37.6
49	39.3
50	37.5
51	38.3
52	45.5
53	53.2
54	57.7
55	60.8
56	58.2
57	56.4
58	49.8
59	44.4
60	43.6
61	40
62	40.5
63	40.8
64	45.1
65	53.8
66	59.4
67	63.5
68	61
69	53
70	50
71	38.1
72	36.3
73	39.2
74	43.4
75	43.4
76	48.9
77	50.6
78	56.8
79	62.5
80	62
81	57.5
82	46.7
83	41.6
84	39.8
85	39.4
86	38.5
87	45.3
88	47.1
89	51.7
90	55
91	60.4
92	60.5
93	54.7
94	50.3
95	42.3
96	35.2
97	40.8
98	41.1
99	42.8
100	47.3
101	50.9
102	56.4
103	62.2
104	60.5
105	55.4
106	50.2
107	43
108	37.3
109	34.8
110	31.3
111	41
112	43.9
113	53.1
114	56.9
115	62.5
116	60.3
117	59.8
118	49.2
119	42.9
120	41.9
121	41.6
122	37.1
123	41.2
124	46.9
125	51.2
126	60.4
127	60.1
128	61.6
129	57
130	50.9
131	43
132	38.8
133	37.1
134	38.4
135	38.4
136	46.5
137	53.5
138	58.4
139	60.6
140	58.2
141	53.8
142	46.6
143	45.5
144	40.6
145	42.4
146	38.4
147	40.3
148	44.6
149	50.9
150	57
151	62.1
152	63.5
153	56.3
154	47.3
155	43.6
156	41.8
157	36.2
158	39.3
159	44.5
160	48.7
161	54.2
162	60.8
163	65.5
164	64.9
165	60.1
166	50.2
167	42.1
168	35.8
169	39.4
170	38.2
171	40.4
172	46.9
173	53.4
174	59.6
175	66.5
176	60.4
177	59.2
178	51.2
179	42.8
180	45.8
181	40
182	42.6
183	43.5
184	47.1
185	50
186	60.5
187	64.6
188	64
189	56.8
190	48.6
191	44.2
192	36.4
193	37.3
194	35
195	44
196	43.9
197	52.7
198	58.6
199	60
200	61.1
201	58.1
202	49.6
203	41.6
204	41.3
205	40.8
206	41
207	38.4
208	47.4
209	54.1
210	58.6
211	61.4
212	61.8
213	56.3
214	50.9
215	41.4
216	37.1
217	42.1
218	41.2
219	47.3
220	46.6
221	52.4
222	59
223	59.6
224	60.4
225	57
226	50.7
227	47.8
228	39.2
229	39.4
230	40.9
231	42.4
232	47.8
233	52.4
234	58
235	60.7
236	61.8
237	58.2
238	46.7
239	46.6
240	37.8
\.


--
-- Name: nottem_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('nottem_id_seq', 240, true);


--
-- Data for Name: occupationalstatus; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY occupationalstatus (id, origin, destination, freq) FROM stdin;
1	1	1	 50
2	2	1	 16
3	3	1	 12
4	4	1	 11
5	5	1	  2
6	6	1	 12
7	7	1	  0
8	8	1	  0
9	1	2	 19
10	2	2	 40
11	3	2	 35
12	4	2	 20
13	5	2	  8
14	6	2	 28
15	7	2	  6
16	8	2	  3
17	1	3	 26
18	2	3	 34
19	3	3	 65
20	4	3	 58
21	5	3	 12
22	6	3	102
23	7	3	 19
24	8	3	 14
25	1	4	  8
26	2	4	 18
27	3	4	 66
28	4	4	110
29	5	4	 23
30	6	4	162
31	7	4	 40
32	8	4	 32
33	1	5	  7
34	2	5	 11
35	3	5	 35
36	4	5	 40
37	5	5	 25
38	6	5	 90
39	7	5	 21
40	8	5	 15
41	1	6	 11
42	2	6	 20
43	3	6	 88
44	4	6	183
45	5	6	 46
46	6	6	554
47	7	6	158
48	8	6	126
49	1	7	  6
50	2	7	  8
51	3	7	 23
52	4	7	 64
53	5	7	 28
54	6	7	230
55	7	7	143
56	8	7	 91
57	1	8	  2
58	2	8	  3
59	3	8	 21
60	4	8	 32
61	5	8	 12
62	6	8	177
63	7	8	 71
64	8	8	106
\.


--
-- Name: occupationalstatus_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('occupationalstatus_id_seq', 64, true);


--
-- Data for Name: orange; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY orange (id, tree, age, circumference) FROM stdin;
1	1	118	30
2	1	484	58
3	1	664	87
4	1	1004	115
5	1	1231	120
6	1	1372	142
7	1	1582	145
8	2	118	33
9	2	484	69
10	2	664	111
11	2	1004	156
12	2	1231	172
13	2	1372	203
14	2	1582	203
15	3	118	30
16	3	484	51
17	3	664	75
18	3	1004	108
19	3	1231	115
20	3	1372	139
21	3	1582	140
22	4	118	32
23	4	484	62
24	4	664	112
25	4	1004	167
26	4	1231	179
27	4	1372	209
28	4	1582	214
29	5	118	30
30	5	484	49
31	5	664	81
32	5	1004	125
33	5	1231	142
34	5	1372	174
35	5	1582	177
\.


--
-- Name: orange_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('orange_id_seq', 35, true);


--
-- Data for Name: orchardsprays; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY orchardsprays (id, decrease, rowpos, colpos, treatment) FROM stdin;
1	57	1	1	D
2	95	2	1	E
3	8	3	1	B
4	69	4	1	H
5	92	5	1	G
6	90	6	1	F
7	15	7	1	C
8	2	8	1	A
9	84	1	2	C
10	6	2	2	B
11	127	3	2	H
12	36	4	2	D
13	51	5	2	E
14	2	6	2	A
15	69	7	2	F
16	71	8	2	G
17	87	1	3	F
18	72	2	3	H
19	5	3	3	A
20	39	4	3	E
21	22	5	3	D
22	16	6	3	C
23	72	7	3	G
24	4	8	3	B
25	130	1	4	H
26	4	2	4	A
27	114	3	4	E
28	9	4	4	C
29	20	5	4	F
30	24	6	4	G
31	10	7	4	B
32	51	8	4	D
33	43	1	5	E
34	28	2	5	D
35	60	3	5	G
36	5	4	5	A
37	17	5	5	C
38	7	6	5	B
39	81	7	5	H
40	71	8	5	F
41	12	1	6	A
42	29	2	6	C
43	44	3	6	F
44	77	4	6	G
45	4	5	6	B
46	27	6	6	D
47	47	7	6	E
48	76	8	6	H
49	8	1	7	B
50	72	2	7	G
51	13	3	7	C
52	57	4	7	F
53	4	5	7	A
54	81	6	7	H
55	20	7	7	D
56	61	8	7	E
57	80	1	8	G
58	114	2	8	F
59	39	3	8	D
60	14	4	8	B
61	86	5	8	H
62	55	6	8	E
63	3	7	8	A
64	19	8	8	C
\.


--
-- Name: orchardsprays_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('orchardsprays_id_seq', 64, true);


--
-- Data for Name: plantgrowth; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY plantgrowth (id, weight, "group") FROM stdin;
1	4.17	ctrl
2	5.58	ctrl
3	5.18	ctrl
4	6.11	ctrl
5	4.50	ctrl
6	4.61	ctrl
7	5.17	ctrl
8	4.53	ctrl
9	5.33	ctrl
10	5.14	ctrl
11	4.81	trt1
12	4.17	trt1
13	4.41	trt1
14	3.59	trt1
15	5.87	trt1
16	3.83	trt1
17	6.03	trt1
18	4.89	trt1
19	4.32	trt1
20	4.69	trt1
21	6.31	trt2
22	5.12	trt2
23	5.54	trt2
24	5.50	trt2
25	5.37	trt2
26	5.29	trt2
27	4.92	trt2
28	6.15	trt2
29	5.80	trt2
30	5.26	trt2
\.


--
-- Name: plantgrowth_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('plantgrowth_id_seq', 30, true);


--
-- Data for Name: precip; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY precip (id, "eval(parse(text_=_name))") FROM stdin;
1	67
2	54.7
3	7
4	48.5
5	14
6	17.2
7	20.7
8	13
9	43.4
10	40.2
11	38.9
12	54.5
13	59.8
14	48.3
15	22.9
16	11.5
17	34.4
18	35.1
19	38.7
20	30.8
21	30.6
22	43.1
23	56.8
24	40.8
25	41.8
26	42.5
27	31
28	31.7
29	30.2
30	25.9
31	49.2
32	37
33	35.9
34	15
35	30.2
36	7.2
37	36.2
38	45.5
39	7.8
40	33.4
41	36.1
42	40.2
43	42.7
44	42.5
45	16.2
46	39
47	35
48	37
49	31.4
50	37.6
51	39.9
52	36.2
53	42.8
54	46.4
55	24.7
56	49.1
57	46
58	35.9
59	7.8
60	48.2
61	15.2
62	32.5
63	44.7
64	42.6
65	38.8
66	17.4
67	40.8
68	29.1
69	14.6
70	59.2
\.


--
-- Name: precip_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('precip_id_seq', 70, true);


--
-- Data for Name: presidents; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY presidents (id, x) FROM stdin;
1	\N
2	87
3	82
4	75
5	63
6	50
7	43
8	32
9	35
10	60
11	54
12	55
13	36
14	39
15	\N
16	\N
17	69
18	57
19	57
20	51
21	45
22	37
23	46
24	39
25	36
26	24
27	32
28	23
29	25
30	32
31	\N
32	32
33	59
34	74
35	75
36	60
37	71
38	61
39	71
40	57
41	71
42	68
43	79
44	73
45	76
46	71
47	67
48	75
49	79
50	62
51	63
52	57
53	60
54	49
55	48
56	52
57	57
58	62
59	61
60	66
61	71
62	62
63	61
64	57
65	72
66	83
67	71
68	78
69	79
70	71
71	62
72	74
73	76
74	64
75	62
76	57
77	80
78	73
79	69
80	69
81	71
82	64
83	69
84	62
85	63
86	46
87	56
88	44
89	44
90	52
91	38
92	46
93	36
94	49
95	35
96	44
97	59
98	65
99	65
100	56
101	66
102	53
103	61
104	52
105	51
106	48
107	54
108	49
109	49
110	61
111	\N
112	\N
113	68
114	44
115	40
116	27
117	28
118	25
119	24
120	24
\.


--
-- Name: presidents_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('presidents_id_seq', 120, true);


--
-- Data for Name: pressure; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY pressure (id, temperature, pressure) FROM stdin;
1	0	0.0002
2	20	0.0012
3	40	0.006
4	60	0.03
5	80	0.09
6	100	0.27
7	120	0.75
8	140	1.85
9	160	4.2
10	180	8.8
11	200	17.3
12	220	32.1
13	240	57
14	260	96
15	280	157
16	300	247
17	320	376
18	340	558
19	360	806
\.


--
-- Name: pressure_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('pressure_id_seq', 19, true);


--
-- Data for Name: puromycin; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY puromycin (id, conc, rate, state) FROM stdin;
1	0.02	76	treated
2	0.02	47	treated
3	0.06	97	treated
4	0.06	107	treated
5	0.11	123	treated
6	0.11	139	treated
7	0.22	159	treated
8	0.22	152	treated
9	0.56	191	treated
10	0.56	201	treated
11	1.10	207	treated
12	1.10	200	treated
13	0.02	67	untreated
14	0.02	51	untreated
15	0.06	84	untreated
16	0.06	86	untreated
17	0.11	98	untreated
18	0.11	115	untreated
19	0.22	131	untreated
20	0.22	124	untreated
21	0.56	144	untreated
22	0.56	158	untreated
23	1.10	160	untreated
\.


--
-- Name: puromycin_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('puromycin_id_seq', 23, true);


--
-- Data for Name: quakes; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY quakes (id, lat, long, depth, mag, stations) FROM stdin;
1	-20.42	181.62	562	4.8	41
2	-20.62	181.03	650	4.2	15
3	-26	184.1	42	5.4	43
4	-17.97	181.66	626	4.1	19
5	-20.42	181.96	649	4	11
6	-19.68	184.31	195	4	12
7	-11.7	166.1	82	4.8	43
8	-28.11	181.93	194	4.4	15
9	-28.74	181.74	211	4.7	35
10	-17.47	179.59	622	4.3	19
11	-21.44	180.69	583	4.4	13
12	-12.26	167	249	4.6	16
13	-18.54	182.11	554	4.4	19
14	-21	181.66	600	4.4	10
15	-20.7	169.92	139	6.1	94
16	-15.94	184.95	306	4.3	11
17	-13.64	165.96	50	6	83
18	-17.83	181.5	590	4.5	21
19	-23.5	179.78	570	4.4	13
20	-22.63	180.31	598	4.4	18
21	-20.84	181.16	576	4.5	17
22	-10.98	166.32	211	4.2	12
23	-23.3	180.16	512	4.4	18
24	-30.2	182	125	4.7	22
25	-19.66	180.28	431	5.4	57
26	-17.94	181.49	537	4	15
27	-14.72	167.51	155	4.6	18
28	-16.46	180.79	498	5.2	79
29	-20.97	181.47	582	4.5	25
30	-19.84	182.37	328	4.4	17
31	-22.58	179.24	553	4.6	21
32	-16.32	166.74	50	4.7	30
33	-15.55	185.05	292	4.8	42
34	-23.55	180.8	349	4	10
35	-16.3	186	48	4.5	10
36	-25.82	179.33	600	4.3	13
37	-18.73	169.23	206	4.5	17
38	-17.64	181.28	574	4.6	17
39	-17.66	181.4	585	4.1	17
40	-18.82	169.33	230	4.4	11
41	-37.37	176.78	263	4.7	34
42	-15.31	186.1	96	4.6	32
43	-24.97	179.82	511	4.4	23
44	-15.49	186.04	94	4.3	26
45	-19.23	169.41	246	4.6	27
46	-30.1	182.3	56	4.9	34
47	-26.4	181.7	329	4.5	24
48	-11.77	166.32	70	4.4	18
49	-24.12	180.08	493	4.3	21
50	-18.97	185.25	129	5.1	73
51	-18.75	182.35	554	4.2	13
52	-19.26	184.42	223	4	15
53	-22.75	173.2	46	4.6	26
54	-21.37	180.67	593	4.3	13
55	-20.1	182.16	489	4.2	16
56	-19.85	182.13	562	4.4	31
57	-22.7	181	445	4.5	17
58	-22.06	180.6	584	4	11
59	-17.8	181.35	535	4.4	23
60	-24.2	179.2	530	4.3	12
61	-20.69	181.55	582	4.7	35
62	-21.16	182.4	260	4.1	12
63	-13.82	172.38	613	5	61
64	-11.49	166.22	84	4.6	32
65	-20.68	181.41	593	4.9	40
66	-17.1	184.93	286	4.7	25
67	-20.14	181.6	587	4.1	13
68	-21.96	179.62	627	5	45
69	-20.42	181.86	530	4.5	27
70	-15.46	187.81	40	5.5	91
71	-15.31	185.8	152	4	11
72	-19.86	184.35	201	4.5	30
73	-11.55	166.2	96	4.3	14
74	-23.74	179.99	506	5.2	75
75	-17.7	181.23	546	4.4	35
76	-23.54	180.04	564	4.3	15
77	-19.21	184.7	197	4.1	11
78	-12.11	167.06	265	4.5	23
79	-21.81	181.71	323	4.2	15
80	-28.98	181.11	304	5.3	60
81	-34.02	180.21	75	5.2	65
82	-23.84	180.99	367	4.5	27
83	-19.57	182.38	579	4.6	38
84	-20.12	183.4	284	4.3	15
85	-17.7	181.7	450	4	11
86	-19.66	184.31	170	4.3	15
87	-21.5	170.5	117	4.7	32
88	-23.64	179.96	538	4.5	26
89	-15.43	186.3	123	4.2	16
90	-15.41	186.44	69	4.3	42
91	-15.48	167.53	128	5.1	61
92	-13.36	167.06	236	4.7	22
93	-20.64	182.02	497	5.2	64
94	-19.72	169.71	271	4.2	14
95	-15.44	185.26	224	4.2	21
96	-19.73	182.4	375	4	18
97	-27.24	181.11	365	4.5	21
98	-18.16	183.41	306	5.2	54
99	-13.66	166.54	50	5.1	45
100	-24.57	179.92	484	4.7	33
101	-16.98	185.61	108	4.1	12
102	-26.2	178.41	583	4.6	25
103	-21.88	180.39	608	4.7	30
104	-33	181.6	72	4.7	22
105	-21.33	180.69	636	4.6	29
106	-19.44	183.5	293	4.2	15
107	-34.89	180.6	42	4.4	25
108	-20.24	169.49	100	4.6	22
109	-22.55	185.9	42	5.7	76
110	-36.95	177.81	146	5	35
111	-15.75	185.23	280	4.5	28
112	-16.85	182.31	388	4.2	14
113	-19.06	182.45	477	4	16
114	-26.11	178.3	617	4.8	39
115	-26.2	178.35	606	4.4	21
116	-26.13	178.31	609	4.2	25
117	-13.66	172.23	46	5.3	67
118	-13.47	172.29	64	4.7	14
119	-14.6	167.4	178	4.8	52
120	-18.96	169.48	248	4.2	13
121	-14.65	166.97	82	4.8	28
122	-19.9	178.9	81	4.3	11
123	-22.05	180.4	606	4.7	27
124	-19.22	182.43	571	4.5	23
125	-31.24	180.6	328	4.4	18
126	-17.93	167.89	49	5.1	43
127	-19.3	183.84	517	4.2	21
128	-26.53	178.57	600	5	69
129	-27.72	181.7	94	4.8	59
130	-19.19	183.51	307	4.3	19
131	-17.43	185.43	189	4.5	22
132	-17.05	181.22	527	4.2	24
133	-19.52	168.98	63	4.5	21
134	-23.71	180.3	510	4.6	30
135	-21.3	180.82	624	4.3	14
136	-16.24	168.02	53	4.7	12
137	-16.14	187.32	42	5.1	68
138	-23.95	182.8	199	4.6	14
139	-25.2	182.6	149	4.9	31
140	-18.84	184.16	210	4.2	17
141	-12.66	169.46	658	4.6	43
142	-20.65	181.4	582	4	14
143	-13.23	167.1	220	5	46
144	-29.91	181.43	205	4.4	34
145	-14.31	173.5	614	4.2	23
146	-20.1	184.4	186	4.2	10
147	-17.8	185.17	97	4.4	22
148	-21.27	173.49	48	4.9	42
149	-23.58	180.17	462	5.3	63
150	-17.9	181.5	573	4	19
151	-23.34	184.5	56	5.7	106
152	-15.56	167.62	127	6.4	122
153	-23.83	182.56	229	4.3	24
154	-11.8	165.8	112	4.2	20
155	-15.54	167.68	140	4.7	16
156	-20.65	181.32	597	4.7	39
157	-11.75	166.07	69	4.2	14
158	-24.81	180	452	4.3	19
159	-20.9	169.84	93	4.9	31
160	-11.34	166.24	103	4.6	30
161	-17.98	180.5	626	4.1	19
162	-24.34	179.52	504	4.8	34
163	-13.86	167.16	202	4.6	30
164	-35.56	180.2	42	4.6	32
165	-35.48	179.9	59	4.8	35
166	-34.2	179.43	40	5	37
167	-26	182.12	205	5.6	98
168	-19.89	183.84	244	5.3	73
169	-23.43	180	553	4.7	41
170	-18.89	169.42	239	4.5	27
171	-17.82	181.83	640	4.3	24
172	-25.68	180.34	434	4.6	41
173	-20.2	180.9	627	4.1	11
174	-15.2	184.68	99	4.1	14
175	-15.03	182.29	399	4.1	10
176	-32.22	180.2	216	5.7	90
177	-22.64	180.64	544	5	50
178	-17.42	185.16	206	4.5	22
179	-17.84	181.48	542	4.1	20
180	-15.02	184.24	339	4.6	27
181	-18.04	181.75	640	4.5	47
182	-24.6	183.5	67	4.3	25
183	-19.88	184.3	161	4.4	17
184	-20.3	183	375	4.2	15
185	-20.45	181.85	534	4.1	14
186	-17.67	187.09	45	4.9	62
187	-22.3	181.9	309	4.3	11
188	-19.85	181.85	576	4.9	54
189	-24.27	179.88	523	4.6	24
190	-15.85	185.13	290	4.6	29
191	-20.02	184.09	234	5.3	71
192	-18.56	169.31	223	4.7	35
193	-17.87	182	569	4.6	12
194	-24.08	179.5	605	4.1	21
195	-32.2	179.61	422	4.6	41
196	-20.36	181.19	637	4.2	23
197	-23.85	182.53	204	4.6	27
198	-24	182.75	175	4.5	14
199	-20.41	181.74	538	4.3	31
200	-17.72	180.3	595	5.2	74
201	-19.67	182.18	360	4.3	23
202	-17.7	182.2	445	4	12
203	-16.23	183.59	367	4.7	35
204	-26.72	183.35	190	4.5	36
205	-12.95	169.09	629	4.5	19
206	-21.97	182.32	261	4.3	13
207	-21.96	180.54	603	5.2	66
208	-20.32	181.69	508	4.5	14
209	-30.28	180.62	350	4.7	32
210	-20.2	182.3	533	4.2	11
211	-30.66	180.13	411	4.7	42
212	-16.17	184.1	338	4.3	13
213	-28.25	181.71	226	4.1	19
214	-20.47	185.68	93	5.4	85
215	-23.55	180.27	535	4.3	22
216	-20.94	181.58	573	4.3	21
217	-26.67	182.4	186	4.2	17
218	-18.13	181.52	618	4.6	41
219	-20.21	183.83	242	4.4	29
220	-18.31	182.39	342	4.2	14
221	-16.52	185.7	90	4.7	30
222	-22.36	171.65	130	4.6	39
223	-22.43	184.48	65	4.9	48
224	-20.37	182.1	397	4.2	22
225	-23.77	180.16	505	4.5	26
226	-13.65	166.66	71	4.9	52
227	-21.55	182.9	207	4.2	18
228	-16.24	185.75	154	4.5	22
229	-23.73	182.53	232	5	55
230	-22.34	171.52	106	5	43
231	-19.4	180.94	664	4.7	34
232	-24.64	180.81	397	4.3	24
233	-16	182.82	431	4.4	16
234	-19.62	185.35	57	4.9	31
235	-23.84	180.13	525	4.5	15
236	-23.54	179.93	574	4	12
237	-28.23	182.68	74	4.4	20
238	-21.68	180.63	617	5	63
239	-13.44	166.53	44	4.7	27
240	-24.96	180.22	470	4.8	41
241	-20.08	182.74	298	4.5	33
242	-24.36	182.84	148	4.1	16
243	-14.7	166	48	5.3	16
244	-18.2	183.68	107	4.8	52
245	-16.65	185.51	218	5	52
246	-18.11	181.67	597	4.6	28
247	-17.95	181.65	619	4.3	26
248	-15.5	186.9	46	4.7	18
249	-23.36	180.01	553	5.3	61
250	-19.15	169.5	150	4.2	12
251	-10.97	166.26	180	4.7	26
252	-14.85	167.24	97	4.5	26
253	-17.8	181.38	587	5.1	47
254	-22.5	170.4	106	4.9	38
255	-29.1	182.1	179	4.4	19
256	-20.32	180.88	680	4.2	22
257	-16.09	184.89	304	4.6	34
258	-19.18	169.33	254	4.7	35
259	-23.81	179.36	521	4.2	23
260	-23.79	179.89	526	4.9	43
261	-19.02	184.23	270	5.1	72
262	-20.9	181.51	548	4.7	32
263	-19.06	169.01	158	4.4	10
264	-17.88	181.47	562	4.4	27
265	-19.41	183.05	300	4.2	16
266	-26.17	184.2	65	4.9	37
267	-14.95	167.24	130	4.6	16
268	-18.73	168.8	82	4.4	14
269	-20.21	182.37	482	4.6	37
270	-21.29	180.85	607	4.5	23
271	-19.76	181.41	105	4.4	15
272	-22.09	180.38	590	4.9	35
273	-23.8	179.9	498	4.1	12
274	-20.16	181.99	504	4.2	11
275	-22.13	180.38	577	5.7	104
276	-17.44	181.4	529	4.6	25
277	-23.33	180.18	528	5	59
278	-24.78	179.22	492	4.3	16
279	-22	180.52	561	4.5	19
280	-19.13	182.51	579	5.2	56
281	-30.72	180.1	413	4.4	22
282	-22.32	180.54	565	4.2	12
283	-16.45	177.77	138	4.6	17
284	-17.7	185	383	4	10
285	-17.95	184.68	260	4.4	21
286	-24.4	179.85	522	4.7	29
287	-19.3	180.6	671	4.2	16
288	-21.13	185.32	123	4.7	36
289	-18.07	181.57	572	4.5	26
290	-20.6	182.28	529	5	50
291	-18.48	181.49	641	5	49
292	-13.34	166.2	67	4.8	18
293	-20.92	181.5	546	4.6	31
294	-25.31	179.69	507	4.6	35
295	-15.24	186.21	158	5	57
296	-16.4	185.86	148	5	47
297	-24.57	178.4	562	5.6	80
298	-17.94	181.51	601	4	16
299	-30.64	181.2	175	4	16
300	-18.64	169.32	260	4.6	23
301	-13.09	169.28	654	4.4	22
302	-19.68	184.14	242	4.8	40
303	-16.44	185.74	126	4.7	30
304	-21.09	181.38	555	4.6	15
305	-14.99	171.39	637	4.3	21
306	-23.3	179.7	500	4.7	29
307	-17.68	181.36	515	4.1	19
308	-22	180.53	583	4.9	20
309	-21.38	181.39	501	4.6	36
310	-32.62	181.5	55	4.8	26
311	-13.05	169.58	644	4.9	68
312	-12.93	169.63	641	5.1	57
313	-18.6	181.91	442	5.4	82
314	-21.34	181.41	464	4.5	21
315	-21.48	183.78	200	4.9	54
316	-17.4	181.02	479	4.4	14
317	-17.32	181.03	497	4.1	13
318	-18.77	169.24	218	5.3	53
319	-26.16	179.5	492	4.5	25
320	-12.59	167.1	325	4.9	26
321	-14.82	167.32	123	4.8	28
322	-21.79	183.48	210	5.2	69
323	-19.83	182.04	575	4.4	23
324	-29.5	182.31	129	4.4	14
325	-12.49	166.36	74	4.9	55
326	-26.1	182.3	49	4.4	11
327	-21.04	181.2	483	4.2	10
328	-10.78	165.77	93	4.6	20
329	-20.76	185.77	118	4.6	15
330	-11.41	166.24	83	5.3	55
331	-19.1	183.87	61	5.3	42
332	-23.91	180	534	4.5	11
333	-27.33	182.6	42	4.4	11
334	-12.25	166.6	219	5	28
335	-23.49	179.07	544	5.1	58
336	-27.18	182.18	56	4.5	14
337	-25.8	182.1	68	4.5	26
338	-27.19	182.18	69	5.4	68
339	-27.27	182.38	45	4.5	16
340	-27.1	182.18	43	4.7	17
341	-27.22	182.28	65	4.2	14
342	-27.38	181.7	80	4.8	13
343	-27.27	182.5	51	4.5	13
344	-27.54	182.5	68	4.3	12
345	-27.2	182.39	69	4.3	14
346	-27.71	182.47	103	4.3	11
347	-27.6	182.4	61	4.6	11
348	-27.38	182.39	69	4.5	12
349	-21.54	185.48	51	5	29
350	-27.21	182.43	55	4.6	10
351	-28.96	182.61	54	4.6	15
352	-12.01	166.29	59	4.9	27
353	-17.46	181.32	573	4.1	17
354	-30.17	182.02	56	5.5	68
355	-27.27	182.36	65	4.7	21
356	-17.79	181.32	587	5	49
357	-22.19	171.4	150	5.1	49
358	-17.1	182.68	403	5.5	82
359	-27.18	182.53	60	4.6	21
360	-11.64	166.47	130	4.7	19
361	-17.98	181.58	590	4.2	14
362	-16.9	185.72	135	4	22
363	-21.98	179.6	583	5.4	67
364	-32.14	179.9	406	4.3	19
365	-18.8	169.21	221	4.4	16
366	-26.78	183.61	40	4.6	22
367	-20.43	182.37	502	5.1	48
368	-18.3	183.2	103	4.5	14
369	-15.83	182.51	423	4.2	21
370	-23.44	182.93	158	4.1	20
371	-23.73	179.99	527	5.1	49
372	-19.89	184.08	219	5.4	105
373	-17.59	181.09	536	5.1	61
374	-19.77	181.4	630	5.1	54
375	-20.31	184.06	249	4.4	21
376	-15.33	186.75	48	5.7	123
377	-18.2	181.6	553	4.4	14
378	-15.36	186.66	112	5.1	57
379	-15.29	186.42	153	4.6	31
380	-15.36	186.71	130	5.5	95
381	-16.24	167.95	188	5.1	68
382	-13.47	167.14	226	4.4	26
383	-25.5	182.82	124	5	25
384	-14.32	167.33	204	5	49
385	-20.04	182.01	605	5.1	49
386	-28.83	181.66	221	5.1	63
387	-17.82	181.49	573	4.2	14
388	-27.23	180.98	401	4.5	39
389	-10.72	165.99	195	4	14
390	-27	183.88	56	4.9	36
391	-20.36	186.16	102	4.3	21
392	-27.17	183.68	44	4.8	27
393	-20.94	181.26	556	4.4	21
394	-17.46	181.9	417	4.2	14
395	-21.04	181.2	591	4.9	45
396	-23.7	179.6	646	4.2	21
397	-17.72	181.42	565	5.3	89
398	-15.87	188.13	52	5	30
399	-17.84	181.3	535	5.7	112
400	-13.45	170.3	641	5.3	93
401	-30.8	182.16	41	4.7	24
402	-11.63	166.14	109	4.6	36
403	-30.4	181.4	40	4.3	17
404	-26.18	178.59	548	5.4	65
405	-15.7	184.5	118	4.4	30
406	-17.95	181.5	593	4.3	16
407	-20.51	182.3	492	4.3	23
408	-15.36	167.51	123	4.7	28
409	-23.61	180.23	475	4.4	26
410	-33.2	181.6	153	4.2	21
411	-17.68	186.8	112	4.5	35
412	-22.24	184.56	99	4.8	57
413	-20.07	169.14	66	4.8	37
414	-25.04	180.1	481	4.3	15
415	-21.5	185.2	139	4.4	15
416	-14.28	167.26	211	5.1	51
417	-14.43	167.26	151	4.4	17
418	-32.7	181.7	211	4.4	40
419	-34.1	181.8	246	4.3	23
420	-19.7	186.2	47	4.8	19
421	-24.19	180.38	484	4.3	27
422	-26.6	182.77	119	4.5	29
423	-17.04	186.8	70	4.1	22
424	-22.1	179.71	579	5.1	58
425	-32.6	180.9	57	4.7	44
426	-33	182.4	176	4.6	28
427	-20.58	181.24	602	4.7	44
428	-20.61	182.6	488	4.6	12
429	-19.47	169.15	149	4.4	15
430	-17.47	180.96	546	4.2	23
431	-18.4	183.4	343	4.1	10
432	-23.33	180.26	530	4.7	22
433	-18.55	182.23	563	4	17
434	-26.16	178.47	537	4.8	33
435	-21.8	183.2	325	4.4	19
436	-27.63	182.93	80	4.3	14
437	-18.89	169.48	259	4.4	21
438	-20.3	182.3	476	4.5	10
439	-20.56	182.04	499	4.5	29
440	-16.1	185.32	257	4.7	30
441	-12.66	166.37	165	4.3	18
442	-21.05	184.68	136	4.7	29
443	-17.97	168.52	146	4.8	33
444	-19.83	182.54	524	4.6	14
445	-22.55	183.81	82	5.1	68
446	-22.28	183.52	90	4.7	19
447	-15.72	185.64	138	4.3	21
448	-20.85	181.59	499	5.1	91
449	-21.11	181.5	538	5.5	104
450	-25.31	180.15	467	4.5	25
451	-26.46	182.5	184	4.3	11
452	-24.09	179.68	538	4.3	21
453	-16.96	167.7	45	4.7	23
454	-23.19	182.8	237	4.3	18
455	-20.81	184.7	162	4.3	20
456	-15.03	167.32	136	4.6	20
457	-18.06	181.59	604	4.5	23
458	-19	185.6	107	4.5	15
459	-23.53	179.99	538	5.4	87
460	-18.18	180.63	639	4.6	39
461	-15.66	186.8	45	4.4	11
462	-18	180.62	636	5	100
463	-18.08	180.7	628	5.2	72
464	-18.05	180.86	632	4.4	15
465	-29.9	181.16	215	5.1	51
466	-20.9	181.9	556	4.4	17
467	-15.61	167.5	135	4.4	21
468	-16.03	185.43	297	4.8	25
469	-17.68	181.11	568	4.4	22
470	-31.94	180.57	168	4.7	39
471	-19.14	184.36	269	4.7	31
472	-18	185.48	143	4.4	29
473	-16.95	185.94	95	4.3	12
474	-10.79	166.06	142	5	40
475	-20.83	185.9	104	4.5	19
476	-32.9	181.6	169	4.6	27
477	-37.93	177.47	65	5.4	65
478	-29.09	183.2	54	4.6	23
479	-23.56	180.23	474	4.5	13
480	-19.6	185.2	125	4.4	13
481	-21.39	180.68	617	4.5	18
482	-14.85	184.87	294	4.1	10
483	-22.7	183.3	180	4	13
484	-32.42	181.21	47	4.9	39
485	-17.9	181.3	593	4.1	13
486	-23.58	183.4	94	5.2	79
487	-34.4	180.5	201	4.4	41
488	-17.61	181.2	537	4.1	11
489	-21.07	181.13	594	4.9	43
490	-13.84	170.62	638	4.6	20
491	-30.24	181.63	80	4.5	17
492	-18.49	169.04	211	4.8	30
493	-23.45	180.23	520	4.2	19
494	-16.04	183.54	384	4.2	23
495	-17.14	185.31	223	4.1	15
496	-22.54	172.91	54	5.5	71
497	-15.9	185.3	57	4.4	19
498	-30.04	181.2	49	4.8	20
499	-24.03	180.22	508	4.2	23
500	-18.89	184.46	242	4.8	36
501	-16.51	187.1	62	4.9	46
502	-20.1	186.3	63	4.6	19
503	-21.06	183.81	203	4.5	34
504	-13.07	166.87	132	4.4	24
505	-23.46	180.09	543	4.6	28
506	-19.41	182.3	589	4.2	19
507	-11.81	165.98	51	4.7	28
508	-11.76	165.96	45	4.4	51
509	-12.08	165.76	63	4.5	51
510	-25.59	180.02	485	4.9	48
511	-26.54	183.63	66	4.7	34
512	-20.9	184.28	58	5.5	92
513	-16.99	187	70	4.7	30
514	-23.46	180.17	541	4.6	32
515	-17.81	181.82	598	4.1	14
516	-15.17	187.2	50	4.7	28
517	-11.67	166.02	102	4.6	21
518	-20.75	184.52	144	4.3	25
519	-19.5	186.9	58	4.4	20
520	-26.18	179.79	460	4.7	44
521	-20.66	185.77	69	4.3	25
522	-19.22	182.54	570	4.1	22
523	-24.68	183.33	70	4.7	30
524	-15.43	167.38	137	4.5	16
525	-32.45	181.15	41	5.5	81
526	-21.31	180.84	586	4.5	17
527	-15.44	167.18	140	4.6	44
528	-13.26	167.01	213	5.1	70
529	-15.26	183.13	393	4.4	28
530	-33.57	180.8	51	4.7	35
531	-15.77	167.01	64	5.5	73
532	-15.79	166.83	45	4.6	39
533	-21	183.2	296	4	16
534	-16.28	166.94	50	4.6	24
535	-23.28	184.6	44	4.8	34
536	-16.1	167.25	68	4.7	36
537	-17.7	181.31	549	4.7	33
538	-15.96	166.69	150	4.2	20
539	-15.95	167.34	47	5.4	87
540	-17.56	181.59	543	4.6	34
541	-15.9	167.42	40	5.5	86
542	-15.29	166.9	100	4.2	15
543	-15.86	166.85	85	4.5	22
544	-16.2	166.8	98	4.5	21
545	-15.71	166.91	58	4.8	20
546	-16.45	167.54	125	4.6	18
547	-11.54	166.18	89	5.4	80
548	-19.61	181.91	590	4.6	34
549	-15.61	187.15	49	5	30
550	-21.16	181.41	543	4.3	17
551	-20.65	182.22	506	4.3	24
552	-20.33	168.71	40	4.8	38
553	-15.08	166.62	42	4.7	23
554	-23.28	184.61	76	4.7	36
555	-23.44	184.6	63	4.8	27
556	-23.12	184.42	104	4.2	17
557	-23.65	184.46	93	4.2	16
558	-22.91	183.95	64	5.9	118
559	-22.06	180.47	587	4.6	28
560	-13.56	166.49	83	4.5	25
561	-17.99	181.57	579	4.9	49
562	-23.92	184.47	40	4.7	17
563	-30.69	182.1	62	4.9	25
564	-21.92	182.8	273	5.3	78
565	-25.04	180.97	393	4.2	21
566	-19.92	183.91	264	4.2	23
567	-27.75	182.26	174	4.5	18
568	-17.71	181.18	574	5.2	67
569	-19.6	183.84	309	4.5	23
570	-34.68	179.82	75	5.6	79
571	-14.46	167.26	195	5.2	87
572	-18.85	187.55	44	4.8	35
573	-17.02	182.41	420	4.5	29
574	-20.41	186.51	63	5	28
575	-18.18	182.04	609	4.4	26
576	-16.49	187.8	40	4.5	18
577	-17.74	181.31	575	4.6	42
578	-20.49	181.69	559	4.5	24
579	-18.51	182.64	405	5.2	74
580	-27.28	183.4	70	5.1	54
581	-15.9	167.16	41	4.8	42
582	-20.57	181.33	605	4.3	18
583	-11.25	166.36	130	5.1	55
584	-20.04	181.87	577	4.7	19
585	-20.89	181.25	599	4.6	20
586	-16.62	186.74	82	4.8	51
587	-20.09	168.75	50	4.6	23
588	-24.96	179.87	480	4.4	25
589	-20.95	181.42	559	4.6	27
590	-23.31	179.27	566	5.1	49
591	-20.95	181.06	611	4.3	20
592	-21.58	181.9	409	4.4	19
593	-13.62	167.15	209	4.7	30
594	-12.72	166.28	70	4.8	47
595	-21.79	185	74	4.1	15
596	-20.48	169.76	134	4.6	33
597	-12.84	166.78	150	4.9	35
598	-17.02	182.93	406	4	17
599	-23.89	182.39	243	4.7	32
600	-23.07	184.03	89	4.7	32
601	-27.98	181.96	53	5.2	89
602	-28.1	182.25	68	4.6	18
603	-21.24	180.81	605	4.6	34
604	-21.24	180.86	615	4.9	23
605	-19.89	174.46	546	5.7	99
606	-32.82	179.8	176	4.7	26
607	-22	185.5	52	4.4	18
608	-21.57	185.62	66	4.9	38
609	-24.5	180.92	377	4.8	43
610	-33.03	180.2	186	4.6	27
611	-30.09	182.4	51	4.4	18
612	-22.75	170.99	67	4.8	35
613	-17.99	168.98	234	4.7	28
614	-19.6	181.87	597	4.2	18
615	-15.65	186.26	64	5.1	54
616	-17.78	181.53	511	4.8	56
617	-22.04	184.91	47	4.9	47
618	-20.06	168.69	49	5.1	49
619	-18.07	181.54	546	4.3	28
620	-12.85	165.67	75	4.4	30
621	-33.29	181.3	60	4.7	33
622	-34.63	179.1	278	4.7	24
623	-24.18	179.02	550	5.3	86
624	-23.78	180.31	518	5.1	71
625	-22.37	171.5	116	4.9	38
626	-23.97	179.91	518	4.5	23
627	-34.12	181.75	75	4.7	41
628	-25.25	179.86	491	4.2	23
629	-22.87	172.65	56	5.1	50
630	-18.48	182.37	376	4.8	57
631	-21.46	181.02	584	4.2	18
632	-28.56	183.47	48	4.8	56
633	-28.56	183.59	53	4.4	20
634	-21.3	180.92	617	4.5	26
635	-20.08	183.22	294	4.3	18
636	-18.82	182.21	417	5.6	129
637	-19.51	183.97	280	4	16
638	-12.05	167.39	332	5	36
639	-17.4	186.54	85	4.2	28
640	-23.93	180.18	525	4.6	31
641	-21.23	181.09	613	4.6	18
642	-16.23	167.91	182	4.5	28
643	-28.15	183.4	57	5	32
644	-20.81	185.01	79	4.7	42
645	-20.72	181.41	595	4.6	36
646	-23.29	184	164	4.8	50
647	-38.46	176.03	148	4.6	44
648	-15.48	186.73	82	4.4	17
649	-37.03	177.52	153	5.6	87
650	-20.48	181.38	556	4.2	13
651	-18.12	181.88	649	5.4	88
652	-18.17	181.98	651	4.8	43
653	-11.4	166.07	93	5.6	94
654	-23.1	180.12	533	4.4	27
655	-14.28	170.34	642	4.7	29
656	-22.87	171.72	47	4.6	27
657	-17.59	180.98	548	5.1	79
658	-27.6	182.1	154	4.6	22
659	-17.94	180.6	627	4.5	29
660	-17.88	180.58	622	4.2	23
661	-30.01	180.8	286	4.8	43
662	-19.19	182.3	390	4.9	48
663	-18.14	180.87	624	5.5	105
664	-23.46	180.11	539	5	41
665	-18.44	181.04	624	4.2	21
666	-18.21	180.87	631	5.2	69
667	-18.26	180.98	631	4.8	36
668	-15.85	184.83	299	4.4	30
669	-23.82	180.09	498	4.8	40
670	-18.6	184.28	255	4.4	31
671	-17.8	181.32	539	4.1	12
672	-10.78	166.1	195	4.9	45
673	-18.12	181.71	594	4.6	24
674	-19.34	182.62	573	4.5	32
675	-15.34	167.1	128	5.3	18
676	-24.97	182.85	137	4.8	40
677	-15.97	186.08	143	4.6	41
678	-23.47	180.24	511	4.8	37
679	-23.11	179.15	564	4.7	17
680	-20.54	181.66	559	4.9	50
681	-18.92	169.37	248	5.3	60
682	-20.16	184.27	210	4.4	27
683	-25.48	180.94	390	4.6	33
684	-18.19	181.74	616	4.3	17
685	-15.35	186.4	98	4.4	17
686	-18.69	169.1	218	4.2	27
687	-18.89	181.24	655	4.1	14
688	-17.61	183.32	356	4.2	15
689	-20.93	181.54	564	5	64
690	-17.6	181.5	548	4.1	10
691	-17.96	181.4	655	4.3	20
692	-18.8	182.41	385	5.2	67
693	-20.61	182.44	518	4.2	10
694	-20.74	181.53	598	4.5	36
695	-25.23	179.86	476	4.4	29
696	-23.9	179.9	579	4.4	16
697	-18.07	181.58	603	5	65
698	-15.43	185.19	249	4	11
699	-14.3	167.32	208	4.8	25
700	-18.04	181.57	587	5	51
701	-13.9	167.18	221	4.2	21
702	-17.64	177.01	545	5.2	91
703	-17.98	181.51	586	5.2	68
704	-25	180	488	4.5	10
705	-19.45	184.48	246	4.3	15
706	-16.11	187.48	61	4.5	19
707	-23.73	179.98	524	4.6	11
708	-17.74	186.78	104	5.1	71
709	-21.56	183.23	271	4.4	36
710	-20.97	181.72	487	4.3	16
711	-15.45	186.73	83	4.7	37
712	-15.93	167.91	183	5.6	109
713	-21.47	185.86	55	4.9	46
714	-21.44	170.45	166	5.1	22
715	-22.16	180.49	586	4.6	13
716	-13.36	172.76	618	4.4	18
717	-21.22	181.51	524	4.8	49
718	-26.1	182.5	133	4.2	17
719	-18.35	185.27	201	4.7	57
720	-17.2	182.9	383	4.1	11
721	-22.42	171.4	86	4.7	33
722	-17.91	181.48	555	4	17
723	-26.53	178.3	605	4.9	43
724	-26.5	178.29	609	5	50
725	-16.31	168.08	204	4.5	16
726	-18.76	169.71	287	4.4	23
727	-17.1	182.8	390	4	14
728	-19.28	182.78	348	4.5	30
729	-23.5	180	550	4.7	23
730	-21.26	181.69	487	4.4	20
731	-17.97	181.48	578	4.7	43
732	-26.02	181.2	361	4.7	32
733	-30.3	180.8	275	4	14
734	-24.89	179.67	498	4.2	14
735	-14.57	167.24	162	4.5	18
736	-15.4	186.87	78	4.7	44
737	-22.06	183.95	134	4.5	17
738	-25.14	178.42	554	4.1	15
739	-20.3	181.4	608	4.6	13
740	-25.28	181.17	367	4.3	25
741	-20.63	181.61	599	4.6	30
742	-19.02	186.83	45	5.2	65
743	-22.1	185.3	50	4.6	22
744	-38.59	175.7	162	4.7	36
745	-19.3	183	302	5	65
746	-31.03	181.59	57	5.2	49
747	-30.51	181.3	203	4.4	20
748	-22.55	183.34	66	4.6	18
749	-22.14	180.64	591	4.5	18
750	-25.6	180.3	440	4	12
751	-18.04	181.84	611	4.2	20
752	-21.29	185.77	57	5.3	69
753	-21.08	180.85	627	5.9	119
754	-20.64	169.66	89	4.9	42
755	-24.41	180.03	500	4.5	34
756	-12.16	167.03	264	4.4	14
757	-17.1	185.9	127	5.4	75
758	-21.13	185.6	85	5.3	86
759	-12.34	167.43	50	5.1	47
760	-16.43	186.73	75	4.1	20
761	-20.7	184.3	182	4.3	17
762	-21.18	180.92	619	4.5	18
763	-17.78	185.33	223	4.1	10
764	-21.57	183.86	156	5.1	70
765	-13.7	166.75	46	5.3	71
766	-12.27	167.41	50	4.5	29
767	-19.1	184.52	230	4.1	16
768	-19.85	184.51	184	4.4	26
769	-11.37	166.55	188	4.7	24
770	-20.7	186.3	80	4	10
771	-20.24	185.1	86	5.1	61
772	-16.4	182.73	391	4	16
773	-19.6	184.53	199	4.3	21
774	-21.63	180.77	592	4.3	21
775	-21.6	180.5	595	4	22
776	-21.77	181	618	4.1	10
777	-21.8	183.6	213	4.4	17
778	-21.05	180.9	616	4.3	10
779	-10.8	165.8	175	4.2	12
780	-17.9	181.5	589	4	12
781	-22.26	171.44	83	4.5	25
782	-22.33	171.46	119	4.7	32
783	-24.04	184.85	70	5	48
784	-20.4	186.1	74	4.3	22
785	-15	184.62	40	5.1	54
786	-27.87	183.4	87	4.7	34
787	-14.12	166.64	63	5.3	69
788	-23.61	180.27	537	5	63
789	-21.56	185.5	47	4.5	29
790	-21.19	181.58	490	5	77
791	-18.07	181.65	593	4.1	16
792	-26	178.43	644	4.9	27
793	-20.21	181.9	576	4.1	16
794	-28	182	199	4	16
795	-20.74	180.7	589	4.4	27
796	-31.8	180.6	178	4.5	19
797	-18.91	169.46	248	4.4	33
798	-20.45	182.1	500	4.5	37
799	-22.9	183.8	71	4.3	19
800	-18.11	181.63	568	4.3	36
801	-23.8	184.7	42	5	36
802	-23.42	180.21	510	4.5	37
803	-23.2	184.8	97	4.5	13
804	-12.93	169.52	663	4.4	30
805	-21.14	181.06	625	4.5	35
806	-19.13	184.97	210	4.1	22
807	-21.08	181.3	557	4.9	78
808	-20.07	181.75	582	4.7	27
809	-20.9	182.02	402	4.3	18
810	-25.04	179.84	474	4.6	32
811	-21.85	180.89	577	4.6	43
812	-19.34	186.59	56	5.2	49
813	-15.83	167.1	43	4.5	19
814	-23.73	183	118	4.3	11
815	-18.1	181.72	544	4.6	52
816	-22.12	180.49	532	4	14
817	-15.39	185.1	237	4.5	39
818	-16.21	186.52	111	4.8	30
819	-21.75	180.67	595	4.6	30
820	-22.1	180.4	603	4.1	11
821	-24.97	179.54	505	4.9	50
822	-19.36	186.36	100	4.7	40
823	-22.14	179.62	587	4.1	23
824	-21.48	182.44	364	4.3	20
825	-18.54	168.93	100	4.4	17
826	-21.62	182.4	350	4	12
827	-13.4	166.9	228	4.8	15
828	-15.5	185.3	93	4.4	25
829	-15.67	185.23	66	4.4	34
830	-21.78	183.11	225	4.6	21
831	-30.63	180.9	334	4.2	28
832	-15.7	185.1	70	4.1	15
833	-19.2	184.37	220	4.2	18
834	-19.7	182.44	397	4	12
835	-19.4	182.29	326	4.1	15
836	-15.85	185.9	121	4.1	17
837	-17.38	168.63	209	4.7	29
838	-24.33	179.97	510	4.8	44
839	-20.89	185.26	54	5.1	44
840	-18.97	169.44	242	5	41
841	-17.99	181.62	574	4.8	38
842	-15.8	185.25	82	4.4	39
843	-25.42	182.65	102	5	36
844	-21.6	169.9	43	5.2	56
845	-26.06	180.05	432	4.2	19
846	-17.56	181.23	580	4.1	16
847	-25.63	180.26	464	4.8	60
848	-25.46	179.98	479	4.5	27
849	-22.23	180.48	581	5	54
850	-21.55	181.39	513	5.1	81
851	-15.18	185.93	77	4.1	16
852	-13.79	166.56	68	4.7	41
853	-15.18	167.23	71	5.2	59
854	-18.78	186.72	68	4.8	48
855	-17.9	181.41	586	4.5	33
856	-18.5	185.4	243	4	11
857	-14.82	171.17	658	4.7	49
858	-15.65	185.17	315	4.1	15
859	-30.01	181.15	210	4.3	17
860	-13.16	167.24	278	4.3	17
861	-21.03	180.78	638	4	14
862	-21.4	180.78	615	4.7	51
863	-17.93	181.89	567	4.1	27
864	-20.87	181.7	560	4.2	13
865	-12.01	166.66	99	4.8	36
866	-19.1	169.63	266	4.8	31
867	-22.85	181.37	397	4.2	15
868	-17.08	185.96	180	4.2	29
869	-21.14	174.21	40	5.7	78
870	-12.23	167.02	242	6	132
871	-20.91	181.57	530	4.2	20
872	-11.38	167.05	133	4.5	32
873	-11.02	167.01	62	4.9	36
874	-22.09	180.58	580	4.4	22
875	-17.8	181.2	530	4	15
876	-18.94	182.43	566	4.3	20
877	-18.85	182.2	501	4.2	23
878	-21.91	181.28	548	4.5	30
879	-22.03	179.77	587	4.8	31
880	-18.1	181.63	592	4.4	28
881	-18.4	184.84	221	4.2	18
882	-21.2	181.4	560	4.2	12
883	-12	166.2	94	5	31
884	-11.7	166.3	139	4.2	15
885	-26.72	182.69	162	5.2	64
886	-24.39	178.98	562	4.5	30
887	-19.64	169.5	204	4.6	35
888	-21.35	170.04	56	5	22
889	-22.82	184.52	49	5	52
890	-38.28	177.1	100	5.4	71
891	-12.57	167.11	231	4.8	28
892	-22.24	180.28	601	4.2	21
893	-13.8	166.53	42	5.5	70
894	-21.07	183.78	180	4.3	25
895	-17.74	181.25	559	4.1	16
896	-23.87	180.15	524	4.4	22
897	-21.29	185.8	69	4.9	74
898	-22.2	180.58	594	4.5	45
899	-15.24	185.11	262	4.9	56
900	-17.82	181.27	538	4	33
901	-32.14	180	331	4.5	27
902	-19.3	185.86	48	5	40
903	-33.09	180.94	47	4.9	47
904	-20.18	181.62	558	4.5	31
905	-17.46	181.42	524	4.2	16
906	-17.44	181.33	545	4.2	37
907	-24.71	179.85	477	4.2	34
908	-21.53	170.52	129	5.2	30
909	-19.17	169.53	268	4.3	21
910	-28.05	182.39	117	5.1	43
911	-23.39	179.97	541	4.6	50
912	-22.33	171.51	112	4.6	14
913	-15.28	185.98	162	4.4	36
914	-20.27	181.51	609	4.4	32
915	-10.96	165.97	76	4.9	64
916	-21.52	169.75	61	5.1	40
917	-19.57	184.47	202	4.2	28
918	-23.08	183.45	90	4.7	30
919	-25.06	182.8	133	4	14
920	-17.85	181.44	589	5.6	115
921	-15.99	167.95	190	5.3	81
922	-20.56	184.41	138	5	82
923	-17.98	181.61	598	4.3	27
924	-18.4	181.77	600	4.1	11
925	-27.64	182.22	162	5.1	67
926	-20.99	181.02	626	4.5	36
927	-14.86	167.32	137	4.9	22
928	-29.33	182.72	57	5.4	61
929	-25.81	182.54	201	4.7	40
930	-14.1	166.01	69	4.8	29
931	-17.63	185.13	219	4.5	28
932	-23.47	180.21	553	4.2	23
933	-23.92	180.21	524	4.6	50
934	-20.88	185.18	51	4.6	28
935	-20.25	184.75	107	5.6	121
936	-19.33	186.16	44	5.4	110
937	-18.14	181.71	574	4	20
938	-22.41	183.99	128	5.2	72
939	-20.77	181.16	568	4.2	12
940	-17.95	181.73	583	4.7	57
941	-20.83	181.01	622	4.3	15
942	-27.84	182.1	193	4.8	27
943	-19.94	182.39	544	4.6	30
944	-23.6	183.99	118	5.4	88
945	-23.7	184.13	51	4.8	27
946	-30.39	182.4	63	4.6	22
947	-18.98	182.32	442	4.2	22
948	-27.89	182.92	87	5.5	67
949	-23.5	184.9	61	4.7	16
950	-23.73	184.49	60	4.7	35
951	-17.93	181.62	561	4.5	32
952	-35.94	178.52	138	5.5	78
953	-18.68	184.5	174	4.5	34
954	-23.47	179.95	543	4.1	21
955	-23.49	180.06	530	4	23
956	-23.85	180.26	497	4.3	32
957	-27.08	183.44	63	4.7	27
958	-20.88	184.95	82	4.9	50
959	-20.97	181.2	605	4.5	31
960	-21.71	183.58	234	4.7	55
961	-23.9	184.6	41	4.5	22
962	-15.78	167.44	40	4.8	42
963	-12.57	166.72	137	4.3	20
964	-19.69	184.23	223	4.1	23
965	-22.04	183.95	109	5.4	61
966	-17.99	181.59	595	4.1	26
967	-23.5	180.13	512	4.8	40
968	-21.4	180.74	613	4.2	20
969	-15.86	166.98	60	4.8	25
970	-23.95	184.64	43	5.4	45
971	-25.79	182.38	172	4.4	14
972	-23.75	184.5	54	5.2	74
973	-24.1	184.5	68	4.7	23
974	-18.56	169.05	217	4.9	35
975	-23.3	184.68	102	4.9	27
976	-17.03	185.74	178	4.2	32
977	-20.77	183.71	251	4.4	47
978	-28.1	183.5	42	4.4	17
979	-18.83	182.26	575	4.3	11
980	-23	170.7	43	4.9	20
981	-20.82	181.67	577	5	67
982	-22.95	170.56	42	4.7	21
983	-28.22	183.6	75	4.9	49
984	-27.99	183.5	71	4.3	22
985	-15.54	187.15	60	4.5	17
986	-12.37	166.93	291	4.2	16
987	-22.33	171.66	125	5.2	51
988	-22.7	170.3	69	4.8	27
989	-17.86	181.3	614	4	12
990	-16	184.53	108	4.7	33
991	-20.73	181.42	575	4.3	18
992	-15.45	181.42	409	4.3	27
993	-20.05	183.86	243	4.9	65
994	-17.95	181.37	642	4	17
995	-17.7	188.1	45	4.2	10
996	-25.93	179.54	470	4.4	22
997	-12.28	167.06	248	4.7	35
998	-20.13	184.2	244	4.5	34
999	-17.4	187.8	40	4.5	14
1000	-21.59	170.56	165	6	119
\.


--
-- Name: quakes_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('quakes_id_seq', 1000, true);


--
-- Data for Name: randu; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY randu (id, x, y, z) FROM stdin;
1	0.000031	0.000183	0.000824
2	0.044495	0.155732	0.533939
3	0.82244	0.873416	0.838542
4	0.322291	0.648545	0.990648
5	0.393595	0.826873	0.418881
6	0.309097	0.92659	0.777664
7	0.826368	0.30854	0.413932
8	0.729424	0.741526	0.884338
9	0.317649	0.393468	0.501968
10	0.599793	0.846041	0.678107
11	0.647603	0.281525	0.860718
12	0.547048	0.94879	0.769314
13	0.529873	0.348011	0.319211
14	0.90804	0.013456	0.90838
15	0.835195	0.814513	0.370327
16	0.068696	0.275943	0.037394
17	0.984329	0.927687	0.707165
18	0.945783	0.689675	0.626002
19	0.017137	0.166494	0.844727
20	0.772506	0.282393	0.741801
21	0.49308	0.943686	0.224398
22	0.919386	0.618783	0.438229
23	0.964342	0.025198	0.47211
24	0.864672	0.711721	0.488282
25	0.786249	0.961377	0.692023
26	0.123862	0.810826	0.750198
27	0.990535	0.706806	0.326013
28	0.455714	0.020492	0.021528
29	0.345516	0.800801	0.695158
30	0.482433	0.160464	0.620887
31	0.0631	0.488463	0.36288
32	0.494563	0.180498	0.631916
33	0.386052	0.482467	0.420333
34	0.156384	0.276557	0.251881
35	0.99985	0.198618	0.193051
36	0.585455	0.129442	0.507559
37	0.361887	0.743469	0.203826
38	0.350248	0.897698	0.233957
39	0.126752	0.190162	0.000203
40	0.812634	0.245063	0.156666
41	0.369723	0.248908	0.165943
42	0.437286	0.268675	0.676477
43	0.771568	0.821389	0.984216
44	0.697878	0.217688	0.025225
45	0.826174	0.623633	0.306233
46	0.530293	0.852871	0.344595
47	0.968455	0.569763	0.702484
48	0.415824	0.696233	0.434983
49	0.793458	0.429293	0.434638
50	0.622709	0.75561	0.929275
51	0.748484	0.903503	0.684661
52	0.392119	0.082637	0.966753
53	0.32851	0.211696	0.313584
54	0.425048	0.233427	0.575129
55	0.391111	0.035974	0.695843
56	0.409372	0.849729	0.414026
57	0.230546	0.743487	0.386009
58	0.021631	0.664288	0.791052
59	0.011576	0.687896	0.023192
60	0.345928	0.75754	0.431892
61	0.562056	0.587138	0.464327
62	0.47264	0.353742	0.868689
63	0.859244	0.982364	0.16099
64	0.672445	0.343048	0.006286
65	0.31824	0.103248	0.75533
66	0.486482	0.552006	0.933698
67	0.701881	0.597679	0.269141
68	0.831292	0.05836	0.868532
69	0.619876	0.029152	0.596032
70	0.287463	0.057	0.754833
71	0.670872	0.302992	0.7801
72	0.623757	0.432338	0.98021
73	0.804632	0.752854	0.275437
74	0.803778	0.778307	0.435841
75	0.94237	0.001763	0.529245
76	0.730063	0.630651	0.213333
77	0.79181	0.407259	0.317265
78	0.300808	0.637073	0.115167
79	0.629387	0.408029	0.783687
80	0.487203	0.789276	0.350829
81	0.09553	0.909727	0.598596
82	0.584738	0.176853	0.798474
83	0.259822	0.480486	0.544515
84	0.049581	0.49643	0.532351
85	0.861351	0.071937	0.679465
86	0.901482	0.260386	0.448975
87	0.215425	0.739384	0.49748
88	0.057474	0.797941	0.27038
89	0.301331	0.90506	0.718384
90	0.655918	0.227307	0.460576
91	0.5067	0.591236	0.987116
92	0.938298	0.101057	0.16166
93	0.90252	0.245249	0.348813
94	0.076441	0.887802	0.638839
95	0.258743	0.786332	0.389299
96	0.96569	0.35169	0.418931
97	0.783897	0.824439	0.89156
98	0.949827	0.727198	0.814741
99	0.283024	0.134077	0.257241
100	0.201405	0.860104	0.347981
101	0.576739	0.911462	0.278116
102	0.551408	0.696489	0.216269
103	0.110096	0.601132	0.615928
104	0.44502	0.150031	0.895009
105	0.203431	0.64847	0.059942
106	0.895558	0.963804	0.722801
107	0.858251	0.917374	0.779985
108	0.316456	0.206234	0.389302
109	0.929709	0.207676	0.878674
110	0.431499	0.001802	0.127325
111	0.313108	0.814661	0.06999
112	0.596309	0.4955	0.606222
113	0.065349	0.893404	0.772282
114	0.309409	0.386023	0.53145
115	0.593143	0.023418	0.802219
116	0.948994	0.136076	0.275507
117	0.688282	0.314449	0.692158
118	0.341853	0.679153	0.998243
119	0.776151	0.15203	0.926825
120	0.153704	0.590536	0.159884
121	0.767158	0.75176	0.606141
122	0.785514	0.776249	0.587872
123	0.861648	0.57405	0.689467
124	0.968176	0.257096	0.828997
125	0.057338	0.846421	0.562486
126	0.068251	0.085886	0.901061
127	0.444216	0.448217	0.691361
128	0.750276	0.334354	0.253643
129	0.145329	0.732954	0.089762
130	0.586459	0.922249	0.255363
131	0.472772	0.996288	0.722781
132	0.962394	0.334478	0.345322
133	0.016658	0.742936	0.307697
134	0.697745	0.483157	0.61924
135	0.470791	0.163685	0.744991
136	0.683648	0.619823	0.566103
137	0.522175	0.80392	0.123949
138	0.033916	0.789033	0.428958
139	0.592453	0.787949	0.395616
140	0.254907	0.337993	0.733798
141	0.117803	0.658675	0.891827
142	0.25928	0.957802	0.413294
143	0.889736	0.400012	0.39245
144	0.181619	0.130337	0.14745
145	0.25272	0.029737	0.903937
146	0.399261	0.190735	0.551055
147	0.16544	0.783277	0.210702
148	0.41946	0.988879	0.158136
149	0.780983	0.854271	0.09678
150	0.864323	0.844219	0.286411
151	0.787156	0.415515	0.408684
152	0.167788	0.636694	0.310077
153	0.771582	0.714252	0.341272
154	0.294206	0.962482	0.12704
155	0.837164	0.918567	0.976924
156	0.295912	0.806713	0.177067
157	0.091939	0.586944	0.694211
158	0.347482	0.646237	0.750083
159	0.973278	0.640872	0.085731
160	0.527179	0.79397	0.019209
161	0.139841	0.040708	0.985681
162	0.561416	0.632276	0.740914
163	0.375616	0.497789	0.606191
164	0.505862	0.656287	0.384968
165	0.098811	0.001116	0.117391
166	0.407139	0.458995	0.089724
167	0.154323	0.194751	0.779596
168	0.871869	0.438392	0.78353
169	0.091918	0.212369	0.446952
170	0.66514	0.592862	0.570913
171	0.593219	0.958214	0.410318
172	0.468268	0.794482	0.552483
173	0.609019	0.519044	0.633091
174	0.246066	0.890815	0.130301
175	0.604387	0.899433	0.957119
176	0.80661	0.384215	0.045802
177	0.582449	0.09314	0.316805
178	0.581833	0.773607	0.40514
179	0.768705	0.13604	0.897895
180	0.91508	0.417145	0.267152
181	0.486134	0.731443	0.01345
182	0.712057	0.485078	0.501955
183	0.337308	0.796438	0.74286
184	0.694452	0.720595	0.073498
185	0.833158	0.348199	0.590769
186	0.190784	0.812374	0.157183
187	0.56899	0.032013	0.071166
188	0.90686	0.705962	0.074034
189	0.446754	0.788106	0.707856
190	0.93855	0.642097	0.405631
191	0.778547	0.162147	0.965964
192	0.922376	0.608467	0.34942
193	0.879737	0.084615	0.590057
194	0.164737	0.727397	0.881746
195	0.471049	0.077057	0.2229
196	0.348409	0.375336	0.116333
197	0.357379	0.288538	0.514816
198	0.485254	0.040997	0.878697
199	0.937061	0.023432	0.707045
200	0.666909	0.577419	0.462329
201	0.618715	0.99198	0.383442
202	0.36052	0.089157	0.290269
203	0.68379	0.897896	0.233271
204	0.00439	0.719255	0.276022
205	0.031289	0.672573	0.753833
206	0.978769	0.561583	0.560572
207	0.077178	0.173276	0.345054
208	0.159757	0.322564	0.497568
209	0.354338	0.983029	0.709126
210	0.709664	0.692256	0.766557
211	0.569929	0.582682	0.366728
212	0.014955	0.158178	0.814469
213	0.525414	0.111002	0.937284
214	0.253219	0.70622	0.958351
215	0.890473	0.686402	0.104159
216	0.453425	0.001418	0.927685
217	0.845441	0.334265	0.396624
218	0.609038	0.72729	0.882402
219	0.567867	0.446613	0.568873
220	0.91137	0.285899	0.513061
221	0.937211	0.896198	0.942288
222	0.990868	0.521708	0.212432
223	0.16764	0.934895	0.100615
224	0.686843	0.030776	0.003063
225	0.852322	0.326589	0.288634
226	0.811463	0.452729	0.413211
227	0.613563	0.297567	0.263338
228	0.131638	0.416429	0.31383
229	0.701542	0.332744	0.682588
230	0.862754	0.021153	0.362135
231	0.97037	0.10383	0.889644
232	0.850995	0.383583	0.64254
233	0.183622	0.385918	0.662911
234	0.816344	0.366787	0.853626
235	0.062409	0.201722	0.648653
236	0.036126	0.630868	0.460078
237	0.387542	0.12805	0.280421
238	0.169305	0.105847	0.111334
239	0.303227	0.206892	0.512309
240	0.054538	0.385813	0.824036
241	0.243194	0.723816	0.154143
242	0.760294	0.8793	0.433157
243	0.111106	0.74918	0.495129
244	0.423188	0.324282	0.137001
245	0.995503	0.282988	0.738398
246	0.980973	0.987139	0.094077
247	0.285519	0.602009	0.042384
248	0.289431	0.013343	0.475179
249	0.076984	0.478115	0.17583
250	0.807755	0.4836	0.631798
251	0.719538	0.819595	0.441726
252	0.544794	0.252577	0.612313
253	0.753742	0.482508	0.111374
254	0.778851	0.108312	0.640212
255	0.823174	0.006967	0.633237
256	0.696558	0.688824	0.863928
257	0.9199	0.353543	0.842153
258	0.041631	0.428389	0.195659
259	0.03265	0.847797	0.792934
260	0.62215	0.079371	0.876876
261	0.415478	0.98627	0.178324
262	0.595303	0.566457	0.041016
263	0.780619	0.015045	0.064698
264	0.331354	0.578564	0.489201
265	0.242692	0.762346	0.389852
266	0.853902	0.889618	0.652587
267	0.302318	0.589417	0.815645
268	0.861326	0.422875	0.785317
269	0.055708	0.019265	0.614222
270	0.654588	0.034351	0.314814
271	0.652651	0.110633	0.789938
272	0.42943	0.389394	0.471495
273	0.298822	0.464916	0.100099
274	0.83626	0.642355	0.327792
275	0.309226	0.386511	0.536028
276	0.96888	0.402763	0.696662
277	0.368081	0.66244	0.661911
278	0.513483	0.182326	0.472607
279	0.736313	0.184859	0.482342
280	0.172198	0.665549	0.443517
281	0.171344	0.710412	0.720379
282	0.170726	0.232668	0.859474
283	0.284745	0.933185	0.036403
284	0.167483	0.687051	0.614955
285	0.461775	0.243325	0.303981
286	0.701912	0.600151	0.283698
287	0.802767	0.551215	0.082387
288	0.952495	0.585544	0.940804
289	0.319777	0.877392	0.386357
290	0.52028	0.649494	0.214444
291	0.332802	0.541224	0.252119
292	0.711546	0.038967	0.829882
293	0.158367	0.226658	0.934643
294	0.863566	0.218901	0.541315
295	0.269175	0.461181	0.344511
296	0.140211	0.259041	0.292351
297	0.62698	0.614429	0.043756
298	0.419483	0.496517	0.203753
299	0.351759	0.905709	0.268427
300	0.902842	0.36383	0.057402
301	0.788715	0.605007	0.531603
302	0.396531	0.232836	0.828238
303	0.870567	0.119851	0.883996
304	0.347908	0.523734	0.011235
305	0.946024	0.480742	0.370236
306	0.165103	0.66404	0.498314
307	0.456284	0.370651	0.117356
308	0.606132	0.255925	0.080367
309	0.489827	0.789398	0.32794
310	0.593914	0.521274	0.78242
311	0.831722	0.201555	0.723837
312	0.196452	0.242217	0.68524
313	0.147074	0.086822	0.197263
314	0.20674	0.500864	0.14453
315	0.899231	0.69461	0.074585
316	0.26479	0.045376	0.889149
317	0.001739	0.999939	0.983978
318	0.284465	0.570467	0.862617
319	0.539036	0.86549	0.341617
320	0.580633	0.098863	0.367481
321	0.664257	0.73505	0.431987
322	0.037451	0.486162	0.579916
323	0.493513	0.316322	0.456322
324	0.416429	0.345021	0.322264
325	0.96439	0.156445	0.259161
326	0.973205	0.895476	0.61401
327	0.712404	0.271338	0.216388
328	0.434793	0.896695	0.467031
329	0.54254	0.56033	0.479117
330	0.584376	0.401351	0.148725
331	0.533974	0.120324	0.916178
332	0.708526	0.097289	0.206997
333	0.714495	0.269064	0.183931
334	0.482048	0.962044	0.433832
335	0.077093	0.594896	0.875538
336	0.998449	0.354264	0.139545
337	0.984607	0.17071	0.162795
338	0.099361	0.00197	0.117574
339	0.219269	0.702578	0.242041
340	0.414045	0.121073	0.000029
341	0.582422	0.328899	0.731601
342	0.090429	0.608475	0.836991
343	0.535613	0.543698	0.441672
344	0.581919	0.402526	0.177886
345	0.397729	0.788006	0.148473
346	0.549584	0.189554	0.191069
347	0.573737	0.136097	0.65295
348	0.447064	0.158607	0.92806
349	0.689066	0.698637	0.99023
350	0.175925	0.967504	0.221694
351	0.839597	0.372643	0.679484
352	0.831947	0.981712	0.402746
353	0.940644	0.888431	0.864786
354	0.508181	0.683509	0.527427
355	0.869272	0.236571	0.595973
356	0.878399	0.422338	0.628435
357	0.242726	0.003171	0.834495
358	0.354886	0.888175	0.135077
359	0.761675	0.399618	0.542634
360	0.497327	0.338204	0.553278
361	0.570429	0.343214	0.925426
362	0.544869	0.192988	0.254105
363	0.547206	0.327989	0.043078
364	0.95123	0.641805	0.289766
365	0.335976	0.520226	0.097574
366	0.123054	0.857719	0.038824
367	0.767345	0.021121	0.220619
368	0.69453	0.821414	0.677714
369	0.589375	0.059233	0.05102
370	0.116573	0.088764	0.483424
371	0.640176	0.508267	0.288014
372	0.596723	0.610511	0.292563
373	0.242544	0.070984	0.243013
374	0.996192	0.423421	0.574797
375	0.186854	0.22789	0.685654
376	0.673327	0.180656	0.023994
377	0.691865	0.119631	0.491003
378	0.958049	0.575105	0.828191
379	0.694005	0.414871	0.243179
380	0.449659	0.232798	0.349853
381	0.214184	0.41071	0.536605
382	0.150706	0.114502	0.330657
383	0.887069	0.620527	0.739542
384	0.082414	0.36202	0.43039
385	0.511244	0.424449	0.945496
386	0.97251	0.361654	0.417328
387	0.189574	0.490444	0.2365
388	0.364059	0.070724	0.147809
389	0.777554	0.119375	0.718263
390	0.564273	0.863991	0.105492
391	0.443353	0.925122	0.560552
392	0.73504	0.805249	0.216132
393	0.6667	0.831245	0.987175
394	0.622253	0.835295	0.411495
395	0.464697	0.748429	0.308307
396	0.428804	0.390935	0.486373
397	0.531088	0.992282	0.173898
398	0.656463	0.930601	0.67544
399	0.811441	0.008876	0.750293
400	0.874628	0.240614	0.57203
\.


--
-- Name: randu_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('randu_id_seq', 400, true);


--
-- Data for Name: rivers; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY rivers (id, "eval(parse(text_=_name))") FROM stdin;
1	735
2	320
3	325
4	392
5	524
6	450
7	1459
8	135
9	465
10	600
11	330
12	336
13	280
14	315
15	870
16	906
17	202
18	329
19	290
20	1000
21	600
22	505
23	1450
24	840
25	1243
26	890
27	350
28	407
29	286
30	280
31	525
32	720
33	390
34	250
35	327
36	230
37	265
38	850
39	210
40	630
41	260
42	230
43	360
44	730
45	600
46	306
47	390
48	420
49	291
50	710
51	340
52	217
53	281
54	352
55	259
56	250
57	470
58	680
59	570
60	350
61	300
62	560
63	900
64	625
65	332
66	2348
67	1171
68	3710
69	2315
70	2533
71	780
72	280
73	410
74	460
75	260
76	255
77	431
78	350
79	760
80	618
81	338
82	981
83	1306
84	500
85	696
86	605
87	250
88	411
89	1054
90	735
91	233
92	435
93	490
94	310
95	460
96	383
97	375
98	1270
99	545
100	445
101	1885
102	380
103	300
104	380
105	377
106	425
107	276
108	210
109	800
110	420
111	350
112	360
113	538
114	1100
115	1205
116	314
117	237
118	610
119	360
120	540
121	1038
122	424
123	310
124	300
125	444
126	301
127	268
128	620
129	215
130	652
131	900
132	525
133	246
134	360
135	529
136	500
137	720
138	270
139	430
140	671
141	1770
\.


--
-- Name: rivers_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('rivers_id_seq', 141, true);


--
-- Data for Name: rock; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY rock (id, area, peri, shape, perm) FROM stdin;
1	4990	2791.9	0.0903296	6.3
2	7002	3892.6	0.148622	6.3
3	7558	3930.66	0.183312	6.3
4	7352	3869.32	0.117063	6.3
5	7943	3948.54	0.122417	17.1
6	7979	4010.15	0.167045	17.1
7	9333	4345.75	0.189651	17.1
8	8209	4344.75	0.164127	17.1
9	8393	3682.04	0.203654	119
10	6425	3098.65	0.162394	119
11	9364	4480.05	0.150944	119
12	8624	3986.24	0.148141	119
13	10651	4036.54	0.228595	82.4
14	8868	3518.04	0.231623	82.4
15	9417	3999.37	0.172567	82.4
16	8874	3629.07	0.153481	82.4
17	10962	4608.66	0.204314	58.6
18	10743	4787.62	0.262727	58.6
19	11878	4864.22	0.200071	58.6
20	9867	4479.41	0.14481	58.6
21	7838	3428.74	0.113852	142
22	11876	4353.14	0.291029	142
23	12212	4697.65	0.240077	142
24	8233	3518.44	0.161865	142
25	6360	1977.39	0.280887	740
26	4193	1379.35	0.179455	740
27	7416	1916.24	0.191802	740
28	5246	1585.42	0.133083	740
29	6509	1851.21	0.225214	890
30	4895	1239.66	0.341273	890
31	6775	1728.14	0.311646	890
32	7894	1461.06	0.276016	890
33	5980	1426.76	0.197653	950
34	5318	990.388	0.326635	950
35	7392	1350.76	0.154192	950
36	7894	1461.06	0.276016	950
37	3469	1376.7	0.176969	100
38	1468	476.322	0.438712	100
39	3524	1189.46	0.163586	100
40	5267	1644.96	0.253832	100
41	5048	941.543	0.328641	1300
42	1016	308.642	0.230081	1300
43	5605	1145.69	0.464125	1300
44	8793	2280.49	0.420477	1300
45	3475	1174.11	0.200744	580
46	1651	597.808	0.262651	580
47	5514	1455.88	0.182453	580
48	9718	1485.58	0.200447	580
\.


--
-- Name: rock_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('rock_id_seq', 48, true);


--
-- Data for Name: seatbelts; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY seatbelts (id, driverskilled, drivers, front, rear, kms, petrolprice, vankilled, law) FROM stdin;
1	107	1687	867	269	9059	0.102971811805368	12	0
2	97	1508	825	265	7685	0.102362995884646	6	0
3	102	1507	806	319	9963	0.102062490635914	12	0
4	87	1385	814	407	10955	0.100873300511862	8	0
5	119	1632	991	454	11823	0.101019672891934	10	0
6	106	1511	945	427	12391	0.10058119170287	13	0
7	110	1559	1004	522	13460	0.103773981457839	11	0
8	106	1630	1091	536	14055	0.104076403554621	6	0
9	107	1579	958	405	12106	0.103773981457839	10	0
10	134	1653	850	437	11372	0.103026401330572	16	0
11	147	2152	1109	434	9834	0.102730112155946	13	0
12	180	2148	1113	437	9267	0.101997191539847	14	0
13	125	1752	925	316	9130	0.101274563494893	14	0
14	134	1765	903	311	8933	0.10070397563972	6	0
15	110	1717	1006	351	11000	0.100139606658898	8	0
16	102	1558	892	362	10733	0.0986211043713023	11	0
17	103	1575	990	486	12912	0.0983492854059603	7	0
18	111	1520	866	429	12926	0.0980801772105387	13	0
19	120	1805	1095	551	13990	0.0972792082183714	13	0
20	129	1800	1204	646	14926	0.0974106238350488	11	0
21	122	1719	1029	456	12900	0.0974252365245483	11	0
22	183	2008	1147	475	12034	0.0963806330037465	14	0
23	169	2242	1171	456	10643	0.0957389559626943	16	0
24	190	2478	1299	468	10742	0.0951063062359475	14	0
25	134	2030	944	356	10266	0.0967359671470176	17	0
26	108	1655	874	271	10281	0.0961092224873678	16	0
27	104	1693	840	354	11527	0.095367254851379	15	0
28	117	1623	893	427	12281	0.0947095915871269	13	0
29	157	1805	1007	465	13587	0.0941176202174608	13	0
30	148	1746	973	440	13049	0.0935321548190638	15	0
31	130	1795	1097	539	16055	0.0929540494377308	12	0
32	140	1926	1194	646	15220	0.0928397862431927	6	0
33	136	1619	988	457	13824	0.0927247362539862	9	0
34	140	1992	1077	446	12729	0.0922696509793897	13	0
35	187	2233	1045	402	11467	0.0917066851479679	14	0
36	150	2192	1115	441	11351	0.0912620719433678	15	0
37	159	2080	1005	359	10803	0.090711603254936	14	0
38	143	1768	857	334	10548	0.090276328119195	3	0
39	114	1835	879	312	12368	0.0899519176272147	12	0
40	127	1569	887	427	13311	0.0890996386561615	13	0
41	159	1976	1075	434	13885	0.0886791925043499	12	0
42	156	1853	1121	486	14088	0.0881592888670634	8	0
43	138	1965	1190	569	16932	0.0889020568552906	8	0
44	120	1689	1058	523	16164	0.0881813314444876	15	0
45	117	1778	939	418	14883	0.0889402929599117	8	0
46	170	1976	1074	452	13532	0.0877266104275971	5	0
47	168	2397	1089	462	12220	0.087428846437772	17	0
48	198	2654	1208	497	12025	0.0870354301608856	14	0
49	144	2097	903	354	11692	0.0864499193294655	13	0
50	146	1963	916	347	11081	0.0858726409121568	5	0
51	109	1677	787	276	13745	0.0853982218357345	8	0
52	131	1941	1114	472	14382	0.083821981233605	5	0
53	151	2003	1014	487	14391	0.0845907801489325	12	0
54	140	1813	1022	505	15597	0.0841369037739444	11	0
55	153	2012	1114	619	16834	0.0837784051341314	13	0
56	140	1912	1132	640	17282	0.0835107427259604	15	0
57	161	2084	1111	559	15779	0.0828063938633846	11	0
58	168	2080	1008	453	13946	0.0811788933269884	11	0
59	152	2118	916	418	12701	0.0828536069623417	10	0
60	136	2150	992	419	10431	0.0941901186933595	13	0
61	113	1608	731	262	11616	0.0923998429510411	8	0
62	100	1503	665	299	10808	0.108161478199019	6	0
63	103	1548	724	303	12421	0.10721168869023	8	0
64	103	1382	744	401	13605	0.114042966782082	14	0
65	121	1731	910	413	14455	0.112454115810183	12	0
66	134	1798	883	426	15019	0.111316253290611	14	0
67	133	1779	900	516	15662	0.11030125221242	13	0
68	129	1887	1057	600	16745	0.108197177376865	9	0
69	144	2004	1076	459	14717	0.107027443082328	4	0
70	154	2077	919	443	13756	0.104946980916917	13	0
71	156	2092	920	412	12531	0.119357749193208	6	0
72	163	2051	953	400	12568	0.117621904277373	15	0
73	122	1577	664	278	11249	0.133027420877451	12	0
74	92	1356	607	302	11096	0.130845243689729	16	0
75	117	1652	777	381	12637	0.128318477474772	7	0
76	95	1382	633	279	13018	0.123547448292297	12	0
77	96	1519	791	442	15005	0.118586811514179	10	0
78	108	1421	790	409	15235	0.116337480161004	9	0
79	108	1442	803	416	15552	0.11516147558196	9	0
80	106	1543	884	511	16905	0.114501197216867	6	0
81	140	1656	769	393	14776	0.113522979499817	7	0
82	114	1561	732	345	14104	0.111930179432996	13	0
83	158	1905	859	391	12854	0.110610528503361	14	0
84	161	2199	994	470	12956	0.11527438914664	13	0
85	102	1473	704	266	12177	0.113793485966034	14	0
86	127	1655	684	312	11918	0.112349582098189	11	0
87	125	1407	671	300	13517	0.111753469387189	11	0
88	101	1395	643	373	14417	0.109642522576533	10	0
89	97	1530	771	412	15911	0.10844089510559	4	0
90	112	1309	644	322	15589	0.107884938936114	8	0
91	112	1526	828	458	16543	0.109084769191454	9	0
92	113	1327	748	427	17925	0.107571450111271	10	0
93	108	1627	767	346	15406	0.106164022368002	10	0
94	128	1748	825	421	14601	0.106299999323319	5	0
95	154	1958	810	344	13107	0.104825313000088	13	0
96	162	2274	986	370	12268	0.103451745711815	12	0
97	112	1648	714	291	11972	0.101449920129493	10	0
98	79	1401	567	224	12028	0.100402316427863	9	0
99	82	1411	616	266	14033	0.098862033680192	7	0
100	127	1403	678	338	14244	0.102496154313521	5	0
101	108	1394	742	298	15287	0.103027431599736	10	0
102	110	1520	840	386	16954	0.102178908220655	5	0
103	123	1528	888	479	17361	0.0998366428726473	6	0
104	103	1643	852	473	17694	0.0926366895833353	8	0
105	97	1515	774	332	16222	0.0918149629077569	6	0
106	140	1685	831	391	14969	0.090724303768407	12	0
107	165	2000	889	370	13624	0.0900212072768793	15	0
108	183	2215	1046	431	13842	0.0893307058230937	7	0
109	148	1956	889	366	12387	0.0884427348717763	14	0
110	111	1462	626	250	11608	0.0883525692744791	4	0
111	116	1563	808	355	15021	0.0867573619308237	10	0
112	115	1459	746	304	14834	0.0849952420449752	8	0
113	100	1446	754	379	16565	0.0845679437213488	7	0
114	106	1622	865	440	16882	0.0844318988774436	11	0
115	134	1657	980	500	18012	0.0843508831482932	3	0
116	125	1638	959	511	18855	0.0836009830491076	5	0
117	117	1643	856	384	17243	0.0834172630524962	11	0
118	122	1683	798	366	16045	0.0827451397987249	10	0
119	153	2050	942	432	14745	0.0852352669035281	10	0
120	178	2262	1010	390	13726	0.0847703028296526	7	0
121	114	1813	796	306	11196	0.0844589214084587	10	0
122	94	1445	643	232	12105	0.085352119244763	11	0
123	128	1762	794	342	14723	0.0875592125175749	9	0
124	119	1461	750	329	15582	0.0903829170614837	7	0
125	111	1556	809	394	16863	0.0907832937355188	8	0
126	110	1431	716	355	16758	0.108742780219868	13	0
127	114	1427	851	385	17434	0.114142227335262	8	0
128	118	1554	931	463	18359	0.112992933231466	5	0
129	115	1645	834	453	17189	0.111320706029796	8	0
130	132	1653	762	373	16909	0.109126229280665	7	0
131	153	2016	880	401	15380	0.107698459343112	12	0
132	171	2207	1077	466	15161	0.107601574334496	10	0
133	115	1665	748	306	14027	0.103775019202843	7	0
134	95	1361	593	263	14478	0.107114170431059	4	0
135	92	1506	720	323	16155	0.107374774370757	10	0
136	100	1360	646	310	16585	0.111695372689559	4	0
137	95	1453	765	424	18117	0.110638184592354	8	0
138	114	1522	820	403	17552	0.111855211329895	8	0
139	102	1460	807	406	18299	0.109742342683337	7	0
140	104	1552	885	466	19361	0.108193931510232	10	0
141	132	1548	803	381	17924	0.106255362697951	8	0
142	136	1827	860	369	17872	0.104193034427699	14	0
143	117	1737	825	378	16058	0.101933972880902	8	0
144	137	1941	911	392	15746	0.102793824574291	9	0
145	111	1474	704	284	15226	0.10476034144929	8	0
146	106	1458	691	316	14932	0.104002535534347	6	0
147	98	1542	688	321	16846	0.116655515402424	7	0
148	84	1404	714	358	16854	0.11516147558196	6	0
149	94	1522	814	378	18146	0.112989543494316	5	0
150	105	1385	736	382	17559	0.113860643932406	4	0
151	123	1641	876	433	18655	0.119118081064489	5	0
152	109	1510	829	506	19453	0.124489986005886	10	0
153	130	1681	818	428	17923	0.123222945411622	7	0
154	153	1938	942	479	17915	0.12067793212866	10	0
155	134	1868	782	370	16496	0.121048982651421	12	0
156	99	1726	823	349	13544	0.116968571491487	7	0
157	115	1456	595	238	13601	0.112750259392875	4	0
158	104	1445	673	285	15667	0.108079306704711	5	0
159	131	1456	660	324	17358	0.108838515984019	6	0
160	108	1365	676	346	18112	0.111291766408542	4	0
161	103	1487	755	410	18581	0.111304009176187	4	0
162	115	1558	815	411	18759	0.115454357532553	8	0
163	122	1488	867	496	20668	0.114768296055692	8	0
164	122	1684	933	534	21040	0.117207430931122	3	0
165	125	1594	798	396	18993	0.119076397031248	7	0
166	137	1850	950	470	18668	0.117965862171995	12	0
167	138	1998	825	385	16768	0.117449127100423	2	0
168	152	2079	911	411	16551	0.116988457838933	7	0
169	120	1494	619	281	16231	0.11261053571781	8	0
170	95	1057	426	300	15511	0.113657015681422	3	1
171	100	1218	475	318	18308	0.113144445252379	2	1
172	89	1168	556	391	17793	0.118495534815352	6	1
173	82	1236	559	398	19205	0.117969401200945	3	1
174	89	1076	483	337	19162	0.1176866141183	7	1
175	60	1174	587	477	20997	0.120059238961094	6	1
176	84	1139	615	422	20705	0.119437745680998	8	1
177	113	1427	618	495	18759	0.118881271786551	8	1
178	126	1487	662	471	19240	0.118462360710195	4	1
179	122	1483	519	368	17504	0.118016598400236	3	1
180	118	1513	585	345	16591	0.117706622543368	5	1
181	92	1357	483	296	16224	0.117776089941536	5	1
182	86	1165	434	319	16670	0.114796991716514	3	1
183	81	1282	513	349	18539	0.11573525277085	4	1
184	84	1110	548	375	19759	0.115356263024722	3	1
185	87	1297	586	441	19584	0.114815360704668	6	1
186	90	1185	522	465	19976	0.114777477886645	6	1
187	79	1222	601	472	21486	0.114935980147534	7	1
188	96	1284	644	521	21626	0.114796991716514	5	1
189	122	1444	643	429	20195	0.114093156728444	7	1
190	120	1575	641	408	19928	0.116465521799171	7	1
191	137	1737	711	490	18564	0.116026113132354	4	1
192	154	1763	721	491	18149	0.116066729379379	7	1
\.


--
-- Name: seatbelts_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('seatbelts_id_seq', 192, true);


--
-- Data for Name: sleep; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY sleep (id, extra, "group", rid) FROM stdin;
1	0.7	1	1
2	-1.6	1	2
3	-0.2	1	3
4	-1.2	1	4
5	-0.1	1	5
6	3.4	1	6
7	3.7	1	7
8	0.8	1	8
9	0.0	1	9
10	2.0	1	10
11	1.9	2	1
12	0.8	2	2
13	1.1	2	3
14	0.1	2	4
15	-0.1	2	5
16	4.4	2	6
17	5.5	2	7
18	1.6	2	8
19	4.6	2	9
20	3.4	2	10
\.


--
-- Name: sleep_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('sleep_id_seq', 20, true);


--
-- Data for Name: stack_loss; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY stack_loss (id, "eval(parse(text_=_name))") FROM stdin;
1	42
2	37
3	37
4	28
5	18
6	18
7	19
8	20
9	15
10	14
11	14
12	13
13	11
14	12
15	8
16	7
17	8
18	8
19	9
20	15
21	15
\.


--
-- Name: stack_loss_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('stack_loss_id_seq', 21, true);


--
-- Data for Name: stack_x; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY stack_x (id, air_flow, water_temp, acid_conc_) FROM stdin;
1	80	27	89
2	80	27	88
3	75	25	90
4	62	24	87
5	62	22	87
6	62	23	87
7	62	24	93
8	62	24	93
9	58	23	87
10	58	18	80
11	58	18	89
12	58	17	88
13	58	18	82
14	58	19	93
15	50	18	89
16	50	18	86
17	50	19	72
18	50	19	79
19	50	20	80
20	56	20	82
21	70	20	91
\.


--
-- Name: stack_x_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('stack_x_id_seq', 21, true);


--
-- Data for Name: stackloss; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY stackloss (id, air_flow, water_temp, acid_conc_, stack_loss) FROM stdin;
1	80	27	89	42
2	80	27	88	37
3	75	25	90	37
4	62	24	87	28
5	62	22	87	18
6	62	23	87	18
7	62	24	93	19
8	62	24	93	20
9	58	23	87	15
10	58	18	80	14
11	58	18	89	14
12	58	17	88	13
13	58	18	82	11
14	58	19	93	12
15	50	18	89	8
16	50	18	86	7
17	50	19	72	8
18	50	19	79	8
19	50	20	80	9
20	56	20	82	15
21	70	20	91	15
\.


--
-- Name: stackloss_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('stackloss_id_seq', 21, true);


--
-- Data for Name: state_abb; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_abb (id, "eval(parse(text_=_name))") FROM stdin;
1	AL
2	AK
3	AZ
4	AR
5	CA
6	CO
7	CT
8	DE
9	FL
10	GA
11	HI
12	ID
13	IL
14	IN
15	IA
16	KS
17	KY
18	LA
19	ME
20	MD
21	MA
22	MI
23	MN
24	MS
25	MO
26	MT
27	NE
28	NV
29	NH
30	NJ
31	NM
32	NY
33	NC
34	ND
35	OH
36	OK
37	OR
38	PA
39	RI
40	SC
41	SD
42	TN
43	TX
44	UT
45	VT
46	VA
47	WA
48	WV
49	WI
50	WY
\.


--
-- Name: state_abb_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_abb_id_seq', 50, true);


--
-- Data for Name: state_area; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_area (id, "eval(parse(text_=_name))") FROM stdin;
1	51609
2	589757
3	113909
4	53104
5	158693
6	104247
7	5009
8	2057
9	58560
10	58876
11	6450
12	83557
13	56400
14	36291
15	56290
16	82264
17	40395
18	48523
19	33215
20	10577
21	8257
22	58216
23	84068
24	47716
25	69686
26	147138
27	77227
28	110540
29	9304
30	7836
31	121666
32	49576
33	52586
34	70665
35	41222
36	69919
37	96981
38	45333
39	1214
40	31055
41	77047
42	42244
43	267339
44	84916
45	9609
46	40815
47	68192
48	24181
49	56154
50	97914
\.


--
-- Name: state_area_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_area_id_seq', 50, true);


--
-- Data for Name: state_center; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_center (id, x, y) FROM stdin;
1	-86.7509	32.5901
2	-127.25	49.25
3	-111.625	34.2192
4	-92.2992	34.7336
5	-119.773	36.5341
6	-105.513	38.6777
7	-72.3573	41.5928
8	-74.9841	38.6777
9	-81.685	27.8744
10	-83.3736	32.3329
11	-126.25	31.75
12	-113.93	43.5648
13	-89.3776	40.0495
14	-86.0808	40.0495
15	-93.3714	41.9358
16	-98.1156	38.4204
17	-84.7674	37.3915
18	-92.2724	30.6181
19	-68.9801	45.6226
20	-76.6459	39.2778
21	-71.58	42.3645
22	-84.687	43.1361
23	-94.6043	46.3943
24	-89.8065	32.6758
25	-92.5137	38.3347
26	-109.32	46.823
27	-99.5898	41.3356
28	-116.851	39.1063
29	-71.3924	43.3934
30	-74.2336	39.9637
31	-105.942	34.4764
32	-75.1449	43.1361
33	-78.4686	35.4195
34	-100.099	47.2517
35	-82.5963	40.221
36	-97.1239	35.5053
37	-120.068	43.9078
38	-77.45	40.9069
39	-71.1244	41.5928
40	-80.5056	33.619
41	-99.7238	44.3365
42	-86.456	35.6767
43	-98.7857	31.3897
44	-111.33	39.1063
45	-72.545	44.2508
46	-78.2005	37.563
47	-119.746	47.4231
48	-80.6665	38.4204
49	-89.9941	44.5937
50	-107.256	43.0504
\.


--
-- Name: state_center_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_center_id_seq', 50, true);


--
-- Data for Name: state_division; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_division (id, "eval(parse(text_=_name))") FROM stdin;
1	East South Central
2	Pacific
3	Mountain
4	West South Central
5	Pacific
6	Mountain
7	New England
8	South Atlantic
9	South Atlantic
10	South Atlantic
11	Pacific
12	Mountain
13	East North Central
14	East North Central
15	West North Central
16	West North Central
17	East South Central
18	West South Central
19	New England
20	South Atlantic
21	New England
22	East North Central
23	West North Central
24	East South Central
25	West North Central
26	Mountain
27	West North Central
28	Mountain
29	New England
30	Middle Atlantic
31	Mountain
32	Middle Atlantic
33	South Atlantic
34	West North Central
35	East North Central
36	West South Central
37	Pacific
38	Middle Atlantic
39	New England
40	South Atlantic
41	West North Central
42	East South Central
43	West South Central
44	Mountain
45	New England
46	South Atlantic
47	Pacific
48	South Atlantic
49	East North Central
50	Mountain
\.


--
-- Name: state_division_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_division_id_seq', 50, true);


--
-- Data for Name: state_name; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_name (id, "eval(parse(text_=_name))") FROM stdin;
1	Alabama
2	Alaska
3	Arizona
4	Arkansas
5	California
6	Colorado
7	Connecticut
8	Delaware
9	Florida
10	Georgia
11	Hawaii
12	Idaho
13	Illinois
14	Indiana
15	Iowa
16	Kansas
17	Kentucky
18	Louisiana
19	Maine
20	Maryland
21	Massachusetts
22	Michigan
23	Minnesota
24	Mississippi
25	Missouri
26	Montana
27	Nebraska
28	Nevada
29	New Hampshire
30	New Jersey
31	New Mexico
32	New York
33	North Carolina
34	North Dakota
35	Ohio
36	Oklahoma
37	Oregon
38	Pennsylvania
39	Rhode Island
40	South Carolina
41	South Dakota
42	Tennessee
43	Texas
44	Utah
45	Vermont
46	Virginia
47	Washington
48	West Virginia
49	Wisconsin
50	Wyoming
\.


--
-- Name: state_name_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_name_id_seq', 50, true);


--
-- Data for Name: state_region; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_region (id, "eval(parse(text_=_name))") FROM stdin;
1	South
2	West
3	West
4	South
5	West
6	West
7	Northeast
8	South
9	South
10	South
11	West
12	West
13	North Central
14	North Central
15	North Central
16	North Central
17	South
18	South
19	Northeast
20	South
21	Northeast
22	North Central
23	North Central
24	South
25	North Central
26	West
27	North Central
28	West
29	Northeast
30	Northeast
31	West
32	Northeast
33	South
34	North Central
35	North Central
36	South
37	West
38	Northeast
39	Northeast
40	South
41	North Central
42	South
43	South
44	West
45	Northeast
46	South
47	West
48	South
49	North Central
50	West
\.


--
-- Name: state_region_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_region_id_seq', 50, true);


--
-- Data for Name: state_x77; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY state_x77 (id, population, income, illiteracy, life_exp, murder, hs_grad, frost, area) FROM stdin;
1	3615	3624	2.1	69.05	15.1	41.3	20	50708
2	365	6315	1.5	69.31	11.3	66.7	152	566432
3	2212	4530	1.8	70.55	7.8	58.1	15	113417
4	2110	3378	1.9	70.66	10.1	39.9	65	51945
5	21198	5114	1.1	71.71	10.3	62.6	20	156361
6	2541	4884	0.7	72.06	6.8	63.9	166	103766
7	3100	5348	1.1	72.48	3.1	56	139	4862
8	579	4809	0.9	70.06	6.2	54.6	103	1982
9	8277	4815	1.3	70.66	10.7	52.6	11	54090
10	4931	4091	2	68.54	13.9	40.6	60	58073
11	868	4963	1.9	73.6	6.2	61.9	0	6425
12	813	4119	0.6	71.87	5.3	59.5	126	82677
13	11197	5107	0.9	70.14	10.3	52.6	127	55748
14	5313	4458	0.7	70.88	7.1	52.9	122	36097
15	2861	4628	0.5	72.56	2.3	59	140	55941
16	2280	4669	0.6	72.58	4.5	59.9	114	81787
17	3387	3712	1.6	70.1	10.6	38.5	95	39650
18	3806	3545	2.8	68.76	13.2	42.2	12	44930
19	1058	3694	0.7	70.39	2.7	54.7	161	30920
20	4122	5299	0.9	70.22	8.5	52.3	101	9891
21	5814	4755	1.1	71.83	3.3	58.5	103	7826
22	9111	4751	0.9	70.63	11.1	52.8	125	56817
23	3921	4675	0.6	72.96	2.3	57.6	160	79289
24	2341	3098	2.4	68.09	12.5	41	50	47296
25	4767	4254	0.8	70.69	9.3	48.8	108	68995
26	746	4347	0.6	70.56	5	59.2	155	145587
27	1544	4508	0.6	72.6	2.9	59.3	139	76483
28	590	5149	0.5	69.03	11.5	65.2	188	109889
29	812	4281	0.7	71.23	3.3	57.6	174	9027
30	7333	5237	1.1	70.93	5.2	52.5	115	7521
31	1144	3601	2.2	70.32	9.7	55.2	120	121412
32	18076	4903	1.4	70.55	10.9	52.7	82	47831
33	5441	3875	1.8	69.21	11.1	38.5	80	48798
34	637	5087	0.8	72.78	1.4	50.3	186	69273
35	10735	4561	0.8	70.82	7.4	53.2	124	40975
36	2715	3983	1.1	71.42	6.4	51.6	82	68782
37	2284	4660	0.6	72.13	4.2	60	44	96184
38	11860	4449	1	70.43	6.1	50.2	126	44966
39	931	4558	1.3	71.9	2.4	46.4	127	1049
40	2816	3635	2.3	67.96	11.6	37.8	65	30225
41	681	4167	0.5	72.08	1.7	53.3	172	75955
42	4173	3821	1.7	70.11	11	41.8	70	41328
43	12237	4188	2.2	70.9	12.2	47.4	35	262134
44	1203	4022	0.6	72.9	4.5	67.3	137	82096
45	472	3907	0.6	71.64	5.5	57.1	168	9267
46	4981	4701	1.4	70.08	9.5	47.8	85	39780
47	3559	4864	0.6	71.72	4.3	63.5	32	66570
48	1799	3617	1.4	69.48	6.7	41.6	100	24070
49	4589	4468	0.7	72.48	3	54.5	149	54464
50	376	4566	0.6	70.29	6.9	62.9	173	97203
\.


--
-- Name: state_x77_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('state_x77_id_seq', 50, true);


--
-- Data for Name: sunspot_month; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY sunspot_month (id, x) FROM stdin;
1	58
2	62.6
3	70
4	55.7
5	85
6	83.5
7	94.8
8	66.3
9	75.9
10	75.5
11	158.6
12	85.2
13	73.3
14	75.9
15	89.2
16	88.3
17	90
18	100
19	85.4
20	103
21	91.2
22	65.7
23	63.3
24	75.4
25	70
26	43.5
27	45.3
28	56.4
29	60.7
30	50.7
31	66.3
32	59.8
33	23.5
34	23.2
35	28.5
36	44
37	35
38	50
39	71
40	59.3
41	59.7
42	39.6
43	78.4
44	29.3
45	27.1
46	46.6
47	37.6
48	40
49	44
50	32
51	45.7
52	38
53	36
54	31.7
55	22
56	39
57	28
58	25
59	20
60	6.7
61	0
62	3
63	1.7
64	13.7
65	20.7
66	26.7
67	18.8
68	12.3
69	8.2
70	24.1
71	13.2
72	4.2
73	10.2
74	11.2
75	6.8
76	6.5
77	0
78	0
79	8.6
80	3.2
81	17.8
82	23.7
83	6.8
84	20
85	12.5
86	7.1
87	5.4
88	9.4
89	12.5
90	12.9
91	3.6
92	6.4
93	11.8
94	14.3
95	17
96	9.4
97	14.1
98	21.2
99	26.2
100	30
101	38.1
102	12.8
103	25
104	51.3
105	39.7
106	32.5
107	64.7
108	33.5
109	37.6
110	52
111	49
112	72.3
113	46.4
114	45
115	44
116	38.7
117	62.5
118	37.7
119	43
120	43
121	48.3
122	44
123	46.8
124	47
125	49
126	50
127	51
128	71.3
129	77.2
130	59.7
131	46.3
132	57
133	67.3
134	59.5
135	74.7
136	58.3
137	72
138	48.3
139	66
140	75.6
141	61.3
142	50.6
143	59.7
144	61
145	70
146	91
147	80.7
148	71.7
149	107.2
150	99.3
151	94.1
152	91.1
153	100.7
154	88.7
155	89.7
156	46
157	43.8
158	72.8
159	45.7
160	60.2
161	39.9
162	77.1
163	33.8
164	67.7
165	68.5
166	69.3
167	77.8
168	77.2
169	56.5
170	31.9
171	34.2
172	32.9
173	32.7
174	35.8
175	54.2
176	26.5
177	68.1
178	46.3
179	60.9
180	61.4
181	59.7
182	59.7
183	40.2
184	34.4
185	44.3
186	30
187	30
188	30
189	28.2
190	28
191	26
192	25.7
193	24
194	26
195	25
196	22
197	20.2
198	20
199	27
200	29.7
201	16
202	14
203	14
204	13
205	12
206	11
207	36.6
208	6
209	26.8
210	3
211	3.3
212	4
213	4.3
214	5
215	5.7
216	19.2
217	27.4
218	30
219	43
220	32.9
221	29.8
222	33.3
223	21.9
224	40.8
225	42.7
226	44.1
227	54.7
228	53.3
229	53.5
230	66.1
231	46.3
232	42.7
233	77.7
234	77.4
235	52.6
236	66.8
237	74.8
238	77.8
239	90.6
240	111.8
241	73.9
242	64.2
243	64.3
244	96.7
245	73.6
246	94.4
247	118.6
248	120.3
249	148.8
250	158.2
251	148.1
252	112
253	104
254	142.5
255	80.1
256	51
257	70.1
258	83.3
259	109.8
260	126.3
261	104.4
262	103.6
263	132.2
264	102.3
265	36
266	46.2
267	46.7
268	64.9
269	152.7
270	119.5
271	67.7
272	58.5
273	101.4
274	90
275	99.7
276	95.7
277	100.9
278	90.8
279	31.1
280	92.2
281	38
282	57
283	77.3
284	56.2
285	50.5
286	78.6
287	61.3
288	64
289	54.6
290	29
291	51.2
292	32.9
293	41.1
294	28.4
295	27.7
296	12.7
297	29.3
298	26.3
299	40.9
300	43.2
301	46.8
302	65.4
303	55.7
304	43.8
305	51.3
306	28.5
307	17.5
308	6.6
309	7.9
310	14
311	17.7
312	12.2
313	4.4
314	0
315	11.6
316	11.2
317	3.9
318	12.3
319	1
320	7.9
321	3.2
322	5.6
323	15.1
324	7.9
325	21.7
326	11.6
327	6.3
328	21.8
329	11.2
330	19
331	1
332	24.2
333	16
334	30
335	35
336	40
337	45
338	36.5
339	39
340	95.5
341	80.3
342	80.7
343	95
344	112
345	116.2
346	106.5
347	146
348	157.3
349	177.3
350	109.3
351	134
352	145
353	238.9
354	171.6
355	153
356	140
357	171.7
358	156.3
359	150.3
360	105
361	114.7
362	165.7
363	118
364	145
365	140
366	113.7
367	143
368	112
369	111
370	124
371	114
747	0
372	110
373	70
374	98
375	98
376	95
377	107.2
378	88
379	86
380	86
381	93.7
382	77
383	60
384	58.7
385	98.7
386	74.7
387	53
388	68.3
389	104.7
390	97.7
391	73.5
392	66
393	51
394	27.3
395	67
396	35.2
397	54
398	37.5
399	37
400	41
401	54.3
402	38
403	37
404	44
405	34
406	23.2
407	31.5
408	30
409	28
410	38.7
411	26.7
412	28.3
413	23
414	25.2
415	32.2
416	20
417	18
418	8
419	15
420	10.5
421	13
422	8
423	11
424	10
425	6
426	9
427	6
428	10
429	10
430	8
431	17
432	14
433	6.5
434	8
435	9
436	15.7
437	20.7
438	26.3
439	36.3
440	20
441	32
442	47.2
443	40.2
444	27.3
445	37.2
446	47.6
447	47.7
448	85.4
449	92.3
450	59
451	83
452	89.7
453	111.5
454	112.3
455	116
456	112.7
457	134.7
458	106
459	87.4
460	127.2
461	134.8
462	99.2
463	128
464	137.2
465	157.3
466	157
467	141.5
468	174
469	138
470	129.2
471	143.3
472	108.5
473	113
474	154.2
475	141.5
476	136
477	141
478	142
479	94.7
480	129.5
481	114
482	125.3
483	120
484	123.3
485	123.5
486	120
487	117
488	103
489	112
490	89.7
491	134
492	135.5
493	103
494	127.5
495	96.3
496	94
497	93
498	91
499	69.3
500	87
501	77.3
502	84.3
503	82
504	74
505	72.7
506	62
507	74
508	77.2
509	73.7
510	64.2
511	71
512	43
513	66.5
514	61.7
515	67
516	66
517	58
518	64
519	63
520	75.7
521	62
522	61
523	45.8
524	60
525	59
526	59
527	57
528	56
529	56
530	55
531	55.5
532	53
533	52.3
534	51
535	50
536	29.3
537	24
538	47
539	44
540	45.7
541	45
542	44
543	38
544	28.4
545	55.7
546	41.5
547	41
548	40
549	11.1
550	28.5
551	67.4
552	51.4
553	21.4
554	39.9
555	12.6
556	18.6
557	31
558	17.1
559	12.9
560	25.7
561	13.5
562	19.5
563	25
564	18
565	22
566	23.8
567	15.7
568	31.7
569	21
570	6.7
571	26.9
572	1.5
573	18.4
574	11
575	8.4
576	5.1
577	14.4
578	4.2
579	4
580	4
581	7.3
582	11.1
583	4.3
584	6
585	5.7
586	6.9
587	5.8
588	3
589	2
590	4
591	12.4
592	1.1
593	0
594	0
595	0
596	3
597	2.4
598	1.5
599	12.5
600	9.9
601	1.6
602	12.6
603	21.7
604	8.4
605	8.2
606	10.6
607	2.1
608	0
609	0
610	4.6
611	2.7
612	8.6
613	6.9
614	9.3
615	13.9
616	0
617	5
618	23.7
619	21
620	19.5
621	11.5
622	12.3
623	10.5
624	40.1
625	27
626	29
627	30
628	31
629	32
630	31.2
631	35
632	38.7
633	33.5
634	32.6
635	39.8
636	48.2
637	47.8
638	47
639	40.8
640	42
641	44
642	46
643	48
644	50
645	51.8
646	38.5
647	34.5
648	50
649	50
650	50.8
651	29.5
652	25
653	44.3
654	36
655	48.3
656	34.1
657	45.3
658	54.3
659	51
660	48
661	45.3
662	48.3
663	48
664	50.6
665	33.4
666	34.8
667	29.8
668	43.1
669	53
670	62.3
671	61
672	60
673	61
674	44.1
675	51.4
676	37.5
677	39
678	40.5
679	37.6
680	42.7
681	44.4
682	29.4
683	41
684	38.3
685	39
686	29.6
687	32.7
688	27.7
689	26.4
690	25.6
691	30
692	26.3
693	24
694	27
695	25
696	24
697	12
698	12.2
699	9.6
700	23.8
701	10
702	12
703	12.7
704	12
705	5.7
706	8
707	2.6
708	0
709	0
710	4.5
711	0
712	12.3
713	13.5
714	13.5
715	6.7
716	8
717	11.7
718	4.7
719	10.5
720	12.3
721	7.2
722	9.2
723	0.9
724	2.5
725	2
726	7.7
727	0.3
728	0.2
729	0.4
730	0
731	0
732	0
733	0
734	0
735	0
736	0
737	0
738	0
739	0
740	0
741	0
742	0
743	0
744	0
745	0
746	0
748	0
749	0
750	0
751	6.6
752	0
753	2.4
754	6.1
755	0.8
756	1.1
757	11.3
758	1.9
759	0.7
760	0
761	1
762	1.3
763	0.5
764	15.6
765	5.2
766	3.9
767	7.9
768	10.1
769	0
770	10.3
771	1.9
772	16.6
773	5.5
774	11.2
775	18.3
776	8.4
777	15.3
778	27.8
779	16.7
780	14.3
781	22.2
782	12
783	5.7
784	23.8
785	5.8
786	14.9
787	18.5
788	2.3
789	8.1
790	19.3
791	14.5
792	20.1
793	19.2
794	32.2
795	26.2
796	31.6
797	9.8
798	55.9
799	35.5
800	47.2
801	31.5
802	33.5
803	37.2
804	65
805	26.3
806	68.8
807	73.7
808	58.8
809	44.3
810	43.6
811	38.8
812	23.2
813	47.8
814	56.4
815	38.1
816	29.9
817	36.4
818	57.9
819	96.2
820	26.4
821	21.2
822	40
823	50
824	45
825	36.7
826	25.6
827	28.9
828	28.4
829	34.9
830	22.4
831	25.4
832	34.5
833	53.1
834	36.4
835	28
836	31.5
837	26.1
838	31.6
839	10.9
840	25.8
841	32.8
842	20.7
843	3.7
844	20.2
845	19.6
846	35
847	31.4
848	26.1
849	14.9
850	27.5
851	25.1
852	30.6
853	19.2
854	26.6
855	4.5
856	19.4
857	29.3
858	10.8
859	20.6
860	25.9
861	5.2
862	8.9
863	7.9
864	9.1
865	21.5
866	4.2
867	5.7
868	9.2
869	1.7
870	1.8
871	2.5
872	4.8
873	4.4
874	18.8
875	4.4
876	0.2
877	0
878	0.9
879	16.1
880	13.5
881	1.5
882	5.6
883	7.9
884	2.1
885	0
886	0.4
887	0
888	0
889	0
890	0
891	0.6
892	0
893	0
894	0
895	0.5
896	0
897	0
898	0
899	0
900	20.4
901	21.7
902	10.8
903	0
904	19.4
905	2.8
906	0
907	0
908	1.4
909	20.5
910	25.2
911	0
912	0.8
913	5
914	15.5
915	22.4
916	3.8
917	15.5
918	15.4
919	30.9
920	25.7
921	15.7
922	15.6
923	11.7
924	22
925	17.7
926	18.2
927	36.7
928	24
929	32.4
930	37.1
931	52.5
932	39.6
933	18.9
934	50.6
935	39.5
936	68.1
937	34.6
938	47.4
939	57.8
940	46
941	56.3
942	56.7
943	42.3
944	53.7
945	49.6
946	56.1
947	48.2
948	46.1
949	52.8
950	64.4
951	65
952	61.1
953	89.1
954	98
955	54.2
956	76.4
957	50.4
958	54.7
959	57
960	46.9
961	43
962	49.4
963	72.3
964	95
965	67.4
966	73.9
967	90.8
968	77.6
969	52.8
970	57.2
971	67.6
972	56.5
973	52.2
974	72.1
975	84.6
976	106.3
977	66.3
978	65.1
979	43.9
980	50.7
981	62.1
982	84.4
983	81.2
984	82.1
985	47.5
986	50.1
987	93.4
988	54.5
989	38.1
990	33.4
991	45.2
992	55
993	37.9
994	46.3
995	43.5
996	28.9
997	30.9
998	55.6
999	55.1
1000	26.9
1001	41.3
1002	26.7
1003	14
1004	8.9
1005	8.2
1006	21.1
1007	14.3
1008	27.5
1009	11.3
1010	14.9
1011	11.8
1012	2.8
1013	12.9
1014	1
1015	7
1016	5.7
1017	11.6
1018	7.5
1019	5.9
1020	9.9
1021	4.9
1022	18.1
1023	3.9
1024	1.4
1025	8.8
1026	7.8
1027	8.7
1028	4
1029	11.5
1030	24.8
1031	30.5
1032	34.5
1033	7.5
1034	24.5
1035	19.7
1036	61.5
1037	43.6
1038	33.2
1039	59.8
1040	59
1041	100.8
1042	95.2
1043	100
1044	77.5
1045	88.6
1046	107.6
1047	98.2
1048	142.9
1049	111.4
1050	124.7
1051	116.7
1052	107.8
1053	95.1
1054	137.4
1055	120.9
1056	206.2
1057	188
1058	175.6
1059	134.6
1060	138.2
1061	111.7
1062	158
1063	162.8
1064	134
1065	96.3
1066	123.7
1067	107
1068	129.8
1069	144.9
1070	84.8
1071	140.8
1072	126.6
1073	137.6
1074	94.5
1075	108.2
1076	78.8
1077	73.6
1078	90.8
1079	77.4
1080	79.8
1081	105.6
1082	102.5
1083	77.7
1084	61.8
1085	53.8
1086	54.6
1087	84.8
1088	131.2
1089	132.7
1090	90.9
1091	68.8
1092	63.7
1093	81.2
1094	87.7
1095	67.8
1096	65.9
1097	69.2
1098	48.5
1099	60.7
1100	57.8
1101	74
1102	55
1103	54.3
1104	53.7
1105	24.1
1106	29.9
1107	29.7
1108	40.2
1109	67.5
1110	55.7
1111	30.8
1112	39.3
1113	36.5
1114	28.5
1115	19.8
1116	38.8
1117	20.4
1118	22.1
1119	21.7
1120	26.9
1121	24.9
1122	20.5
1123	12.6
1124	26.6
1125	18.4
1126	38.1
1127	40.5
1128	17.6
1129	13.3
1130	3.5
1131	8.3
1132	9.5
1133	21.1
1134	10.5
1135	9.5
1136	11.8
1137	4.2
1138	5.3
1139	19.1
1140	12.7
1141	9.4
1142	14.7
1143	13.6
1144	20.8
1145	11.6
1146	3.7
1147	21.2
1148	23.9
1149	7
1150	21.5
1151	10.7
1152	21.6
1153	25.7
1154	43.6
1155	43.3
1156	57
1157	47.8
1158	31.1
1159	30.6
1160	32.3
1161	29.6
1162	40.7
1163	39.4
1164	59.7
1165	38.7
1166	51
1167	63.9
1168	69.3
1169	59.9
1170	65.1
1171	46.5
1172	54.8
1173	107.1
1174	55.9
1175	60.4
1176	65.5
1177	62.6
1178	44.9
1179	85.7
1180	44.7
1181	75.4
1182	85.3
1183	52.2
1184	140.6
1185	160.9
1186	180.4
1187	138.9
1188	109.6
1189	159.1
1190	111.8
1191	108.6
1192	107.1
1193	102.2
1194	129
1195	139.2
1196	132.6
1197	100.3
1198	132.4
1199	114.6
1200	159.5
1201	157
1202	131.7
1203	96.2
1204	102.5
1205	80.6
1206	81.1
1207	78
1208	67.7
1209	93.7
1210	71.5
1211	99
1212	97
1213	78
1214	89.4
1215	82.6
1216	44.1
1217	61.6
1218	70
1219	39.1
1220	61.6
1221	86.2
1222	71
1223	54.8
1224	61
1225	75.5
1226	105.4
1227	64.6
1228	56.5
1229	62.6
1230	63.2
1231	36.1
1232	57.4
1233	67.9
1234	62.5
1235	51
1236	71.4
1237	68.4
1238	66.4
1239	61.2
1240	65.4
1241	54.9
1242	46.9
1243	42.1
1244	39.7
1245	37.5
1246	67.3
1247	54.3
1248	45.4
1249	41.1
1250	42.9
1251	37.7
1252	47.6
1253	34.7
1254	40
1255	45.9
1256	50.4
1257	33.5
1258	42.3
1259	28.8
1260	23.4
1261	15.4
1262	20
1263	20.7
1264	26.5
1265	24
1266	21.1
1267	18.7
1268	15.8
1269	22.4
1270	12.6
1271	28.2
1272	21.6
1273	12.3
1274	11.4
1275	17.4
1276	4.4
1277	9.1
1278	5.3
1279	0.4
1280	3.1
1281	0
1282	9.6
1283	4.2
1284	3.1
1285	0.5
1286	4.9
1287	0.4
1288	6.5
1289	0
1290	5.2
1291	4.6
1292	5.9
1293	4.4
1294	4.5
1295	7.7
1296	7.2
1297	13.7
1298	7.4
1299	5.2
1300	11.1
1301	28.6
1302	16
1303	22.2
1304	16.9
1305	42.4
1306	40.6
1307	31.4
1308	37.2
1309	39
1310	34.9
1311	57.5
1312	38.3
1313	41.4
1314	44.5
1315	56.7
1316	55.3
1317	80.1
1318	91.2
1319	51.9
1320	66.9
1321	83.7
1322	87.6
1323	90.3
1324	85.7
1325	91
1326	87.1
1327	95.2
1328	106.8
1329	105.8
1330	114.6
1331	97.2
1332	81
1333	82.4
1334	88.3
1335	98.9
1336	71.4
1337	107.1
1338	108.6
1339	116.7
1340	100.3
1341	92.2
1342	90.1
1343	97.9
1344	95.6
1345	62.3
1346	77.7
1347	101
1348	98.5
1349	56.8
1350	88.1
1351	78
1352	82.5
1353	79.9
1354	67.2
1355	53.7
1356	80.5
1357	63.1
1358	64.5
1359	43.6
1360	53.7
1361	64.4
1362	84
1363	73.4
1364	62.5
1365	66.6
1366	41.9
1367	50.6
1368	40.9
1369	48.3
1370	56.7
1371	66.4
1372	40.6
1373	53.8
1374	40.8
1375	32.7
1376	48.1
1377	22
1378	39.9
1379	37.7
1380	41.2
1381	57.7
1382	47.1
1383	66.3
1384	35.8
1385	40.6
1386	57.8
1387	54.7
1388	54.8
1389	28.5
1390	33.9
1391	57.6
1392	28.6
1393	48.7
1394	39.3
1395	39.5
1396	29.4
1397	34.5
1398	33.6
1399	26.8
1400	37.8
1401	21.6
1402	17.1
1403	24.6
1404	12.8
1405	31.6
1406	38.4
1407	24.6
1408	17.6
1409	12.9
1410	16.5
1411	9.3
1412	12.7
1413	7.3
1414	14.1
1415	9
1416	1.5
1417	0
1418	0.7
1419	9.2
1420	5.1
1421	2.9
1422	1.5
1423	5
1424	4.8
1425	9.8
1426	13.5
1427	9.6
1428	25.2
1429	15.6
1430	15.7
1431	26.5
1432	36.6
1433	26.7
1434	31.1
1435	29
1436	34.4
1437	47.2
1438	61.6
1439	59.1
1440	67.6
1441	60.9
1442	59.9
1443	52.7
1444	41
1445	103.9
1446	108.4
1447	59.2
1448	79.6
1449	80.6
1450	59.3
1451	78.1
1452	104.3
1453	77.3
1454	114.9
1455	157.6
1456	160
1457	176
1458	135.6
1459	132.4
1460	153.8
1461	136
1462	146.4
1463	147.5
1464	130
1465	88.3
1466	125.3
1467	143.2
1468	162.4
1469	145.5
1470	91.7
1471	103
1472	110.1
1473	80.3
1474	89
1475	105.4
1476	90.4
1477	79.5
1478	120.1
1479	88.4
1480	102.1
1481	107.6
1482	109.9
1483	105.5
1484	92.9
1485	114.6
1486	102.6
1487	112
1488	83.9
1489	86.7
1490	107
1491	98.3
1492	76.2
1493	47.9
1494	44.8
1495	66.9
1496	68.2
1497	47.1
1498	47.1
1499	55.4
1500	49.2
1501	60.8
1502	64.2
1503	46.4
1504	32
1505	44.6
1506	38.2
1507	67.8
1508	61.3
1509	28
1510	34.3
1511	28.9
1512	29.3
1513	14.6
1514	21.5
1515	33.8
1516	29.1
1517	11.5
1518	23.9
1519	12.5
1520	14.6
1521	2.4
1522	12.7
1523	17.7
1524	9.9
1525	14.3
1526	15
1527	30.6
1528	2.3
1529	5.1
1530	1.6
1531	15.2
1532	8.8
1533	9.9
1534	14.3
1535	9.9
1536	8.2
1537	24.4
1538	8.7
1539	11.9
1540	15.8
1541	21.6
1542	14.2
1543	6
1544	6.3
1545	16.9
1546	6.7
1547	14.2
1548	2.2
1549	3.3
1550	6.6
1551	7.8
1552	0.1
1553	5.9
1554	6.4
1555	0.1
1556	0
1557	5.3
1558	1.1
1559	4.1
1560	0.5
1561	1
1562	0.6
1563	0
1564	6.2
1565	2.4
1566	4.8
1567	7.5
1568	10.7
1569	6.1
1570	12.3
1571	13.1
1572	7.3
1573	24
1574	27.2
1575	19.3
1576	19.5
1577	23.5
1578	34.1
1579	21.9
1580	48.1
1581	66
1582	43
1583	30.7
1584	29.6
1585	36.4
1586	53.2
1587	51.5
1588	51.6
1589	43.5
1590	60.5
1591	76.9
1592	58.4
1593	53.2
1594	64.4
1595	54.8
1596	47.3
1597	45
1598	69.5
1599	66.8
1600	95.8
1601	64.1
1602	45.2
1603	45.4
1604	40.4
1605	57.7
1606	59.2
1607	84.4
1608	41.8
1609	60.6
1610	46.9
1611	42.8
1612	82.1
1613	31.5
1614	76.3
1615	80.6
1616	46
1617	52.6
1618	83.8
1619	84.5
1620	75.9
1621	91.5
1622	86.9
1623	87.5
1624	76.1
1625	66.5
1626	51.2
1627	53.1
1628	55.8
1629	61.9
1630	47.8
1631	36.6
1632	47.2
1633	42.8
1634	71.8
1635	49.8
1636	55
1637	73
1638	83.7
1639	66.5
1640	50
1641	39.6
1642	38.7
1643	30.9
1644	21.7
1645	29.9
1646	25.9
1647	57.3
1648	43.7
1649	30.7
1650	27.1
1651	30.3
1652	16.9
1653	21.4
1654	8.6
1655	0.3
1656	13
1657	10.3
1658	13.2
1659	4.2
1660	6.9
1661	20
1662	15.7
1663	23.3
1664	21.4
1665	7.4
1666	6.6
1667	6.9
1668	20.7
1669	12.7
1670	7.1
1671	7.8
1672	5.1
1673	7
1674	7.1
1675	3.1
1676	2.8
1677	8.8
1678	2.1
1679	10.7
1680	6.7
1681	0.8
1682	8.5
1683	6.7
1684	4.3
1685	2.4
1686	6.4
1687	9.4
1688	20.6
1689	6.5
1690	2.1
1691	0.2
1692	6.7
1693	5.3
1694	0.6
1695	5.1
1696	1.6
1697	4.8
1698	1.3
1699	11.6
1700	8.5
1701	17.2
1702	11.2
1703	9.6
1704	7.8
1705	13.5
1706	22.2
1707	10.4
1708	20.5
1709	41.1
1710	48.3
1711	58.8
1712	33
1713	53.8
1714	51.5
1715	41.9
1716	32.5
1717	69.1
1718	75.6
1719	49.9
1720	69.6
1721	79.6
1722	76.3
1723	76.5
1724	101.4
1725	62.8
1726	70.5
1727	65.4
1728	78.6
1729	75
1730	73
1731	65.7
1732	88.1
1733	84.7
1734	89.9
1735	88.6
1736	129.2
1737	77.9
1738	80
1739	75.1
1740	93.8
1741	83.2
1742	84.6
1743	52.3
1744	81.6
1745	101.2
1746	98.9
1747	106
1748	70.3
1749	65.9
1750	75.5
1751	56.6
1752	60
1753	63.3
1754	67.2
1755	61
1756	76.9
1757	67.5
1758	71.5
1759	47.8
1760	68.9
1761	57.7
1762	67.9
1763	47.2
1764	70.7
1765	29
1766	57.4
1767	52
1768	43.8
1769	27.7
1770	49
1771	45
1772	27.2
1773	61.3
1774	28.7
1775	38
1776	42.6
1777	40.6
1778	29.4
1779	29.1
1780	31
1781	20
1782	11.3
1783	27.6
1784	21.8
1785	48.1
1786	14.3
1787	8.4
1788	33.3
1789	30.2
1790	36.4
1791	38.3
1792	14.5
1793	25.8
1794	22.3
1795	9
1796	31.4
1797	34.8
1798	34.4
1799	30.9
1800	12.6
1801	19.5
1802	9.2
1803	18.1
1804	14.2
1805	7.7
1806	20.5
1807	13.5
1808	2.9
1809	8.4
1810	13
1811	7.8
1812	10.5
1813	9.4
1814	13.6
1815	8.6
1816	16
1817	15.2
1818	12.1
1819	8.3
1820	4.3
1821	8.3
1822	12.9
1823	4.5
1824	0.3
1825	0.2
1826	2.4
1827	4.5
1828	0
1829	10.2
1830	5.8
1831	0.7
1832	1
1833	0.6
1834	3.7
1835	3.8
1836	0
1837	5.5
1838	0
1839	12.4
1840	0
1841	2.8
1842	1.4
1843	0.9
1844	2.3
1845	7.6
1846	16.3
1847	10.3
1848	1.1
1849	8.3
1850	17
1851	13.5
1852	26.1
1853	14.6
1854	16.3
1855	27.9
1856	28.8
1857	11.1
1858	38.9
1859	44.5
1860	45.6
1861	31.6
1862	24.5
1863	37.2
1864	43
1865	39.5
1866	41.9
1867	50.6
1868	58.2
1869	30.1
1870	54.2
1871	38
1872	54.6
1873	54.8
1874	85.8
1875	56.5
1876	39.3
1877	48
1878	49
1879	73
1880	58.8
1881	55
1882	78.7
1883	107.2
1884	55.5
1885	45.5
1886	31.3
1887	64.5
1888	55.3
1889	57.7
1890	63.2
1891	103.6
1892	47.7
1893	56.1
1894	17.8
1895	38.9
1896	64.7
1897	76.4
1898	108.2
1899	60.7
1900	52.6
1901	42.9
1902	40.4
1903	49.7
1904	54.3
1905	85
1906	65.4
1907	61.5
1908	47.3
1909	39.2
1910	33.9
1911	28.7
1912	57.6
1913	40.8
1914	48.1
1915	39.5
1916	90.5
1917	86.9
1918	32.3
1919	45.5
1920	39.5
1921	56.7
1922	46.6
1923	66.3
1924	32.3
1925	36
1926	22.6
1927	35.8
1928	23.1
1929	38.8
1930	58.4
1931	55.8
1932	54.2
1933	26.4
1934	31.5
1935	21.4
1936	8.4
1937	22.2
1938	12.3
1939	14.1
1940	11.5
1941	26.2
1942	38.3
1943	4.9
1944	5.8
1945	3.4
1946	9
1947	7.8
1948	16.5
1949	9
1950	2.2
1951	3.5
1952	4
1953	4
1954	2.6
1955	4.2
1956	2.2
1957	0.3
1958	0
1959	4.9
1960	4.5
1961	4.4
1962	4.1
1963	3
1964	0.3
1965	9.5
1966	4.6
1967	1.1
1968	6.4
1969	2.3
1970	2.9
1971	0.5
1972	0.9
1973	0
1974	0
1975	1.7
1976	0.2
1977	1.2
1978	3.1
1979	0.7
1980	3.8
1981	2.8
1982	2.6
1983	3.1
1984	17.3
1985	5.2
1986	11.4
1987	5.4
1988	7.7
1989	12.7
1990	8.2
1991	16.4
1992	22.3
1993	23
1994	42.3
1995	38.8
1996	41.3
1997	33
1998	68.8
1999	71.6
2000	69.6
2001	49.5
2002	53.5
2003	42.5
2004	34.5
2005	45.3
2006	55.4
2007	67
2008	71.8
2009	74.5
2010	67.7
2011	53.5
2012	35.2
2013	45.1
2014	50.7
2015	65.6
2016	53
2017	74.7
2018	71.9
2019	94.8
2020	74.7
2021	114.1
2022	114.9
2023	119.8
2024	154.5
2025	129.4
2026	72.2
2027	96.4
2028	129.3
2029	96
2030	65.3
2031	72.2
2032	80.5
2033	76.7
2034	59.4
2035	107.6
2036	101.7
2037	79.9
2038	85
2039	83.4
2040	59.2
2041	48.1
2042	79.5
2043	66.5
2044	51.8
2045	88.1
2046	111.2
2047	64.7
2048	69
2049	54.7
2050	52.8
2051	42
2052	34.9
2053	51.1
2054	53.9
2055	70.2
2056	14.8
2057	33.3
2058	38.7
2059	27.5
2060	19.2
2061	36.3
2062	49.6
2063	27.2
2064	29.9
2065	31.5
2066	28.3
2067	26.7
2068	32.4
2069	22.2
2070	33.7
2071	41.9
2072	22.8
2073	17.8
2074	18.2
2075	17.8
2076	20.3
2077	11.8
2078	26.4
2079	54.7
2080	11
2081	8
2082	5.8
2083	10.9
2084	6.5
2085	4.7
2086	6.2
2087	7.4
2088	17.5
2089	4.5
2090	1.5
2091	3.3
2092	6.1
2093	3.2
2094	9.1
2095	3.5
2096	0.5
2097	13.2
2098	11.6
2099	10
2100	2.8
2101	0.5
2102	5.1
2103	1.8
2104	11.3
2105	20.8
2106	24
2107	28.1
2108	19.3
2109	25.1
2110	25.6
2111	22.5
2112	16.5
2113	5.5
2114	23.2
2115	18
2116	31.7
2117	42.8
2118	47.5
2119	38.5
2120	37.9
2121	60.2
2122	69.2
2123	58.6
2124	98.6
2125	71.8
2126	69.9
2127	62.5
2128	38.5
2129	64.3
2130	73.5
2131	52.3
2132	61.6
2133	60.8
2134	71.5
2135	60.5
2136	79.4
2137	81.6
2138	93
2139	69.6
2140	93.5
2141	79.1
2142	59.1
2143	54.9
2144	53.8
2145	68.4
2146	63.1
2147	67.2
2148	45.2
2149	83.5
2150	73.5
2151	85.4
2152	80.6
2153	77
2154	91.4
2155	98
2156	83.8
2157	89.7
2158	61.4
2159	50.3
2160	59
2161	68.9
2162	62.8
2163	50.2
2164	52.8
2165	58.2
2166	71.9
2167	70.2
2168	65.8
2169	34.4
2170	54
2171	81.1
2172	108
2173	65.3
2174	49.9
2175	35
2176	38.2
2177	36.8
2178	28.8
2179	21.9
2180	24.9
2181	32.1
2182	34.4
2183	35.6
2184	25.8
2185	14.6
2186	43.1
2187	30
2188	31.2
2189	24.6
2190	15.3
2191	17.4
2192	13
2193	19
2194	10
2195	18.7
2196	17.8
2197	12.1
2198	10.6
2199	11.2
2200	11.2
2201	17.9
2202	22.2
2203	9.6
2204	6.8
2205	4
2206	8.9
2207	8.2
2208	11
2209	12.3
2210	22.2
2211	10.1
2212	2.9
2213	3.2
2214	5.2
2215	2.8
2216	0.2
2217	5.1
2218	3
2219	0.6
2220	0.3
2221	3.4
2222	7.8
2223	4.3
2224	11.3
2225	19.7
2226	6.7
2227	9.3
2228	8.3
2229	4
2230	5.7
2231	8.7
2232	15.4
2233	18.6
2234	20.5
2235	23.1
2236	12.2
2237	27.3
2238	45.7
2239	33.9
2240	30.1
2241	42.1
2242	53.2
2243	64.2
2244	61.5
2245	62.8
2246	74.3
2247	77.1
2248	74.9
2249	54.6
2250	70
2251	52.3
2252	87
2253	76
2254	89
2255	115.4
2256	123.4
2257	132.5
2258	128.5
2259	83.9
2260	109.3
2261	116.7
2262	130.3
2263	145.1
2264	137.7
2265	100.7
2266	124.9
2267	74.4
2268	88.8
2269	98.4
2270	119.2
2271	86.5
2272	101
2273	127.4
2274	97.5
2275	165.3
2276	115.7
2277	89.6
2278	99.1
2279	122.2
2280	92.7
2281	80.3
2282	77.4
2283	64.6
2284	109.1
2285	118.3
2286	101
2287	97.6
2288	105.8
2289	112.6
2290	88.1
2291	68.1
2292	42.1
2293	50.5
2294	59.4
2295	83.3
2296	60.7
2297	54.4
2298	83.9
2299	67.5
2300	105.5
2301	66.5
2302	55
2303	58.4
2304	68.3
2305	45.6
2306	44.5
2307	46.4
2308	32.8
2309	29.5
2310	59.8
2311	66.9
2312	60
2313	65.9
2314	46.3
2315	38.4
2316	33.7
2317	35.6
2318	52.8
2319	54.2
2320	60.7
2321	25
2322	11.4
2323	17.7
2324	20.2
2325	17.2
2326	19.2
2327	30.7
2328	22.5
2329	12.4
2330	28.9
2331	27.4
2332	26.1
2333	14.1
2334	7.6
2335	13.2
2336	19.4
2337	10
2338	7.8
2339	10.2
2340	18.8
2341	3.7
2342	0.5
2343	11
2344	0.3
2345	2.5
2346	5
2347	5
2348	16.7
2349	14.3
2350	16.9
2351	10.8
2352	28.4
2353	18.5
2354	12.7
2355	21.5
2356	32
2357	30.6
2358	36.2
2359	42.6
2360	25.9
2361	34.9
2362	68.8
2363	46
2364	27.4
2365	47.6
2366	86.2
2367	76.6
2368	75.7
2369	84.9
2370	73.5
2371	116.2
2372	107.2
2373	94.4
2374	102.3
2375	123.8
2376	121.7
2377	115.7
2378	133.4
2379	129.8
2380	149.8
2381	201.3
2382	163.9
2383	157.9
2384	188.8
2385	169.4
2386	163.6
2387	128
2388	116.5
2389	108.5
2390	86.1
2391	94.8
2392	189.7
2393	174
2394	167.8
2395	142.2
2396	157.9
2397	143.3
2398	136.3
2399	95.8
2400	138
2401	119.1
2402	182.3
2403	157.5
2404	147
2405	106.2
2406	121.7
2407	125.8
2408	123.8
2409	145.3
2410	131.6
2411	143.5
2412	117.6
2413	101.6
2414	94.8
2415	109.7
2416	113.4
2417	106.2
2418	83.6
2419	91
2420	85.2
2421	51.3
2422	61.4
2423	54.8
2424	54.1
2425	59.9
2426	59.9
2427	55.9
2428	92.9
2429	108.5
2430	100.6
2431	61.5
2432	61
2433	83.1
2434	51.6
2435	52.4
2436	45.8
2437	40.7
2438	22.7
2439	22
2440	29.1
2441	23.4
2442	36.4
2443	39.3
2444	54.9
2445	28.2
2446	23.8
2447	22.1
2448	34.3
2449	26.5
2450	3.9
2451	10
2452	27.8
2453	12.5
2454	21.8
2455	8.6
2456	23.5
2457	19.3
2458	8.2
2459	1.6
2460	2.5
2461	0.2
2462	0.5
2463	10.9
2464	1.8
2465	0.8
2466	0.2
2467	4.8
2468	8.4
2469	1.5
2470	7
2471	9.2
2472	7.6
2473	23.1
2474	20.8
2475	4.9
2476	11.3
2477	28.9
2478	31.7
2479	26.7
2480	40.7
2481	42.7
2482	58.5
2483	89.2
2484	76.9
2485	73.6
2486	124
2487	118.4
2488	110.7
2489	136.6
2490	116.6
2491	129.1
2492	169.6
2493	173.2
2494	155.3
2495	201.3
2496	192.1
2497	165
2498	130.2
2499	157.4
2500	175.2
2501	164.6
2502	200.7
2503	187.2
2504	158
2505	235.8
2506	253.8
2507	210.9
2508	239.4
2509	202.5
2510	164.9
2511	190.7
2512	196
2513	175.3
2514	171.5
2515	191.4
2516	200.2
2517	201.2
2518	181.5
2519	152.3
2520	187.6
2521	217.4
2522	143.1
2523	185.7
2524	163.3
2525	172
2526	168.7
2527	149.6
2528	199.6
2529	145.2
2530	111.4
2531	124
2532	125
2533	146.3
2534	106
2535	102.2
2536	122
2537	119.6
2538	110.2
2539	121.7
2540	134.1
2541	127.2
2542	82.8
2543	89.6
2544	85.6
2545	57.9
2546	46.1
2547	53
2548	61.4
2549	51
2550	77.4
2551	70.2
2552	55.8
2553	63.6
2554	37.7
2555	32.6
2556	39.9
2557	38.7
2558	50.3
2559	45.6
2560	46.4
2561	43.7
2562	42
2563	21.8
2564	21.8
2565	51.3
2566	39.5
2567	26.9
2568	23.2
2569	19.8
2570	24.4
2571	17.1
2572	29.3
2573	43
2574	35.9
2575	19.6
2576	33.2
2577	38.8
2578	35.3
2579	23.4
2580	14.9
2581	15.3
2582	17.7
2583	16.5
2584	8.6
2585	9.5
2586	9.1
2587	3.1
2588	9.3
2589	4.7
2590	6.1
2591	7.4
2592	15.1
2593	17.5
2594	14.2
2595	11.7
2596	6.8
2597	24.1
2598	15.9
2599	11.9
2600	8.9
2601	16.8
2602	20.1
2603	15.8
2604	17
2605	28.2
2606	24.4
2607	25.3
2608	48.7
2609	45.3
2610	47.7
2611	56.7
2612	51.2
2613	50.2
2614	57.2
2615	57.2
2616	70.4
2617	110.9
2618	93.6
2619	111.8
2620	69.5
2621	86.5
2622	67.3
2623	91.5
2624	107.2
2625	76.8
2626	88.2
2627	94.3
2628	126.4
2629	121.8
2630	111.9
2631	92.2
2632	81.2
2633	127.2
2634	110.3
2635	96.1
2636	109.3
2637	117.2
2638	107.7
2639	86
2640	109.8
2641	104.4
2642	120.5
2643	135.8
2644	106.8
2645	120
2646	106
2647	96.8
2648	98
2649	91.3
2650	95.7
2651	93.5
2652	97.9
2653	111.5
2654	127.8
2655	102.9
2656	109.5
2657	127.5
2658	106.8
2659	112.5
2660	93
2661	99.5
2662	86.6
2663	95.2
2664	83.5
2665	91.3
2666	79
2667	60.7
2668	71.8
2669	57.5
2670	49.8
2671	81
2672	61.4
2673	50.2
2674	51.7
2675	63.2
2676	82.2
2677	61.5
2678	88.4
2679	80.1
2680	63.2
2681	80.5
2682	88
2683	76.5
2684	76.8
2685	64
2686	61.3
2687	41.6
2688	45.3
2689	43.4
2690	42.9
2691	46
2692	57.7
2693	42.4
2694	37.5
2695	23.1
2696	25.6
2697	59.3
2698	30.7
2699	23.9
2700	23.3
2701	27.6
2702	26
2703	21.3
2704	40.3
2705	39.5
2706	36
2707	55.8
2708	33.6
2709	40.2
2710	47.1
2711	25
2712	20.5
2713	18.9
2714	11.5
2715	11.5
2716	5.1
2717	9
2718	11.4
2719	28.2
2720	39.7
2721	13.9
2722	9.1
2723	19.4
2724	7.8
2725	8.1
2726	4.3
2727	21.9
2728	18.8
2729	12.4
2730	12.2
2731	1.9
2732	16.4
2733	13.5
2734	20.6
2735	5.2
2736	15.3
2737	16.4
2738	23.1
2739	8.7
2740	12.9
2741	18.6
2742	38.5
2743	21.4
2744	30.1
2745	44
2746	43.8
2747	29.1
2748	43.2
2749	51.9
2750	93.6
2751	76.5
2752	99.7
2753	82.7
2754	95.1
2755	70.4
2756	58.1
2757	138.2
2758	125.1
2759	97.9
2760	122.7
2761	166.6
2762	137.5
2763	138
2764	101.5
2765	134.4
2766	149.5
2767	159.4
2768	142.2
2769	188.4
2770	186.2
2771	183.3
2772	176.3
2773	159.6
2774	155
2775	126.2
2776	164.1
2777	179.9
2778	157.3
2779	136.3
2780	135.4
2781	155
2782	164.7
2783	147.9
2784	174.4
2785	114
2786	141.3
2787	135.5
2788	156.4
2789	127.5
2790	90.9
2791	143.8
2792	158.7
2793	167.3
2794	162.4
2795	137.5
2796	150.1
2797	111.2
2798	163.6
2799	153.8
2800	122
2801	82.2
2802	110.4
2803	106.1
2804	107.6
2805	118.8
2806	94.7
2807	98.1
2808	127
2809	84.3
2810	51
2811	66.5
2812	80.7
2813	99.2
2814	91.1
2815	82.2
2816	71.8
2817	50.3
2818	55.8
2819	33.3
2820	33.4
2821	57
2822	85.4
2823	83.5
2824	69.7
2825	76.4
2826	46.1
2827	37.4
2828	25.5
2829	15.7
2830	12
2831	22.8
2832	18.7
2833	16.5
2834	15.9
2835	17.2
2836	16.2
2837	27.5
2838	24.2
2839	30.7
2840	11.1
2841	3.9
2842	18.6
2843	16.2
2844	17.3
2845	2.5
2846	23.2
2847	15.1
2848	18.5
2849	13.7
2850	1.1
2851	18.1
2852	7.4
2853	3.8
2854	35.4
2855	15.2
2856	6.8
2857	10.4
2858	2.4
2859	14.7
2860	39.6
2861	33
2862	17.4
2863	33
2864	38.7
2865	33.9
2866	60.6
2867	39.9
2868	27.1
2869	59
2870	40
2871	76.2
2872	88
2873	60.1
2874	101.8
2875	113.8
2876	111.6
2877	120.1
2878	125.1
2879	125.1
2880	179.2
2881	161.3
2882	165.1
2883	131.4
2884	130.6
2885	138.5
2886	196.2
2887	126.9
2888	168.9
2889	176.7
2890	159.4
2891	173
2892	165.5
2893	177.3
2894	130.5
2895	140.3
2896	140.3
2897	132.2
2898	105.4
2899	149.4
2900	200.3
2901	125.2
2902	145.5
2903	131.4
2904	129.7
2905	136.9
2906	167.5
2907	141.9
2908	140
2909	121.3
2910	169.7
2911	173.7
2912	176.3
2913	125.3
2914	144.1
2915	108.2
2916	144.4
2917	150
2918	161.1
2919	106.7
2920	99.8
2921	73.8
2922	65.2
2923	85.7
2924	64.5
2925	63.9
2926	88.7
2927	91.8
2928	82.6
2929	59.3
2930	91
2931	69.8
2932	62.2
2933	61.3
2934	49.8
2935	57.9
2936	42.2
2937	22.4
2938	56.4
2939	35.6
2940	48.9
2941	57.8
2942	35.5
2943	31.7
2944	16.1
2945	17.8
2946	28
2947	35.1
2948	22.5
2949	25.7
2950	44
2951	18
2952	26.2
2953	24.2
2954	29.9
2955	31.1
2956	14
2957	14.5
2958	15.6
2959	14.5
2960	14.3
2961	11.8
2962	21.1
2963	9
2964	10
2965	11.5
2966	4.4
2967	9.2
2968	4.8
2969	5.5
2970	11.8
2971	8.2
2972	14.4
2973	1.6
2974	0.9
2975	17.9
2976	13.3
2977	5.7
2978	7.6
2979	8.7
2980	15.5
2981	18.5
2982	12.7
2983	10.4
2984	24.4
2985	51.3
2986	22.8
2987	39
2988	41.2
\.


--
-- Name: sunspot_month_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('sunspot_month_id_seq', 2988, true);


--
-- Data for Name: sunspot_year; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY sunspot_year (id, x) FROM stdin;
1	5
2	11
3	16
4	23
5	36
6	58
7	29
8	20
9	10
10	8
11	3
12	0
13	0
14	2
15	11
16	27
17	47
18	63
19	60
20	39
21	28
22	26
23	22
24	11
25	21
26	40
27	78
28	122
29	103
30	73
31	47
32	35
33	11
34	5
35	16
36	34
37	70
38	81
39	111
40	101
41	73
42	40
43	20
44	16
45	5
46	11
47	22
48	40
49	60
50	80.9
51	83.4
52	47.7
53	47.8
54	30.7
55	12.2
56	9.6
57	10.2
58	32.4
59	47.6
60	54
61	62.9
62	85.9
63	61.2
64	45.1
65	36.4
66	20.9
67	11.4
68	37.8
69	69.8
70	106.1
71	100.8
72	81.6
73	66.5
74	34.8
75	30.6
76	7
77	19.8
78	92.5
79	154.4
80	125.9
81	84.8
82	68.1
83	38.5
84	22.8
85	10.2
86	24.1
87	82.9
88	132
89	130.9
90	118.1
91	89.9
92	66.6
93	60
94	46.9
95	41
96	21.3
97	16
98	6.4
99	4.1
100	6.8
101	14.5
102	34
103	45
104	43.1
105	47.5
106	42.2
107	28.1
108	10.1
109	8.1
110	2.5
111	0
112	1.4
113	5
114	12.2
115	13.9
116	35.4
117	45.8
118	41.1
119	30.1
120	23.9
121	15.6
122	6.6
123	4
124	1.8
125	8.5
126	16.6
127	36.3
128	49.6
129	64.2
130	67
131	70.9
132	47.8
133	27.5
134	8.5
135	13.2
136	56.9
137	121.5
138	138.3
139	103.2
140	85.7
141	64.6
142	36.7
143	24.2
144	10.7
145	15
146	40.1
147	61.5
148	98.5
149	124.7
150	96.3
151	66.6
152	64.5
153	54.1
154	39
155	20.6
156	6.7
157	4.3
158	22.7
159	54.8
160	93.8
161	95.8
162	77.2
163	59.1
164	44
165	47
166	30.5
167	16.3
168	7.3
169	37.6
170	74
171	139
172	111.2
173	101.6
174	66.2
175	44.7
176	17
177	11.3
178	12.4
179	3.4
180	6
181	32.3
182	54.3
183	59.7
184	63.7
185	63.5
186	52.2
187	25.4
188	13.1
189	6.8
190	6.3
191	7.1
192	35.6
193	73
194	85.1
195	78
196	64
197	41.8
198	26.2
199	26.7
200	12.1
201	9.5
202	2.7
203	5
204	24.4
205	42
206	63.5
207	53.8
208	62
209	48.5
210	43.9
211	18.6
212	5.7
213	3.6
214	1.4
215	9.6
216	47.4
217	57.1
218	103.9
219	80.6
220	63.6
221	37.6
222	26.1
223	14.2
224	5.8
225	16.7
226	44.3
227	63.9
228	69
229	77.8
230	64.9
231	35.7
232	21.2
233	11.1
234	5.7
235	8.7
236	36.1
237	79.7
238	114.4
239	109.6
240	88.8
241	67.8
242	47.5
243	30.6
244	16.3
245	9.6
246	33.2
247	92.6
248	151.6
249	136.3
250	134.7
251	83.9
252	69.4
253	31.5
254	13.9
255	4.4
256	38
257	141.7
258	190.2
259	184.8
260	159
261	112.3
262	53.9
263	37.5
264	27.9
265	10.2
266	15.1
267	47
268	93.8
269	105.9
270	105.5
271	104.5
272	66.6
273	68.9
274	38
275	34.5
276	15.5
277	12.6
278	27.5
279	92.5
280	155.4
281	154.7
282	140.5
283	115.9
284	66.6
285	45.9
286	17.9
287	13.4
288	29.2
289	100.2
\.


--
-- Name: sunspot_year_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('sunspot_year_id_seq', 289, true);


--
-- Data for Name: sunspots; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY sunspots (id, x) FROM stdin;
1	58
2	62.6
3	70
4	55.7
5	85
6	83.5
7	94.8
8	66.3
9	75.9
10	75.5
11	158.6
12	85.2
13	73.3
14	75.9
15	89.2
16	88.3
17	90
18	100
19	85.4
20	103
21	91.2
22	65.7
23	63.3
24	75.4
25	70
26	43.5
27	45.3
28	56.4
29	60.7
30	50.7
31	66.3
32	59.8
33	23.5
34	23.2
35	28.5
36	44
37	35
38	50
39	71
40	59.3
41	59.7
42	39.6
43	78.4
44	29.3
45	27.1
46	46.6
47	37.6
48	40
49	44
50	32
51	45.7
52	38
53	36
54	31.7
55	22.2
56	39
57	28
58	25
59	20
60	6.7
61	0
62	3
63	1.7
64	13.7
65	20.7
66	26.7
67	18.8
68	12.3
69	8.2
70	24.1
71	13.2
72	4.2
73	10.2
74	11.2
75	6.8
76	6.5
77	0
78	0
79	8.6
80	3.2
81	17.8
82	23.7
83	6.8
84	20
85	12.5
86	7.1
87	5.4
88	9.4
89	12.5
90	12.9
91	3.6
92	6.4
93	11.8
94	14.3
95	17
96	9.4
97	14.1
98	21.2
99	26.2
100	30
101	38.1
102	12.8
103	25
104	51.3
105	39.7
106	32.5
107	64.7
108	33.5
109	37.6
110	52
111	49
112	72.3
113	46.4
114	45
115	44
116	38.7
117	62.5
118	37.7
119	43
120	43
121	48.3
122	44
123	46.8
124	47
125	49
126	50
127	51
128	71.3
129	77.2
130	59.7
131	46.3
132	57
133	67.3
134	59.5
135	74.7
136	58.3
137	72
138	48.3
139	66
140	75.6
141	61.3
142	50.6
143	59.7
144	61
145	70
146	91
147	80.7
148	71.7
149	107.2
150	99.3
151	94.1
152	91.1
153	100.7
154	88.7
155	89.7
156	46
157	43.8
158	72.8
159	45.7
160	60.2
161	39.9
162	77.1
163	33.8
164	67.7
165	68.5
166	69.3
167	77.8
168	77.2
169	56.5
170	31.9
171	34.2
172	32.9
173	32.7
174	35.8
175	54.2
176	26.5
177	68.1
178	46.3
179	60.9
180	61.4
181	59.7
182	59.7
183	40.2
184	34.4
185	44.3
186	30
187	30
188	30
189	28.2
190	28
191	26
192	25.7
193	24
194	26
195	25
196	22
197	20.2
198	20
199	27
200	29.7
201	16
202	14
203	14
204	13
205	12
206	11
207	36.6
208	6
209	26.8
210	3
211	3.3
212	4
213	4.3
214	5
215	5.7
216	19.2
217	27.4
218	30
219	43
220	32.9
221	29.8
222	33.3
223	21.9
224	40.8
225	42.7
226	44.1
227	54.7
228	53.3
229	53.5
230	66.1
231	46.3
232	42.7
233	77.7
234	77.4
235	52.6
236	66.8
237	74.8
238	77.8
239	90.6
240	111.8
241	73.9
242	64.2
243	64.3
244	96.7
245	73.6
246	94.4
247	118.6
248	120.3
249	148.8
250	158.2
251	148.1
252	112
253	104
254	142.5
255	80.1
256	51
257	70.1
258	83.3
259	109.8
260	126.3
261	104.4
262	103.6
263	132.2
264	102.3
265	36
266	46.2
267	46.7
268	64.9
269	152.7
270	119.5
271	67.7
272	58.5
273	101.4
274	90
275	99.7
276	95.7
277	100.9
278	90.8
279	31.1
280	92.2
281	38
282	57
283	77.3
284	56.2
285	50.5
286	78.6
287	61.3
288	64
289	54.6
290	29
291	51.2
292	32.9
293	41.1
294	28.4
295	27.7
296	12.7
297	29.3
298	26.3
299	40.9
300	43.2
301	46.8
302	65.4
303	55.7
304	43.8
305	51.3
306	28.5
307	17.5
308	6.6
309	7.9
310	14
311	17.7
312	12.2
313	4.4
314	0
315	11.6
316	11.2
317	3.9
318	12.3
319	1
320	7.9
321	3.2
322	5.6
323	15.1
324	7.9
325	21.7
326	11.6
327	6.3
328	21.8
329	11.2
330	19
331	1
332	24.2
333	16
334	30
335	35
336	40
337	45
338	36.5
339	39
340	95.5
341	80.3
342	80.7
343	95
344	112
345	116.2
346	106.5
347	146
348	157.3
349	177.3
350	109.3
351	134
352	145
353	238.9
354	171.6
355	153
356	140
357	171.7
358	156.3
359	150.3
360	105
361	114.7
362	165.7
363	118
364	145
365	140
366	113.7
367	143
368	112
369	111
370	124
371	114
747	0
372	110
373	70
374	98
375	98
376	95
377	107.2
378	88
379	86
380	86
381	93.7
382	77
383	60
384	58.7
385	98.7
386	74.7
387	53
388	68.3
389	104.7
390	97.7
391	73.5
392	66
393	51
394	27.3
395	67
396	35.2
397	54
398	37.5
399	37
400	41
401	54.3
402	38
403	37
404	44
405	34
406	23.2
407	31.5
408	30
409	28
410	38.7
411	26.7
412	28.3
413	23
414	25.2
415	32.2
416	20
417	18
418	8
419	15
420	10.5
421	13
422	8
423	11
424	10
425	6
426	9
427	6
428	10
429	10
430	8
431	17
432	14
433	6.5
434	8
435	9
436	15.7
437	20.7
438	26.3
439	36.3
440	20
441	32
442	47.2
443	40.2
444	27.3
445	37.2
446	47.6
447	47.7
448	85.4
449	92.3
450	59
451	83
452	89.7
453	111.5
454	112.3
455	116
456	112.7
457	134.7
458	106
459	87.4
460	127.2
461	134.8
462	99.2
463	128
464	137.2
465	157.3
466	157
467	141.5
468	174
469	138
470	129.2
471	143.3
472	108.5
473	113
474	154.2
475	141.5
476	136
477	141
478	142
479	94.7
480	129.5
481	114
482	125.3
483	120
484	123.3
485	123.5
486	120
487	117
488	103
489	112
490	89.7
491	134
492	135.5
493	103
494	127.5
495	96.3
496	94
497	93
498	91
499	69.3
500	87
501	77.3
502	84.3
503	82
504	74
505	72.7
506	62
507	74
508	77.2
509	73.7
510	64.2
511	71
512	43
513	66.5
514	61.7
515	67
516	66
517	58
518	64
519	63
520	75.7
521	62
522	61
523	45.8
524	60
525	59
526	59
527	57
528	56
529	56
530	55
531	55.5
532	53
533	52.3
534	51
535	50
536	29.3
537	24
538	47
539	44
540	45.7
541	45
542	44
543	38
544	28.4
545	55.7
546	41.5
547	41
548	40
549	11.1
550	28.5
551	67.4
552	51.4
553	21.4
554	39.9
555	12.6
556	18.6
557	31
558	17.1
559	12.9
560	25.7
561	13.5
562	19.5
563	25
564	18
565	22
566	23.8
567	15.7
568	31.7
569	21
570	6.7
571	26.9
572	1.5
573	18.4
574	11
575	8.4
576	5.1
577	14.4
578	4.2
579	4
580	4
581	7.3
582	11.1
583	4.3
584	6
585	5.7
586	6.9
587	5.8
588	3
589	2
590	4
591	12.4
592	1.1
593	0
594	0
595	0
596	3
597	2.4
598	1.5
599	12.5
600	9.9
601	1.6
602	12.6
603	21.7
604	8.4
605	8.2
606	10.6
607	2.1
608	0
609	0
610	4.6
611	2.7
612	8.6
613	6.9
614	9.3
615	13.9
616	0
617	5
618	23.7
619	21
620	19.5
621	11.5
622	12.3
623	10.5
624	40.1
625	27
626	29
627	30
628	31
629	32
630	31.2
631	35
632	38.7
633	33.5
634	32.6
635	39.8
636	48.2
637	47.8
638	47
639	40.8
640	42
641	44
642	46
643	48
644	50
645	51.8
646	38.5
647	34.5
648	50
649	50
650	50.8
651	29.5
652	25
653	44.3
654	36
655	48.3
656	34.1
657	45.3
658	54.3
659	51
660	48
661	45.3
662	48.3
663	48
664	50.6
665	33.4
666	34.8
667	29.8
668	43.1
669	53
670	62.3
671	61
672	60
673	61
674	44.1
675	51.4
676	37.5
677	39
678	40.5
679	37.6
680	42.7
681	44.4
682	29.4
683	41
684	38.3
685	39
686	29.6
687	32.7
688	27.7
689	26.4
690	25.6
691	30
692	26.3
693	24
694	27
695	25
696	24
697	12
698	12.2
699	9.6
700	23.8
701	10
702	12
703	12.7
704	12
705	5.7
706	8
707	2.6
708	0
709	0
710	4.5
711	0
712	12.3
713	13.5
714	13.5
715	6.7
716	8
717	11.7
718	4.7
719	10.5
720	12.3
721	7.2
722	9.2
723	0.9
724	2.5
725	2
726	7.7
727	0.3
728	0.2
729	0.4
730	0
731	0
732	0
733	0
734	0
735	0
736	0
737	0
738	0
739	0
740	0
741	0
742	0
743	0
744	0
745	0
746	0
748	0
749	0
750	0
751	6.6
752	0
753	2.4
754	6.1
755	0.8
756	1.1
757	11.3
758	1.9
759	0.7
760	0
761	1
762	1.3
763	0.5
764	15.6
765	5.2
766	3.9
767	7.9
768	10.1
769	0
770	10.3
771	1.9
772	16.6
773	5.5
774	11.2
775	18.3
776	8.4
777	15.3
778	27.8
779	16.7
780	14.3
781	22.2
782	12
783	5.7
784	23.8
785	5.8
786	14.9
787	18.5
788	2.3
789	8.1
790	19.3
791	14.5
792	20.1
793	19.2
794	32.2
795	26.2
796	31.6
797	9.8
798	55.9
799	35.5
800	47.2
801	31.5
802	33.5
803	37.2
804	65
805	26.3
806	68.8
807	73.7
808	58.8
809	44.3
810	43.6
811	38.8
812	23.2
813	47.8
814	56.4
815	38.1
816	29.9
817	36.4
818	57.9
819	96.2
820	26.4
821	21.2
822	40
823	50
824	45
825	36.7
826	25.6
827	28.9
828	28.4
829	34.9
830	22.4
831	25.4
832	34.5
833	53.1
834	36.4
835	28
836	31.5
837	26.1
838	31.7
839	10.9
840	25.8
841	32.5
842	20.7
843	3.7
844	20.2
845	19.6
846	35
847	31.4
848	26.1
849	14.9
850	27.5
851	25.1
852	30.6
853	19.2
854	26.6
855	4.5
856	19.4
857	29.3
858	10.8
859	20.6
860	25.9
861	5.2
862	9
863	7.9
864	9.7
865	21.5
866	4.3
867	5.7
868	9.2
869	1.7
870	1.8
871	2.5
872	4.8
873	4.4
874	18.8
875	4.4
876	0
877	0
878	0.9
879	16.1
880	13.5
881	1.5
882	5.6
883	7.9
884	2.1
885	0
886	0.4
887	0
888	0
889	0
890	0
891	0.6
892	0
893	0
894	0
895	0.5
896	0
897	0
898	0
899	0
900	20.4
901	21.6
902	10.8
903	0
904	19.4
905	2.8
906	0
907	0
908	1.4
909	20.5
910	25.2
911	0
912	0.8
913	5
914	15.5
915	22.4
916	3.8
917	15.4
918	15.4
919	30.9
920	25.4
921	15.7
922	15.6
923	11.7
924	22
925	17.7
926	18.2
927	36.7
928	24
929	32.4
930	37.1
931	52.5
932	39.6
933	18.9
934	50.6
935	39.5
936	68.1
937	34.6
938	47.4
939	57.8
940	46
941	56.3
942	56.7
943	42.9
944	53.7
945	49.6
946	57.2
947	48.2
948	46.1
949	52.8
950	64.4
951	65
952	61.1
953	89.1
954	98
955	54.3
956	76.4
957	50.4
958	54.7
959	57
960	46.6
961	43
962	49.4
963	72.3
964	95
965	67.5
966	73.9
967	90.8
968	78.3
969	52.8
970	57.2
971	67.6
972	56.5
973	52.2
974	72.1
975	84.6
976	107.1
977	66.3
978	65.1
979	43.9
980	50.7
981	62.1
982	84.4
983	81.2
984	82.1
985	47.5
986	50.1
987	93.4
988	54.6
989	38.1
990	33.4
991	45.2
992	54.9
993	37.9
994	46.2
995	43.5
996	28.9
997	30.9
998	55.5
999	55.1
1000	26.9
1001	41.3
1002	26.7
1003	13.9
1004	8.9
1005	8.2
1006	21.1
1007	14.3
1008	27.5
1009	11.3
1010	14.9
1011	11.8
1012	2.8
1013	12.9
1014	1
1015	7
1016	5.7
1017	11.6
1018	7.5
1019	5.9
1020	9.9
1021	4.9
1022	18.1
1023	3.9
1024	1.4
1025	8.8
1026	7.8
1027	8.7
1028	4
1029	11.5
1030	24.8
1031	30.5
1032	34.5
1033	7.5
1034	24.5
1035	19.7
1036	61.5
1037	43.6
1038	33.2
1039	59.8
1040	59
1041	100.8
1042	95.2
1043	100
1044	77.5
1045	88.6
1046	107.6
1047	98.1
1048	142.9
1049	111.4
1050	124.7
1051	116.7
1052	107.8
1053	95.1
1054	137.4
1055	120.9
1056	206.2
1057	188
1058	175.6
1059	134.6
1060	138.2
1061	111.3
1062	158
1063	162.8
1064	134
1065	96.3
1066	123.7
1067	107
1068	129.8
1069	144.9
1070	84.8
1071	140.8
1072	126.6
1073	137.6
1074	94.5
1075	108.2
1076	78.8
1077	73.6
1078	90.8
1079	77.4
1080	79.8
1081	107.6
1082	102.5
1083	77.7
1084	61.8
1085	53.8
1086	54.6
1087	84.7
1088	131.2
1089	132.7
1090	90.8
1091	68.8
1092	63.6
1093	81.2
1094	87.7
1095	55.5
1096	65.9
1097	69.2
1098	48.5
1099	60.7
1100	57.8
1101	74
1102	49.8
1103	54.3
1104	53.7
1105	24
1106	29.9
1107	29.7
1108	42.6
1109	67.4
1110	55.7
1111	30.8
1112	39.3
1113	35.1
1114	28.5
1115	19.8
1116	38.8
1117	20.4
1118	22.1
1119	21.7
1120	26.9
1121	24.9
1122	20.5
1123	12.6
1124	26.5
1125	18.5
1126	38.1
1127	40.5
1128	17.6
1129	13.3
1130	3.5
1131	8.3
1132	8.8
1133	21.1
1134	10.5
1135	9.5
1136	11.8
1137	4.2
1138	5.3
1139	19.1
1140	12.7
1141	9.4
1142	14.7
1143	13.6
1144	20.8
1145	12
1146	3.7
1147	21.2
1148	23.9
1149	6.9
1150	21.5
1151	10.7
1152	21.6
1153	25.7
1154	43.6
1155	43.3
1156	56.9
1157	47.8
1158	31.1
1159	30.6
1160	32.3
1161	29.6
1162	40.7
1163	39.4
1164	59.7
1165	38.7
1166	51
1167	63.9
1168	69.2
1169	59.9
1170	65.1
1171	46.5
1172	54.8
1173	107.1
1174	55.9
1175	60.4
1176	65.5
1177	62.6
1178	44.9
1179	85.7
1180	44.7
1181	75.4
1182	85.3
1183	52.2
1184	140.6
1185	161.2
1186	180.4
1187	138.9
1188	109.6
1189	159.1
1190	111.8
1191	108.9
1192	107.1
1193	102.2
1194	123.8
1195	139.2
1196	132.5
1197	100.3
1198	132.4
1199	114.6
1200	159.9
1201	156.7
1202	131.7
1203	96.5
1204	102.5
1205	80.6
1206	81.2
1207	78
1208	61.3
1209	93.7
1210	71.5
1211	99.7
1212	97
1213	78
1214	89.4
1215	82.6
1216	44.1
1217	61.6
1218	70
1219	39.1
1220	61.6
1221	86.2
1222	71
1223	54.8
1224	60
1225	75.5
1226	105.4
1227	64.6
1228	56.5
1229	62.6
1230	63.2
1231	36.1
1232	57.4
1233	67.9
1234	62.5
1235	50.9
1236	71.4
1237	68.4
1238	67.5
1239	61.2
1240	65.4
1241	54.9
1242	46.9
1243	42
1244	39.7
1245	37.5
1246	67.3
1247	54.3
1248	45.4
1249	41.1
1250	42.9
1251	37.7
1252	47.6
1253	34.7
1254	40
1255	45.9
1256	50.4
1257	33.5
1258	42.3
1259	28.8
1260	23.4
1261	15.4
1262	20
1263	20.7
1264	26.4
1265	24
1266	21.1
1267	18.7
1268	15.8
1269	22.4
1270	12.7
1271	28.2
1272	21.4
1273	12.3
1274	11.4
1275	17.4
1276	4.4
1277	9.1
1278	5.3
1279	0.4
1280	3.1
1281	0
1282	9.7
1283	4.3
1284	3.1
1285	0.5
1286	4.9
1287	0.4
1288	6.5
1289	0
1290	5
1291	4.6
1292	5.9
1293	4.4
1294	4.5
1295	7.7
1296	7.2
1297	13.7
1298	7.4
1299	5.2
1300	11.1
1301	29.2
1302	16
1303	22.2
1304	16.9
1305	42.4
1306	40.6
1307	31.4
1308	37.2
1309	39
1310	34.9
1311	57.5
1312	38.3
1313	41.4
1314	44.5
1315	56.7
1316	55.3
1317	80.1
1318	91.2
1319	51.9
1320	66.9
1321	83.7
1322	87.6
1323	90.3
1324	85.7
1325	91
1326	87.1
1327	95.2
1328	106.8
1329	105.8
1330	114.6
1331	97.2
1332	81
1333	81.5
1334	88
1335	98.9
1336	71.4
1337	107.1
1338	108.6
1339	116.7
1340	100.3
1341	92.2
1342	90.1
1343	97.9
1344	95.6
1345	62.3
1346	77.8
1347	101
1348	98.5
1349	56.8
1350	87.8
1351	78
1352	82.5
1353	79.9
1354	67.2
1355	53.7
1356	80.5
1357	63.1
1358	64.5
1359	43.6
1360	53.7
1361	64.4
1362	84
1363	73.4
1364	62.5
1365	66.6
1366	42
1367	50.6
1368	40.9
1369	48.3
1370	56.7
1371	66.4
1372	40.6
1373	53.8
1374	40.8
1375	32.7
1376	48.1
1377	22
1378	39.9
1379	37.7
1380	41.2
1381	57.7
1382	47.1
1383	66.3
1384	35.8
1385	40.6
1386	57.8
1387	54.7
1388	54.8
1389	28.5
1390	33.9
1391	57.6
1392	28.6
1393	48.7
1394	39.3
1395	39.5
1396	29.4
1397	34.5
1398	33.6
1399	26.8
1400	37.8
1401	21.6
1402	17.1
1403	24.6
1404	12.8
1405	31.6
1406	38.4
1407	24.6
1408	17.6
1409	12.9
1410	16.5
1411	9.3
1412	12.7
1413	7.3
1414	14.1
1415	9
1416	1.5
1417	0
1418	0.7
1419	9.2
1420	5.1
1421	2.9
1422	1.5
1423	5
1424	4.9
1425	9.8
1426	13.5
1427	9.3
1428	25.2
1429	15.6
1430	15.8
1431	26.5
1432	36.6
1433	26.7
1434	31.1
1435	28.6
1436	34.4
1437	43.8
1438	61.7
1439	59.1
1440	67.6
1441	60.9
1442	59.3
1443	52.7
1444	41
1445	104
1446	108.4
1447	59.2
1448	79.6
1449	80.6
1450	59.4
1451	77.4
1452	104.3
1453	77.3
1454	114.9
1455	159.4
1456	160
1457	176
1458	135.6
1459	132.4
1460	153.8
1461	136
1462	146.4
1463	147.5
1464	130
1465	88.3
1466	125.3
1467	143.2
1468	162.4
1469	145.5
1470	91.7
1471	103
1472	110
1473	80.3
1474	89
1475	105.4
1476	90.3
1477	79.5
1478	120.1
1479	88.4
1480	102.1
1481	107.6
1482	109.9
1483	105.5
1484	92.9
1485	114.6
1486	103.5
1487	112
1488	83.9
1489	86.7
1490	107
1491	98.3
1492	76.2
1493	47.9
1494	44.8
1495	66.9
1496	68.2
1497	47.5
1498	47.4
1499	55.4
1500	49.2
1501	60.8
1502	64.2
1503	46.4
1504	32
1505	44.6
1506	38.2
1507	67.8
1508	61.3
1509	28
1510	34.3
1511	28.9
1512	29.3
1513	14.6
1514	22.2
1515	33.8
1516	29.1
1517	11.5
1518	23.9
1519	12.5
1520	14.6
1521	2.4
1522	12.7
1523	17.7
1524	9.9
1525	14.3
1526	15
1527	31.2
1528	2.3
1529	5.1
1530	1.6
1531	15.2
1532	8.8
1533	9.9
1534	14.3
1535	9.9
1536	8.2
1537	24.4
1538	8.7
1539	11.7
1540	15.8
1541	21.2
1542	13.4
1543	5.9
1544	6.3
1545	16.4
1546	6.7
1547	14.5
1548	2.3
1549	3.3
1550	6
1551	7.8
1552	0.1
1553	5.8
1554	6.4
1555	0.1
1556	0
1557	5.3
1558	1.1
1559	4.1
1560	0.5
1561	0.8
1562	0.6
1563	0
1564	6.2
1565	2.4
1566	4.8
1567	7.5
1568	10.7
1569	6.1
1570	12.3
1571	12.9
1572	7.2
1573	24
1574	27.5
1575	19.5
1576	19.3
1577	23.5
1578	34.1
1579	21.9
1580	48.1
1581	66
1582	43
1583	30.7
1584	29.6
1585	36.4
1586	53.2
1587	51.5
1588	51.7
1589	43.5
1590	60.5
1591	76.9
1592	58
1593	53.2
1594	64
1595	54.8
1596	47.3
1597	45
1598	69.3
1599	67.5
1600	95.8
1601	64.1
1602	45.2
1603	45.4
1604	40.4
1605	57.7
1606	59.2
1607	84.4
1608	41.8
1609	60.6
1610	46.9
1611	42.8
1612	82.1
1613	32.1
1614	76.5
1615	80.6
1616	46
1617	52.6
1618	83.8
1619	84.5
1620	75.9
1621	91.5
1622	86.9
1623	86.8
1624	76.1
1625	66.5
1626	51.2
1627	53.1
1628	55.8
1629	61.9
1630	47.8
1631	36.6
1632	47.2
1633	42.8
1634	71.8
1635	49.8
1636	55
1637	73
1638	83.7
1639	66.5
1640	50
1641	39.6
1642	38.7
1643	33.3
1644	21.7
1645	29.9
1646	25.9
1647	57.3
1648	43.7
1649	30.7
1650	27.1
1651	30.3
1652	16.9
1653	21.4
1654	8.6
1655	0.3
1656	12.4
1657	10.3
1658	13.2
1659	4.2
1660	6.9
1661	20
1662	15.7
1663	23.3
1664	21.4
1665	7.4
1666	6.6
1667	6.9
1668	20.7
1669	12.7
1670	7.1
1671	7.8
1672	5.1
1673	7
1674	7.1
1675	3.1
1676	2.8
1677	8.8
1678	2.1
1679	10.7
1680	6.7
1681	0.8
1682	8.5
1683	7
1684	4.3
1685	2.4
1686	6.4
1687	9.7
1688	20.6
1689	6.5
1690	2.1
1691	0.2
1692	6.7
1693	5.3
1694	0.6
1695	5.1
1696	1.6
1697	4.8
1698	1.3
1699	11.6
1700	8.5
1701	17.2
1702	11.2
1703	9.6
1704	7.8
1705	13.5
1706	22.2
1707	10.4
1708	20.5
1709	41.1
1710	48.3
1711	58.8
1712	33.2
1713	53.8
1714	51.5
1715	41.9
1716	32.3
1717	69.1
1718	75.6
1719	49.9
1720	69.6
1721	79.6
1722	76.3
1723	76.8
1724	101.4
1725	62.8
1726	70.5
1727	65.4
1728	78.6
1729	75
1730	73
1731	65.7
1732	88.1
1733	84.7
1734	88.2
1735	88.8
1736	129.2
1737	77.9
1738	79.7
1739	75.1
1740	93.8
1741	83.2
1742	84.6
1743	52.3
1744	81.6
1745	101.2
1746	98.9
1747	106
1748	70.3
1749	65.9
1750	75.5
1751	56.6
1752	60
1753	63.3
1754	67.2
1755	61
1756	76.9
1757	67.5
1758	71.5
1759	47.8
1760	68.9
1761	57.7
1762	67.9
1763	47.2
1764	70.7
1765	29
1766	57.4
1767	52
1768	43.8
1769	27.7
1770	49
1771	45
1772	27.2
1773	61.3
1774	28.4
1775	38
1776	42.6
1777	40.6
1778	29.4
1779	29.1
1780	31
1781	20
1782	11.3
1783	27.6
1784	21.8
1785	48.1
1786	14.3
1787	8.4
1788	33.3
1789	30.2
1790	36.4
1791	38.3
1792	14.5
1793	25.8
1794	22.3
1795	9
1796	31.4
1797	34.8
1798	34.4
1799	30.9
1800	12.6
1801	19.5
1802	9.2
1803	18.1
1804	14.2
1805	7.7
1806	20.5
1807	13.5
1808	2.9
1809	8.4
1810	13
1811	7.8
1812	10.5
1813	9.4
1814	13.6
1815	8.6
1816	16
1817	15.2
1818	12.1
1819	8.3
1820	4.3
1821	8.3
1822	12.9
1823	4.5
1824	0.3
1825	0.2
1826	2.4
1827	4.5
1828	0
1829	10.2
1830	5.8
1831	0.7
1832	1
1833	0.6
1834	3.7
1835	3.8
1836	0
1837	5.2
1838	0
1839	12.4
1840	0
1841	2.8
1842	1.4
1843	0.9
1844	2.3
1845	7.6
1846	16.3
1847	10.3
1848	1.1
1849	8.3
1850	17
1851	13.5
1852	26.1
1853	14.6
1854	16.3
1855	27.9
1856	28.8
1857	11.1
1858	38.9
1859	44.5
1860	45.6
1861	31.6
1862	24.5
1863	37.2
1864	43
1865	39.5
1866	41.9
1867	50.6
1868	58.2
1869	30.1
1870	54.2
1871	38
1872	54.6
1873	54.8
1874	85.8
1875	56.5
1876	39.3
1877	48
1878	49
1879	73
1880	58.8
1881	55
1882	78.7
1883	107.2
1884	55.5
1885	45.5
1886	31.3
1887	64.5
1888	55.3
1889	57.7
1890	63.2
1891	103.6
1892	47.7
1893	56.1
1894	17.8
1895	38.9
1896	64.7
1897	76.4
1898	108.2
1899	60.7
1900	52.6
1901	42.9
1902	40.4
1903	49.7
1904	54.3
1905	85
1906	65.4
1907	61.5
1908	47.3
1909	39.2
1910	33.9
1911	28.7
1912	57.6
1913	40.8
1914	48.1
1915	39.5
1916	90.5
1917	86.9
1918	32.3
1919	45.5
1920	39.5
1921	56.7
1922	46.6
1923	66.3
1924	32.3
1925	36
1926	22.6
1927	35.8
1928	23.1
1929	38.8
1930	58.4
1931	55.8
1932	54.2
1933	26.4
1934	31.5
1935	21.4
1936	8.4
1937	22.2
1938	12.3
1939	14.1
1940	11.5
1941	26.2
1942	38.3
1943	4.9
1944	5.8
1945	3.4
1946	9
1947	7.8
1948	16.5
1949	9
1950	2.2
1951	3.5
1952	4
1953	4
1954	2.6
1955	4.2
1956	2.2
1957	0.3
1958	0
1959	4.9
1960	4.5
1961	4.4
1962	4.1
1963	3
1964	0.3
1965	9.5
1966	4.6
1967	1.1
1968	6.4
1969	2.3
1970	2.9
1971	0.5
1972	0.9
1973	0
1974	0
1975	1.7
1976	0.2
1977	1.2
1978	3.1
1979	0.7
1980	3.8
1981	2.8
1982	2.6
1983	3.1
1984	17.3
1985	5.2
1986	11.4
1987	5.4
1988	7.7
1989	12.7
1990	8.2
1991	16.4
1992	22.3
1993	23
1994	42.3
1995	38.8
1996	41.3
1997	33
1998	68.8
1999	71.6
2000	69.6
2001	49.5
2002	53.5
2003	42.5
2004	34.5
2005	45.3
2006	55.4
2007	67
2008	71.8
2009	74.5
2010	67.7
2011	53.5
2012	35.2
2013	45.1
2014	50.7
2015	65.6
2016	53
2017	74.7
2018	71.9
2019	94.8
2020	74.7
2021	114.1
2022	114.9
2023	119.8
2024	154.5
2025	129.4
2026	72.2
2027	96.4
2028	129.3
2029	96
2030	65.3
2031	72.2
2032	80.5
2033	76.7
2034	59.4
2035	107.6
2036	101.7
2037	79.9
2038	85
2039	83.4
2040	59.2
2041	48.1
2042	79.5
2043	66.5
2044	51.8
2045	88.1
2046	111.2
2047	64.7
2048	69
2049	54.7
2050	52.8
2051	42
2052	34.9
2053	51.1
2054	53.9
2055	70.2
2056	14.8
2057	33.3
2058	38.7
2059	27.5
2060	19.2
2061	36.3
2062	49.6
2063	27.2
2064	29.9
2065	31.5
2066	28.3
2067	26.7
2068	32.4
2069	22.2
2070	33.7
2071	41.9
2072	22.8
2073	17.8
2074	18.2
2075	17.8
2076	20.3
2077	11.8
2078	26.4
2079	54.7
2080	11
2081	8
2082	5.8
2083	10.9
2084	6.5
2085	4.7
2086	6.2
2087	7.4
2088	17.5
2089	4.5
2090	1.5
2091	3.3
2092	6.1
2093	3.2
2094	9.1
2095	3.5
2096	0.5
2097	13.2
2098	11.6
2099	10
2100	2.8
2101	0.5
2102	5.1
2103	1.8
2104	11.3
2105	20.8
2106	24
2107	28.1
2108	19.3
2109	25.1
2110	25.6
2111	22.5
2112	16.5
2113	5.5
2114	23.2
2115	18
2116	31.7
2117	42.8
2118	47.5
2119	38.5
2120	37.9
2121	60.2
2122	69.2
2123	58.6
2124	98.6
2125	71.8
2126	70
2127	62.5
2128	38.5
2129	64.3
2130	73.5
2131	52.3
2132	61.6
2133	60.8
2134	71.5
2135	60.5
2136	79.4
2137	81.6
2138	93
2139	69.6
2140	93.5
2141	79.1
2142	59.1
2143	54.9
2144	53.8
2145	68.4
2146	63.1
2147	67.2
2148	45.2
2149	83.5
2150	73.5
2151	85.4
2152	80.6
2153	76.9
2154	91.4
2155	98
2156	83.8
2157	89.7
2158	61.4
2159	50.3
2160	59
2161	68.9
2162	64.1
2163	50.2
2164	52.8
2165	58.2
2166	71.9
2167	70.2
2168	65.8
2169	34.4
2170	54
2171	81.1
2172	108
2173	65.3
2174	49.2
2175	35
2176	38.2
2177	36.8
2178	28.8
2179	21.9
2180	24.9
2181	32.1
2182	34.4
2183	35.6
2184	25.8
2185	14.6
2186	43.1
2187	30
2188	31.2
2189	24.6
2190	15.3
2191	17.4
2192	13
2193	19
2194	10
2195	18.7
2196	17.8
2197	12.1
2198	10.6
2199	11.2
2200	11.2
2201	17.9
2202	22.2
2203	9.6
2204	6.8
2205	4
2206	8.9
2207	8.2
2208	11
2209	12.3
2210	22.2
2211	10.1
2212	2.9
2213	3.2
2214	5.2
2215	2.8
2216	0.2
2217	5.1
2218	3
2219	0.6
2220	0.3
2221	3.4
2222	7.8
2223	4.3
2224	11.3
2225	19.7
2226	6.7
2227	9.3
2228	8.3
2229	4
2230	5.7
2231	8.7
2232	15.4
2233	18.9
2234	20.5
2235	23.1
2236	12.2
2237	27.3
2238	45.7
2239	33.9
2240	30.1
2241	42.1
2242	53.2
2243	64.2
2244	61.5
2245	62.8
2246	74.3
2247	77.1
2248	74.9
2249	54.6
2250	70
2251	52.3
2252	87
2253	76
2254	89
2255	115.4
2256	123.4
2257	132.5
2258	128.5
2259	83.9
2260	109.3
2261	116.7
2262	130.3
2263	145.1
2264	137.7
2265	100.7
2266	124.9
2267	74.4
2268	88.8
2269	98.4
2270	119.2
2271	86.5
2272	101
2273	127.4
2274	97.5
2275	165.3
2276	115.7
2277	89.6
2278	99.1
2279	122.2
2280	92.7
2281	80.3
2282	77.4
2283	64.6
2284	109.1
2285	118.3
2286	101
2287	97.6
2288	105.8
2289	112.6
2290	88.1
2291	68.1
2292	42.1
2293	50.5
2294	59.4
2295	83.3
2296	60.7
2297	54.4
2298	83.9
2299	67.5
2300	105.5
2301	66.5
2302	55
2303	58.4
2304	68.3
2305	45.6
2306	44.5
2307	46.4
2308	32.8
2309	29.5
2310	59.8
2311	66.9
2312	60
2313	65.9
2314	46.3
2315	38.3
2316	33.7
2317	35.6
2318	52.8
2319	54.2
2320	60.7
2321	25
2322	11.4
2323	17.7
2324	20.2
2325	17.2
2326	19.2
2327	30.7
2328	22.5
2329	12.4
2330	28.9
2331	27.4
2332	26.1
2333	14.1
2334	7.6
2335	13.2
2336	19.4
2337	10
2338	7.8
2339	10.2
2340	18.8
2341	3.7
2342	0.5
2343	11
2344	0.3
2345	2.5
2346	5
2347	5
2348	16.7
2349	14.3
2350	16.9
2351	10.8
2352	28.4
2353	18.5
2354	12.7
2355	21.5
2356	32
2357	30.6
2358	36.2
2359	42.6
2360	25.9
2361	34.9
2362	68.8
2363	46
2364	27.4
2365	47.6
2366	86.2
2367	76.6
2368	75.7
2369	84.9
2370	73.5
2371	116.2
2372	107.2
2373	94.4
2374	102.3
2375	123.8
2376	121.7
2377	115.7
2378	113.4
2379	129.8
2380	149.8
2381	201.3
2382	163.9
2383	157.9
2384	188.8
2385	169.4
2386	163.6
2387	128
2388	116.5
2389	108.5
2390	86.1
2391	94.8
2392	189.7
2393	174
2394	167.8
2395	142.2
2396	157.9
2397	143.3
2398	136.3
2399	95.8
2400	138
2401	119.1
2402	182.3
2403	157.5
2404	147
2405	106.2
2406	121.7
2407	125.8
2408	123.8
2409	145.3
2410	131.6
2411	143.5
2412	117.6
2413	101.6
2414	94.8
2415	109.7
2416	113.4
2417	106.2
2418	83.6
2419	91
2420	85.2
2421	51.3
2422	61.4
2423	54.8
2424	54.1
2425	59.9
2426	59.9
2427	59.9
2428	92.9
2429	108.5
2430	100.6
2431	61.5
2432	61
2433	83.1
2434	51.6
2435	52.4
2436	45.8
2437	40.7
2438	22.7
2439	22
2440	29.1
2441	23.4
2442	36.4
2443	39.3
2444	54.9
2445	28.2
2446	23.8
2447	22.1
2448	34.3
2449	26.5
2450	3.9
2451	10
2452	27.8
2453	12.5
2454	21.8
2455	8.6
2456	23.5
2457	19.3
2458	8.2
2459	1.6
2460	2.5
2461	0.2
2462	0.5
2463	10.9
2464	1.8
2465	0.8
2466	0.2
2467	4.8
2468	8.4
2469	1.5
2470	7
2471	9.2
2472	7.6
2473	23.1
2474	20.8
2475	4.9
2476	11.3
2477	28.9
2478	31.7
2479	26.7
2480	40.7
2481	42.7
2482	58.5
2483	89.2
2484	76.9
2485	73.6
2486	124
2487	118.4
2488	110.7
2489	136.6
2490	116.6
2491	129.1
2492	169.6
2493	173.2
2494	155.3
2495	201.3
2496	192.1
2497	165
2498	130.2
2499	157.4
2500	175.2
2501	164.6
2502	200.7
2503	187.2
2504	158
2505	235.8
2506	253.8
2507	210.9
2508	239.4
2509	202.5
2510	164.9
2511	190.7
2512	196
2513	175.3
2514	171.5
2515	191.4
2516	200.2
2517	201.2
2518	181.5
2519	152.3
2520	187.6
2521	217.4
2522	143.1
2523	185.7
2524	163.3
2525	172
2526	168.7
2527	149.6
2528	199.6
2529	145.2
2530	111.4
2531	124
2532	125
2533	146.3
2534	106
2535	102.2
2536	122
2537	119.6
2538	110.2
2539	121.7
2540	134.1
2541	127.2
2542	82.8
2543	89.6
2544	85.6
2545	57.9
2546	46.1
2547	53
2548	61.4
2549	51
2550	77.4
2551	70.2
2552	55.9
2553	63.6
2554	37.7
2555	32.6
2556	40
2557	38.7
2558	50.3
2559	45.6
2560	46.4
2561	43.7
2562	42
2563	21.8
2564	21.8
2565	51.3
2566	39.5
2567	26.9
2568	23.2
2569	19.8
2570	24.4
2571	17.1
2572	29.3
2573	43
2574	35.9
2575	19.6
2576	33.2
2577	38.8
2578	35.3
2579	23.4
2580	14.9
2581	15.3
2582	17.7
2583	16.5
2584	8.6
2585	9.5
2586	9.1
2587	3.1
2588	9.3
2589	4.7
2590	6.1
2591	7.4
2592	15.1
2593	17.5
2594	14.2
2595	11.7
2596	6.8
2597	24.1
2598	15.9
2599	11.9
2600	8.9
2601	16.8
2602	20.1
2603	15.8
2604	17
2605	28.2
2606	24.4
2607	25.3
2608	48.7
2609	45.3
2610	47.7
2611	56.7
2612	51.2
2613	50.2
2614	57.2
2615	57.2
2616	70.4
2617	110.9
2618	93.6
2619	111.8
2620	69.5
2621	86.5
2622	67.3
2623	91.5
2624	107.2
2625	76.8
2626	88.2
2627	94.3
2628	126.4
2629	121.8
2630	111.9
2631	92.2
2632	81.2
2633	127.2
2634	110.3
2635	96.1
2636	109.3
2637	117.2
2638	107.7
2639	86
2640	109.8
2641	104.4
2642	120.5
2643	135.8
2644	106.8
2645	120
2646	106
2647	96.8
2648	98
2649	91.3
2650	95.7
2651	93.5
2652	97.9
2653	111.5
2654	127.8
2655	102.9
2656	109.5
2657	127.5
2658	106.8
2659	112.5
2660	93
2661	99.5
2662	86.6
2663	95.2
2664	83.5
2665	91.3
2666	79
2667	60.7
2668	71.8
2669	57.5
2670	49.8
2671	81
2672	61.4
2673	50.2
2674	51.7
2675	63.2
2676	82.2
2677	61.5
2678	88.4
2679	80.1
2680	63.2
2681	80.5
2682	88
2683	76.5
2684	76.8
2685	64
2686	61.3
2687	41.6
2688	45.3
2689	43.4
2690	42.9
2691	46
2692	57.7
2693	42.4
2694	39.5
2695	23.1
2696	25.6
2697	59.3
2698	30.7
2699	23.9
2700	23.3
2701	27.6
2702	26
2703	21.3
2704	40.3
2705	39.5
2706	36
2707	55.8
2708	33.6
2709	40.2
2710	47.1
2711	25
2712	20.5
2713	18.9
2714	11.5
2715	11.5
2716	5.1
2717	9
2718	11.4
2719	28.2
2720	39.7
2721	13.9
2722	9.1
2723	19.4
2724	7.8
2725	8.1
2726	4.3
2727	21.9
2728	18.8
2729	12.4
2730	12.2
2731	1.9
2732	16.4
2733	13.5
2734	20.6
2735	5.2
2736	15.3
2737	16.4
2738	23.1
2739	8.7
2740	12.9
2741	18.6
2742	38.5
2743	21.4
2744	30.1
2745	44
2746	43.8
2747	29.1
2748	43.2
2749	51.9
2750	93.6
2751	76.5
2752	99.7
2753	82.7
2754	95.1
2755	70.4
2756	58.1
2757	138.2
2758	125.1
2759	97.9
2760	122.7
2761	166.6
2762	137.5
2763	138
2764	101.5
2765	134.4
2766	149.5
2767	159.4
2768	142.2
2769	188.4
2770	186.2
2771	183.3
2772	176.3
2773	159.6
2774	155
2775	126.2
2776	164.1
2777	179.9
2778	157.3
2779	136.3
2780	135.4
2781	155
2782	164.7
2783	147.9
2784	174.4
2785	114
2786	141.3
2787	135.5
2788	156.4
2789	127.5
2790	90
2791	143.8
2792	158.7
2793	167.3
2794	162.4
2795	137.5
2796	150.1
2797	111.2
2798	163.6
2799	153.8
2800	122
2801	82.2
2802	110.4
2803	106.1
2804	107.6
2805	118.8
2806	94.7
2807	98.1
2808	127
2809	84.3
2810	51
2811	66.5
2812	80.7
2813	99.2
2814	91.1
2815	82.2
2816	71.8
2817	50.3
2818	55.8
2819	33.3
2820	33.4
\.


--
-- Name: sunspots_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('sunspots_id_seq', 2820, true);


--
-- Data for Name: swiss; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY swiss (id, fertility, agriculture, examination, education, catholic, infant_mortality) FROM stdin;
1	80.2	17	15	12	9.96	22.2
2	83.1	45.1	6	9	84.84	22.2
3	92.5	39.7	5	5	93.4	20.2
4	85.8	36.5	12	7	33.77	20.3
5	76.9	43.5	17	15	5.16	20.6
6	76.1	35.3	9	7	90.57	26.6
7	83.8	70.2	16	7	92.85	23.6
8	92.4	67.8	14	8	97.16	24.9
9	82.4	53.3	12	7	97.67	21
10	82.9	45.2	16	13	91.38	24.4
11	87.1	64.5	14	6	98.61	24.5
12	64.1	62	21	12	8.52	16.5
13	66.9	67.5	14	7	2.27	19.1
14	68.9	60.7	19	12	4.43	22.7
15	61.7	69.3	22	5	2.82	18.7
16	68.3	72.6	18	2	24.2	21.2
17	71.7	34	17	8	3.3	20
18	55.7	19.4	26	28	12.11	20.2
19	54.3	15.2	31	20	2.15	10.8
20	65.1	73	19	9	2.84	20
21	65.5	59.8	22	10	5.23	18
22	65	55.1	14	3	4.52	22.4
23	56.6	50.9	22	12	15.14	16.7
24	57.4	54.1	20	6	4.2	15.3
25	72.5	71.2	12	1	2.4	21
26	74.2	58.1	14	8	5.23	23.8
27	72	63.5	6	3	2.56	18
28	60.5	60.8	16	10	7.72	16.3
29	58.3	26.8	25	19	18.46	20.9
30	65.4	49.5	15	8	6.1	22.5
31	75.5	85.9	3	2	99.71	15.1
32	69.3	84.9	7	6	99.68	19.8
33	77.3	89.7	5	2	100	18.3
34	70.5	78.2	12	6	98.96	19.4
35	79.4	64.9	7	3	98.22	20.2
36	65	75.9	9	9	99.06	17.8
37	92.2	84.6	3	3	99.46	16.3
38	79.3	63.1	13	13	96.83	18.1
39	70.4	38.4	26	12	5.62	20.3
40	65.7	7.7	29	11	13.79	20.5
41	72.7	16.7	22	13	11.22	18.9
42	64.4	17.6	35	32	16.92	23
43	77.6	37.6	15	7	4.97	20
44	67.6	18.7	25	7	8.65	19.5
45	35	1.2	37	53	42.34	18
46	44.7	46.6	16	29	50.43	18.2
47	42.8	27.7	22	29	58.33	19.3
\.


--
-- Name: swiss_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('swiss_id_seq', 47, true);


--
-- Data for Name: theoph; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY theoph (id, subject, wt, dose, "time", conc) FROM stdin;
1	1	79.6	4.02	0.00	0.74
2	1	79.6	4.02	0.25	2.84
3	1	79.6	4.02	0.57	6.57
4	1	79.6	4.02	1.12	10.50
5	1	79.6	4.02	2.02	9.66
6	1	79.6	4.02	3.82	8.58
7	1	79.6	4.02	5.10	8.36
8	1	79.6	4.02	7.03	7.47
9	1	79.6	4.02	9.05	6.89
10	1	79.6	4.02	12.12	5.94
11	1	79.6	4.02	24.37	3.28
12	2	72.4	4.40	0.00	0.00
13	2	72.4	4.40	0.27	1.72
14	2	72.4	4.40	0.52	7.91
15	2	72.4	4.40	1.00	8.31
16	2	72.4	4.40	1.92	8.33
17	2	72.4	4.40	3.50	6.85
18	2	72.4	4.40	5.02	6.08
19	2	72.4	4.40	7.03	5.40
20	2	72.4	4.40	9.00	4.55
21	2	72.4	4.40	12.00	3.01
22	2	72.4	4.40	24.30	0.90
23	3	70.5	4.53	0.00	0.00
24	3	70.5	4.53	0.27	4.40
25	3	70.5	4.53	0.58	6.90
26	3	70.5	4.53	1.02	8.20
27	3	70.5	4.53	2.02	7.80
28	3	70.5	4.53	3.62	7.50
29	3	70.5	4.53	5.08	6.20
30	3	70.5	4.53	7.07	5.30
31	3	70.5	4.53	9.00	4.90
32	3	70.5	4.53	12.15	3.70
33	3	70.5	4.53	24.17	1.05
34	4	72.7	4.40	0.00	0.00
35	4	72.7	4.40	0.35	1.89
36	4	72.7	4.40	0.60	4.60
37	4	72.7	4.40	1.07	8.60
38	4	72.7	4.40	2.13	8.38
39	4	72.7	4.40	3.50	7.54
40	4	72.7	4.40	5.02	6.88
41	4	72.7	4.40	7.02	5.78
42	4	72.7	4.40	9.02	5.33
43	4	72.7	4.40	11.98	4.19
44	4	72.7	4.40	24.65	1.15
45	5	54.6	5.86	0.00	0.00
46	5	54.6	5.86	0.30	2.02
47	5	54.6	5.86	0.52	5.63
48	5	54.6	5.86	1.00	11.40
49	5	54.6	5.86	2.02	9.33
50	5	54.6	5.86	3.50	8.74
51	5	54.6	5.86	5.02	7.56
52	5	54.6	5.86	7.02	7.09
53	5	54.6	5.86	9.10	5.90
54	5	54.6	5.86	12.00	4.37
55	5	54.6	5.86	24.35	1.57
56	6	80.0	4.00	0.00	0.00
57	6	80.0	4.00	0.27	1.29
58	6	80.0	4.00	0.58	3.08
59	6	80.0	4.00	1.15	6.44
60	6	80.0	4.00	2.03	6.32
61	6	80.0	4.00	3.57	5.53
62	6	80.0	4.00	5.00	4.94
63	6	80.0	4.00	7.00	4.02
64	6	80.0	4.00	9.22	3.46
65	6	80.0	4.00	12.10	2.78
66	6	80.0	4.00	23.85	0.92
67	7	64.6	4.95	0.00	0.15
68	7	64.6	4.95	0.25	0.85
69	7	64.6	4.95	0.50	2.35
70	7	64.6	4.95	1.02	5.02
71	7	64.6	4.95	2.02	6.58
72	7	64.6	4.95	3.48	7.09
73	7	64.6	4.95	5.00	6.66
74	7	64.6	4.95	6.98	5.25
75	7	64.6	4.95	9.00	4.39
76	7	64.6	4.95	12.05	3.53
77	7	64.6	4.95	24.22	1.15
78	8	70.5	4.53	0.00	0.00
79	8	70.5	4.53	0.25	3.05
80	8	70.5	4.53	0.52	3.05
81	8	70.5	4.53	0.98	7.31
82	8	70.5	4.53	2.02	7.56
83	8	70.5	4.53	3.53	6.59
84	8	70.5	4.53	5.05	5.88
85	8	70.5	4.53	7.15	4.73
86	8	70.5	4.53	9.07	4.57
87	8	70.5	4.53	12.10	3.00
88	8	70.5	4.53	24.12	1.25
89	9	86.4	3.10	0.00	0.00
90	9	86.4	3.10	0.30	7.37
91	9	86.4	3.10	0.63	9.03
92	9	86.4	3.10	1.05	7.14
93	9	86.4	3.10	2.02	6.33
94	9	86.4	3.10	3.53	5.66
95	9	86.4	3.10	5.02	5.67
96	9	86.4	3.10	7.17	4.24
97	9	86.4	3.10	8.80	4.11
98	9	86.4	3.10	11.60	3.16
99	9	86.4	3.10	24.43	1.12
100	10	58.2	5.50	0.00	0.24
101	10	58.2	5.50	0.37	2.89
102	10	58.2	5.50	0.77	5.22
103	10	58.2	5.50	1.02	6.41
104	10	58.2	5.50	2.05	7.83
105	10	58.2	5.50	3.55	10.21
106	10	58.2	5.50	5.05	9.18
107	10	58.2	5.50	7.08	8.02
108	10	58.2	5.50	9.38	7.14
109	10	58.2	5.50	12.10	5.68
110	10	58.2	5.50	23.70	2.42
111	11	65.0	4.92	0.00	0.00
112	11	65.0	4.92	0.25	4.86
113	11	65.0	4.92	0.50	7.24
114	11	65.0	4.92	0.98	8.00
115	11	65.0	4.92	1.98	6.81
116	11	65.0	4.92	3.60	5.87
117	11	65.0	4.92	5.02	5.22
118	11	65.0	4.92	7.03	4.45
119	11	65.0	4.92	9.03	3.62
120	11	65.0	4.92	12.12	2.69
121	11	65.0	4.92	24.08	0.86
122	12	60.5	5.30	0.00	0.00
123	12	60.5	5.30	0.25	1.25
124	12	60.5	5.30	0.50	3.96
125	12	60.5	5.30	1.00	7.82
126	12	60.5	5.30	2.00	9.72
127	12	60.5	5.30	3.52	9.75
128	12	60.5	5.30	5.07	8.57
129	12	60.5	5.30	7.07	6.59
130	12	60.5	5.30	9.03	6.11
131	12	60.5	5.30	12.05	4.57
132	12	60.5	5.30	24.15	1.17
\.


--
-- Name: theoph_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('theoph_id_seq', 132, true);


--
-- Data for Name: titanic; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY titanic (id, class, sex, age, survived, freq) FROM stdin;
1	1st	Male	Child	No	0
2	2nd	Male	Child	No	0
3	3rd	Male	Child	No	35
4	Crew	Male	Child	No	0
5	1st	Female	Child	No	0
6	2nd	Female	Child	No	0
7	3rd	Female	Child	No	17
8	Crew	Female	Child	No	0
9	1st	Male	Adult	No	118
10	2nd	Male	Adult	No	154
11	3rd	Male	Adult	No	387
12	Crew	Male	Adult	No	670
13	1st	Female	Adult	No	4
14	2nd	Female	Adult	No	13
15	3rd	Female	Adult	No	89
16	Crew	Female	Adult	No	3
17	1st	Male	Child	Yes	5
18	2nd	Male	Child	Yes	11
19	3rd	Male	Child	Yes	13
20	Crew	Male	Child	Yes	0
21	1st	Female	Child	Yes	1
22	2nd	Female	Child	Yes	13
23	3rd	Female	Child	Yes	14
24	Crew	Female	Child	Yes	0
25	1st	Male	Adult	Yes	57
26	2nd	Male	Adult	Yes	14
27	3rd	Male	Adult	Yes	75
28	Crew	Male	Adult	Yes	192
29	1st	Female	Adult	Yes	140
30	2nd	Female	Adult	Yes	80
31	3rd	Female	Adult	Yes	76
32	Crew	Female	Adult	Yes	20
\.


--
-- Name: titanic_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('titanic_id_seq', 32, true);


--
-- Data for Name: toothgrowth; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY toothgrowth (id, len, supp, dose) FROM stdin;
1	4.2	VC	0.5
2	11.5	VC	0.5
3	7.3	VC	0.5
4	5.8	VC	0.5
5	6.4	VC	0.5
6	10.0	VC	0.5
7	11.2	VC	0.5
8	11.2	VC	0.5
9	5.2	VC	0.5
10	7.0	VC	0.5
11	16.5	VC	1.0
12	16.5	VC	1.0
13	15.2	VC	1.0
14	17.3	VC	1.0
15	22.5	VC	1.0
16	17.3	VC	1.0
17	13.6	VC	1.0
18	14.5	VC	1.0
19	18.8	VC	1.0
20	15.5	VC	1.0
21	23.6	VC	2.0
22	18.5	VC	2.0
23	33.9	VC	2.0
24	25.5	VC	2.0
25	26.4	VC	2.0
26	32.5	VC	2.0
27	26.7	VC	2.0
28	21.5	VC	2.0
29	23.3	VC	2.0
30	29.5	VC	2.0
31	15.2	OJ	0.5
32	21.5	OJ	0.5
33	17.6	OJ	0.5
34	9.7	OJ	0.5
35	14.5	OJ	0.5
36	10.0	OJ	0.5
37	8.2	OJ	0.5
38	9.4	OJ	0.5
39	16.5	OJ	0.5
40	9.7	OJ	0.5
41	19.7	OJ	1.0
42	23.3	OJ	1.0
43	23.6	OJ	1.0
44	26.4	OJ	1.0
45	20.0	OJ	1.0
46	25.2	OJ	1.0
47	25.8	OJ	1.0
48	21.2	OJ	1.0
49	14.5	OJ	1.0
50	27.3	OJ	1.0
51	25.5	OJ	2.0
52	26.4	OJ	2.0
53	22.4	OJ	2.0
54	24.5	OJ	2.0
55	24.8	OJ	2.0
56	30.9	OJ	2.0
57	26.4	OJ	2.0
58	27.3	OJ	2.0
59	29.4	OJ	2.0
60	23.0	OJ	2.0
\.


--
-- Name: toothgrowth_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('toothgrowth_id_seq', 60, true);


--
-- Data for Name: treering; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY treering (id, x) FROM stdin;
1	1.345
2	1.077
3	1.545
4	1.319
5	1.413
6	1.069
7	0.489
8	1.171
9	0.887
10	0.493
11	0.346
12	0.846
13	0.837
14	0.079
15	0.829
16	0.919
17	0.776
18	0.081
19	0.876
20	0.254
21	1.092
22	0.659
23	0.9
24	0.732
25	0.703
26	0.69
27	0.581
28	0.834
29	0.838
30	0.6
31	0.611
32	0.704
33	0.517
34	0.525
35	1.086
36	0.849
37	0.183
38	0.823
39	0.433
40	0.849
41	1.021
42	0.813
43	0.675
44	0.479
45	0.824
46	0.473
47	1.01
48	1.297
49	0.917
50	0.457
51	0.866
52	1.121
53	1.301
54	1.017
55	0.676
56	0.816
57	1.365
58	0.759
59	0.791
60	1.016
61	0.959
62	0.966
63	1.355
64	0.966
65	0.771
66	0.561
67	1.712
68	1.514
69	0.677
70	0.613
71	1.265
72	0.342
73	0.918
74	1.346
75	0.786
76	0.557
77	1.444
78	1.516
79	1.329
80	1.071
81	1.105
82	1.211
83	1.491
84	1.105
85	1.285
86	1.202
87	1.587
88	0.663
89	1.139
90	1.073
91	0.659
92	0.821
93	1.08
94	1.149
95	0.863
96	0.889
97	1.175
98	0.938
99	1.007
100	1.18
101	1.23
102	1.249
103	1.435
104	0.418
105	0.59
106	0.576
107	1.001
108	0.138
109	1.356
110	0.914
111	0.637
112	1.17
113	0.841
114	0.88
115	0.894
116	0.889
117	0.482
118	0.17
119	1.148
120	0.905
121	0.642
122	0.717
123	0.107
124	0.686
125	0.254
126	0.961
127	0.789
128	1.121
129	1.362
130	1.047
131	1.082
132	0.239
133	0.621
134	0.471
135	0.744
136	0.45
137	1.167
138	1.13
139	1.039
140	0.329
141	1.351
142	1.15
143	0.998
144	1.052
145	1.283
146	1.245
147	1.395
148	1.223
149	0.593
150	1.325
151	0.741
152	1.533
153	1.48
154	1.311
155	0.97
156	0.924
157	1.219
158	1.337
159	0.671
160	1.195
161	0.999
162	1.299
163	1.317
164	1.785
165	0.711
166	1.196
167	1.144
168	1.036
169	1.285
170	1.07
171	1.076
172	0.758
173	0.348
174	0.826
175	0.923
176	1.108
177	1.294
178	1.32
179	1.061
180	0.418
181	1.205
182	0.212
183	1.315
184	1.186
185	0.995
186	0.914
187	0.728
188	1.068
189	0.896
190	0.881
191	0.483
192	0.49
193	1.095
194	1.379
195	0.832
196	1.101
197	0.876
198	0.992
199	1.013
200	0.873
201	1.065
202	0.621
203	1.041
204	1.108
205	1.114
206	1.082
207	0.851
208	1.085
209	1.39
210	1.406
211	1.163
212	1.387
213	1.357
214	0.463
215	0.547
216	1.277
217	1.108
218	0.996
219	1.085
220	1.391
221	1.075
222	0.913
223	1.299
224	1.259
225	1.32
226	1.122
227	1.491
228	1.298
229	1.112
230	1.305
231	1.133
232	1.18
233	1.284
234	1.276
235	1.099
236	0.881
237	1
238	1.173
239	1.13
240	1.084
241	0.999
242	1.235
243	1.119
244	1.049
245	1.089
246	1.233
247	1.304
248	1.28
249	1.208
250	0.874
251	0.962
252	1.372
253	1.224
254	1.117
255	1.121
256	1.48
257	1.675
258	1.298
259	0.996
260	1.306
261	1.027
262	0.823
263	1.424
264	1.041
265	0.463
266	1.13
267	0.909
268	1.369
269	0.982
270	1.08
271	1.419
272	1.286
273	1.581
274	0.875
275	0.359
276	0.319
277	0.874
278	1.145
279	0.807
280	0.964
281	0.892
282	0.442
283	0.948
284	1.013
285	0.897
286	1.153
287	1.145
288	0.628
289	0.325
290	1.325
291	1.047
292	0.911
293	1.376
294	0.975
295	1.099
296	0.632
297	0.934
298	1.175
299	0.81
300	0.855
301	1.407
302	1.126
303	1.148
304	0.787
305	0.835
306	1.101
307	0.761
308	0.907
309	1.149
310	0.865
311	0.785
312	1.25
313	0.646
314	0.937
315	0.925
316	0.792
317	1.212
318	0.987
319	0.409
320	1.062
321	0.634
322	1.006
323	1.21
324	1.315
325	0.96
326	0.47
327	1.01
328	0.729
329	1.212
330	0.851
331	1.114
332	1.016
333	0.954
334	0.38
335	1.178
336	1.251
337	1.194
338	1.103
339	1.258
340	0.836
341	1.136
342	0.884
343	0.498
344	0.084
345	1.286
346	0.49
347	1.037
348	0.986
349	1.073
350	0.381
351	1.001
352	0.878
353	1.136
354	0.783
355	0.917
356	0.802
357	0.866
358	0.728
359	1.264
360	1.203
361	1.402
362	1.347
363	1.234
364	1.069
365	1.356
366	1.526
367	1.345
368	0.79
369	1.5
370	0.752
371	0.94
372	1.121
373	1.186
374	1.065
375	1.164
376	1.469
377	0.817
378	0.185
379	1.433
380	1.555
381	1.201
382	1.317
383	0.955
384	1.005
385	0.901
386	0.821
387	0.479
388	0.75
389	0.182
390	0.936
391	1.058
392	1.074
393	0.934
394	0.903
395	0.309
396	0.786
397	0.585
398	0.811
399	0.969
400	1.089
401	0.581
402	0.99
403	0.9
404	0.8
405	0.771
406	0.919
407	0.8
408	0.658
409	0.328
410	0.698
411	0.929
412	0.677
413	0.401
414	1.109
415	0.274
416	0.668
417	0.96
418	0.221
419	1.025
420	1.083
421	0.593
422	0.994
423	0.861
424	0.588
425	0.923
426	1.107
427	0.693
428	0.882
429	0.591
430	0.66
431	1.075
432	1.146
433	0.965
434	0.795
435	1.061
436	0.946
437	0.705
438	0.744
439	1.063
440	1.182
441	1.136
442	1.229
443	0.653
444	0.892
445	0.696
446	0.465
447	0.962
448	1.17
449	0.911
450	1.293
451	1.088
452	0.853
453	1.146
454	0.578
455	0.9
456	0.975
457	1.191
458	0.481
459	0.155
460	1.455
461	1.233
462	0.93
463	1.131
464	1.304
465	1.393
466	1.128
467	0.801
468	1.619
469	1.423
470	1.606
471	1.395
472	1.291
473	1.456
474	1.674
475	1.256
476	1.135
477	1.19
478	1.167
479	1.065
480	1.292
481	0.575
482	1.505
483	1.239
484	0.993
485	0.925
486	0.988
487	1.171
488	1.133
489	1.412
490	1.07
491	1.272
492	0.79
493	1.082
494	1.179
495	1.109
496	1.588
497	1.053
498	1.123
499	1.246
500	1.361
501	0.86
502	0.146
503	1.252
504	1.35
505	0.907
506	1.464
507	1.067
508	0.827
509	0.769
510	0.875
511	0.668
512	0.999
513	1.252
514	1.439
515	1.206
516	0.797
517	0.724
518	0.867
519	1.333
520	1.306
521	1.058
522	1.44
523	1.239
524	1.611
525	1.403
526	0.754
527	0.129
528	1.075
529	0.841
530	0.752
531	1.446
532	1.01
533	1.034
534	1.016
535	0.396
536	1.101
537	0.645
538	1.342
539	1.146
540	0.943
541	0.755
542	1.406
543	0.86
544	0.89
545	1.01
546	0.85
547	0.444
548	0.573
549	0.19
550	0.985
551	0.873
552	1.209
553	0.689
554	0.604
555	1.035
556	1.12
557	1.138
558	0.935
559	0.268
560	1.051
561	0.935
562	0.679
563	0.909
564	0.819
565	1.106
566	1.024
567	1.352
568	0.796
569	1.122
570	1.472
571	1.342
572	1.404
573	0.978
574	0.612
575	1.077
576	1.02
577	1.311
578	1.279
579	0.648
580	1.193
581	0.761
582	1.07
583	0.716
584	0.804
585	1.326
586	1.551
587	0.858
588	0.406
589	0.851
590	1.007
591	0.955
592	0.612
593	1.029
594	0.619
595	1.024
596	1.256
597	1.022
598	1.063
599	0.631
600	0.788
601	1.154
602	1.336
603	1.206
604	0.955
605	0.992
606	0.68
607	1.042
608	1.225
609	1.762
610	1.018
611	0.684
612	0.097
613	1.079
614	0.888
615	1.08
616	1.205
617	0.927
618	0.926
619	1.32
620	1.407
621	1.014
622	0.812
623	1.152
624	1.351
625	1.013
626	0.183
627	0.362
628	1.059
629	1.28
630	0.002
631	0.938
632	1.009
633	0.83
634	1.3
635	1.058
636	0.691
637	0.809
638	0.217
639	0.157
640	0.588
641	0.748
642	1.109
643	1.096
644	0.626
645	0.907
646	0.767
647	1.178
648	0.887
649	0.599
650	0.93
651	1.149
652	1.052
653	1.187
654	1.309
655	0.973
656	0.908
657	1.33
658	0.624
659	1.66
660	0.967
661	1.397
662	1.289
663	1.587
664	1.517
665	1.254
666	1.077
667	1.147
668	1.234
669	1.646
670	1.657
671	1.844
672	1.288
673	0.875
674	1.053
675	1.229
676	1.051
677	1.665
678	0.298
679	1.272
680	1.277
681	1.458
682	1.139
683	0.613
684	0.091
685	0.803
686	0.251
687	0.877
688	0.875
689	0.909
690	0.371
691	1.433
692	1.517
693	1.119
694	1.316
695	1.265
696	1.187
697	1.225
698	1.064
699	0.793
700	1.148
701	0.761
702	1.264
703	0.681
704	1.103
705	0.339
706	0.93
707	1.182
708	1.54
709	1.397
710	1.429
711	0.573
712	1.658
713	1.243
714	1.339
715	1.433
716	1.484
717	0.652
718	1.185
719	1.416
720	1.365
721	0.959
722	1.065
723	1.047
724	1.396
725	0.215
726	1.383
727	0.943
728	1.474
729	1.136
730	1.134
731	1.339
732	1.633
733	0.853
734	1.684
735	1.172
736	1.73
737	1.85
738	1.555
739	1.422
740	0.894
741	0.578
742	1.081
743	0.738
744	1.175
745	1.247
746	0.306
747	1.275
748	0.752
749	1.071
750	0.632
751	0.702
752	1.505
753	0.729
754	0.918
755	0.41
756	0.373
757	0.601
758	1.158
759	0.571
760	1.324
761	0.267
762	1.039
763	0.803
764	0.886
765	0.511
766	0.723
767	1.045
768	1.121
769	0.959
770	1.006
771	0.829
772	0.97
773	1.36
774	1.048
775	1.179
776	0.542
777	1.229
778	0.63
779	0.36
780	0.79
781	1.051
782	0.66
783	1.181
784	1.512
785	1.302
786	1.403
787	1.289
788	0.914
789	1.02
790	0.916
791	0.026
792	0.749
793	0.837
794	0.357
795	0.591
796	0.555
797	0.56
798	0.791
799	0.691
800	0.585
801	0.741
802	0.967
803	0.906
804	0.865
805	1.161
806	0.563
807	1.045
808	0.691
809	0.957
810	1.117
811	1.269
812	0.638
813	1.119
814	0.81
815	1.272
816	0.007
817	0.801
818	1.149
819	0.423
820	1.4
821	0.954
822	0.905
823	1.349
824	1.342
825	0.496
826	0.615
827	0.463
828	0.857
829	1.263
830	1.022
831	0.952
832	0.807
833	1.007
834	1.069
835	1.425
836	0.377
837	0.661
838	0.896
839	1.373
840	1.205
841	1.387
842	1.514
843	0.719
844	1.183
845	0.726
846	1.178
847	1.102
848	1.185
849	1.497
850	0.687
851	1.377
852	1.438
853	1.564
854	1.224
855	0.617
856	1.647
857	1.64
858	0.849
859	0.87
860	1.004
861	0.769
862	0.65
863	0.962
864	0.433
865	1.129
866	1.427
867	0.702
868	0.964
869	1.326
870	1.012
871	0.754
872	0.791
873	0.559
874	1.027
875	0.42
876	1.436
877	0.729
878	0.964
879	1.282
880	1.053
881	0.943
882	0.427
883	0.161
884	0.839
885	1.16
886	0.908
887	1.477
888	1.292
889	1.344
890	1.354
891	0.546
892	1.412
893	0.451
894	1.158
895	1.526
896	1.626
897	1.221
898	0.861
899	1.027
900	0.584
901	0.133
902	0.834
903	1.111
904	1.212
905	1.366
906	1.586
907	1.153
908	0.523
909	0.712
910	1.042
911	1.082
912	1.675
913	1.236
914	1.125
915	0.328
916	1.316
917	1.116
918	0.929
919	1.077
920	1.003
921	1.263
922	0.752
923	1.231
924	0.491
925	1.139
926	1.417
927	1.472
928	1.156
929	1.08
930	1.619
931	1.004
932	1.077
933	0.425
934	0.914
935	1.041
936	1.242
937	1.356
938	0.737
939	0.927
940	0.853
941	1.294
942	1.307
943	1.197
944	0.847
945	0.733
946	0.4
947	1.038
948	0.944
949	1.237
950	1.299
951	1.126
952	0.534
953	1.394
954	1.323
955	1.007
956	1.642
957	1.043
958	1.045
959	0.971
960	1.219
961	1.091
962	0.482
963	0.927
964	1.104
965	1.194
966	1.445
967	1.442
968	1.3
969	0.8
970	0.206
971	1.321
972	1.233
973	0.986
974	0.521
975	1.177
976	0.191
977	0.896
978	0.666
979	0.88
980	1.023
981	1.592
982	0.764
983	0.851
984	0.783
985	0.869
986	0.606
987	1.16
988	0.946
989	0.628
990	0.897
991	1.067
992	1.046
993	1.368
994	1.624
995	1.719
996	1.029
997	0.912
998	0.974
999	1.62
1000	1.558
1001	1.549
1002	0.554
1003	0.699
1004	0.431
1005	0.605
1006	1.335
1007	1.215
1008	1.162
1009	1.04
1010	1.029
1011	1.209
1012	0.653
1013	1.06
1014	0.285
1015	0.925
1016	1.084
1017	0.681
1018	0.266
1019	0.692
1020	0.893
1021	1.338
1022	1.196
1023	0.938
1024	0.233
1025	0.904
1026	1.346
1027	0.372
1028	1.672
1029	1.675
1030	0.796
1031	1.005
1032	0.937
1033	0.129
1034	0.939
1035	0.837
1036	0.883
1037	1.102
1038	0.421
1039	0.869
1040	0.67
1041	1.141
1042	1.287
1043	0.65
1044	0.117
1045	0.99
1046	0.753
1047	1.269
1048	1.262
1049	1.124
1050	1.107
1051	1.515
1052	1.245
1053	1.144
1054	0.851
1055	1.381
1056	1.197
1057	1.169
1058	0.218
1059	0.227
1060	1.584
1061	0.927
1062	0.975
1063	0.811
1064	0.742
1065	0.827
1066	1.348
1067	1.688
1068	1.399
1069	0.757
1070	0.801
1071	1.362
1072	0.964
1073	0.242
1074	1.094
1075	0.847
1076	1.203
1077	1.089
1078	1.233
1079	1.173
1080	1.115
1081	1.189
1082	0.884
1083	0.779
1084	0.784
1085	1.266
1086	1.225
1087	0.677
1088	1.137
1089	0.919
1090	1.691
1091	1.123
1092	1.457
1093	1.223
1094	1.119
1095	0.565
1096	0.907
1097	0.945
1098	0.942
1099	1.509
1100	1.486
1101	0.945
1102	0.582
1103	1.075
1104	0.969
1105	0.672
1106	0.816
1107	0.928
1108	0.814
1109	0.945
1110	0.439
1111	0.896
1112	1.434
1113	1.211
1114	1.519
1115	1.068
1116	0.677
1117	1.323
1118	0.794
1119	1.124
1120	1.057
1121	0.933
1122	1.222
1123	1.039
1124	0.958
1125	0.357
1126	0.562
1127	1.055
1128	0.706
1129	0.85
1130	0.875
1131	1.245
1132	0.692
1133	1.063
1134	1.026
1135	0.928
1136	0.395
1137	1.012
1138	0.453
1139	1.262
1140	0.926
1141	1.532
1142	0.952
1143	0.456
1144	1.187
1145	1.856
1146	1.436
1147	1.586
1148	0.963
1149	1.075
1150	1.22
1151	0.989
1152	1.34
1153	1.705
1154	1.242
1155	1.252
1156	0.615
1157	1.384
1158	1.052
1159	0.994
1160	0.624
1161	1.091
1162	0.771
1163	0.854
1164	0.787
1165	0.111
1166	0.369
1167	0.786
1168	1.35
1169	0.98
1170	0.72
1171	0.998
1172	1.266
1173	1.205
1174	1.572
1175	0.918
1176	0.744
1177	0.651
1178	1.007
1179	1.345
1180	1.436
1181	0.809
1182	0.721
1183	0.723
1184	1.121
1185	1.028
1186	0.599
1187	1.407
1188	0.562
1189	0.712
1190	1.02
1191	1.217
1192	1.498
1193	0.539
1194	0.836
1195	0.894
1196	0.924
1197	0.749
1198	0.961
1199	1.164
1200	1.413
1201	1.062
1202	0.481
1203	0.721
1204	1.16
1205	0.682
1206	0.653
1207	1.496
1208	1.116
1209	0.929
1210	0.668
1211	1.334
1212	0.775
1213	0.896
1214	0.972
1215	1.374
1216	0.952
1217	0.929
1218	0.757
1219	0.816
1220	1.167
1221	1.01
1222	0.166
1223	0.402
1224	0.143
1225	1.05
1226	0.878
1227	0.783
1228	0.912
1229	0.998
1230	0.211
1231	0.738
1232	1.341
1233	0.994
1234	1.28
1235	1.575
1236	0.886
1237	1.323
1238	1.248
1239	0.492
1240	0.944
1241	0.612
1242	0.889
1243	0.616
1244	0.933
1245	0.916
1246	0.838
1247	1.028
1248	1
1249	1.29
1250	0.737
1251	0.618
1252	1.056
1253	1.13
1254	1.49
1255	1.242
1256	0.786
1257	0.549
1258	0.709
1259	0.419
1260	1.435
1261	1.363
1262	0.823
1263	1.239
1264	1.573
1265	1.08
1266	0.666
1267	0.604
1268	1.452
1269	0.652
1270	0.741
1271	0.687
1272	0.804
1273	0.789
1274	1.152
1275	1.143
1276	1.107
1277	1.183
1278	1.021
1279	1.57
1280	1.615
1281	1.464
1282	1.061
1283	0.598
1284	1.076
1285	1.625
1286	1.497
1287	1.633
1288	1.82
1289	1.221
1290	0.296
1291	1.391
1292	0.691
1293	1.265
1294	1.202
1295	1.245
1296	0.829
1297	0.47
1298	1.614
1299	0.287
1300	0.776
1301	1.077
1302	0.696
1303	0.968
1304	0.562
1305	0.793
1306	1.206
1307	0.586
1308	1.332
1309	1.3
1310	1.109
1311	0.918
1312	0.877
1313	0.994
1314	0.91
1315	1.163
1316	1.146
1317	0.914
1318	0.774
1319	0.784
1320	0.468
1321	1.116
1322	1.118
1323	1.232
1324	1.015
1325	0.874
1326	0.988
1327	0.809
1328	0.221
1329	1.374
1330	1.405
1331	1.243
1332	1.091
1333	0.568
1334	0.775
1335	1.386
1336	1.308
1337	1.711
1338	1.459
1339	1.218
1340	0.923
1341	0.828
1342	1.469
1343	0.838
1344	1.219
1345	1.239
1346	1.75
1347	1.124
1348	0.872
1349	0.963
1350	0.965
1351	1.068
1352	1.169
1353	1.132
1354	1.129
1355	1.011
1356	0.68
1357	1.098
1358	0.945
1359	1.429
1360	1.006
1361	0.838
1362	0.509
1363	0.747
1364	1.231
1365	1.468
1366	1.32
1367	1.088
1368	1.221
1369	0.327
1370	1.043
1371	1.003
1372	0.013
1373	0.36
1374	0.091
1375	1.565
1376	1.17
1377	1.365
1378	0.919
1379	0.916
1380	1.005
1381	1.364
1382	0.166
1383	0.873
1384	1.271
1385	1.059
1386	0.694
1387	0.399
1388	1.466
1389	0.873
1390	0.852
1391	0.837
1392	1.11
1393	0.564
1394	1.153
1395	0
1396	1.252
1397	1.013
1398	0.508
1399	0.834
1400	1.121
1401	0.991
1402	1.207
1403	1.518
1404	1.027
1405	0.314
1406	0.456
1407	0.902
1408	1.146
1409	1.175
1410	1.131
1411	1.525
1412	1.683
1413	1.011
1414	1.189
1415	0.903
1416	1.022
1417	1.568
1418	1.17
1419	1.214
1420	1.274
1421	1.04
1422	1.143
1423	1.365
1424	0.866
1425	1.121
1426	0.618
1427	1.271
1428	1.549
1429	1.262
1430	0.982
1431	1.228
1432	0.054
1433	1.483
1434	1.577
1435	1.038
1436	0.972
1437	0.603
1438	0.802
1439	1.201
1440	1.34
1441	1.029
1442	0.634
1443	0.842
1444	1.178
1445	1.428
1446	0.954
1447	0.902
1448	0.876
1449	1.2
1450	1.234
1451	1.416
1452	1.195
1453	0.798
1454	0.709
1455	1.109
1456	1.071
1457	1.124
1458	1.13
1459	0.693
1460	0.833
1461	1.259
1462	0.985
1463	1.232
1464	1.383
1465	0.91
1466	1.48
1467	1.561
1468	1.697
1469	1.067
1470	1.496
1471	1.884
1472	0.943
1473	0.982
1474	1.57
1475	1.125
1476	1.516
1477	1.326
1478	0.874
1479	1.374
1480	1.039
1481	1.192
1482	0.771
1483	0.312
1484	0.825
1485	0.981
1486	0.569
1487	0.565
1488	1.011
1489	1.025
1490	0.901
1491	1.261
1492	1.092
1493	1.027
1494	1.021
1495	1.125
1496	0.817
1497	1.107
1498	1.077
1499	1.387
1500	1.026
1501	1.101
1502	0.917
1503	0.63
1504	1.035
1505	1.033
1506	1.051
1507	1.062
1508	0.928
1509	1.042
1510	0.744
1511	0.471
1512	1.108
1513	0.976
1514	0.221
1515	0.786
1516	0.918
1517	0.915
1518	0.946
1519	0.629
1520	1.123
1521	1.025
1522	0.854
1523	1.187
1524	0.572
1525	0.798
1526	1.482
1527	0.874
1528	0.394
1529	1.397
1530	0.707
1531	1.475
1532	1.587
1533	1.027
1534	0.569
1535	1.19
1536	0.666
1537	1.338
1538	0.991
1539	1.498
1540	1.02
1541	1.248
1542	1.158
1543	0.96
1544	1.194
1545	1.216
1546	0.883
1547	1.262
1548	1.673
1549	1.076
1550	1.227
1551	1.036
1552	1.028
1553	1.51
1554	1.493
1555	1.137
1556	0.669
1557	1.175
1558	0.789
1559	1.423
1560	1.334
1561	0.819
1562	0.894
1563	0.943
1564	1.017
1565	1.176
1566	1.329
1567	1.155
1568	0.962
1569	1.207
1570	0.384
1571	0.345
1572	0.898
1573	0.486
1574	0.891
1575	1.2
1576	1.339
1577	0.85
1578	0.829
1579	1.453
1580	1.276
1581	0.744
1582	1.403
1583	0.788
1584	0.663
1585	0.773
1586	0.933
1587	0.904
1588	0.916
1589	1.038
1590	1.288
1591	0.867
1592	0.051
1593	0.506
1594	1.107
1595	1.215
1596	1.105
1597	1.411
1598	1.573
1599	1.73
1600	1.252
1601	1.779
1602	1.525
1603	1.604
1604	1.416
1605	1.33
1606	1.452
1607	1.2
1608	1.328
1609	1.229
1610	1.184
1611	1.327
1612	1.394
1613	1.051
1614	1.295
1615	0.404
1616	1.184
1617	1.312
1618	0.818
1619	1.203
1620	0.426
1621	0.946
1622	0.798
1623	0.991
1624	0.997
1625	0.303
1626	0.873
1627	0.612
1628	1.269
1629	1.059
1630	1.16
1631	1.002
1632	0.992
1633	1.406
1634	0.269
1635	0.648
1636	0.823
1637	0.652
1638	1.053
1639	0.976
1640	1.404
1641	0.692
1642	1.001
1643	1.05
1644	1.372
1645	0.935
1646	0.206
1647	0.411
1648	1.019
1649	1.271
1650	0.982
1651	1.307
1652	0.947
1653	0.841
1654	1.217
1655	1.162
1656	0.656
1657	1.089
1658	0.569
1659	1.129
1660	1.441
1661	1.176
1662	1.229
1663	1.34
1664	1.1
1665	1.071
1666	0.217
1667	0.917
1668	0.952
1669	1.192
1670	1.128
1671	1.322
1672	1.418
1673	1.406
1674	0.43
1675	1.253
1676	0.751
1677	1.343
1678	0.944
1679	0.936
1680	1.095
1681	0.885
1682	1.074
1683	0.91
1684	0.972
1685	1.222
1686	0.805
1687	1.042
1688	1.109
1689	0.881
1690	0.682
1691	0.912
1692	0.676
1693	0.718
1694	1.399
1695	0.69
1696	0.772
1697	1.047
1698	0.852
1699	1.075
1700	0.725
1701	0.646
1702	0.823
1703	1.163
1704	0.844
1705	1.132
1706	1.082
1707	1.651
1708	1.445
1709	1.176
1710	0.976
1711	0.845
1712	0.257
1713	0.8
1714	1.165
1715	1.159
1716	1.143
1717	1.11
1718	1.135
1719	0.779
1720	0.599
1721	1.028
1722	1.08
1723	1.21
1724	1.131
1725	1.156
1726	1.117
1727	1.239
1728	0.786
1729	0.978
1730	0.892
1731	1.129
1732	1.074
1733	0.878
1734	1.043
1735	1.019
1736	0.898
1737	0.309
1738	1.083
1739	1.386
1740	1.414
1741	1.315
1742	1.199
1743	0.146
1744	0.988
1745	0.614
1746	0.858
1747	1.063
1748	0.885
1749	1.047
1750	1.085
1751	0.873
1752	0.768
1753	1.129
1754	0.676
1755	0.743
1756	0.514
1757	0.795
1758	0.923
1759	1.028
1760	1.383
1761	1.081
1762	1.036
1763	1.454
1764	0.97
1765	0.758
1766	1.082
1767	0.741
1768	0.57
1769	1.041
1770	1.093
1771	1.381
1772	1.325
1773	0.811
1774	1.012
1775	0.854
1776	0.595
1777	1.015
1778	0.89
1779	0.807
1780	0.719
1781	1.119
1782	0.98
1783	1.281
1784	1.172
1785	0.832
1786	1.033
1787	1.161
1788	0.948
1789	1.029
1790	1.317
1791	1.248
1792	0.984
1793	1.4
1794	0.775
1795	0.685
1796	0.818
1797	0.823
1798	0.656
1799	0.855
1800	0.259
1801	0.134
1802	0.873
1803	0.607
1804	0.647
1805	0.978
1806	0.894
1807	0.58
1808	0.476
1809	0.693
1810	1.075
1811	0.93
1812	1.122
1813	1.148
1814	0.807
1815	1.242
1816	0.978
1817	1.005
1818	1.257
1819	1.471
1820	1.345
1821	1.206
1822	1.502
1823	0.634
1824	0.879
1825	0.799
1826	0.963
1827	1.114
1828	1.344
1829	1.052
1830	0.988
1831	0.34
1832	1.037
1833	0.346
1834	0.528
1835	1.197
1836	1.323
1837	1.503
1838	1.136
1839	1.146
1840	1.258
1841	0.419
1842	1.017
1843	1.14
1844	1.175
1845	0.724
1846	0.978
1847	0.671
1848	0.617
1849	0.792
1850	1.124
1851	1.027
1852	1.011
1853	1.121
1854	0.926
1855	1.018
1856	0.968
1857	0.913
1858	1.202
1859	1.355
1860	1.196
1861	1.152
1862	1.17
1863	1.072
1864	0.44
1865	0.773
1866	1.165
1867	1.157
1868	1.336
1869	1.51
1870	0.883
1871	0.849
1872	0.446
1873	0.862
1874	0.968
1875	0.909
1876	1.071
1877	1.241
1878	0.936
1879	0.55
1880	1.143
1881	1.177
1882	0.906
1883	1.084
1884	0.984
1885	1.075
1886	0.918
1887	0.783
1888	0.872
1889	1.354
1890	1.069
1891	0.869
1892	0.895
1893	1.063
1894	0.965
1895	1.189
1896	1.002
1897	1.012
1898	0.119
1899	1.202
1900	1.121
1901	0.724
1902	0.84
1903	1.211
1904	0.687
1905	0.728
1906	0.992
1907	1.243
1908	1.364
1909	0.816
1910	0.828
1911	0.843
1912	0.865
1913	0.66
1914	0.718
1915	0.404
1916	1.114
1917	0.593
1918	0.632
1919	0.707
1920	0.883
1921	0.764
1922	0.827
1923	0.765
1924	0.789
1925	1.055
1926	0.859
1927	1.078
1928	0.3
1929	0.839
1930	1.052
1931	1.28
1932	1.423
1933	1.515
1934	0.996
1935	0.876
1936	0.885
1937	1.049
1938	0.201
1939	1.138
1940	0.704
1941	0.685
1942	0.77
1943	0.148
1944	0.918
1945	0.469
1946	0.984
1947	0.85
1948	0.534
1949	0.696
1950	0.852
1951	0.648
1952	0.542
1953	0.869
1954	1.204
1955	1.361
1956	1.195
1957	1.084
1958	0.494
1959	0.925
1960	0.955
1961	0.896
1962	0.682
1963	1.084
1964	1.246
1965	1.135
1966	1.307
1967	0.919
1968	0.985
1969	0.903
1970	1.004
1971	0.532
1972	0.865
1973	0.944
1974	1.017
1975	0.78
1976	0.644
1977	0.901
1978	1.144
1979	0.928
1980	0.705
1981	1.085
1982	1.127
1983	0.939
1984	1.035
1985	0.937
1986	1.124
1987	1.272
1988	1.601
1989	1.394
1990	0.886
1991	0.809
1992	1.289
1993	0.932
1994	0.781
1995	0.834
1996	1.445
1997	1.374
1998	1.09
1999	0.837
2000	1.643
2001	1.41
2002	0.995
2003	1.041
2004	1.389
2005	1.587
2006	1.227
2007	0.966
2008	0.893
2009	0.096
2010	1.164
2011	0.835
2012	0.334
2013	0.876
2014	0.838
2015	0.532
2016	0.77
2017	1.079
2018	1.204
2019	1.135
2020	0.405
2021	0.986
2022	1.115
2023	1.159
2024	1.227
2025	1.506
2026	1.07
2027	1.292
2028	1.326
2029	0.689
2030	1.024
2031	1.407
2032	0.594
2033	1.057
2034	1.177
2035	1.524
2036	1.206
2037	1.074
2038	1.042
2039	0.925
2040	0.669
2041	0.776
2042	0.822
2043	0.998
2044	0.883
2045	1.176
2046	0.825
2047	0.533
2048	0.594
2049	1.022
2050	0.567
2051	0.047
2052	0.708
2053	0.9
2054	0.882
2055	0.738
2056	0.712
2057	0.783
2058	1.079
2059	0.995
2060	0.783
2061	0.853
2062	1.016
2063	0.942
2064	0.929
2065	0.852
2066	0.569
2067	1.157
2068	0.841
2069	1.25
2070	0.91
2071	0.651
2072	0.725
2073	0.682
2074	1.195
2075	0.485
2076	0.612
2077	0.963
2078	1.286
2079	1.293
2080	1.158
2081	0.967
2082	1.238
2083	0.031
2084	1.241
2085	1.019
2086	1.013
2087	0.949
2088	0.519
2089	0.842
2090	0.664
2091	0.925
2092	0.633
2093	1.162
2094	0.935
2095	1.226
2096	1.249
2097	1.096
2098	0.882
2099	1.084
2100	0.499
2101	0.883
2102	0.851
2103	1.204
2104	1.174
2105	1.226
2106	0.769
2107	1.023
2108	0.516
2109	1.108
2110	0.748
2111	0.939
2112	0.706
2113	1.148
2114	1.216
2115	1.197
2116	0.89
2117	1.015
2118	1.228
2119	0.87
2120	1.036
2121	1.41
2122	1.44
2123	0.074
2124	0.719
2125	1.081
2126	0.699
2127	1.311
2128	1.208
2129	1.217
2130	0.633
2131	1.279
2132	1.112
2133	1.031
2134	1.151
2135	0.699
2136	0.939
2137	1.2
2138	1.184
2139	1.168
2140	1.179
2141	0.906
2142	0.557
2143	0.621
2144	1.061
2145	1.141
2146	1.045
2147	1.395
2148	1.373
2149	1.121
2150	0.736
2151	1.072
2152	0.996
2153	1.198
2154	1.235
2155	1.383
2156	0.593
2157	0.991
2158	0.778
2159	1.081
2160	1.453
2161	1.063
2162	0.72
2163	1.028
2164	0.661
2165	1.065
2166	0.195
2167	0.944
2168	1.098
2169	1.068
2170	1.134
2171	1.46
2172	0.322
2173	0.736
2174	0.876
2175	0.98
2176	0.555
2177	0.817
2178	0.94
2179	1.338
2180	0.499
2181	1.562
2182	1.205
2183	1.431
2184	1.509
2185	1.908
2186	0.403
2187	1.237
2188	1.032
2189	1.106
2190	0.183
2191	1.31
2192	1.399
2193	1.293
2194	1.128
2195	1.225
2196	1.104
2197	0.209
2198	0.85
2199	0.434
2200	0.703
2201	1.148
2202	0.462
2203	1.204
2204	1.166
2205	0.636
2206	1.254
2207	1.089
2208	1.33
2209	1.128
2210	1.221
2211	1.313
2212	1.041
2213	0.91
2214	0.938
2215	0.856
2216	0.827
2217	1.01
2218	0.932
2219	1.075
2220	0.919
2221	0.221
2222	0.82
2223	0.644
2224	0.596
2225	0.771
2226	0.68
2227	0.813
2228	0.116
2229	1.011
2230	1.063
2231	0.743
2232	1.019
2233	1.17
2234	0.773
2235	0.462
2236	0.866
2237	1.123
2238	1.184
2239	1.047
2240	1.245
2241	1.351
2242	1.179
2243	1.204
2244	0.829
2245	0.847
2246	0.985
2247	0.464
2248	1.124
2249	1.104
2250	1.167
2251	0.914
2252	0.339
2253	1.205
2254	1.154
2255	0.844
2256	0.987
2257	0.84
2258	1.083
2259	1.183
2260	0.496
2261	0.93
2262	1.074
2263	1.028
2264	0.984
2265	1.136
2266	0.662
2267	1.073
2268	1.17
2269	1.184
2270	1.361
2271	1.049
2272	0.967
2273	0.888
2274	0.9
2275	1.158
2276	0.841
2277	0.633
2278	0.892
2279	0.558
2280	0.051
2281	1.091
2282	1.156
2283	1.179
2284	1.096
2285	1.213
2286	1.446
2287	1.574
2288	1.107
2289	1.179
2290	1.06
2291	0.731
2292	1.215
2293	1.356
2294	1.026
2295	0.942
2296	1.176
2297	0.932
2298	1.287
2299	1.242
2300	1.49
2301	1.373
2302	0.643
2303	0.304
2304	0.959
2305	0.605
2306	1.103
2307	1.319
2308	1.157
2309	0.786
2310	0.817
2311	0.537
2312	1.489
2313	1.378
2314	0.972
2315	1.164
2316	1.03
2317	1.158
2318	1.304
2319	1.27
2320	0.945
2321	1.137
2322	0.092
2323	1.229
2324	1.267
2325	1.182
2326	1.104
2327	1.654
2328	1.251
2329	1.051
2330	1.224
2331	1.024
2332	0.805
2333	0.297
2334	0.937
2335	0.997
2336	1.032
2337	0.893
2338	1.273
2339	1.431
2340	0.932
2341	0.184
2342	1.21
2343	1.257
2344	1.303
2345	1.073
2346	1.497
2347	1.178
2348	1.046
2349	0.999
2350	0.772
2351	1.227
2352	0.636
2353	1.391
2354	1.261
2355	0.884
2356	1.014
2357	1.292
2358	1.511
2359	1.234
2360	1.059
2361	1.281
2362	1.247
2363	1.253
2364	0.601
2365	0.851
2366	1.156
2367	1.353
2368	0.551
2369	1.043
2370	0.754
2371	0.654
2372	0.95
2373	1.19
2374	1.147
2375	1.268
2376	1.059
2377	0.776
2378	0.282
2379	0.665
2380	1.005
2381	0.037
2382	1.148
2383	1.335
2384	1.222
2385	1.018
2386	1.401
2387	1.085
2388	1.223
2389	0.383
2390	1
2391	1.112
2392	1.096
2393	0.836
2394	1.059
2395	0.148
2396	1.321
2397	1.131
2398	0.894
2399	0.923
2400	1.047
2401	0.696
2402	0.622
2403	0.793
2404	0.794
2405	1.151
2406	1.228
2407	1.083
2408	1.102
2409	1.357
2410	1.178
2411	1.393
2412	0.973
2413	0.88
2414	0.476
2415	0.877
2416	0.667
2417	0.483
2418	0.796
2419	1.17
2420	0.292
2421	0.617
2422	0.827
2423	0.583
2424	0.171
2425	1.06
2426	1.301
2427	1.236
2428	0.966
2429	1.347
2430	1.053
2431	1.37
2432	0.664
2433	0.673
2434	0.884
2435	1.165
2436	0.769
2437	0.705
2438	1.036
2439	0.636
2440	0.413
2441	1.166
2442	0.392
2443	1.171
2444	1.375
2445	1.404
2446	1.272
2447	1.196
2448	1.12
2449	1.122
2450	0.591
2451	0.872
2452	0.94
2453	1.195
2454	1.121
2455	0.883
2456	1.29
2457	1.089
2458	0.467
2459	0.332
2460	0.455
2461	0.949
2462	1.061
2463	1.252
2464	1.157
2465	1.211
2466	1.37
2467	1.276
2468	0.545
2469	1.17
2470	1.384
2471	1.145
2472	0.917
2473	1.244
2474	1.11
2475	1.336
2476	1.038
2477	1.105
2478	1.364
2479	1.38
2480	0.791
2481	1.111
2482	0.806
2483	0.829
2484	0.598
2485	1.094
2486	1.154
2487	1.443
2488	0.913
2489	1.094
2490	1.016
2491	0.667
2492	0.902
2493	0.082
2494	1.35
2495	1.235
2496	1.092
2497	0.766
2498	0.964
2499	1.446
2500	1.212
2501	1.415
2502	1.576
2503	0.497
2504	0.88
2505	1.061
2506	1.086
2507	1.256
2508	1.428
2509	0.871
2510	0.49
2511	1.146
2512	0.872
2513	0.941
2514	1.017
2515	0.555
2516	0.768
2517	1.153
2518	1.143
2519	0.929
2520	1.101
2521	1.012
2522	1.259
2523	1.387
2524	0.573
2525	1.151
2526	1.235
2527	0.479
2528	0.717
2529	1.207
2530	1.433
2531	1.311
2532	1.343
2533	1.57
2534	1.169
2535	1.142
2536	1.194
2537	1.317
2538	1.564
2539	1.143
2540	0.253
2541	0.893
2542	1.439
2543	1.412
2544	0.753
2545	1.071
2546	1.054
2547	1.347
2548	1.069
2549	1.026
2550	0.096
2551	1.363
2552	1.431
2553	0.651
2554	1.197
2555	1.13
2556	0.939
2557	1.403
2558	1.195
2559	1.024
2560	1.153
2561	0.713
2562	0.557
2563	0.562
2564	0.985
2565	1.258
2566	1.031
2567	0.965
2568	0.97
2569	0.979
2570	0.531
2571	0.883
2572	1.041
2573	1.212
2574	0.545
2575	0.892
2576	1.222
2577	1.117
2578	1.121
2579	1.231
2580	1.09
2581	1.202
2582	1.281
2583	1.156
2584	0.877
2585	0.647
2586	1.27
2587	1.077
2588	0.69
2589	0.636
2590	0.972
2591	1.206
2592	1.174
2593	1.092
2594	0.987
2595	0.779
2596	0.907
2597	0.646
2598	1.129
2599	1.241
2600	0.84
2601	0.958
2602	0.89
2603	0.956
2604	0.78
2605	0.902
2606	1.006
2607	1.123
2608	0.747
2609	1.237
2610	1.139
2611	0.262
2612	0.805
2613	0.514
2614	1.038
2615	1.239
2616	0.717
2617	0.86
2618	0.973
2619	1.362
2620	1.417
2621	1.025
2622	1.209
2623	0.718
2624	1.121
2625	0.917
2626	1.069
2627	1.164
2628	0.831
2629	1.147
2630	0.958
2631	0.602
2632	0.872
2633	0.794
2634	0.758
2635	0.91
2636	1.036
2637	1.122
2638	1.546
2639	0.685
2640	0.897
2641	0.906
2642	1.165
2643	1.412
2644	0.926
2645	0.18
2646	1.473
2647	1.016
2648	1.153
2649	0.855
2650	1.04
2651	1.089
2652	0.819
2653	0.901
2654	0.858
2655	0.87
2656	0.447
2657	0.462
2658	1.145
2659	1.18
2660	0.792
2661	0.722
2662	0.829
2663	0.578
2664	0.801
2665	1.131
2666	0.635
2667	0.701
2668	0.519
2669	0.794
2670	0.829
2671	0.881
2672	1.152
2673	1.077
2674	0.479
2675	0.589
2676	1.137
2677	1.133
2678	1.158
2679	0.998
2680	0.898
2681	1.264
2682	1.415
2683	1.195
2684	1.405
2685	0.887
2686	0.96
2687	0.379
2688	0.755
2689	1.23
2690	1.222
2691	1.005
2692	1.017
2693	0.824
2694	0.67
2695	0.999
2696	1.256
2697	1.188
2698	1.163
2699	1.493
2700	1.236
2701	1.322
2702	1.049
2703	0.724
2704	1.013
2705	1.06
2706	1.308
2707	0.843
2708	1.045
2709	1.078
2710	0.905
2711	0.793
2712	0.852
2713	0.766
2714	0.411
2715	0.506
2716	0.933
2717	0.972
2718	1.17
2719	0.851
2720	0.462
2721	0.853
2722	0.582
2723	1.108
2724	0.878
2725	1.023
2726	1.262
2727	1.04
2728	1.275
2729	1.376
2730	0.502
2731	1.305
2732	1.115
2733	1.363
2734	1.235
2735	0.867
2736	1.45
2737	1.478
2738	1.203
2739	0.996
2740	1.319
2741	1.206
2742	0.965
2743	1.199
2744	1.093
2745	0.6
2746	0.859
2747	1.046
2748	1.096
2749	0.245
2750	0.3
2751	0.94
2752	1.187
2753	0.745
2754	1.004
2755	1.108
2756	0.38
2757	0.965
2758	1.186
2759	0.947
2760	1.107
2761	0.958
2762	1.07
2763	0.7
2764	1.001
2765	1.091
2766	1.541
2767	1.089
2768	1.382
2769	1.015
2770	1.049
2771	1.253
2772	1.24
2773	1.216
2774	1.181
2775	0.347
2776	0.984
2777	0.881
2778	0.06
2779	1.316
2780	0.904
2781	1.103
2782	1.149
2783	0.98
2784	1.133
2785	0.779
2786	1.066
2787	0.778
2788	1.069
2789	0.969
2790	0.968
2791	1.211
2792	1.043
2793	1.088
2794	0.98
2795	1.124
2796	0.435
2797	1.271
2798	1.225
2799	1.23
2800	1.419
2801	1.208
2802	1.239
2803	1.391
2804	0.725
2805	0.419
2806	0.685
2807	0.466
2808	0.895
2809	0.907
2810	0.961
2811	1.114
2812	0.798
2813	0.572
2814	0.531
2815	0.546
2816	0.538
2817	0.466
2818	0.71
2819	1.126
2820	1.094
2821	1.076
2822	1.103
2823	1.223
2824	1.342
2825	1.03
2826	1.001
2827	1.227
2828	0.939
2829	1.067
2830	1.211
2831	1.002
2832	0.892
2833	1.091
2834	1.204
2835	1.059
2836	1.234
2837	1.184
2838	1.186
2839	1.335
2840	1.14
2841	0.88
2842	0.681
2843	0.764
2844	0.926
2845	1.118
2846	1.228
2847	1.325
2848	0.722
2849	1.206
2850	0.991
2851	0.974
2852	1.223
2853	0.614
2854	1.285
2855	1.159
2856	1.467
2857	1.237
2858	1.029
2859	1.129
2860	0.974
2861	1.099
2862	1.071
2863	1.287
2864	1.5
2865	1.267
2866	1.504
2867	1.358
2868	1.493
2869	1.241
2870	0.579
2871	1.199
2872	0.86
2873	0.834
2874	0.964
2875	1.206
2876	1.191
2877	1.141
2878	1.284
2879	1.322
2880	0.959
2881	1.066
2882	0.924
2883	0.842
2884	1.043
2885	1.108
2886	0.886
2887	0.652
2888	1.178
2889	1.114
2890	0.959
2891	0.763
2892	0.524
2893	1.114
2894	1.02
2895	1.244
2896	0.976
2897	1.143
2898	1.27
2899	1.262
2900	1.225
2901	1.107
2902	0.523
2903	1.044
2904	0.893
2905	0.922
2906	0.71
2907	1.048
2908	0.982
2909	0.991
2910	1.146
2911	1.203
2912	1.55
2913	1.402
2914	1.279
2915	1.173
2916	0.172
2917	1.012
2918	0.982
2919	0.995
2920	1.321
2921	1.167
2922	0.553
2923	0.58
2924	1.095
2925	1.157
2926	1.092
2927	0.901
2928	0.995
2929	1.275
2930	1.332
2931	1.445
2932	0.696
2933	1.11
2934	1.013
2935	1.029
2936	1.315
2937	1.043
2938	1.134
2939	1.45
2940	1.429
2941	0.946
2942	0.482
2943	1.146
2944	0.877
2945	1.046
2946	1.029
2947	1.125
2948	1.069
2949	0.975
2950	0.332
2951	0.409
2952	0.921
2953	1.009
2954	0.99
2955	0.784
2956	1.237
2957	1.065
2958	1.23
2959	1.221
2960	1.33
2961	1.234
2962	1.243
2963	1.505
2964	0.956
2965	1.307
2966	1.067
2967	0.794
2968	1.029
2969	0.997
2970	0.881
2971	0.954
2972	1.065
2973	1.311
2974	0.677
2975	1.362
2976	0.977
2977	0.992
2978	1.034
2979	1.101
2980	0.717
2981	1.023
2982	0.977
2983	0.756
2984	0.887
2985	1.13
2986	1.159
2987	1.008
2988	1.013
2989	1.033
2990	0.805
2991	0.374
2992	0.92
2993	1.11
2994	1.317
2995	1.374
2996	1.307
2997	1.376
2998	1.08
2999	1.034
3000	1.191
3001	1.435
3002	1.451
3003	1.278
3004	1.191
3005	1.085
3006	1.433
3007	1.388
3008	1.258
3009	0.586
3010	1.435
3011	1.343
3012	1.076
3013	1.117
3014	1.42
3015	0.917
3016	1.009
3017	0.531
3018	0.885
3019	0.659
3020	1.041
3021	0.838
3022	1.176
3023	1.292
3024	1.323
3025	1.252
3026	0.214
3027	1.205
3028	0.398
3029	1.293
3030	1.572
3031	1.311
3032	0.56
3033	1.218
3034	1.471
3035	1.378
3036	1.169
3037	1.344
3038	1.434
3039	1.546
3040	1.043
3041	1.438
3042	1.041
3043	1.24
3044	0.551
3045	1.179
3046	0.778
3047	1.057
3048	1.304
3049	0.936
3050	1.188
3051	1.22
3052	1.381
3053	0.967
3054	1.193
3055	1.424
3056	1.339
3057	1.364
3058	1.418
3059	1.449
3060	1.417
3061	1.102
3062	1.247
3063	0.763
3064	0.963
3065	1.37
3066	1.411
3067	1.374
3068	0.615
3069	0.165
3070	1.153
3071	0.999
3072	0.919
3073	1.293
3074	1.237
3075	1.094
3076	1.059
3077	1.273
3078	1.065
3079	0.994
3080	0.59
3081	0.978
3082	0.981
3083	0.98
3084	0.886
3085	0.718
3086	0.986
3087	0.706
3088	0.928
3089	0.503
3090	0.856
3091	0.985
3092	1.005
3093	1.015
3094	0.969
3095	1.022
3096	1.148
3097	1.141
3098	0.945
3099	1.122
3100	1.025
3101	1.164
3102	0.819
3103	1.319
3104	1.075
3105	1.002
3106	1.162
3107	1.08
3108	0.903
3109	0.552
3110	1.01
3111	1.363
3112	0.711
3113	1.004
3114	0.728
3115	0.447
3116	0.959
3117	1.25
3118	0.759
3119	0.642
3120	1.261
3121	0.977
3122	1.198
3123	1.267
3124	1.406
3125	1.448
3126	1.403
3127	1.294
3128	0.917
3129	1.122
3130	1.173
3131	1.35
3132	1.171
3133	1.035
3134	0.989
3135	1.042
3136	0.696
3137	1.062
3138	0.206
3139	1.103
3140	1.299
3141	1.332
3142	0.374
3143	0.891
3144	0.945
3145	1.023
3146	0.765
3147	0.37
3148	0.879
3149	1.11
3150	0.892
3151	0.333
3152	0.978
3153	1.108
3154	1.321
3155	1.141
3156	0.982
3157	1.195
3158	1.012
3159	0.269
3160	0.704
3161	0.945
3162	1.224
3163	0.877
3164	0.508
3165	1.113
3166	1.14
3167	0.858
3168	1.316
3169	1.171
3170	0.685
3171	1.153
3172	1.168
3173	1.367
3174	1.433
3175	0.346
3176	1.08
3177	0.587
3178	1.076
3179	0.418
3180	1.142
3181	1.001
3182	1.336
3183	1.189
3184	1.228
3185	1.222
3186	1.031
3187	1.189
3188	1.392
3189	1.003
3190	0.626
3191	1.223
3192	1.396
3193	0.766
3194	1.59
3195	1.39
3196	0.453
3197	0.792
3198	0.562
3199	0.602
3200	0.55
3201	0.888
3202	1.11
3203	1.115
3204	1.245
3205	1.163
3206	0.755
3207	1.331
3208	1.309
3209	0.601
3210	1.263
3211	1.27
3212	1.341
3213	1
3214	0.674
3215	0.712
3216	0.827
3217	1.18
3218	1.089
3219	1.194
3220	1.342
3221	0.928
3222	1.146
3223	0.895
3224	1.343
3225	1.379
3226	0.885
3227	0.819
3228	1.207
3229	1.658
3230	1.19
3231	1.151
3232	1.426
3233	1.51
3234	1.32
3235	0.84
3236	1.378
3237	1.337
3238	1.757
3239	1.362
3240	1.434
3241	1.381
3242	1.598
3243	0.117
3244	1.826
3245	1.491
3246	0.834
3247	1.227
3248	0.975
3249	1.056
3250	1.211
3251	1.256
3252	0.269
3253	0.626
3254	0.471
3255	0.718
3256	0.772
3257	0.887
3258	0.917
3259	1.038
3260	1.033
3261	1.146
3262	1.079
3263	0.628
3264	0.886
3265	0.984
3266	1.351
3267	0.93
3268	0.073
3269	0.992
3270	0.758
3271	1.07
3272	1.186
3273	1.26
3274	0.2
3275	0.891
3276	0.766
3277	0.617
3278	1.134
3279	1.355
3280	1.551
3281	1.496
3282	1.242
3283	1.208
3284	1.266
3285	1.356
3286	1.434
3287	1.18
3288	1.594
3289	1.302
3290	0.892
3291	0.774
3292	0.962
3293	1.168
3294	1.266
3295	1.258
3296	1.653
3297	1.16
3298	1.001
3299	1.187
3300	1.355
3301	0.774
3302	1.568
3303	1.227
3304	1.656
3305	1.075
3306	0.294
3307	0.772
3308	0.997
3309	1.194
3310	1.103
3311	1.032
3312	1.286
3313	1.387
3314	1.338
3315	1.054
3316	1.009
3317	1.469
3318	1.085
3319	0.64
3320	0.54
3321	0.014
3322	1.1
3323	1.356
3324	1.076
3325	1.566
3326	1.573
3327	1.504
3328	1.295
3329	1.368
3330	0.759
3331	0.842
3332	1.252
3333	1.374
3334	1.489
3335	1.254
3336	1.701
3337	1.182
3338	1.802
3339	1.255
3340	0.806
3341	1.493
3342	1.325
3343	1.259
3344	1.253
3345	1.159
3346	1.1
3347	1.32
3348	0.992
3349	1.007
3350	1.085
3351	1.169
3352	1.154
3353	0.869
3354	1.211
3355	1.205
3356	1.368
3357	1.094
3358	0.238
3359	0.916
3360	1.321
3361	0.35
3362	0.603
3363	1.001
3364	1.126
3365	1.149
3366	0.811
3367	0.67
3368	0.886
3369	0.822
3370	0.95
3371	1.062
3372	0.464
3373	0.654
3374	0.873
3375	0.945
3376	1.025
3377	1.067
3378	1.058
3379	0.806
3380	0.86
3381	0.907
3382	0.543
3383	0.845
3384	0.681
3385	0.641
3386	0.545
3387	1.188
3388	1.007
3389	0.432
3390	1.007
3391	0.669
3392	0.899
3393	1.121
3394	0.876
3395	1.302
3396	1.171
3397	1.597
3398	1.079
3399	1.311
3400	1.491
3401	1.413
3402	1.464
3403	0.919
3404	1.065
3405	0.943
3406	1.049
3407	0.961
3408	1.102
3409	1.308
3410	0.906
3411	0.21
3412	1.3
3413	1.051
3414	0.499
3415	0.976
3416	1.224
3417	0.739
3418	1.211
3419	1.049
3420	0.882
3421	0.909
3422	0.343
3423	0.743
3424	0.72
3425	0.72
3426	0.911
3427	1.167
3428	0.797
3429	0.842
3430	0.516
3431	0.826
3432	1.046
3433	0.863
3434	0.999
3435	0.336
3436	0.991
3437	0.966
3438	0.312
3439	1.167
3440	1.289
3441	0.761
3442	1.15
3443	0.832
3444	1.086
3445	1.15
3446	1.108
3447	1.036
3448	0.989
3449	0.664
3450	0.894
3451	0.522
3452	0.927
3453	1.279
3454	1.186
3455	0.952
3456	0.787
3457	0.666
3458	0.662
3459	0.545
3460	1.497
3461	1.249
3462	0.606
3463	0.891
3464	1.147
3465	1.269
3466	0.939
3467	1.235
3468	1.188
3469	0.546
3470	0.654
3471	0.915
3472	0.694
3473	0.95
3474	0.447
3475	0.85
3476	0.852
3477	0.9
3478	0.442
3479	0.978
3480	1.103
3481	1.279
3482	1.465
3483	0.801
3484	0.755
3485	0.213
3486	1.21
3487	1.317
3488	0.738
3489	1.119
3490	1.023
3491	0.778
3492	1.012
3493	0.927
3494	1.222
3495	1.159
3496	0.797
3497	0.985
3498	0.544
3499	0.74
3500	0.856
3501	1.193
3502	0.986
3503	1.098
3504	1.154
3505	1.002
3506	1.101
3507	0.809
3508	0.192
3509	1.15
3510	1.052
3511	1.448
3512	1.179
3513	0.492
3514	0.998
3515	0.919
3516	0.994
3517	1.199
3518	1.003
3519	1.003
3520	0.849
3521	0.363
3522	0.855
3523	1.023
3524	0.936
3525	1
3526	1.37
3527	1.053
3528	0.849
3529	0.852
3530	0.979
3531	1.279
3532	0.842
3533	1.197
3534	0.775
3535	1.395
3536	1.464
3537	1.088
3538	1.338
3539	1.465
3540	1.237
3541	0.692
3542	1.343
3543	0.88
3544	0.209
3545	1.15
3546	1.319
3547	1.25
3548	0.902
3549	0.979
3550	1.024
3551	0.913
3552	0.989
3553	0.815
3554	0.251
3555	1.094
3556	1.103
3557	1.024
3558	0.719
3559	0.9
3560	0.746
3561	0.677
3562	0.894
3563	0.958
3564	1.05
3565	0.689
3566	0.514
3567	0.917
3568	0.75
3569	0.92
3570	0.873
3571	1.062
3572	1.233
3573	1.168
3574	1
3575	1.184
3576	0.554
3577	1.054
3578	1.046
3579	1.137
3580	0.463
3581	0.6
3582	0.537
3583	0.518
3584	0.843
3585	0.517
3586	0.869
3587	0.728
3588	0.593
3589	0.678
3590	0.727
3591	0.963
3592	1.111
3593	1.063
3594	1.323
3595	1.121
3596	1.195
3597	1.105
3598	1.3
3599	1.065
3600	0.947
3601	1.204
3602	1.184
3603	0.395
3604	1.157
3605	1.195
3606	1.015
3607	1.173
3608	0.859
3609	0.219
3610	0.78
3611	0.965
3612	0.927
3613	1.109
3614	1.091
3615	0.96
3616	1.275
3617	1.41
3618	1.134
3619	0.301
3620	1.328
3621	1.169
3622	0.906
3623	1.12
3624	1.382
3625	0.671
3626	0.686
3627	0.959
3628	0.987
3629	1.416
3630	0.951
3631	0.334
3632	0.184
3633	1.251
3634	0.825
3635	1.043
3636	0.985
3637	0.634
3638	0.873
3639	1.117
3640	0.899
3641	1.166
3642	1.36
3643	1.311
3644	1.286
3645	1.032
3646	1.388
3647	1.285
3648	1.243
3649	1.135
3650	0.851
3651	0.344
3652	1.276
3653	1.121
3654	1.155
3655	0.987
3656	1.228
3657	0.98
3658	1.175
3659	1.15
3660	1.459
3661	0.628
3662	1.102
3663	1.371
3664	0.782
3665	1.593
3666	1.095
3667	1.301
3668	1.313
3669	1.35
3670	0.842
3671	0.874
3672	1.529
3673	1.239
3674	1.283
3675	1.468
3676	0.81
3677	0.691
3678	1.055
3679	1.246
3680	0.674
3681	0.533
3682	0.955
3683	1.005
3684	0.963
3685	1.28
3686	1.125
3687	0.731
3688	0.382
3689	1.1
3690	0.794
3691	1.127
3692	1.368
3693	1.386
3694	1.209
3695	1.083
3696	1.376
3697	1.311
3698	0.931
3699	0.557
3700	1.058
3701	1.169
3702	1.259
3703	1.265
3704	0.857
3705	1.168
3706	0.956
3707	0.166
3708	1.22
3709	0.917
3710	1.264
3711	1.066
3712	0.764
3713	0.968
3714	0.241
3715	0.539
3716	0.693
3717	0.94
3718	1.03
3719	1.09
3720	0.852
3721	0.786
3722	0.726
3723	0.951
3724	1.173
3725	1.055
3726	0.962
3727	0.778
3728	0.584
3729	0.436
3730	0.231
3731	0.866
3732	0.581
3733	0.935
3734	0.915
3735	0.815
3736	1.087
3737	1.468
3738	1.109
3739	0.52
3740	1.098
3741	0.791
3742	0.747
3743	1.024
3744	0.956
3745	0.491
3746	0.873
3747	0.995
3748	0.63
3749	1.176
3750	1.106
3751	1.328
3752	1.163
3753	0.497
3754	1.163
3755	1.539
3756	1.47
3757	1.043
3758	1.366
3759	1.36
3760	0.385
3761	1.425
3762	0.287
3763	0.916
3764	1.084
3765	0.228
3766	0.238
3767	1.352
3768	1.56
3769	1.292
3770	0.689
3771	0.464
3772	1.017
3773	0.809
3774	1.062
3775	1.123
3776	0.775
3777	1.072
3778	1.376
3779	0.987
3780	1.337
3781	1.501
3782	0.981
3783	0.929
3784	0.73
3785	1.491
3786	1.172
3787	0.816
3788	1.37
3789	1.583
3790	1.477
3791	1.417
3792	0.761
3793	1.083
3794	1.046
3795	1.214
3796	1.46
3797	1.362
3798	1.025
3799	1.164
3800	1.411
3801	0.531
3802	1.103
3803	1.107
3804	1.144
3805	0.655
3806	1.178
3807	1.059
3808	1.288
3809	0.915
3810	1.352
3811	1.417
3812	0.666
3813	1.03
3814	1.393
3815	1.159
3816	1.383
3817	1.221
3818	1.081
3819	1.103
3820	1.264
3821	1.603
3822	0.686
3823	0.324
3824	0.868
3825	0.805
3826	0.113
3827	1.166
3828	0.899
3829	0.752
3830	1.232
3831	0.881
3832	1.035
3833	0.954
3834	1.046
3835	1.055
3836	1.141
3837	1.617
3838	1.16
3839	1.383
3840	0.628
3841	0.484
3842	0.793
3843	0.957
3844	0.667
3845	0.838
3846	0.456
3847	0.252
3848	0.783
3849	0.922
3850	1.061
3851	1.013
3852	1.295
3853	0.436
3854	1.342
3855	1.293
3856	0.884
3857	1.123
3858	1.235
3859	0.771
3860	0.012
3861	1.004
3862	1.319
3863	1.305
3864	1.349
3865	1.506
3866	1.498
3867	1.191
3868	1.192
3869	1.094
3870	1.402
3871	0.599
3872	1.239
3873	0.695
3874	0.85
3875	0.436
3876	1.022
3877	0.74
3878	0.932
3879	1.016
3880	1.176
3881	0.964
3882	0.801
3883	1.171
3884	1.079
3885	0.705
3886	0.449
3887	1.191
3888	1.219
3889	0.841
3890	0.809
3891	0.464
3892	1.037
3893	0.936
3894	0.751
3895	1.26
3896	0.989
3897	1.217
3898	1.336
3899	1.153
3900	0.785
3901	1.28
3902	1.068
3903	0.353
3904	0.744
3905	0.601
3906	0.832
3907	0.849
3908	0.022
3909	1.172
3910	1.071
3911	1.318
3912	0.639
3913	1.013
3914	1.373
3915	1.172
3916	0.806
3917	1.317
3918	1.108
3919	1.258
3920	0.492
3921	1.269
3922	1.124
3923	1.006
3924	1.176
3925	0.348
3926	1.111
3927	1.199
3928	0.385
3929	0.997
3930	1.027
3931	1.261
3932	1.109
3933	0.575
3934	0.825
3935	0.686
3936	0.871
3937	1.027
3938	0.925
3939	0.996
3940	1.063
3941	1.166
3942	1.134
3943	0.923
3944	0.813
3945	0.713
3946	1.062
3947	0.967
3948	1.39
3949	1.246
3950	1.162
3951	1.593
3952	1.411
3953	1.207
3954	1.01
3955	1.177
3956	1.183
3957	1.237
3958	0.488
3959	0.471
3960	1.231
3961	0.421
3962	1.014
3963	1.342
3964	1.162
3965	1.399
3966	1.266
3967	1.185
3968	0.899
3969	1.291
3970	1.029
3971	0.62
3972	1.014
3973	1.463
3974	1.174
3975	0.944
3976	0.352
3977	1.234
3978	1.261
3979	0.74
3980	0.678
3981	1.03
3982	1.297
3983	1.123
3984	1.126
3985	1.225
3986	0.89
3987	1.11
3988	0.995
3989	1.114
3990	1.104
3991	1.564
3992	0.737
3993	0.747
3994	1.133
3995	1.24
3996	0.917
3997	1.26
3998	0.546
3999	0.992
4000	1.021
4001	1.125
4002	0.93
4003	0.304
4004	0.738
4005	0.304
4006	1.038
4007	1.321
4008	1.127
4009	1.319
4010	1.216
4011	0.942
4012	1.275
4013	1.383
4014	0.863
4015	0.601
4016	1.152
4017	1.409
4018	1.222
4019	1.046
4020	0.961
4021	0.321
4022	0.259
4023	1.048
4024	1.206
4025	1.111
4026	1.007
4027	1.169
4028	1.239
4029	1.086
4030	1.564
4031	1.555
4032	1.099
4033	0.814
4034	1.469
4035	1.51
4036	1.389
4037	1.714
4038	0.658
4039	0.858
4040	1.089
4041	1.309
4042	1.056
4043	0.262
4044	0.901
4045	1.183
4046	1.282
4047	0.925
4048	0.785
4049	1.213
4050	0.903
4051	1.112
4052	1.12
4053	0.896
4054	1.241
4055	1.07
4056	0.418
4057	0.687
4058	0.74
4059	0.79
4060	1.006
4061	1.075
4062	1.168
4063	1.089
4064	1.18
4065	0.489
4066	1.15
4067	1.108
4068	1.084
4069	1.172
4070	1.329
4071	1.414
4072	0.451
4073	0.905
4074	0.353
4075	1.129
4076	0.88
4077	0.902
4078	1.117
4079	1.181
4080	0.982
4081	1.315
4082	1.015
4083	1.253
4084	0.983
4085	1.107
4086	1.178
4087	1.118
4088	1.072
4089	0.857
4090	0.825
4091	0.431
4092	1.131
4093	1.33
4094	0.661
4095	0.987
4096	1.105
4097	1.135
4098	1.377
4099	1.548
4100	1.319
4101	1.197
4102	1.444
4103	1.096
4104	0.436
4105	1.04
4106	0.823
4107	0.982
4108	1.086
4109	1.263
4110	0.867
4111	1.306
4112	1.301
4113	1.124
4114	1.147
4115	0.369
4116	1.097
4117	1.388
4118	1.299
4119	1.152
4120	1.168
4121	0.602
4122	0.889
4123	0.857
4124	1.142
4125	0.972
4126	0.788
4127	0.964
4128	0.818
4129	0.941
4130	0.622
4131	0.49
4132	1.26
4133	0.766
4134	0.14
4135	0.877
4136	0.718
4137	0.838
4138	0.903
4139	1.192
4140	1.007
4141	0.972
4142	1.089
4143	0.902
4144	1.049
4145	0.811
4146	0.45
4147	0.955
4148	0.593
4149	1.177
4150	1.052
4151	1.062
4152	1.045
4153	1.464
4154	1.426
4155	0.821
4156	0.309
4157	1.006
4158	1.026
4159	1.313
4160	1.268
4161	1.381
4162	1.266
4163	0.786
4164	1.066
4165	1.526
4166	1.125
4167	1.051
4168	1.162
4169	0.859
4170	0.99
4171	0.646
4172	1.336
4173	1.147
4174	0.87
4175	1.011
4176	0.848
4177	1.081
4178	1.021
4179	0.933
4180	0.656
4181	0.456
4182	1.044
4183	1.188
4184	0.758
4185	0.87
4186	0.655
4187	0.641
4188	0.849
4189	0.876
4190	1.188
4191	0.912
4192	1.341
4193	1.41
4194	1.134
4195	1.184
4196	0.96
4197	1.042
4198	1.333
4199	1.03
4200	0.708
4201	1.07
4202	1.202
4203	1.23
4204	1.322
4205	1.059
4206	1.083
4207	0.406
4208	0.645
4209	1.36
4210	1.249
4211	0.401
4212	1.096
4213	1.297
4214	0.405
4215	0.886
4216	0.582
4217	1.244
4218	1.342
4219	1.338
4220	1.485
4221	1.112
4222	0.94
4223	1.075
4224	0.691
4225	0.166
4226	1.267
4227	1.218
4228	1.366
4229	0.932
4230	1.295
4231	0.902
4232	0.429
4233	0.284
4234	0.943
4235	1.281
4236	1.187
4237	0.938
4238	0.922
4239	1.183
4240	1.006
4241	0.945
4242	0.19
4243	0.996
4244	0.861
4245	0.942
4246	1.345
4247	1.291
4248	0.827
4249	1.217
4250	1.171
4251	1.248
4252	1.266
4253	1.279
4254	1.215
4255	1.487
4256	1.17
4257	1.004
4258	1.088
4259	1.219
4260	1.008
4261	0.879
4262	1.232
4263	0.239
4264	1.057
4265	1.07
4266	1.112
4267	1.39
4268	1.231
4269	1.141
4270	1.192
4271	0.761
4272	0.193
4273	0.93
4274	0.808
4275	1.358
4276	1.043
4277	0.504
4278	0.973
4279	1.213
4280	1.239
4281	1.231
4282	0.77
4283	1.276
4284	1.097
4285	1.005
4286	1.155
4287	0.992
4288	0.916
4289	1.068
4290	1.184
4291	1.124
4292	0.228
4293	1.145
4294	0.373
4295	0.883
4296	1.057
4297	0.234
4298	1.089
4299	1.059
4300	0.807
4301	1.396
4302	1.011
4303	0.315
4304	1.05
4305	1.059
4306	0.848
4307	0.882
4308	1.051
4309	1.034
4310	0.345
4311	0.925
4312	1.023
4313	1.232
4314	1.23
4315	1.264
4316	0.548
4317	1.227
4318	1.208
4319	1.439
4320	1.184
4321	1.313
4322	1.28
4323	0.252
4324	1.524
4325	1.361
4326	1.229
4327	0.659
4328	0.36
4329	1.035
4330	1.042
4331	1.333
4332	1.207
4333	0.743
4334	0.999
4335	0.863
4336	0.334
4337	0.949
4338	1.124
4339	0.866
4340	0.536
4341	1.006
4342	0.993
4343	0.749
4344	1.142
4345	1.256
4346	1.077
4347	1.315
4348	1.328
4349	0.593
4350	1.118
4351	1.221
4352	0.863
4353	0.854
4354	1.251
4355	0.367
4356	0.905
4357	1.054
4358	1.006
4359	0.558
4360	0.982
4361	0.418
4362	0.819
4363	0.958
4364	0.97
4365	0.603
4366	0.459
4367	1.082
4368	1.161
4369	0.869
4370	1.134
4371	1.218
4372	1.23
4373	1.077
4374	0.95
4375	1.274
4376	1.201
4377	0.898
4378	1.291
4379	1.15
4380	0.644
4381	0.861
4382	0.693
4383	0.809
4384	0.239
4385	0.984
4386	1.145
4387	1.14
4388	1.128
4389	1.234
4390	0.908
4391	1.022
4392	1.302
4393	0.799
4394	1.529
4395	1.304
4396	1.125
4397	1.448
4398	1.281
4399	1.234
4400	0.877
4401	1.283
4402	0.889
4403	0.973
4404	1.157
4405	0.702
4406	0.958
4407	0.794
4408	1.006
4409	1.029
4410	0.973
4411	0.918
4412	1.023
4413	1.273
4414	1.267
4415	0.824
4416	0.909
4417	1.009
4418	0.845
4419	1.003
4420	0.891
4421	1.151
4422	0.98
4423	1.09
4424	1.101
4425	0.894
4426	1.297
4427	1.189
4428	1.185
4429	0.989
4430	1.104
4431	0.11
4432	1.319
4433	1.383
4434	1.061
4435	0.806
4436	0.694
4437	1.073
4438	1.063
4439	0.608
4440	0.993
4441	0.969
4442	1.128
4443	1.191
4444	0.395
4445	1.278
4446	0.855
4447	1.163
4448	0.979
4449	1.024
4450	1.007
4451	0.985
4452	0.449
4453	0.945
4454	0.865
4455	1.081
4456	0.913
4457	1.043
4458	0.659
4459	0.859
4460	0.804
4461	1.027
4462	1.016
4463	1.074
4464	0.721
4465	1.156
4466	0.865
4467	0.886
4468	1.295
4469	1.269
4470	0.884
4471	1.462
4472	1.094
4473	1.124
4474	0.664
4475	1.149
4476	0.59
4477	1.236
4478	0.921
4479	1.207
4480	1.306
4481	1.3
4482	0.481
4483	1.021
4484	1.049
4485	0.61
4486	0.267
4487	1.287
4488	1.296
4489	1.072
4490	0.978
4491	1.196
4492	1.357
4493	0.928
4494	0.972
4495	1.223
4496	1.161
4497	1.244
4498	0.577
4499	0.839
4500	1.229
4501	0.823
4502	0.841
4503	0.003
4504	1.127
4505	1.308
4506	1.022
4507	1.202
4508	0.958
4509	1.056
4510	0.975
4511	0.993
4512	1.045
4513	0.759
4514	0.752
4515	0.814
4516	0.6
4517	0.899
4518	1.166
4519	0.747
4520	1.054
4521	1.242
4522	1.125
4523	1.239
4524	1.183
4525	1.36
4526	0.994
4527	1.15
4528	1.158
4529	1.29
4530	1.042
4531	1.17
4532	0.764
4533	0.695
4534	0.763
4535	1.06
4536	0.9
4537	1.182
4538	1.032
4539	0.816
4540	0.553
4541	0.302
4542	0.329
4543	0.773
4544	0.603
4545	0.76
4546	0.99
4547	0.927
4548	1.124
4549	1.102
4550	0.592
4551	0.808
4552	0.819
4553	0.62
4554	0.923
4555	0.939
4556	0.977
4557	0.741
4558	1.01
4559	1.15
4560	1.106
4561	0.99
4562	1.186
4563	1.156
4564	1.032
4565	1.065
4566	0.653
4567	0.723
4568	0.49
4569	0.937
4570	0.975
4571	1.06
4572	1.052
4573	0.791
4574	0.066
4575	0.958
4576	1.123
4577	0.499
4578	0.754
4579	0.664
4580	0.93
4581	0.956
4582	0.553
4583	0.993
4584	0.801
4585	1.289
4586	1.303
4587	1.238
4588	0.954
4589	0.944
4590	0.829
4591	0.851
4592	1.039
4593	1.243
4594	1.009
4595	1.307
4596	1.286
4597	1.477
4598	0.349
4599	1.122
4600	1.349
4601	0.993
4602	0.989
4603	0.779
4604	1.045
4605	1.101
4606	0.981
4607	1.192
4608	0.457
4609	1.203
4610	1.049
4611	1.294
4612	1.302
4613	1.556
4614	1.308
4615	1.468
4616	0.786
4617	0.794
4618	1.26
4619	1.264
4620	0.849
4621	1.448
4622	0.74
4623	1.435
4624	1.141
4625	1.369
4626	1.567
4627	1.622
4628	1.347
4629	0.893
4630	1.267
4631	1.284
4632	1.047
4633	0.96
4634	1.287
4635	1.326
4636	1.366
4637	1.395
4638	1.084
4639	1.144
4640	1.121
4641	1.155
4642	1.087
4643	1.137
4644	1.334
4645	1.079
4646	1.159
4647	1.284
4648	1.251
4649	1.357
4650	0.388
4651	1.07
4652	0.949
4653	1.111
4654	0.143
4655	0.995
4656	0.849
4657	1.118
4658	0.957
4659	0.712
4660	0.621
4661	0.754
4662	0.919
4663	0.344
4664	0.747
4665	0.839
4666	0.942
4667	0.716
4668	0.77
4669	0.764
4670	0.684
4671	0.938
4672	1.317
4673	0.653
4674	1.043
4675	1.09
4676	1.18
4677	1.002
4678	1.116
4679	1.231
4680	0.928
4681	1.44
4682	1.151
4683	1.405
4684	1.243
4685	1.229
4686	0.34
4687	1.533
4688	1.09
4689	1.492
4690	1.239
4691	1.318
4692	1.385
4693	0.91
4694	0.461
4695	1.171
4696	1.241
4697	1.482
4698	1.382
4699	1.181
4700	1.199
4701	1.048
4702	1.32
4703	1.598
4704	1.264
4705	0.979
4706	1.253
4707	0.984
4708	0.814
4709	0.272
4710	0.937
4711	1.219
4712	1.157
4713	1.249
4714	1.252
4715	1.033
4716	1.122
4717	1.379
4718	1.288
4719	1.598
4720	0.733
4721	0.976
4722	0.62
4723	1.227
4724	0.72
4725	1.14
4726	1.299
4727	1.106
4728	0.635
4729	1.106
4730	0.943
4731	0.74
4732	0.281
4733	0.858
4734	0.632
4735	0.713
4736	0.736
4737	0.928
4738	0.897
4739	0.702
4740	1.222
4741	0.975
4742	0.568
4743	0.257
4744	0.761
4745	0.823
4746	1.226
4747	0.176
4748	1.211
4749	0.785
4750	0.711
4751	0.218
4752	0.959
4753	0.72
4754	0.937
4755	0.802
4756	0.745
4757	0.995
4758	0.807
4759	1.063
4760	0.663
4761	1.013
4762	0.536
4763	1.088
4764	0.818
4765	0.703
4766	1.131
4767	1.262
4768	1.227
4769	1.09
4770	0.69
4771	1.286
4772	0.934
4773	1.19
4774	1.066
4775	0.771
4776	0.835
4777	0.912
4778	0.812
4779	0.672
4780	0.766
4781	1.009
4782	0.531
4783	0.8
4784	0.941
4785	0.904
4786	0.92
4787	0.564
4788	0.852
4789	0.891
4790	0.617
4791	1.237
4792	1.274
4793	1.071
4794	0.835
4795	1.13
4796	0.85
4797	1.106
4798	0.902
4799	0.403
4800	0.634
4801	1.122
4802	0.424
4803	0.97
4804	1.168
4805	1.081
4806	1.093
4807	0.803
4808	0.784
4809	1.136
4810	1.148
4811	1.257
4812	0.683
4813	0.726
4814	1.123
4815	1.195
4816	0.976
4817	1.222
4818	1.731
4819	1.622
4820	1.614
4821	1.266
4822	1.006
4823	0.938
4824	1.183
4825	1.3
4826	0.857
4827	0.935
4828	1.22
4829	1.25
4830	0.194
4831	1.302
4832	0.943
4833	0.918
4834	0.821
4835	0.947
4836	0.835
4837	1.284
4838	1.107
4839	0.467
4840	0.692
4841	0.812
4842	0.624
4843	1.13
4844	0.907
4845	1.08
4846	1.386
4847	0.956
4848	0.437
4849	1.086
4850	0.726
4851	0.981
4852	0.866
4853	0.833
4854	1.18
4855	0.852
4856	0.37
4857	1.053
4858	0.232
4859	0.85
4860	0.861
4861	0.58
4862	0.763
4863	0.73
4864	0.942
4865	0.976
4866	1.06
4867	0.848
4868	0.841
4869	1.142
4870	1.136
4871	1.152
4872	1.35
4873	1.142
4874	1.015
4875	0.967
4876	1.203
4877	0.738
4878	0.758
4879	1.225
4880	0.59
4881	1.35
4882	0.252
4883	1.253
4884	1.224
4885	0.986
4886	1.03
4887	1.002
4888	1.026
4889	1.079
4890	0.603
4891	1.051
4892	0.928
4893	1.088
4894	1.103
4895	0.912
4896	0.831
4897	0.232
4898	1.116
4899	0.807
4900	1.098
4901	1.185
4902	1.08
4903	1.165
4904	1.227
4905	0.463
4906	1.003
4907	1.102
4908	0.829
4909	1.355
4910	1.201
4911	0.209
4912	0.595
4913	1.05
4914	1.054
4915	1.024
4916	1.02
4917	0.575
4918	0.866
4919	0.749
4920	1.015
4921	0.911
4922	0.883
4923	0.106
4924	1.076
4925	0.843
4926	1.212
4927	0.811
4928	1.234
4929	1.211
4930	0.916
4931	0.287
4932	1.297
4933	1.211
4934	1.238
4935	0.535
4936	1.146
4937	1.347
4938	1.16
4939	1.062
4940	1.101
4941	0.239
4942	1.344
4943	1.451
4944	1.234
4945	1.321
4946	1.058
4947	0.383
4948	0.339
4949	0.102
4950	0.943
4951	0.844
4952	1.245
4953	1.23
4954	1.163
4955	1.336
4956	0.93
4957	1.13
4958	0.906
4959	1.054
4960	0.975
4961	0.634
4962	1.073
4963	1.164
4964	0.862
4965	1.209
4966	1.022
4967	0.688
4968	1.13
4969	0.97
4970	1.294
4971	1.306
4972	0.655
4973	0.961
4974	0.316
4975	0.931
4976	0.958
4977	1.115
4978	1.057
4979	0.986
4980	0.953
4981	1.568
4982	1.2
4983	1.409
4984	0.746
4985	1.191
4986	1.185
4987	0.855
4988	0.913
4989	1.247
4990	1.307
4991	1.308
4992	1.131
4993	0.735
4994	0.579
4995	0.819
4996	0.687
4997	1.068
4998	1.046
4999	1.076
5000	1.07
5001	1.292
5002	0.861
5003	0.903
5004	1.216
5005	0.927
5006	1.286
5007	1.215
5008	0.905
5009	0.182
5010	0.889
5011	1.047
5012	1.052
5013	1.274
5014	1.179
5015	1.232
5016	1.097
5017	1.082
5018	1.54
5019	1.331
5020	1.215
5021	1.002
5022	0.746
5023	0.929
5024	1.071
5025	1.36
5026	1.048
5027	1.115
5028	1.114
5029	1.265
5030	1.361
5031	1.547
5032	1.205
5033	1.223
5034	0.967
5035	1.02
5036	1.146
5037	0.906
5038	1.236
5039	0.983
5040	0.985
5041	1.115
5042	1.176
5043	0.71
5044	1.417
5045	0.028
5046	0.54
5047	1.131
5048	0.557
5049	0.99
5050	1.133
5051	1.438
5052	1.085
5053	1.152
5054	1.022
5055	1.106
5056	0.955
5057	0.782
5058	0.866
5059	1.041
5060	0.973
5061	1.063
5062	1.099
5063	0.99
5064	1.388
5065	1.075
5066	0.981
5067	0.788
5068	1.258
5069	1.142
5070	1.094
5071	0.789
5072	0.978
5073	0.706
5074	0.524
5075	1.05
5076	0.932
5077	0.989
5078	1.12
5079	0.553
5080	1.261
5081	0.96
5082	0.864
5083	0.93
5084	1.023
5085	0.708
5086	0.126
5087	1.109
5088	0.903
5089	0.994
5090	0.954
5091	0.698
5092	1.125
5093	0.895
5094	0.905
5095	0.9
5096	1.019
5097	1.234
5098	0.837
5099	1.176
5100	1.098
5101	1.128
5102	1.226
5103	1.526
5104	1.026
5105	1.029
5106	1.03
5107	0.434
5108	1.127
5109	1.086
5110	1.121
5111	0.963
5112	0.194
5113	0.629
5114	1.292
5115	0.977
5116	1.016
5117	1.388
5118	0.886
5119	0.82
5120	0.905
5121	1.011
5122	1.295
5123	0.622
5124	1.257
5125	0.786
5126	0.14
5127	0.903
5128	0.513
5129	1.145
5130	0.725
5131	0.906
5132	0.862
5133	0.787
5134	1.025
5135	0.737
5136	1.135
5137	1.152
5138	0.799
5139	0.925
5140	0.747
5141	0.543
5142	0.965
5143	1.297
5144	0.879
5145	1.227
5146	1.22
5147	0.229
5148	1.047
5149	1.136
5150	0.026
5151	1.083
5152	1.218
5153	1.525
5154	1.69
5155	0.94
5156	1.09
5157	1.416
5158	1.442
5159	1.439
5160	1.518
5161	1.033
5162	1.184
5163	0.961
5164	1.452
5165	1.243
5166	1.376
5167	1.486
5168	1.435
5169	1.434
5170	1.61
5171	1.531
5172	1.535
5173	1.638
5174	0.532
5175	1.364
5176	1.546
5177	1.324
5178	0.993
5179	1.503
5180	1.247
5181	1.39
5182	1.096
5183	0.721
5184	0.141
5185	0.625
5186	1.164
5187	0.297
5188	1.183
5189	1.284
5190	0.809
5191	1
5192	1.048
5193	0.341
5194	0.281
5195	1.212
5196	1.257
5197	1.215
5198	0.947
5199	0.964
5200	1.115
5201	1.2
5202	0.931
5203	1.037
5204	1.21
5205	1.009
5206	1.063
5207	0.269
5208	0.423
5209	0.976
5210	1.139
5211	0.973
5212	1.089
5213	1.028
5214	1.136
5215	1.028
5216	1.239
5217	1.215
5218	1.02
5219	1.019
5220	0.945
5221	1.066
5222	1.186
5223	1.12
5224	0.653
5225	0.108
5226	0.998
5227	1.212
5228	0.779
5229	0.562
5230	0.833
5231	0.986
5232	0.866
5233	0.583
5234	0.823
5235	0.811
5236	0.847
5237	0.925
5238	0.806
5239	0.887
5240	1.094
5241	0.998
5242	1.186
5243	0.874
5244	0.47
5245	1.265
5246	0.724
5247	0.592
5248	0.881
5249	1.076
5250	0.959
5251	0.978
5252	0.731
5253	0.303
5254	1.027
5255	1.003
5256	1.011
5257	0.747
5258	0.723
5259	0.969
5260	0.891
5261	0.96
5262	0.759
5263	0.105
5264	0.899
5265	1.154
5266	1.086
5267	1.024
5268	1.002
5269	0.942
5270	0.874
5271	0.948
5272	0.82
5273	1.18
5274	1.107
5275	0.477
5276	0.054
5277	0.927
5278	0.848
5279	0.694
5280	0.691
5281	0.717
5282	1.028
5283	0.719
5284	0.351
5285	0.999
5286	0.734
5287	1.037
5288	1.069
5289	0.389
5290	0.976
5291	1.059
5292	1.044
5293	0.974
5294	1.119
5295	1.432
5296	0.997
5297	1.227
5298	0.94
5299	1.264
5300	1.301
5301	1.345
5302	0.562
5303	0.253
5304	0.87
5305	1.58
5306	1.282
5307	1.259
5308	1.006
5309	0.941
5310	1.187
5311	1.274
5312	0.556
5313	0.933
5314	0.843
5315	1.188
5316	1.259
5317	1.174
5318	1.045
5319	0.606
5320	0.871
5321	1.204
5322	1.172
5323	0.982
5324	1.02
5325	0.547
5326	0.927
5327	0.65
5328	0.456
5329	0.965
5330	1.146
5331	0.729
5332	0.741
5333	1.096
5334	0.298
5335	0.819
5336	1.051
5337	1.011
5338	1.141
5339	1.091
5340	0.985
5341	1.087
5342	0.453
5343	0.977
5344	0.76
5345	0.901
5346	1.17
5347	1.106
5348	0.823
5349	1.104
5350	0.595
5351	0.929
5352	1.244
5353	1.271
5354	1.214
5355	1.225
5356	1.108
5357	1.268
5358	1.25
5359	1.006
5360	1.135
5361	1.045
5362	1.087
5363	0.635
5364	0.479
5365	0.322
5366	0.817
5367	0.646
5368	0.306
5369	0.598
5370	0.922
5371	0.905
5372	0.858
5373	0.889
5374	0.965
5375	1.329
5376	1.258
5377	0.344
5378	0.736
5379	0.803
5380	0.999
5381	1.013
5382	0.75
5383	0.902
5384	0.491
5385	1.126
5386	1.194
5387	1.043
5388	1.101
5389	0.711
5390	1.142
5391	0.558
5392	0.668
5393	0.872
5394	0.934
5395	0.83
5396	1.051
5397	1.048
5398	1.003
5399	0.487
5400	1.007
5401	0.94
5402	0.897
5403	1.191
5404	0.817
5405	1.122
5406	1.234
5407	0.858
5408	1.062
5409	1.19
5410	1.014
5411	0.92
5412	0.956
5413	0.781
5414	1.205
5415	1.296
5416	0.937
5417	1.129
5418	0.574
5419	1.045
5420	1.396
5421	1.168
5422	1.174
5423	1.316
5424	1.058
5425	1.045
5426	0.755
5427	0.939
5428	0.766
5429	1.139
5430	1.235
5431	0.927
5432	0.965
5433	1.235
5434	0.922
5435	0.623
5436	1.115
5437	0.971
5438	1.054
5439	0.224
5440	0.798
5441	0.275
5442	1.07
5443	0.308
5444	0.889
5445	0.942
5446	0.983
5447	1.12
5448	1.05
5449	1.089
5450	0.629
5451	1.089
5452	1.089
5453	1.362
5454	1.301
5455	1.048
5456	1.361
5457	1.137
5458	0.916
5459	1.097
5460	1.106
5461	1.107
5462	1.157
5463	0.904
5464	0.628
5465	0.403
5466	0.915
5467	0.346
5468	1.265
5469	0.907
5470	0.868
5471	0.868
5472	1.011
5473	0.855
5474	0.778
5475	0.975
5476	1.035
5477	1.085
5478	0.965
5479	1.075
5480	0.734
5481	0.846
5482	0.395
5483	1.05
5484	1.113
5485	1.113
5486	1.094
5487	0.889
5488	0.49
5489	0.743
5490	0.791
5491	0.757
5492	1.009
5493	0.465
5494	0.908
5495	0.807
5496	0.6
5497	0.43
5498	0.922
5499	0.952
5500	1.098
5501	1.335
5502	0.915
5503	1.034
5504	1.058
5505	0.967
5506	0.846
5507	1.054
5508	0.804
5509	0.619
5510	0.504
5511	0.749
5512	1.179
5513	1.305
5514	1.251
5515	0.56
5516	0.885
5517	1.116
5518	0.515
5519	0.132
5520	1.09
5521	1.374
5522	1.16
5523	1.066
5524	1.259
5525	1.275
5526	0.524
5527	1.272
5528	1.114
5529	0.949
5530	1
5531	0.702
5532	1.044
5533	0.972
5534	1.124
5535	0.825
5536	0.922
5537	1.056
5538	0.763
5539	0.736
5540	0.893
5541	1.068
5542	1.242
5543	1.142
5544	0.801
5545	0.667
5546	0.247
5547	0.691
5548	1.117
5549	1.277
5550	1.092
5551	1.579
5552	1.221
5553	1.093
5554	1.406
5555	1.414
5556	1.061
5557	1.087
5558	0.806
5559	1.066
5560	0.568
5561	0.976
5562	1.174
5563	1.24
5564	1.177
5565	1.186
5566	0.243
5567	0.915
5568	1.12
5569	1.15
5570	1.143
5571	1.173
5572	1.075
5573	1.202
5574	1.3
5575	0.911
5576	1.062
5577	1.031
5578	0.982
5579	0.572
5580	1.113
5581	1.412
5582	1.086
5583	1.088
5584	1.127
5585	1.244
5586	1.041
5587	1.09
5588	0.929
5589	0.805
5590	0.733
5591	0.363
5592	1.157
5593	0.972
5594	1.213
5595	1.199
5596	0.773
5597	0.771
5598	1.251
5599	1.165
5600	1.027
5601	1.033
5602	1.067
5603	0.761
5604	0.623
5605	0.982
5606	0.69
5607	0.767
5608	0.752
5609	0.299
5610	1.038
5611	0.984
5612	1.021
5613	0.945
5614	0.971
5615	1.057
5616	0.682
5617	0.74
5618	0.945
5619	0.94
5620	0.947
5621	1.253
5622	0.953
5623	0.484
5624	0.722
5625	0.997
5626	1.152
5627	1.086
5628	1.233
5629	1.024
5630	1.132
5631	1.328
5632	1.187
5633	0.536
5634	1.052
5635	0.888
5636	1.061
5637	0.494
5638	0.721
5639	0.981
5640	0.935
5641	1.093
5642	0.564
5643	0.8
5644	0.889
5645	0.935
5646	0.767
5647	1.059
5648	0.999
5649	0.95
5650	0.961
5651	1.009
5652	1.045
5653	1.031
5654	0.782
5655	0.486
5656	0.178
5657	0.989
5658	0.805
5659	0.6
5660	0.961
5661	1.195
5662	1.215
5663	1.344
5664	1.099
5665	0.367
5666	1.008
5667	1.073
5668	1.116
5669	1.116
5670	1.07
5671	1.22
5672	1.17
5673	1.007
5674	0.415
5675	0.841
5676	0.967
5677	0.471
5678	0.457
5679	0.964
5680	1.158
5681	1.254
5682	1.293
5683	1.109
5684	0.987
5685	0.406
5686	1.052
5687	1.022
5688	0.493
5689	1.133
5690	1.283
5691	1.055
5692	1.033
5693	0.944
5694	0.698
5695	0.355
5696	1.158
5697	0.984
5698	0.926
5699	0.789
5700	0.568
5701	0.958
5702	0.471
5703	1.089
5704	0.941
5705	0.789
5706	0.894
5707	1.064
5708	0.947
5709	1.101
5710	0.837
5711	0.998
5712	0.945
5713	0.784
5714	1.043
5715	1.385
5716	1.349
5717	1.02
5718	0.898
5719	0.93
5720	0.686
5721	0.966
5722	0.886
5723	0.488
5724	1
5725	1.091
5726	0.957
5727	1.173
5728	1.014
5729	1.066
5730	0.746
5731	0.709
5732	1.011
5733	1.086
5734	1.014
5735	0.165
5736	1.282
5737	1.139
5738	1.006
5739	1.116
5740	1.142
5741	1.331
5742	0.899
5743	1.052
5744	1.213
5745	1.263
5746	1.069
5747	0.92
5748	1.346
5749	1.318
5750	1.204
5751	1.219
5752	0.769
5753	1.127
5754	1.042
5755	1.225
5756	1.435
5757	0.852
5758	1.208
5759	1.148
5760	1.57
5761	1.246
5762	1.406
5763	0.528
5764	0.979
5765	0.996
5766	1.07
5767	1.152
5768	1.294
5769	1.18
5770	1.118
5771	1.117
5772	0.884
5773	1.003
5774	0.938
5775	1.148
5776	1.209
5777	1.11
5778	0.698
5779	1.002
5780	1.046
5781	0.939
5782	0.503
5783	1.066
5784	0.971
5785	0.662
5786	1.093
5787	1.134
5788	0.855
5789	1.112
5790	1.115
5791	1.016
5792	0.666
5793	1.037
5794	1.385
5795	1.116
5796	1.146
5797	0.934
5798	1.208
5799	0.555
5800	0.366
5801	1.073
5802	1.049
5803	1.092
5804	1.01
5805	0.778
5806	0.37
5807	0.84
5808	0.944
5809	0.777
5810	1.197
5811	1.155
5812	1.164
5813	1.232
5814	1.179
5815	1.18
5816	0.875
5817	1.223
5818	1.183
5819	0.92
5820	0.969
5821	0.81
5822	1.116
5823	1.33
5824	1.212
5825	1.15
5826	1.236
5827	1.116
5828	1.191
5829	1.259
5830	1.035
5831	1.027
5832	0.911
5833	1.255
5834	1.212
5835	1.436
5836	1.29
5837	1.43
5838	0.835
5839	1.295
5840	1.72
5841	1.36
5842	0.352
5843	0.724
5844	1.319
5845	1.315
5846	1.591
5847	1.503
5848	1.122
5849	1.552
5850	1.454
5851	1.231
5852	0.59
5853	0.995
5854	1.467
5855	1.295
5856	1.197
5857	0.844
5858	1.324
5859	0.999
5860	1.076
5861	0.824
5862	0.949
5863	1.081
5864	0.937
5865	0.529
5866	1.021
5867	0.957
5868	1.092
5869	0.596
5870	0.735
5871	0.598
5872	0.891
5873	1.178
5874	1.249
5875	1.211
5876	1.008
5877	1.09
5878	1.407
5879	1.294
5880	1.423
5881	1.313
5882	1.341
5883	1.423
5884	1.397
5885	1.379
5886	1.219
5887	1.234
5888	0.822
5889	0.847
5890	1.097
5891	1.344
5892	1.388
5893	1.001
5894	1.025
5895	1.181
5896	0.62
5897	1.047
5898	1.112
5899	0.957
5900	1.034
5901	1.284
5902	1.276
5903	1.313
5904	1.102
5905	1.106
5906	1.132
5907	1.249
5908	1.154
5909	1.34
5910	0.741
5911	1.184
5912	0.908
5913	1.244
5914	1.344
5915	1.328
5916	0.725
5917	1.126
5918	0.831
5919	0.774
5920	0.882
5921	0.071
5922	1.091
5923	1.101
5924	1.075
5925	1.088
5926	1.119
5927	1.158
5928	1.011
5929	1.016
5930	1.129
5931	0.664
5932	0.849
5933	1.063
5934	1.171
5935	1.304
5936	1.108
5937	1.258
5938	1.367
5939	0.386
5940	1.13
5941	1.048
5942	1.229
5943	1.238
5944	1.35
5945	1.423
5946	1.168
5947	1.117
5948	1.177
5949	1.247
5950	0.944
5951	1.161
5952	0.272
5953	1.212
5954	0.92
5955	0.733
5956	1.035
5957	1.109
5958	1.066
5959	1.102
5960	0.919
5961	1.09
5962	1.152
5963	0.92
5964	1.04
5965	1.186
5966	0.58
5967	0.232
5968	0.463
5969	1.225
5970	1.113
5971	1.192
5972	1.207
5973	1.012
5974	0.736
5975	0.922
5976	1.028
5977	0.392
5978	1.026
5979	1.393
5980	1.157
5981	1.031
5982	0.884
5983	1.153
5984	1.107
5985	0.794
5986	1.105
5987	1.293
5988	1.481
5989	1.296
5990	0.986
5991	1.206
5992	0.398
5993	0.976
5994	0.968
5995	0.669
5996	0.578
5997	1.004
5998	1.067
5999	1.175
6000	1.336
6001	1.265
6002	1.131
6003	1.201
6004	1.46
6005	1.448
6006	1.12
6007	1.256
6008	0.539
6009	1.069
6010	1.204
6011	1.182
6012	1.186
6013	1.122
6014	1.156
6015	0.477
6016	0.107
6017	0.291
6018	0.706
6019	1.147
6020	1.059
6021	0.48
6022	0.978
6023	0.998
6024	0.899
6025	1.2
6026	1.248
6027	1.445
6028	1.524
6029	1.268
6030	0.629
6031	1.35
6032	0.39
6033	1.21
6034	1.293
6035	1.358
6036	1.55
6037	1.675
6038	0.314
6039	1.403
6040	1.46
6041	1.298
6042	1.447
6043	0.612
6044	1.232
6045	0.801
6046	1.088
6047	0.814
6048	1.145
6049	1.096
6050	1.246
6051	1.297
6052	1.371
6053	1.236
6054	0.643
6055	1.134
6056	1.086
6057	0.534
6058	1.106
6059	1.136
6060	1.026
6061	1.094
6062	1.158
6063	1.018
6064	0.751
6065	0.886
6066	0.551
6067	1.119
6068	0.432
6069	1.15
6070	0.741
6071	0.975
6072	0.438
6073	1.171
6074	0.951
6075	1.171
6076	0.805
6077	1.189
6078	1.21
6079	1.214
6080	1.235
6081	1.275
6082	1.396
6083	1.006
6084	0.514
6085	0.952
6086	0.76
6087	0.766
6088	0.438
6089	1.19
6090	1.431
6091	1.322
6092	1.279
6093	1.333
6094	1.101
6095	1.012
6096	0.943
6097	1.412
6098	1.185
6099	0.959
6100	1.05
6101	0.375
6102	0.746
6103	1.246
6104	1.125
6105	1.152
6106	1.224
6107	1.022
6108	1.017
6109	1.039
6110	0.098
6111	1.354
6112	1.318
6113	1.011
6114	1.218
6115	1.204
6116	1.182
6117	1.19
6118	1.045
6119	0.663
6120	1.094
6121	1.199
6122	1.293
6123	1.082
6124	0.741
6125	1.38
6126	1.263
6127	1.209
6128	1.148
6129	1.343
6130	1.295
6131	1.264
6132	0.84
6133	1.33
6134	1.076
6135	1.266
6136	1.22
6137	1.157
6138	1.044
6139	1.371
6140	1.146
6141	1.194
6142	1.335
6143	1.218
6144	0.772
6145	1.085
6146	0.672
6147	1.013
6148	0.495
6149	1.434
6150	1.424
6151	0.626
6152	0.424
6153	0.721
6154	1.018
6155	1.227
6156	1.092
6157	1.495
6158	1.585
6159	1.209
6160	1.272
6161	1.118
6162	1.198
6163	0.812
6164	1.367
6165	0.969
6166	0.93
6167	1.158
6168	1.15
6169	0.718
6170	0.899
6171	1.011
6172	1.055
6173	0.651
6174	1.048
6175	0.685
6176	0.972
6177	0.69
6178	1.109
6179	0.612
6180	0.945
6181	1.294
6182	1.117
6183	1.477
6184	1.275
6185	1.365
6186	1.432
6187	1.481
6188	1.577
6189	1.234
6190	1.026
6191	1.005
6192	1.542
6193	1.342
6194	1.658
6195	1.305
6196	1.157
6197	1.023
6198	0.547
6199	1.149
6200	1.464
6201	1.048
6202	1.065
6203	0.995
6204	1.319
6205	1.507
6206	1.268
6207	1.535
6208	0.9
6209	0.754
6210	1.033
6211	0.954
6212	0.992
6213	1.293
6214	1.165
6215	0.769
6216	0.863
6217	1.332
6218	1.21
6219	1.223
6220	1.051
6221	1.032
6222	1.08
6223	1.124
6224	0.873
6225	1.126
6226	0.995
6227	0.759
6228	1.151
6229	1.312
6230	1.153
6231	1
6232	1.001
6233	1.343
6234	0.849
6235	0.908
6236	0.388
6237	0.077
6238	1.313
6239	1.051
6240	0.957
6241	1.313
6242	1.226
6243	0.92
6244	0.924
6245	0.847
6246	0.965
6247	0.953
6248	1.156
6249	0.923
6250	1.128
6251	1.012
6252	0.843
6253	1.101
6254	1.228
6255	1.216
6256	0.341
6257	1.14
6258	0.989
6259	0.941
6260	1.066
6261	1.356
6262	0.728
6263	0.796
6264	1.065
6265	1.171
6266	1.116
6267	1.315
6268	1.338
6269	1.349
6270	1.22
6271	0.75
6272	1.153
6273	1.219
6274	1.344
6275	0.601
6276	1.209
6277	1.459
6278	1.235
6279	0.822
6280	0.802
6281	1.343
6282	1.594
6283	1.255
6284	1.356
6285	1.249
6286	1.134
6287	1.504
6288	1.254
6289	1.597
6290	1.277
6291	1.324
6292	1.04
6293	0.856
6294	0.888
6295	0.046
6296	1.409
6297	1.26
6298	1.252
6299	1.226
6300	1.509
6301	1.392
6302	1.281
6303	1.225
6304	1.233
6305	1.308
6306	0.161
6307	0.554
6308	0.771
6309	0.565
6310	0.948
6311	1.164
6312	1.252
6313	0.892
6314	1.038
6315	1.159
6316	1.08
6317	1.026
6318	1.178
6319	1.184
6320	1.109
6321	0.854
6322	0.295
6323	1.264
6324	0.554
6325	0.806
6326	0.981
6327	1.01
6328	1.175
6329	1.271
6330	1.292
6331	1.555
6332	1.349
6333	1.19
6334	0.681
6335	0.828
6336	1.289
6337	0.973
6338	1.083
6339	1.419
6340	1.068
6341	1.031
6342	1.037
6343	1.178
6344	1.475
6345	0.704
6346	1.363
6347	1.273
6348	1.151
6349	1.077
6350	1.237
6351	1.378
6352	1.318
6353	1.166
6354	0.919
6355	1.211
6356	1.273
6357	0.981
6358	1.178
6359	1.22
6360	1.073
6361	1.258
6362	0.127
6363	1.042
6364	0.892
6365	1.031
6366	1.21
6367	1.184
6368	1.162
6369	1.327
6370	0.119
6371	0.601
6372	0.797
6373	1.079
6374	1.034
6375	1.075
6376	1.164
6377	0.567
6378	0.65
6379	0.754
6380	1.108
6381	1.041
6382	1.227
6383	0.974
6384	1.057
6385	1.063
6386	0.749
6387	0.249
6388	0.979
6389	0.968
6390	0.923
6391	0.937
6392	0.936
6393	0.913
6394	1.322
6395	1.071
6396	1.245
6397	1.197
6398	1.069
6399	1.264
6400	1.057
6401	0.887
6402	0.973
6403	0.776
6404	0.848
6405	0.79
6406	1.272
6407	0.89
6408	1.073
6409	1.273
6410	0.974
6411	1.106
6412	1.008
6413	1.112
6414	0.976
6415	0.907
6416	1.188
6417	0.548
6418	1.206
6419	0.983
6420	0.815
6421	0.882
6422	0.91
6423	1.137
6424	1.151
6425	1.115
6426	1.001
6427	0.956
6428	1.106
6429	1.251
6430	1.039
6431	1.321
6432	0.744
6433	1.302
6434	1.365
6435	1.117
6436	1.346
6437	1.088
6438	0.589
6439	1.065
6440	0.92
6441	1.042
6442	0.816
6443	0.035
6444	0.884
6445	1.149
6446	1.281
6447	0.525
6448	0.812
6449	1.092
6450	0.196
6451	1.236
6452	0.58
6453	1.194
6454	1.353
6455	1.405
6456	0.791
6457	1.162
6458	1.373
6459	1.238
6460	1.156
6461	1.101
6462	0.9
6463	0.881
6464	0.625
6465	0.781
6466	0.943
6467	1.014
6468	0.858
6469	0.991
6470	0.947
6471	0.935
6472	0.726
6473	0.617
6474	0.785
6475	0.535
6476	1.104
6477	1.006
6478	0.923
6479	0.83
6480	1.005
6481	1.284
6482	1.036
6483	0.988
6484	1.17
6485	1.068
6486	1.038
6487	0.687
6488	1.176
6489	0.842
6490	1.007
6491	0.763
6492	0.796
6493	1.078
6494	1.08
6495	1.093
6496	1.459
6497	1.44
6498	1.058
6499	1.323
6500	1.218
6501	1.023
6502	0.714
6503	1.205
6504	1.172
6505	1.276
6506	1.136
6507	1.027
6508	0.826
6509	1.171
6510	1.16
6511	1.373
6512	1.064
6513	0.934
6514	0.641
6515	0.79
6516	0.793
6517	0.929
6518	0.673
6519	0.524
6520	0.805
6521	0.775
6522	1.138
6523	1.191
6524	1.108
6525	1.043
6526	0.672
6527	0.792
6528	0.899
6529	0.683
6530	0.937
6531	0.995
6532	0.619
6533	1.109
6534	1.174
6535	1.074
6536	0.832
6537	0.446
6538	1.074
6539	1.143
6540	0.885
6541	1.222
6542	0.922
6543	0.637
6544	0.808
6545	0.714
6546	0.697
6547	0.904
6548	0.857
6549	1.257
6550	1.086
6551	1.364
6552	1.157
6553	1.4
6554	1.145
6555	0.134
6556	1.274
6557	1.244
6558	1.255
6559	1.051
6560	1.088
6561	1.325
6562	1.093
6563	0.299
6564	0.171
6565	1.05
6566	0.658
6567	0.505
6568	0.935
6569	0.958
6570	0.299
6571	0.406
6572	0.787
6573	0.702
6574	0.79
6575	0.935
6576	1.078
6577	1.082
6578	1.051
6579	1.093
6580	0.922
6581	0.641
6582	1.017
6583	1.038
6584	1.244
6585	0.852
6586	1.088
6587	0.937
6588	1.097
6589	0.604
6590	0.983
6591	0.752
6592	0.347
6593	1.103
6594	1.271
6595	0.574
6596	0.998
6597	0.531
6598	1.227
6599	1.106
6600	0.95
6601	1.202
6602	1.105
6603	0.733
6604	0.696
6605	1.001
6606	0.996
6607	0.797
6608	0.945
6609	1.054
6610	1.003
6611	0.536
6612	0.571
6613	0.679
6614	0.942
6615	0.845
6616	0.535
6617	0.949
6618	1.084
6619	1.117
6620	1.03
6621	0.767
6622	1.095
6623	1.038
6624	1.052
6625	0.943
6626	0.998
6627	0.79
6628	0.335
6629	1.4
6630	0.902
6631	0.794
6632	1.097
6633	1.088
6634	1.099
6635	1.103
6636	1.157
6637	1.128
6638	1.149
6639	1.107
6640	0.537
6641	0.773
6642	1.222
6643	1.073
6644	1.04
6645	0.394
6646	0.16
6647	1.105
6648	1.116
6649	0.937
6650	1.046
6651	1.216
6652	0.427
6653	1.261
6654	0.932
6655	1.086
6656	1.282
6657	1.112
6658	1.086
6659	1.237
6660	1.044
6661	0.838
6662	0.839
6663	1.088
6664	1.304
6665	0.806
6666	1.037
6667	1.223
6668	0.993
6669	1.251
6670	0.936
6671	1.056
6672	1.308
6673	1.454
6674	0.87
6675	1.54
6676	1.43
6677	0.726
6678	0.266
6679	0.957
6680	1.207
6681	1.164
6682	0.372
6683	1.552
6684	1.257
6685	0.862
6686	0.951
6687	1.206
6688	1.26
6689	1.152
6690	1.175
6691	1.357
6692	1.504
6693	1.18
6694	1.294
6695	1.337
6696	1.201
6697	1.124
6698	1.284
6699	0.86
6700	0.059
6701	1.432
6702	1.332
6703	1.049
6704	1.045
6705	1.527
6706	1.3
6707	1.191
6708	0.602
6709	1.1
6710	1.057
6711	1.229
6712	1.044
6713	0.955
6714	0.935
6715	0.532
6716	1.044
6717	1.108
6718	0.858
6719	0.962
6720	0.737
6721	0.524
6722	1.037
6723	1.13
6724	1.098
6725	0.712
6726	1.156
6727	1.145
6728	1.132
6729	1.376
6730	0.799
6731	1.3
6732	1.079
6733	1.078
6734	0.935
6735	0.869
6736	1.371
6737	1.03
6738	0.885
6739	0.885
6740	0.628
6741	0.275
6742	0.631
6743	1.14
6744	0.69
6745	0.825
6746	0.831
6747	1.042
6748	1.02
6749	0.939
6750	0.943
6751	0.823
6752	0.908
6753	0.874
6754	0.937
6755	1.244
6756	1.087
6757	1.168
6758	1.054
6759	1.11
6760	1.244
6761	0.819
6762	0.772
6763	0.138
6764	0.901
6765	0.997
6766	1.098
6767	0.686
6768	0.785
6769	0.859
6770	0.916
6771	0.968
6772	1.018
6773	1.095
6774	0.843
6775	0.929
6776	1.044
6777	0.823
6778	0.788
6779	0.743
6780	1.127
6781	1.054
6782	0.699
6783	0.901
6784	0.868
6785	1.305
6786	1.271
6787	1.03
6788	0.96
6789	0.713
6790	0.727
6791	1.004
6792	1.163
6793	1.107
6794	0.797
6795	0.472
6796	0.922
6797	1.066
6798	0.882
6799	1.052
6800	0.456
6801	1.176
6802	0.908
6803	1.111
6804	1.408
6805	0.669
6806	1.079
6807	1.134
6808	1
6809	0.995
6810	0.027
6811	0.569
6812	1.073
6813	0.714
6814	1.009
6815	0.628
6816	1.246
6817	1.202
6818	0.47
6819	0.568
6820	0.797
6821	1.144
6822	1.303
6823	1.444
6824	0.505
6825	1.173
6826	0.276
6827	1.121
6828	0.99
6829	1.361
6830	1.033
6831	0.914
6832	1.152
6833	1.184
6834	1.328
6835	1.161
6836	1.243
6837	1.036
6838	0.927
6839	1.081
6840	1.063
6841	0.905
6842	0.595
6843	1.388
6844	1.571
6845	1.111
6846	0.86
6847	1.234
6848	0.469
6849	0.984
6850	1.328
6851	0.747
6852	1.099
6853	1.287
6854	1.22
6855	1.141
6856	1.054
6857	1.07
6858	1.318
6859	1.517
6860	1.32
6861	1.068
6862	1.097
6863	1.169
6864	1.354
6865	1.284
6866	0.503
6867	0.94
6868	0.106
6869	0.67
6870	0.914
6871	1.214
6872	1.074
6873	1.004
6874	1.039
6875	1.17
6876	1.187
6877	1.317
6878	1.013
6879	0.644
6880	1.046
6881	1.063
6882	1.152
6883	1.327
6884	0.833
6885	0.513
6886	1.229
6887	0.743
6888	0.85
6889	0.99
6890	0.85
6891	1.377
6892	1.221
6893	1.309
6894	1.097
6895	1.163
6896	1.005
6897	1.341
6898	1.433
6899	1.195
6900	1.004
6901	0.804
6902	1.089
6903	0.901
6904	0.722
6905	0.556
6906	1.142
6907	0.845
6908	0.725
6909	0.881
6910	0.88
6911	0.889
6912	0.929
6913	0.924
6914	0.572
6915	1.016
6916	1.051
6917	0.826
6918	1.322
6919	1.098
6920	0.597
6921	0.382
6922	1.074
6923	0.776
6924	0.433
6925	0.162
6926	0.881
6927	0.902
6928	0.875
6929	0.935
6930	0.791
6931	0.589
6932	0.819
6933	0.507
6934	0.922
6935	0.972
6936	0.866
6937	1.029
6938	1.246
6939	0.62
6940	0.904
6941	1.063
6942	1.313
6943	0.967
6944	0.945
6945	0.618
6946	0.978
6947	1.003
6948	1.097
6949	1.006
6950	1.047
6951	1.176
6952	1.232
6953	0.976
6954	1.001
6955	0.981
6956	0.671
6957	1.015
6958	0.057
6959	1.105
6960	1.089
6961	1.122
6962	0.212
6963	1.334
6964	1.169
6965	1.172
6966	1.202
6967	1.351
6968	0.472
6969	1.066
6970	0.556
6971	1.334
6972	0.869
6973	0.752
6974	1.129
6975	1.21
6976	0.943
6977	0.99
6978	1.269
6979	1.025
6980	0.116
6981	0.588
6982	0.261
6983	1.148
6984	0.692
6985	0.597
6986	0.813
6987	0.562
6988	1.138
6989	1.082
6990	1.138
6991	1.148
6992	1.154
6993	1.242
6994	1.43
6995	1
6996	0.085
6997	1.078
6998	1.062
6999	0.985
7000	1.138
7001	1.258
7002	0.838
7003	1.14
7004	1.177
7005	1.171
7006	0.496
7007	0.926
7008	1.431
7009	1.001
7010	1.146
7011	0.967
7012	1.125
7013	0.879
7014	0.811
7015	0.605
7016	0.993
7017	1.256
7018	1.082
7019	1.117
7020	0.91
7021	1.313
7022	0.971
7023	0.818
7024	1.254
7025	1.115
7026	0.813
7027	0.875
7028	0.976
7029	1.015
7030	0.982
7031	1.209
7032	1.173
7033	1.127
7034	0.824
7035	1.178
7036	0.868
7037	1.018
7038	1.058
7039	1.078
7040	0.914
7041	1.141
7042	1.257
7043	1.28
7044	0.659
7045	0.895
7046	1.081
7047	1.074
7048	1.209
7049	0.394
7050	0.682
7051	1.311
7052	1.145
7053	1.342
7054	0.678
7055	1.047
7056	0.637
7057	0.885
7058	1.041
7059	0.883
7060	0.399
7061	0.915
7062	1.256
7063	0.711
7064	0.793
7065	1.052
7066	1.114
7067	0.883
7068	0.625
7069	0.844
7070	0.874
7071	0.545
7072	0.752
7073	0.686
7074	0.641
7075	0.566
7076	0.881
7077	0.834
7078	0.919
7079	0.535
7080	1.057
7081	1.067
7082	1.053
7083	1.234
7084	0.854
7085	1.191
7086	1.152
7087	1.263
7088	1.282
7089	1.118
7090	0.957
7091	1.15
7092	1.105
7093	1.187
7094	0.213
7095	1.163
7096	1.016
7097	1.023
7098	1.111
7099	0.286
7100	1.22
7101	1.238
7102	0.946
7103	0.93
7104	0.203
7105	1.221
7106	1.261
7107	1.121
7108	1.157
7109	1.167
7110	1.331
7111	1.282
7112	1.092
7113	1.332
7114	0.996
7115	0.746
7116	1.331
7117	1.166
7118	1.128
7119	0.97
7120	1.121
7121	1.194
7122	1.026
7123	1.251
7124	1.144
7125	1.131
7126	1.564
7127	0.735
7128	0.53
7129	1.181
7130	1.004
7131	1.028
7132	1.066
7133	0.774
7134	0.025
7135	0.672
7136	0.73
7137	0.847
7138	1.033
7139	1.024
7140	0.888
7141	0.933
7142	1.071
7143	0.802
7144	1.153
7145	1.141
7146	0.956
7147	0.786
7148	0.691
7149	0.663
7150	0.904
7151	0.733
7152	0.231
7153	1.103
7154	0.959
7155	0.968
7156	1.111
7157	1.228
7158	0.848
7159	1.051
7160	1.104
7161	0.954
7162	1.013
7163	0.527
7164	1.092
7165	0.884
7166	1.242
7167	1.101
7168	1.039
7169	0.575
7170	1.358
7171	0.937
7172	0.895
7173	0.613
7174	1.041
7175	1.004
7176	0.46
7177	0.962
7178	0.837
7179	1.132
7180	1.075
7181	0.863
7182	1.124
7183	1.016
7184	1.167
7185	0.972
7186	0.943
7187	0.656
7188	0.904
7189	0.873
7190	0.904
7191	1.134
7192	1.023
7193	1.123
7194	1.133
7195	0.779
7196	1.289
7197	0.4
7198	0.757
7199	0.857
7200	0.672
7201	0.963
7202	1.036
7203	0.978
7204	1.054
7205	1.217
7206	1
7207	0.578
7208	1.002
7209	0.724
7210	0.975
7211	1.265
7212	1.303
7213	1.16
7214	1.124
7215	1.158
7216	0.647
7217	1.214
7218	0.397
7219	0.172
7220	1.275
7221	1.329
7222	0.909
7223	1.28
7224	1.204
7225	0.934
7226	0.799
7227	1.156
7228	0.132
7229	1.16
7230	1.349
7231	1.135
7232	1.089
7233	1.338
7234	1.021
7235	1.013
7236	1.063
7237	0.489
7238	1.011
7239	1.183
7240	0.884
7241	1.136
7242	1.252
7243	1.128
7244	0.96
7245	0.892
7246	1.11
7247	0.819
7248	1.02
7249	1.157
7250	1.363
7251	1.138
7252	1.04
7253	0.976
7254	0.963
7255	0.127
7256	0.878
7257	0.731
7258	1.057
7259	0.381
7260	1.108
7261	1.213
7262	1.149
7263	1.188
7264	0.955
7265	0.205
7266	1.016
7267	1.183
7268	1.299
7269	1.182
7270	0.578
7271	1.066
7272	1.065
7273	1.142
7274	0.077
7275	1.125
7276	1.234
7277	0.752
7278	0.673
7279	1.104
7280	1.215
7281	1.337
7282	1.007
7283	0.951
7284	1.116
7285	0.934
7286	0.148
7287	1.008
7288	1.182
7289	0.525
7290	0.789
7291	0.937
7292	0.992
7293	0.59
7294	0.78
7295	0.906
7296	0.67
7297	0.563
7298	0.877
7299	0.721
7300	0.707
7301	0.877
7302	0.964
7303	0.98
7304	0.918
7305	0.959
7306	0.845
7307	0.955
7308	0.48
7309	0.781
7310	0.538
7311	0.886
7312	0.895
7313	0.704
7314	1.146
7315	1.222
7316	0.843
7317	0.81
7318	0.914
7319	0.9
7320	0.705
7321	0.977
7322	0.971
7323	0.882
7324	0.659
7325	0.791
7326	0.885
7327	0.981
7328	1.076
7329	0.787
7330	0.598
7331	1.473
7332	1.181
7333	0.915
7334	1.063
7335	0.948
7336	0.849
7337	0.686
7338	1.234
7339	0.416
7340	0.89
7341	0.933
7342	1.227
7343	1.121
7344	1.158
7345	1.145
7346	1.278
7347	1.333
7348	1.31
7349	1.241
7350	1.046
7351	1.255
7352	0.488
7353	1.499
7354	1.367
7355	0.806
7356	1.099
7357	1.397
7358	1.342
7359	0.908
7360	1.178
7361	1.123
7362	0.646
7363	0.499
7364	0.834
7365	0.782
7366	0.375
7367	0.844
7368	0.827
7369	0.966
7370	0.732
7371	1.037
7372	0.727
7373	1.026
7374	0.958
7375	1.144
7376	0.817
7377	0.968
7378	0.288
7379	1.039
7380	0.3
7381	1.117
7382	0.966
7383	0.913
7384	1.138
7385	1.071
7386	1.174
7387	1.175
7388	0.798
7389	1.086
7390	1.108
7391	0.377
7392	0.906
7393	1.02
7394	1.199
7395	1.088
7396	1.075
7397	0.89
7398	0.924
7399	1.003
7400	1.009
7401	1.082
7402	1.065
7403	1.304
7404	1.244
7405	1.188
7406	1.185
7407	1.398
7408	0.856
7409	1.095
7410	1.184
7411	0.94
7412	1.165
7413	0.929
7414	0.879
7415	0.923
7416	1.058
7417	0.969
7418	1.257
7419	1.32
7420	1.024
7421	1.479
7422	1.113
7423	1.293
7424	1.262
7425	1.425
7426	1.12
7427	0.862
7428	1.144
7429	1.483
7430	1.176
7431	1.416
7432	1.031
7433	1.063
7434	1.091
7435	0.852
7436	1.212
7437	1.315
7438	0.994
7439	0.795
7440	1.174
7441	1.278
7442	1.15
7443	0.598
7444	1.21
7445	1.16
7446	1.084
7447	0.856
7448	1.215
7449	0.714
7450	1.06
7451	0.587
7452	1.154
7453	0.894
7454	1.087
7455	1.105
7456	1.054
7457	0.576
7458	0.451
7459	0.992
7460	1.044
7461	1.115
7462	0.887
7463	0.929
7464	1.348
7465	1.266
7466	0.972
7467	1.082
7468	1.328
7469	0.756
7470	1.185
7471	1.323
7472	1.1
7473	1.148
7474	0.903
7475	0.864
7476	0.728
7477	0.711
7478	1.183
7479	1.144
7480	0.585
7481	0.998
7482	1.228
7483	0.958
7484	1.104
7485	1.593
7486	1.202
7487	1.403
7488	1.74
7489	1.139
7490	1.428
7491	1.549
7492	1.25
7493	0.472
7494	1.148
7495	1.467
7496	1.105
7497	0.872
7498	0.077
7499	0.942
7500	0.95
7501	0.216
7502	1.132
7503	1.366
7504	1.055
7505	0.862
7506	0.745
7507	0.832
7508	1.017
7509	0.863
7510	1.036
7511	1.329
7512	1.086
7513	0.855
7514	0.792
7515	1.18
7516	0.573
7517	1.167
7518	1.218
7519	0.992
7520	0.899
7521	1.226
7522	0.599
7523	0.761
7524	0.456
7525	1.089
7526	0.992
7527	1.099
7528	1.048
7529	0.702
7530	0.709
7531	0.952
7532	0.906
7533	0.881
7534	0.685
7535	1.059
7536	1.12
7537	1.073
7538	1.103
7539	0.976
7540	1.307
7541	1.22
7542	0.505
7543	0.434
7544	0.899
7545	0.59
7546	0.636
7547	0.882
7548	0.784
7549	0.644
7550	0.93
7551	1.081
7552	1.12
7553	1.124
7554	1.369
7555	1.102
7556	1.119
7557	1.328
7558	1.175
7559	0.971
7560	1.057
7561	1.25
7562	1.4
7563	1.267
7564	1.356
7565	1.377
7566	1.337
7567	0.942
7568	1.325
7569	1.345
7570	1.101
7571	1.302
7572	0.242
7573	1.181
7574	1.059
7575	1.078
7576	0.914
7577	0.539
7578	0.985
7579	0.746
7580	0.375
7581	0.112
7582	1.195
7583	1.116
7584	1.215
7585	1.187
7586	0.602
7587	1.054
7588	1.157
7589	1.008
7590	1.316
7591	0.363
7592	1.135
7593	0.507
7594	0.985
7595	1.32
7596	1.035
7597	1.104
7598	0.998
7599	1.172
7600	1.193
7601	0.373
7602	1.071
7603	1.02
7604	1.059
7605	1.307
7606	1.288
7607	1.138
7608	0.998
7609	1.214
7610	1.316
7611	1.273
7612	1.182
7613	0.768
7614	0.67
7615	1.022
7616	1.371
7617	1.456
7618	1.608
7619	1.346
7620	1.128
7621	1.302
7622	1.128
7623	1.075
7624	1.32
7625	0.86
7626	1.466
7627	0.67
7628	1.155
7629	1.325
7630	1.012
7631	1.148
7632	0.817
7633	0.704
7634	1.139
7635	1.28
7636	1.214
7637	1.264
7638	1.056
7639	0.914
7640	1.349
7641	1.313
7642	0.984
7643	0.732
7644	1.333
7645	1.129
7646	1.207
7647	1.09
7648	0.792
7649	1.268
7650	1.509
7651	1.067
7652	1.351
7653	0.659
7654	0.906
7655	0.67
7656	0.386
7657	0.782
7658	1
7659	0.818
7660	0.942
7661	0.939
7662	1.118
7663	1.033
7664	0.922
7665	0.998
7666	0.688
7667	1.031
7668	1.061
7669	0.292
7670	0.739
7671	0.262
7672	0.998
7673	0.893
7674	0.866
7675	0.955
7676	0.673
7677	0.774
7678	0.87
7679	0.974
7680	1.06
7681	1.204
7682	0.732
7683	1.248
7684	1.186
7685	0.451
7686	0.876
7687	0.39
7688	0.922
7689	1.02
7690	0.877
7691	0.67
7692	0.966
7693	0.943
7694	1.023
7695	1.073
7696	1.16
7697	1.049
7698	1.11
7699	0.992
7700	0.647
7701	1.332
7702	0.876
7703	1.1
7704	0.661
7705	0.925
7706	1.129
7707	1.223
7708	0.58
7709	0.702
7710	1.055
7711	1.237
7712	1.033
7713	1.199
7714	0.96
7715	1.088
7716	1.068
7717	1.044
7718	1.234
7719	1.364
7720	1.391
7721	1.527
7722	1.548
7723	1.044
7724	1.075
7725	1.192
7726	1.45
7727	1.62
7728	1.653
7729	1.61
7730	0.898
7731	1.432
7732	1.024
7733	1.278
7734	0.774
7735	1.19
7736	0.36
7737	1.127
7738	0.628
7739	0.773
7740	0.73
7741	1.004
7742	1.415
7743	1.127
7744	1.442
7745	1.398
7746	1.067
7747	1.432
7748	1.502
7749	0.969
7750	1.092
7751	1.292
7752	1.354
7753	0.884
7754	0.501
7755	0.936
7756	0.957
7757	0.863
7758	0.768
7759	1.147
7760	0.55
7761	1.345
7762	0.82
7763	1.348
7764	0.644
7765	1.016
7766	0.884
7767	0.964
7768	1.117
7769	1.17
7770	1.34
7771	1.388
7772	1.412
7773	1.154
7774	1.407
7775	1.212
7776	1.039
7777	1.09
7778	0.312
7779	1.034
7780	1.075
7781	1.055
7782	0.902
7783	0.181
7784	0.63
7785	1.009
7786	1.14
7787	0.99
7788	1.039
7789	1.207
7790	0.891
7791	1.142
7792	1.242
7793	1.23
7794	1.003
7795	1.028
7796	0.274
7797	1.168
7798	1.342
7799	1.194
7800	1.366
7801	1.268
7802	1.248
7803	1.468
7804	1.304
7805	1.436
7806	1.055
7807	1.019
7808	1.063
7809	1.153
7810	1.178
7811	1.189
7812	1.261
7813	0.653
7814	0.376
7815	1.109
7816	1.002
7817	0.978
7818	1.371
7819	1.417
7820	1.132
7821	0.961
7822	1.366
7823	0.885
7824	0.75
7825	0.626
7826	1.189
7827	1.137
7828	1.298
7829	1.348
7830	0.4
7831	1.193
7832	1.252
7833	1.002
7834	1.384
7835	0.888
7836	0.854
7837	0.481
7838	0.799
7839	1.232
7840	1.255
7841	1.413
7842	1.096
7843	0.873
7844	0.964
7845	0.644
7846	0.519
7847	1.178
7848	0.896
7849	1.108
7850	1.147
7851	1.193
7852	0.942
7853	1.3
7854	1.355
7855	1.406
7856	1.424
7857	0.339
7858	0.494
7859	0.766
7860	0.77
7861	1.075
7862	0.946
7863	1.327
7864	0.787
7865	1.093
7866	0.834
7867	1.044
7868	1.224
7869	1.249
7870	1.27
7871	1.203
7872	1.293
7873	1.398
7874	0.912
7875	1.155
7876	1.017
7877	0.993
7878	0.804
7879	1.028
7880	0.729
7881	0.927
7882	0.859
7883	1.021
7884	0.921
7885	0.807
7886	1.084
7887	1.129
7888	1.21
7889	1.229
7890	1.039
7891	1.122
7892	1.249
7893	1.156
7894	1.021
7895	0.869
7896	1.166
7897	0.622
7898	1.048
7899	1.132
7900	0.234
7901	1.03
7902	1.274
7903	1.006
7904	1.083
7905	0.882
7906	1.409
7907	1.113
7908	1.274
7909	1.356
7910	1.474
7911	1.019
7912	1.318
7913	1.087
7914	1.294
7915	1.365
7916	1.282
7917	1.087
7918	1.194
7919	1.106
7920	1.27
7921	1.148
7922	1.504
7923	1.449
7924	0.513
7925	0.983
7926	0.783
7927	1.19
7928	0.908
7929	0.878
7930	0.247
7931	1.107
7932	0.956
7933	1.015
7934	0.789
7935	0.318
7936	1.01
7937	0.802
7938	1.133
7939	1.076
7940	0.966
7941	1.119
7942	0.84
7943	0.942
7944	0.721
7945	0.884
7946	0.913
7947	1.136
7948	0.985
7949	0.656
7950	0.799
7951	0.394
7952	1.176
7953	0.963
7954	0.997
7955	0.799
7956	0.729
7957	0.858
7958	0.979
7959	1.07
7960	1.066
7961	0.273
7962	0.863
7963	0.975
7964	1.204
7965	0.79
7966	0.991
7967	0.857
7968	1.017
7969	0.897
7970	1.239
7971	0.446
7972	0.96
7973	0.597
7974	1.229
7975	1.031
7976	1.027
7977	1.173
7978	1.471
7979	1.444
7980	1.16
\.


--
-- Name: treering_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('treering_id_seq', 7980, true);


--
-- Data for Name: trees; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY trees (id, girth, height, volume) FROM stdin;
1	8.3	70	10.3
2	8.6	65	10.3
3	8.8	63	10.2
4	10.5	72	16.4
5	10.7	81	18.8
6	10.8	83	19.7
7	11	66	15.6
8	11	75	18.2
9	11.1	80	22.6
10	11.2	75	19.9
11	11.3	79	24.2
12	11.4	76	21
13	11.4	76	21.4
14	11.7	69	21.3
15	12	75	19.1
16	12.9	74	22.2
17	12.9	85	33.8
18	13.3	86	27.4
19	13.7	71	25.7
20	13.8	64	24.9
21	14	78	34.5
22	14.2	80	31.7
23	14.5	74	36.3
24	16	72	38.3
25	16.3	77	42.6
26	17.3	81	55.4
27	17.5	82	55.7
28	17.9	80	58.3
29	18	80	51.5
30	18	80	51
31	20.6	87	77
\.


--
-- Name: trees_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('trees_id_seq', 31, true);


--
-- Data for Name: ucbadmissions; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY ucbadmissions (id, admit, gender, dept, freq) FROM stdin;
1	Admitted	Male	A	512
2	Rejected	Male	A	313
3	Admitted	Female	A	89
4	Rejected	Female	A	19
5	Admitted	Male	B	353
6	Rejected	Male	B	207
7	Admitted	Female	B	17
8	Rejected	Female	B	8
9	Admitted	Male	C	120
10	Rejected	Male	C	205
11	Admitted	Female	C	202
12	Rejected	Female	C	391
13	Admitted	Male	D	138
14	Rejected	Male	D	279
15	Admitted	Female	D	131
16	Rejected	Female	D	244
17	Admitted	Male	E	53
18	Rejected	Male	E	138
19	Admitted	Female	E	94
20	Rejected	Female	E	299
21	Admitted	Male	F	22
22	Rejected	Male	F	351
23	Admitted	Female	F	24
24	Rejected	Female	F	317
\.


--
-- Name: ucbadmissions_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('ucbadmissions_id_seq', 24, true);


--
-- Data for Name: ukdriverdeaths; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY ukdriverdeaths (id, x) FROM stdin;
1	1687
2	1508
3	1507
4	1385
5	1632
6	1511
7	1559
8	1630
9	1579
10	1653
11	2152
12	2148
13	1752
14	1765
15	1717
16	1558
17	1575
18	1520
19	1805
20	1800
21	1719
22	2008
23	2242
24	2478
25	2030
26	1655
27	1693
28	1623
29	1805
30	1746
31	1795
32	1926
33	1619
34	1992
35	2233
36	2192
37	2080
38	1768
39	1835
40	1569
41	1976
42	1853
43	1965
44	1689
45	1778
46	1976
47	2397
48	2654
49	2097
50	1963
51	1677
52	1941
53	2003
54	1813
55	2012
56	1912
57	2084
58	2080
59	2118
60	2150
61	1608
62	1503
63	1548
64	1382
65	1731
66	1798
67	1779
68	1887
69	2004
70	2077
71	2092
72	2051
73	1577
74	1356
75	1652
76	1382
77	1519
78	1421
79	1442
80	1543
81	1656
82	1561
83	1905
84	2199
85	1473
86	1655
87	1407
88	1395
89	1530
90	1309
91	1526
92	1327
93	1627
94	1748
95	1958
96	2274
97	1648
98	1401
99	1411
100	1403
101	1394
102	1520
103	1528
104	1643
105	1515
106	1685
107	2000
108	2215
109	1956
110	1462
111	1563
112	1459
113	1446
114	1622
115	1657
116	1638
117	1643
118	1683
119	2050
120	2262
121	1813
122	1445
123	1762
124	1461
125	1556
126	1431
127	1427
128	1554
129	1645
130	1653
131	2016
132	2207
133	1665
134	1361
135	1506
136	1360
137	1453
138	1522
139	1460
140	1552
141	1548
142	1827
143	1737
144	1941
145	1474
146	1458
147	1542
148	1404
149	1522
150	1385
151	1641
152	1510
153	1681
154	1938
155	1868
156	1726
157	1456
158	1445
159	1456
160	1365
161	1487
162	1558
163	1488
164	1684
165	1594
166	1850
167	1998
168	2079
169	1494
170	1057
171	1218
172	1168
173	1236
174	1076
175	1174
176	1139
177	1427
178	1487
179	1483
180	1513
181	1357
182	1165
183	1282
184	1110
185	1297
186	1185
187	1222
188	1284
189	1444
190	1575
191	1737
192	1763
\.


--
-- Name: ukdriverdeaths_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('ukdriverdeaths_id_seq', 192, true);


--
-- Data for Name: ukgas; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY ukgas (id, x) FROM stdin;
1	160.1
2	129.7
3	84.8
4	120.1
5	160.1
6	124.9
7	84.8
8	116.9
9	169.7
10	140.9
11	89.7
12	123.3
13	187.3
14	144.1
15	92.9
16	120.1
17	176.1
18	147.3
19	89.7
20	123.3
21	185.7
22	155.3
23	99.3
24	131.3
25	200.1
26	161.7
27	102.5
28	136.1
29	204.9
30	176.1
31	112.1
32	140.9
33	227.3
34	195.3
35	115.3
36	142.5
37	244.9
38	214.5
39	118.5
40	153.7
41	244.9
42	216.1
43	188.9
44	142.5
45	301
46	196.9
47	136.1
48	267.3
49	317
50	230.5
51	152.1
52	336.2
53	371.4
54	240.1
55	158.5
56	355.4
57	449.9
58	286.6
59	179.3
60	403.4
61	491.5
62	321.8
63	177.7
64	409.8
65	593.9
66	329.8
67	176.1
68	483.5
69	584.3
70	395.4
71	187.3
72	485.1
73	669.2
74	421
75	216.1
76	509.1
77	827.7
78	467.5
79	209.7
80	542.7
81	840.5
82	414.6
83	217.7
84	670.8
85	848.5
86	437
87	209.7
88	701.2
89	925.3
90	443.4
91	214.5
92	683.6
93	917.3
94	515.5
95	224.1
96	694.8
97	989.4
98	477.1
99	233.7
100	730
101	1087
102	534.7
103	281.8
104	787.6
105	1163.9
106	613.1
107	347.4
108	782.8
\.


--
-- Name: ukgas_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('ukgas_id_seq', 108, true);


--
-- Data for Name: usaccdeaths; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY usaccdeaths (id, x) FROM stdin;
1	9007
2	8106
3	8928
4	9137
5	10017
6	10826
7	11317
8	10744
9	9713
10	9938
11	9161
12	8927
13	7750
14	6981
15	8038
16	8422
17	8714
18	9512
19	10120
20	9823
21	8743
22	9129
23	8710
24	8680
25	8162
26	7306
27	8124
28	7870
29	9387
30	9556
31	10093
32	9620
33	8285
34	8466
35	8160
36	8034
37	7717
38	7461
39	7767
40	7925
41	8623
42	8945
43	10078
44	9179
45	8037
46	8488
47	7874
48	8647
49	7792
50	6957
51	7726
52	8106
53	8890
54	9299
55	10625
56	9302
57	8314
58	8850
59	8265
60	8796
61	7836
62	6892
63	7791
64	8192
65	9115
66	9434
67	10484
68	9827
69	9110
70	9070
71	8633
72	9240
\.


--
-- Name: usaccdeaths_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('usaccdeaths_id_seq', 72, true);


--
-- Data for Name: usarrests; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY usarrests (id, murder, assault, urbanpop, rape) FROM stdin;
1	13.2	236	58	21.2
2	10	263	48	44.5
3	8.1	294	80	31
4	8.8	190	50	19.5
5	9	276	91	40.6
6	7.9	204	78	38.7
7	3.3	110	77	11.1
8	5.9	238	72	15.8
9	15.4	335	80	31.9
10	17.4	211	60	25.8
11	5.3	46	83	20.2
12	2.6	120	54	14.2
13	10.4	249	83	24
14	7.2	113	65	21
15	2.2	56	57	11.3
16	6	115	66	18
17	9.7	109	52	16.3
18	15.4	249	66	22.2
19	2.1	83	51	7.8
20	11.3	300	67	27.8
21	4.4	149	85	16.3
22	12.1	255	74	35.1
23	2.7	72	66	14.9
24	16.1	259	44	17.1
25	9	178	70	28.2
26	6	109	53	16.4
27	4.3	102	62	16.5
28	12.2	252	81	46
29	2.1	57	56	9.5
30	7.4	159	89	18.8
31	11.4	285	70	32.1
32	11.1	254	86	26.1
33	13	337	45	16.1
34	0.8	45	44	7.3
35	7.3	120	75	21.4
36	6.6	151	68	20
37	4.9	159	67	29.3
38	6.3	106	72	14.9
39	3.4	174	87	8.3
40	14.4	279	48	22.5
41	3.8	86	45	12.8
42	13.2	188	59	26.9
43	12.7	201	80	25.5
44	3.2	120	80	22.9
45	2.2	48	32	11.2
46	8.5	156	63	20.7
47	4	145	73	26.2
48	5.7	81	39	9.3
49	2.6	53	66	10.8
50	6.8	161	60	15.6
\.


--
-- Name: usarrests_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('usarrests_id_seq', 50, true);


--
-- Data for Name: usjudgeratings; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY usjudgeratings (id, cont, intg, dmnr, dilg, cfmg, deci, prep, fami, oral, writ, phys, rten) FROM stdin;
1	5.7	7.9	7.7	7.3	7.1	7.4	7.1	7.1	7.1	7	8.3	7.8
2	6.8	8.9	8.8	8.5	7.8	8.1	8	8	7.8	7.9	8.5	8.7
3	7.2	8.1	7.8	7.8	7.5	7.6	7.5	7.5	7.3	7.4	7.9	7.8
4	6.8	8.8	8.5	8.8	8.3	8.5	8.7	8.7	8.4	8.5	8.8	8.7
5	7.3	6.4	4.3	6.5	6	6.2	5.7	5.7	5.1	5.3	5.5	4.8
6	6.2	8.8	8.7	8.5	7.9	8	8.1	8	8	8	8.6	8.6
7	10.6	9	8.9	8.7	8.5	8.5	8.5	8.5	8.6	8.4	9.1	9
8	7	5.9	4.9	5.1	5.4	5.9	4.8	5.1	4.7	4.9	6.8	5
9	7.3	8.9	8.9	8.7	8.6	8.5	8.4	8.4	8.4	8.5	8.8	8.8
10	8.2	7.9	6.7	8.1	7.9	8	7.9	8.1	7.7	7.8	8.5	7.9
11	7	8	7.6	7.4	7.3	7.5	7.1	7.2	7.1	7.2	8.4	7.7
12	6.5	8	7.6	7.2	7	7.1	6.9	7	7	7.1	6.9	7.2
13	6.7	8.6	8.2	6.8	6.9	6.6	7.1	7.3	7.2	7.2	8.1	7.7
14	7	7.5	6.4	6.8	6.5	7	6.6	6.8	6.3	6.6	6.2	6.5
15	6.5	8.1	8	8	7.9	8	7.9	7.8	7.8	7.8	8.4	8
16	7.3	8	7.4	7.7	7.3	7.3	7.3	7.2	7.1	7.2	8	7.6
17	8	7.6	6.6	7.2	6.5	6.5	6.8	6.7	6.4	6.5	6.9	6.7
18	7.7	7.7	6.7	7.5	7.4	7.5	7.1	7.3	7.1	7.3	8.1	7.4
19	8.3	8.2	7.4	7.8	7.7	7.7	7.7	7.8	7.5	7.6	8	8
20	9.6	6.9	5.7	6.6	6.9	6.6	6.2	6	5.8	5.8	7.2	6
21	7.1	8.2	7.7	7.1	6.6	6.6	6.7	6.7	6.8	6.8	7.5	7.3
22	7.6	7.3	6.9	6.8	6.7	6.8	6.4	6.3	6.3	6.3	7.4	6.6
23	6.6	7.4	6.2	6.2	5.4	5.7	5.8	5.9	5.2	5.8	4.7	5.2
24	6.2	8.3	8.1	7.7	7.4	7.3	7.3	7.3	7.2	7.3	7.8	7.6
25	7.5	8.7	8.5	8.6	8.5	8.4	8.5	8.5	8.4	8.4	8.7	8.7
26	7.8	8.9	8.7	8.9	8.7	8.8	8.9	9	8.8	8.9	9	9
27	7.1	8.5	8.3	8	7.9	7.9	7.8	7.8	7.8	7.7	8.3	8.2
28	7.5	9	8.9	8.7	8.4	8.5	8.4	8.3	8.3	8.3	8.8	8.7
29	7.5	8.1	7.7	8.2	8	8.1	8.2	8.4	8	8.1	8.4	8.1
30	7.1	9.2	9	9	8.4	8.6	9.1	9.1	8.9	9	8.9	9.2
31	6.6	7.4	6.9	8.4	8	7.9	8.2	8.4	7.7	7.9	8.4	7.5
32	8.4	8	7.9	7.9	7.8	7.8	7.6	7.4	7.4	7.4	8.1	7.9
33	6.9	8.5	7.8	8.5	8.1	8.2	8.4	8.5	8.1	8.3	8.7	8.3
34	7.3	8.9	8.8	8.7	8.4	8.5	8.5	8.5	8.4	8.4	8.8	8.8
35	7.7	6.2	5.1	5.6	5.6	5.9	5.6	5.6	5.3	5.5	6.3	5.3
36	8.5	8.3	8.1	8.3	8.4	8.2	8.2	8.1	7.9	8	8	8.2
37	6.9	8.3	8	8.1	7.9	7.9	7.9	7.7	7.6	7.7	8.1	8
38	6.5	8.2	7.7	7.8	7.6	7.7	7.7	7.7	7.5	7.6	8.5	7.7
39	8.3	7.3	7	6.8	7	7.1	6.7	6.7	6.7	6.7	8	7
40	8.3	8.2	7.8	8.3	8.4	8.3	7.7	7.6	7.5	7.7	8.1	7.9
41	9	7	5.9	7	7	7.2	6.9	6.9	6.5	6.6	7.6	6.6
42	7.1	8.4	8.4	7.7	7.5	7.7	7.8	8.2	8	8.1	8.3	8.1
43	8.6	7.4	7	7.5	7.5	7.7	7.4	7.2	6.9	7	7.8	7.1
\.


--
-- Name: usjudgeratings_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('usjudgeratings_id_seq', 43, true);


--
-- Data for Name: uspersonalexpenditure; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY uspersonalexpenditure (id, "1940", "1945", "1950", "1955", "1960") FROM stdin;
1	22.2	44.5	59.6	73.2	86.8
2	10.5	15.5	29	36.5	46.2
3	3.53	5.76	9.71	14	21.1
4	1.04	1.98	2.45	3.4	5.4
5	0.341	0.974	1.8	2.6	3.64
\.


--
-- Name: uspersonalexpenditure_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('uspersonalexpenditure_id_seq', 5, true);


--
-- Data for Name: uspop; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY uspop (id, x) FROM stdin;
1	3.93
2	5.31
3	7.24
4	9.64
5	12.9
6	17.1
7	23.2
8	31.4
9	39.8
10	50.2
11	62.9
12	76
13	92
14	105.7
15	122.8
16	131.7
17	151.3
18	179.3
19	203.2
\.


--
-- Name: uspop_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('uspop_id_seq', 19, true);


--
-- Data for Name: vadeaths; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY vadeaths (id, rural_male, rural_female, urban_male, urban_female) FROM stdin;
1	11.7	8.7	15.4	8.4
2	18.1	11.7	24.3	13.6
3	26.9	20.3	37	19.3
4	41	30.9	54.6	35.1
5	66	54.3	71.1	50
\.


--
-- Name: vadeaths_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('vadeaths_id_seq', 5, true);


--
-- Data for Name: volcano; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY volcano (id, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61) FROM stdin;
1	100	100	101	101	101	101	101	100	100	100	101	101	102	102	102	102	103	104	103	102	101	101	102	103	104	104	105	107	107	107	108	108	110	110	110	110	110	110	110	110	108	108	108	107	107	108	108	108	108	108	107	107	107	107	106	106	105	105	104	104	103
2	101	101	102	102	102	102	102	101	101	101	102	102	103	103	103	103	104	105	104	103	102	102	103	105	106	106	107	109	110	110	110	110	111	112	113	114	116	115	114	112	110	110	110	109	108	109	109	109	109	108	108	108	108	107	107	106	106	105	105	104	104
3	102	102	103	103	103	103	103	102	102	102	103	103	104	104	104	104	105	106	105	104	104	105	106	107	108	110	111	113	114	115	114	115	116	118	119	119	121	121	120	118	116	114	112	111	110	110	110	110	109	109	109	109	108	108	107	107	106	106	105	105	104
4	103	103	104	104	104	104	104	103	103	103	103	104	104	104	105	105	106	107	106	106	106	107	108	110	111	114	117	118	117	119	120	121	122	124	125	126	127	127	126	124	122	120	117	116	113	111	110	110	110	109	109	109	109	108	108	107	107	106	106	105	105
5	104	104	105	105	105	105	105	104	104	103	104	104	105	105	105	106	107	108	108	108	109	110	112	114	115	118	121	122	121	123	128	131	129	130	131	131	132	132	131	130	128	126	122	119	115	114	112	110	110	110	110	110	109	109	108	107	107	107	106	106	105
6	105	105	105	106	106	106	106	105	105	104	104	105	105	106	106	107	109	110	110	112	113	115	116	118	119	121	124	126	126	129	134	137	137	136	136	135	136	136	136	135	133	129	126	122	118	116	115	113	111	110	110	110	110	109	108	108	108	107	107	106	106
7	105	106	106	107	107	107	107	106	106	105	105	106	106	107	108	109	111	113	114	116	118	120	121	122	123	125	127	129	130	135	140	142	142	142	141	140	140	140	140	139	137	134	129	125	121	118	116	114	112	110	110	110	111	110	109	109	108	108	107	107	106
8	106	107	107	108	108	108	108	107	107	106	106	107	108	108	110	113	115	117	118	120	122	124	125	127	128	129	131	134	135	141	146	147	146	146	145	144	144	144	143	142	141	139	135	130	126	122	118	116	114	112	112	113	112	110	110	109	109	108	108	107	106
9	107	108	108	109	109	109	109	108	108	107	108	108	110	111	113	116	118	120	123	125	127	129	130	132	134	135	137	139	142	146	152	152	151	151	150	149	148	148	146	145	143	142	139	135	131	127	122	119	117	115	115	115	114	112	110	110	109	109	108	107	107
10	108	109	109	110	110	110	110	109	109	108	110	110	113	116	118	120	122	125	127	129	133	136	138	140	141	142	148	150	151	156	158	159	158	157	158	158	154	151	149	148	146	144	141	137	134	130	125	122	120	118	117	117	115	113	111	110	110	109	108	107	107
11	109	110	110	111	111	111	111	110	110	110	112	114	118	121	123	125	127	129	133	137	141	143	145	146	148	150	154	156	159	161	162	163	164	163	164	164	160	157	154	151	149	146	144	140	137	133	129	126	124	121	119	118	116	114	112	111	110	109	108	107	106
12	110	110	111	113	112	111	113	112	112	114	116	119	121	124	127	129	133	138	143	146	149	149	151	153	154	157	159	160	163	165	166	167	168	168	168	168	166	162	159	157	154	152	149	144	140	136	133	131	128	125	122	119	117	115	113	111	110	109	108	107	106
13	110	111	113	115	114	113	114	114	115	117	119	121	124	126	129	133	140	145	150	154	155	155	157	159	161	162	164	165	167	168	169	170	172	174	172	172	171	169	166	163	161	158	153	148	143	140	137	134	131	128	125	120	118	116	114	112	110	109	108	107	105
14	111	113	115	117	116	115	116	117	117	119	121	124	126	128	132	137	143	151	156	161	161	162	163	165	166	167	168	170	171	173	175	177	179	178	177	176	176	174	171	169	165	161	156	152	148	144	140	138	135	131	127	123	119	117	115	113	111	110	108	106	105
15	114	115	117	117	117	118	119	119	120	121	124	126	128	131	137	143	150	156	160	163	165	168	170	171	172	173	174	175	177	179	180	182	183	183	183	183	180	178	177	172	168	164	160	156	152	148	144	141	138	134	130	126	121	117	114	112	110	110	108	106	104
16	116	118	118	118	120	121	121	122	122	123	125	128	130	134	141	147	152	156	160	165	168	170	174	176	179	180	181	181	182	182	183	184	186	187	187	184	184	181	180	176	172	168	165	161	157	153	149	145	142	138	133	129	125	120	115	111	110	110	108	106	104
17	118	120	120	121	122	123	124	124	125	126	127	129	132	135	142	149	153	157	161	166	170	174	178	180	182	183	184	184	185	186	186	187	189	189	189	189	189	186	182	179	175	171	168	165	162	157	152	149	145	141	137	131	125	120	116	111	110	110	108	106	104
18	120	121	122	123	124	125	126	127	127	128	130	132	134	137	142	151	155	158	162	169	172	176	181	183	184	186	187	188	189	189	189	189	190	190	191	190	190	188	186	183	180	175	171	168	165	161	157	152	149	145	141	134	127	121	116	112	110	110	108	106	104
19	120	122	125	126	126	127	128	129	130	130	132	134	136	139	145	152	157	160	167	172	175	178	181	185	186	188	190	191	192	193	193	192	192	191	192	191	191	190	190	187	184	181	177	172	169	165	161	156	152	147	143	139	131	123	119	115	111	110	108	106	105
20	121	124	126	128	129	129	130	131	132	133	135	137	139	143	150	154	159	164	170	173	176	179	184	186	189	190	191	192	193	194	195	194	193	192	191	191	191	191	190	190	188	184	181	177	173	169	165	160	155	149	145	142	136	129	123	118	114	110	108	108	107
21	122	125	127	130	130	131	133	134	135	136	137	140	143	147	154	158	162	166	171	174	177	181	186	189	190	190	191	192	191	191	190	189	188	189	190	190	191	190	190	190	189	186	184	181	177	173	169	164	158	152	148	144	140	134	125	118	115	111	110	108	107
22	122	125	128	130	132	133	135	136	137	139	140	143	147	152	157	161	164	168	172	175	179	182	186	190	190	190	190	189	187	184	184	183	182	182	183	183	183	184	185	186	187	186	185	184	181	177	173	169	163	157	149	145	141	136	130	119	116	112	110	108	106
23	123	126	129	131	133	135	137	138	139	141	143	147	150	156	161	164	167	170	173	177	181	184	187	188	190	189	187	185	183	179	176	174	174	174	174	174	176	177	179	180	182	183	182	181	181	180	176	171	166	160	152	147	142	138	133	126	121	115	110	106	105
24	124	127	130	132	135	137	138	140	142	144	147	149	154	157	161	165	168	171	175	178	181	184	186	187	187	184	184	181	179	175	171	169	168	168	168	169	170	172	174	177	178	179	180	181	181	180	179	174	167	161	155	148	144	139	134	128	121	115	110	106	105
25	123	128	131	133	136	138	140	142	144	146	149	151	154	157	160	164	168	172	175	178	181	183	184	184	185	183	180	177	174	170	167	165	164	164	164	165	166	168	171	175	176	178	180	181	180	180	179	177	170	163	157	150	144	139	134	128	121	115	110	108	107
26	123	127	131	134	136	138	140	142	144	147	149	151	154	157	160	164	168	171	174	178	180	181	181	182	183	181	178	173	169	166	163	161	161	160	160	161	163	165	168	173	176	178	179	180	181	180	180	175	173	166	159	152	145	139	134	127	121	115	110	109	108
27	120	124	128	131	134	137	139	142	144	146	149	151	153	156	160	163	167	171	174	178	180	180	180	180	180	180	175	171	167	162	160	158	157	157	157	158	159	162	166	170	175	177	178	180	181	181	180	178	175	169	160	154	148	140	134	128	121	115	110	110	109
28	118	121	125	129	132	134	137	140	142	145	147	149	151	155	159	163	166	169	173	177	179	180	180	180	180	179	174	169	166	161	158	156	154	153	153	154	156	159	163	169	173	175	178	180	181	180	180	179	175	170	160	154	149	142	135	128	122	116	111	110	110
29	117	120	121	125	129	132	135	138	140	143	145	147	149	153	157	160	163	166	171	174	177	179	180	180	180	179	172	168	164	160	157	154	151	149	150	150	154	158	164	169	174	178	180	180	180	180	178	177	175	170	161	153	148	142	135	129	123	116	113	112	110
30	115	118	120	122	126	130	133	136	138	141	143	145	148	151	154	157	160	163	168	171	174	177	179	179	179	176	171	167	164	160	156	153	149	148	149	151	155	158	163	170	173	177	179	180	180	180	178	175	173	171	162	154	147	141	136	130	124	117	115	112	110
31	114	116	118	120	122	127	131	133	136	138	141	143	146	148	151	154	157	160	164	168	171	174	178	178	179	177	173	169	165	161	157	154	151	149	150	152	155	159	166	171	175	177	179	180	180	179	176	174	171	168	159	151	146	141	135	129	124	119	116	113	110
32	115	114	116	118	120	122	127	129	132	136	139	141	143	146	148	151	153	156	160	164	167	172	174	176	177	176	173	170	166	162	159	157	154	153	154	155	158	161	169	172	174	176	178	178	178	178	175	172	169	162	156	149	144	140	134	128	123	118	115	112	110
33	113	113	114	116	118	120	122	125	129	133	136	138	141	143	146	149	150	153	156	160	165	170	173	176	176	176	173	172	169	165	163	160	158	157	158	159	161	166	170	170	173	175	176	178	176	173	171	168	164	158	153	146	140	137	132	127	121	117	113	111	110
34	111	112	113	114	116	118	120	122	126	130	133	136	139	142	145	147	148	151	155	158	163	168	173	176	177	177	176	174	171	169	166	164	161	161	162	164	165	167	170	170	171	173	173	173	170	168	165	163	160	155	149	143	138	134	130	125	119	116	112	110	109
35	110	112	113	113	114	116	118	120	123	127	131	134	137	141	143	145	148	150	154	157	161	166	171	176	178	178	178	176	174	172	170	167	167	167	166	168	170	169	168	167	168	168	168	168	167	165	163	160	156	152	146	140	136	131	128	122	118	114	110	110	109
36	109	110	111	112	114	116	118	119	120	124	128	131	136	140	142	145	147	150	153	157	160	165	170	174	178	179	179	178	178	176	174	171	170	170	170	168	167	166	164	163	161	162	163	163	163	161	160	157	153	148	142	136	130	127	124	120	117	113	110	110	109
37	108	109	111	112	114	116	117	118	120	121	125	128	132	138	142	144	147	149	153	156	160	164	170	174	178	180	180	179	179	178	176	172	170	170	170	168	166	164	162	160	157	156	157	158	158	156	153	151	149	144	139	130	127	124	121	118	115	112	110	110	109
38	108	109	111	113	114	116	117	118	119	120	122	126	130	135	139	143	147	149	152	156	160	164	169	173	177	180	180	180	180	179	178	174	170	170	168	167	165	163	161	157	154	153	152	152	152	149	148	147	144	140	134	128	125	122	119	117	114	110	110	109	109
39	107	108	111	112	114	115	116	117	119	120	121	124	128	133	137	141	145	149	152	156	160	164	168	172	176	179	180	180	180	179	178	174	170	168	166	165	163	161	158	154	150	149	148	146	145	143	143	143	140	136	130	126	123	120	118	115	112	110	110	109	109
40	107	108	110	112	113	113	115	116	118	120	122	125	128	132	136	140	145	148	150	155	160	164	167	170	174	177	179	179	178	176	176	173	169	166	164	163	161	159	155	152	148	145	143	141	140	139	139	138	136	132	128	124	121	118	116	114	111	110	110	109	108
41	107	108	109	111	113	114	116	117	119	120	122	125	128	132	137	141	144	146	149	152	157	162	166	168	171	173	175	175	173	172	172	171	168	165	162	160	158	156	153	149	145	142	139	138	137	136	135	133	131	129	126	122	119	117	114	112	110	110	109	108	107
42	108	109	110	112	114	115	116	117	119	120	122	126	129	133	137	141	143	146	148	151	155	160	164	167	168	169	170	170	169	168	167	168	166	163	160	158	155	153	150	147	143	140	137	136	134	133	132	130	129	127	125	121	118	115	112	110	110	110	108	107	107
43	109	110	111	113	115	116	117	118	120	121	123	126	129	133	138	141	143	146	148	150	155	159	163	165	166	167	168	168	166	165	164	161	160	159	158	155	152	149	147	144	141	138	135	134	132	130	129	128	126	124	122	120	117	113	111	110	110	110	108	107	107
44	110	111	112	113	116	117	118	119	120	122	125	127	130	133	138	141	143	146	148	150	154	159	162	163	164	166	166	166	165	163	161	159	157	156	155	153	150	146	143	140	138	136	133	132	130	129	128	125	124	122	120	119	117	114	111	110	110	109	108	107	107
45	111	112	113	114	116	117	118	119	120	123	125	128	130	134	139	141	144	146	148	151	154	158	161	164	166	167	168	166	165	163	161	158	156	154	152	150	146	142	139	137	135	133	131	130	129	128	127	125	123	121	120	118	116	113	111	110	110	109	108	107	106
46	111	112	113	115	117	118	118	120	121	124	126	128	131	135	139	142	144	146	148	151	155	160	164	165	168	169	169	168	166	163	160	158	156	153	151	148	145	142	139	137	135	132	130	129	127	126	125	124	123	120	120	117	116	114	112	110	110	108	107	106	106
47	112	113	114	116	117	118	119	120	122	124	127	129	132	135	139	142	144	146	149	152	157	162	167	169	170	170	170	168	165	163	161	159	157	155	151	148	145	141	139	136	134	132	130	128	127	126	124	123	122	120	119	117	116	114	112	111	109	107	106	106	105
48	113	114	115	116	117	119	119	120	122	125	127	129	132	135	139	142	144	147	149	154	159	164	169	170	170	170	170	170	168	165	163	161	158	155	151	148	145	142	139	137	135	132	131	128	126	125	124	122	121	120	119	117	115	113	111	110	109	106	105	105	104
49	113	114	115	117	118	119	120	121	123	125	127	130	132	135	139	142	145	148	150	156	161	166	170	170	170	170	170	170	169	166	163	161	159	155	151	148	146	143	140	138	135	134	132	130	127	125	123	121	120	120	119	116	114	112	110	110	108	106	105	104	104
50	114	115	116	117	118	119	120	121	123	126	128	130	133	136	139	142	145	148	152	157	161	166	168	170	170	170	170	168	166	164	163	160	159	155	151	148	146	143	141	138	136	134	132	130	128	125	123	121	120	120	118	116	113	111	110	110	109	106	105	104	104
51	115	116	117	118	119	120	121	121	123	126	128	131	134	136	139	142	145	149	152	157	161	163	164	166	168	167	166	164	163	161	160	158	156	152	149	147	144	143	141	139	136	134	132	130	128	125	122	120	120	119	117	115	113	110	110	109	107	106	105	104	104
52	115	116	117	118	119	120	121	122	123	125	128	131	134	137	139	142	145	149	152	156	159	159	160	162	162	161	161	160	159	158	157	155	153	150	148	146	145	143	142	140	137	134	131	129	126	124	122	120	119	117	115	113	111	110	109	109	107	106	105	104	104
53	114	115	116	116	118	119	120	121	122	126	129	132	135	137	140	143	146	149	152	155	156	157	158	159	159	159	158	158	157	155	153	151	150	149	147	146	145	144	142	141	138	135	132	128	125	122	120	118	117	115	113	112	110	109	108	108	106	105	105	104	104
54	113	114	115	116	117	118	119	120	123	126	129	132	135	138	140	143	146	148	151	153	154	156	157	157	157	157	156	155	154	152	150	149	148	147	146	145	144	142	141	140	139	136	132	129	125	121	118	116	115	113	111	110	109	108	108	107	106	105	104	104	104
55	112	113	114	115	116	117	119	120	122	126	130	133	136	138	141	143	146	148	150	152	154	155	155	155	155	155	154	152	152	150	148	147	146	145	145	143	142	141	140	140	140	137	133	129	125	120	117	115	111	110	110	109	108	107	107	106	105	105	104	104	103
56	111	112	114	115	116	117	118	120	122	125	131	134	137	139	142	144	146	148	150	152	153	153	153	153	153	153	153	151	149	147	146	144	144	143	143	142	141	140	140	140	140	138	134	130	123	120	118	111	110	110	110	108	107	106	108	105	105	104	104	103	103
57	111	112	113	115	115	116	117	119	121	126	131	135	138	140	142	144	146	148	150	151	151	151	151	151	151	151	151	150	148	146	144	142	141	141	142	141	140	140	140	140	140	140	136	132	126	120	115	110	110	110	109	107	106	105	107	105	104	104	104	103	103
58	112	113	113	114	115	116	117	119	122	127	132	135	139	141	143	145	147	149	150	150	150	150	150	150	150	150	150	149	147	144	142	141	140	140	140	140	140	140	140	140	140	140	137	133	128	120	117	110	110	110	108	106	105	105	106	105	104	104	103	103	103
59	112	113	114	114	116	117	118	120	122	128	132	136	139	141	144	146	147	149	150	150	150	150	150	150	150	150	150	149	146	143	141	140	140	139	139	139	140	140	140	140	140	140	137	133	129	121	118	110	110	109	107	106	105	105	105	104	104	103	103	103	102
60	112	114	114	115	116	117	119	120	122	128	133	136	140	142	144	146	148	150	150	150	150	150	150	150	150	150	150	148	145	142	140	138	138	138	137	138	140	140	140	140	140	140	137	134	130	122	118	110	110	108	106	105	103	104	104	104	104	103	103	102	102
61	113	114	115	116	116	117	118	120	123	129	133	137	140	142	144	146	149	150	150	150	150	150	150	150	150	150	150	147	143	141	139	137	136	136	135	136	138	140	140	140	140	139	136	134	130	123	119	113	109	108	106	104	103	104	104	104	103	103	102	102	101
62	114	115	115	116	117	118	118	120	123	129	133	137	140	143	145	147	150	150	150	150	150	150	150	150	150	150	148	145	142	139	138	136	135	134	134	134	136	138	137	138	139	137	134	132	125	122	117	114	109	107	105	103	102	104	104	103	103	102	102	101	101
63	114	115	116	117	117	119	118	120	123	128	132	136	139	142	145	148	150	150	150	150	150	150	150	150	150	150	147	144	141	139	136	135	134	133	132	132	134	134	134	134	135	133	131	128	124	120	116	113	110	107	104	102	102	103	103	103	102	102	102	101	100
64	115	116	116	117	118	119	119	120	124	128	132	136	139	142	145	148	150	150	150	150	150	150	150	150	150	149	146	143	140	138	135	134	133	131	131	131	131	131	131	131	130	127	124	122	119	117	115	112	109	106	104	101	102	103	103	102	102	102	101	100	100
65	115	116	117	118	118	119	120	123	125	128	131	135	138	141	145	148	150	150	150	150	150	150	150	150	150	147	145	142	139	137	134	132	131	130	129	128	128	128	128	128	126	123	121	119	116	114	112	110	108	105	103	101	103	103	103	102	102	101	100	100	100
66	116	117	118	118	119	120	122	123	125	128	131	134	137	141	145	148	149	150	150	150	150	150	150	150	148	145	143	141	138	135	133	130	129	128	127	126	125	125	125	124	123	120	118	116	114	111	109	107	106	104	102	100	101	101	102	102	101	100	100	100	100
67	116	117	118	119	120	121	123	124	126	128	130	133	137	140	144	145	147	148	149	150	149	149	147	146	144	141	139	136	133	131	129	128	127	126	125	124	123	123	122	121	120	118	116	114	112	108	107	105	103	102	100	100	100	100	101	101	100	100	100	100	100
68	117	118	119	119	120	121	123	124	126	128	129	131	135	139	142	143	145	146	147	147	147	146	144	142	140	138	135	133	130	128	127	126	125	124	123	122	121	120	119	118	117	115	114	112	110	106	105	102	101	100	100	100	100	100	100	100	100	99	99	99	99
69	117	118	119	120	120	121	123	124	125	126	128	129	132	137	140	142	143	143	144	144	144	143	141	139	137	135	133	130	128	127	126	125	123	122	121	120	119	117	116	115	114	112	111	108	107	105	100	100	100	100	100	100	100	99	99	99	99	99	99	99	98
70	116	117	118	120	120	121	122	123	124	125	126	128	130	134	139	140	141	141	141	141	141	140	138	136	134	133	131	129	127	125	124	123	122	120	119	118	117	116	114	112	111	108	109	106	106	100	100	100	100	100	99	99	99	99	99	99	99	98	98	98	97
71	114	115	116	117	119	119	120	121	122	123	125	127	129	133	136	134	134	136	138	138	137	137	135	133	132	130	129	127	125	124	122	121	120	119	117	116	115	114	112	110	109	108	107	105	105	100	100	100	100	99	99	99	98	98	98	98	98	97	97	97	97
72	112	113	114	115	116	116	117	119	120	122	124	126	127	129	129	128	127	129	132	133	133	133	133	131	129	127	126	125	124	122	121	119	118	117	116	114	113	112	110	109	108	106	106	105	100	100	100	98	98	98	98	98	98	97	97	97	97	97	97	97	96
73	109	111	112	112	113	113	113	114	116	119	121	123	124	125	124	123	123	123	125	127	129	129	128	128	127	125	124	123	122	121	119	118	117	116	114	113	112	110	109	108	107	106	105	100	100	100	97	97	97	97	97	97	97	96	96	96	96	96	96	96	96
74	106	107	108	108	109	110	110	112	113	114	117	119	120	121	119	117	117	117	118	120	123	124	125	125	125	123	121	120	120	119	118	117	116	115	114	113	111	109	109	107	106	105	100	100	100	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96
75	104	105	105	106	106	107	108	108	109	109	111	115	116	114	113	112	111	110	111	113	116	119	122	122	122	121	120	119	118	118	117	116	115	114	113	112	111	108	108	106	105	100	100	100	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96
76	102	103	103	104	104	105	106	106	107	108	109	111	112	110	109	108	108	108	108	109	110	112	116	117	117	118	118	118	117	116	116	115	114	113	112	111	110	107	107	105	100	100	100	97	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96
77	101	102	103	103	104	105	105	106	106	107	108	109	109	107	106	106	105	105	105	106	107	108	109	110	111	113	114	115	115	115	114	113	112	111	110	108	108	106	105	100	100	100	97	97	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96
78	100	101	102	102	103	103	104	104	105	106	106	107	106	106	106	105	105	104	103	103	104	105	107	108	110	111	111	112	112	113	113	112	111	110	108	107	106	105	100	100	100	98	97	97	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96
79	100	101	101	102	102	103	103	104	104	105	105	105	105	106	105	105	104	103	102	101	102	103	104	106	107	110	111	111	111	112	112	112	110	107	107	106	105	102	100	100	99	98	97	97	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	95
80	99	100	101	102	102	103	103	103	104	104	104	104	103	104	104	104	104	102	101	101	102	103	104	105	107	110	111	111	111	111	111	111	108	106	105	105	102	101	100	99	99	98	97	97	96	96	96	96	96	96	96	96	96	96	96	96	96	96	96	95	95
81	99	100	100	101	101	102	102	102	103	103	103	103	102	103	103	104	103	102	101	101	101	102	103	104	106	109	110	111	111	111	110	110	107	105	103	104	100	100	99	99	98	98	97	97	96	96	96	96	96	96	96	96	96	96	95	95	95	95	95	95	95
82	99	100	100	100	101	101	101	102	102	103	102	102	101	102	102	103	103	101	101	100	101	101	102	103	105	109	110	110	111	110	110	109	106	105	100	102	100	99	99	99	98	98	97	97	96	96	96	96	96	96	95	95	95	95	95	95	95	95	95	95	94
83	99	99	99	99	100	100	101	101	102	102	101	101	101	101	101	102	102	101	100	100	101	101	101	103	104	107	109	109	110	110	109	108	105	102	100	100	99	99	99	98	98	98	97	96	96	96	96	96	95	95	95	95	95	95	95	94	94	94	94	94	94
84	98	99	99	99	99	100	100	101	101	102	101	100	100	100	101	101	101	100	100	100	100	101	101	101	103	106	107	109	109	109	109	107	104	101	100	99	99	99	98	98	98	97	96	96	96	96	95	95	95	95	95	95	95	94	94	94	94	94	94	94	94
85	98	98	98	99	99	99	100	100	101	101	100	100	99	99	100	100	100	100	100	100	100	101	101	101	102	105	106	109	108	109	107	105	102	100	100	99	99	98	98	98	97	96	96	96	96	95	95	95	95	95	95	94	94	94	94	94	94	94	94	94	94
86	97	98	98	98	99	99	99	100	100	100	100	100	99	99	99	100	100	100	100	100	100	100	101	101	101	103	104	105	106	105	104	101	100	100	99	99	98	98	97	97	97	96	96	96	95	95	95	95	95	94	94	94	94	94	94	94	94	94	94	94	94
87	97	97	97	98	98	99	99	99	100	100	100	99	99	99	99	99	100	100	100	100	100	100	101	101	100	100	100	100	100	100	100	100	100	100	99	99	98	97	97	97	96	96	96	95	95	95	95	94	94	94	94	94	94	94	94	94	94	94	94	94	94
\.


--
-- Name: volcano_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('volcano_id_seq', 87, true);


--
-- Data for Name: warpbreaks; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY warpbreaks (id, breaks, wool, tension) FROM stdin;
1	26	A	L
2	30	A	L
3	54	A	L
4	25	A	L
5	70	A	L
6	52	A	L
7	51	A	L
8	26	A	L
9	67	A	L
10	18	A	M
11	21	A	M
12	29	A	M
13	17	A	M
14	12	A	M
15	18	A	M
16	35	A	M
17	30	A	M
18	36	A	M
19	36	A	H
20	21	A	H
21	24	A	H
22	18	A	H
23	10	A	H
24	43	A	H
25	28	A	H
26	15	A	H
27	26	A	H
28	27	B	L
29	14	B	L
30	29	B	L
31	19	B	L
32	29	B	L
33	31	B	L
34	41	B	L
35	20	B	L
36	44	B	L
37	42	B	M
38	26	B	M
39	19	B	M
40	16	B	M
41	39	B	M
42	28	B	M
43	21	B	M
44	39	B	M
45	29	B	M
46	20	B	H
47	21	B	H
48	24	B	H
49	17	B	H
50	13	B	H
51	15	B	H
52	15	B	H
53	16	B	H
54	28	B	H
\.


--
-- Name: warpbreaks_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('warpbreaks_id_seq', 54, true);


--
-- Data for Name: women; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY women (id, height, weight) FROM stdin;
1	58	115
2	59	117
3	60	120
4	61	123
5	62	126
6	63	129
7	64	132
8	65	135
9	66	139
10	67	142
11	68	146
12	69	150
13	70	154
14	71	159
15	72	164
\.


--
-- Name: women_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('women_id_seq', 15, true);


--
-- Data for Name: worldphones; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY worldphones (id, n_amer, europe, asia, s_amer, oceania, africa, mid_amer) FROM stdin;
1	45939	21574	2876	1815	1646	89	555
2	60423	29990	4708	2568	2366	1411	733
3	64721	32510	5230	2695	2526	1546	773
4	68484	35218	6662	2845	2691	1663	836
5	71799	37598	6856	3000	2868	1769	911
6	76036	40341	8220	3145	3054	1905	1008
7	79831	43173	9053	3338	3224	2005	1076
\.


--
-- Name: worldphones_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('worldphones_id_seq', 7, true);


--
-- Data for Name: wwwusage; Type: TABLE DATA; Schema: rdata; Owner: robert
--

COPY wwwusage (id, x) FROM stdin;
1	88
2	84
3	85
4	85
5	84
6	85
7	83
8	85
9	88
10	89
11	91
12	99
13	104
14	112
15	126
16	138
17	146
18	151
19	150
20	148
21	147
22	149
23	143
24	132
25	131
26	139
27	147
28	150
29	148
30	145
31	140
32	134
33	131
34	131
35	129
36	126
37	126
38	132
39	137
40	140
41	142
42	150
43	159
44	167
45	170
46	171
47	172
48	172
49	174
50	175
51	172
52	172
53	174
54	174
55	169
56	165
57	156
58	142
59	131
60	121
61	112
62	104
63	102
64	99
65	99
66	95
67	88
68	84
69	84
70	87
71	89
72	88
73	85
74	86
75	89
76	91
77	91
78	94
79	101
80	110
81	121
82	135
83	145
84	149
85	156
86	165
87	171
88	175
89	177
90	182
91	193
92	204
93	208
94	210
95	215
96	222
97	228
98	226
99	222
100	220
\.


--
-- Name: wwwusage_id_seq; Type: SEQUENCE SET; Schema: rdata; Owner: robert
--

SELECT pg_catalog.setval('wwwusage_id_seq', 100, true);


--
-- Name: ability_cov_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY ability_cov
    ADD CONSTRAINT ability_cov_pkey PRIMARY KEY (id);


--
-- Name: airmiles_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY airmiles
    ADD CONSTRAINT airmiles_pkey PRIMARY KEY (id);


--
-- Name: airpassengers_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY airpassengers
    ADD CONSTRAINT airpassengers_pkey PRIMARY KEY (id);


--
-- Name: airquality_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY airquality
    ADD CONSTRAINT airquality_pkey PRIMARY KEY (id);


--
-- Name: anscombe_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY anscombe
    ADD CONSTRAINT anscombe_pkey PRIMARY KEY (id);


--
-- Name: attenu_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY attenu
    ADD CONSTRAINT attenu_pkey PRIMARY KEY (id);


--
-- Name: attitude_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY attitude
    ADD CONSTRAINT attitude_pkey PRIMARY KEY (id);


--
-- Name: austres_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY austres
    ADD CONSTRAINT austres_pkey PRIMARY KEY (id);


--
-- Name: beaver1_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY beaver1
    ADD CONSTRAINT beaver1_pkey PRIMARY KEY (id);


--
-- Name: beaver2_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY beaver2
    ADD CONSTRAINT beaver2_pkey PRIMARY KEY (id);


--
-- Name: bjsales_lead_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY bjsales_lead
    ADD CONSTRAINT bjsales_lead_pkey PRIMARY KEY (id);


--
-- Name: bjsales_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY bjsales
    ADD CONSTRAINT bjsales_pkey PRIMARY KEY (id);


--
-- Name: bod_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY bod
    ADD CONSTRAINT bod_pkey PRIMARY KEY (id);


--
-- Name: cars_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (id);


--
-- Name: chickweight_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY chickweight
    ADD CONSTRAINT chickweight_pkey PRIMARY KEY (id);


--
-- Name: chickwts_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY chickwts
    ADD CONSTRAINT chickwts_pkey PRIMARY KEY (id);


--
-- Name: co2_2_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY co2_2
    ADD CONSTRAINT co2_2_pkey PRIMARY KEY (id);


--
-- Name: co2_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY co2
    ADD CONSTRAINT co2_pkey PRIMARY KEY (id);


--
-- Name: crimtab_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY crimtab
    ADD CONSTRAINT crimtab_pkey PRIMARY KEY (id);


--
-- Name: discoveries_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY discoveries
    ADD CONSTRAINT discoveries_pkey PRIMARY KEY (id);


--
-- Name: dnase_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY dnase
    ADD CONSTRAINT dnase_pkey PRIMARY KEY (id);


--
-- Name: esoph_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY esoph
    ADD CONSTRAINT esoph_pkey PRIMARY KEY (id);


--
-- Name: euro_cross_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY euro_cross
    ADD CONSTRAINT euro_cross_pkey PRIMARY KEY (id);


--
-- Name: euro_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY euro
    ADD CONSTRAINT euro_pkey PRIMARY KEY (id);


--
-- Name: eustockmarkets_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY eustockmarkets
    ADD CONSTRAINT eustockmarkets_pkey PRIMARY KEY (id);


--
-- Name: faithful_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY faithful
    ADD CONSTRAINT faithful_pkey PRIMARY KEY (id);


--
-- Name: fdeaths_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY fdeaths
    ADD CONSTRAINT fdeaths_pkey PRIMARY KEY (id);


--
-- Name: formaldehyde_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY formaldehyde
    ADD CONSTRAINT formaldehyde_pkey PRIMARY KEY (id);


--
-- Name: freeny_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY freeny
    ADD CONSTRAINT freeny_pkey PRIMARY KEY (id);


--
-- Name: freeny_x_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY freeny_x
    ADD CONSTRAINT freeny_x_pkey PRIMARY KEY (id);


--
-- Name: freeny_y_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY freeny_y
    ADD CONSTRAINT freeny_y_pkey PRIMARY KEY (id);


--
-- Name: haireyecolor_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY haireyecolor
    ADD CONSTRAINT haireyecolor_pkey PRIMARY KEY (id);


--
-- Name: harman23_cor_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY harman23_cor
    ADD CONSTRAINT harman23_cor_pkey PRIMARY KEY (id);


--
-- Name: harman74_cor_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY harman74_cor
    ADD CONSTRAINT harman74_cor_pkey PRIMARY KEY (id);


--
-- Name: indometh_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY indometh
    ADD CONSTRAINT indometh_pkey PRIMARY KEY (id);


--
-- Name: infert_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY infert
    ADD CONSTRAINT infert_pkey PRIMARY KEY (id);


--
-- Name: insectsprays_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY insectsprays
    ADD CONSTRAINT insectsprays_pkey PRIMARY KEY (id);


--
-- Name: iris3_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY iris3
    ADD CONSTRAINT iris3_pkey PRIMARY KEY (id);


--
-- Name: iris_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY iris
    ADD CONSTRAINT iris_pkey PRIMARY KEY (id);


--
-- Name: islands_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY islands
    ADD CONSTRAINT islands_pkey PRIMARY KEY (id);


--
-- Name: johnsonjohnson_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY johnsonjohnson
    ADD CONSTRAINT johnsonjohnson_pkey PRIMARY KEY (id);


--
-- Name: lakehuron_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY lakehuron
    ADD CONSTRAINT lakehuron_pkey PRIMARY KEY (id);


--
-- Name: ldeaths_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY ldeaths
    ADD CONSTRAINT ldeaths_pkey PRIMARY KEY (id);


--
-- Name: lh_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY lh
    ADD CONSTRAINT lh_pkey PRIMARY KEY (id);


--
-- Name: lifecyclesavings_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY lifecyclesavings
    ADD CONSTRAINT lifecyclesavings_pkey PRIMARY KEY (id);


--
-- Name: loblolly_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY loblolly
    ADD CONSTRAINT loblolly_pkey PRIMARY KEY (id);


--
-- Name: longley_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY longley
    ADD CONSTRAINT longley_pkey PRIMARY KEY (id);


--
-- Name: lynx_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY lynx
    ADD CONSTRAINT lynx_pkey PRIMARY KEY (id);


--
-- Name: mdeaths_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY mdeaths
    ADD CONSTRAINT mdeaths_pkey PRIMARY KEY (id);


--
-- Name: morley_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY morley
    ADD CONSTRAINT morley_pkey PRIMARY KEY (id);


--
-- Name: mtcars_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY mtcars
    ADD CONSTRAINT mtcars_pkey PRIMARY KEY (id);


--
-- Name: nhtemp_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY nhtemp
    ADD CONSTRAINT nhtemp_pkey PRIMARY KEY (id);


--
-- Name: nile_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY nile
    ADD CONSTRAINT nile_pkey PRIMARY KEY (id);


--
-- Name: nottem_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY nottem
    ADD CONSTRAINT nottem_pkey PRIMARY KEY (id);


--
-- Name: occupationalstatus_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY occupationalstatus
    ADD CONSTRAINT occupationalstatus_pkey PRIMARY KEY (id);


--
-- Name: orange_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY orange
    ADD CONSTRAINT orange_pkey PRIMARY KEY (id);


--
-- Name: orchardsprays_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY orchardsprays
    ADD CONSTRAINT orchardsprays_pkey PRIMARY KEY (id);


--
-- Name: plantgrowth_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY plantgrowth
    ADD CONSTRAINT plantgrowth_pkey PRIMARY KEY (id);


--
-- Name: precip_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY precip
    ADD CONSTRAINT precip_pkey PRIMARY KEY (id);


--
-- Name: presidents_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY presidents
    ADD CONSTRAINT presidents_pkey PRIMARY KEY (id);


--
-- Name: pressure_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY pressure
    ADD CONSTRAINT pressure_pkey PRIMARY KEY (id);


--
-- Name: puromycin_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY puromycin
    ADD CONSTRAINT puromycin_pkey PRIMARY KEY (id);


--
-- Name: quakes_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY quakes
    ADD CONSTRAINT quakes_pkey PRIMARY KEY (id);


--
-- Name: randu_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY randu
    ADD CONSTRAINT randu_pkey PRIMARY KEY (id);


--
-- Name: rivers_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY rivers
    ADD CONSTRAINT rivers_pkey PRIMARY KEY (id);


--
-- Name: rock_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY rock
    ADD CONSTRAINT rock_pkey PRIMARY KEY (id);


--
-- Name: seatbelts_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY seatbelts
    ADD CONSTRAINT seatbelts_pkey PRIMARY KEY (id);


--
-- Name: sleep_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY sleep
    ADD CONSTRAINT sleep_pkey PRIMARY KEY (id);


--
-- Name: stack_loss_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY stack_loss
    ADD CONSTRAINT stack_loss_pkey PRIMARY KEY (id);


--
-- Name: stack_x_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY stack_x
    ADD CONSTRAINT stack_x_pkey PRIMARY KEY (id);


--
-- Name: stackloss_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY stackloss
    ADD CONSTRAINT stackloss_pkey PRIMARY KEY (id);


--
-- Name: state_abb_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_abb
    ADD CONSTRAINT state_abb_pkey PRIMARY KEY (id);


--
-- Name: state_area_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_area
    ADD CONSTRAINT state_area_pkey PRIMARY KEY (id);


--
-- Name: state_center_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_center
    ADD CONSTRAINT state_center_pkey PRIMARY KEY (id);


--
-- Name: state_division_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_division
    ADD CONSTRAINT state_division_pkey PRIMARY KEY (id);


--
-- Name: state_name_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_name
    ADD CONSTRAINT state_name_pkey PRIMARY KEY (id);


--
-- Name: state_region_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_region
    ADD CONSTRAINT state_region_pkey PRIMARY KEY (id);


--
-- Name: state_x77_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY state_x77
    ADD CONSTRAINT state_x77_pkey PRIMARY KEY (id);


--
-- Name: sunspot_month_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY sunspot_month
    ADD CONSTRAINT sunspot_month_pkey PRIMARY KEY (id);


--
-- Name: sunspot_year_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY sunspot_year
    ADD CONSTRAINT sunspot_year_pkey PRIMARY KEY (id);


--
-- Name: sunspots_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY sunspots
    ADD CONSTRAINT sunspots_pkey PRIMARY KEY (id);


--
-- Name: swiss_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY swiss
    ADD CONSTRAINT swiss_pkey PRIMARY KEY (id);


--
-- Name: theoph_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY theoph
    ADD CONSTRAINT theoph_pkey PRIMARY KEY (id);


--
-- Name: titanic_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY titanic
    ADD CONSTRAINT titanic_pkey PRIMARY KEY (id);


--
-- Name: toothgrowth_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY toothgrowth
    ADD CONSTRAINT toothgrowth_pkey PRIMARY KEY (id);


--
-- Name: treering_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY treering
    ADD CONSTRAINT treering_pkey PRIMARY KEY (id);


--
-- Name: trees_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY trees
    ADD CONSTRAINT trees_pkey PRIMARY KEY (id);


--
-- Name: ucbadmissions_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY ucbadmissions
    ADD CONSTRAINT ucbadmissions_pkey PRIMARY KEY (id);


--
-- Name: ukdriverdeaths_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY ukdriverdeaths
    ADD CONSTRAINT ukdriverdeaths_pkey PRIMARY KEY (id);


--
-- Name: ukgas_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY ukgas
    ADD CONSTRAINT ukgas_pkey PRIMARY KEY (id);


--
-- Name: usaccdeaths_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY usaccdeaths
    ADD CONSTRAINT usaccdeaths_pkey PRIMARY KEY (id);


--
-- Name: usarrests_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY usarrests
    ADD CONSTRAINT usarrests_pkey PRIMARY KEY (id);


--
-- Name: usjudgeratings_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY usjudgeratings
    ADD CONSTRAINT usjudgeratings_pkey PRIMARY KEY (id);


--
-- Name: uspersonalexpenditure_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY uspersonalexpenditure
    ADD CONSTRAINT uspersonalexpenditure_pkey PRIMARY KEY (id);


--
-- Name: uspop_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY uspop
    ADD CONSTRAINT uspop_pkey PRIMARY KEY (id);


--
-- Name: vadeaths_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY vadeaths
    ADD CONSTRAINT vadeaths_pkey PRIMARY KEY (id);


--
-- Name: volcano_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY volcano
    ADD CONSTRAINT volcano_pkey PRIMARY KEY (id);


--
-- Name: warpbreaks_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY warpbreaks
    ADD CONSTRAINT warpbreaks_pkey PRIMARY KEY (id);


--
-- Name: women_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY women
    ADD CONSTRAINT women_pkey PRIMARY KEY (id);


--
-- Name: worldphones_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY worldphones
    ADD CONSTRAINT worldphones_pkey PRIMARY KEY (id);


--
-- Name: wwwusage_pkey; Type: CONSTRAINT; Schema: rdata; Owner: robert; Tablespace: 
--

ALTER TABLE ONLY wwwusage
    ADD CONSTRAINT wwwusage_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

