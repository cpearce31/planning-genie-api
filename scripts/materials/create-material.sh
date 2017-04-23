#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/materials"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "material": {
      "material_type": "Practice",
      "due_date": "2017-04-02",
      "name": "'"spa-study-practice"'"
    }
  }'

echo
