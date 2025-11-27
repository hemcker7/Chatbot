package com.example.chatbot.controller;

import com.example.chatbot.model.FAQ;
import com.example.chatbot.service.RAGService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class ChatController {

    @Autowired
    private RAGService ragService;

    @Autowired
    private com.example.chatbot.repository.OrderRepository orderRepository;

    @Autowired
    private com.example.chatbot.repository.ChatMessageRepository chatMessageRepository;

    @PostMapping("/chat")
    public Map<String, String> chat(@RequestBody Map<String, String> payload) {
        String query = payload.get("text");
        String username = payload.get("username");

        // Save User Message
        if (username != null) {
            chatMessageRepository.save(new com.example.chatbot.model.ChatMessage(username, query, "user"));
        }

        String answer = ragService.getAnswer(query, username);

        // Save Bot Message
        if (username != null) {
            chatMessageRepository.save(new com.example.chatbot.model.ChatMessage(username, answer, "bot"));
        }

        return Map.of("text", answer, "sender", "bot");
    }

    @GetMapping("/chat/history/{username}")
    public java.util.List<com.example.chatbot.model.ChatMessage> getChatHistory(@PathVariable String username) {
        return chatMessageRepository.findByUsernameOrderByTimestampAsc(username);
    }

    @PostMapping("/faqs")
    public FAQ addFAQ(@RequestBody FAQ faq) {
        return ragService.saveFAQ(faq);
    }

    @GetMapping("/orders/{username}")
    public java.util.List<com.example.chatbot.model.Order> getOrders(@PathVariable String username) {
        return orderRepository.findByUsername(username);
    }

    @PostMapping("/orders")
    public com.example.chatbot.model.Order addOrder(@RequestBody com.example.chatbot.model.Order order) {
        return orderRepository.save(order);
    }
}
