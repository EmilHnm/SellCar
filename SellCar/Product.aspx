<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SellCar.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/assets/style/style.css">
    <link rel="stylesheet" href="/assets/fonts/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="icon" href="image/favicon.ico">
    <title>Product</title>
    <style>
        #header {
            display: flex;
            background-color: black;
            height: 50px;
            justify-content: center;
        }
        
        #header .logo a {
            text-decoration: none;
            line-height: 50px;
        }
        
        #nav {
            display: flex;
            border-left: solid 1px #fff;
            border-right: solid 1px #fff;
        }
        
        #nav li {
            padding: 0 16px;
        }
        
        #nav li:hover {
            border-bottom: solid 3px orange;
            cursor: pointer;
        }
        
        #nav li,
        #nav li a {
            list-style-type: none;
            text-decoration: none;
            line-height: 50px;
            color: #fff;
        }
        /* slider */
        
        #slider {
            width: 100%;
            height: 100px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: #ff9100;
        }
        
        #content {
            width: 80vw;
            margin: auto;
        }
        
        .content-img {
            position: relative;
            width: 80%;
            margin: auto;
        }
        
        .image {
            display: none;
        }
        
        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -50px;
            color: white;
            font-weight: bold;
            font-size: 20px;
            border-radius: 0 3px 3px 0;
            user-select: none;
            -webkit-user-select: none;
        }
        
        .prev:hover,
        .next:hover {
            background-color: #00000083;
        }
        
        .next {
            right: 0;
        }
        
        .content-text {
            grid-column-start: 2;
            grid-column-end: 3;
        }
        
        .column {
            float: left;
            width: 25%;
        }
        
        .column img {
            height: 20vh;
        }
        
        .demo {
            opacity: 0.7;
        }
        
        .active,
        .demo:hover {
            opacity: 1;
        }
        
        .info {
            width: 80%;
            display: grid;
            grid-template-columns: 40% auto;
            margin: 20px auto;
        }
        
        .contact {
            grid-column: 1/2;
            border: 3px dashed gray;
            padding: 10px;
            border-radius: 20px;
            height: min-content;
            margin: 0px 10px;
            text-align: center;
        }
        
        #price {
            font-size: 20px;
            font-weight: bold;
        }
        
        .favorite,
        .call {
            display: block;
            width: 80%;
            margin: 10px auto;
            background-color: orange;
            color: #fff;
            padding: 10px;
            outline: none;
            border: none;
            border-radius: 20px;
            font-weight: bold;
        }
        
        .infomation {
            grid-column: 2/3;
            border: 3px dashed gray;
            padding: 10px;
            border-radius: 20px;
        }
        
        svg {
            fill: none;
            stroke: black;
            display: inline-block;
            stroke-width: 1;
        }
        
        .stat-content {
            display: grid;
            grid-template-columns: 50% 50%;
        }
        
        .car-info {
            display: flex;
            width: 80%;
            background: #bebebe;
            border-radius: 10px;
            margin: 10px 0;
            padding: 10px 20px;
        }
        
        .stat {
            margin-left: 5px;
            padding-top: 7px;
        }
        
        .name-stat {
            font-weight: bold;
        }
        
        .describe {
            padding: 10px
        }
        
        .describe div {
            font-weight: bold;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0px 0px 10px 1px orange;
            background-color: orange;
            color: white;
            margin-bottom: 5px;
            padding: 5px 0px;
        }
        
        a>svg {
            fill: white;
        }
        /* respnsive */
        
        @media screen and (max-width:958px) {
            .logo a img {
                width: 50px;
                border-radius: 0px 0px 0px 0px;
            }
        }
        
        @media screen and (max-width:586px) {
            .info {
                display: block;
            }
            #content {
                width: 100%;
            }
            .content-img {
                width: 100%;
            }
            .image {
                width: 100vw;
            }
            .thumbnail {
                display: none;
            }
            .info {
                width: 100%;
            }
            .contact {
                margin-bottom: 5px;
            }
            @media screen and (max-width:429px) {
                .stat-content {
                    display: block;
                }
                .car-info {
                    margin: 5px auto;
                }
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <a href="index.aspx#car-select" class="navbar-item">Mua xe</a>
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
    <div id="slider">
        <div class="inside-slider">
            <div class="slider-text">
                <h1 style="font-size: 25px; line-height: 40px; text-align: center" id="title" runat="server">Ford F-150 2019</h1>
            </div>
        </div>
    </div>

    <div id="content">
        <div class="content-img">
            <div class="image" id="img1" runat="server"><img src="image/car/Acura/ILX/1.jpg" alt="" style="width:100%; height:60vh"></div>
            <div class="image" id="img2" runat="server"><img src="image/car/Acura/ILX/2.jpg" alt="" style="width:100%; height:60vh"></div>
            <div class="image" id="img3" runat="server"><img src="image/car/Acura/ILX/3.jpg" alt="" style="width:100%; height:60vh"></div>
            <div class="image" id="img4" runat="server"><img src="image/car/Acura/ILX/4.jpg" alt="" style="width:100%; height:60vh"></div>
            <!-- button -->
            <a class="prev" onclick="changeSlide(-1)">&#10094;</a>
            <a class="next" onclick="changeSlide(1)">&#10095;</a>
            <!-- thumbnail img -->
            <div class="thumbnail ">
                <div class="column" id="thumbnail1" runat="server"><img src="image/car/Acura/ILX/1.jpg" alt="" class="demo" style="width:100%" onclick="currentSlide(1)"></div>
                <div class="column" id="thumbnail2" runat="server"><img src="image/car/Acura/ILX/2.jpg" alt="" class="demo" style="width:100%" onclick="currentSlide(2)"></div>
                <div class="column" id="thumbnail3" runat="server"><img src="image/car/Acura/ILX/3.jpg" alt="" class="demo" style="width:100%" onclick="currentSlide(3)"></div>
                <div class="column" id="thumbnail4" runat="server"><img src="image/car/Acura/ILX/4.jpg" alt="" class="demo" style="width:100%" onclick="currentSlide(4)"></div>
            </div>
        </div>
        <div class="info">
            <div style="grid-column-start: 1; grid-column-end: 3; background-color: orange; padding: 20px; font-size: 22px; text-align: center; color: white; font-weight: bold; margin-bottom: 5px">Thông tin chi tiết</div>
            <div class="contact">
                <div id="price" runat="server">$999999999</div>
                <a class="call" href="tel:012345678">Liên hệ</a>
                <button class="favorite" type='button' runat="server" onserverclick="AddFavorite">Thêm vào ưa thích</button>
            </div>
            <div class="infomation">
                <div class="stat-content">
                    <div class="car-info">
                        <svg viewBox="0 0 24 24" class="icon icon-color-default" data-qa="IconPaintBucket" style="width: 48px; height: 48px; stroke-width: 0.75;"><path d="M18.45 18.94l2.13-3.61 2.16 3.65"></path><path d="M22.67 18.86a2.54 2.54 0 0 1 .46 1.33v.13a2.55 2.55 0 1 1-5.1 0v-.23a2.54 2.54 0 0 1 .46-1.24"></path><circle cx="14.5" cy="9.5" r="1"></circle><path d="M20.42 12.26L10.33 22.35 1.3 13.31 11.39 3.22M14.5 9V1M10.64 2.09l10.84 10.84" ></path></svg>
                        <div class="stat">
                            <span class="name-stat">Màu</span><br>
                            <span id="color" runat="server">Rosso Alfa</span>
                        </div>
                    </div>
                    <div class="car-info">
                        <svg viewBox="0 0 24 24" class="icon icon-color-default" data-qa="IconCarSide" style="width: 48px; height: 48px; stroke-width: 0.75;"><path d="M22.29 16.1l1.15-.29a.1.1 0 0 0 .09-.1s0-1.26.05-1.51a.66.66 0 0 0-.23-.5c-.07-.18-.42-1-.85-1.13s-4.41-.74-4.74-.79a34.91 34.91 0 0 0-4.33-1.85 18.88 18.88 0 0 0-3.27-.21 18.35 18.35 0 0 0-3.06.19 29.23 29.23 0 0 0-4 1.46l-1.87.27a.1.1 0 0 0-.09.08l-.25 1.44a2.08 2.08 0 0 0-.4.69 1.85 1.85 0 0 0 .07 1l.45.64a.1.1 0 0 0 .06 0l1.63.58"></path><path d="M17.87 15.82a1.61 1.61 0 1 0 1.61-1.61 1.61 1.61 0 0 0-1.61 1.61zM4.16 15.82a1.61 1.61 0 1 0 1.61-1.62 1.61 1.61 0 0 0-1.61 1.62zM16.19 16.5H8.75"></path></svg>
                        <div class="stat">
                            <span class="name-stat">Kiểu xe</span><br>
                            <span id="classify" runat="server">Sedan</span>
                        </div>
                    </div>
                    <div class="car-info">
                        <svg viewBox="0 0 24 24" class="icon icon-color-default" data-qa="IconEngine" style="width: 48px; height: 48px; stroke-width: 0.75;"><path d="M2.5 8.5h2.09l1.91-.82V6.5h9.12l2.92 6h1v-3h2.94a6.36 6.36 0 0 1 1.06 3.21v3.22c-.27.92-1.24 3.56-1.24 3.56h-2.8v-2h-2v2H8.9l-3.22-3H2.5zM7 3.5h8M11.5 3.5v3M.5 17V8M.5 12.5h2"></path></svg>
                        <div class="stat">
                            <span class="name-stat">Động cơ</span><br>
                            <span id="engine" runat="server">2.4L Inline-4 Gas</span>
                        </div>
                    </div>
                    <div class="car-info">
                        <svg viewBox="0 0 24 24" class="icon icon-color-default" data-qa="IconTransmission" style="width: 48px; height: 48px; stroke-width: 0.75;"><circle cx="3.86" cy="3.55" r="1.59"></circle><circle cx="12.14" cy="3.55" r="1.59"></circle><circle cx="20.53" cy="3.55" r="1.59"></circle><circle cx="20.53" cy="20.13" r="1.59"></circle><circle cx="12.14" cy="20.13" r="1.59"></circle><path d="M3.86 5.14v8.56h5.32l2.96-1.89h8.4M20.53 5.14v13.4M12.14 5.14v13.4"></path></svg>
                        <div class="stat">
                            <span class="name-stat">Sang số</span><br>
                            <span id="transission" runat="server">Automatic</span>
                        </div>
                    </div>
                    <div class="car-info">
                        <svg viewBox="0 0 24 24" class="icon icon-color-default" data-qa="IconGasCan" style="width: 48px; height: 48px; stroke-width: 0.75;"><path d="M5.48 7.77a2.31 2.31 0 0 1 .65-1.61l1.55-1.6a2.26 2.26 0 0 1 1.63-.7 2.26 2.26 0 0 0 1.49-.56l2-1.49a2.08 2.08 0 0 1 1.49-.3h3.39a1.82 1.82 0 0 1 1.82 1.81v17.36a1.83 1.83 0 0 1-1.82 1.82H7.81a2.31 2.31 0 0 1-2.31-2.31z"></path><path d="M14.5 3.5h3"></path><path d="M3.86 5.2l3.03-3.16M8.84 9.97l8.17 8.17M17.01 9.97l-8.17 8.17"></path></svg>
                        <div class="stat">
                            <span class="name-stat">Loại nhiên liệu</span><br>
                            <span id="fuel" runat="server">Gas</span>
                        </div>
                    </div>
                </div>
                <div class="describe">
                    <div>Mô tả</div>
                    <p style="text-align:justify" id="decribe" runat="server">Acura ILX là một chiếc sedan hạng sang cỡ nhỏ ưu tiên sự thoải mái hơn là tính thể thao. Dựa trên Honda Civic thực dụng, ILX cung cấp khả năng tiết kiệm nhiên liệu tuyệt vời cho việc lái xe hàng ngày. Cabin của nó có nhiều tính năng
                        tiêu chuẩn và hệ thống an toàn cho người lái tiên tiến với mức giá khởi điểm thấp. Một ghế sau nhỏ và công nghệ già cỗi tụt hậu so với các đối thủ cùng phân khúc, nhưng giá trị vô địch của ILX và hệ thống truyền động tinh tế giúp
                        nó trở thành một lựa chọn đáng mơ ước.</p>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="left-footer">
            <p>BANOTO chuyên cung cấp các dòng xe cao cấp với chất lượng dịch vụ hàng đầu Viêt Nam</p>
            <br>
            <p>Địa chỉ: Số 96 Định Công - Hà Nội</p>
            <br>
            <p>CopyRight ©BANOTO 2021</p>
        </div>
        <div class="right-footer">
            <p style="font-weight: bold; margin-bottom: 10px;">Liên kết mạng xã hội</p>
            <input type="checkbox" name="" id="nav-active">
            <div class="social-media">
                <div class="facebook">
                    <a aria-label="facebook" href="https://www.facebook.com/hoa.ngominh.001/" class="social-icon">
                        <svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width: 24px; height: 24px; stroke-width: 1" data-qa="IconFacebook">
                            <path d="M19.51 2.11h-15a2.77 2.77 0 0 0-2.79 2.77v15a2.77 2.77 0 0 0 2.77 2.77h7.4v-7.33H10a.45.45 0 0 1-.45-.45v-2.36a.45.45 0 0 1 .45-.45h1.9V9.77a3.74 3.74 0 0 1 4-4.1h1.94a.45.45 0 0 1 .45.45v2a.45.45 0 0 1-.45.45h-1.2c-1.29 0-1.54.61-1.54 1.51v2h2.83a.45.45 0 0 1 .45.5l-.28 2.37a.45.45 0 0 1-.45.4h-2.54v7.34h4.41a2.77 2.77 0 0 0 2.77-2.77v-15a2.77 2.77 0 0 0-2.77-2.77zm0 0"></path></svg></a>
                </div>
                <div class="youtube">
                    <a aria-label="youtube" href="" class="social-icon">
                        <svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width: 24px; height: 24px; stroke-width: 1" data-qa="IconYoutube">
                            <path d="M18.86 3.37H5.08a4.89 4.89 0 0 0-4.89 4.9v6.89A4.89 4.89 0 0 0 5.08 20h13.78a4.89 4.89 0 0 0 4.89-4.89V8.27a4.89 4.89 0 0 0-4.89-4.89zM15.55 12L9.1 15.12a.26.26 0 0 1-.37-.23V8.55a.26.26 0 0 1 .38-.23l6.44 3.27a.26.26 0 0 1 0 .46zm0 0"></path></svg></a>
                </div>
                <div class="twitter">
                    <a aria-label="twitter" href="https://twitter.com/hoangominh" class="social-icon">
                        <svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width: 24px; height: 24px; stroke-width: 1" data-qa="IconTwitter">
                            <path d="M23.21 4.61a9.16 9.16 0 0 1-1.6.54 5 5 0 0 0 1.31-2.09.26.26 0 0 0-.38-.3 9.21 9.21 0 0 1-2.44 1h-.15a.65.65 0 0 1-.43-.16 5 5 0 0 0-3.3-1.25 5.34 5.34 0 0 0-1.58.24 4.84 4.84 0 0 0-3.26 3.51 5.33 5.33 0 0 0-.12 1.84.18.18 0 0 1 0 .14.19.19 0 0 1-.14.06 13.1 13.1 0 0 1-9-4.81.26.26 0 0 0-.43 0A5 5 0 0 0 2.5 9.4 4.47 4.47 0 0 1 1.31 9a.26.26 0 0 0-.39.23 5 5 0 0 0 2.92 4.61h-.11a4.47 4.47 0 0 1-.84-.08.26.26 0 0 0-.3.34 5 5 0 0 0 4 3.4 9.22 9.22 0 0 1-5.16 1.57H.8a.38.38 0 0 0-.37.29.4.4 0 0 0 .19.44 13.71 13.71 0 0 0 6.89 1.86 13.89 13.89 0 0 0 5.89-1.25 13 13 0 0 0 4.31-3.23 14.15 14.15 0 0 0 2.64-4.42 14 14 0 0 0 .9-4.83v-.1a.85.85 0 0 1 .32-.66 9.87 9.87 0 0 0 2-2.18.26.26 0 0 0-.32-.38zm0 0"></path></svg></a>
                </div>
                <div class="instagram">
                    <a aria-label="instagram" href="" class="social-icon">
                        <svg viewBox="0 0 24 24" class="icon _133u1t1 icon-fill-default" style="width: 24px; height: 24px; stroke-width: 1" data-qa="IconInstagram">
                            <path d="M12 6.37A5.63 5.63 0 1 0 17.63 12 5.63 5.63 0 0 0 12 6.37zm0 9.07A3.44 3.44 0 1 1 15.44 12 3.44 3.44 0 0 1 12 15.44zm0 0M19 6.41a1.35 1.35 0 1 1-1.35-1.35A1.35 1.35 0 0 1 19 6.41zm0 0"></path><path d="M7.6 22.88h8.8a6.49 6.49 0 0 0 6.48-6.48V7.6a6.49 6.49 0 0 0-6.48-6.48H7.6A6.49 6.49 0 0 0 1.12 7.6v8.8a6.49 6.49 0 0 0 6.48 6.48zM3.31 7.6A4.29 4.29 0 0 1 7.6 3.31h8.8a4.29 4.29 0 0 1 4.29 4.29v8.8a4.29 4.29 0 0 1-4.29 4.29H7.6a4.29 4.29 0 0 1-4.29-4.29z"></path></svg></a>
                </div>
            </div>
        </div>
    </footer>
    <div id="back-to-top" onclick="backToTop();">
        <img src="image/icon/expand_less-24px.svg" alt="" srcset="" width="40">
    </div>
    <script>
        var slideNum = 1;

        function slider(n) {
            var image = document.getElementsByClassName("image ");
            var thumbnail = document.getElementsByClassName("column ");
            var i;
            if (n > image.length) {
                slideNum = 1
            }
            if (n < 1) {
                slideNum = image.length
            }
            for (i = 0; i < image.length; i++) {
                image[i].style.display = "none ";
            }
            for (i = 0; i < thumbnail.length; i++) {
                thumbnail[i].className = thumbnail[i].className.replace("active ", " ");
            }
            image[slideNum - 1].style.display = "block ";
            thumbnail[slideNum - 1].className += " active ";
        }
        slider(slideNum);

        function changeSlide(n) {
            slider(slideNum += n);
        }

        function currentSlide(n) {
            slider(slideNum = n);
        }
    </script>
    <script src="javascript/index.js"></script>
    </form>
</body>
</html>
