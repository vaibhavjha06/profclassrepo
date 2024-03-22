#!/bin/bash

curl https://media.cntraveler.com/photos/57ec402c196e3f9630631fa4/16:9/w_2240,c_limit/Saint_Georges_in_Vieux-Lyon_creditTristan_Deschamps.jpg > lyon.jpg
aws s3 mb s3://lab4
aws s3 cp lyon.jpg s3://lab4/
aws s3 presign --expires-in 604800 s3://lab4/lyon.jpg
