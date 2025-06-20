# outilmaria-front — Angular Frontend

Frontend application for the **Outil de Maria** project, developed with **Angular 19.2.15**. It allows internal users to submit and track DAE requests via a clean and responsive UI.

---

## Features (Planned)
- Form wizard for DAE creation
- Role-based navigation & permissions
- Status tracking workflow
- CSV / Excel export
- Secure communication with backend API
- Docker-based local dev

---

## Tech Stack

| Layer     | Technology    |
|-----------|---------------|
| Frontend  | Angular 19.2.15 |
| Styles    | SCSS (custom + responsive) |
| State     | Angular services (or NgRx if needed) |
| Auth      | Azure AD or custom JWT integration |
| Testing   | Karma + Jasmine or Vitest |
| DevOps    | Docker, GitHub Actions |

---

## Planned Folder Structure
<pre>
   src/app/ 
  ├── pages/ # Feature-based components 
  ├── core/ # Auth services, guards, interceptors
  ├── shared/ # Reusable components (e.g. buttons, tables)
  ├── models/ # Interfaces
  ├── interceptors/ # HTTP error & auth interceptors
</pre>

  
---

## Local Development

### With Docker

```bash
docker-compose up --build

```

App will run at: http://localhost:4200

### Manual Setup 
```bash
npm install
ng serve
```

### Environment Config 

Edit the file:
src/environments/environment.ts

```bash
export const environment = {
  production: false,
  apiUrl: 'http://localhost:8000',
};
```

### Testing 
```bash
ng test
```


### Code Quality (Planned)
- Linter : eslint
- Formatters : prettier

```bash
npm run lint
npm run format
```

### Git & Commits 
Branches : 
- main : production-ready
- develop : in-progress features
- feat/*, fix/*

Commit Convention :  
Use Conventional Commits:
```bash
feat(form): add budget field
fix(ui): fix column alignment in table
```

### License
MIT or internal (to confirm)

```bash

You're now ready to:
 Commit those to GitHub  
 Use them as base for onboarding, CI, Docker, tests
```











