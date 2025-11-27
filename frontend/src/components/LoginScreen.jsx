import React, { useState } from 'react';
import './LoginScreen.css';

const LoginScreen = ({ onLogin }) => {
    const [username, setUsername] = useState('');

    const handleSubmit = (e) => {
        e.preventDefault();
        if (username.trim()) {
            onLogin(username);
        }
    };

    return (
        <div className="login-container">
            <div className="login-card">
                <h2>Welcome to Support</h2>
                <p>Please enter your username to continue.</p>
                <form onSubmit={handleSubmit}>
                    <input
                        type="text"
                        placeholder="Username (e.g., john_doe)"
                        value={username}
                        onChange={(e) => setUsername(e.target.value)}
                        className="login-input"
                    />
                    <button type="submit" className="login-button">Start Chat</button>
                </form>
            </div>
        </div>
    );
};

export default LoginScreen;
