<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="SellCar.SearchResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sell Car</title>
    <link rel="icon" href="image/favicon.ico">
    <link rel="stylesheet" href="css/index.css">
    <script src="javascript/index.js"></script>
    <style>
        main {
            display: grid;
            grid-template-columns: 25% auto;
            min-height: 100vh;
            grid-gap: 20px;
        }
        /* search box */
        .search-box {
            grid-column-start: 1;
            grid-column-end:1;
        }
        select, .bnt-carmodel-submit {
            margin: 10px 5px;
        }
        select {
            border: 1px solid #000;
            padding: 10px 20px;
            width: 100%;
            border-radius: 20px;
            outline: none;
            appearance: none;
            background: url(image/icon/expand_more-24px.svg) no-repeat;
            background-position: calc(100% - 10px) center;
        }
        .bnt-carmodel-submit {
            border: 1px solid orange;
            padding: 10px 20px;
            width: 100%;
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
        /* searh-result */
        .searh-result {
            padding: 20px;
        }
        .car-result {
            padding: 15px 10px;
            border-radius: 20px;
            box-shadow: #969696 0px 0px 10px 5px;
            margin: 10px;
            height: 150px;
            overflow: hidden;
        }
        .car-result:hover {
            box-shadow: #ffa600a4 0px 0px 10px 5px;
        }
        .car-result, .picture {
            display: inline-flex;
        }
        .picture img{
            width: 20vw;
            border-radius: 10px;
        }
        .picture {
            margin-right: 10px;
        }
        .decribe {
            margin-right: 20px;
        }
        .title {
            font-size: 20px;
            font-weight: bold;
        }
        .title:hover {
            color: orange;
        }
        .classify {
            width: max-content;
            padding: 1px 4px;
            background-color: #a8a8a8;
            color: #ffffff;
            border-radius: 10px;
            font-size: 11px;
            margin-bottom: 10px;
        }
        .search-result a {
            color: #000000;
        }
        .decribe-content {
            height: 70px;
            overflow: hidden;
        }
        @media screen and (max-width:675px) {
            main {
                grid-template-columns: auto;
                padding: 10px;
            }
            .picture {
                display: block; 
                text-align: center;
                margin:auto;
            }
            .picture img {
                height: 100px;
            }
            .car-result {
                display: inline-block;
                width: 40vw;
                min-height: 300px;
            }
            .decribe {
                margin: auto;
            }
            .decribe-content {
                height: 130px;
                text-align: justify;
            }
            .title, .classify, .color, .price {
                text-align: center;
                margin:auto;
            }
        }
    </style>
</head>
<body>
    <!-- navbar start -->
    <header id="navbar">
        <nav class="navbar">
                <div class="logo">
                    <a href="index.aspx">
                        <img src="image/logo.png" alt="" srcset="" width="100px;">
                    </a>
                </div>
                <label for="nav-active" class="menu-button"><img src="image/icon/menu-24px.svg" alt="" srcset=""></label>
                <input type="checkbox" name="" id="nav-active">
                <div class="nav-content" style="margin:0">
                    <div id="mainnavbar" class="main-navbar" runat="server">
                        <a href="index.aspx#car-select" class="navbar-item navbutton-active">Mua xe</a>
                        <a href="" class="navbar-item">Bán xe</a>
                        <a href="Updating.aspx" class="navbar-item">Định giá xe</a>
                        <a href="Updating.aspx" class="navbar-item">Đại lý ô tô</a>
                        <a href="Updating.aspx" class="navbar-item">Khuyến mãi</a>
                        <a href="Updating.aspx" class="navbar-item">Tin tức</a>
                        <a href="" class="log-button">Đăng nhập</a>
                        <a href="" class="log-button">Đăng ký</a>
                    </div>
            </div>
        </nav>
    </header>
    <!-- navbar end -->
    <!-- main start -->
    <main>
        <div class="search-box">
            <form action="Product.aspx" method="get" >
                <select name="manu" id="manu-selection-list" onchange="showModel()">
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
        <div id="result" class="search-result" runat="server">
        </div>
    </main>
    <!-- main end -->
    <!-- footer start -->
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
    <!-- script -->
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
            ['Mazda','Mazda3','Mazda6','MX-5 Miata'],
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
            for (let i = 1; i <= modelList.length; i++) {
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
                }
            }
        }
    </script>
</body>
</html>