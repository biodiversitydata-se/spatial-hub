run:
	./gradlew bootRun

run-docker:
	./gradlew build -x integrationTest -x test
	docker compose build --no-cache
	docker compose up --detach

release:
	@./sbdi/make-release.sh
