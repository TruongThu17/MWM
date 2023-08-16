using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class RoleRepository : IRoleRepository
    {
        public Role FindRoleById(int id)=>RoleDAO.FindRoleById(id);

        public List<Role> GetRoles()=>RoleDAO.GetRoles();
    }
}
