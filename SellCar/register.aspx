<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="SellCar.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SellCar Đăng Ký</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Đăng ký</h2>
        <label for="">
            <span>Tên người dùng</span>
            <input type="text" name="username" id="username">
        </label>
        <label for="">
            <span>Mật khẩu</span>
            <input type="password" name="password" id="password">
        </label>
        <button type="submit">Đăng Ký</button>
    </form>
</body>
</html>
