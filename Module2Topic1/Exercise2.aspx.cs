using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (paymentProof.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(paymentProof.FileName);
                if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".png")
                {
                    paymentProof.SaveAs("<c:\\SaveDirectory>" + paymentProof.FileName);
                }
                else
                {
                    Response.Write("<script>alert('Please upload file having extensions .jpg or .png only.')</script>");
                }
            }
        }
    }
}