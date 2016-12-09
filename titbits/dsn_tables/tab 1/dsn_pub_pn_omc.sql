-- Table: health.dsn_pub_pn_omc

-- DROP TABLE health.dsn_pub_pn_omc;

CREATE TABLE health.dsn_pub_pn_omc
(
  facilities_assets character varying(255),
  total_num_affected bigint,
  male bigint,
  female bigint,
  total_damages real,
  losses_y1 real,
  losses_y2 real,
  total_losses real,
  district integer,
  created_user integer,
  lmu integer,
  created_date timestamp without time zone,
  lmd timestamp without time zone,
  key bigint,
  incident integer,
  id serial NOT NULL,
  CONSTRAINT pk_dsn_pub_pn_omc_id PRIMARY KEY (id),
  CONSTRAINT fk_district_dsn_pub_pn_omc FOREIGN KEY (district)
      REFERENCES public.district (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_incident_dsn_pub_pn_omc FOREIGN KEY (incident)
      REFERENCES public.incident_report (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE health.dsn_pub_pn_omc
  OWNER TO postgres;

