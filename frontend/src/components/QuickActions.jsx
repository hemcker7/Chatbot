import React from 'react';
import './QuickActions.css';

const QuickActions = ({ onAction }) => {
    const actions = [
        "Where is my order?",
        "Return Policy",
        "Support Hours",
        "International Shipping"
    ];

    return (
        <div className="quick-actions">
            {actions.map((action, index) => (
                <button key={index} className="action-chip" onClick={() => onAction(action)}>
                    {action}
                </button>
            ))}
        </div>
    );
};

export default QuickActions;
