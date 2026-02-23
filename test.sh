#!/bin/bash -e

# English

echo "English test:"
curl "http://localhost:8080/api/filter?p=english" --data "George Washington was president and his ssn was 123-45-6789 with diabetes and high blood pressure." -H "Content-type: text/plain"

echo ""
echo ""

# French
echo "French test:"
curl "http://localhost:8080/api/filter?p=french" --data "Je m'appelle Mary et je suis diabétique." -H "Content-type: text/plain"

echo ""
echo ""

curl "http://localhost:8080/api/filter?p=french" --data "SILENC---> but 123-456-789" -H "Content-type: text/plain"

echo ""
echo ""

curl "http://localhost:8080/api/filter?p=english" --data "He was in Buffalo Hospital in 1008 and then ECMC Hospital. He was in room 303." -H "Content-type: text/plain"
