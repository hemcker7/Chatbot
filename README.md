# Smart Customer Support Chatbot (Amazon-Style)

This project is a full-stack chatbot application featuring an "Amazon-style" support experience with order tracking, user identification, and RAG (Retrieval-Augmented Generation) for FAQs.

## Prerequisites
- **Java 25** (or JDK 17+)
- **Node.js** & **npm**
- **MongoDB** (Running on `localhost:27017`)
  - **Windows**: Open "Services", find "MongoDB Server", right-click -> Start.
  - **Mac/Linux**: Run `sudo systemctl start mongod` or `brew services start mongodb-community`.
- **Google Gemini API Key** (Configured in `backend/src/main/resources/application.properties`)

---

## Step-by-Step Run Guide

### 1. Start the Backend (Spring Boot)
Open a terminal in the `backend` folder and run:

```powershell
cd backend
$env:JAVA_HOME='C:\Program Files\Eclipse Adoptium\jdk-25.0.1.8-hotspot'
.\mvnw spring-boot:run
```
*Wait for "Started ChatbotApplication" to appear.*

### 2. Start the Frontend (React)
Open a **new** terminal in the `frontend` folder and run:

```powershell
cd frontend
npm install  # Only needed the first time
npm run dev
```
*Access the app at `http://localhost:5173`.*

### 3. Seed the Database (Orders & FAQs)
To populate the database with sample data (Orders for `john_doe` and 20+ FAQs), run these commands in the **root** folder:

```powershell
# Seed Orders
powershell -ExecutionPolicy Bypass -File .\seed_orders.ps1

# Seed FAQs
powershell -ExecutionPolicy Bypass -File .\seed_faqs.ps1
```

---

## How to Use
1.  Open **http://localhost:5173**.
2.  **Login**: Enter username `john_doe`.
3.  **Track Orders**:
    *   Click **"View Orders"** (top right) to see your order list.
    *   Ask **"Where is my iPhone 15?"** in the chat.
4.  **General Support**:
    *   Ask **"What is your refund policy?"**.
    *   Ask **"How do I reset my password?"**.
5.  **Context Awareness**:
    *   Ask **"Where is my iPhone?"** -> Bot replies.
    *   Ask **"Can I return it?"** -> Bot understands "it" refers to the iPhone.

## Troubleshooting
- **Backend fails to start?** Check if port `8080` is free.
- **"Trouble connecting to brain"?** Check your Gemini API Key in `application.properties`.
- **White screen on frontend?** Ensure you ran `npm install`.
