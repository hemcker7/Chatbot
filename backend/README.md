# Backend Setup

## Prerequisites
- Java 17+
- MongoDB (Running on localhost:27017)
- Google Gemini API Key

## Setup
1. Open `backend/src/main/resources/application.properties`.
2. Replace `YOUR_GEMINI_API_KEY` with your actual Google Gemini API key.

## Running
Open the `backend` folder in your IDE (IntelliJ IDEA, Eclipse, VS Code) and run `ChatbotApplication.java`.
Or run via terminal:
```bash
.\mvnw spring-boot:run
```

## API Endpoints
- `POST /api/chat`: Chat with the bot.
- `POST /api/faqs`: Add new FAQs.

## Managing FAQs

### 1. Using the PowerShell Script (Recommended)
We have provided a script `seed_faqs.ps1` in the root directory to easily add FAQs.

1. Open `seed_faqs.ps1` in a text editor.
2. Add your new questions and answers to the `$faqs` list.
3. Run the script:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\seed_faqs.ps1
   ```

### 2. Using API Directly (Postman/cURL)
You can send a POST request to `http://localhost:8080/api/faqs` with the following JSON body:
```json
{
  "question": "Your Question Here",
  "answer": "Your Answer Here"
}
```

### MongoDB Setup
Ensure MongoDB is installed and running on port 27017.
- **Windows**: Check "Services" app for "MongoDB Server".
- **Mac/Linux**: Run `sudo systemctl status mongod`.
