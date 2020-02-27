curl "http://localhost:4741/awards" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "award": {
      "level": "'Noble'",
      "name": "'Lord'",
      "user_id": "5"
    }
  }'

echo