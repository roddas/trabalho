#!/usr/bin/bash
cat "RAILS_ENV=test" >> .env
docker compose up -d
docker exec -it decidim_web bash
# bundle exec rails r test/test_helper.rb  
ruby -I test test/test_helper.rb 