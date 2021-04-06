<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SellCar.index" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="javascript/index.js"></script>
    <style>
        /* page 1 */
        .first-main-page {
            display: flex;
            flex-direction: column;
            justify-content: center;
            flex-grow: 1;
            height: 100%;
            background: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/162656/city.jpg) no-repeat center / cover;
            background-blend-mode: luminosity;
            color: white;
        }
        .main-page > div {
            margin:auto;
        }
        .first-container {
            margin: auto;
        }
        .first-container h1 {
            padding: 10px;
        }
        .NewButton, .OldButton {
            display: inline-flex;
            width: 42.5%;
            padding: 10px 20px;
            margin: 10px 2px;
            color: #ffffff;
            background-color:  orange;
            border-radius: 40px;
            justify-content: center;
            font-size: 20px;
            font-weight: bold;
        }
        
        .SellCar {
            display: block;
            width: 98%;
            color: #ffffff;
            text-align: center;
            border: 3px solid orange;
            border-radius: 40px;
            padding-top: 10px;
            padding-bottom: 10px;
            font-size: 20px;
            font-weight: bold;
            margin: 0px 2px;
        }
        /* end page 1 */
        /* page 2 */
        .second-container {
            display:flex;
            flex-direction: column;
            flex-grow: 1;
            padding: 40px 0px;
            align-items: center;
            background-color: #e4e2e2;
        }
        .tab-title {
            display: flex;
            margin-top: 20px;
            background-color: #d1d1d1;
            padding: 3px;
            border-radius: 40px;
        }
        .tab-link {
            display: inline-flex;
            padding: 5px 30px;
            margin: 2px 2px;
            color: #ffffff;
            font-weight: bold;
            border: none;
            background-color: #ffffff00;
            outline: none;
        }
        .tab-link:focus { 
            border:none;
        }
        .tab-active {
            background-color: orange;
            border-radius: 40px;
        }
        .tab-content {
            display: none;
            animation: fadeinEff 2s;
        }
        #new-car, #old-car {
            padding: 10px; 
            margin: 20px
        }
        .manu-list {
            display: grid;
            grid-template-columns: repeat(4,1fr);
        }
        .manu {
            min-width: 150px;
            border-bottom: 1px solid transparent;
            margin: 2px 10px;
            padding: 4px 10px;
        }
        .manu:hover{
            border-bottom: 1px solid #ffa600a8;
        }
        .manu-content {
            text-align: center;
        }
        .manu-logo {
            display: inline-block;
            vertical-align: middle;
            height: 30px;
            width: 30px;
            padding-bottom:0;
        }
        .manu-name {
            display: inline-block;
            align-self: center;
            vertical-align: middle;
            padding-left: 10px;
            font-weight: bold;
            color: #000;
        }
        #show-btn {
            display: none;
            background: linear-gradient(transparent, orange);
            height: 30px;
            text-align: center;
            width: 100%;
            color: white;
            font-size: 20px;
            font-weight: bold;
            border-radius:  0px 0px 20px 20px;
        }
        /* page 3 */
        .third-container {
            display:flex;
            flex-direction: column;
            flex-grow: 1;
            padding: 40px 0px;
            align-items: center;
        }
        .classify-list {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            padding: 40px;
        }
        .classify {
            background-color: #ffffff;
            border-radius: 15px;
            padding: 20px 40px;
            margin: 20px;
            box-shadow: 5px 0px 18px #888888;
        }
        .classify-icon, .classify-name {
            display:block;
            text-align: center;
            padding: 5px;
            color: #000;
            font-size: 19px;
        }
        .third-container > p {
            padding-top: 30px;
            max-width: 750px;
            text-align: center;
            line-height: 25px;
        }
        /* page 4 */
        .fourth-container {
            display:flex;
            flex-grow: 1;
            padding: 40px;
            align-items: center;
        }
        .fourth-container > div {
            width: 50%;
        }
        .para {
            padding: 50px;
        }
        select {
            border: 1px solid #000;
            padding: 10px 20px;
            min-width: 200px;
            border-radius: 20px;
            outline: none;
            appearance: none;
            background: url(image/icon/expand_more-24px.svg) no-repeat;
            background-position: calc(100% - 10px) center;
        }
        .bnt-carmodel-submit {
            border: 1px solid orange;
            padding: 10px 20px;
            min-width: 200px;
            border-radius: 20px;
            outline: none;
            background-color:  orange;
            color: white;
            font-size: 18px;
            font-weight: bold;
        }
        .bnt-carmodel-submit:hover {
            background: #eb9800;
            border: 1px solid #eb9800;
        }
        select:focus {
            border: 1px solid orange;
        }
        #manu-selecttion-list, #model-list, .bnt-carmodel-submit {
            margin-top: 10px;
        }
    </style>
    <style>
        /* responsive */
        @media screen and (max-width: 780px) {
            .manu-list {
                grid-template-columns: repeat(2,1fr);
            }
            .classify-list {
            grid-template-columns: repeat(2,1fr);
            }
        }
        @media screen and (max-width:613px) {
            .NewButton, .OldButton, .SellCar {
                display: block;
                width:80%;
                text-align: center;
                margin: 10px auto;
            }
            h1 {
                text-align: center;
            }
        }
        @media screen and (max-width: 531px) {
            .manu-list {
                grid-template-columns: repeat(1,1fr);
            }
            .classify-list {
                grid-template-columns: repeat(1,1fr);
            }
            .classify {
                padding: 10px 20px;
                margin: 10px;
            }
            .classify a{
                display: flex;
                align-items: center;
            }
            .classify-name {
                margin-left: 5px;
                font-size: 14px;
            }
            .classify-icon, .classify-name {
                display: inline-flex;
            }
            .fourth-container {
                display: block;
            }
            .fourth-container div {
                display: block;
                width: 100%;
                padding: 0px;
                margin: auto;
            }
            #manu-selection-list, #model-list, .bnt-carmodel-submit {
                width: 100%;
            }
        }
        @media screen and (max-width:341px) {
            .classify-list {
                padding: 0;
            }
        }
    </style>
</head>
<body>
    <!-- navbar start -->
    <header id="navbar">
        <nav class="navbar">
                <div class="logo">
                    <a href="index.html">
                        Bán Ô Tô
                    </a>
                </div>
                <label for="nav-active" class="menu-button"><img src="image/icon/menu-24px.svg" alt="" srcset=""></label>
                <input type="checkbox" name="" id="nav-active">
                <div class="nav-content" style="margin:0">
                    <div class="main-navbar">
                        <a href="index.html" class="navbar-item navbutton-active">Mua xe</a>
                        <a href="" class="navbar-item">Bán xe</a>
                        <a href="" class="navbar-item">Định giá xe</a>
                        <a href="" class="navbar-item">Đại lý ô tô</a>
                        <a href="" class="navbar-item">Khuyến mãi</a>
                        <a href="" class="navbar-item">Tin tức</a>
                        <a href="" class="log-button">Đăng nhập</a>
                        <a href="" class="log-button">Đăng ký</a>
                    </div>
            </div>
        </nav>
    </header>
    <!-- navbar end -->
    <!-- main content -->
    <div class="first-main-page">
        <div class="first-container">
            <h1>Lựa chọn chiếc xe phù hợp với ví tiền của bạn</h1>
            <div class="car-content">
                <a class="NewButton" href="">Xe mới</a>
                <a href="" class="OldButton">Xe cũ</a>
                <a href="" class="SellCar">Bán xe</a>
            </div>
        </div>
    </div>
    <div class="second-container">
        <h2>Lựa chọn theo hãng xe</h2>
        <div class="tab-title">
            <button class="tab-link tab-active" onclick="tabber(event,'new-car')">Xe mới</button>
            <button class="tab-link" onclick="tabber(event, 'old-car')">Xe cũ</button>
        </div>
        <div id="new-car" class="tab-content">
            <ul class="manu-list">
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Acura">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Acura.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Acura
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?Manu=Alfa%20Romeo">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Alfa_Romeo.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Alfa Romeo
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Audi">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Audi.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Audi
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=BMV">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/BMW.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                BMV
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Buick">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Buick.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Buick
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Cadillac">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Cadillac.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Cadillac
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Chavrolet">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Chevrolet.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Chevrolet
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Chryselr">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Chrysler.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Chrysler
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Dodeg">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Dodge.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Dodge
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=FIAT">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/FIAT.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                FIAT
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Ford">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Ford.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Ford
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Genesis">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Genesis.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Genesis
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=GMC">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/GMC.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                GMC
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Honda">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Honda.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Honda
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Hyundai">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Hyundai.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Hyundai
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=INFINITI">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/INFINITI.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                INFINITI
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Jaguar">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Jaguar.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Jaguar
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Jeep">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Jeep.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Jeep
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Kia">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Kia.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Kia
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Land%20Rover">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Land_Rover.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Land Rover
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Lexus">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Lexus.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Lexus
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Lincoln">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Lincoln.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Lincoln
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Lotus">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Lotus.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Lotus
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Maserati">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Maserati.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Maserati
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="Mazda">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Mazda.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Mazda
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Mercedes-Benz">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Mercedes-Benz.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Mercedes-Benz
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=MINI">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/MINI.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                MINI
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Mitsubishi">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Mitsubishi.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Mitsubishi
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Porsche">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Porsche.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Porsche
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Ram">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Ram.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Ram
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Subaru">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Subaru.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Subaru
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Toyota">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Toyota.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Toyota
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Volkswagen">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Volkswagen.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Volkswagen
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Volvo">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Volvo.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Volvo
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Ferrari">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Ferrari.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Ferrari
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div id="old-car" class="tab-content">
            <ul class="manu-list">
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Acura">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Acura.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Acura
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Alfa Romeo">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Alfa_Romeo.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Alfa Romeo
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Audi">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Audi.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Audi
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=BMV">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/BMW.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                BMV
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Buick">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Buick.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Buick
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Cadillac">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Cadillac.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Cadillac
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Chevrolet">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Chevrolet.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Chevrolet
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Chrysler">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Chrysler.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Chrysler
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Dodge">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Dodge.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Dodge
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=FIAT">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/FIAT.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                FIAT
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Ford">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Ford.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Ford
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Genesis">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Genesis.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Genesis
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=GMC">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/GMC.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                GMC
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Honda">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Honda.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Honda
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Hyundai">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Hyundai.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Hyundai
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=INFINITI">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/INFINITI.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                INFINITI
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Jaguar">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Jaguar.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Jaguar
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Jeep">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Jeep.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Jeep
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Kia">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Kia.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Kia
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Land Rover">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Land_Rover.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Land Rover
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Lexus">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Lexus.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Lexus
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Lincoln">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Lincoln.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Lincoln
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Lotus">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Lotus.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Lotus
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Maserati">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Maserati.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Maserati
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Mazda">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Mazda.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Mazda
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Mercedes-Benz">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Mercedes-Benz.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Mercedes-Benz
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=MINI">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/MINI.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                MINI
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Mitsubishi">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Mitsubishi.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Mitsubishi
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Porsche">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Porsche.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Porsche
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Ram">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Ram.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Ram
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Subaru">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Subaru.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Subaru
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Toyota">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Toyota.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Toyota
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Volkswagen">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Volkswagen.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Volkswagen
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Volvo">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Volvo.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Volvo
                            </div>
                        </div>
                    </a>
                </li>
                <li class="manu">
                    <a href="SearchReult.aspx?manu=Ferrari">
                        <div class="manu-content">
                            <div class="manu-logo">
                                <img src="image/car-manu-logo/Ferrari.png" alt="" class="picture">
                            </div>
                            <div class="manu-name">
                                Ferrari
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div id="show-btn">Xem thêm</div>
    </div>
    <div class="third-container">
        <h3>Lựa chọn theo dòng xe</h3>
        <p>Chúng tôi hỗ trợ bạn lọc ra những chiếc xe hơi và xe tải tùy theo nhu cầu của bạn để bạn có thể lựa chọn chiếc xe tốt nhất mà bạn muốn.</p>
        <ul class="classify-list">
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Car">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconSedans.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Xe hơi</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Truck">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconTrucks.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Xe tải</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=SUV">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconSuv.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">SUV</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Sedan">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconSedans.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Sedan</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Hatchbacks">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconHatchbacks.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">HatchBacks</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Coupe">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconCoupes.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Coupes</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Convertable">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconConvertable.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Convertable</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Van">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconVans.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Vans</div>
                </a>
            </li>
            <li class="classify">
                <a href="SearchReult.aspx?Classify=Hybrids">
                    <div class="classify-icon">
                        <img src="image/car-classify-icon/iconHybrids.svg" alt="" srcset="">
                    </div>
                    <div class="classify-name">Hybrids</div>
                </a>
            </li>
        </ul>
    </div>
    <div class="fourth-container">
        <div><img src="image/research-and-compare.svg" alt="" srcset=""></div>
        <div class="para">
            <h2>Nghiên cứu, so sánh, tìm kiếm chiếc xe phù hợp với bạn</h2>
            <p>Sử dụng nguồn dữ liệu của chúng tôi để so sánh, tìm kiếm chiếc xe mà bạn mong muốn.</p><br>
            <form action="" method="get" name="manu">
                <select id="manu-selection-list" onchange="showModel()">
                    <option value="Acura">Acura</option>
                    <option value="Alfa Romeo">Alfa Romeo</option>
                    <option value="Audi">Audi</option>
                    <option value="BMV">BMV</option>
                    <option value="Buick">Buick</option>
                    <option value="Cadillac">Cadillac</option>
                    <option value="Chevrolet">Chevrolet</option>
                    <option value="Chrysler">Chrysler</option>
                    <option value="Dodge">Dodge</option>
                    <option value="FIAT">FIAT</option>
                    <option value="Ford">Ford</option>
                    <option value="Genesis">Genesis</option>
                    <option value="GMC">GMC</option>
                    <option value="Honda">Honda</option>
                    <option value="Hyundai">Hyundai</option>
                    <option value="INFINITI">INFINITI</option>
                    <option value="Jaguar">Jaguar</option>
                    <option value="Jeep">Jeep</option>
                    <option value="Kia">Kia</option>
                    <option value="Land Rover">Land Rover</option>
                    <option value="Lexus">Lexus</option>
                    <option value="Lincoln">Lincoln</option>
                    <option value="Lotus">Lotus</option>
                    <option value="Maserati">Maserati</option>
                    <option value="Mazda">Mazda</option>
                    <option value="Mercedes-Benz">Mercedes-Benz</option>
                    <option value="MINI">MINI</option>
                    <option value="Mitsubishi">Mitsubishi</option>
                    <option value="Porsche">Porsche</option>
                    <option value="Ram">Ram</option>
                    <option value="Subaru">Subaru</option>
                    <option value="Toyota">Toyota</option>
                    <option value="Volkswagen">Volkswagen</option>
                    <option value="Volvo">Volvo</option>
                    <option value="Ferrari">Ferrari</option>
                </select>
                <select name="model" id="model-list"></select>
                <button type="submit" class="bnt-carmodel-submit">Tìm</button>
            </form>
            
        </div>
    </div>
    <footer>
        <div class="left-footer">
            <p>BANOTO chuyên cung cấp các dòng xe cao cấp với chất lượng dịch vụ hàng đầu Viêt Nam</p><br>
            <p>Địa chỉ: Số 96 Định Công - Hà Nội</p><br>
            <p>CopyRight ©BANOTO 2021</p>
        </div>
        <div class="right-footer">
            <p style="font-weight: bold; margin-bottom: 10px;">Liên kết mạng xã hội</p>
            <input type="checkbox" name="" id="nav-active">
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
    <div id="back-to-top" onclick="backToTop();">
        <img src="image/icon/expand_less-24px.svg" alt="" srcset="" width="40" >
    </div>
    <script>
        function creatOptions(value) {
            var select = document.getElementById('model-list');
            var node = document.createElement("OPTION");
            var textNode = document.createTextNode(value);
            node.appendChild(textNode);
            node.value = value;
            node.id = value;
            select.appendChild(node);
        }
        var modelList = [
            ['Acura', 'ILX', 'MDX', 'NSX'],
            ['Alfa Romeo', '4C', 'Giulia', 'Stelvio'],
            ['Audi','A8','S8','TTS'],
            ['BMV','5 Series','7 Series','8 Series'],
            ['Buick','Enclave','Encore GX','Envision'],
            ['Cadillac','CT5','Escalade','XT6'],
            ['Chevrolet','Malibu','Silverado 3500HD','Traverse'],
            ['Chrysler','300','Pacifica','Voyager'],
            ['Dodge','Challenger','Durango','Journey'],
            ['FIAT','124 Spider','500L','500X'],
            ['Ford','Expedition','Mustang','Super Duty F-450'],
            ['Genesis','G80','G90','GV80'],
            ['GMC','Acadia','Canyon','Terrain'],
            ['Honda','Clarity','Passport','Pilot'],
            ['Hyundai','Elantra','Kona','Sonata'],
            ['INFINITI','Q50','QX50','QX60'],
            ['Jaguar','F-PACE','F-TYPE','XF'],
            ['Jeep','Cherokee','Gladiator','Renegade'],
            ['Kia','Sedona','Seltos','Soul'],
            ['Land Rover','Defender','Discovery','Discovery Sport'],
            ['Lexus','ES','IS','UX'],
            ['Lincoln','Aviator','Corsair','Nautilus'],
            //['Lotus','Evora'],
            ['Maserati','Ghibli','Levante','Quattroporte'],
            // ['Mazda','Mazda3','MX-5 Miata'],
            ['Mercedes-Benz','GLC','GLE','GLS'],
            ['MINI','Clubman','Convertible','Countryman'],
            ['Mitsubishi','Mirage','Outlander','Outlander Sport'],
            ['Porsche','Cayenne','Macan','Panamera'],
            ['Ram','1500','2500','3500'],
            ['Subaru','Crosstrek','Forester','Impreza'],
            ['Toyota','Highlander','Sequoia','Sienna'],
            ['Volkswagen','Golf','Jetta','Passat'],
            ['Volvo','XC40','XC60','XC90'],
            //['Ferrari','F8','SF90 Stradale']
        ];
        function showModel() {
            document.getElementById('model-list').innerHTML ='';
            for (let i = 0; i <= modelList.length; i++) {
                if ( modelList[i][0] == document.getElementById('manu-selection-list').value) {
                    for (let j = 1; j < 4; j++) {
                        creatOptions(modelList[i][j]);
                    }
                    break;
                } else if ( document.getElementById('manu-selection-list').value == 'Ferrari') {
                    creatOptions('F8');
                    creatOptions('SF90 Stradale');
                    break;
                } else if ( document.getElementById('manu-selection-list').value == 'Lotus') {
                    creatOptions('Evora');
                    break;
                } else if ( document.getElementById('manu-selection-list').value == 'Mazda') {
                    creatOptions('Mazda3');
                    creatOptions('MX-5 Miata');
                    break;
                }
            }
        }
    </script> 
    <script>
        document.getElementById("new-car").style.display="block";
        function tabber(evt, model) {
            let i, tabbercontain, tablinks;
            
            tabbercontain = document.getElementsByClassName("tab-content");
            for (i = 0; i < tabbercontain.length; i++){
                tabbercontain[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tab-link");
            for (i = 0; i < tablinks.length; i++){
                tablinks[i].className = tablinks[i].className.replace("tab-active", " ")
            }
            document.getElementById(model).style.display = "block";
            evt.currentTarget.classList.add("tab-active");
        }
    </script>
    <script>
        window.addEventListener("resize",()=>{
            if (document.getElementById("show-btn").innerText == "Thu gọn") {
                
            } else if (window.innerWidth <= 531) {
                var list1 = document.getElementsByClassName("manu-list")[0];
                var list2 = document.getElementsByClassName("manu-list")[1];
                for (let i = 4; i < list1.children.length; i++) {
                    list1.children[i].style.display = "none";
                    list2.children[i].style.display = "none"
                }
                document.getElementById("show-btn").style.display = "block";
            } else {
                var list1 = document.getElementsByClassName("manu-list")[0];
                var list2 = document.getElementsByClassName("manu-list")[1];
                for (let i = 4; i < list1.children.length; i++) {
                    list1.children[i].style.display = "block";
                    list2.children[i].style.display = "block"
                }
                document.getElementById("show-btn").style.display = "none";
            }
        });
        document.getElementById("show-btn").addEventListener("click",() =>{
            var list1 = document.getElementsByClassName("manu-list")[0];
            var list2 = document.getElementsByClassName("manu-list")[1];
            if (list1.children[10].style.display == "none" || list2.children[10].style.display == "none") {
                for (let i = 4; i < list1.children.length; i++) {
                    list1.children[i].style.display = "block";
                    list2.children[i].style.display = "block"
                }
                document.getElementById("show-btn").innerText = "Thu gọn";
            } else if (document.getElementById("show-btn").innerText == "Thu gọn") {
                for (let i = 4; i < list1.children.length; i++) {
                    list1.children[i].style.display = "none";
                    list2.children[i].style.display = "none"
                }
                document.getElementById("show-btn").innerText = "Xem thêm"
            }
        });
    </script>
</body>
</html>