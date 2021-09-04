                                                                                
#!/bin/bash
# This script downloads covid data and displays it

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
TODAY=$(date)
HOSPITAL=$(echo $DATA | jq '.[0].hospitalized')
DEATHS=$(echo $DATA | jq '.[0].death')
LAST=$(echo $DATA | jq '.[0].lastModified')
echo "On $TODAY, there were $POSITIVE positive COVID cases , $HOSPITAL people were at the hospital and  $DEATHS number of deaths were reported , Last Modified on $LAST "









