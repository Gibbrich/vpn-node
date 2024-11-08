1. Install docker, docker-compose and git to the system.

2. Replace these placeholders with your own values:
- your-domain.com (nginx/conf.d/default.conf and docker-compose.yml)
- your-port (nginx/conf.d/default.conf)
- your-uuid (nginx/conf.d/default.conf)

3. Make sure these ports are opened:
- 80
- 443
- your-port for dashboard

4. Issue certificate:
```bash
docker-compose run --rm certbot-issue
```

2. Start the server:
```bash
docker-compose up -d
```

3. Make renew script executable:
```bash
chmod +x renew_certbot.sh
```

4. Add renew script to crontab:
```bash
crontab -e
```
```bash
0 0,12 * * * /bin/bash ~/vpn_node/renew_certbot.sh >> ~/vpn_node/certbot_renewal.log 2>&1
```