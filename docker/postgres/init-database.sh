#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  GRANT ALL PRIVILEGES ON DATABASE "$POSTGRES_DB" TO "$POSTGRES_USER";

  CREATE TABLE employment (
    id SERIAL PRIMARY KEY,
    territory VARCHAR(255),
    num_economactivepopulation_all FLOAT,
    employed_num_all FLOAT,
    unemployed_num_all FLOAT,
    eactivity_lvl FLOAT,
    employment_lvl FLOAT,
    unemployment_lvl FLOAT,
    dis_unagegroup_to20 FLOAT,
    dis_unagegroup_20_29 FLOAT,
    dis_unagegroup_30_39 FLOAT,
    dis_unagegroup_40_49 FLOAT,
    dis_unagegroup_50_59 FLOAT,
    dis_unagegroup_60older FLOAT,
    dis_emagegroup_to20 FLOAT,
    dis_emagegroup_20_29 FLOAT,
    dis_emagegroup_30_39 FLOAT,
    dis_emagegroup_40_49 FLOAT,
    dis_emagegroup_50_59 FLOAT,
    dis_emagegroup_60older FLOAT,
    num_unagegroup_to20 FLOAT,
    num_unagegroup_20_29 FLOAT,
    num_unagegroup_30_39 FLOAT,
    num_unagegroup_40_49 FLOAT,
    num_unagegroup_50_59 FLOAT,
    num_unagegroup_60older FLOAT,
    num_emagegroup_to20 FLOAT,
    num_emagegroup_20_29 FLOAT,
    num_emagegroup_30_39 FLOAT,
    num_emagegroup_40_49 FLOAT,
    num_emagegroup_50_59 FLOAT,
    num_emagegroup_60older FLOAT,
    year INT NOT NULL
  );
EOSQL