#!/bin/bash

./bin/rails db:migrate RAILS_ENV=development
./bin/rails server -b 0.0.0.0 -p 9000
