<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserFavorite.aspx.cs" Inherits="SellCar.UserFavorite" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell Car - Trang ưa thích</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="javascript/index.js"></script>
    <link rel="icon" href="image/favicon.ico">
    <style>
        main {
            height:100vh;
        }
        h2 {
            text-align: center;
            margin-top: 30px;
        }
        
        #favoritelist {
            width: 80vw;
            margin: 10px auto;
            display: flex;
            flex-flow: row wrap;
            justify-content: space-around;
        }
        
        .favorite-item {
            width: 20%;
            margin: 20px 10px;
            box-shadow: 0px 0px 15px 1px #868686;
            border-radius: 5px;
        }
        
        .favorite-item:hover {
            box-shadow: 0px 0px 15px 1px orange;
        }
        
        .content {
            display: block;
            text-align: center;
            padding: 10px;
        }
        
        #name {
            font-weight: bold;
            font-size: 17px;
            color: black;
        }
        
        .content>div {
            color: #727272;
        }
        
        #link,
        #button {
            width: max-content;
            text-decoration: none;
            display: inline-block;
            margin: 5px 2px;
        }
        
        button {
            outline: none;
            border: none;
            background: transparent;
            font-size: 16px;
        }
        
        a {
            color: black;
        }
        
        button:hover,
        a:hover {
            color: orange;
        }

        /* responsive */
        
        @media screen and (max-width:961px) {
            .logo a img {
                width: 50px;
                border-radius: 0px;
            }
            .favorite-item {
                width: 25%;
            }
        }
        
        @media screen and (max-width:600px) {
            .favorite-item {
                width: 36%;
            }
        }
        
        @media screen and (max-width:400px) {
            .favorite-item {
                width: 60%;
            }
        }
    </style>
    <title>Sell Car - Danh sách ưa thích</title>
</head>

<body>
    <header id="navbar" style="z-index: 1;">
        <nav class="navbar">
            <div class="logo">
                <a href="index.aspx">
                    <img src="image/logo.png" alt="" srcset="" ">
                </a>
            </div>
            <label for="nav-active" class="menu-button">
                <img src="image/icon/menu-24px.svg" alt=""></label>
            <input type="checkbox" name="" id="nav-active">
            <div class="nav-content" style="margin: 0">
                <div id="mainnavbar" class="main-navbar" runat="server">
                    <a href="index.html" class="navbar-item">Mua xe</a>
                    <a href="" class="navbar-item">Bán xe</a>
                    <a href="" class="navbar-item">Định giá xe</a>
                    <a href="" class="navbar-item">Đại lý ô tô</a>
                    <a href="" class="navbar-item">Khuyến mãi</a>
                    <a href="" class="navbar-item">Tin tức</a>
                    <a href="login resgister.html" class="log-button">Đăng nhập</a>
                    <a href="login resgister.html" class="log-button">Đăng ký</a>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <h2 id='title'>Danh sách ưa thích của <span id='userName' runat="server"></span></h2>
        <div id="favoritelist" runat="server">
        </div>
    </main>
    <footer>
        <div class="left-footer">
            <p>BANOTO chuyên cung cấp các dòng xe cao cấp với chất lượng dịch vụ hàng đầu Viêt Nam</p><br>
            <p>Địa chỉ: Số 96 Định Công - Hà Nội</p><br>
            <p>CopyRight ©BANOTO 2021</p>
        </div>
        <div class="right-footer">
            <p style="font-weight: bold; margin-bottom: 10px;">Liên kết mạng xã hội</p>
            <div class="social-media">
                <div class="facebook">
                    <a aria-label="facebook" href="https://www.facebook.com/hoa.ngominh.001/" class="social-icon"><svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width:24px;height:24px;stroke-width:1" data-qa="IconFacebook"><path d="M19.51 2.11h-15a2.77 2.77 0 0 0-2.79 2.77v15a2.77 2.77 0 0 0 2.77 2.77h7.4v-7.33H10a.45.45 0 0 1-.45-.45v-2.36a.45.45 0 0 1 .45-.45h1.9V9.77a3.74 3.74 0 0 1 4-4.1h1.94a.45.45 0 0 1 .45.45v2a.45.45 0 0 1-.45.45h-1.2c-1.29 0-1.54.61-1.54 1.51v2h2.83a.45.45 0 0 1 .45.5l-.28 2.37a.45.45 0 0 1-.45.4h-2.54v7.34h4.41a2.77 2.77 0 0 0 2.77-2.77v-15a2.77 2.77 0 0 0-2.77-2.77zm0 0"></path></svg></a>
                </div>
                <div class="youtube">
                    <a aria-label="youtube" href="" class="social-icon"><svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width:24px;height:24px;stroke-width:1" data-qa="IconYoutube"><path d="M18.86 3.37H5.08a4.89 4.89 0 0 0-4.89 4.9v6.89A4.89 4.89 0 0 0 5.08 20h13.78a4.89 4.89 0 0 0 4.89-4.89V8.27a4.89 4.89 0 0 0-4.89-4.89zM15.55 12L9.1 15.12a.26.26 0 0 1-.37-.23V8.55a.26.26 0 0 1 .38-.23l6.44 3.27a.26.26 0 0 1 0 .46zm0 0"></path></svg></a>
                </div>
                <div class="twitter">
                    <a aria-label="twitter" href="https://twitter.com/hoangominh" class="social-icon"><svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width:24px;height:24px;stroke-width:1" data-qa="IconTwitter"><path d="M23.21 4.61a9.16 9.16 0 0 1-1.6.54 5 5 0 0 0 1.31-2.09.26.26 0 0 0-.38-.3 9.21 9.21 0 0 1-2.44 1h-.15a.65.65 0 0 1-.43-.16 5 5 0 0 0-3.3-1.25 5.34 5.34 0 0 0-1.58.24 4.84 4.84 0 0 0-3.26 3.51 5.33 5.33 0 0 0-.12 1.84.18.18 0 0 1 0 .14.19.19 0 0 1-.14.06 13.1 13.1 0 0 1-9-4.81.26.26 0 0 0-.43 0A5 5 0 0 0 2.5 9.4 4.47 4.47 0 0 1 1.31 9a.26.26 0 0 0-.39.23 5 5 0 0 0 2.92 4.61h-.11a4.47 4.47 0 0 1-.84-.08.26.26 0 0 0-.3.34 5 5 0 0 0 4 3.4 9.22 9.22 0 0 1-5.16 1.57H.8a.38.38 0 0 0-.37.29.4.4 0 0 0 .19.44 13.71 13.71 0 0 0 6.89 1.86 13.89 13.89 0 0 0 5.89-1.25 13 13 0 0 0 4.31-3.23 14.15 14.15 0 0 0 2.64-4.42 14 14 0 0 0 .9-4.83v-.1a.85.85 0 0 1 .32-.66 9.87 9.87 0 0 0 2-2.18.26.26 0 0 0-.32-.38zm0 0"></path></svg></a>
                </div>
                <div class="instagram">
                    <a aria-label="instagram" href="" class="social-icon"><svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width:24px;height:24px;stroke-width:1" data-qa="IconInstagram"><path d="M12 6.37A5.63 5.63 0 1 0 17.63 12 5.63 5.63 0 0 0 12 6.37zm0 9.07A3.44 3.44 0 1 1 15.44 12 3.44 3.44 0 0 1 12 15.44zm0 0M19 6.41a1.35 1.35 0 1 1-1.35-1.35A1.35 1.35 0 0 1 19 6.41zm0 0"></path><path d="M7.6 22.88h8.8a6.49 6.49 0 0 0 6.48-6.48V7.6a6.49 6.49 0 0 0-6.48-6.48H7.6A6.49 6.49 0 0 0 1.12 7.6v8.8a6.49 6.49 0 0 0 6.48 6.48zM3.31 7.6A4.29 4.29 0 0 1 7.6 3.31h8.8a4.29 4.29 0 0 1 4.29 4.29v8.8a4.29 4.29 0 0 1-4.29 4.29H7.6a4.29 4.29 0 0 1-4.29-4.29z"></path></svg></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end -->
    <div id="back-to-top" onclick="backToTop();">
        <img src="image/icon/expand_less-24px.svg" alt="" srcset="" width="40" />
    </div>
</body>

</html>
