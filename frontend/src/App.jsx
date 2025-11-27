import React, { useState } from 'react';
import ChatContainer from './components/ChatContainer';
import LoginScreen from './components/LoginScreen';

function App() {
  const [user, setUser] = useState(null);

  return (
    <>
      {!user ? (
        <LoginScreen onLogin={setUser} />
      ) : (
        <ChatContainer user={user} />
      )}
    </>
  );
}

export default App;
