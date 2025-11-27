import React from 'react';
import './OrderCard.css';

const OrderCard = ({ order }) => {
    return (
        <div className="order-card">
            <div className="order-header">
                <span className="order-date">{order.orderDate}</span>
                <span className={`order-status ${order.status.toLowerCase()}`}>{order.status}</span>
            </div>
            <div className="order-body">
                <h3>{order.productName}</h3>
                <p>Delivery: {order.deliveryDate}</p>
                {order.activeTicket && (
                    <div className="order-ticket">
                        Ticket: {order.activeTicket}
                    </div>
                )}
            </div>
        </div>
    );
};

export default OrderCard;
