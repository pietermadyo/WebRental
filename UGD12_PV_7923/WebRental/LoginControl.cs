using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebRental.DS_RENTALTableAdapters;

namespace WebRental
{
    public class LoginControl
    {
        TBL_PENGGUNATableAdapter TP = new TBL_PENGGUNATableAdapter();
        public bool cekLogin(string user, string pass)
        {
            bool cek = false;
            try 
            {
                if (TP.getUser(user, pass).ToString() != "")
                {
                    cek = true;
                }
            }
            catch(Exception)
            {
                cek = false;
            }
            return cek;
        }

        public int getRoleUser(string user, string pass)
        {
            int role = 0;

            try
            {
                role = int.Parse(TP.getRole(user, pass).ToString());
            }
            catch(Exception)
            {
                role = 0;
            }
            return role;
        }
    }
}