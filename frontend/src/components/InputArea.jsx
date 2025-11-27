import React, { useState } from 'react';
import './InputArea.css';

const InputArea = ({ onSendMessage, disabled }) => {
    const [text, setText] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();
        if (text.trim() && !disabled) {
            onSendMessage(text);
            setText('');
        }
    };

    return (
        <form className="input-area" onSubmit={handleSubmit}>
            <input
                type="text"
                placeholder="Type a message..."
                value={text}
                onChange={(e) => setText(e.target.value)}
                disabled={disabled}
            />
            <button type="submit" disabled={disabled || !text.trim()}>
                Send
            </button>
        </form>
    );
};

export default InputArea;
