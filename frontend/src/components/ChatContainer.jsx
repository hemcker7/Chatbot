import React, { useState } from 'react';
import MessageList from './MessageList';
import InputArea from './InputArea';
import QuickActions from './QuickActions';
import OrderList from './OrderList';
import { sendMessage } from '../api';
import './ChatContainer.css';

const ChatContainer = ({ user }) => {
  const [messages, setMessages] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const [showOrders, setShowOrders] = useState(false);

  React.useEffect(() => {
    // Load initial greeting
    setMessages([{ id: 'init', text: `Hello ${user}! I'm your support assistant. How can I help you today?`, sender: 'bot' }]);

    // Fetch history
    fetch(`http://localhost:8080/api/chat/history/${user}`)
      .then(res => res.json())
      .then(data => {
        if (data.length > 0) {
          const historyMessages = data.map(msg => ({
            id: msg.id,
            text: msg.text,
            sender: msg.sender
          }));
          setMessages(prev => [...prev, ...historyMessages]);
        }
      })
      .catch(err => console.error("Failed to load history", err));
  }, [user]);

  const handleSendMessage = async (text) => {
    const newMessage = { id: Date.now(), text, sender: 'user' };
    setMessages(prev => [...prev, newMessage]);
    setIsLoading(true);

    try {
      const data = await sendMessage(text, user);
      setMessages(prev => [...prev, { ...data, id: Date.now() + 1 }]);
    } catch (error) {
      setMessages(prev => [...prev, { id: Date.now() + 1, text: "Error connecting to server. Please check if the backend is running.", sender: 'bot' }]);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="chat-container">
      <div className="chat-header">
        <h2>Customer Support</h2>
        <button className="view-orders-btn" onClick={() => setShowOrders(true)}>
          View Orders
        </button>
      </div>
      <MessageList messages={messages} isLoading={isLoading} />
      <QuickActions onAction={handleSendMessage} />
      <InputArea onSendMessage={handleSendMessage} disabled={isLoading} />
      {showOrders && <OrderList username={user} onClose={() => setShowOrders(false)} />}
    </div>
  );
};

export default ChatContainer;
