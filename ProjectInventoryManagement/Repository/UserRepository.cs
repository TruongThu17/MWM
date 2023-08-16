using BusinessObject.Models;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class UserRepository : IUserRepository
    {
        public void CreateUser(User a)=>UserDAO.CreateUser(a);

        public User FindUserByUserName(string username) =>UserDAO.FindUserByUserName(username);

        public List<User> GetUsers() =>UserDAO.GetUsers();

        public void UpdateUser(User a)=>UserDAO.UpdateUser(a);
    }
}
