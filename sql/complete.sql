--This sql you need to run to get ETL work
ALTER TABLE deapp.de_subject_sample_mapping ADD COLUMN partition_id BIGINT;

CREATE SEQUENCE deapp.seq_mrna_partition_id
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 38672
  CACHE 1;

ALTER TABLE deapp.de_subject_microarray_data ADD COLUMN partition_id BIGINT;
ALTER TABLE tm_wz.wt_subject_microarray_logs ADD COLUMN raw_intensity BIGINT;
