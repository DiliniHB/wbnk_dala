-- Table: health.dap_bef_other

-- DROP TABLE health.dap_bef_other;

CREATE TABLE health.dap_bef_other
(
  pvt_clinics character varying(255),
  est_replacement_cost real,
  est_repair_cost real,
  total_damages real,
  est_losses_y1 real,
  est_losses_y2 real,
  total_losses real,
  district integer,
  created_user integer,
  lmu integer,
  created_date timestamp without time zone,
  lmd timestamp without time zone,
  key bigint,
  incident integer,
  id serial NOT NULL,
  CONSTRAINT pk_dap_bef_other_id PRIMARY KEY (id),
  CONSTRAINT fk_district_dap_bef_other FOREIGN KEY (district)
      REFERENCES public.district (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_incident_dap_bef_other FOREIGN KEY (incident)
      REFERENCES public.incident_report (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE health.dap_bef_other
  OWNER TO postgres;

