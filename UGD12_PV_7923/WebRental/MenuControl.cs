using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using WebRental.DS_RENTALTableAdapters;

namespace WebRental
{
    public class MenuControl
    {
        TBL_CDTableAdapter TM = new TBL_CDTableAdapter();
        public DataTable showMenu()
        {
            DataTable DT = null;
            try 
            {
                DT = TM.GetData();
            }
            catch(Exception )
            {
                DT = null;
            }
            return DT;
        }
    }
}