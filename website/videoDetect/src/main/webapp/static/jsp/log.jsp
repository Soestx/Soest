<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>用户注册</title>
    <style>
        .h_1{
            font-size : 36px;
            font-weight : 500;
            text-align: left;
            padding-bottom: 4px;
            font-weight: 200;
        }
        .div_main{
            background-repeat: repeat;
            background: rgb(121,113,255);
            background: linear-gradient(144deg, rgba(121,113,255,1) 0%, rgba(4,202,255,0.6047211120776436) 100%);
            height: 100%;
            width: 100%;
            background-size:cover;
            position:absolute;
            left:0;
            top:0;
        }
        .div_sub1{
            text-align:center;
            font-size : 16px;
            margin: 0 auto;
            width : 600px;
            height : 500px;
            border: 3px solid rgb(157, 188, 235);
            border-radius: 20px;
            box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.7);
            position: absolute;
            right: 139px;
            top: 25%;
            opacity: 1;
        }
        .div_input1{
            display: inline-block;
            width : 200px;
            margin: auto;
        }
        .div_add{
            display: inline-block;
            vertical-align: top;
            width: 372px;
            height: 42px;
            border: 1px solid skyblue;
            border-radius: 12px;
            margin: auto;
            background-color: #4163e9;
        }
        .input1{
            opacity: 0.6;
            border-radius: 8px;
            height : 36px;
            width : 256px;
        }
        .input2{
            opacity: 0.5;
            border-radius:8px;
            height: 48px;
            width: 324px;
            margin: 0 auto;
        }
        input{
            border-style: none;
        }
        .a1{
            text-decoration: none;
            text-align: center;
            font-size: 24px;
            color: white;
        }
        .p1{
            text-align: left;
            font-size: 16px;
            opacity: 0.5;
        }
        .p2{
            font-size: 27px;
            display: inline-block;
        }
        .submit1{
            background-color: black;
            opacity: 0.85;
            cursor : pointer;
            border-radius: 10px;
            font-size : 20px;
            color:lightgrey;
            width: 260px;height: 30px;margin-left: 130px;
        }
    </style>
    <script>
        function form_validation()
        {

        }
    </script>
</head>
<body>
<div class = "div_main">
    <div class = "div_sub1">
        <h1 class = "h_1">&emsp;欢迎注册</h1>
        <p class="p1">&emsp;&emsp;已有账号？<a href="user_login.html">登录</a></p><br>
        <form method = "post" action = "user_add.html">
            用户名:&emsp;
            <div class = "div_input1"><input class = 'input1' type = 'text' name = 'user' placeholder = '请输入用户名'></div>
            <br><br>
            密&emsp;码:&emsp;
            <div class = "div_input1"><input class = 'input1' type = 'password' name = 'password' placeholder = '请输入密码'></div>
            <br><br>
            邮&emsp;箱:&emsp;
            <div class = "div_input1"><input class = 'input1' type = 'text' name = 'email' placeholder = '输入用户邮箱'></div>
            <br><br>
            <input type="submit"  class="submit1">
        </form>
    </div>
</div>
<script>
    const username = document.getElementById('user')
    const password = document.getElementById('password')
    const email = document.getElementById('email')
</script>
</body>
</html>