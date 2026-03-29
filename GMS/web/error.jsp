<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ticketR Error</title>
    <style>
        body {
            margin: 0;
            font-family: "Segoe UI", Arial, sans-serif;
            background: linear-gradient(135deg, #eef2ff, #f8fafc);
            color: #1f2937;
        }
        .wrap {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
        }
        .card {
            max-width: 520px;
            width: 100%;
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 18px 48px rgba(15, 23, 42, 0.12);
            padding: 32px;
        }
        h1 {
            margin-top: 0;
            font-size: 28px;
        }
        p {
            line-height: 1.5;
        }
        a {
            display: inline-block;
            margin-top: 16px;
            color: #1d4ed8;
            text-decoration: none;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="wrap">
        <div class="card">
            <h1>Something went wrong</h1>
            <p>The requested action could not be completed. Check the server logs for details, then return to the login page and try again.</p>
            <a href="/ticket">Back to Login</a>
        </div>
    </div>
</body>
</html>
