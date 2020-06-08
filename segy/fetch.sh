#! /usr/bin/env bash

set -xe

wget -qO- https://s3.amazonaws.com/agilegeo/Penobscot_0-1000ms.sgy.zip | funzip > penobscot.sgy
wget https://github.com/equinor/segyio/raw/master/test-data/small.sgy
