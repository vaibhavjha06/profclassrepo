#!/bin/bash

curl https://media.cntraveler.com/photos/57ec402c196e3f9630631fa4/16:9/w_2240,c_limit/Saint_Georges_in_Vieux-Lyon_creditTristan_Deschamps.jpg > lyon.jpg
aws s3 mb s3://ds2002-fhy5uh
aws s3 cp lyon.jpg s3://ds2002-fhy5uh/
aws s3 presign --expires-in 604800 s3://ds2002-fhy5uh/lyon.jpg

# https://ds2002-fhy5uh.s3.us-east-1.amazonaws.com/lyon.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=ASIAU6GDXHXAVIDETWHU%2F20240322%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240322T160239Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Security-Token=FwoGZXIvYXdzEEAaDCZ09KEadRCsfRWGEiLEAWoZrPzvmNNvWUBymTygiPeNHGGpalrpFHox2BHD32vurkJk3HIIk%2BKLy3IXgDcUaZPDUgyafqwBWBEj7%2FYWvo0YP%2Bn%2F3YLhlUziz8ulG6kWnXL7Jt7l2eCJ%2FnTMtJ3w9ZokAOay7h8wCuZ7y8BJ%2Fyj390H1INog8xl4EXKv40WRiwPZ4LrDsLfeUhZgZ9ng3DfIgyfSJbQkLQ9yumGcNLlIJy4GBiXrCBxXdY5Egn%2FcmpwtTcJdHkC3pLSfoCf7UVEFnXgo9LL2rwYyLQpAY01THJitIU5DK8rP1d3xFzYx0gdtEjkMUr0MYP4p%2FEg9XWqZ0USoXhBWwQ%3D%3D&X-Amz-Signature=401e4f78905bc986efef4393a76b12abdec070bf11aa89959bfe5cc6c5a40795
