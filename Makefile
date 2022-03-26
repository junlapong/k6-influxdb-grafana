default:

install:
	@go install go.k6.io/k6@latest
	@apt install influxdb
	@apt install grafana

test:
	@k6 run script.js

start:
	@docker-compose up -d influxdb grafana

run:
	@clear
	@k6 run --out influxdb=http://localhost:8086/k6 \
	        --vus 20 --duration 10m \
	        ${PWD}/script.js
