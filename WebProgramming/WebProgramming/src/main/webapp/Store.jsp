<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Businesses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 20px;
            border-bottom: 1px solid #ccc;
        }
        .header .search-container {
            display: flex;
            align-items: center;
            flex-grow: 1;
            margin-right: 20px;
        }
        .header .search-container input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
        }
        .header .search-container button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        .header .buttons {
            display: flex;
            align-items: center;
        }
        .header .buttons button {
            margin-left: 10px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        .header .buttons button.logout {
            background-color: #d9534f;
        }
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            padding: 20px;
        }
        .grid-item {
            border: 1px solid #ccc;
            border-radius: 5px;
            overflow: hidden;
            text-align: center;
        }
        .grid-item img {
            width: 100%;
            height: 150px;
        }
        .grid-item .details {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="search-container">
            <input type="text" placeholder="Search...">
            <button type="button">Search</button>
        </div>
        <div class="buttons">
            <button type="button" class="logout">Logout</button>
            <button type="button">Cart</button>
        </div>
    </div>
    <div class="grid-container" id="businesses-grid">
        <!-- JavaScript를 통해 데이터를 삽입합니다 -->
    </div>

    <script>
        // 임의의 데이터
        const businesses = [
            { name: "Foodworld", image_url: "https://images.unsplash.com/photo-1551963831-b3b1ca40c98e", address: "123 Main St" },
            { name: "Pizzahub", image_url: "https://plus.unsplash.com/premium_photo-1663852297267-827c73e7529e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", address: "762 Oak St"},
            { name: "Donuts hut", image_url: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c", address: "789 Oak St" },
            { name: "Ruby Tuesday", image_url: "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38", address: "101 Pine St" },
            { name: "Kukata Fried Chicken", image_url: "https://images.unsplash.com/photo-1586190848861-99aa4a171e90", address: "202 Maple St" },
            { name: "Red Square", image_url: "https://images.unsplash.com/photo-1551218808-94e220e084d2", address: "303 Cedar St" },
            { name: "Taco Bell", image_url: "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4", address: "404 Birch St" },
        ];

        // 그리드 컨테이너 선택
        const gridContainer = document.getElementById('businesses-grid');

        // 각 사업체 데이터를 그리드 아이템으로 생성
        businesses.forEach(business => {
            const gridItem = document.createElement('div');
            gridItem.className = 'grid-item';

            const img = document.createElement('img');
            img.src = business.image_url;
            img.alt = business.name;

            const details = document.createElement('div');
            details.className = 'details';

            const name = document.createElement('h3');
            name.textContent = business.name;

            const address = document.createElement('p');
            address.textContent = business.address;

            details.appendChild(name);
            details.appendChild(address);
            gridItem.appendChild(img);
            gridItem.appendChild(details);
            gridContainer.appendChild(gridItem);
        });
    </script>
</body>
</html>