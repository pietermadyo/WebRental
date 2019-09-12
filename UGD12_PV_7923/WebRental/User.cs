using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebRental
{
    public class User
    {
        private string userName, password;
        private int role;
        
        public User() { }
        public User(string Name, string pass, int rol)
        {
            userName = Name;
            password = pass;
            role = rol;
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        public string UserName
        {
            get { return userName; }
            set { userName = value; }
        }
        
        public int Role
        {
            get { return role; }
            set { role = value; }
        }
    }
}