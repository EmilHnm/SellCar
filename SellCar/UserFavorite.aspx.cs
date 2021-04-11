using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SellCar
{
    public partial class UserFavorite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggingin"] != null)
            {
                mainnavbar.InnerHtml = "<a href='index.aspx' class='navbar-item'>Mua xe</a>" +
                      "<a href ='Updating.aspx' class='navbar-item'>Bán xe</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Định giá xe</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Đại lý ô tô</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Khuyến mãi</a>" +
                    "<a href = 'Updating.aspx' class='navbar-item'>Tin tức</a>" +
                    "<a href = 'Updating.aspx' class='log-button'>" + Session["loggingin"].ToString() + "</a>" +
                    "<a href = 'logout.aspx' class='log-button'>Đăng xuất</a>";

                string username = Session["loggingin"].ToString();
                string favoriteList = Request.Cookies[username].Value;
                string[] favoritecar = favoriteList.Split('|');
                Car car = new Car();
                string[,] CarInfo = car.NewCarInfo;
                userName.InnerText = username;
                foreach (string carclassify in favoritecar)
                {
                    for(int i =0; i<101; i++)
                    {
                        if(carclassify == CarInfo[i,1])
                        {
                            favoritelist.InnerHtml +=
                                "<div class='favorite-item'>" +
                                  "<div class='picture' ><img src ='"+ CarInfo[i, 8] + "1.jpg'  width='100%'></div>" +
                                        "<div class='content'>" +
                                            "<div id = 'name' >" + CarInfo[i, 0] + " " + CarInfo[i, 1] + "</div>" +
                                            "<div id='price' >" + CarInfo[i, 7] + "</div>" +
                                            "<div id = 'color' >" + CarInfo[i, 2] + "</div>" +
                                            "<div id='engine'>" + 123+ "</div>" +
                                            "<div id = 'transmision' >" + CarInfo[i, 5] + "</div>" +
                                            "<div id='link'>" +
                                                "<a href = Product.aspx?model=" + CarInfo[i, 1] + "' > Truy cập</a>" +
                                            "</div>" +
                                            "<div id = 'button' runat='server'>" +
                                                "<a href = 'UserFavorite.aspx?delete=" + CarInfo[i, 1] + "'> Xóa ưa thích</a>" +
                                            "</div>"+
                                        "</div>" +
                                "</div>";
                        }
                    }
                }
                for (int i = 0; i < 101; i++)
                {
                    if (favoriteList == CarInfo[i, 1])
                    {
                        favoritelist.InnerHtml +=
                            "<div class='favorite-item'>" +
                              "<div class='picture' ><img src ='" + CarInfo[i, 8] + "1.jpg'  width='100%'></div>" +
                                    "<div class='content'>" +
                                        "<div id = 'name' >" + CarInfo[i, 0] + " " + CarInfo[i, 1] + "</div>" +
                                        "<div id='price' >" + CarInfo[i, 7] + "</div>" +
                                        "<div id = 'color' >" + CarInfo[i, 2] + "</div>" +
                                        "<div id='engine'>" + 123 + "</div>" +
                                        "<div id = 'transmision' >" + CarInfo[i, 5] + "</div>" +
                                        "<div id='link'>" +
                                            "<a href = Product.aspx?model=" + CarInfo[i, 1] + "' > Truy cập</a>" +
                                        "</div>" +
                                        "<div id = 'button' runat='server'>" +
                                            "<a href = 'UserFavorite.aspx?delete=" + CarInfo[i, 1] + "'> Xóa ưa thích</a>" +
                                        "</div>" +
                                    "</div>" +
                            "</div>";
                    }
                }
                string deletecar = Request.QueryString["delete"];
                if(deletecar != null)
                {
                    favoriteList = favoriteList.Replace(deletecar, "");
                    Response.Cookies[username].Value = favoriteList;
                    Response.Redirect("UserFavorite.aspx");
                } 
            } else
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}