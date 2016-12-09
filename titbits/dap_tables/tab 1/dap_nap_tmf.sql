-- Table: health.dap_nap_tmf

-- DROP TABLE health.dap_nap_tmf;

CREATE TABLE health.dap_nap_tmf
(
  id serial NOT NULL,
  type_med_fac bigint,
  num_affected_fac bigint,
  male bigint,
  female bigint,
  district integer,
  created_user integer,
  lmu integer,
  created_date timestamp without time zone,
  lmd timestamp without time zone,
  incident integer,
  key bigint,
  CONSTRAINT fk_district_dap_nap_tmf FOREIGN KEY (district)
      REFERENCES public.district (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_incident_dap_nap_tmf FOREIGN KEY (incident)
      REFERENCES public.incident_report (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE health.dap_nap_tmf
  OWNER TO postgres;

