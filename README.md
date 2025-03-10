# Railway PostgreSQL Docker Setup

This repository contains a Docker setup for deploying PostgreSQL on Railway.

## Important Note

The Dockerfile contains default credentials for initial setup:

- Default User: postgres
- Default Password: defaultpassword
- Default Database: railway_db

**Make sure to change these in Railway's environment variables for production use!**

## Local Development

1. Copy the environment file:

```bash
cp .env.example .env
```

2. Start the database:

```bash
docker-compose up -d
```

3. Connect to the database:

```bash
psql postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@localhost:5432/${POSTGRES_DB}
```

## Railway Deployment

1. Install Railway CLI:

```bash
npm i -g @railway/cli
```

2. Login to Railway:

```bash
railway login
```

3. Link your project:

```bash
railway link
```

4. Deploy to Railway:

```bash
railway up
```

5. Set Environment Variables in Railway Dashboard:
   - Go to your project settings
   - Add the following variables:
     - `POSTGRES_USER`
     - `POSTGRES_PASSWORD`
     - `POSTGRES_DB`

## Environment Variables

- `POSTGRES_USER`: Database user
- `POSTGRES_PASSWORD`: Database password
- `POSTGRES_DB`: Database name

## Features

- PostgreSQL 15
- Automatic database initialization
- Health checks
- Persistent volume storage
- Environment variable configuration
- Sample table creation script
