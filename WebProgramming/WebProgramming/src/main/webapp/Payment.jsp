<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .container {
            width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 10px;
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
        }
        .menu-item img {
            width: 100px;
            height: auto;
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
        .menu-item .actions span {
            font-weight: bold;
        }
        .address {
            margin-top: 20px;
        }
        .address label {
            display: block;
            margin-bottom: 5px;
        }
        .address input {
        	width: 550px;
            padding: 10px;
            padding-right: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .total {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .total span {
            font-size: 18px;
            font-weight: bold;
        }
        .checkout {
            text-align: center;
            margin-top: 20px;
        }
        .checkout button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="menu-item">
            <img src="https://images.unsplash.com/photo-1514516874901-562dbfbc1a11" alt="��ġ������">
            <div class="details">
                <h3>��ġ������</h3>
                <p>����: 2</p>
            </div>
            <div class="actions">
                <p><span>5000��</span></p>
            </div>
        </div>
        <div class="menu-item">
            <img src="https://images.unsplash.com/photo-1555992336-03a23c5cf0eb" alt="���">
            <div class="details">
                <h3>���</h3>
                <p>����: 1</p>
            </div>
            <div class="actions">
                <p><span>8000��</span></p>
            </div>
        </div>
        <div class="address">
            <label for="address">�ּ�</label>
            <input type="text" id="address" name="address">
            <label for="detailed-address">�� �ּ�</label>
            <input type="text" id="detailed-address" name="detailed-address">
        </div>
        <div class="total">
            <span>�� �ݾ� :</span>
            <span>18000��</span>
        </div>
        <div class="checkout">
            <button>�����ϱ�</button>
        </div>
    </div>
</body>
</html>