# Philter with English and French policies (persons/medical conditions)

## Contents

* `docker-compose.yaml` - A lightweight docker compose that doesn't include OpenSearch.
* `philter.properties`
* `english.json` - An policy for English names and medical conditions.
* `french.json` - A policy for French names and medical conditions. _(It uses the same models as English right now.)_

## Running and Sending Requests to Philter

Run `docker-compose up`.

Once the containers are running, run `test.sh` or do:

**For English:**

```
curl "http://localhost:8080/api/filter?p=english" \
	--data "George Washington was president and his ssn was 123-45-6789 with diabetes and high blood pressure." \
  -H "Content-type: text/plain"
```

English response:

```
{{{REDACTED-person}}} was president and his ssn was {{{REDACTED-ssn}}} and he lived in 90210 with {{{REDACTED-medical-condition}}} and {{{REDACTED-medical-condition}}}.
```

**For French:**

```
curl "http://localhost:8080/api/filter?p=french" \
	--data "George Washington was president and his ssn was 123-456-6789 with diabetes and high blood pressure." \
  -H "Content-type: text/plain"
```

French response:

```
{{{REDACTED-person}}} was president and his ssn was {{{REDACTED-canadian-id}}} with {{{REDACTED-medical-condition}}} and {{{REDACTED-medical-condition}}}.
```