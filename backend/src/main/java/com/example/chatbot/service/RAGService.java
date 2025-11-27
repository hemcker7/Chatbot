package com.example.chatbot.service;

import com.example.chatbot.model.FAQ;
import com.example.chatbot.repository.FAQRepository;
import com.example.chatbot.repository.OrderRepository;
import com.example.chatbot.repository.ChatMessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class RAGService {

    @Autowired
    private FAQRepository faqRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private ChatMessageRepository chatMessageRepository;

    @Value("${gemini.api.key}")
    private String geminiApiKey;

    private final RestTemplate restTemplate = new RestTemplate();

    public String getAnswer(String query, String username) {
        // 1. Retrieve relevant FAQs
        List<FAQ> relevantFaqs = faqRepository.findByQuestionContainingIgnoreCase(query);
        String faqContext = relevantFaqs.stream()
                .map(f -> "Q: " + f.getQuestion() + "\nA: " + f.getAnswer())
                .collect(Collectors.joining("\n\n"));

        // 2. Retrieve User Orders
        String orderContext = "No recent orders found.";
        if (username != null && !username.isEmpty()) {
            List<com.example.chatbot.model.Order> orders = orderRepository.findByUsername(username);
            if (!orders.isEmpty()) {
                orderContext = orders.stream()
                        .map(o -> String.format("Order ID: %s, Product: %s, Date: %s, Status: %s, Delivery: %s",
                                o.getId(), o.getProductName(), o.getOrderDate(), o.getStatus(), o.getDeliveryDate()))
                        .collect(Collectors.joining("\n"));
            }
        }

        // 3. Retrieve Chat History (Last 10 messages)
        String historyContext = "";
        if (username != null && !username.isEmpty()) {
            List<com.example.chatbot.model.ChatMessage> history = chatMessageRepository
                    .findByUsernameOrderByTimestampAsc(username);
            int start = Math.max(0, history.size() - 10);
            historyContext = history.subList(start, history.size()).stream()
                    .map(m -> m.getSender().toUpperCase() + ": " + m.getText())
                    .collect(Collectors.joining("\n"));
        }

        // 4. Call Gemini API
        return callGemini(query, faqContext, orderContext, historyContext);
    }

    private String callGemini(String query, String faqContext, String orderContext, String historyContext) {
        String prompt = "You are a helpful customer support assistant for an e-commerce platform.\n" +
                "Use the following User Order History, FAQs, and Conversation History to answer the user's question.\n"
                +
                "If the user asks a follow-up question (e.g., 'Where is it?'), use the Conversation History to identify the product.\n\n"
                +
                "User Order History:\n" + orderContext + "\n\n" +
                "FAQs:\n" + faqContext + "\n\n" +
                "Conversation History:\n" + historyContext + "\n\n" +
                "User Question: " + query + "\n" +
                "Answer:";

        String url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key="
                + geminiApiKey;

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        Map<String, Object> part = new HashMap<>();
        part.put("text", prompt);

        Map<String, Object> content = new HashMap<>();
        content.put("parts", List.of(part));

        Map<String, Object> body = new HashMap<>();
        body.put("contents", List.of(content));

        HttpEntity<Map<String, Object>> entity = new HttpEntity<>(body, headers);

        try {
            ResponseEntity<Map> response = restTemplate.postForEntity(url, entity, Map.class);
            Map<String, Object> responseBody = response.getBody();

            List<Map<String, Object>> candidates = (List<Map<String, Object>>) responseBody.get("candidates");
            if (candidates != null && !candidates.isEmpty()) {
                Map<String, Object> candidate = candidates.get(0);
                Map<String, Object> responseContent = (Map<String, Object>) candidate.get("content");
                List<Map<String, Object>> parts = (List<Map<String, Object>>) responseContent.get("parts");
                if (parts != null && !parts.isEmpty()) {
                    return (String) parts.get(0).get("text");
                }
            }
            return "I couldn't generate an answer based on the available information.";
        } catch (Exception e) {
            e.printStackTrace();
            return "I'm sorry, I'm having trouble connecting to the brain right now. (Check API Key)";
        }
    }

    public FAQ saveFAQ(FAQ faq) {
        return faqRepository.save(faq);
    }
}
