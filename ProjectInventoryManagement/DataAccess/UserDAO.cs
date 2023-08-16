using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class UserDAO
    {
        public static List<User> GetUsers()
        {
            var listUsers = new List<User>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listUsers = context.Users.ToList();
                    foreach (var item in listUsers)
                    {
                        item.RoleNavigation = context.Roles.SingleOrDefault(c=>c.RoleId==item.Role);
                    }
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listUsers;
        }
        public static User FindUserByUserName(string username)
        {
            User p = new User();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.Users.SingleOrDefault(x => x.Username == username);
                    p.RoleNavigation = context.Roles.SingleOrDefault(c => c.RoleId == p.Role);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }

        public static void CreateUser(User a)
        {
            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Users.Add(a);
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
        public static void UpdateUser(User a)
        {

            try
            {
                using (var context = new DBMWMContext())
                {
                    context.Entry<User>(a).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
                    context.SaveChanges();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
        }
    }
}
