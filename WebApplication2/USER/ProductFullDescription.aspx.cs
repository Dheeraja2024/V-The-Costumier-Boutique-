using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2.USER
{
    public partial class ProductFullDescription : System.Web.UI.Page
    {
        ConnectionClass objcls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sqlQuery = "Select * from tbl_product where Pro_id='" + Session["productId"] + "' ";
                SqlDataReader dr = objcls.Fun_exe_Reader(sqlQuery);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["pro_image"].ToString();
                    lblProductName.Text = dr["pro_name"].ToString();
                    TextBox1.Text = dr["pro_description"].ToString();
                    lblProductPrice.Text = dr["pro_price"].ToString();
                    lblProductStatus.Text = dr["pro_status"].ToString();
                }
                string stock = "select pro_stock from tbl_product where Pro_id='" + Session["productId"] + "'";
                string productStock = objcls.Fun_exs_Scalar(stock);
                Label7.Text = productStock;
            }


        }

         protected void Button1_Click(object sender, EventArgs e)
         {
             string stock = "select pro_stock from tbl_product where Pro_id='" + Session["productId"] + "'";
             string productStock = objcls.Fun_exs_Scalar(stock);
             Label7.Text = productStock;
             if (Convert.ToInt32( txt_count.Text) <= Convert.ToInt32( productStock))
             {
                 //string cartId= Guid.NewGuid().ToString();  automatic generating id code
                 string sqlQuery = "select max(Cart_id) from tbl_Cart";
                 string lastId = objcls.Fun_exs_Scalar(sqlQuery);
                 int newId = 0;
                 if (lastId == "")
                 {
                     newId = 1;
                 }
                 else
                 {
                     newId = Convert.ToInt32(lastId) + 1;
                 }
                 string productPrice = "Select pro_price from tbl_product where Pro_id='" + Session["productId"] + "' ";
                 string SingleProductAmount1 = objcls.Fun_exs_Scalar(productPrice);

                 int singleProductAmount = Convert.ToInt32(SingleProductAmount1);
                 int count = Convert.ToInt32(txt_count.Text);
                 int totalAmount = singleProductAmount * count;
                //checking session value is null
                if (Session["uid"] == null || Session["productId"] == null)
                {
                    Label5.Text = "Session variables are not set.";
                    // Handle the case when the session variables are null
                    throw new InvalidOperationException("Session variables are not set.");
                }

                // checking if existing user already put same product in cart then adding count to that same product
                //string productExisting = "Select Cart_id from tbl_Cart where fk_userid='" + Session["uid"] + "' and fk_product='" + Session["productId"] + "' ";
                // string existing = objcls.Fun_exs_Scalar(productExisting);
                // if (existing == "")
                // {

                     string InsCart = "insert into tbl_Cart values('" + newId + "','" + Session["productId"] + "','" + Session["uid"] + "','" + count + "','" + totalAmount + "')";
                     int insCount = objcls.Fun_exe_NonQuery(InsCart);
                     if (insCount == 1)
                     {
                         Label5.Text = "ITEM ADDED TO CART";
                         // txt_count.Text = " ";
                         Response.Redirect("ViewCart1.aspx");
                     }
                 //}

                 else
                 {
                     string exixtingProductCount = "select Quantity from tbl_Cart where fk_userid='" + Session["uid"] + "' and fk_product='" + Session["productId"] + "' ";
                     string currentQuantity = objcls.Fun_exs_Scalar(exixtingProductCount).ToString();
                     string newQuantity = currentQuantity + txt_count.Text;
                     int newAmount = Convert.ToInt32(newQuantity) * singleProductAmount;
                     string UpdtCart = "update tbl_Cart set Quantity='" + newQuantity + "',Total_price='" + newAmount + "' where fk_userid='" + Session["uid"] + "' and fk_product='" + Session["productId"] + "' ";
                     int insCount1 = objcls.Fun_exe_NonQuery(UpdtCart);
                     if (insCount1 == 1)
                     {
                         Label5.Text = "ITEM ADDED TO CART";
                         // txt_count.Text = " ";
                         Response.Redirect("ViewCart1.aspx");
                     }
                     else
                     {
                         Label5.Text = "NOT INSERTED...ERORRR!!!!!!!!";
                     }

                 }

             }
             else
             {
                 Label5.Text = "KINDLY CHECK STOCK BEFORE ORDERING.....OUT OF STOCK.";
             }
         }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string productIdStr = Session["productId"].ToString();
        //    string productStock = GetProductStock(productIdStr);
        //    Label7.Text = productStock;

        //    if (int.Parse(txt_count.Text) <= int.Parse(productStock))
        //    {
        //        int newId = GetNewCartId();
        //        int singleProductAmount = GetProductPrice(Session["productId"].ToString());
        //        int count = int.Parse(txt_count.Text);
        //        int totalAmount = singleProductAmount * count;

        //        string existing = CheckIfProductExists(Session["uid"].ToString(), Session["productId"].ToString());

        //        if (string.IsNullOrEmpty(existing))
        //        {
        //            AddNewProductToCart(newId, Session["productId"].ToString(), Session["uid"].ToString(), count, totalAmount);
        //        }
        //        else
        //        {
        //            UpdateExistingProductInCart(Session["uid"].ToString(), Session["productId"].ToString(), singleProductAmount, count);
        //        }
        //    }
        //    else
        //    {
        //        Label5.Text = "KINDLY CHECK STOCK BEFORE ORDERING.....OUT OF STOCK.";
        //    }
        //}

        //private string GetProductStock(string productId)
        //{
        //    string stockQuery = "SELECT pro_stock FROM tbl_product WHERE Pro_id=ProductId";
        //    return objcls.Fun_exs_Scalar(stockQuery);
        //}

        //private int GetNewCartId()
        //{
        //    string sqlQuery = "SELECT MAX(Cart_id) FROM tbl_Cart";
        //    string lastId = objcls.Fun_exs_Scalar(sqlQuery);
        //    return string.IsNullOrEmpty(lastId) ? 1 : int.Parse(lastId) + 1;
        //}

        //private int GetProductPrice(string productId)
        //{
        //    string productPriceQuery = "SELECT pro_price FROM tbl_product WHERE Pro_id=@ProductId";
        //    string priceStr = objcls.Fun_exs_Scalar(productPriceQuery);
        //    return int.Parse(priceStr);
        //}

        //private string CheckIfProductExists(string userId, string productId)
        //{
        //    string productExistingQuery = "SELECT Cart_id FROM tbl_Cart WHERE fk_userid=@UserId AND fk_product=@ProductId";
        //    return objcls.Fun_exs_Scalar(productExistingQuery);
        //}

        //private void AddNewProductToCart(int newId, string productId, string userId, int count, int totalAmount)
        //{
        //    string insertCart = "INSERT INTO tbl_Cart VALUES(@NewId, @ProductId, @UserId, @Count, @TotalAmount)";
        //    int insCount = objcls.Fun_exe_NonQuery(insertCart);

        //    if (insCount == 1)
        //    {
        //        Label5.Text = "ITEM ADDED TO CART";
        //        Response.Redirect("ViewCart1.aspx");
        //    }
        //}

        //private void UpdateExistingProductInCart(string userId, string productId, int singleProductAmount, int count)
        //{
        //    string existingProductCountQuery = "SELECT Quantity FROM tbl_Cart WHERE fk_userid=@UserId AND fk_product=@ProductId";
        //    string currentQuantityStr = objcls.Fun_exs_Scalar(existingProductCountQuery);
        //    int currentQuantity = int.Parse(currentQuantityStr);
        //    int newQuantity = currentQuantity + count;
        //    int newAmount = newQuantity * singleProductAmount;

        //    string updateCart = "UPDATE tbl_Cart SET Quantity=@NewQuantity, Total_price=@NewAmount WHERE fk_userid=@UserId AND fk_product=@ProductId";
        //    int updateCount = objcls.Fun_exe_NonQuery(updateCart);

        //    if (updateCount == 1)
        //    {
        //        Label5.Text = "ITEM ADDED TO CART";
        //        Response.Redirect("ViewCart1.aspx");
        //    }
        //    else
        //    {
        //        Label5.Text = "NOT INSERTED...ERROR!";
        //    }

        //}
    }
}