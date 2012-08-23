web: bundle exec thin -e production start -p $PORT
worker: env QUEUE=* bundle exec rake resque:work
