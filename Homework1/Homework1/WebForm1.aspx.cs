using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Homework1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void btnInCart_Click(object sender, EventArgs e)
        {
            if (lstProducts.Items!=null)
            {
                foreach (ListItem li in lstProducts.Items)
                {
                    if (li.Selected == true)
                    {
                        lstCart.Items.Add(li);
                    }
                }
                for (int i = 0; i < lstProducts.Items.Count; i++)
                {
                    if (lstProducts.Items[i].Selected)
                    {
                        lstProducts.Items.RemoveAt(i);
                        i--;
                    }
                }
            }
            
        }
        protected void btnFromCart_Click(object sender, EventArgs e)
        {
            if (lstCart.Items != null)
            {
                foreach (ListItem li in lstCart.Items)
                {
                    if (li.Selected == true)
                    {
                        lstProducts.Items.Add(li);
                    }
                }
                for (int i = 0; i < lstCart.Items.Count; i++)
                {
                    if (lstCart.Items[i].Selected)
                    {
                        lstCart.Items.RemoveAt(i);
                        i--;
                    }
                }
            }
        }

        protected void btnAllInCart_Click(object sender, EventArgs e)
        {
            if (lstProducts.Items!=null)
            {
                foreach (ListItem li in lstProducts.Items)
                {
                    lstCart.Items.Add(li);
                }
                lstProducts.Items.Clear();
            }
        }

        protected void btnAllFromCart_Click(object sender, EventArgs e)
        {
            if (lstCart.Items!=null)
            {
                foreach (ListItem li in lstCart.Items)
                {
                    lstProducts.Items.Add(li);
                }
                lstCart.Items.Clear();
            }
        }
    }
}