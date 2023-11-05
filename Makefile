build:
	docker build -t cristovaoolegario/coupons-api:latest .

run:
	docker run --rm -p 8080:8080 cristovaoolegario/coupons-api:latest
