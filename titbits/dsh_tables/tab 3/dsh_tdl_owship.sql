-- Table: health.dsh_tdl_owship

-- DROP TABLE health.dsh_tdl_owship;

CREATE TABLE health.dsh_tdl_owship
(
  ownership character varying(255),
  damages real,
  losses_y1 real,
  losses_y2 real,
  total real,
  district integer,
  created_user integer,
  lmu integer,
  created_date timestamp without time zone,
  lmd timestamp without time zone,
  key bigint,
  incident integer,
  id serial NOT NULL,
  CONSTRAINT pk_dsh_tdl_owship_id PRIMARY KEY (id),
  CONSTRAINT fk_district_dsh_tdl_owship FOREIGN KEY (district)
      REFERENCES public.district (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_incident_dsh_tdl_owship FOREIGN KEY (incident)
      REFERENCES public.incident_report (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE health.dsh_tdl_owship
  OWNER TO postgres;

