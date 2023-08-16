using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class RoleDAO
    {
        public static List<Role> GetRoles()
        {
            var listRoles = new List<Role>();
            try
            {
                using (var context = new DBMWMContext())
                {
                    listRoles = context.Roles.ToList();
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return listRoles;
        }
        public static Role FindRoleById(int id)
        {
            Role p = new Role();
            try
            {
                using (var context = new DBMWMContext())
                {
                    p = context.Roles.SingleOrDefault(x => x.RoleId == id);
                }
            }
            catch (Exception e)
            {

                throw new Exception(e.Message);
            }
            return p;
        }
    }
}
