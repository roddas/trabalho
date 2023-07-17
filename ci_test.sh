#!/usr/bin/bash
cat "RAILS_ENV=test" >> .env
docker compose up  -d decidim_web postgres
docker exec -it decidim_web bash
# bundle exec rails r test/test_helper.rb  
cat test/test_helper.rb  | rails c