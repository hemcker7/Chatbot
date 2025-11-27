$orders = @(
    @{
        username = "john_doe"
        productName = "iPhone 15 Pro"
        orderDate = "2025-01-15"
        deliveryDate = "2025-01-20"
        status = "Delivered"
        activeTicket = $null
    },
    @{
        username = "john_doe"
        productName = "Sony WH-1000XM5"
        orderDate = "2025-01-25"
        deliveryDate = "2025-01-28"
        status = "Shipped"
        activeTicket = $null
    },
    @{
        username = "john_doe"
        productName = "MacBook Air M3"
        orderDate = "2025-01-26"
        deliveryDate = "2025-02-01"
        status = "Processing"
        activeTicket = "Requesting Address Change"
    },
    @{
        username = "jane_smith"
        productName = "Samsung Galaxy S24"
        orderDate = "2025-01-10"
        deliveryDate = "2025-01-15"
        status = "Delivered"
        activeTicket = $null
    },
    @{  username="alex_morgan"
        productName="iPhone 15 Pro"
        orderDate="2025-01-02"
        deliveryDate="2025-01-06"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="alex_morgan"
        productName="Dyson V15 Vacuum"
        orderDate="2025-01-11"
        deliveryDate="2025-01-15"
        status="Shipped"
        activeTicket=$null
    },
    @{  username="alex_morgan"
        productName="PS5 Slim"
        orderDate="2025-01-18"
        deliveryDate="2025-01-23"
        status="Processing"
        activeTicket="Delay Complaint"
    },
    @{  username="alex_morgan"
        productName="Apple Watch Ultra 2"
        orderDate="2025-01-25"
        deliveryDate="2025-01-30"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="alex_morgan"
        productName="AirPods Pro 2"
        orderDate="2025-02-01"
        deliveryDate="2025-02-04"
        status="Shipped"
        activeTicket=$null
    },
    @{  username="sarah_lee"
        productName="Samsung Galaxy S24 Ultra"
        orderDate="2025-01-05"
        deliveryDate="2025-01-10"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="sarah_lee"
        productName="Kindle Paperwhite"
        orderDate="2025-01-12"
        deliveryDate="2025-01-16"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="sarah_lee"
        productName="Beats Studio Pro"
        orderDate="2025-01-19"
        deliveryDate="2025-01-25"
        status="Processing"
        activeTicket="Wrong Color Received"
    },
    @{  username="sarah_lee"
        productName="Nintendo Switch OLED"
        orderDate="2025-01-26"
        deliveryDate="2025-02-01"
        status="Shipped"
        activeTicket=$null
    },
    @{  username="sarah_lee"
        productName="Instant Pot Duo"
        orderDate="2025-02-02"
        deliveryDate="2025-02-05"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="michael_turner"
        productName="MacBook Air M3"
        orderDate="2025-01-03"
        deliveryDate="2025-01-08"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="michael_turner"
        productName="Logitech MX Master 3S"
        orderDate="2025-01-10"
        deliveryDate="2025-01-12"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="michael_turner"
        productName="4K LG Smart Monitor"
        orderDate="2025-01-15"
        deliveryDate="2025-01-21"
        status="Processing"
        activeTicket="Requesting Address Change"
    },
    @{  username="michael_turner"
        productName="Meta Quest 3"
        orderDate="2025-01-27"
        deliveryDate="2025-02-01"
        status="Shipped"
        activeTicket=$null
    },
    @{  username="michael_turner"
        productName="WD 2TB SSD"
        orderDate="2025-02-04"
        deliveryDate="2025-02-07"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="steph_williams"
        productName="GoPro Hero 12"
        orderDate="2025-01-04"
        deliveryDate="2025-01-09"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="steph_williams"
        productName="Ninja Air Fryer XL"
        orderDate="2025-01-12"
        deliveryDate="2025-01-17"
        status="Returned"
        activeTicket="Refund in Progress"
    },
    @{  username="steph_williams"
        productName="HP Envy Laptop"
        orderDate="2025-01-22"
        deliveryDate="2025-01-28"
        status="Processing"
        activeTicket=$null
    },
    @{  username="steph_williams"
        productName="Bose QuietComfort Ultra"
        orderDate="2025-01-29"
        deliveryDate="2025-02-04"
        status="Shipped"
        activeTicket=$null
    },
    @{  username="steph_williams"
        productName="Fitbit Sense 2"
        orderDate="2025-02-06"
        deliveryDate="2025-02-10"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="chris_roberts"
        productName="ASUS ROG Gaming Laptop"
        orderDate="2025-01-06"
        deliveryDate="2025-01-14"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="chris_roberts"
        productName="Razer BlackWidow Keyboard"
        orderDate="2025-01-15"
        deliveryDate="2025-01-18"
        status="Delivered"
        activeTicket=$null
    },
    @{  username="chris_roberts"
        productName="Elgato Stream Deck"
        orderDate="2025-01-19"
        deliveryDate="2025-01-25"
        status="Cancelled"
        activeTicket="Payment Failure"
    },
    @{  username="chris_roberts"
        productName="Sony WH-1000XM5"
        orderDate="2025-01-27"
        deliveryDate="2025-01-30"
        status="Shipped"
        activeTicket=$null
    },
    @{  username="chris_roberts"
        productName="Blue Yeti X Microphone"
        orderDate="2025-02-02"
        deliveryDate="2025-02-05"
        status="Processing"
        activeTicket="Requesting Faster Delivery"
    },
        @{ username="linda_parker"; productName="Google Pixel 9 Pro"; orderDate="2025-01-03"; deliveryDate="2025-01-07"; status="Delivered"; activeTicket=$null },
    @{ username="linda_parker"; productName="JBL Charge 6"; orderDate="2025-01-10"; deliveryDate="2025-01-14"; status="Delivered"; activeTicket=$null },
    @{ username="linda_parker"; productName="Ring Doorbell Pro 2"; orderDate="2025-01-18"; deliveryDate="2025-01-23"; status="Shipped"; activeTicket=$null },
    @{ username="linda_parker"; productName="Dell XPS 14"; orderDate="2025-01-27"; deliveryDate="2025-02-03"; status="Processing"; activeTicket="Requesting Invoice Copy" },
    @{ username="linda_parker"; productName="Tile Pro Tracker"; orderDate="2025-02-05"; deliveryDate="2025-02-08"; status="Delivered"; activeTicket=$null },

    @{ username="david_clark"; productName="iPad Pro M3"; orderDate="2025-01-01"; deliveryDate="2025-01-06"; status="Delivered"; activeTicket=$null },
    @{ username="david_clark"; productName="Apple Magic Keyboard"; orderDate="2025-01-11"; deliveryDate="2025-01-14"; status="Shipped"; activeTicket=$null },
    @{ username="david_clark"; productName="Rode NT-USB Microphone"; orderDate="2025-01-18"; deliveryDate="2025-01-23"; status="Processing"; activeTicket="Requesting Faster Delivery" },
    @{ username="david_clark"; productName="Xbox Series X"; orderDate="2025-01-26"; deliveryDate="2025-02-01"; status="Delivered"; activeTicket=$null },
    @{ username="david_clark"; productName="Philips Hue Smart Lights"; orderDate="2025-02-04"; deliveryDate="2025-02-09"; status="Delivered"; activeTicket=$null },

    @{ username="olivia_grant"; productName="Samsung Z Fold 6"; orderDate="2025-01-04"; deliveryDate="2025-01-09"; status="Delivered"; activeTicket=$null },
    @{ username="olivia_grant"; productName="Anker PowerCore 30K"; orderDate="2025-01-14"; deliveryDate="2025-01-18"; status="Shipped"; activeTicket=$null },
    @{ username="olivia_grant"; productName="Marshall Bluetooth Speaker"; orderDate="2025-01-20"; deliveryDate="2025-01-26"; status="Processing"; activeTicket="Wrong Address Provided" },
    @{ username="olivia_grant"; productName="LG OLED Gaming Monitor"; orderDate="2025-01-28"; deliveryDate="2025-02-03"; status="Delivered"; activeTicket=$null },
    @{ username="olivia_grant"; productName="Epson EcoTank Printer"; orderDate="2025-02-06"; deliveryDate="2025-02-11"; status="Returned"; activeTicket="Refund Approved" },

    @{ username="ethan_walker"; productName="PS5 DualSense Edge"; orderDate="2025-01-06"; deliveryDate="2025-01-10"; status="Delivered"; activeTicket=$null },
    @{ username="ethan_walker"; productName="Garmin Fenix 8"; orderDate="2025-01-13"; deliveryDate="2025-01-17"; status="Delivered"; activeTicket=$null },
    @{ username="ethan_walker"; productName="Oculus Elite Strap"; orderDate="2025-01-21"; deliveryDate="2025-01-28"; status="Processing"; activeTicket="Payment Verification Needed" },
    @{ username="ethan_walker"; productName="Alienware Aurora PC"; orderDate="2025-01-30"; deliveryDate="2025-02-07"; status="Shipped"; activeTicket=$null },
    @{ username="ethan_walker"; productName="Creative Pebble V4 Speakers"; orderDate="2025-02-08"; deliveryDate="2025-02-12"; status="Delivered"; activeTicket=$null },

    @{ username="nina_carter"; productName="Sony ZV-E10 Camera"; orderDate="2025-01-03"; deliveryDate="2025-01-10"; status="Delivered"; activeTicket=$null },
    @{ username="nina_carter"; productName="Canon EF Lens 50mm"; orderDate="2025-01-11"; deliveryDate="2025-01-15"; status="Delivered"; activeTicket=$null },
    @{ username="nina_carter"; productName="Razer Seiren Mini"; orderDate="2025-01-22"; deliveryDate="2025-01-29"; status="Processing"; activeTicket="Shipping Delay Complaint" },
    @{ username="nina_carter"; productName="MSI Creator Laptop"; orderDate="2025-01-30"; deliveryDate="2025-02-06"; status="Shipped"; activeTicket=$null },
    @{ username="nina_carter"; productName="Sandisk 1TB Extreme SSD"; orderDate="2025-02-08"; deliveryDate="2025-02-10"; status="Delivered"; activeTicket=$null },

    @{ username="harry_brooks"; productName="Lenovo Legion Laptop"; orderDate="2025-01-02"; deliveryDate="2025-01-09"; status="Delivered"; activeTicket=$null },
    @{ username="harry_brooks"; productName="Corsair RGB Keyboard"; orderDate="2025-01-13"; deliveryDate="2025-01-15"; status="Delivered"; activeTicket=$null },
    @{ username="harry_brooks"; productName="Elgato Wave 3"; orderDate="2025-01-19"; deliveryDate="2025-01-27"; status="Cancelled"; activeTicket="Card Declined" },
    @{ username="harry_brooks"; productName="Apple AirTag Pack"; orderDate="2025-01-28"; deliveryDate="2025-02-01"; status="Shipped"; activeTicket=$null },
    @{ username="harry_brooks"; productName="Samsung T9 External SSD"; orderDate="2025-02-06"; deliveryDate="2025-02-09"; status="Processing"; activeTicket="Requesting Priority Shipping" },

    @{ username="emma_brown"; productName="iPhone 15 Leather Case"; orderDate="2025-01-07"; deliveryDate="2025-01-09"; status="Delivered"; activeTicket=$null },
    @{ username="emma_brown"; productName="M2 Mac Mini"; orderDate="2025-01-15"; deliveryDate="2025-01-21"; status="Delivered"; activeTicket=$null },
    @{ username="emma_brown"; productName="Sony A7 IV"; orderDate="2025-01-22"; deliveryDate="2025-01-29"; status="Processing"; activeTicket="Wrong Address Shock" },
    @{ username="emma_brown"; productName="SteelSeries Arctis Nova"; orderDate="2025-01-31"; deliveryDate="2025-02-04"; status="Delivered"; activeTicket=$null },
    @{ username="emma_brown"; productName="Belkin 65W Charger"; orderDate="2025-02-09"; deliveryDate="2025-02-12"; status="Shipped"; activeTicket=$null },

    @{ username="ryan_evans"; productName="Huawei Matebook X"; orderDate="2025-01-09"; deliveryDate="2025-01-16"; status="Delivered"; activeTicket=$null },
    @{ username="ryan_evans"; productName="Google Nest Hub Max"; orderDate="2025-01-14"; deliveryDate="2025-01-19"; status="Delivered"; activeTicket=$null },
    @{ username="ryan_evans"; productName="DJI Mini 4 Pro"; orderDate="2025-01-21"; deliveryDate="2025-01-30"; status="Processing"; activeTicket="Requesting Order Cancellation" },
    @{ username="ryan_evans"; productName="Razer Kishi V2"; orderDate="2025-02-01"; deliveryDate="2025-02-05"; status="Shipped"; activeTicket=$null },
    @{ username="ryan_evans"; productName="Anker Docking Station"; orderDate="2025-02-10"; deliveryDate="2025-02-14"; status="Delivered"; activeTicket=$null },

    @{ username="zoe_miller"; productName="iPad Mini"; orderDate="2025-01-11"; deliveryDate="2025-01-15"; status="Delivered"; activeTicket=$null },
    @{ username="zoe_miller"; productName="OnePlus Buds Pro 3"; orderDate="2025-01-19"; deliveryDate="2025-01-23"; status="Delivered"; activeTicket=$null },
    @{ username="zoe_miller"; productName="Fitbit Versa 4"; orderDate="2025-01-26"; deliveryDate="2025-02-02"; status="Processing"; activeTicket="Requesting Billing Change" },
    @{ username="zoe_miller"; productName="OLED Steam Deck"; orderDate="2025-02-05"; deliveryDate="2025-02-11"; status="Returned"; activeTicket="Replacement Requested" },
    @{ username="zoe_miller"; productName="Nanoleaf Rhythm Lights"; orderDate="2025-02-13"; deliveryDate="2025-02-17"; status="Delivered"; activeTicket=$null }



)

# Function to add order directly to MongoDB using a simple POST if we had an endpoint, 
# but since we don't have a direct POST /orders endpoint for seeding (only GET), 
# we will use a temporary controller method or just assume the user will add them via a tool.


foreach ($order in $orders) {
    $body = $order | ConvertTo-Json
    Invoke-RestMethod -Uri "http://localhost:8080/api/orders" -Method Post -Body $body -ContentType "application/json"
    Write-Host "Added Order: $($order.productName) for $($order.username)"
}
