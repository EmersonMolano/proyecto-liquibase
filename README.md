# proyecto-liquibase

Este módulo levanta la base de datos PostgreSQL y ejecuta migraciones con Liquibase.

## Archivo principal

- `docker-compose.yml`

## Qué levanta

- `db` (PostgreSQL 15) en `localhost:5432 o 192.168.0.24:5432 (En caso de usar una maquina virtual con adaptador puente, colocar la ip generada localmente en la maquina para el funcionamiento) `
- `liquibase` (runner de migraciones)

## Cómo ejecutar

Desde la raíz del proyecto (`API/API`):

```bash
docker compose -f proyecto-liquibase/docker-compose.db.yml up -d --build
```

## Resultado esperado

- `postgres_db` queda `Up (healthy)`
- `liquibase_runner` termina en `Exited (0)` (esto es correcto)

## Verificación rápida

```bash
docker ps -a
docker logs liquibase_runner --tail 100
```

Debes ver algo como:

- `Liquibase command 'update' was executed successfully.`

## Troubleshooting

Si backend falla con tablas faltantes (`missing table [tarea]`), primero valida que liquibase sí terminó con éxito.
