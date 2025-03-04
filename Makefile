.PHONY: build run dev stop clean rebuild logs

build:
	docker compose build

run:
	docker compose up -d

dev:
	docker compose up crawl4ai

stop:
	docker compose down

clean:
	docker compose down -v
	docker system prune -f

rebuild:
	docker compose down
	docker compose build --no-cache
	docker compose up -d

logs:
	docker compose logs -f

test:
	pytest tests/
