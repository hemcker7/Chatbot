import React, { useEffect, useState } from 'react';
import OrderCard from './OrderCard';
import './OrderList.css';

const OrderList = ({ username, onClose }) => {
    const [orders, setOrders] = useState([]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        fetch(`http://localhost:8080/api/orders/${username}`)
            .then(res => res.json())
            .then(data => {
                setOrders(data);
                setLoading(false);
            })
            .catch(err => {
                console.error("Failed to fetch orders", err);
                setLoading(false);
            });
    }, [username]);

    return (
        <div className="order-list-overlay">
            <div className="order-list-modal">
                <div className="order-list-header">
                    <h2>Your Orders</h2>
                    <button onClick={onClose} className="close-button">×</button>
                </div>
                <div className="order-list-content">
                    {loading ? (
                        <p>Loading orders...</p>
                    ) : orders.length > 0 ? (
                        orders.map(order => <OrderCard key={order.id} order={order} />)
                    ) : (
                        <p>No orders found.</p>
                    )}
                </div>
            </div>
        </div>
    );
};

export default OrderList;
