# EV Charger Admin Panel

A modern admin interface for managing electric vehicle (EV) chargers and
their locations, built with **Ruby on Rails** and styled using **Bootstrap 5**.
This application provides a clean, user-friendly interface for managing chargers,
plug types, and geographical locations, complete with authentication.

## Features

- ✅ Admin dashboard with navigation sidebar
- ⚡ CRUD management for EV chargers and plug types
- 📍 Location management with coordinates
- 🔐 User authentication via Devise
- 🎨 Responsive UI with Bootstrap 5 and Bootstrap Icons
- 📦 Beautiful forms, tables, flash messages, and form validation

## Getting Started
This project is designed to be run locally. Follow the instructions below to set up your development environment.

### Prerequisites

- Docker and Docker Compose installed on your machine

### Setup docker

```bash
docker compose build
docker compose up -d
```

### Setup

Add to ~/.bash_aliases

```bash
alias open-ruby='docker exec -it chargers-web-1 /bin/bash'
```

then restart the terminal and run

```bash
open-ruby

bundle install

bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

### Run tests

```bash
bin/rails test
```
