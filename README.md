# Cardápio Online API

A Spring Boot API for listing and adding dishes to an online menu. The Java source is on [`master`](https://github.com/MatheusHVM/Card-pio-Online/tree/master). The [React frontend](https://github.com/MatheusHVM/frontend-card-pio-online) is in a separate repository.

## Run locally

Use Java 17 and PostgreSQL.

```sh
git clone --branch master https://github.com/MatheusHVM/Card-pio-Online.git
cd Card-pio-Online
```

1. Create a PostgreSQL database. In that database, apply the checked-in schema with `psql -d YOUR_DATABASE -f src/main/resources/db.migrations/V001_criando-tabela_de_foods.sql`. The Maven project has no Flyway dependency, so this SQL must be applied separately.
2. Set `SPRING_DATASOURCE_URL` to your PostgreSQL JDBC URL and set `SPRING_DATASOURCE_USERNAME` and `SPRING_DATASOURCE_PASSWORD` to your local database credentials. Grant the application user access to the table and its sequence.
3. Run `./mvnw spring-boot:run` from the project root. On Windows use `.\mvnw.cmd spring-boot:run`.

The API listens on `http://localhost:8080` by default and allows browser requests from `http://localhost:5173`.

| Method | Endpoint | Behavior |
| --- | --- | --- |
| GET | `/food` | List menu items with ID, title, image and price. |
| POST | `/food` | Add an item using JSON with `title`, `image` and an integer `price`. |

Use `curl http://localhost:8080/food` to verify the API responds. Run `./mvnw test` with an initialized test database to run the Spring context test.
