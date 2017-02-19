#!/bin/bash

CODE=$(curl -s -o /dev/null -w "%{http_code}" -X GET http://elasticsearch:9200/histories)
if [ "$CODE" != 200 ]; then
    # If histories does not exists
    ./bin/rails db:migrate RAILS_ENV=development
fi

./bin/rails server -b 0.0.0.0 -p 3000
