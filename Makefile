export COMPOSE_PROJECT_NAME=caddy-duckdns-letsencrypt
export COMPOSE_FILE=docker-compose.yml

.SILENT: up
up:
	$(MAKE) down
	docker compose up -d

.SILENT: down
down:
	docker compose down --remove-orphans

.SILENT: rebuild
rebuild:
	docker compose build --pull --no-cache
	$(MAKE) up

.SILENT: status
status:
	docker compose ps

.SILENT: logs
logs:
	docker compose logs -f --tail=100

.SILENT: stats
stats:
	docker stats caddy
