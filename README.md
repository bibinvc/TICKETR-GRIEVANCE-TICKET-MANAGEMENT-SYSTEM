# TICKETR - Grievance Ticket Management System

## Overview

This is a Java Servlet/JSP-based grievance ticket management system. It provides three user roles:
- `admin`
- `STAFF`
- `STD` (standard user)

The project includes:
- login/auth
- ticket creation, listing, status update, task completion
- file upload (task attachments)
- email notification utility

## Repository structure

- `GMS/src/java` : Java source packages
- `GMS/web` : JSP front-end views
- `lib` : external jars (dependencies)
- `DB` : SQL schema scripts

## Fixes applied in this update

1. `ConnectionFactory` updated to use modern MySQL driver (`com.mysql.cj.jdbc.Driver`) and timezone parameters.
2. `TicketLoginServlet` query fixed to handle OR precedence and avoid wrong authentication/SQL injection vectors.
3. `TicketAuthFilter` session key changed to correct `login` attribute.
4. `TaskComplete` + `NewTaskReg` path handling hard-coded path removed and updated to relative `ticketfiles` under project directory.
5. Removed generated `GMS/build` directory.
6. Added this `README.md` and `.gitignore` for better git hygiene.
7. Added missing view routing for `/ticket`, `/auth/...` dashboard/inbox/new-task pages, plus a download servlet for uploaded attachments.
8. Fixed broken JSP links/scripts that prevented the login page, role-specific new-task views, and uploaded file labels from working correctly.
9. Simplified the NetBeans/Ant classpath to jars that are actually present in the repository.

## Prerequisites

- Java 8+ (prefer Java 11+)
- Apache Ant (NetBeans project uses Ant build)
- MySQL server

## Setup

1. Import database schema from `DB/login_db_ticket_auth_tbl.sql`, `DB/login_db_ticket_tbl.sql`, `DB/login_db_ticketchat_tbl.sql`.
2. Configure the database connection with JVM properties or environment variables:

```bash
-Dgms.db.url=jdbc:mysql://localhost:3306/gms_DB?useSSL=false&serverTimezone=UTC
-Dgms.db.user=root
-Dgms.db.password=your_password
```

Or set `GMS_DB_URL`, `GMS_DB_USER`, and `GMS_DB_PASSWORD`.

3. Start application server (Tomcat, Jboss, etc.) and deploy `GMS` web app.
4. Optional: set SMTP placeholders in `GMS/web/WEB-INF/web.xml` before enabling e-mail sending.

## Build & Run

```bash
cd "GMS"
ant clean
ant -Dnb.internal.action.name=run
```

> In this environment, `ant`/`javac` commands were not found. Ensure the JDK and Ant are installed and available on PATH before running.

## Checklist for manual verification

- [ ] Login page (`/ticket`) accepts valid user and redirects according to role.
- [ ] Dashboard URLs under `/auth/` are protected by `AuthFilter`.
- [ ] Dashboard and inbox pages resolve from the extensionless routes under `/auth/...`.
- [ ] Ticket create/update flows complete without query syntax errors.
- [ ] Upload directory `ticketfiles` is created and files stored.
- [ ] Uploaded files download correctly from inbox pages.

## Additional notes

- A robust production update should:
  - replace string SQL concatenation with `PreparedStatement` everywhere
  - hash passwords in database (bcrypt/argon2)
  - validate multipart input and destroy temp objects
  - add integration tests for global routes

