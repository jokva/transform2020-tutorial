#! /usr/bin/env bash

set -xe

SAS_TOKEN="sv=date&sr=...sp=rl"

# where you will need to substitute $YOURTOKEN with your personal token. To get
# a token, simply register at https://data.equinor.com/authenticate and find
# the token in the red text in the Usage section. Ensure to copy everything
# from ?sv= to =rl in place of $YOURTOKEN.
#
# https://github.com/equinor/segyio-notebooks/blob/master/notebooks/pylops/01_seismic_inversion.ipynb
# Cell 13

az storage blob download \
    --account-name dataplatformblvolve \
    --container-name pub \
    --sas-token $SAS_TOKEN \
    --name "Well_logs_pr_WELL/15_9-F-11 B/11. INTEGRITY LOGS/RAW/WL_RAW_PROD_AC-AIMG-CCL-GR_2013-06-05_2.DLIS" \
    --file f-15-b-aimg.dlis

wget https://github.com/equinor/dlisio/raw/master/python/data/206_05a-_3_DWL_DWL_WIRE_258276498.DLIS
wget -qO- https://github.com/equinor/dlisio/files/3716777/WL_RAW_AC-DEN-GR-NEU-REMP_MWD_1.zip | funzip > mwd-tif.dlis
