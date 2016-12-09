-- Table: health.dsp_pub_d1_lmh

-- DROP TABLE health.dsp_pub_d1_lmh;

CREATE TABLE health.dsp_pub_d1_lmh
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
  CONSTRAINT pk_dsp_pub_d1_lmh_id PRIMARY KEY (id),
  CONSTRAINT fk_district_dsp_pub_d1_lmh FOREIGN KEY (district)
      REFERENCES public.district (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_incident_dsp_pub_d1_lmh FOREIGN KEY (incident)
      REFERENCES public.incident_report (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE health.dsp_pub_d1_lmh
  OWNER TO postgres;

