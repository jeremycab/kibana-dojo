.PHONY: build up down load-data

build: up load-data

up: 
	docker-compose up -d 

down:
	docker-compose down

load-data:
	curl -XPUT 'localhost:9200/shakespeare?pretty' -H 'Content-Type: application/json' -d '{"mappings": {"doc": {"properties": {"speaker": {"type": "keyword"},"play_name": {"type": "keyword"},"line_id": {"type": "integer"},"speech_number": {"type": "integer"}}}}}'
	curl -H 'Content-Type: application/x-ndjson' -XPOST 'localhost:9200/shakespeare/doc/_bulk?pretty' --data-binary @shakespeare_6.0.json
