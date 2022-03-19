default:

install:
	@go install go.k6.io/k6@latest
	@apt install influxdb
	@apt install grafana

test:
	@k6 run script.js


