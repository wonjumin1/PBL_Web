<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .container h1 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            margin-bottom: 5px;
            vertical-align: middle;
        }
        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
            display: block;
            margin-top: 5px;
            margin-bottom: 30px;
        }
        .sign-up-button {
            width: 100%; /* match_parent */
            padding: 10px;
            border: none;
            border-radius: 3px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .sign-up-button:hover {
            background-color: #45a049;
        }
        .id-check-button {
            padding: 5px 10px; /* wrap_content */
            background-color: #008CBA;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            vertical-align: middle;
            margin-top: 0;
            width: auto; /* wrap_content */
        }
        .id-check-button:hover {
            background-color: #007BB5;
        }
        .label-and-button {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>회원가입</h1>
        <form>
            <div class="form-group">
                <div class="label-and-button">
                    <label for="username">아이디</label>
                    <button type="button" class="id-check-button">아이디 중복 확인</button>
                </div>
                <input type="text" id="username" name="username">
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password">
            </div>
            <div class="form-group">
                <label for="confirm-password">비밀번호 확인</label>
                <input type="password" id="confirm-password" name="confirm-password">
            </div>
            <div class="form-group">
                <button type="submit" class="sign-up-button">회원가입</button>
            </div>
        </form>
    </div>
</body>
</html>