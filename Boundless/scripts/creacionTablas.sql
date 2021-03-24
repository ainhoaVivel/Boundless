-- Table: public.usuario

-- DROP TABLE public.usuario;

CREATE TABLE public.usuario
(
    apellido1 character varying(45) COLLATE pg_catalog."default",
    correo character varying(150) COLLATE pg_catalog."default" NOT NULL,
    direccion character varying(60) COLLATE pg_catalog."default",
    nombre character varying(45) COLLATE pg_catalog."default" NOT NULL,
    password character varying(45) COLLATE pg_catalog."default" NOT NULL,
    sexo character(1) COLLATE pg_catalog."default" NOT NULL,
    telf character varying(12) COLLATE pg_catalog."default",
    apellido2 character varying(45) COLLATE pg_catalog."default",
    "fechaNacimiento" date NOT NULL,
    pais character varying(3) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT usuario_pkey PRIMARY KEY (correo)
)

TABLESPACE pg_default;

ALTER TABLE public.usuario
    OWNER to postgres;


-- SEQUENCE: public.pedido_id

-- DROP SEQUENCE public.pedido_id;

CREATE SEQUENCE public.pedido_id
    CYCLE
    INCREMENT 1
    START 1
    MINVALUE 0
    MAXVALUE 100
    CACHE 1;

ALTER SEQUENCE public.pedido_id
    OWNER TO postgres;

-- Table: public.pedido

-- DROP TABLE public.pedido;

CREATE TABLE public.pedido
(
    usuario character varying(200) COLLATE pg_catalog."default" NOT NULL,
    fecha date NOT NULL,
    contenido character varying(1000) COLLATE pg_catalog."default" NOT NULL,
    id numeric NOT NULL DEFAULT nextval('pedido_id'),
    CONSTRAINT pedido_pkey PRIMARY KEY (id),
    CONSTRAINT usuario FOREIGN KEY (usuario)
        REFERENCES public.usuario (correo) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.pedido
    OWNER to postgres;


-- Table: public.mercancia

-- DROP TABLE public.mercancia;

CREATE TABLE public.mercancia
(
    nombre character varying(200) COLLATE pg_catalog."default" NOT NULL,
    img character varying(200) COLLATE pg_catalog."default",
    cantidad integer NOT NULL,
    precio numeric NOT NULL,
    CONSTRAINT mercancia_pkey PRIMARY KEY (nombre)
)

TABLESPACE pg_default;

ALTER TABLE public.mercancia
    OWNER to postgres;

