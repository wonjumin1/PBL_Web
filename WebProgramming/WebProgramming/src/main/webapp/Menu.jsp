<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Food Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .header {
            position: fixed;
            top: 0;
            width: 100%;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
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
        .container {
            margin-top: 80px; /* 헤더 높이만큼 마진 */
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .menu-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            width: 500px;
        }
        .menu-item img {
            width: 100px;
            height: 70px;
            border-radius: 5px;
        }
        .menu-item .details {
            flex-grow: 1;
            margin-left: 20px;
        }
        .menu-item .details h3 {
            margin: 0 0 10px 0;
        }
        .menu-item .details p {
            margin: 0;
        }
        .menu-item .actions {
            text-align: right;
        }
        .menu-item .actions p {
            margin: 0 0 5px 0;
        }
        .menu-item .actions button {
            padding: 5px 10px;
            border: 1px solid #333;
            border-radius: 5px;
            background-color: white;
            cursor: pointer;
        }
        .cart {
            margin: 20px 0;
            text-align: center;
        }
        .cart button {
        	border: none;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            font-size: 18px;
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
    <div class="container" id="menu-container">
        <!-- JavaScript로 메뉴 항목을 추가합니다 -->
    </div>
    <div class="cart">
        <button>장바구니</button>
    </div>

    <script>
        // 임의의 데이터
        const menuItems = [
            { name: "김치볶음밥", image_url: "https://images.unsplash.com/photo-1514516874901-562dbfbc1a11", price: "5000원" },
            { name: "돈까스", image_url: "https://images.unsplash.com/photo-1555992336-03a23c5cf0eb", price: "8000원" },
            { name: "오뎅탕", image_url: "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4", price: "6000원" },
            { name: "새우튀김", image_url: "https://images.unsplash.com/photo-1604152135912-04a54876ebfd", price: "7000원" },
            { name: "불고기", image_url: "https://images.unsplash.com/photo-1504674900247-0877df9cc836", price: "9000원" },
            { name: "닭강정", image_url: "https://images.unsplash.com/photo-1512058564366-c9a2b310bd03", price: "10000원" },
            { name: "잡채", image_url: "https://images.unsplash.com/photo-1532768641073-503a250f9754", price: "7000원" },
            { name: "김밥", image_url: "https://images.unsplash.com/photo-1576416875249-79cd9f2c1737", price: "3000원" },
            { name: "양념치킨", image_url: "https://images.unsplash.com/photo-1543779281-8a2b0e1fe6a5", price: "11000원" },
        ];

        // 메뉴 컨테이너 선택
        const menuContainer = document.getElementById('menu-container');

        // 각 메뉴 항목을 생성하여 추가
        menuItems.forEach(item => {
            const menuItem = document.createElement('div');
            menuItem.className = 'menu-item';

            const img = document.createElement('img');
            img.src = item.image_url;
            img.alt = item.name;

            const details = document.createElement('div');
            details.className = 'details';

            const name = document.createElement('h3');
            name.textContent = item.name;

            const actions = document.createElement('div');
            actions.className = 'actions';

            const price = document.createElement('p');
            price.textContent = item.price;

            const button = document.createElement('button');
            button.textContent = '담기';

            details.appendChild(name);
            actions.appendChild(price);
            actions.appendChild(button);
            menuItem.appendChild(img);
            menuItem.appendChild(details);
            menuItem.appendChild(actions);
            menuContainer.appendChild(menuItem);
        });
    </script>
</body>
</html>