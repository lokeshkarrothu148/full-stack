# Assignment 2 – Individual Project
## Project: CollegeHub – Smart College Management System

- **Course:** Full Stack Web Development
- **Student Name:** Lokesh Karrothu
- **GitHub Repository:** [https://github.com/lokeshkarrothu148/full-stack.git](https://github.com/lokeshkarrothu148/full-stack.git)
- **Directory Structure:** `Assignment-2-Individual-Project/`

---

## 1. Project Overview
**CollegeHub** is a responsive, feature-rich web platform designed to streamline academic resource management, coursework submissions, official college announcements, campus events, and student inquiries. 

The application offers two distinct user experiences:
1. **Student Portal:** Allows students to browse lecture notes/PDFs, monitor upcoming coursework deadlines with live countdown indicators, stay updated on notices, and submit direct feedback to college authorities.
2. **Administrator Control Center:** Equips faculty and academic administrators with real-time statistics counters and management forms to add/delete study materials, publish notices, create assignments, schedule events, and review student feedback.

---

## 2. Directory Structure

```text
Assignment-2-Individual-Project/
├── README.md
├── screenshots/
│   └── README.md
└── src/
    ├── index.html
    ├── style.css
    ├── App.jsx
    ├── components/
    │   ├── Navbar.jsx
    │   ├── Dashboard.jsx
    │   ├── Materials.jsx
    │   ├── Assignments.jsx
    │   ├── Events.jsx
    │   ├── AdminPanel.jsx
    │   └── AuthModal.jsx
    └── data.json
```

---

## 3. Technology Stack

- **Frontend Core:** HTML5, CSS3 (Custom Responsive Blue-White Theme, No Frameworks).
- **Component Architecture:** React (JSX) with modular functional components and state hooks.
- **Initial Data Store:** `src/data.json` simulating database records for students, materials, assignments, announcements, events, and feedback.
- **Persistence:** LocalStorage synchronization preserving all admin modifications, new registrations, and student feedback across browser refreshes.
- **Backend / Relational DB Companion:** Node.js, Express.js, and MySQL backend located at the project root for full-stack deployment.

---

## 4. Key Modules & Features

### A. Authentication & Role Switcher
- User sign-in and registration with branch/department selection.
- Role-based views separating Student access from Administrator controls.
- One-click demo credentials filler for rapid academic evaluation.

### B. Student Dashboard
- Personalized welcome card displaying student name, academic department, and email.
- Quick-navigation cards to Study Materials, Assignments, and Events.
- Real-time departmental notice board feed.
- Interactive feedback submission form with 1–5 star ratings.

### C. Study Materials Catalog
- Browse lecture notes and syllabus guides.
- Search filter by title and department (CSE, IT, ECE, ME).
- Direct link to view or download reference PDFs.

### D. Assignments Tracker
- Problem statements and instructions.
- Dynamic deadline calculation displaying **Days Remaining**, **Due Soon**, or **Deadline Passed**.

### E. Campus Events
- Grid of upcoming hackathons, symposiums, and cultural festivals with date, time, and campus venue.

### F. Administrator Control Center
- Real-time analytical counters for enrolled students, materials, assignments, announcements, events, and feedback.
- Tabbed CRUD forms to publish and delete materials, notices, assignments, and events.
- Feedback review table displaying student details with status toggles (`Pending` / `Reviewed`).

---

## 5. Demo Test Credentials

| Role | Email | Password | Access Privileges |
|---|---|---|---|
| **Administrator** | `admin@collegehub.com` | `admin123` | Full access to Admin Center and CRUD controls |
| **Student (Default)** | `rahul.sharma@collegehub.com` | `student123` | Access to Student Portal and resources |
| **Student (Alt)** | `lokeshkarrothu148@collegehub.com` | `student123` | Student access |

---

## 6. How to Run Locally

### Option A: Using Vite (Recommended for React)
```bash
cd Assignment-2-Individual-Project
npm create vite@latest . -- --template react
npm install
npm run dev
```

### Option B: Running the Full-Stack Express & MySQL Server
From the repository root:
```bash
npm install
npm start
```
Then navigate to `http://localhost:3000`.

---

## 7. Submission Verification Checklist

- [x] Folder named exactly `Assignment-2-Individual-Project`
- [x] Detailed `README.md` included
- [x] `screenshots/` directory present
- [x] `src/` directory contains `index.html`, `style.css`, `App.jsx`, `components/`, and `data.json`
- [x] Code is clean, modular, and fully functional

