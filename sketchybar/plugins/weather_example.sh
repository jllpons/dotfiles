#!/usr/bin/env sh

API_KEY="Your API Key"

LAT=
# 3.8975 for example
LON=

DATA=$(curl -s "https://api.openweathermap.org/data/2.5/weather?lat=$LAT&lon=$LON&appid=$API_KEY&units=metric")

CODE=$(echo $DATA | jq -r ".weather[].icon")

ICON=${WEATHER_ICON[$CODE]}

TEMP_FLOAT=$(echo $DATA | jq -r ".main.temp")

TEMP_INT=$(printf "%.0f" $TEMP_FLOAT)

TEMP=$(echo $TEMP_INT"°")

# Not ideal:
if [ $CODE = "" ]
then
  exit 0
elif [ $CODE = "01d" ]
then
    ICON="􀆭"
elif [ $CODE = "01n" ]
then
    ICON="􀆹"
elif [ $CODE = "02d" ]
then
    ICON="􀇔"
elif [ $CODE = "02n" ]
then
    ICON="􀇚"
elif [ $CODE = "03d" ]
then
    ICON="􀇂"
elif [ $CODE = "03n" ]
then
    ICON="􀇂"
elif [ $CODE = "04d" ]
then
    ICON="􀇢"
elif [ $CODE = "04n" ]
then
    ICON="􀇢"
elif [ $CODE = "09d" ]
then
    ICON="􀇆"
elif [ $CODE = "09n" ]
then
    ICON="􀇆"
elif [ $CODE = "10d" ]
then
    ICON="􀇖"
elif [ $CODE = "10n" ]
then
    ICON="􀇜"
elif [ $CODE = "11d" ]
then
    ICON="􀇞"
elif [ $CODE = "11n" ]
then
    ICON="􀇞"
elif [ $CODE = "13d" ]
then
    ICON="􀇥"
elif [ $CODE = "13n" ]
then
    ICON="􀇥"
elif [ $CODE = "50d" ]
then
    ICON="􀇊"
elif [ $CODE = "50n" ]
then
    ICON="􀇊"
fi

sketchybar --set $NAME icon="$ICON $TEMP"\
                       #icon.font="SF Pro Font:Black:13" \
