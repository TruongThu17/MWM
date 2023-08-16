using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public interface IUserRepository
    {
        List<User> GetUsers();
        User FindUserByUserName(string username);

        void CreateUser(User a);
        void UpdateUser(User a);
    }
}
