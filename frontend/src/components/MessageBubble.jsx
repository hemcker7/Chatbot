import ReactMarkdown from 'react-markdown';
import './MessageBubble.css';

const MessageBubble = ({ message }) => {
    const isUser = message.sender === 'user';
    return (
        <div className={`message-bubble ${isUser ? 'user' : 'bot'}`}>
            <div className="message-content">
                <ReactMarkdown>{message.text}</ReactMarkdown>
            </div>
        </div>
    );
};

export default MessageBubble;
