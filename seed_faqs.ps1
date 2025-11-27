$faqs = @(
    @{ question = "What is the refund policy?"; answer = "You can request a refund within 30 days of purchase if you are not satisfied with the product." },
    @{ question = "How do I reset my password?"; answer = "To reset your password, go to the login page and click on 'Forgot Password'. Follow the instructions sent to your email." },
    @{ question = "What are your support hours?"; answer = "Our customer support team is available 24/7 to assist you with any inquiries." },
    @{ question = "Do you offer international shipping?"; answer = "Yes, we ship to over 100 countries worldwide. Shipping costs and times vary by location." },
    @{ question = "How can I track my order?"; answer = "You can track your order by logging into your account and visiting the 'My Orders' section." },
    @{ question = "Can I change my shipping address?"; answer = "You can change your shipping address before the order is shipped. Contact support immediately." },
    @{ question = "What payment methods do you accept?"; answer = "We accept Visa, MasterCard, American Express, PayPal, and Apple Pay." },
    @{ question = "How do I return an item?"; answer = "To return an item, go to 'My Orders', select the item, and click 'Return'. Print the label and ship it back." },
    @{ question = "Is there a warranty on products?"; answer = "Yes, all electronics come with a 1-year manufacturer warranty." },
    @{ question = "Can I cancel my order?"; answer = "You can cancel your order within 1 hour of placing it. After that, it may have already been processed." },
    @{ question = "Do you offer gift wrapping?"; answer = "Yes, gift wrapping is available for an additional $5 fee at checkout." },
    @{ question = "How do I use a promo code?"; answer = "Enter your promo code in the 'Discount Code' box at checkout and click 'Apply'." },
    @{ question = "What if my item arrives damaged?"; answer = "Please contact support with photos of the damaged item within 48 hours of delivery for a replacement." },
    @{ question = "Do you have a loyalty program?"; answer = "Yes, join our Rewards Club to earn points on every purchase." },
    @{ question = "How do I delete my account?"; answer = "To delete your account, please contact our privacy team at privacy@example.com." },
    @{ question = "Are my payment details secure?"; answer = "Yes, we use SSL encryption and do not store your credit card details." },
    @{ question = "Can I order over the phone?"; answer = "Currently, we only accept orders through our website and mobile app." },
    @{ question = "Do you offer student discounts?"; answer = "Yes, students can get 10% off by verifying their status with StudentBeans." },
    @{ question = "What is your privacy policy?"; answer = "We value your privacy. You can read our full policy at the bottom of our homepage." },
    @{ question = "How do I contact support?"; answer = "You can chat with us here, email support@example.com, or call 1-800-123-4567." }
    @{ question = "Do you offer bulk or wholesale pricing?"; answer = "Yes, bulk orders qualify for discounted pricing. Please contact sales@example.com for a quote." },
    @{ question = "How long does shipping take?"; answer = "Standard shipping takes 3-7 business days, while express delivery takes 1-3 business days depending on your region." },
    @{ question = "Can I save items for later?"; answer = "Yes, you can add items to your wishlist by clicking the heart icon on any product page." },
    @{ question = "Why was my payment declined?"; answer = "Payments may fail due to insufficient funds, incorrect details, or bank restrictions. Try another payment method or contact your bank." },
    @{ question = "Do you offer EMI or installment payments?"; answer = "Yes, EMI options are available on select credit cards at checkout." },
    @{ question = "Can I modify my order after placing it?"; answer = "Minor changes such as size or color may be possible before shipping. Contact support as soon as possible." },
    @{ question = "How do I subscribe to your newsletter?"; answer = "Scroll to the bottom of the homepage and enter your email in the subscription box." },
    @{ question = "Can I disable marketing emails?"; answer = "Yes, click 'Unsubscribe' at the bottom of any promotional email to stop receiving them." },
    @{ question = "How do I update my account information?"; answer = "Log in to your account, go to 'Settings', and update personal or billing details." },
    @{ question = "Do you restock sold-out items?"; answer = "Yes, many popular products are restocked. You can sign up for restock alerts on the product page." },
    @{ question = "How do I report a technical issue on the website?"; answer = "Please send details, screenshots, or error messages to techsupport@example.com." },
    @{ question = "Can I purchase a gift card?"; answer = "Yes, digital gift cards are available in $10, $25, $50, and $100 denominations." },
    @{ question = "Does the price include taxes?"; answer = "Taxes are calculated during checkout and vary based on your shipping address." },
    @{ question = "Why haven't I received my confirmation email?"; answer = "Check your spam folder or verify if your email address was entered correctly. Contact support if needed." },
    @{ question = "Can I reorder a previously purchased item?"; answer = "Yes, visit the 'Order History' section and select 'Reorder' next to the product." },
    @{ question = "Why is my tracking link not updating?"; answer = "Tracking updates may take 24-48 hours after the package is handed to the courier." },
    @{ question = "Do your products require assembly?"; answer = "Some items may require minor assembly. Instructions and tools are included when needed." },
    @{ question = "Are there eco-friendly packaging options?"; answer = "Yes, we offer recycled packaging options for selected items during checkout." },
    @{ question = "What happens if my package is lost?"; answer = "If your order appears lost in transit, contact support and we will assist with a replacement or refund." },
    @{ question = "Do you offer product customization?"; answer = "Some items can be personalized. Look for customization options on the product page." },
    @{ question = "Can I view past invoices?"; answer = "Yes, invoices are available in the 'Billing & Orders' section of your account." },
    @{ question = "Is live chat support available?"; answer = "Yes, live chat support is available from the website sidebar during business hours." },
    @{ question = "Do you have a mobile app?"; answer = "Yes, our mobile app is available on both Android and iOS platforms." },
    @{ question = "How do I report fraudulent activity?"; answer = "If you notice suspicious activity on your account, change your password and contact security@example.com immediately." },
    @{ question = "Are there limits on the number of items I can purchase?"; answer = "Some high-demand products may have purchase limits to ensure fairness during restocks." }

)

foreach ($faq in $faqs) {
    $body = $faq | ConvertTo-Json
    Invoke-RestMethod -Uri "http://localhost:8080/api/faqs" -Method Post -Body $body -ContentType "application/json"
    Write-Host "Added FAQ: $($faq.question)"
}
