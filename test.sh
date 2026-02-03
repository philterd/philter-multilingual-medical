#!/bin/bash -e

# English

echo "English test:"
curl "http://localhost:8080/api/filter?p=english" \
	--data "George Washington was president and his ssn was 123-45-6789 with diabetes and high blood pressure." \
  -H "Content-type: text/plain"


echo ""
echo ""

# French
echo "French test:"
curl "http://localhost:8080/api/filter?p=french" \
	--data "George Washington was president and his ssn was 123-456-6789 with diabetes and high blood pressure." \
  -H "Content-type: text/plain"