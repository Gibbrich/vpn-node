#!/bin/bash

# Run Certbot in standalone mode using Docker Compose to renew certificates
docker-compose run --rm certbot-renew

# Reload Nginx if certificates were renewed
docker-compose exec nginx nginx -s reload